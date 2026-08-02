// SPDX-License-Identifier: GPL-2.0-only
/*
 * Copyright (c) 2020 Rockchip Electronics Co. Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/overflow.h>
#include <linux/slab.h>
#include <linux/string.h>
#include <asm/unaligned.h>

#include "epd_lut.h"

#define RKF_FILE_MAX_SIZE	0x40000
#define RKF_TEMP_COUNT		50
#define RKF_FRAME_WORDS		16
#define RKF_GRAY_LEVELS		256
#define RKF_FRAME_TABLE_SIZE	(RKF_GRAY_LEVELS * RKF_GRAY_LEVELS)

static void *global_waveform;
static u32 crc32_table[256];
static DEFINE_MUTEX(rkf_lock);
static int saved_temperature = -1;
static enum epd_lut_type saved_type = WF_TYPE_MAX;
static struct epd_lut_data *saved_output;
static u8 *saved_wf_table;
static unsigned int *saved_data;

static u32 rkf_offset(const u8 *offset_table, unsigned int index)
{
	return get_unaligned_le32(offset_table + index * sizeof(u32));
}

static u32 *decode_wf_data(const u8 *record, u32 length)
{
	u32 *data;

	if (!record || !length || length > KMALLOC_MAX_SIZE)
		return NULL;

	data = kmalloc(length, GFP_KERNEL);
	if (data)
		memcpy(data, record + 4, length);

	return data;
}

/*
 * The subtype tables and threshold walk below follow the v2.08 assembly.
 * RKF offsets are native little-endian u32 values on the target ARM64 build.
 */
static int parse_wf_gray16(struct epd_lut_data *output, u32 **data,
			   int temperature, int subtype)
{
	const u8 *temperature_table;
	const u8 *offset_table;
	const u8 *record;
	unsigned int index;
	u32 frame_num;

	switch (subtype) {
	case 1:
		temperature_table = global_waveform + 0x1d4;
		offset_table = global_waveform + 0x754;
		break;
	case 2:
		temperature_table = global_waveform + 0x0d4;
		offset_table = global_waveform + 0x354;
		break;
	case 3:
		temperature_table = global_waveform + 0x114;
		offset_table = global_waveform + 0x454;
		break;
	case 4:
		temperature_table = global_waveform + 0x154;
		offset_table = global_waveform + 0x554;
		break;
	case 5:
		temperature_table = global_waveform + 0x194;
		offset_table = global_waveform + 0x654;
		break;
	case 6:
		temperature_table = global_waveform + 0x214;
		offset_table = global_waveform + 0x854;
		break;
	default:
		return -EINVAL;
	}

	temperature = clamp(temperature, 0, 50);
	for (index = 0; index < RKF_TEMP_COUNT; index++) {
		if (temperature < temperature_table[index])
			break;
	}
	if (index == RKF_TEMP_COUNT)
		index = 0;

	record = global_waveform + rkf_offset(offset_table, index);
	frame_num = record[0];
	if (!frame_num || frame_num > U32_MAX >> 6)
		return -EINVAL;
	output->frame_num = frame_num;
	*data = decode_wf_data(record, frame_num << 6);

	return *data ? 0 : -EINVAL;
}

int rkf_wf_input(void *waveform_file)
{
	u8 *waveform = waveform_file;
	u32 read_crc;
	u32 crc = 0;
	u32 value;
	u32 file_length;
	int ret = 0;
	int byte;
	int bit;

	if (!waveform_file)
		return -EINVAL;

	mutex_lock(&rkf_lock);
	if (global_waveform) {
		ret = -EBUSY;
		goto out_unlock;
	}

	if (strncmp((char *)waveform + 4, "rkf waveform", 12)) {
		printk("rkf: check format failed\n");
		printk("rkf: failed to check RKF file format\n");
		ret = -ENOEXEC;
		goto out_unlock;
	}

	file_length = get_unaligned_le32(waveform);
	if (file_length > RKF_FILE_MAX_SIZE) {
		printk("rkf: failed to check crc RKF waveform\n");
		ret = -EFBIG;
		goto out_unlock;
	}
	read_crc = get_unaligned_le32(waveform + file_length);

	memset(crc32_table, 0, sizeof(crc32_table));
	for (byte = 0; byte < ARRAY_SIZE(crc32_table); byte++) {
		value = byte << 24;
		for (bit = 0; bit < 8; bit++) {
			if (value & BIT(31))
				value = (value << 1) ^ 0x04c11db7;
			else
				value <<= 1;
		}
		crc32_table[byte] = value;
	}

	for (byte = 0; byte < file_length; byte++)
		crc = crc32_table[waveform[byte] ^ (crc >> 24)] ^
		      (crc << 8);

	if (read_crc != crc) {
		printk("[EINK]: waveform crc err readcrc = %x crccheck = %x\n",
		       read_crc, crc);
		printk("rkf: failed to check crc RKF waveform\n");
		ret = -EBADMSG;
		goto out_unlock;
	}

	printk("rkf file version: %s\n", waveform + 20);
	global_waveform = waveform_file;
	saved_temperature = -1;
	saved_type = WF_TYPE_MAX;
	saved_output = NULL;
	saved_wf_table = NULL;
	saved_data = NULL;

out_unlock:
	mutex_unlock(&rkf_lock);
	return ret;
}

const char *rkf_wf_get_version(void)
{
	const char *version;

	mutex_lock(&rkf_lock);
	version = global_waveform ? global_waveform + 84 : NULL;
	mutex_unlock(&rkf_lock);

	return version;
}

static int __rkf_wf_get_lut(struct epd_lut_data *output,
		   enum epd_lut_type lut_type, int temperture)
{
	const u8 *temperature_table;
	const u8 *offset_table;
	const u8 *record;
	u32 *compact_data = NULL;
	u32 *gray2_data = NULL;
	u32 *expanded_data;
	u32 value;
	u32 frame_num;
	unsigned int index;
	unsigned int frame;
	unsigned int old_gray;
	unsigned int new_gray;
	unsigned int word;
	unsigned int lane;
	unsigned int repeat;
	unsigned int word_count;
	int ret;

	if (!global_waveform)
		return -ENODEV;
	if (!output || !output->wf_table)
		return -EINVAL;

	if (saved_temperature / 10 == temperture / 10 &&
	    saved_type == lut_type && saved_output == output &&
	    saved_wf_table == output->wf_table && saved_data == output->data)
		return 0;

	kfree(output->data);
	output->data = NULL;

	switch (lut_type) {
	case WF_TYPE_RESET:
		temperature_table = global_waveform + 0x094;
		offset_table = global_waveform + 0x254;
		temperture = clamp(temperture, 0, 50);
		for (index = 0; index < RKF_TEMP_COUNT; index++) {
			if (temperture < temperature_table[index])
				break;
		}
		if (index == RKF_TEMP_COUNT)
			index = 0;
		record = global_waveform + rkf_offset(offset_table, index);
		frame_num = record[0];
		word_count = (frame_num + 15) >> 4;
		compact_data = decode_wf_data(record, word_count << 2);
		if (!compact_data)
			return -1;

		output->frame_num = frame_num;
		if (check_mul_overflow(word_count, 1024U, &index)) {
			kfree(compact_data);
			return -EOVERFLOW;
		}
		expanded_data = kmalloc(index, GFP_KERNEL);
		if (!expanded_data) {
			output->data = NULL;
			kfree(compact_data);
			return -1;
		}

		for (word = 0; word < word_count; word++) {
			value = compact_data[word];
			for (lane = 0; lane < 16; lane++) {
				u32 pixel = (value >> (lane * 2)) & 3;
				u32 replicated = pixel;

				for (repeat = 2; repeat < 32; repeat += 2)
					replicated |= pixel << repeat;
				for (repeat = 0; repeat < 16; repeat++) {
					index = word * 256 + lane * 16 + repeat;
					expanded_data[index] = replicated;
				}
			}
		}
		output->data = expanded_data;
		kfree(compact_data);
		break;
	case WF_TYPE_GRAY2:
		temperature_table = global_waveform + 0x1d4;
		offset_table = global_waveform + 0x754;
		temperture = clamp(temperture, 0, 50);
		for (index = 0; index < RKF_TEMP_COUNT; index++) {
			if (temperture < temperature_table[index])
				break;
		}
		if (index == RKF_TEMP_COUNT)
			index = 0;
		record = global_waveform + rkf_offset(offset_table, index);
		frame_num = record[0];
		output->data = decode_wf_data(record, frame_num << 6);
		if (!output->data)
			return -1;
		output->frame_num = frame_num;
		break;
	case WF_TYPE_AUTO:
		ret = parse_wf_gray16(output, &output->data, temperture, 2);
		if (ret)
			return -1;

		temperature_table = global_waveform + 0x1d4;
		offset_table = global_waveform + 0x754;
		temperture = clamp(temperture, 0, 50);
		for (index = 0; index < RKF_TEMP_COUNT; index++) {
			if (temperture < temperature_table[index])
				break;
		}
		if (index == RKF_TEMP_COUNT)
			index = 0;
		record = global_waveform + rkf_offset(offset_table, index);
		output->frame_num |= record[0] << 8;
		gray2_data = decode_wf_data(record, record[0] << 6);
		if (!gray2_data) {
			kfree(output->data);
			output->data = NULL;
			return -ENOMEM;
		}
		for (frame = 0; frame < record[0]; frame++) {
			for (word = 0; word < RKF_FRAME_WORDS; word++) {
				index = frame * RKF_FRAME_WORDS + word;
				output->data[index] =
					(gray2_data[index] & 0xc0000003) |
					(output->data[index] & 0x3ffffffc);
			}
		}
		kfree(gray2_data);
		break;
	case WF_TYPE_A2:
		temperature_table = global_waveform + 0x214;
		offset_table = global_waveform + 0x854;
		temperture = clamp(temperture, 0, 50);
		for (index = 0; index < RKF_TEMP_COUNT; index++) {
			if (temperture < temperature_table[index])
				break;
		}
		if (index == RKF_TEMP_COUNT)
			index = 0;
		record = global_waveform + rkf_offset(offset_table, index);
		frame_num = record[0];
		output->frame_num = frame_num;
		output->data = decode_wf_data(record, frame_num << 6);
		if (!output->data)
			return -1;
		break;
	case WF_TYPE_GRAY16:
	case WF_TYPE_GRAY4:
	case WF_TYPE_GC16:
		ret = parse_wf_gray16(output, &output->data, temperture, 2);
		if (ret)
			return -1;
		break;
	case WF_TYPE_GL16:
		ret = parse_wf_gray16(output, &output->data, temperture, 3);
		if (ret)
			return -1;
		break;
	case WF_TYPE_GLR16:
	case WF_TYPE_GCC16:
		ret = parse_wf_gray16(output, &output->data, temperture, 4);
		if (ret)
			return -1;
		break;
	case WF_TYPE_GLD16:
		ret = parse_wf_gray16(output, &output->data, temperture, 5);
		if (ret)
			return -1;
		break;
	default:
		return -1;
	}

	frame_num = output->frame_num & 0xff;
	if (!output->data)
		return -EINVAL;
	for (frame = 0; frame < frame_num; frame++) {
		u32 *frame_data = output->data + frame * RKF_FRAME_WORDS;
		u8 *frame_table = output->wf_table +
				  frame * RKF_FRAME_TABLE_SIZE;

		for (old_gray = 0; old_gray < RKF_GRAY_LEVELS; old_gray++) {
			for (new_gray = 0; new_gray < RKF_GRAY_LEVELS;
			     new_gray++) {
				u32 low = frame_data[old_gray & 0x0f];
				u32 high = frame_data[old_gray >> 4];

				low = (low >> ((new_gray & 0x0f) * 2)) & 3;
				high = (high >> ((new_gray >> 4) * 2)) & 3;
				frame_table[old_gray * RKF_GRAY_LEVELS +
					    new_gray] = low | (high << 2);
			}
		}
	}

	saved_temperature = temperture;
	saved_type = lut_type;
	saved_output = output;
	saved_wf_table = output->wf_table;
	saved_data = output->data;
	return 0;
}

int rkf_wf_get_lut(struct epd_lut_data *output,
			   enum epd_lut_type lut_type, int temperture)
{
	int ret;

	mutex_lock(&rkf_lock);
	ret = __rkf_wf_get_lut(output, lut_type, temperture);
	mutex_unlock(&rkf_lock);

	return ret;
}

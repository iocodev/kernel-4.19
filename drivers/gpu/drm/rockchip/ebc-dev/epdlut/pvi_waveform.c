// SPDX-License-Identifier: GPL-2.0-only
/*
 * Copyright (c) 2020 Rockchip Electronics Co. Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

#include <linux/errno.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/overflow.h>

#include "epd_lut.h"

#define PVI_MODE_TABLE_OFFSET		0x20
#define PVI_TEMPERATURE_COUNT_OFFSET	0x26
#define PVI_TEMPERATURE_TABLE_OFFSET	0x30
#define PVI_VERSION_OFFSET		0x10
#define PVI_SUBVERSION_OFFSET		0x16
#define PVI_VERSION_STRING_OFFSET	0x41
#define PVI_VERSION_STRING_LENGTH	31
#define PVI_DECODED_FRAME_SIZE		0x10000
#define PVI_GRAY_LEVELS			256

static int pvi_modes[PVI_WF_MAX];
static void *global_waveform;
static u8 *waveformdata;
static char spi_id_buffer[32];
static DEFINE_MUTEX(pvi_lock);
static int saved_temperature = -1;
static enum epd_lut_type saved_type = WF_TYPE_MAX;
static u8 *saved_wf_table;

static int get_wf_mode_index(enum epd_lut_type lut_type)
{
	u8 *waveform = global_waveform;

	switch (waveform[PVI_VERSION_OFFSET]) {
	case 9:
		pvi_modes[PVI_WF_RESET] = 0;
		pvi_modes[PVI_WF_DU] = 1;
		pvi_modes[PVI_WF_DU4] = 1;
		pvi_modes[PVI_WF_GC16] = 2;
		pvi_modes[PVI_WF_GL16] = 3;
		pvi_modes[PVI_WF_GLR16] = 3;
		pvi_modes[PVI_WF_GLD16] = 3;
		pvi_modes[PVI_WF_A2] = 4;
		pvi_modes[PVI_WF_GCC16] = 3;
		break;
	case 18:
		pvi_modes[PVI_WF_RESET] = 0;
		pvi_modes[PVI_WF_DU] = 1;
		pvi_modes[PVI_WF_DU4] = 7;
		pvi_modes[PVI_WF_GC16] = 3;
		pvi_modes[PVI_WF_GL16] = 3;
		pvi_modes[PVI_WF_GLR16] = 5;
		pvi_modes[PVI_WF_GLD16] = 6;
		pvi_modes[PVI_WF_A2] = 4;
		pvi_modes[PVI_WF_GCC16] = 5;
		break;
	case 22:
		pvi_modes[PVI_WF_RESET] = 0;
		pvi_modes[PVI_WF_DU] = 1;
		pvi_modes[PVI_WF_DU4] = 1;
		pvi_modes[PVI_WF_GC16] = 2;
		pvi_modes[PVI_WF_GL16] = 3;
		pvi_modes[PVI_WF_GLR16] = 4;
		pvi_modes[PVI_WF_GLD16] = 4;
		pvi_modes[PVI_WF_A2] = 6;
		pvi_modes[PVI_WF_GCC16] = 5;
		break;
	case 24:
	case 32:
		pvi_modes[PVI_WF_RESET] = 0;
		pvi_modes[PVI_WF_DU] = 1;
		pvi_modes[PVI_WF_DU4] = 1;
		pvi_modes[PVI_WF_GC16] = 2;
		pvi_modes[PVI_WF_GL16] = 3;
		pvi_modes[PVI_WF_GLR16] = 4;
		pvi_modes[PVI_WF_GLD16] = 4;
		pvi_modes[PVI_WF_A2] = 6;
		pvi_modes[PVI_WF_GCC16] = 4;
		break;
	case 25:
	case 67:
		pvi_modes[PVI_WF_RESET] = 0;
		pvi_modes[PVI_WF_DU] = 1;
		pvi_modes[PVI_WF_DU4] = 7;
		pvi_modes[PVI_WF_GC16] = 2;
		pvi_modes[PVI_WF_GL16] = 3;
		pvi_modes[PVI_WF_GLR16] = 4;
		pvi_modes[PVI_WF_GLD16] = 5;
		pvi_modes[PVI_WF_A2] = 6;
		pvi_modes[PVI_WF_GCC16] = 4;
		break;
	case 35:
		pvi_modes[PVI_WF_RESET] = 0;
		pvi_modes[PVI_WF_DU] = 1;
		pvi_modes[PVI_WF_DU4] = 5;
		pvi_modes[PVI_WF_GC16] = 2;
		pvi_modes[PVI_WF_GL16] = 3;
		pvi_modes[PVI_WF_GLR16] = 3;
		pvi_modes[PVI_WF_GLD16] = 3;
		pvi_modes[PVI_WF_A2] = 4;
		pvi_modes[PVI_WF_GCC16] = 3;
		break;
	case 84:
		pvi_modes[PVI_WF_RESET] = 0;
		pvi_modes[PVI_WF_DU] = 1;
		pvi_modes[PVI_WF_DU4] = 1;
		pvi_modes[PVI_WF_GC16] = 2;
		pvi_modes[PVI_WF_GL16] = 3;
		pvi_modes[PVI_WF_GLR16] = 4;
		pvi_modes[PVI_WF_GLD16] = 4;
		pvi_modes[PVI_WF_A2] = 5;
		pvi_modes[PVI_WF_GCC16] = 4;
		break;
	default:
		pvi_modes[PVI_WF_RESET] = 0;
		pvi_modes[PVI_WF_DU] = 1;
		pvi_modes[PVI_WF_DU4] = 1;
		pvi_modes[PVI_WF_GC16] = 2;
		pvi_modes[PVI_WF_GL16] = 3;
		pvi_modes[PVI_WF_GLR16] = 4;
		pvi_modes[PVI_WF_GLD16] = 5;
		pvi_modes[PVI_WF_A2] = 6;
		pvi_modes[PVI_WF_GCC16] = 4;
		printk("pvi : Unknow waveform version %x,%x\n",
		       waveform[PVI_VERSION_OFFSET],
		       waveform[PVI_SUBVERSION_OFFSET]);
		break;
	}

	switch (lut_type) {
	case WF_TYPE_RESET:
		return pvi_modes[PVI_WF_RESET];
	case WF_TYPE_GRAY16:
	case WF_TYPE_AUTO:
	case WF_TYPE_GC16:
		return pvi_modes[PVI_WF_GC16];
	case WF_TYPE_GRAY4:
		return pvi_modes[PVI_WF_DU4];
	case WF_TYPE_GRAY2:
		return pvi_modes[PVI_WF_DU];
	case WF_TYPE_A2:
		return pvi_modes[PVI_WF_A2];
	case WF_TYPE_GL16:
		return pvi_modes[PVI_WF_GL16];
	case WF_TYPE_GLR16:
		return pvi_modes[PVI_WF_GLR16];
	case WF_TYPE_GLD16:
		return pvi_modes[PVI_WF_GLD16];
	default:
		printk("pvi: unspport PVI waveform type");
		return -1;
	}
}

static void put_waveform_group(unsigned int frame, unsigned int column,
			       unsigned int row, u8 value)
{
	unsigned int offset = frame * PVI_DECODED_FRAME_SIZE +
			      column * PVI_GRAY_LEVELS + row;

	waveformdata[offset] = value & 3;
	waveformdata[offset + PVI_GRAY_LEVELS] = (value >> 2) & 3;
	waveformdata[offset + PVI_GRAY_LEVELS * 2] = (value >> 4) & 3;
	waveformdata[offset + PVI_GRAY_LEVELS * 3] = value >> 6;
}

static void advance_waveform_position(int width, unsigned int *frame,
				      unsigned int *column,
				      unsigned int *row)
{
	*column += 4;
	if (*column >= width) {
		*column = 0;
		(*row)++;
		if (*row >= width) {
			*row = 0;
			(*frame)++;
		}
	}
}

int decodewaveform(u8 *data, int width)
{
	unsigned int frame = 0;
	unsigned int column = 0;
	unsigned int row = 0;
	unsigned int offset = 0;
	unsigned int rle = 1;
	u8 value;
	u8 repeat;

	if (!data)
		return -EINVAL;
	if (!waveformdata) {
		printk("waveformdata is NULL\n");
		return -EINVAL;
	}
	if (width != 16 && width != 32)
		return -EINVAL;

	while (frame <= 255) {
		value = data[offset];
		if (value == 0xff)
			break;
		if (value == 0xfc) {
			offset++;
			rle ^= 1;
			value = data[offset];
		}

		put_waveform_group(frame, column, row, value);
		advance_waveform_position(width, &frame, &column, &row);

		if (!rle) {
			offset++;
			continue;
		}

		repeat = data[offset + 1];
		while (repeat && frame <= 255) {
			put_waveform_group(frame, column, row, value);
			advance_waveform_position(width, &frame, &column, &row);
			repeat--;
		}
		offset += 2;
		rle = 1;
	}

	if (frame > 255)
		printk("pvi: decodec waveform 19 error\n");

	if (width == 32 && frame) {
		unsigned int source_row;
		unsigned int source_column;
		u8 current_frame;

		for (current_frame = 0; current_frame < frame;
		     current_frame++) {
			unsigned int frame_offset =
				current_frame * PVI_DECODED_FRAME_SIZE;

			for (source_row = 0; source_row < 32; source_row += 2) {
				for (source_column = 0; source_column < 32;
				     source_column += 2) {
					waveformdata[frame_offset +
						     source_row / 2 *
						     PVI_GRAY_LEVELS +
						     source_column / 2] =
						waveformdata[frame_offset +
						     source_row *
						     PVI_GRAY_LEVELS +
						     source_column];
				}
			}
		}
	}

	return frame;
}

static unsigned int get_unaligned_le24(const u8 *value)
{
	return value[0] | value[1] << 8 | value[2] << 16;
}

static bool pvi_offset_valid(const u8 *value)
{
	return value[3] == (u8)(value[0] + value[1] + value[2]);
}

static int get_wf_frm_num(int mode, int temperature_index)
{
	u8 *waveform = global_waveform;
	const u8 *mode_record;
	const u8 *temperature_record;
	unsigned int offset;
	int width;

	if (!waveform || mode < 0 || temperature_index < -1)
		return -EINVAL;
	if (check_mul_overflow((unsigned int)mode, 4U, &offset) ||
	    check_add_overflow((unsigned int)waveform[PVI_MODE_TABLE_OFFSET],
			       offset, &offset))
		return -EOVERFLOW;
	mode_record = waveform + offset;
	if (!pvi_offset_valid(mode_record)) {
		printk("pvi: %s %d check error\n", __func__, 463);
		return -EINVAL;
	}

	{
		unsigned int base = get_unaligned_le24(mode_record);

		if (temperature_index == -1) {
			if (base < 4)
				return -EINVAL;
			offset = base - 4;
		} else if (check_mul_overflow((unsigned int)temperature_index,
					      4U, &offset) ||
			   check_add_overflow(base, offset, &offset)) {
			return -EOVERFLOW;
		}
	}
	temperature_record = waveform + offset;
	if (!pvi_offset_valid(temperature_record)) {
		printk("pvi: %s %d check error\n", __func__, 477);
		return -EINVAL;
	}

	switch (waveform[PVI_VERSION_OFFSET]) {
	case 22:
	case 24:
	case 25:
	case 32:
	case 67:
		width = 32;
		break;
	default:
		width = 16;
		break;
	}

	return decodewaveform(waveform + get_unaligned_le24(temperature_record),
			      width);
}

int pvi_wf_get_lut(struct epd_lut_data *output,
		   enum epd_lut_type lut_type, int temperture)
{
	u8 *waveform;
	unsigned int temperature_count;
	unsigned int frame;
	unsigned int old_gray;
	unsigned int new_gray;
	int temperature_index;
	int gray2_frame_num = 0;
	int mode;
	int frame_num;
	int ret = 0;

	if (!output || !output->wf_table)
		return -EINVAL;
	if (lut_type < WF_TYPE_RESET || lut_type >= WF_TYPE_MAX) {
		printk("pvi: unsupport WF type\n");
		return -EINVAL;
	}

	mutex_lock(&pvi_lock);
	waveform = global_waveform;
	if (!waveform) {
		ret = -ENODEV;
		goto out_unlock;
	}

	if (saved_temperature / 3 == temperture / 3 &&
	    saved_type == lut_type && saved_wf_table == output->wf_table)
		goto out_unlock;

	temperature_count = waveform[PVI_TEMPERATURE_COUNT_OFFSET];
	if (!temperature_count) {
		temperature_index = -1;
	} else {
		for (temperature_index = 0;
		     temperature_index < temperature_count;
		     temperature_index++) {
			if (temperture < waveform[PVI_TEMPERATURE_TABLE_OFFSET +
						 temperature_index])
				break;
		}
		if (temperature_index == temperature_count)
			temperature_index = temperature_count - 1;
	}

	waveformdata = output->wf_table;

	mode = get_wf_mode_index(lut_type);
	if (mode < 0) {
		ret = -EINVAL;
		goto out_clear;
	}
	frame_num = get_wf_frm_num(mode, temperature_index);
	if (frame_num < 0) {
		printk("pvi waveform get frame number failed\n");
		ret = frame_num;
		goto out_clear;
	}
	output->frame_num = frame_num;

	if (lut_type == WF_TYPE_AUTO) {
		mode = get_wf_mode_index(WF_TYPE_GRAY2);
		gray2_frame_num = get_wf_frm_num(mode, temperature_index);
		if (gray2_frame_num <= 0)
			printk("Get GRAY2 waveform data failed during AUTO mode\n");
	}

	for (frame = 0; frame < frame_num; frame++) {
		unsigned int frame_offset;

		if (check_mul_overflow(frame,
				       (unsigned int)PVI_DECODED_FRAME_SIZE,
				       &frame_offset)) {
			ret = -EOVERFLOW;
			goto out_clear;
		}

		for (old_gray = 0; old_gray < PVI_GRAY_LEVELS; old_gray++) {
			for (new_gray = 0; new_gray < PVI_GRAY_LEVELS;
			     new_gray++) {
				u8 low;
				u8 high;

				low = waveformdata[frame_offset +
					(old_gray & 0x0f) * PVI_GRAY_LEVELS +
					(new_gray & 0x0f)] & 3;
				high = waveformdata[frame_offset +
					(old_gray & 0xf0) * 16 +
					(new_gray >> 4)] & 3;
				waveformdata[frame_offset +
					     old_gray * PVI_GRAY_LEVELS +
					     new_gray] = low | (high << 2);
			}
		}
	}

	if (lut_type == WF_TYPE_AUTO)
		output->frame_num |= (u32)gray2_frame_num << 8;

	saved_temperature = temperture;
	saved_type = lut_type;
	saved_wf_table = output->wf_table;

out_clear:
	waveformdata = NULL;
out_unlock:
	mutex_unlock(&pvi_lock);
	return ret;
}

int pvi_wf_input(void *waveform_file)
{
	u8 *waveform = waveform_file;
	u8 version;
	int ret = 0;

	if (!waveform_file)
		return -EINVAL;

	mutex_lock(&pvi_lock);
	if (global_waveform) {
		ret = -EBUSY;
		goto out_unlock;
	}

	version = waveform[PVI_VERSION_OFFSET];
	printk("pvi : input waveform version 0x%x\n", version);
	switch (version) {
	case 9:
	case 18:
	case 22:
	case 24:
	case 25:
	case 32:
	case 35:
	case 67:
	case 84:
		global_waveform = waveform_file;
		saved_temperature = -1;
		saved_type = WF_TYPE_MAX;
		saved_wf_table = NULL;
		break;
	default:
		printk("pvi : Unknow waveform version 0x%x, 0x%x, may be wrong waveform file\n",
		       version, waveform[PVI_SUBVERSION_OFFSET]);
		ret = -ENOEXEC;
		break;
	}

out_unlock:
	mutex_unlock(&pvi_lock);
	return ret;
}

const char *pvi_wf_get_version(void)
{
	u8 *waveform;
	unsigned int index;

	mutex_lock(&pvi_lock);
	waveform = global_waveform;
	if (!waveform) {
		mutex_unlock(&pvi_lock);
		return NULL;
	}

	for (index = 0; index < PVI_VERSION_STRING_LENGTH; index++)
		spi_id_buffer[index] =
			waveform[PVI_VERSION_STRING_OFFSET + index];
	spi_id_buffer[PVI_VERSION_STRING_LENGTH] = '\0';
	mutex_unlock(&pvi_lock);

	return spi_id_buffer;
}

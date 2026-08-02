// SPDX-License-Identifier: GPL-2.0-only
/*
 * Copyright (c) 2020 Rockchip Electronics Co. Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

#include <linux/kernel.h>
#include <linux/list.h>
#include <linux/sched.h>
#include <linux/semaphore.h>
#include <linux/slab.h>
#include <linux/string.h>
#include <linux/wait.h>

#include "../ebc_dev.h"
#include "buf_manage.h"
#include "buf_list.h"

struct buf_info_s {
	int buf_total_num;
	unsigned long phy_mem_base;
	char *virt_mem_base;

	struct buf_list_s *buf_list; /* buffer list. */
	int use_buf_is_empty;

	struct buf_list_s *dsp_buf_list; /* dispplay buffer list. */
	int dsp_buf_list_status;
	struct ebc_buf_s *osd_buf;

	struct mutex dsp_buf_lock;
	struct mutex ebc_buf_lock;
};

static struct buf_info_s ebc_buf_info;
static DECLARE_WAIT_QUEUE_HEAD(ebc_buf_wq);

int ebc_buf_release(struct ebc_buf_s  *release_buf)
{
	bool wake = false;

	if (!release_buf)
		return BUF_SUCCESS;

	if (release_buf->status == buf_osd) {
		kfree(release_buf);
		return BUF_SUCCESS;
	}

	mutex_lock(&ebc_buf_info.ebc_buf_lock);
	release_buf->status = buf_idle;
	if (ebc_buf_info.use_buf_is_empty) {
		ebc_buf_info.use_buf_is_empty = 0;
		wake = true;
	}
	mutex_unlock(&ebc_buf_info.ebc_buf_lock);

	if (wake)
		wake_up_interruptible(&ebc_buf_wq);

	return BUF_SUCCESS;
}

int ebc_remove_from_dsp_buf_list(struct ebc_buf_s *remove_buf)
{
	mutex_lock(&ebc_buf_info.dsp_buf_lock);
	if (ebc_buf_info.dsp_buf_list) {
		int pos;

		pos = buf_list_get_pos(ebc_buf_info.dsp_buf_list, (int *)remove_buf);
		buf_list_remove(ebc_buf_info.dsp_buf_list, pos);
	}
	mutex_unlock(&ebc_buf_info.dsp_buf_lock);

	return BUF_SUCCESS;
}

int ebc_add_to_dsp_buf_list(struct ebc_buf_s *dsp_buf)
{
	struct ebc_buf_s *temp_buf;
	int temp_pos;
	int is_full_mode = 0;

	mutex_lock(&ebc_buf_info.dsp_buf_lock);
	if (ebc_buf_info.dsp_buf_list) {
		switch (dsp_buf->buf_mode) {
		case EPD_OVERLAY:
			break;
		case EPD_A2_ENTER:
		case EPD_SUSPEND:
		case EPD_RESUME:
		case EPD_POWER_OFF:
		case EPD_RESET:
		case EPD_FORCE_FULL:
			/*
			 * add system display buf to dsp buf list directly when dsp buf list is not full,
			 * otherwise, we need to remove some bufs from dsp buf list.
			 */
			if (ebc_buf_info.dsp_buf_list->nb_elt < ebc_buf_info.dsp_buf_list->maxelements)
				break;
			/* fallthrough */
		default:
			if (ebc_buf_info.dsp_buf_list->nb_elt > 1) {
				temp_pos = ebc_buf_info.dsp_buf_list->nb_elt;
				while (--temp_pos) {
					temp_buf = (struct ebc_buf_s *)buf_list_get(ebc_buf_info.dsp_buf_list, temp_pos);
					if (temp_buf->buf_mode == EPD_OVERLAY) {
						continue;
					} else if (((temp_buf->buf_mode >= EPD_FULL_GC16) && (temp_buf->buf_mode <= EPD_DU4))
						|| (temp_buf->buf_mode == EPD_AUTO)) {
						buf_list_remove(ebc_buf_info.dsp_buf_list, temp_pos);
						ebc_buf_release(temp_buf);
					} else if ((1 == is_full_mode)
							&& (temp_buf->buf_mode != EPD_SUSPEND)
							&& (temp_buf->buf_mode != EPD_RESUME)
							&& (temp_buf->buf_mode != EPD_POWER_OFF)) {
						buf_list_remove(ebc_buf_info.dsp_buf_list, temp_pos);
						ebc_buf_release(temp_buf);
					} else {
						is_full_mode = 1;
					}
				}
			}
			break;
		}

		if (-1 == buf_list_add(ebc_buf_info.dsp_buf_list, (int *)dsp_buf, -1)) {
			ebc_buf_release(dsp_buf);
			mutex_unlock(&ebc_buf_info.dsp_buf_lock);
			return BUF_ERROR;
		}

		if (dsp_buf->status != buf_osd)
			dsp_buf->status = buf_dsp;

	}
	mutex_unlock(&ebc_buf_info.dsp_buf_lock);

	return BUF_SUCCESS;
}

int ebc_get_dsp_list_enum_num(void)
{
	int num = 0;

	mutex_lock(&ebc_buf_info.dsp_buf_lock);
	if (ebc_buf_info.dsp_buf_list)
		num = ebc_buf_info.dsp_buf_list->nb_elt;
	mutex_unlock(&ebc_buf_info.dsp_buf_lock);

	return num;
}

struct ebc_buf_s *ebc_find_buf_by_phy_addr(unsigned long phy_addr)
{
	struct ebc_buf_s *found = NULL;
	struct ebc_buf_s *temp_buf;
	int temp_pos;

	mutex_lock(&ebc_buf_info.ebc_buf_lock);
	if (ebc_buf_info.buf_list) {
		temp_pos = 0;
		while (temp_pos < ebc_buf_info.buf_list->nb_elt) {
			temp_buf = (struct ebc_buf_s *)buf_list_get(ebc_buf_info.buf_list, temp_pos++);
			if (temp_buf && temp_buf->phy_addr == phy_addr) {
				found = temp_buf;
				break;
			}
		}
	}
	mutex_unlock(&ebc_buf_info.ebc_buf_lock);

	return found;
}

struct ebc_buf_s *ebc_dsp_buf_get(void)
{
	struct ebc_buf_s *buf = NULL;

	mutex_lock(&ebc_buf_info.dsp_buf_lock);
	if (ebc_buf_info.dsp_buf_list && (ebc_buf_info.dsp_buf_list->nb_elt > 0))
		buf = (struct ebc_buf_s *)buf_list_get(ebc_buf_info.dsp_buf_list, 0);
	mutex_unlock(&ebc_buf_info.dsp_buf_lock);

	return buf;
}

struct ebc_buf_s *ebc_osd_buf_get(void)
{
	struct ebc_buf_s *buf;

	mutex_lock(&ebc_buf_info.ebc_buf_lock);
	buf = ebc_buf_info.osd_buf;
	mutex_unlock(&ebc_buf_info.ebc_buf_lock);

	return buf;
}

struct ebc_buf_s *ebc_osd_buf_clone(void)
{
	struct ebc_buf_s *temp_buf;

	temp_buf = kzalloc(sizeof(*temp_buf), GFP_KERNEL);
	if (!temp_buf)
		return NULL;

	mutex_lock(&ebc_buf_info.ebc_buf_lock);
	if (!ebc_buf_info.osd_buf) {
		mutex_unlock(&ebc_buf_info.ebc_buf_lock);
		kfree(temp_buf);
		return NULL;
	}
	temp_buf->virt_addr = ebc_buf_info.osd_buf->virt_addr;
	temp_buf->phy_addr = ebc_buf_info.osd_buf->phy_addr;
	temp_buf->len = ebc_buf_info.osd_buf->len;
	temp_buf->status = buf_osd;
	mutex_unlock(&ebc_buf_info.ebc_buf_lock);

	return temp_buf;
}

struct ebc_buf_s *ebc_empty_buf_get(void)
{
	struct ebc_buf_s *temp_buf;
	int temp_pos;
	int ret;

	for (;;) {
		temp_buf = NULL;
		mutex_lock(&ebc_buf_info.ebc_buf_lock);
		if (!ebc_buf_info.buf_list) {
			mutex_unlock(&ebc_buf_info.ebc_buf_lock);
			return NULL;
		}

		for (temp_pos = 0; temp_pos < ebc_buf_info.buf_list->nb_elt;
		     temp_pos++) {
			temp_buf = (struct ebc_buf_s *)buf_list_get(ebc_buf_info.buf_list,
								       temp_pos);
			if (!temp_buf)
				continue;
			if (temp_buf->status == buf_idle) {
				temp_buf->status = buf_user;
				memcpy(temp_buf->tid_name, current->comm, TASK_COMM_LEN);
				mutex_unlock(&ebc_buf_info.ebc_buf_lock);
				return temp_buf;
			}
			/* One thread may only own one buffer at a time. */
			if (temp_buf->status == buf_user &&
			    !strncmp(temp_buf->tid_name, current->comm,
				     TASK_COMM_LEN - 7)) {
				mutex_unlock(&ebc_buf_info.ebc_buf_lock);
				return temp_buf;
			}
		}

		ebc_buf_info.use_buf_is_empty = 1;
		mutex_unlock(&ebc_buf_info.ebc_buf_lock);
		ret = wait_event_interruptible(ebc_buf_wq,
				READ_ONCE(ebc_buf_info.use_buf_is_empty) != 1);
		if (ret)
			return NULL;
	}
}

unsigned long ebc_phy_buf_base_get(void)
{
	return ebc_buf_info.phy_mem_base;
}

char *ebc_virt_buf_base_get(void)
{
	return ebc_buf_info.virt_mem_base;
}

int ebc_buf_state_show(char *buf)
{
	int i;
	int ret = 0;
	struct ebc_buf_s *temp_buf;

	mutex_lock(&ebc_buf_info.dsp_buf_lock);
	if (ebc_buf_info.dsp_buf_list)
		ret += sprintf(buf, "dsp_buf num = %d\n",
			       ebc_buf_info.dsp_buf_list->nb_elt);
	else
		ret += sprintf(buf, "dsp_buf num = 0\n");
	mutex_unlock(&ebc_buf_info.dsp_buf_lock);

	mutex_lock(&ebc_buf_info.ebc_buf_lock);
	if (ebc_buf_info.buf_list) {
		for (i = 0; i < ebc_buf_info.buf_list->nb_elt; i++) {
			temp_buf = (struct ebc_buf_s *)buf_list_get(ebc_buf_info.buf_list, i);
			if (temp_buf)
				ret += sprintf(buf + ret,
					       "ebc_buf[%d]: s = %d, m = %d\n",
					       i, temp_buf->status,
					       temp_buf->buf_mode);
		}
	}
	mutex_unlock(&ebc_buf_info.ebc_buf_lock);

	return ret;
}

int ebc_buf_uninit(void)
{
	struct ebc_buf_s *temp_buf;
	int pos;

	/* Lock ordering is always dsp_buf_lock before ebc_buf_lock. */
	mutex_lock(&ebc_buf_info.dsp_buf_lock);
	mutex_lock(&ebc_buf_info.ebc_buf_lock);

	if (ebc_buf_info.dsp_buf_list) {
		for (pos = ebc_buf_info.dsp_buf_list->nb_elt - 1; pos >= 0; pos--) {
			temp_buf = (struct ebc_buf_s *)buf_list_get(
				ebc_buf_info.dsp_buf_list, pos);
			if (temp_buf && temp_buf->status == buf_osd &&
			    temp_buf != ebc_buf_info.osd_buf)
				kfree(temp_buf);
			buf_list_remove(ebc_buf_info.dsp_buf_list, pos);
		}
		buf_list_uninit(ebc_buf_info.dsp_buf_list);
		ebc_buf_info.dsp_buf_list = NULL;
	}

	if (ebc_buf_info.buf_list) {
		for (pos = ebc_buf_info.buf_list->nb_elt - 1; pos >= 0; pos--) {
			temp_buf = (struct ebc_buf_s *)buf_list_get(
				ebc_buf_info.buf_list, pos);
			kfree(temp_buf);
			buf_list_remove(ebc_buf_info.buf_list, pos);
		}
		buf_list_uninit(ebc_buf_info.buf_list);
		ebc_buf_info.buf_list = NULL;
	}

	kfree(ebc_buf_info.osd_buf);
	ebc_buf_info.osd_buf = NULL;
	ebc_buf_info.buf_total_num = 0;
	ebc_buf_info.phy_mem_base = 0;
	ebc_buf_info.virt_mem_base = NULL;
	ebc_buf_info.use_buf_is_empty = 0;
	ebc_buf_info.dsp_buf_list_status = 0;

	mutex_unlock(&ebc_buf_info.ebc_buf_lock);
	mutex_unlock(&ebc_buf_info.dsp_buf_lock);
	wake_up_interruptible_all(&ebc_buf_wq);

	return BUF_SUCCESS;
}

int ebc_buf_init(unsigned long phy_start, char *mem_start, int men_len, int dest_buf_len, int max_buf_num)
{
	int res;
	int use_len;
	char *temp_addr;
	struct ebc_buf_s *temp_buf;

	if (max_buf_num <= 0 || dest_buf_len <= 0 || men_len < dest_buf_len)
		return BUF_ERROR;

	if (NULL == mem_start)
		return BUF_ERROR;

	mutex_init(&ebc_buf_info.dsp_buf_lock);
	mutex_init(&ebc_buf_info.ebc_buf_lock);

	if (buf_list_init(&ebc_buf_info.buf_list, BUF_LIST_MAX_NUMBER))
		return BUF_ERROR;

	if (buf_list_init(&ebc_buf_info.dsp_buf_list, BUF_LIST_MAX_NUMBER)) {
		res = BUF_ERROR;
		goto buf_list_err;
	}

	ebc_buf_info.buf_total_num = 0;
	use_len = 0;

	temp_addr = mem_start;
	ebc_buf_info.virt_mem_base = mem_start;
	ebc_buf_info.phy_mem_base = phy_start;
	use_len += dest_buf_len;
	while (use_len <= men_len) {
		temp_buf = kzalloc(sizeof(*temp_buf), GFP_KERNEL);
		if (NULL == temp_buf) {
			res = BUF_ERROR;
			goto exit;
		}
		temp_buf->virt_addr = temp_addr;
		temp_buf->phy_addr = phy_start;
		temp_buf->len = dest_buf_len;
		temp_buf->status = buf_idle;

		if (-1 == buf_list_add(ebc_buf_info.buf_list, (int *)temp_buf, -1)) {
			kfree(temp_buf);
			res = BUF_ERROR;
			goto exit;
		}
		ebc_buf_info.use_buf_is_empty = 0;

		temp_addr += dest_buf_len;
		phy_start += dest_buf_len;
		use_len += dest_buf_len;

		if (ebc_buf_info.buf_list->nb_elt == max_buf_num)
			break;
	}

	ebc_buf_info.buf_total_num = ebc_buf_info.buf_list->nb_elt;
	if (use_len <= men_len) {
		temp_buf = kzalloc(sizeof(*temp_buf), GFP_KERNEL);
		if (NULL == temp_buf) {
			res = BUF_ERROR;
			goto exit;
		}
		temp_buf->virt_addr = temp_addr;
		temp_buf->phy_addr = phy_start;
		temp_buf->len = dest_buf_len;
		temp_buf->status = buf_osd;
		ebc_buf_info.osd_buf = temp_buf;
	}

	return BUF_SUCCESS;
exit:
	ebc_buf_uninit();
	return res;
buf_list_err:
	buf_list_uninit(ebc_buf_info.buf_list);
	ebc_buf_info.buf_list = NULL;

	return res;
}

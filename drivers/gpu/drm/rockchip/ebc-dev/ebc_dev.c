// SPDX-License-Identifier: GPL-2.0-only
/* Rockchip RK3566 EBC v2.08 main driver, recovered from ebc_dev_v8.S. */

#include <linux/build_bug.h>
#include <linux/compat.h>
#include <linux/cpu.h>
#include <linux/dma-mapping.h>
#include <linux/err.h>
#include <linux/fs.h>
#include <linux/i2c.h>
#include <linux/init.h>
#include <linux/io.h>
#include <linux/jiffies.h>
#include <linux/kthread.h>
#include <linux/miscdevice.h>
#include <linux/mm.h>
#include <linux/mutex.h>
#include <linux/module.h>
#include <linux/of.h>
#include <linux/of_device.h>
#include <linux/pm.h>
#include <linux/of_address.h>
#include <linux/of_platform.h>
#include <linux/overflow.h>
#include <linux/platform_device.h>
#include <linux/rwsem.h>
#include <linux/sched/rt.h>
#include <linux/sched/types.h>
#include <linux/semaphore.h>
#include <linux/slab.h>
#include <linux/timer.h>
#include <linux/uaccess.h>
#include <linux/wait.h>
#include <linux/wakelock.h>
#include <linux/workqueue.h>

#include "ebc_dev.h"
#include "ebc_panel.h"
#include "bufmanage/buf_manage.h"
#include "epdlut/epd_lut.h"
#include "pmic/ebc_pmic.h"
#include "tcon/ebc_tcon.h"

#define EBC_VERSION             "2.08"
#define EBC_MISC_MINOR          243
#define EBC_BUFFER_NUM          4
#define EBC_DIRECT0_OFFSET      0xa00000
#define EBC_DIRECT1_OFFSET      0xb00000
#define EBC_WF_TABLE_OFFSET     0xc00000
#define EBC_FRAME_TIMEOUT       (15 * HZ)
#define EBC_TIMER_INIT          0x0fffffffUL
#define EBC_TIMER_IDLE          0x18000000UL
#define EBC_AUTO_WORK_CPU       8

struct ebc_info {
	unsigned long ebc_buffer_phy;
	char *ebc_buffer_vir;
	int ebc_buffer_size;
	int ebc_buf_real_size;
	int direct_buf_real_size;
	int is_busy_now;
	u8 frame_total;
	u8 frame_bw_total;
	int auto_need_refresh;
	int frame_left;
	int part_mode_count;
	int full_mode_num;
	int height;
	int width;
	int *lut_addr;
	int buf_align16;
	int ebc_irq_status;
	int ebc_dsp_buf_status;
	struct device *dev;
	struct epd_lut_data lut_data;
	struct task_struct *ebc_task;
	u32 *auto_image_new;
	u32 *auto_image_old;
	u32 *auto_image_bg;
	u8 *auto_frame_count;
	u8 *auto_image_osd;
	void *direct_buffer[DIRECT_FB_NUM];
	int ebc_power_status;
	int ebc_last_display;
	char *lut_ddr_vir;
	struct ebc_buf_s *prev_dsp_buf;
	struct ebc_buf_s *curr_dsp_buf;
	struct wake_lock suspend_lock;
	int wake_lock_is_set;
	int first_in;
	struct timer_list vdd_timer;
	struct timer_list frame_timer;
	struct work_struct auto_buffer_work;
	int is_early_suspend;
	int is_deep_sleep;
	int is_power_off;
	int overlay_enable;
	int overlay_start;
	bool shutting_down;
};

struct ebc {
	struct device *dev;
	struct ebc_tcon *tcon;
	struct ebc_pmic *pmic;
	struct ebc_panel panel;
	struct ebc_info info;
};

static struct ebc *global_ebc;
static struct task_struct *ebc_auto_task;
static char *ulogo_buf;
static char *klogo_buf;
static bool ebc_misc_registered;
static DEFINE_MUTEX(ebc_lifecycle_lock);
static DECLARE_WAIT_QUEUE_HEAD(ebc_thread_wq);
static DECLARE_WAIT_QUEUE_HEAD(ebc_poweroff_wq);
static DECLARE_WAIT_QUEUE_HEAD(ebc_wq);
static DEFINE_SEMAPHORE(ebc_auto_thread_sem);
static DECLARE_RWSEM(auto_buf_sema);

static void frame_done_callback(void);
static int ebc_thread(void *ptr);
static int ebc_auto_tast_function(void *data);

static inline struct ebc *ebc_get_live(void)
{
	struct ebc *ebc = READ_ONCE(global_ebc);

	if (!ebc || READ_ONCE(ebc->info.shutting_down))
		return NULL;
	return ebc;
}

static bool ebc_phys_fits_u32(struct device *dev, phys_addr_t address,
			      const char *name)
{
	if (address > U32_MAX) {
		dev_err(dev, "%s address %pa exceeds 32-bit hardware/ABI range\n",
			name, &address);
		return false;
	}
	return true;
}

static void ebc_queue_auto_work(struct ebc_info *info)
{
	int cpu = EBC_AUTO_WORK_CPU;

	if (cpu >= nr_cpu_ids || !cpu_online(cpu))
		cpu = WORK_CPU_UNBOUND;
	queue_work_on(cpu, system_wq, &info->auto_buffer_work);
}

static inline u8 ebc_lut_pixel(const struct ebc_info *info, unsigned int frame,
			       u8 old, u8 new)
{
	return info->lut_data.wf_table[(frame << 16) | (old << 8) | new] & 3;
}

static inline unsigned int ebc_row(const struct ebc_panel *panel,
				   unsigned int row)
{
	return panel->mirror ? panel->vir_height - 1 - row : row;
}

static inline u8 ebc_nibble(u32 word, unsigned int pixel)
{
	return (word >> (pixel * 4)) & 0xf;
}

static inline u32 ebc_put_nibble(u32 word, unsigned int pixel, u8 value)
{
	u32 shift = pixel * 4;

	return (word & ~(0xfU << shift)) | ((u32)value << shift);
}

static void get_auto_image(u8 *data, u32 *new, u32 *old, u8 *count,
			   struct ebc_info *info)
{
	struct ebc_panel *panel = &global_ebc->panel;
	unsigned int words = panel->vir_width / 8;
	unsigned int y, x, p;

	info->auto_need_refresh = 0;
	for (y = 0; y < panel->vir_height; y++) {
		u8 *dst = data + ebc_row(panel, y) * panel->vir_width / 4;

		for (x = 0; x < words; x++, new++, old++, count += 8) {
			u32 n = *new, o = *old;
			u8 lo = 0, hi = 0;

			if (n == o) {
				dst[x * 2] = 0;
				dst[x * 2 + 1] = 0;
				continue;
			}
			info->auto_need_refresh = 1;
			for (p = 0; p < 8; p++) {
				u8 np = ebc_nibble(n, p);
				u8 op = ebc_nibble(o, p);
				u8 phase;

				if (np == op)
					continue;
				phase = count[p]++;
				if (p < 4)
					lo |= ebc_lut_pixel(info, phase, op, np) << (p * 2);
				else
					hi |= ebc_lut_pixel(info, phase, op, np) << ((p - 4) * 2);
				if (count[p] == info->frame_total) {
					count[p] = 0;
					o = ebc_put_nibble(o, p, np);
				}
			}
			*old = o;
			dst[x * 2] = lo;
			dst[x * 2 + 1] = hi;
		}
	}
}

static void get_overlay_image(u8 *data, u32 *new, u32 *old, u8 *count,
			      struct ebc_info *info)
{
	struct ebc_panel *panel = &global_ebc->panel;
	unsigned int words = panel->vir_width / 8;
	unsigned int y, x, p;

	info->auto_need_refresh = 0;
	for (y = 0; y < panel->vir_height; y++) {
		u8 *dst = data + ebc_row(panel, y) * panel->vir_width / 4;

		for (x = 0; x < words; x++, new++, old++, count += 8) {
			u32 n = *new, o = *old;
			u8 packed[2] = { 0, 0 };

			if (n == o) {
				dst[x * 2] = dst[x * 2 + 1] = 0;
				continue;
			}
			info->auto_need_refresh = 1;
			for (p = 0; p < 8; p++) {
				u8 np = ebc_nibble(n, p);
				u8 op = ebc_nibble(o, p);
				u8 total, phase;

				if (np == op)
					continue;
				total = (np == 0 || np == 0xf) ?
					info->frame_bw_total : info->frame_total;
				phase = count[p]++;
				packed[p / 4] |= ebc_lut_pixel(info, phase, op, np) <<
						 (p % 4) * 2;
				if (count[p] == total) {
					count[p] = 0;
					o = ebc_put_nibble(o, p, np);
				}
			}
			*old = o;
			dst[x * 2] = packed[0];
			dst[x * 2 + 1] = packed[1];
		}
	}
}

static void direct_mode_data_change(u8 *data, u32 *new, u32 *old,
				    struct ebc_info *info)
{
	struct ebc_panel *panel = &global_ebc->panel;
	unsigned int frame = info->frame_total - info->frame_left;
	unsigned int words = panel->vir_width / 8;
	unsigned int y, x, p;

	for (y = 0; y < panel->vir_height; y++) {
		u8 *dst = data + ebc_row(panel, y) * panel->vir_width / 4;

		for (x = 0; x < words; x++) {
			u32 n = new[x];
			u32 o = old[x];

			for (p = 0; p < 8; p += 4) {
				u8 out = 0;
				unsigned int lane;

				for (lane = 0; lane < 4; lane++)
					out |= ebc_lut_pixel(info, frame,
							     ebc_nibble(o, p + lane),
							     ebc_nibble(n, p + lane)) <<
						(lane * 2);
				dst[x * 2 + p / 4] = out;
			}
		}
		new += words;
		old += words;
	}
}

static void direct_mode_data_change_part(u8 *data, u32 *new, u32 *old,
					 struct ebc_info *info)
{
	struct ebc_panel *panel = &global_ebc->panel;
	unsigned int frame = info->frame_total - info->frame_left;
	unsigned int words = panel->vir_width / 8;
	unsigned int y, x, p;

	for (y = 0; y < panel->vir_height; y++) {
		u8 *dst = data + ebc_row(panel, y) * panel->vir_width / 4;

		for (x = 0; x < words; x++) {
			u32 n = new[x];
			u32 o = old[x];

			if (n == o) {
				dst[x * 2] = 0;
				dst[x * 2 + 1] = 0;
				continue;
			}
			for (p = 0; p < 8; p += 4) {
				u8 out = 0;
				unsigned int lane;

				for (lane = 0; lane < 4; lane++) {
					u8 ov = ebc_nibble(o, p + lane);
					u8 nv = ebc_nibble(n, p + lane);

					if (ov != nv)
						out |= ebc_lut_pixel(info, frame, ov, nv) <<
							(lane * 2);
				}
				dst[x * 2 + p / 4] = out;
			}
		}
		new += words;
		old += words;
	}
}

static void flip(struct ebc_panel *panel, unsigned int size)
{
	struct panel_buffer *fb = &panel->fb[panel->current_buffer];

	dma_sync_single_for_device(panel->dev, fb->phy_addr, size, DMA_TO_DEVICE);
	ebc_tcon_dsp_mode_set(panel->tcon, NORMAL_UPDATE, DIRECT_MODE,
			      DIRECT_MODE, DIRECT_MODE);
	ebc_tcon_image_addr_set(panel->tcon, (u32)fb->phy_addr, 0);
	ebc_tcon_frame_start(panel->tcon, 1);
	panel->current_buffer = 1 - panel->current_buffer;
}

void refresh_new_image2(u32 *image_new, const u32 *image_fb,
			const u32 *image_bg, const u8 *frame_count,
			struct ebc_info *info, int mode)
{
	unsigned int words = info->width / 8;
	unsigned int y, x, p;

	for (y = 0; y < info->height; y++) {
		for (x = 0; x < words; x++) {
			u32 value = image_new[x];
			u32 fb = image_fb[x];
			u32 bg = image_bg[x];

			for (p = 0; p < 8; p++) {
				u8 pixel;

				if (frame_count[x * 8 + p])
					continue;
				pixel = ebc_nibble(fb, p);
				if (pixel == 0xe)
					value = ebc_put_nibble(value, p, 0xf);
				else
					value = ebc_put_nibble(value, p,
							       pixel & ebc_nibble(bg, p));
			}
			image_new[x] = value;
		}
		image_new += words;
		image_fb += words;
		image_bg += words;
		frame_count += words * 8;
	}
}

void refresh_new_image_auto(u32 *image_new, const u32 *image_fb,
			    const u8 *frame_count, struct ebc_info *info)
{
	unsigned int words = info->width / 8;
	unsigned int y, x, p;

	for (y = 0; y < info->height; y++) {
		for (x = 0; x < words; x++) {
			u32 value = image_new[x];
			u32 changed = image_fb[x] ^ value;

			for (p = 0; p < 8; p++)
				if (!frame_count[x * 8 + p] &&
				    (changed & (0xfU << (p * 4))))
					value = ebc_put_nibble(value, p,
							       ebc_nibble(image_fb[x], p));
			image_new[x] = value;
		}
		image_new += words;
		image_fb += words;
		frame_count += words * 8;
	}
}

void new_buffer_refresh(struct work_struct *work)
{
	struct ebc_info *info = container_of(work, struct ebc_info,
					     auto_buffer_work);
	struct ebc *ebc = container_of(info, struct ebc, info);
	struct ebc_buf_s *buf;

	if (READ_ONCE(info->shutting_down) || ebc != READ_ONCE(global_ebc))
		return;
	down_write(&auto_buf_sema);
	buf = info->curr_dsp_buf;
	if (buf && buf->buf_mode == EPD_AUTO)
		refresh_new_image_auto(info->auto_image_new,
				       (u32 *)buf->virt_addr,
				       info->auto_frame_count, info);
	else if (buf)
		refresh_new_image2(info->auto_image_new,
				   (u32 *)buf->virt_addr, info->auto_image_bg,
				   info->auto_frame_count, info,
				   buf->buf_mode);
	up_write(&auto_buf_sema);
}

static int ebc_power_set(struct ebc *ebc, bool on)
{
	if (on) {
		if (!ebc->info.wake_lock_is_set) {
			ebc->info.wake_lock_is_set = 1;
			wake_lock(&ebc->info.suspend_lock);
		}
		ebc->info.ebc_power_status = 1;
		ebc_pmic_power_on(ebc->pmic);
		ebc_tcon_enable(ebc->tcon, &ebc->panel);
		dev_info(ebc->dev, "ebc hw power on\n");
	} else {
		ebc->info.ebc_power_status = 0;
		ebc_tcon_disable(ebc->tcon);
		ebc_pmic_power_off(ebc->pmic);
		if (ebc->info.wake_lock_is_set) {
			ebc->info.wake_lock_is_set = 0;
			wake_unlock(&ebc->info.suspend_lock);
		}
		dev_info(ebc->dev, "ebc hw power off\n");
	}
	return 0;
}

static int ebc_lut_update(struct ebc *ebc)
{
	int temperature = 25;
	int temperature_ret;
	int lut_ret;
	enum epd_lut_type type = WF_TYPE_GC16;

	temperature_ret = ebc_pmic_read_temp(ebc->pmic, &temperature);
	if (temperature_ret)
		dev_err(ebc->info.dev, "ebc_pmic_read_temp failed, ret = %d\n",
			temperature_ret);
	if (temperature < 0)
		temperature = 0;
	else if (temperature > 50)
		temperature = 50;

	switch (ebc->info.curr_dsp_buf->buf_mode) {
	case EPD_OVERLAY:
		type = WF_TYPE_AUTO;
		break;
	case EPD_FULL_GL16:
	case EPD_PART_GL16:
		type = WF_TYPE_GL16;
		break;
	case EPD_FULL_GLR16:
	case EPD_PART_GLR16:
		type = WF_TYPE_GLR16;
		break;
	case EPD_FULL_GLD16:
	case EPD_PART_GLD16:
		type = WF_TYPE_GLD16;
		break;
	case EPD_FULL_GCC16:
	case EPD_PART_GCC16:
		type = WF_TYPE_GCC16;
		break;
	case EPD_A2:
	case EPD_A2_DITHER:
		type = WF_TYPE_A2;
		break;
	case EPD_DU:
	case EPD_A2_ENTER:
		type = WF_TYPE_GRAY2;
		break;
	case EPD_DU4:
		type = WF_TYPE_GRAY4;
		break;
	case EPD_RESET:
		type = WF_TYPE_RESET;
		break;
	default:
		break;
	}
	lut_ret = epd_lut_get(&ebc->info.lut_data, type, temperature);
	if (temperature_ret || lut_ret)
		dev_err(ebc->info.dev, "get lut data failed\n");
	if (lut_ret)
		return -1;
	return temperature_ret;
}

static bool ebc_uses_partial_data(int mode)
{
	return mode >= EPD_PART_GC16 && mode <= EPD_A2_ENTER;
}

static void ebc_frame_data_change(struct ebc_info *info, unsigned int buffer)
{
	if (ebc_uses_partial_data(info->curr_dsp_buf->buf_mode))
		direct_mode_data_change_part(info->direct_buffer[buffer],
					     (u32 *)info->curr_dsp_buf->virt_addr,
					     (u32 *)info->prev_dsp_buf->virt_addr,
					     info);
	else
		direct_mode_data_change(info->direct_buffer[buffer],
					(u32 *)info->curr_dsp_buf->virt_addr,
					(u32 *)info->prev_dsp_buf->virt_addr,
					info);
}

static void ebc_frame_start(struct ebc *ebc)
{
	struct ebc_info *info = &ebc->info;
	struct ebc_buf_s *cur = info->curr_dsp_buf;

	if (cur->buf_mode == EPD_AUTO || cur->buf_mode == EPD_OVERLAY) {
		if (cur->buf_mode == EPD_AUTO)
			get_auto_image(info->direct_buffer[0], info->auto_image_new,
				       info->auto_image_old, info->auto_frame_count, info);
		else
			get_overlay_image(info->direct_buffer[0], info->auto_image_new,
					  info->auto_image_old, info->auto_frame_count, info);
		if (!info->auto_need_refresh) {
			info->is_busy_now = 0;
			return;
		}
		ebc->panel.current_buffer = 0;
		flip(&ebc->panel, info->direct_buf_real_size);
		if (cur->buf_mode == EPD_AUTO)
			get_auto_image(info->direct_buffer[1], info->auto_image_new,
				       info->auto_image_old, info->auto_frame_count, info);
		else
			get_overlay_image(info->direct_buffer[1], info->auto_image_new,
					  info->auto_image_old, info->auto_frame_count, info);
		return;
	}

	info->frame_left = info->frame_total;
	ebc_frame_data_change(info, 0);
	ebc->panel.current_buffer = 0;
	flip(&ebc->panel, info->direct_buf_real_size);
	info->frame_left--;
	ebc_frame_data_change(info, 1);
}

static void frame_done_callback(void)
{
	struct ebc *ebc = ebc_get_live();
	struct ebc_info *info;

	if (!ebc || !ebc->info.curr_dsp_buf)
		return;
	info = &ebc->info;
	if (info->curr_dsp_buf->buf_mode > EPD_OVERLAY) {
		if (info->frame_left) {
			info->is_busy_now = 1;
			wake_up_process(ebc_auto_task);
			return;
		}
		info->is_busy_now = 0;
		info->ebc_irq_status = 1;
		wake_up_interruptible_sync(&ebc_wq);
		wake_up_interruptible_sync(&ebc_thread_wq);
		return;
	}
	if (info->auto_need_refresh) {
		wake_up_process(ebc_auto_task);
		return;
	}
	memset(info->auto_frame_count, 0,
	       ebc->panel.vir_width * ebc->panel.vir_height);
	mod_timer(&info->frame_timer, jiffies + EBC_TIMER_IDLE);
	info->ebc_irq_status = 1;
	info->is_busy_now = 0;
	wake_up_interruptible_sync(&ebc_wq);
	wake_up_interruptible_sync(&ebc_thread_wq);
}

static void ebc_frame_timeout(struct timer_list *timer)
{
	struct ebc_info *info = from_timer(info, timer, frame_timer);

	if (!READ_ONCE(info->shutting_down)) {
		dev_err(info->dev, "frame completion timed out\n");
		frame_done_callback();
	}
}

static void ebc_vdd_power_timeout(struct timer_list *timer)
{
	struct ebc_info *info = from_timer(info, timer, vdd_timer);

	if (!READ_ONCE(info->shutting_down) && info->wake_lock_is_set) {
		info->wake_lock_is_set = 0;
		wake_unlock(&info->suspend_lock);
	}
}

static int ebc_auto_tast_function(void *data)
{
	struct ebc_info *info = data;
	struct ebc *ebc = container_of(info, struct ebc, info);

	while (!kthread_should_stop()) {
		down(&ebc_auto_thread_sem);
		set_current_state(TASK_INTERRUPTIBLE);
		if (kthread_should_stop())
			break;
		if (!info->curr_dsp_buf) {
			up(&ebc_auto_thread_sem);
			schedule();
			continue;
		}

		if (info->curr_dsp_buf->buf_mode == EPD_AUTO ||
		    info->curr_dsp_buf->buf_mode == EPD_OVERLAY) {
			flip(&ebc->panel, info->direct_buf_real_size);
			if (info->curr_dsp_buf->buf_mode == EPD_AUTO)
				get_auto_image(info->direct_buffer[ebc->panel.current_buffer],
					       info->auto_image_new, info->auto_image_old,
					       info->auto_frame_count, info);
			else
				get_overlay_image(info->direct_buffer[ebc->panel.current_buffer],
						  info->auto_image_new, info->auto_image_old,
						  info->auto_frame_count, info);
		} else {
			info->frame_left--;
			flip(&ebc->panel, info->direct_buf_real_size);
			if (info->frame_left)
				ebc_frame_data_change(info, ebc->panel.current_buffer);
		}
		if (info->curr_dsp_buf->buf_mode == EPD_AUTO ||
		    (info->curr_dsp_buf->buf_mode == EPD_OVERLAY &&
		     info->overlay_enable && info->overlay_start))
			ebc_queue_auto_work(info);
		up(&ebc_auto_thread_sem);
		schedule();
	}
	__set_current_state(TASK_RUNNING);
	up(&ebc_auto_thread_sem);
	return 0;
}

static bool ebc_same_image(const struct ebc *ebc, const struct ebc_buf_s *a,
			   const struct ebc_buf_s *b)
{
	return !memcmp(a->virt_addr, b->virt_addr, ebc->info.ebc_buf_real_size);
}

static void ebc_set_frame_totals(struct ebc_info *info)
{
	info->frame_total = info->lut_data.frame_num & 0xff;
	info->frame_bw_total = (info->lut_data.frame_num >> 8) & 0xff;
	if (!info->frame_bw_total)
		info->frame_bw_total = info->frame_total;
}

static void ebc_prepare_auto(struct ebc_info *info, struct ebc_buf_s *next)
{
	down_write(&auto_buf_sema);
	info->curr_dsp_buf = next;
	if (info->prev_dsp_buf->buf_mode > EPD_OVERLAY) {
		memcpy(info->auto_image_new, next->virt_addr,
		       info->ebc_buf_real_size);
		memcpy(info->auto_image_old, info->prev_dsp_buf->virt_addr,
		       info->ebc_buf_real_size);
	} else {
		refresh_new_image_auto(info->auto_image_new,
				       (u32 *)next->virt_addr,
				       info->auto_frame_count, info);
	}
	up_write(&auto_buf_sema);
}

static void ebc_prepare_overlay(struct ebc_info *info,
				struct ebc_buf_s *next)
{
	down_write(&auto_buf_sema);
	info->curr_dsp_buf = next;
	if (info->prev_dsp_buf->buf_mode > EPD_OVERLAY) {
		memcpy(info->auto_image_new, info->prev_dsp_buf->virt_addr,
		       info->ebc_buf_real_size);
		memcpy(info->auto_image_old, info->prev_dsp_buf->virt_addr,
		       info->ebc_buf_real_size);
		memcpy(info->auto_image_bg, info->prev_dsp_buf->virt_addr,
		       info->ebc_buf_real_size);
	} else if (info->prev_dsp_buf->buf_mode == EPD_AUTO) {
		memcpy(info->auto_image_bg, info->auto_image_old,
		       info->ebc_buf_real_size);
	}
	refresh_new_image2(info->auto_image_new, (u32 *)next->virt_addr,
			   info->auto_image_bg, info->auto_frame_count,
			   info, next->buf_mode);
	up_write(&auto_buf_sema);
}

static void ebc_finish_buffer(struct ebc *ebc, struct ebc_buf_s *buf)
{
	struct ebc_info *info = &ebc->info;

	if (buf->buf_mode == EPD_POWER_OFF) {
		info->ebc_last_display = 0;
		info->is_power_off = 1;
		wake_up_interruptible_sync(&ebc_poweroff_wq);
	} else if (buf->buf_mode == EPD_SUSPEND) {
		info->ebc_last_display = 0;
		info->is_early_suspend = 1;
		info->overlay_start = 0;
		ebc_notify(EBC_FB_BLANK);
		wake_up_interruptible_sync(&ebc_poweroff_wq);
	} else if (buf->buf_mode == EPD_RESUME) {
		info->is_early_suspend = 0;
	}

	ebc_remove_from_dsp_buf_list(buf);
	if (!info->first_in)
		info->first_in = 1;
	else if (info->prev_dsp_buf)
		ebc_buf_release(info->prev_dsp_buf);
	info->prev_dsp_buf = info->curr_dsp_buf;
}

static int ebc_thread(void *ptr)
{
	struct ebc_info *info = ptr;
	struct ebc *ebc = container_of(info, struct ebc, info);
	int full_count = 0;

	while (!kthread_should_stop()) {
		struct ebc_buf_s *next;
		bool direct;

		if (info->is_power_off) {
			if (info->ebc_power_status)
				ebc_power_set(ebc, false);
			break;
		}
		next = ebc_dsp_buf_get();
		if (!next || !next->phy_addr) {
			if (!info->is_busy_now && info->ebc_power_status)
				ebc_power_set(ebc, false);
			wait_event_interruptible(ebc_thread_wq,
				kthread_should_stop() || info->ebc_dsp_buf_status);
			info->ebc_dsp_buf_status = 0;
			continue;
		}

		if (next->buf_mode == EPD_POWER_OFF) {
			info->overlay_enable = 0;
			info->overlay_start = 0;
		}
		if (next->buf_mode == EPD_SUSPEND ||
		    next->buf_mode == EPD_FORCE_FULL)
			info->overlay_start = 0;
		if (info->is_early_suspend && next->buf_mode != EPD_RESUME) {
			ebc_remove_from_dsp_buf_list(next);
			ebc_buf_release(next);
			continue;
		}
		if (next->buf_mode == EPD_RESUME) {
			info->is_early_suspend = 0;
			ebc_notify(EBC_FB_UNBLANK);
		}

		mod_timer(&info->vdd_timer, jiffies + EBC_TIMER_IDLE);
		if (!info->prev_dsp_buf)
			info->prev_dsp_buf = next;

		if (info->overlay_start && next->buf_mode != EPD_OVERLAY &&
		    next->buf_mode != EPD_SUSPEND &&
		    next->buf_mode != EPD_FORCE_FULL) {
			down_write(&auto_buf_sema);
			memcpy(info->auto_image_bg, next->virt_addr,
			       info->ebc_buf_real_size);
			ebc_remove_from_dsp_buf_list(next);
			ebc_buf_release(next);
			refresh_new_image2(info->auto_image_new,
					   (u32 *)info->curr_dsp_buf->virt_addr,
					   info->auto_image_bg,
					   info->auto_frame_count, info,
					   info->curr_dsp_buf->buf_mode);
			up_write(&auto_buf_sema);
			if (!info->is_busy_now) {
				info->is_busy_now = 1;
				info->ebc_irq_status = 0;
				if (!info->ebc_power_status)
					ebc_power_set(ebc, true);
				wake_up_process(ebc_auto_task);
			}
			continue;
		}

		if (next->buf_mode == EPD_OVERLAY && !info->overlay_enable) {
			ebc_remove_from_dsp_buf_list(next);
			ebc_buf_release(next);
			continue;
		}

		if (next->buf_mode == EPD_AUTO)
			ebc_prepare_auto(info, next);
		else if (next->buf_mode == EPD_OVERLAY) {
			info->overlay_start = 1;
			ebc_prepare_overlay(info, next);
		} else {
			long waited;

			if (info->is_busy_now) {
				waited = wait_event_interruptible_timeout(
					ebc_wq, info->ebc_irq_status ||
					kthread_should_stop(), EBC_FRAME_TIMEOUT);
				if (kthread_should_stop())
					break;
				if (waited <= 0) {
					dev_err(info->dev,
						"timed out waiting for prior frame\n");
					info->is_busy_now = 0;
					info->ebc_irq_status = 1;
				}
			}
			info->ebc_irq_status = 0;
			if (info->prev_dsp_buf->buf_mode <= EPD_OVERLAY)
				memcpy(info->prev_dsp_buf->virt_addr,
				       info->auto_image_old,
				       info->ebc_buf_real_size);
			info->curr_dsp_buf = next;
		}

		if (next->buf_mode >= EPD_FULL_GC16 &&
		    next->buf_mode <= EPD_FORCE_FULL &&
		    next->buf_mode >= EPD_PART_GC16 &&
		    next->buf_mode <= EPD_PART_GCC16 &&
		    info->prev_dsp_buf != next &&
		    ebc_same_image(ebc, next, info->prev_dsp_buf)) {
			ebc_finish_buffer(ebc, next);
			continue;
		}
		if (next->buf_mode >= EPD_PART_GC16 &&
		    next->buf_mode <= EPD_PART_GCC16 &&
		    info->full_mode_num > 0 &&
		    ++full_count >= info->full_mode_num) {
			next->buf_mode = EPD_FULL_GC16;
			full_count = 0;
		} else if (next->buf_mode < EPD_PART_GC16 ||
			   next->buf_mode > EPD_PART_GCC16) {
			full_count = 0;
		}

		if (next->buf_mode > EPD_FORCE_FULL) {
			dev_err(info->dev, "invalid display mode %d\n",
				next->buf_mode);
			ebc_finish_buffer(ebc, next);
			continue;
		}

		direct = next->buf_mode > EPD_OVERLAY;
		if (!info->ebc_power_status)
			ebc_power_set(ebc, true);
		if (ebc_lut_update(ebc)) {
			dev_err(info->dev, "ebc_lut_update err\n");
			ebc_finish_buffer(ebc, next);
			continue;
		}
		ebc_set_frame_totals(info);
		info->is_busy_now = 1;
		info->ebc_irq_status = 0;
		ebc_frame_start(ebc);

		if (direct) {
			long waited = 1;

			mod_timer(&info->frame_timer, jiffies + EBC_FRAME_TIMEOUT);
			if (info->is_busy_now)
				waited = wait_event_interruptible_timeout(
					ebc_wq, info->ebc_irq_status ||
					kthread_should_stop(), EBC_FRAME_TIMEOUT + HZ);
			del_timer_sync(&info->frame_timer);
			if (kthread_should_stop())
				break;
			if (waited <= 0 && !info->ebc_irq_status) {
				dev_err(info->dev, "frame wait did not complete\n");
				frame_done_callback();
			}
			info->ebc_irq_status = 0;
			ebc_finish_buffer(ebc, next);
		} else {
			ebc_finish_buffer(ebc, next);
		}
	}
	return 0;
}


static int ebc_open(struct inode *inode, struct file *file)
{
	struct ebc *ebc = ebc_get_live();

	if (!ebc)
		return -ENODEV;
	file->private_data = ebc;
	file->f_pos = 0;
	return 0;
}

static int ebc_mmap(struct file *file, struct vm_area_struct *vma)
{
	struct ebc *ebc = file->private_data;
	unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
	unsigned long size = vma->vm_end - vma->vm_start;
	phys_addr_t start;
	int ret;

	if (!ebc || ebc != ebc_get_live())
		return -ENODEV;
	if (!size || (offset >> PAGE_SHIFT) != vma->vm_pgoff ||
	    offset > ebc->info.ebc_buffer_size ||
	    size > ebc->info.ebc_buffer_size - offset)
		return -EINVAL;
	if ((ebc->info.ebc_buffer_phy | offset | size) & ~PAGE_MASK)
		return -EINVAL;
	start = ebc->info.ebc_buffer_phy + offset;
	vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
	vma->vm_flags |= VM_IO | VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP;
	ret = remap_pfn_range(vma, vma->vm_start, start >> PAGE_SHIFT, size,
			      vma->vm_page_prot);
	return ret ? -EAGAIN : 0;
}

static void ebc_fill_buf_info(struct ebc *ebc, struct ebc_buf_info *out,
			      const struct ebc_buf_s *buf)
{
	memset(out, 0, sizeof(*out));
	if (buf)
		out->offset = buf->phy_addr - ebc->info.ebc_buffer_phy;
	out->height = ebc->panel.height;
	out->width = ebc->panel.width;
	out->panel_color = ebc->panel.panel_color;
}

static void ebc_fill_panel_info(struct ebc *ebc, struct ebc_buf_info *out)
{
	memset(out, 0, sizeof(*out));
	out->height = ebc->panel.height;
	out->width = ebc->panel.width;
	out->panel_color = ebc->panel.panel_color;
	out->width_mm = ebc->panel.width_mm;
	out->height_mm = ebc->panel.height_mm;
}

static long ebc_copy_debug_buffer(struct ebc *ebc, void __user *argp,
				  const void *source)
{
	struct ebc_buf_info info;
	struct ebc_buf_s *buf;

	if (!source)
		return -ENODATA;
	buf = ebc_empty_buf_get();
	if (!buf)
		return -ENOMEM;
	memcpy(buf->virt_addr, source, ebc->info.ebc_buf_real_size);
	ebc_fill_buf_info(ebc, &info, buf);
	if (copy_to_user(argp, &info, sizeof(info))) {
		ebc_buf_release(buf);
		return -EFAULT;
	}
	ebc_buf_release(buf);
	return 0;
}

static bool ebc_valid_mode(int mode)
{
	return mode >= EPD_AUTO && mode <= EPD_FORCE_FULL;
}

static bool ebc_valid_window(const struct ebc *ebc,
			     const struct ebc_buf_info *user_info)
{
	return user_info->win_x1 >= 0 && user_info->win_y1 >= 0 &&
	       user_info->win_x2 >= user_info->win_x1 &&
	       user_info->win_y2 >= user_info->win_y1 &&
	       user_info->win_x2 <= ebc->panel.width &&
	       user_info->win_y2 <= ebc->panel.height;
}

static long ebc_io_ctl(struct file *file, unsigned int cmd, unsigned long arg)
{
	struct ebc *ebc = file->private_data;
	struct ebc_info *info;
	struct ebc_buf_info user_info;
	struct ebc_buf_s *buf;
	void __user *argp = (void __user *)arg;
	long waited;

	if (!ebc || ebc != ebc_get_live())
		return -ENODEV;
	info = &ebc->info;

	switch (cmd) {
	case EBC_GET_BUFFER:
	case EBC_SEND_BUFFER:
	case EBC_GET_BUFFER_INFO:
	case EBC_SET_FULL_MODE_NUM:
	case EBC_GET_OSD_BUFFER:
	case EBC_SEND_OSD_BUFFER:
	case EBC_GET_AUTO_OLD_BUFFER:
	case EBC_GET_AUTO_NEW_BUFFER:
	case EBC_GET_AUTO_BG_BUFFER:
	case EBC_GET_AUTO_CUR_BUFFER:
		if (!argp)
			return -EFAULT;
		break;
	default:
		break;
	}

	switch (cmd) {
	case EBC_GET_BUFFER:
		buf = ebc_empty_buf_get();
		if (!buf)
			return -ENOMEM;
		ebc_fill_buf_info(ebc, &user_info, buf);
		if (copy_to_user(argp, &user_info, sizeof(user_info))) {
			ebc_buf_release(buf);
			return -EFAULT;
		}
		return 0;
	case EBC_SEND_BUFFER:
		if (copy_from_user(&user_info, argp, sizeof(user_info)))
			return -EFAULT;
		if (user_info.offset < 0 || user_info.offset >= info->ebc_buffer_size ||
		    !ebc_valid_mode(user_info.epd_mode) ||
		    !ebc_valid_window(ebc, &user_info))
			return -EINVAL;
		buf = ebc_find_buf_by_phy_addr(info->ebc_buffer_phy +
					       (unsigned int)user_info.offset);
		if (!buf || buf->status != buf_user)
			return -EINVAL;
		buf->buf_mode = user_info.epd_mode;
		buf->win_x1 = user_info.win_x1;
		buf->win_y1 = user_info.win_y1;
		buf->win_x2 = user_info.win_x2;
		buf->win_y2 = user_info.win_y2;
		if (ebc_add_to_dsp_buf_list(buf) != BUF_SUCCESS)
			return -EBUSY;
		if ((buf->buf_mode == EPD_SUSPEND && !info->is_early_suspend) ||
		    buf->buf_mode == EPD_POWER_OFF)
			info->ebc_last_display = 1;
		info->ebc_dsp_buf_status = 1;
		wake_up_interruptible_sync(&ebc_thread_wq);
		if (info->ebc_last_display) {
			waited = wait_event_interruptible_timeout(
				ebc_poweroff_wq, info->ebc_last_display == 0 ||
				info->shutting_down, EBC_FRAME_TIMEOUT);
			if (waited < 0)
				return waited;
			if (!waited)
				return -ETIMEDOUT;
			if (info->shutting_down)
				return -ENODEV;
		}
		return 0;
	case EBC_GET_BUFFER_INFO:
		ebc_fill_panel_info(ebc, &user_info);
		return copy_to_user(argp, &user_info, sizeof(user_info)) ?
			-EFAULT : 0;
	case EBC_SET_FULL_MODE_NUM: {
		int full_mode_num;

		if (copy_from_user(&full_mode_num, argp,
				   sizeof(full_mode_num)))
			return -EFAULT;
		/* -1 disables periodic full refresh; zero is never meaningful. */
		if (full_mode_num < -1 || full_mode_num == 0)
			return -EINVAL;
		WRITE_ONCE(info->full_mode_num, full_mode_num);
		dev_info(info->dev, "full_mode_num = %d\n", full_mode_num);
		return 0;
	}
	case EBC_ENABLE_OVERLAY:
		info->overlay_enable = 1;
		return 0;
	case EBC_DISABLE_OVERLAY:
		info->overlay_enable = 0;
		info->overlay_start = 0;
		return 0;
	case EBC_GET_OSD_BUFFER:
		buf = ebc_osd_buf_get();
		if (!buf)
			return -ENOMEM;
		ebc_fill_buf_info(ebc, &user_info, buf);
		return copy_to_user(argp, &user_info, sizeof(user_info)) ?
			-EFAULT : 0;
	case EBC_SEND_OSD_BUFFER:
		if (copy_from_user(&user_info, argp, sizeof(user_info)))
			return -EFAULT;
		if (!ebc_valid_mode(user_info.epd_mode) ||
		    !ebc_valid_window(ebc, &user_info))
			return -EINVAL;
		buf = ebc_osd_buf_clone();
		if (!buf)
			return -ENOMEM;
		buf->buf_mode = user_info.epd_mode;
		buf->win_x1 = user_info.win_x1;
		buf->win_y1 = user_info.win_y1;
		buf->win_x2 = user_info.win_x2;
		buf->win_y2 = user_info.win_y2;
		if (ebc_add_to_dsp_buf_list(buf) != BUF_SUCCESS)
			return -EBUSY;
		info->ebc_dsp_buf_status = 1;
		wake_up_interruptible_sync(&ebc_thread_wq);
		return 0;
	case EBC_GET_AUTO_OLD_BUFFER:
		return ebc_copy_debug_buffer(ebc, argp, info->auto_image_old);
	case EBC_GET_AUTO_NEW_BUFFER:
		return ebc_copy_debug_buffer(ebc, argp, info->auto_image_new);
	case EBC_GET_AUTO_BG_BUFFER:
		return ebc_copy_debug_buffer(ebc, argp, info->auto_image_bg);
	case EBC_GET_AUTO_CUR_BUFFER:
		return ebc_copy_debug_buffer(ebc, argp,
			info->curr_dsp_buf ? info->curr_dsp_buf->virt_addr : NULL);
	default:
		return -ENOTTY;
	}
}

static ssize_t waveform_version_read(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	const char *version = epd_lut_get_wf_version();

	return sprintf(buf, "%s\n", version);
}

static ssize_t pmic_name_read(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	return sprintf(buf, "%s\n", global_ebc->pmic->pmic_name);
}

static ssize_t pmic_temp_read(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	int temperature;

	ebc_pmic_read_temp(global_ebc->pmic, &temperature);
	return sprintf(buf, "%d\n", temperature);
}

static ssize_t pmic_vcom_read(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	return sprintf(buf, "%d\n", ebc_pmic_get_vcom(global_ebc->pmic));
}

static ssize_t pmic_vcom_write(struct device *dev,
			       struct device_attribute *attr, const char *buf,
			       size_t count)
{
	unsigned int value;
	int ret;

	ret = kstrtouint(buf, 0, &value);
	if (ret) {
		dev_err(global_ebc->dev, "invalid value = %s\n", buf);
		return -1;
	}
	ret = ebc_pmic_set_vcom(global_ebc->pmic, value);
	if (ret) {
		dev_err(global_ebc->dev, "set vcom value failed\n");
		return -1;
	}
	return count;
}

static ssize_t ebc_version_read(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	return sprintf(buf, "%s\n", EBC_VERSION);
}

static ssize_t ebc_state_read(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	return sprintf(buf, "%d\n", global_ebc->info.wake_lock_is_set);
}

static ssize_t ebc_buf_state_read(struct device *dev,
				  struct device_attribute *attr, char *buf)
{
	return ebc_buf_state_show(buf);
}

static DEVICE_ATTR(waveform_version, 0444, waveform_version_read, NULL);
static DEVICE_ATTR(pmic_name, 0444, pmic_name_read, NULL);
static DEVICE_ATTR(pmic_temp, 0444, pmic_temp_read, NULL);
static DEVICE_ATTR(pmic_vcom, 0644, pmic_vcom_read, pmic_vcom_write);
static DEVICE_ATTR(ebc_version, 0444, ebc_version_read, NULL);
static DEVICE_ATTR(ebc_state, 0444, ebc_state_read, NULL);
static DEVICE_ATTR(ebc_buf_state, 0444, ebc_buf_state_read, NULL);

static struct device_attribute *ebc_attrs[] = {
	&dev_attr_waveform_version, &dev_attr_pmic_name, &dev_attr_pmic_temp,
	&dev_attr_pmic_vcom, &dev_attr_ebc_version, &dev_attr_ebc_state,
	&dev_attr_ebc_buf_state,
};

static const struct file_operations ebc_ops = {
	.owner = THIS_MODULE,
	.unlocked_ioctl = ebc_io_ctl,
#ifdef CONFIG_COMPAT
	.compat_ioctl = ebc_io_ctl,
#endif
	.mmap = ebc_mmap,
	.open = ebc_open,
};

static struct miscdevice ebc_misc = {
	.minor = EBC_MISC_MINOR,
	.name = "ebc",
	.fops = &ebc_ops,
};

static int ebc_read_panel(struct device *dev, struct ebc_panel *panel)
{
	static const char * const names[] = {
		"panel,width", "panel,height", "panel,vir_width",
		"panel,vir_height", "panel,sdck", "panel,lsl", "panel,lbl",
		"panel,ldl", "panel,lel", "panel,gdck-sta", "panel,lgonl",
		"panel,fsl", "panel,fbl", "panel,fdl", "panel,fel",
	};
	u32 *values[] = {
		&panel->width, &panel->height, &panel->vir_width,
		&panel->vir_height, &panel->sdck, &panel->lsl, &panel->lbl,
		&panel->ldl, &panel->lel, &panel->gdck_sta, &panel->lgonl,
		&panel->fsl, &panel->fbl, &panel->fdl, &panel->fel,
	};
	unsigned int i;
	int ret;

	for (i = 0; i < ARRAY_SIZE(names); i++) {
		ret = of_property_read_u32(dev->of_node, names[i], values[i]);
		if (ret)
			return -EINVAL;
	}
	of_property_read_u32(dev->of_node, "panel,panel_16bit",
			     &panel->panel_16bit);
	of_property_read_u32(dev->of_node, "panel,panel_color",
			     &panel->panel_color);
	of_property_read_u32(dev->of_node, "panel,mirror", &panel->mirror);
	of_property_read_u32(dev->of_node, "panel,width-mm", &panel->width_mm);
	of_property_read_u32(dev->of_node, "panel,height-mm", &panel->height_mm);
	return 0;
}

static int ebc_map_region(struct device *dev, const char *name,
			  struct resource *resource, void **mapping)
{
	struct device_node *node;
	int ret;

	node = of_parse_phandle(dev->of_node, name, 0);
	if (!node)
		return -ENODEV;
	ret = of_address_to_resource(node, 0, resource);
	of_node_put(node);
	if (ret)
		return ret;
	*mapping = devm_memremap(dev, resource->start, resource_size(resource),
				 MEMREMAP_WB);
	return *mapping ? 0 : -ENOMEM;
}

static void ebc_stop_threads(struct ebc *ebc)
{
	WRITE_ONCE(ebc->info.shutting_down, true);
	ebc->info.ebc_last_display = 0;
	ebc->info.ebc_irq_status = 1;
	ebc->info.ebc_dsp_buf_status = 1;
	wake_up_interruptible_sync(&ebc_poweroff_wq);
	wake_up_interruptible_sync(&ebc_wq);
	wake_up_interruptible_sync(&ebc_thread_wq);
	if (ebc->info.ebc_task) {
		wake_up_interruptible_sync(&ebc_thread_wq);
		kthread_stop(ebc->info.ebc_task);
		ebc->info.ebc_task = NULL;
	}
	if (ebc_auto_task) {
		up(&ebc_auto_thread_sem);
		wake_up_process(ebc_auto_task);
		kthread_stop(ebc_auto_task);
		ebc_auto_task = NULL;
	}
}

static int ebc_queue_boot_buffer(struct ebc *ebc, const void *image, int mode)
{
	struct ebc_buf_s *buf = ebc_empty_buf_get();

	if (!buf)
		return -ENOMEM;
	if (image)
		memcpy(buf->virt_addr, image, ebc->info.ebc_buf_real_size);
	else
		memset(buf->virt_addr, 0xff, ebc->info.ebc_buf_real_size);
	buf->buf_mode = mode;
	buf->win_x1 = 0;
	buf->win_y1 = 0;
	buf->win_x2 = ebc->panel.width;
	buf->win_y2 = ebc->panel.height;
	ebc_add_to_dsp_buf_list(buf);
	return 0;
}

static int ebc_copy_boot_logo(struct ebc *ebc, const char *option,
			      const char *name, char **copy)
{
	phys_addr_t address;
	phys_addr_t base = ebc->info.ebc_buffer_phy;
	phys_addr_t end;
	unsigned long long raw_address;
	char *parameter;

	parameter = strstr(saved_command_line, option);
	if (!parameter)
		return 0;
	if (sscanf(parameter + strlen(option), "%llx", &raw_address) != 1)
		return 0;
	address = (phys_addr_t)raw_address;
	if ((unsigned long long)address != raw_address ||
	    check_add_overflow(base, (phys_addr_t)ebc->info.ebc_buffer_size,
			       &end) ||
	    address < base || address > end ||
	    ebc->info.ebc_buf_real_size > end - address)
		return 0;

	dev_info(ebc->dev, "%s logo addr = %pa\n", name, &address);
	*copy = kmalloc(ebc->info.ebc_buf_real_size, GFP_KERNEL);
	if (!*copy) {
		dev_err(ebc->dev, "malloc %s buffer failed\n", name);
		return -ENOMEM;
	}
	memcpy(*copy, ebc->info.ebc_buffer_vir +
	       (address - ebc->info.ebc_buffer_phy),
	       ebc->info.ebc_buf_real_size);
	return 1;
}

static void ebc_logo_init(struct ebc *ebc)
{
	int have_ulogo;
	int have_klogo;

	have_ulogo = ebc_copy_boot_logo(ebc, "ulogo_addr=", "ulogo",
					&ulogo_buf);
	if (have_ulogo < 0)
		goto out;
	have_klogo = ebc_copy_boot_logo(ebc, "klogo_addr=", "klogo",
					&klogo_buf);
	if (have_klogo < 0)
		goto out;

	if (have_ulogo > 0) {
		ebc_queue_boot_buffer(ebc, ulogo_buf, EPD_PART_GC16);
	} else if (!have_ulogo) {
		dev_info(ebc->dev, "no uboot logo, panel init\n");
		ebc_pmic_verity_vcom(ebc->pmic);
		ebc_queue_boot_buffer(ebc, NULL, EPD_RESET);
	}
	if (have_klogo > 0)
		ebc_queue_boot_buffer(ebc, klogo_buf, EPD_PART_GC16);

	if (!ebc->info.ebc_dsp_buf_status) {
		ebc->info.ebc_dsp_buf_status = 1;
		wake_up_interruptible_sync(&ebc_thread_wq);
	}
out:
	kfree(ulogo_buf);
	kfree(klogo_buf);
	ulogo_buf = NULL;
	klogo_buf = NULL;
}

static int ebc_probe(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node;
	struct platform_device *tcon_dev;
	struct i2c_client *pmic_client;
	struct resource memory, waveform;
	struct sched_param param = { .sched_priority = 99 };
	struct ebc *ebc;
	void *waveform_mem;
	unsigned int pixels, i;
	resource_size_t memory_size;
	int ret;

	BUILD_BUG_ON(sizeof(struct ebc_buf_info) != 44);
	mutex_lock(&ebc_lifecycle_lock);
	if (global_ebc) {
		mutex_unlock(&ebc_lifecycle_lock);
		return -EBUSY;
	}
	ebc = devm_kzalloc(dev, sizeof(*ebc), GFP_KERNEL);
	if (!ebc) {
		mutex_unlock(&ebc_lifecycle_lock);
		return -ENOMEM;
	}
	ebc->dev = dev;
	ebc->info.dev = dev;
	ebc->panel.dev = dev;
	WRITE_ONCE(global_ebc, ebc);

	node = of_parse_phandle(dev->of_node, "ebc_tcon", 0);
	if (!node) {
		ret = -ENODEV;
		goto err_global;
	}
	tcon_dev = of_find_device_by_node(node);
	of_node_put(node);
	if (!tcon_dev || !platform_get_drvdata(tcon_dev)) {
		ret = -EPROBE_DEFER;
		goto err_global;
	}
	ebc->tcon = platform_get_drvdata(tcon_dev);
	ebc->tcon->dsp_end_callback = frame_done_callback;

	node = of_parse_phandle(dev->of_node, "pmic", 0);
	if (!node) {
		ret = -ENODEV;
		goto err_global;
	}
	pmic_client = of_find_i2c_device_by_node(node);
	of_node_put(node);
	if (!pmic_client || !i2c_get_clientdata(pmic_client)) {
		ret = -EPROBE_DEFER;
		goto err_global;
	}
	ebc->pmic = i2c_get_clientdata(pmic_client);
	ebc->panel.tcon = ebc->tcon;
	ebc->panel.pmic = ebc->pmic;

	ret = ebc_read_panel(dev, &ebc->panel);
	if (ret)
		goto err_global;
	ebc->info.width = ebc->panel.vir_width;
	ebc->info.height = ebc->panel.vir_height;
	ebc->info.buf_align16 = !(ebc->panel.vir_width & 0xf);
	if (!ebc->panel.vir_width || !ebc->panel.vir_height ||
	    ebc->panel.vir_width & 7 ||
	    check_mul_overflow(ebc->panel.vir_width,
			       ebc->panel.vir_height, &pixels)) {
		ret = -EINVAL;
		goto err_global;
	}
	ebc->info.ebc_buf_real_size = pixels / 2;
	ebc->info.direct_buf_real_size = pixels / 4;

	ret = ebc_map_region(dev, "memory-region", &memory,
			     (void **)&ebc->info.ebc_buffer_vir);
	if (ret)
		goto err_global;
	ebc->info.ebc_buffer_phy = memory.start;
	memory_size = resource_size(&memory);
	if (memory_size > INT_MAX) {
		ret = -E2BIG;
		goto err_global;
	}
	ebc->info.ebc_buffer_size = memory_size;
	if (!ebc_phys_fits_u32(dev, memory.start, "EBC buffer") ||
	    !ebc_phys_fits_u32(dev, memory.end, "EBC buffer end")) {
		ret = -ERANGE;
		goto err_global;
	}
	if (ebc->info.ebc_buffer_size < EBC_WF_TABLE_OFFSET + pixels) {
		ret = -EINVAL;
		goto err_global;
	}
	ret = ebc_buf_init(ebc->info.ebc_buffer_phy, ebc->info.ebc_buffer_vir,
			   ebc->info.ebc_buffer_size, EBC_FB_SIZE, EBC_BUFFER_NUM);
	if (ret)
		goto err_global;

	ebc->panel.fb[0].virt_addr = ebc->info.ebc_buffer_vir + EBC_DIRECT0_OFFSET;
	ebc->panel.fb[0].phy_addr = ebc->info.ebc_buffer_phy + EBC_DIRECT0_OFFSET;
	ebc->panel.fb[0].size = DIRECT_FB_SIZE;
	ebc->panel.fb[1].virt_addr = ebc->info.ebc_buffer_vir + EBC_DIRECT1_OFFSET;
	ebc->panel.fb[1].phy_addr = ebc->info.ebc_buffer_phy + EBC_DIRECT1_OFFSET;
	ebc->panel.fb[1].size = DIRECT_FB_SIZE;
	ebc->info.direct_buffer[0] = ebc->panel.fb[0].virt_addr;
	ebc->info.direct_buffer[1] = ebc->panel.fb[1].virt_addr;
	ebc->info.lut_data.wf_table =
		(u8 *)ebc->info.ebc_buffer_vir + EBC_WF_TABLE_OFFSET;

	ebc->info.auto_image_new = devm_kzalloc(dev, ebc->info.ebc_buf_real_size,
						 GFP_KERNEL);
	ebc->info.auto_image_old = devm_kzalloc(dev, ebc->info.ebc_buf_real_size,
						 GFP_KERNEL);
	ebc->info.auto_image_bg = devm_kmalloc(dev, ebc->info.ebc_buf_real_size,
					       GFP_KERNEL);
	ebc->info.auto_frame_count = devm_kzalloc(dev, pixels, GFP_KERNEL);
	if (!ebc->info.auto_image_new || !ebc->info.auto_image_old ||
	    !ebc->info.auto_image_bg || !ebc->info.auto_frame_count) {
		ret = -ENOMEM;
		goto err_buf;
	}
	memset(ebc->info.auto_image_bg, 0xff, ebc->info.ebc_buf_real_size);

	ret = ebc_map_region(dev, "waveform-region", &waveform, &waveform_mem);
	if (ret)
		goto err_buf;
	ebc->info.lut_ddr_vir = waveform_mem;
	ret = epd_lut_from_mem_init(waveform_mem);
	if (ret < 0) {
		ret = epd_lut_from_file_init(dev, waveform_mem,
					     resource_size(&waveform));
		if (ret < 0) {
			ret = -1;
			goto err_buf;
		}
	}

	INIT_WORK(&ebc->info.auto_buffer_work, new_buffer_refresh);
	ebc_auto_task = kthread_create(ebc_auto_tast_function, &ebc->info,
				       "ebc_task");
	if (IS_ERR(ebc_auto_task)) {
		ret = -1;
		ebc_auto_task = NULL;
		goto err_buf;
	}
	sched_setscheduler_nocheck(ebc_auto_task, SCHED_FIFO, &param);
	ebc->info.ebc_task = kthread_create(ebc_thread, &ebc->info,
					     "ebc_thread");
	if (IS_ERR(ebc->info.ebc_task)) {
		ret = -1;
		ebc->info.ebc_task = NULL;
		goto err_threads;
	}
	wake_up_process(ebc->info.ebc_task);
	sched_setscheduler_nocheck(ebc->info.ebc_task, SCHED_FIFO, &param);

	ebc->info.full_mode_num = -1;
	wake_lock_init(&ebc->info.suspend_lock, WAKE_LOCK_SUSPEND, "ebc");
	timer_setup(&ebc->info.vdd_timer, ebc_vdd_power_timeout, 0);
	timer_setup(&ebc->info.frame_timer, ebc_frame_timeout, 0);
	mod_timer(&ebc->info.vdd_timer, jiffies + EBC_TIMER_INIT);
	mod_timer(&ebc->info.frame_timer, jiffies + EBC_TIMER_INIT);
	ebc_logo_init(ebc);
	platform_set_drvdata(pdev, ebc);

	ret = misc_register(&ebc_misc);
	if (ret)
		goto err_runtime;
	ebc_misc_registered = true;
	for (i = 0; i < ARRAY_SIZE(ebc_attrs); i++) {
		ret = device_create_file(dev, ebc_attrs[i]);
		if (ret)
			goto err_attrs;
	}
	dev_info(dev, "rockchip ebc driver %s probe success\n", EBC_VERSION);
	mutex_unlock(&ebc_lifecycle_lock);
	return 0;
err_attrs:
	while (i--)
		device_remove_file(dev, ebc_attrs[i]);
	misc_deregister(&ebc_misc);
	ebc_misc_registered = false;
err_runtime:
	del_timer_sync(&ebc->info.frame_timer);
	del_timer_sync(&ebc->info.vdd_timer);
	wake_lock_destroy(&ebc->info.suspend_lock);
err_threads:
	ebc_stop_threads(ebc);
	cancel_work_sync(&ebc->info.auto_buffer_work);
err_buf:
	ebc_buf_uninit();
err_global:
	WRITE_ONCE(global_ebc, NULL);
	mutex_unlock(&ebc_lifecycle_lock);
	return ret;
}

static int ebc_remove(struct platform_device *pdev)
{
	struct ebc *ebc = platform_get_drvdata(pdev);
	unsigned int i;

	mutex_lock(&ebc_lifecycle_lock);
	WRITE_ONCE(ebc->info.shutting_down, true);
	if (ebc->tcon)
		ebc->tcon->dsp_end_callback = NULL;
	if (ebc_misc_registered) {
		misc_deregister(&ebc_misc);
		ebc_misc_registered = false;
	}
	for (i = 0; i < ARRAY_SIZE(ebc_attrs); i++)
		device_remove_file(&pdev->dev, ebc_attrs[i]);
	ebc->info.ebc_last_display = 0;
	wake_up_interruptible_sync(&ebc_poweroff_wq);
	wake_up_interruptible_sync(&ebc_wq);
	wake_up_interruptible_sync(&ebc_thread_wq);
	del_timer_sync(&ebc->info.frame_timer);
	del_timer_sync(&ebc->info.vdd_timer);
	ebc_stop_threads(ebc);
	cancel_work_sync(&ebc->info.auto_buffer_work);
	if (ebc->info.ebc_power_status)
		ebc_power_set(ebc, false);
	wake_lock_destroy(&ebc->info.suspend_lock);
	ebc_buf_uninit();
	WRITE_ONCE(global_ebc, NULL);
	platform_set_drvdata(pdev, NULL);
	mutex_unlock(&ebc_lifecycle_lock);
	return 0;
}

static int ebc_suspend(struct device *dev)
{
	struct ebc *ebc = dev_get_drvdata(dev);

	if (ebc->info.ebc_power_status) {
		dev_info(dev, "%s: device is busy now...\n", __func__);
		ebc_power_set(ebc, false);
	}
	ebc->info.is_deep_sleep = 1;
	ebc_pmic_suspend(ebc->pmic);
	dev_info(dev, "device suspend\n");
	return 0;
}

static int ebc_resume(struct device *dev)
{
	struct ebc *ebc = dev_get_drvdata(dev);

	ebc_pmic_resume(ebc->pmic);
	ebc->info.is_deep_sleep = 0;
	dev_info(dev, "device resume\n");
	return 0;
}

static const struct dev_pm_ops ebc_pm = {
	.suspend = ebc_suspend,
	.resume = ebc_resume,
};

static const struct of_device_id ebc_match[] = {
	{ .compatible = "rockchip,ebc-dev" },
	{ }
};
MODULE_DEVICE_TABLE(of, ebc_match);

static struct platform_driver ebc_driver = {
	.probe = ebc_probe,
	.remove = ebc_remove,
	.driver = {
		.name = "ebc-dev",
		.of_match_table = ebc_match,
		.pm = &ebc_pm,
	},
};

static int __init ebc_init(void)
{
	return platform_driver_register(&ebc_driver);
}
device_initcall_sync(ebc_init);

static void __exit ebc_exit(void)
{
	platform_driver_unregister(&ebc_driver);
}
module_exit(ebc_exit);

MODULE_DESCRIPTION("Rockchip RK3566 EBC v2.08 driver");
MODULE_LICENSE("GPL");

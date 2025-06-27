#ifndef __EBC_UAPI_H__
#define __EBC_UAPI_H__

#define EBC_DRV_VERSION         "0.19.2"

/**
 * The display mode is composed of three parts:
 * 	 waveform type<<16 | refresh mode<<8 | update mode.
 */
#define EBC_WF_TYPE(mode)        ((mode)>>16)
#define EBC_REFRESH_MODE(mode)   (((mode)>>8)&0xFF)
#define EBC_UPDATE_MODE(mode)    ((mode)&0xFF)
#define EBC_DISP_MODE(W, R, U)   (WF_TYPE_##W << 16 | EBC_REFRESH_##R << 8 | EBC_UPDATE_##U)

#define EBC_MODE_LIST \
    EBC_X(RESET, RESET, NORM, FULL), \
	EBC_X(HANDWRITE, GRAY2, MONO, FULL), \
	EBC_X(NORM_FULL, GC16, NORM, FULL), \
	EBC_X(NORM_PART, GC16, NORM, PART), \
	EBC_X(TRANS_FULL, GC16, TRANS, FULL), \
	EBC_X(TRANS_PART, GC16, TRANS, PART), \
	EBC_X(GL16_FULL, GL16, NORM, FULL), \
	EBC_X(GL16_PART, GL16, NORM, PART), \
	EBC_X(GCC16_FULL, GCC16, NORM, FULL), \
	EBC_X(GCC16_PART, GCC16, NORM, PART), \
	EBC_X(A2, A2, NORM, FULL), \
	EBC_X(DU, GRAY2, NORM, FULL), \
	EBC_X(GC16_MONO_PART, GC16, MONO, PART), \

enum wf_lut_type {
	WF_TYPE_RESET = 0,
	WF_TYPE_GRAY2,
	WF_TYPE_GRAY4,
	WF_TYPE_GC16,
	WF_TYPE_GL16,
	WF_TYPE_GLR16,
	WF_TYPE_GLD16,
	WF_TYPE_A2,
	WF_TYPE_GCC16,
	PVI_WF_MAX,

	WF_TYPE_AUTO,
	WF_TYPE_MAX,
	WF_TYPE_GRAY16,
};

enum ebc_refresh_mode_t {
	EBC_REFRESH_NORM   = 1, // Normal
	EBC_REFRESH_MONO   = 2, // Monotonic
	EBC_REFRESH_TRANS  = 3, // Transition
};

enum ebc_update_mode_t {
	EBC_UPDATE_PART   = 0,
	EBC_UPDATE_FULL   = 1,
};

enum ebc_disp_mode_t {
	EBC_DISP_AUTO            = 0,
	#undef EBC_X
	#define EBC_X(name, wf, refresh, update) EBC_DISP_##name = EBC_DISP_MODE(wf, refresh, update)
	EBC_MODE_LIST
};

// The refresh mode corresponding to the Android platform
#define EPD_AUTO            EBC_DISP_GC16_MONO_PART
#define EPD_OVERLAY         EBC_DISP_HANDWRITE
#define EPD_FULL_GC16       EBC_DISP_NORM_FULL
#define EPD_FULL_GL16       EBC_DISP_GL16_FULL
#define EPD_FULL_GLR16      // unsupport
#define EPD_FULL_GLD16      // unsupport
#define EPD_FULL_GCC16      EBC_DISP_GCC16_FULL
#define EPD_PART_GC16       EBC_DISP_NORM_PART
#define EPD_PART_GL16       EBC_DISP_GL16_PART
#define EPD_PART_GLR16      // unsupport
#define EPD_PART_GLD16      // unsupport
#define EPD_PART_GCC16      EBC_DISP_GCC16_PART
#define EPD_A2              EBC_DISP_A2
#define EPD_A2_FAST         // unsupport
#define EPD_DU              EBC_DISP_DU
#define EPD_A2_ENTER        // unsupport
#define EPD_RESET           EBC_DISP_RESET
#define EPD_AUTO_DU         // unsupport

enum EBC_TRANS_TYPE {
	// wipe
	TRANS_WIPE_LEFT = 0,
	TRANS_WIPE_UP,
	TRANS_WIPE_RIGHT,
	TRANS_WIPE_DOWN,

	// iris
	TRANS_IRIS_BOX,

	TRANS_MAX,
};

struct ebc_area {
	int x; // need 8 align
	int y;
	int w; // need 8 align
	int h;
} __attribute__ ((packed));

struct ebc_user_buf_t {
	int index;
	int fd;
	int size;
	int mode;
	unsigned long long img_seq;
	int trans_type;
	int trans_dur_ms;
	struct ebc_area dirty_area;
} __attribute__ ((packed));

struct ebc_user_panel_t {
	int width;
	int height;
	int width_mm;
	int height_mm;
	int cfa; // reference to rkcfa_api.h rkcfa_platform
} __attribute__ ((packed));

struct ebc_user_sid_t {
	int fd;
	unsigned long long sid;
} __attribute__ ((packed));

#define EBC_IOC_MAGIC           'e'
#define EBC_IO(nr)              _IO(EBC_IOC_MAGIC, nr)
#define EBC_IOW(nr, type)       _IOW(EBC_IOC_MAGIC, nr, type)
#define EBC_IOR(nr, type)       _IOR(EBC_IOC_MAGIC, nr, type)
#define EBC_IOWR(nr, type)      _IOWR(EBC_IOC_MAGIC, nr, type)

// query the panel information
#define EBC_IOC_QUERY_PANEL         EBC_IOR(0x0, struct ebc_user_panel_t)
// dequeue an idle buffer for draw
#define EBC_IOC_DEQUEUE_BUF         EBC_IOR(0x1, struct ebc_user_buf_t)
// enquene this buffer to display queue and return the frame no
#define EBC_IOC_ENQUEUE_BUF         EBC_IOWR(0x2, struct ebc_user_buf_t)
// drop this buffer, don't display
#define EBC_IOC_DROP_BUF            EBC_IOW(0x3, struct ebc_user_buf_t)
// query the final will be display buffer
#define EBC_IOC_QUERY_FINAL_BUF     EBC_IOR(0x4, struct ebc_user_buf_t)
// drain display queue
#define EBC_IOC_DRAIN_BUFS          EBC_IO(0x5)
// query the last displayed buf
#define EBC_IOC_QUERY_LAST_BUF      EBC_IOR(0x6, struct ebc_user_buf_t)
// get dma-buf's share id by fd
#define EBC_IOC_DMABUF_GET_SID      EBC_IOWR(0x7, struct ebc_user_sid_t)
// put dma-buf's share id
#define EBC_IOC_DMABUF_PUT_SID      EBC_IOW(0x8, struct ebc_user_sid_t)
// translate dma-buf's share id to fd, it can be release by close fd
#define EBC_IOC_DMABUF_SID_TO_FD    EBC_IOWR(0x9, struct ebc_user_sid_t)
// query the driver is hungry?
#define EBC_IOC_QUERY_HUNGRY        EBC_IOR(0xA, int)
// init/deinit osd
#define EBC_IOC_INIT_OSD            EBC_IO(0xB)
#define EBC_IOC_DEINIT_OSD          EBC_IO(0xC)

#endif

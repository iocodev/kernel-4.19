# SPDX-License-Identifier: GPL-2.0
#
# Makefile for the touchscreen drivers.
#

# Each configuration option enables a list of files.
#//GCOV_PROFILE := y

##########################
# driver type
# m: module type driver
# y: built-in type driver
##########################
DRIVER_TYPE ?= $(CONFIG_TOUCHSCREEN_PARADE)

#ifeq ($(DRIVER_TYPE),y)
#  PTTSCFLAGS += -DENABLE_INSMOD_NO_FW_LOAD
#  PTTSCFLAGS += -DUSE_LATE_INITCALL_SYNC
#endif

ifeq ($(DRIVER_TYPE),m)
    PTTSCFLAGS += -DENABLE_MODULE_BUILD
endif

ifeq ($(CONFIG_TOUCHSCREEN_PARADE_DEBUG),y)
    PTTSCFLAGS += -DDEBUG
endif

ifeq ($(CONFIG_TOUCHSCREEN_PARADE_VDEBUG),y)
    PTTSCFLAGS += -DVERBOSE_DEBUG
endif

EXTRA_CFLAGS += $(PTTSCFLAGS)
EXTRA_CFLAGS += -DSRCBASE=\"$(src)\"
EXTRA_CFLAGS += -I$(src)/include/ -I$(src)/
KBUILD_CFLAGS += -I$(LINUXDIR)/include -I$(shell pwd)

PTOFILES := pt_core.o pt_mt_common.o pt_platform.o

ifneq ($(CONFIG_TOUCHSCREEN_PARADE_MT_A),)
  PTOFILES += pt_mta.o
endif

ifneq ($(CONFIG_TOUCHSCREEN_PARADE_MT_B),)
  PTOFILES += pt_mtb.o
endif

ifneq ($(CONFIG_TOUCHSCREEN_PARADE_BUTTON),)
  PTOFILES += pt_btn.o
endif

ifneq ($(CONFIG_TOUCHSCREEN_PARADE_PROXIMITY),)
  PTOFILES += pt_proximity.o
endif
ifneq ($(CONFIG_TOUCHSCREEN_PARADE_DEVICETREE_SUPPORT),)
  PTOFILES += pt_devtree.o
endif
ifneq ($(CONFIG_TOUCHSCREEN_PARADE_I2C),)
  PTOFILES += pt_i2c.o
endif
ifneq ($(CONFIG_TOUCHSCREEN_PARADE_SPI),)
  PTOFILES += pt_spi.o
endif
ifneq ($(CONFIG_TOUCHSCREEN_PARADE_DEBUG_MDL),)
  PTOFILES += pt_debug.o
endif
ifneq ($(CONFIG_TOUCHSCREEN_PARADE_LOADER),)
  PTOFILES += pt_loader.o
endif
ifneq ($(CONFIG_TOUCHSCREEN_PARADE_DEVICE_ACCESS),)
  PTOFILES += pt_device_access.o
endif



ptts-objs := $(PTOFILES)
obj-$(DRIVER_TYPE)   += ptts.o

all:
	@echo "$(MAKE) --no-print-directory -C $(KDIR) SUBDIRS=$(CURDIR) modules"
	@$(MAKE) --no-print-directory -C $(KDIR) SUBDIRS=$(CURDIR) modules

clean:
	rm -rf *.o *.ko *.mod.c *~ .*.cmd *.o.cmd .*.o.cmd \
	Module.symvers modules.order .tmp_versions modules.builtin

install:
	@$(MAKE) --no-print-directory -C $(KDIR) \
		SUBDIRS=$(CURDIR) modules_install


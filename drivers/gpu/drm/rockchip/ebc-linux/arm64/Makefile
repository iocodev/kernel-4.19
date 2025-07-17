# SPDX-License-Identifier: GPL-2.0

ccflags-y += -I$(src)
ebc-y	:= ebc_drv.o ebc_mm.o ebc_logo.o ebc_session.o ebc_public.o

obj-$(CONFIG_ROCKCHIP_EBC_LINUX)  += pmic/
obj-$(CONFIG_ROCKCHIP_EBC_LINUX)  += tcon/
obj-$(CONFIG_ROCKCHIP_EBC_LINUX)  += wflut/
obj-$(CONFIG_ROCKCHIP_EBC_LINUX)  += wffpu/
obj-$(CONFIG_ROCKCHIP_EBC_LINUX)  += ebc.o
obj-$(CONFIG_EBC_USE_DRM)         += ebc_drm.o

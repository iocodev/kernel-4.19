# SPDX-License-Identifier: GPL-2.0-only

obj-$(CONFIG_ROCKCHIP_EBC_DEV)   += rkebc.o ebc_public.o
obj-$(CONFIG_ROCKCHIP_EBC_DEV)   += epdlut/
obj-$(CONFIG_ROCKCHIP_EBC_DEV)   += bufmanage/
obj-$(CONFIG_ROCKCHIP_EBC_DEV)   += pmic/
obj-$(CONFIG_ROCKCHIP_EBC_DEV)   += tcon/

# The frozen v2.08 assembly remains available for explicit oracle builds only:
# make EBC_V2_08_ORACLE=1 ...
ifeq ($(EBC_V2_08_ORACLE),1)
rkebc-$(CONFIG_ARM64) += ebc_dev_v8.o
else
rkebc-$(CONFIG_ARM64) += ebc_dev.o
endif

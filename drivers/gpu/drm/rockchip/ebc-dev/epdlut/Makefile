# SPDX-License-Identifier: GPL-2.0-only

obj-$(CONFIG_ROCKCHIP_EBC_DEV) += epd_lut.o waveform.o

# The frozen v2.08 assembly remains available for explicit oracle builds only:
# make EBC_V2_08_ORACLE=1 ...
ifeq ($(EBC_V2_08_ORACLE),1)
waveform-$(CONFIG_ARM64) += pvi_waveform_v8.o rkf_waveform_v8.o
else
waveform-$(CONFIG_ARM64) += pvi_waveform.o rkf_waveform.o
endif

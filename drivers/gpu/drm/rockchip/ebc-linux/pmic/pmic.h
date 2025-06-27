// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020 Rockchip Electronics Co. Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

#ifndef __PMIC_H__
#define __PMIC_H__

#include <linux/regulator/consumer.h>
#include <linux/thermal.h>

#define VCOM_MIN_MV		0
#define VCOM_MAX_MV		5110

struct ebc_pmic {
	struct device *dev;
	char pmic_name[16];
	void *drvpar;
	void (*pmic_power_req)(struct ebc_pmic *pmic, bool up);
	void (*pmic_pm_suspend)(struct ebc_pmic *pmic);
	void (*pmic_pm_resume)(struct ebc_pmic *pmic);
	int (*pmic_read_temperature)(struct ebc_pmic *pmic, int *t);
	int (*pmic_get_vcom)(struct ebc_pmic *pmic);
	int (*pmic_set_vcom)(struct ebc_pmic *pmic, int value);
};

struct pmic_dev_t {
	struct ebc_pmic *pmic;
	struct regulator *vcom;
	struct thermal_zone_device *tz;
};

int ebc_pmic_set_vcom(struct ebc_pmic *pmic, int value);
void ebc_pmic_verity_vcom(struct ebc_pmic *pmic);
int ebc_regulator_set_vcom(struct regulator *r, int value);
void ebc_regulator_verity_vcom(struct regulator *r);

static inline int pmic_power_on(struct pmic_dev_t *pmic)
{
	if (pmic->pmic) {
		pmic->pmic->pmic_power_req(pmic->pmic, 1);
		return 0;
	} else
		return regulator_enable(pmic->vcom);
}

static inline int pmic_power_off(struct pmic_dev_t *pmic)
{
	if (pmic->pmic) {
		pmic->pmic->pmic_power_req(pmic->pmic, 0);
		return 0;
	} else
		return regulator_disable(pmic->vcom);
}

static inline int pmic_suspend(struct pmic_dev_t *pmic)
{
	if (pmic->pmic) {
		pmic->pmic->pmic_pm_suspend(pmic->pmic);
	}
	return 0;
}

static inline int pmic_resume(struct pmic_dev_t *pmic)
{
	if (pmic->pmic) {
		pmic->pmic->pmic_pm_resume(pmic->pmic);
	}

	return 0;
}

static inline int pmic_read_temp(struct pmic_dev_t *pmic, int *t)
{
	int ret = 0;
	if (pmic->pmic)
		ret = pmic->pmic->pmic_read_temperature(pmic->pmic, t);
	else {
		ret = thermal_zone_get_temp(pmic->tz, t);
		*t /= 1000;
	}

	return ret;
}

static inline int pmic_get_vcom(struct pmic_dev_t *pmic)
{
	if (pmic->pmic)
		return pmic->pmic->pmic_get_vcom(pmic->pmic);
	else
		return regulator_get_voltage(pmic->vcom) / 1000;
}

static inline int pmic_set_vcom(struct pmic_dev_t *pmic, int value)
{
	if (pmic->pmic)
		return ebc_pmic_set_vcom(pmic->pmic, value);
	else
		return ebc_regulator_set_vcom(pmic->vcom, value);
}

static inline void pmic_verity_vcom(struct pmic_dev_t *pmic)
{
	if (pmic->pmic)
		return ebc_pmic_verity_vcom(pmic->pmic);
	else
		return ebc_regulator_verity_vcom(pmic->vcom);
}

int pmic_setup_device(struct device *dev, struct pmic_dev_t *pmic, u32 vcom);

#endif

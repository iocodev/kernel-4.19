// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020 Rockchip Electronics Co. Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

#include <linux/device.h>
#include <linux/module.h>
#include <linux/string.h>
#include <linux/soc/rockchip/rk_vendor_storage.h>
#include <linux/i2c.h>

#include "pmic.h"

#define EINK_VCOM_MAX 64
static int vcom = 0;
extern struct ebc_dev_t *g_ebc_dev;

int ebc_pmic_set_vcom_impl(struct ebc_pmic *pmic, int value)
{
	int ret;
	char data[EINK_VCOM_MAX] = { 0 };

	/* check vcom value */
	if (value <= VCOM_MIN_MV || value > VCOM_MAX_MV) {
		dev_err(pmic->dev, "vcom value should be %d~%d\n", VCOM_MIN_MV, VCOM_MAX_MV);
		return -1;
	}
	dev_info(pmic->dev, "set chip vcom to: %dmV\n", value);

	/* set pmic vcom */
	pmic->pmic_set_vcom(pmic, value);

	/* store vendor storage */
	snprintf(data, sizeof(data), "%d", value);
	dev_info(pmic->dev, "store vcom %d to vendor storage\n", value);

	ret = rk_vendor_write(EINK_VCOM_ID, (void *)data, EINK_VCOM_MAX);
	if (ret < 0) {
		dev_err(pmic->dev, "%s failed to write vendor storage\n", __func__);
		return ret;
	}

	return 0;
}

void ebc_pmic_verity_vcom_impl(struct ebc_pmic *pmic, int dts_vcom)
{
	int ret;
	int value_chip;
	int value_vendor;

	// 优先使用驱动参数vcom；其次使用dts配置的vcom_mv
	if (vcom > 0)
		value_vendor = vcom;
	else
		value_vendor = dts_vcom;

	if (value_vendor <= VCOM_MIN_MV || value_vendor > VCOM_MAX_MV) {
		dev_err(pmic->dev, "invaild vcom value %d from vendor storage\n", value_vendor);
		return;
	}
	value_chip = pmic->pmic_get_vcom(pmic);
	if (value_chip != value_vendor) {
		dev_info(pmic->dev, "chip_vcom %d != vendor_vcom %d, set vcom from vendor\n", value_chip, value_vendor);
		ret = pmic->pmic_set_vcom(pmic, value_vendor);
		if (ret) {
			dev_err(pmic->dev, "set vcom value failed\n");
		}
	}

	return;
}

int ebc_regulator_set_vcom_impl(struct regulator *r, int value)
{
	int ret;
	char data[EINK_VCOM_MAX] = { 0 };

	/* check vcom value */
	if (value <= VCOM_MIN_MV || value > VCOM_MAX_MV) {
		pr_err("vcom value should be %d~%d\n", VCOM_MIN_MV, VCOM_MAX_MV);
		return -1;
	}

	pr_info("set chip vcom to: %dmV\n", value);

	ret = regulator_set_voltage(r, value * 1000, value * 1000 + 1);
	if (ret) {
		pr_err("Failed to set vcom:%d\n", ret);
		return ret;
	}

	/* store vendor storage */
	snprintf(data, sizeof(data), "%d", value);
	pr_info("store vcom %d to vendor storage\n", value);

	ret = rk_vendor_write(EINK_VCOM_ID, (void *)data, EINK_VCOM_MAX);
	if (ret < 0) {
		pr_err("%s failed to write vendor storage\n", __func__);
		return ret;
	}

	return 0;
}

void ebc_regulator_verity_vcom_impl(struct regulator *r, int dts_vcom)
{
	int ret;
	int value_chip;
	int value_vendor;

	// 优先使用驱动参数vcom；其次使用dts配置的vcom_mv
	if (vcom > 0)
		value_vendor = vcom;
	else
		value_vendor = dts_vcom;

	if (value_vendor <= VCOM_MIN_MV || value_vendor > VCOM_MAX_MV) {
		pr_err("invaild vcom value %d from vendor storage\n", value_vendor);
		return;
	}

	value_chip = regulator_get_voltage(r) / 1000;
	if (value_chip != value_vendor) {
		pr_info("chip_vcom %d != vendor_vcom %d, set vcom from vendor\n", value_chip,
			value_vendor);
		ret = regulator_set_voltage(r, value_vendor * 1000, value_vendor * 1000 + 1);
		if (ret)
			pr_err("set vcom value failed\n");
	}
}

module_param(vcom, int, 0644);

int pmic_setup_device(struct device *dev, struct pmic_dev_t *pmic)
{
	int ret;
	struct device_node *pmic_node;
	struct i2c_client *pmic_client;
	const char *tz_name;

	dev_info(dev, "In %s\n", __func__);

	pmic_node = of_parse_phandle(dev->of_node, "pmic", 0);
	if (!pmic_node) {
		dev_err(dev, "not find pmic node\n");
		return -ENODEV;
	}

	pmic_client = of_find_i2c_device_by_node(pmic_node);
	of_node_put(pmic_node);
	if (!pmic_client) {
		dev_err(dev, "not find pmic i2c client\n");
		return -ENODEV;
	}

	pmic->pmic = i2c_get_clientdata(pmic_client);
	if (pmic->pmic == NULL) {
		dev_warn(dev, "Not found pmic legacy driver, try new driver\n");

		/* try to use regulator framework */
		pmic->vcom = devm_regulator_get(&pmic_client->dev, "vcom");
		if (IS_ERR(pmic->vcom)) {
			dev_err(dev, "Failed to get vcom regulator\n");
			return -ENODEV;
		}

		ret = device_property_read_string(&pmic_client->dev, "thermal-zone", &tz_name);
		if (ret) {
			dev_err(dev, "Failed to get thermal zone name\n");
			return -ENODEV;
		} else {
			pmic->tz = thermal_zone_get_zone_by_name(tz_name);
			if (IS_ERR(pmic->tz)) {
				dev_err(dev, "Failed to get thermal device %s\n", tz_name);
				return -ENODEV;
			}
		}
	}

	return 0;
}
// SPDX-License-Identifier: GPL-2.0
//
// csk8110.c  --  csk8110 codec for rockchip
//
// Copyright (C) 2026 Fuzhou Rockchip Electronics Co., Ltd

#include <linux/clk.h>
#include <linux/delay.h>
#include <linux/gpio/consumer.h>
#include <linux/input.h>
#include <linux/module.h>
#include <linux/of.h>
#include <linux/platform_device.h>
#include <sound/pcm.h>
#include <sound/soc.h>

#define CSK8110_MCLK_RATE	(24000000)

struct csk8110_priv {
	bool mclk_enabled;
	struct clk *mclk;
	struct gpio_desc *reset_gpio;
	struct gpio_desc *power_gpio;
	struct gpio_desc *wake_gpio;
	struct snd_soc_component *component;
	struct input_dev *input;
};

static struct snd_soc_dai_driver csk8110_dai = {
	.name = "csk8110",
	.playback = {
		.stream_name = "CSK8110 Playback",
		.channels_min = 1,
		.channels_max = 8,
		.rates = SNDRV_PCM_RATE_8000_384000,
		.formats = (SNDRV_PCM_FMTBIT_S8 |
			    SNDRV_PCM_FMTBIT_S16_LE |
			    SNDRV_PCM_FMTBIT_S20_3LE |
			    SNDRV_PCM_FMTBIT_S24_LE |
			    SNDRV_PCM_FMTBIT_S32_LE),
	},
	.capture = {
		.stream_name = "CSK8110 Capture",
		.channels_min = 1,
		.channels_max = 8,
		.rates = SNDRV_PCM_RATE_8000_384000,
		.formats = (SNDRV_PCM_FMTBIT_S8 |
			    SNDRV_PCM_FMTBIT_S16_LE |
			    SNDRV_PCM_FMTBIT_S20_3LE |
			    SNDRV_PCM_FMTBIT_S24_LE |
			    SNDRV_PCM_FMTBIT_S32_LE),
	},
};

static int csk8110_component_probe(struct snd_soc_component *component)
{
	struct csk8110_priv *csk8110 = snd_soc_component_get_drvdata(component);
	int ret;

	if (!IS_ERR(csk8110->mclk)) {
		ret = clk_set_rate(csk8110->mclk, CSK8110_MCLK_RATE);
		if (ret < 0)
			dev_err(component->dev, "Failed to set mclk rate (%d Hz)\n", CSK8110_MCLK_RATE);
		ret = clk_prepare_enable(csk8110->mclk);
		if (ret < 0)
			dev_err(component->dev, "Failed to enable mclk\n");
		else
			csk8110->mclk_enabled = true;
	}

	if (!IS_ERR_OR_NULL(csk8110->power_gpio))
		gpiod_set_value(csk8110->power_gpio, 1);
	msleep(200);
	if (!IS_ERR_OR_NULL(csk8110->reset_gpio)) {
		gpiod_set_value(csk8110->reset_gpio, 1);
		msleep(10);
		gpiod_set_value(csk8110->reset_gpio, 0);
	}

	return 0;
}

/* Sysfs interface for manual reset control */
static ssize_t csk8110_reset_store(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf, size_t count)
{
	struct csk8110_priv *csk8110 = platform_get_drvdata(to_platform_device(dev));
	int value;

	if (kstrtoint(buf, 10, &value))
		return -EINVAL;

	if (!IS_ERR_OR_NULL(csk8110->reset_gpio)) {
		gpiod_set_value(csk8110->reset_gpio, value);
		dev_info(dev, "CSK8110 reset GPIO set to %d\n", value);
	}

	return count;
}

static DEVICE_ATTR_WO(csk8110_reset);

static struct attribute *csk8110_attrs[] = {
	&dev_attr_csk8110_reset.attr,
	NULL,
};

static const struct attribute_group csk8110_attr_group = {
	.attrs = csk8110_attrs,
};

static void csk8110_component_remove(struct snd_soc_component *component)
{
	struct csk8110_priv *csk8110 = snd_soc_component_get_drvdata(component);

	if (csk8110->mclk_enabled)
		clk_disable_unprepare(csk8110->mclk);
}

static const struct snd_soc_component_driver soc_csk8110 = {
	.probe		= csk8110_component_probe,
	.remove		= csk8110_component_remove,
};

static irqreturn_t csk8110_irq(int irq, void *dev_id)
{
	struct csk8110_priv *csk8110 = dev_id;
	struct input_dev *input = csk8110->input;

	input_report_key(input, KEY_WAKEUP, 1);
	msleep(20);
	input_report_key(input, KEY_WAKEUP, 0);
	input_sync(input);

	return IRQ_HANDLED;
}

static int rockchip_csk8110_probe(struct platform_device *pdev)
{
	struct csk8110_priv *csk8110;
	struct input_dev *input;
	int ret;

	csk8110 = devm_kzalloc(&pdev->dev, sizeof(*csk8110), GFP_KERNEL);
	if (!csk8110)
		return -ENOMEM;

	platform_set_drvdata(pdev, csk8110);

	/* input device for wake key */
	input = devm_input_allocate_device(&pdev->dev);
	if (!input)
		return -ENOMEM;
	csk8110->input = input;
	input->name = "csk8110";
	input->phys = "csk8110/input0";
	input->id.bustype = BUS_HOST;
	input_set_capability(input, EV_KEY, KEY_WAKEUP);
	ret = input_register_device(input);
	if (ret) {
		dev_err(&pdev->dev, "Failed to register input device\n");
		return ret;
	}

	csk8110->mclk = devm_clk_get(&pdev->dev, "mclk");
	if (IS_ERR(csk8110->mclk)) {
		if (PTR_ERR(csk8110->mclk) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		else if (PTR_ERR(csk8110->mclk) != -ENOENT)
			return -EINVAL;
	}

	/* GPIO: reset, power, wake (optional) */
	csk8110->reset_gpio = devm_gpiod_get_optional(&pdev->dev, "reset",
						      GPIOD_OUT_LOW);
	if (IS_ERR(csk8110->reset_gpio)) {
		ret = PTR_ERR(csk8110->reset_gpio);
		dev_err(&pdev->dev, "Failed to request reset GPIO: %d\n", ret);
		return ret;
	}

	csk8110->power_gpio = devm_gpiod_get_optional(&pdev->dev, "power",
						      GPIOD_OUT_LOW);
	if (IS_ERR(csk8110->power_gpio)) {
		ret = PTR_ERR(csk8110->power_gpio);
		dev_err(&pdev->dev, "Failed to request power GPIO: %d\n", ret);
		return ret;
	}

	csk8110->wake_gpio = devm_gpiod_get_optional(&pdev->dev, "wake",
						     GPIOD_IN);
	if (IS_ERR(csk8110->wake_gpio)) {
		ret = PTR_ERR(csk8110->wake_gpio);
		dev_err(&pdev->dev, "Failed to request wake GPIO: %d\n", ret);
		return ret;
	}

	/* wake GPIO as IRQ */
	if (!IS_ERR_OR_NULL(csk8110->wake_gpio)) {
		int irq = gpiod_to_irq(csk8110->wake_gpio);

		if (irq < 0) {
			dev_warn(&pdev->dev, "Failed to convert wake GPIO to IRQ: %d\n", irq);
		} else {
			ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
							csk8110_irq,
							IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
							"csk8110_wake", csk8110);
			if (ret)
				dev_warn(&pdev->dev, "Failed to request wake IRQ: %d\n", ret);
		}
	}

	/* Register sysfs interface for reset control */
	ret = devm_device_add_group(&pdev->dev, &csk8110_attr_group);
	if (ret)
		dev_warn(&pdev->dev, "Failed to create sysfs group: %d\n", ret);

	return devm_snd_soc_register_component(&pdev->dev, &soc_csk8110,
					       &csk8110_dai, 1);
}

static const struct of_device_id rockchip_csk8110_of_match[] = {
	{ .compatible = "rockchip,csk8110", },
	{},
};
MODULE_DEVICE_TABLE(of, rockchip_csk8110_of_match);

static struct platform_driver rockchip_csk8110_driver = {
	.driver = {
		.name = "csk8110",
		.of_match_table = of_match_ptr(rockchip_csk8110_of_match),
	},
	.probe = rockchip_csk8110_probe,
};

module_platform_driver(rockchip_csk8110_driver);

MODULE_AUTHOR("buluess <buluess.li@rock-chips.com>");
MODULE_DESCRIPTION("Rockchip CSK8110 Codec Driver");
MODULE_LICENSE("GPL v2");

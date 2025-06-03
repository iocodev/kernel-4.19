#include <linux/module.h>
#include <linux/err.h>
#include <linux/gpio.h>
#include <linux/kernel.h>
#include <linux/of_gpio.h>
#include <linux/of_platform.h>
#include <linux/delay.h>
#include <linux/wakelock.h>
#include <linux/of.h>
#include <linux/types.h>
#include <asm/uaccess.h>
#include <linux/of_fdt.h>
#include <linux/proc_fs.h>
#include <linux/kthread.h>
//add for pwm
#include <linux/pwm.h>
#include <linux/pwm_backlight.h>

#define MAX_PWM 15  //255

static volatile int  buzzer_gpio_disable = 0;
struct gpio_gpio {
	int gpio_num;
	int val;
};

struct gpio_ctrl_gpio {
	struct gpio_gpio buzzer_gpio;
	struct gpio_gpio hub_rst;
	struct gpio_gpio switch_gpio;
    struct gpio_gpio tp_pwr_gpio;
    struct gpio_gpio sd_pwr_gpio;
    struct pwm_device	*pwm;
    int pwm_value;
    struct mutex lock;
	volatile int fan_speed_level;
    volatile int fan_speed_auto;
	struct wake_lock rp_wake_lock;
	struct task_struct *fan_thread;
};
//add hub proc------------------------------
static struct gpio_ctrl_gpio *hub_data = NULL;
static ssize_t hub_rst_proc_write(struct file * file,const char __user* buffer,size_t count,loff_t *data)
{
			printk("************\n");
			gpio_direction_output(hub_data->hub_rst.gpio_num, 0);
        	gpio_set_value(hub_data->hub_rst.gpio_num, 0);
			msleep(500);
			gpio_direction_output(hub_data->hub_rst.gpio_num, 1);
        	gpio_set_value(hub_data->hub_rst.gpio_num, 1);
			return count;

}
static const struct proc_ops hub_rst_proc = {
	//.owner		= THIS_MODULE,
	.proc_write		= hub_rst_proc_write,
};


static int  fan_set_pwm(struct gpio_ctrl_gpio*ctx, unsigned long pwm)
{
	unsigned long period;
	int ret = 0;
	struct pwm_state state = { };

	mutex_lock(&ctx->lock);
	if (ctx->pwm_value == pwm)
		goto exit_set_pwm_err;

	pwm_init_state(ctx->pwm, &state);
	period = ctx->pwm->args.period;
	state.duty_cycle = pwm ==1 ? DIV_ROUND_UP(pwm * (period - 1), MAX_PWM) + 1000 : DIV_ROUND_UP(pwm * (period - 1), MAX_PWM);
	state.enabled = pwm ? true : false;
    printk("fan_set_pwm=> period=%ld  pwm=%ld state.enabled=%d state.duty_cycle=%lld \n",
            period, pwm, state.enabled, state.duty_cycle);
	ret = pwm_apply_state(ctx->pwm, &state);
	if (!ret)
		ctx->pwm_value = pwm;
exit_set_pwm_err:
	mutex_unlock(&ctx->lock);
	return ret;
}


static int get_cpu_temp(void){
    struct file *file;
    loff_t pos;
    char buf[20]={0};
    char buf_temp[20]={0};
    ssize_t ret;
    unsigned int value = 0;
    //printk("Read get_cpu_temp()...\n");

    file = filp_open("/sys/class/thermal/thermal_zone0/temp", O_RDONLY, 0);
    if (IS_ERR(file)) {
        printk("Failed to open file\n");
        return PTR_ERR(file);
    }
    pos = 0;
    ret = kernel_read(file, buf, sizeof(buf), &pos);
    if (ret >= 0) {
        //printk("Read %zd bytes from file= %s\n", ret, buf);
    } else {
        printk("Failed to read from file\n");
        return -1;
    }

    memcpy(buf_temp, buf, ret-1);
    ret = kstrtou32(buf_temp, 10, &value);
	if (ret < 0) {
		//printk("get_cpu_temp error! buf_temp=%s\n", buf_temp);
		return ret;
	}else{
        printk("get_cpu_temp read temp= %d\n", value);
    }

    return value;
}

#define PWM_TIMER_STEP  1
#define PWM_TIMER_CYCLE 15
#define CPU_TEMP_THRESHOLD  60000
#define CPU_TEMP_MAX        90000

//fan_ctl : pwm
#if 0
// gpio pwm
static int fan_thread_function(void *data)
{
    volatile int timer_val = 0;
    volatile int read_cnt;
    volatile int temp_val;
    volatile int tmp_levle;
	while (!kthread_should_stop()) {
        if(hub_data->fan_speed_auto == 1){
            //read cpu temperature
            if(read_cnt++ > 120){
                temp_val = get_cpu_temp();
                read_cnt = 0;
                if(temp_val > CPU_TEMP_THRESHOLD){
                    tmp_levle = ((temp_val - CPU_TEMP_THRESHOLD) /1000) / 2;
                    hub_data->fan_speed_level = tmp_levle > 0 ? tmp_levle : 1;
                }else{
                    hub_data->fan_speed_level = 0;
                    //set_current_state(TASK_INTERRUPTIBLE);
				    //schedule_timeout(msecs_to_jiffies(30));
                }
            }
        }
        if(hub_data->fan_speed_level > 0 && hub_data->fan_speed_level < 16){
            timer_val = PWM_TIMER_STEP * hub_data->fan_speed_level;
            gpio_direction_output(hub_data->switch_gpio.gpio_num, 1);
            gpio_set_value(hub_data->switch_gpio.gpio_num, 1);
            set_current_state(TASK_INTERRUPTIBLE);
            schedule_timeout(msecs_to_jiffies(timer_val));
            //msleep(800);
            gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
            gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
            //msleep(200);
            set_current_state(TASK_INTERRUPTIBLE);
            if(hub_data->fan_speed_level == 15){
                schedule_timeout(msecs_to_jiffies(PWM_TIMER_CYCLE - timer_val + 1));
            }else{
                schedule_timeout(msecs_to_jiffies(PWM_TIMER_CYCLE - timer_val));
            }
        }else{
            hub_data->fan_speed_level = 0;
            set_current_state(TASK_INTERRUPTIBLE);
            schedule_timeout(msecs_to_jiffies(30));
        }
	}
	return 0;
}

#else
//pwm7
static int fan_thread_function(void *data)
{
    //volatile int timer_val = 0;
    volatile int read_cnt;
    volatile int temp_val;
    volatile int tmp_levle;
	while (!kthread_should_stop()) {
        if(hub_data->fan_speed_auto == 1){
            //read cpu temperature
            if(read_cnt++ > 120){
                temp_val = get_cpu_temp();
                read_cnt = 0;
                if(temp_val > CPU_TEMP_THRESHOLD){
                    tmp_levle = ((temp_val - CPU_TEMP_THRESHOLD) /1000) / 2;
                    hub_data->fan_speed_level = tmp_levle > 0 ? tmp_levle : 1;
                }else{
                    hub_data->fan_speed_level = 0;
                    //set_current_state(TASK_INTERRUPTIBLE);
				    //schedule_timeout(msecs_to_jiffies(30));
                }
            }
            fan_set_pwm(hub_data, hub_data->fan_speed_level);
        }

        set_current_state(TASK_INTERRUPTIBLE);
        schedule_timeout(msecs_to_jiffies(30));
	}
	return 0;
}
#endif
static int __maybe_unused fan_thread_start(void) {
	int ret = 0;
	hub_data->fan_thread = kthread_create(fan_thread_function,
                                   hub_data, "fan_thread");
	if (IS_ERR(hub_data->fan_thread)) {
		printk("kthread_create fan_thread failed\n");
		ret = PTR_ERR(hub_data->fan_thread);
		hub_data->fan_thread = NULL;
		return ret;
	}
	printk("fan_thread_start\n");
	wake_up_process(hub_data->fan_thread);
	return ret;
}

static int __maybe_unused fan_thread_stop(void) {
	if (hub_data->fan_thread){
        kthread_stop(hub_data->fan_thread);
	}
	hub_data->fan_speed_level = 0;
	hub_data->fan_thread = NULL;
	printk("fan_thread_stop\n");
	return 0;
}


#if 1
static ssize_t fan_ctl_proc_write(struct file * file,const char __user* buffer,size_t count,loff_t *data)
{

    char c;
    if(hub_data->switch_gpio.gpio_num < 0) {
        printk("************fan_ctl_proc_write()  switch_gpio.gpio_num err!!!\n");
        return -EFAULT;
    }
    if (get_user(c, data))
			return -EFAULT;
    printk("************fan_ctl_proc_write=%c\n", c);
	switch (c) {
		case '0':
			fan_thread_stop();
			gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
			gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
			break;
		case '1':
			if (hub_data->fan_thread == NULL){
				fan_thread_start();
		    }
			hub_data->fan_speed_level = 1;
			gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
			gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
			break;
		case '2':
			if (hub_data->fan_thread == NULL){
				fan_thread_start();
		    }
			hub_data->fan_speed_level = 2;
			gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
			gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
			break;
		case '3':
			if (hub_data->fan_thread == NULL){
				fan_thread_start();
		    }
			hub_data->fan_speed_level = 3;
			gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
			gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
			break;
		default:
			fan_thread_stop();
			gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
			gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
            printk("************fan_ctl_proc_write=%c chr<0x%2x>\n", c,(int)c);
	}
	return count;

}

static ssize_t fan_ctl_proc_read(struct file * file, char __user* buffer,size_t count,loff_t *data)
{
	int io_status = -1;

    //gpio_direction_output(hub_data->hub_rst.gpio_num, 1);
	//gpio_set_value(hub_data->hub_rst.gpio_num, 1);
    if(hub_data->switch_gpio.gpio_num < 0) {
        printk("************fan_ctl_proc_write()  switch_gpio.gpio_num err!!!\n");
        return -EFAULT;
    }
    io_status = gpio_get_value(hub_data->switch_gpio.gpio_num);

    if (put_user(io_status ? '1' : '0', buffer))
		return -EFAULT;
    printk("************fan_ctl_proc_read() io_status=%d\n", io_status);
	return 1;

}
#endif

static ssize_t switch_gpio_store(struct device *dev, struct device_attribute *attr,
			      const char *buf, size_t count){
	int ret = -1;
    int value = -1;

    if (hub_data->fan_thread == NULL){
        fan_thread_start();
    }

    ret = kstrtou32(buf, 10, &value);
	if (ret < 0) {
		printk("switch_gpio error! cmd require only one args\n");
		//return ret;
		if(strstr(buf,"off") != NULL){
            hub_data->fan_speed_auto = 0;
            printk("fan_speed_auto : %s value==%d\n", buf, value);
        }else if(strstr(buf, "on") != NULL){
            hub_data->fan_speed_auto = 1;
            if (hub_data->fan_thread == NULL){
                fan_thread_start();
            }
            printk("fan_speed_auto : %s value==%d\n", buf, value);
        }
	}else{
        if(value >= 0 && value < 16){
    		hub_data->fan_speed_level = value;
            ret = fan_set_pwm(hub_data, value);
            if (ret){
                printk("fan_speed : pwm set error: value=%d\n", value);
                //return ret;
            }
        }
    }
#if 0
    //gpio_direction_output(hub_data->switch_gpio.gpio_num, value);
    switch (value) {
		case 0:
			fan_thread_stop();
			gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
			gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
			break;
		case 1:
			if (hub_data->fan_thread == NULL){
				fan_thread_start();
		    }
			hub_data->fan_speed_level = 1;
			gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
			gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
			break;
		case 2:
			if (hub_data->fan_thread == NULL){
				fan_thread_start();
		    }
			hub_data->fan_speed_level = 2;
			gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
			gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
			break;
		case 3:
			if (hub_data->fan_thread == NULL){
				fan_thread_start();
		    }
			hub_data->fan_speed_level = 3;
			gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
			gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
			break;
		default:
			fan_thread_stop();
			gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
			gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
            printk("************switch_gpio_store=%d\n", value);
	}
    #endif
	return count;
}



static ssize_t switch_gpio_show(struct device *dev, struct device_attribute *attr, char *buf){
    int gpio_val = 0;
	int len;

	//gpio_val  = gpio_get_value(hub_data->switch_gpio.gpio_num);
	gpio_val  = hub_data->fan_speed_level;
    //printk("get gpio%d value %d\n",open_now,gpio_val);

	len = sprintf(buf, "%d",gpio_val);

	return len;
}


static ssize_t buzzer_gpio_store(struct device *dev, struct device_attribute *attr,
				  const char *buf, size_t count){
	//int ret = -1;
	int value = -1;
    //echo "buzzer_en:1"  "buzzer_en:0"
    printk("buzzer_gpio_store : cmd=%s \n", buf);
    if(strchr(buf,'1') != NULL){
        value = 1;
        printk("buzzer_gpio_store : %s value==%d\n", buf, value);
    }else if(strchr(buf, '0') != NULL){
        value = 0;
        printk("buzzer_gpio_store : %s value==%d\n", buf, value);

    }else if(strchr(buf, '2') != NULL){
        value = 2;
        printk("buzzer_gpio_store : %s value==%d\n", buf, value);

    }else if(strchr(buf, '3') != NULL){
        value = 3;
        printk("buzzer_gpio_store : %s value==%d\n", buf, value);

    }else if(strchr(buf, '4') != NULL){
        buzzer_gpio_disable = 0;
        value = 4;
        printk("buzzer_gpio_store : %s value==%d\n", buf, value);

    }else{
        printk("buzzer_gpio cmd set  error!\n");
        return -1;
    }
	if(value == 2){
		buzzer_gpio_disable = 1;
		gpio_direction_output(hub_data->buzzer_gpio.gpio_num, 1);
	}else if(value == 3){
		buzzer_gpio_disable = 1;
	}else if(value == 4){
		buzzer_gpio_disable = 0;
	}else{
		gpio_direction_output(hub_data->buzzer_gpio.gpio_num, value);
	}
	return count;
}



static ssize_t buzzer_gpio_show(struct device *dev, struct device_attribute *attr, char *buf){
	int gpio_val = 0;
	int len;

	gpio_val  = gpio_get_value(hub_data->buzzer_gpio.gpio_num);
	//printk("get gpio%d value %d\n",open_now,gpio_val);

	len = sprintf(buf, "%d",gpio_val);

	return len;
}



static struct device_attribute switch_gpio_attr[] = {
	__ATTR(switch_gpio, 0644, switch_gpio_show, switch_gpio_store),
};

static struct device_attribute buzzer_gpio_attr[] = {
	__ATTR(buzzer_gpio, 0644, buzzer_gpio_show, buzzer_gpio_store),
};


static void gpio_init_sysfs(struct platform_device *pdev)
{
	int i, ret;

	for (i = 0; i < ARRAY_SIZE(switch_gpio_attr); i++) {
		ret = sysfs_create_file(&(pdev->dev.kobj),
					&switch_gpio_attr[i].attr);
		if (ret){
			printk("%s create switch_gpio_attr node(%s) error\n", __FILE__,  switch_gpio_attr[i].attr.name);
        }
	}

    for (i = 0; i < ARRAY_SIZE(buzzer_gpio_attr); i++) {
		ret = sysfs_create_file(&(pdev->dev.kobj),
					&buzzer_gpio_attr[i].attr);
		if (ret){
			printk("%s create buzzer_gpio_attr node(%s) error\n", __FILE__,  buzzer_gpio_attr[i].attr.name);
        }
	}

}



static const struct proc_ops fan_ctl_proc = {
	//.owner		= THIS_MODULE,
	.proc_write		= fan_ctl_proc_write,
	.proc_read		= fan_ctl_proc_read,
};

static struct proc_dir_entry *gpio_ctl_entry;
//------------------------------------------
//static int gpio_ctrl_probe(struct platform_device *pdev)
static int gpio_ctrl_deferred_probe(void *p)

{
    int ret = 0;
    struct platform_device *pdev = p;
    struct device_node *np = pdev->dev.of_node;
    struct device *dev = &pdev->dev;
	struct gpio_ctrl_gpio *data;
    struct pwm_state state = { };
	printk("Gpio-hdk gpio_ctrl probe...\n");
	//add hub proc------------------------------
	gpio_ctl_entry = proc_mkdir("hub_rst_proc", NULL);
	proc_create("hub_rst_",0666,gpio_ctl_entry,&hub_rst_proc);
    proc_create("fan_ctl",0666,gpio_ctl_entry,&fan_ctl_proc);
	//------------------------------------------

	data = devm_kzalloc(&pdev->dev, sizeof(struct gpio_ctrl_gpio),GFP_KERNEL);
	if (!data) {
        dev_err(&pdev->dev, "failed to allocate memory\n");
        return -ENOMEM;
    }
	memset(data, 0, sizeof(struct gpio_ctrl_gpio));
	//add hub proc------------------------------
	hub_data = data;
	hub_data->fan_thread = NULL;
	hub_data->fan_speed_level = 0;
    hub_data->fan_speed_auto  = 0;

    mutex_init(&hub_data->lock);

	//------------------------------------------
    data->buzzer_gpio.gpio_num = of_get_named_gpio_flags(np, "buzzer_gpio", 0, NULL);
    if (!gpio_is_valid(data->buzzer_gpio.gpio_num)){
        data->buzzer_gpio.gpio_num = -1;
	}

    data->hub_rst.gpio_num = of_get_named_gpio_flags(np, "hub_rst", 0, NULL);
    if (!gpio_is_valid(data->hub_rst.gpio_num)){
        data->hub_rst.gpio_num = -1;
	}

    data->switch_gpio.gpio_num = of_get_named_gpio_flags(np, "switch_gpio", 0, NULL);
    if (!gpio_is_valid(data->switch_gpio.gpio_num)){
        data->switch_gpio.gpio_num = -1;
	}

	platform_set_drvdata(pdev, data);

	if(data->buzzer_gpio.gpio_num != -1){
		ret = gpio_request(data->buzzer_gpio.gpio_num, "buzzer_gpio");
        if (ret < 0){
			printk("data->buzzer_gpio request error\n");
		}else{
			gpio_direction_output(data->buzzer_gpio.gpio_num, 1);
        	gpio_set_value(data->buzzer_gpio.gpio_num, 1);
            //schedule_timeout(msecs_to_jiffies(200));
            mdelay(200);
            gpio_direction_output(data->buzzer_gpio.gpio_num, 0);
        	gpio_set_value(data->buzzer_gpio.gpio_num, 0);
		}
	}


	if(data->hub_rst.gpio_num != -1){
		ret = gpio_request(data->hub_rst.gpio_num, "hub_rst");
        if (ret < 0){
			printk("data->hub_rst request error\n");
		}else{
//			gpio_direction_output(data->hub_rst.gpio_num, 0);
//        		gpio_set_value(data->hub_rst.gpio_num, 0);
//			msleep(100);
			gpio_direction_output(data->hub_rst.gpio_num, 1);
        	gpio_set_value(data->hub_rst.gpio_num, 1);
		}
	}


	if(data->switch_gpio.gpio_num != -1){
		ret = gpio_request(data->switch_gpio.gpio_num, "switch_gpio");
        if (ret < 0){
			printk("data->switch_gpio request error\n");
		}else{
			gpio_direction_output(data->switch_gpio.gpio_num, 0);
  			gpio_set_value(data->switch_gpio.gpio_num, 0);
		}
	}

    msleep(1500);
    //schedule_timeout(msecs_to_jiffies(1500));

    //hub_data->pwm = devm_of_pwm_get(dev, dev->of_node, NULL);
    hub_data->pwm = devm_pwm_get(dev, NULL);
    if(IS_ERR(hub_data->pwm)){
        printk("gpio_ctrl_probe: pwm_test,get pwm  error!!\n");
        hub_data->pwm = pwm_request(0, "gpio_ctrl");
        if(IS_ERR(hub_data->pwm)){
            printk("2gpio_ctrl_probe: pwm_test,get pwm  error!!\n");
            hub_data->pwm = NULL;
        }
    }

    if(hub_data->pwm != NULL){
        pwm_init_state(hub_data->pwm, &state);
        if (state.period > ULONG_MAX / MAX_PWM + 1) {
    		printk("gpio_ctrl: Configured period too big\n");
    	}
        state.duty_cycle = hub_data->pwm->args.period - 1;
	    state.enabled = false;
        ret = pwm_apply_state(hub_data->pwm, &state);
    	if (ret) {
    		printk("gpio_ctrl:Failed to configure PWM: %d\n", ret);
    		return ret;
    	}
    }

    data->tp_pwr_gpio.gpio_num = of_get_named_gpio_flags(np, "tp_gpio", 0, NULL);
    if (!gpio_is_valid(data->tp_pwr_gpio.gpio_num)){
        data->tp_pwr_gpio.gpio_num = -1;
	}else{
        printk("gpio_ctrl: get tp_gpio : %d \n",data->tp_pwr_gpio.gpio_num);
    }
    data->sd_pwr_gpio.gpio_num = of_get_named_gpio_flags(np, "sd_gpio", 0, NULL);
    if (!gpio_is_valid(data->sd_pwr_gpio.gpio_num)){
        data->sd_pwr_gpio.gpio_num = -1;
	}else{
        printk("gpio_ctrl: get sd_gpio : %d \n",data->sd_pwr_gpio.gpio_num);
    }

	if(data->sd_pwr_gpio.gpio_num != -1){
		ret = gpio_request(data->sd_pwr_gpio.gpio_num, "sd_pwr_gpio");
        if (ret < 0){
			printk("data->sd_pwr_gpio request error\n");
		}else{
			gpio_direction_output(data->sd_pwr_gpio.gpio_num, 0);
  			gpio_set_value(data->sd_pwr_gpio.gpio_num, 0);
		}
	}


    gpio_init_sysfs(pdev);
	buzzer_gpio_disable = 0;
    return 0;
}


static int gpio_ctrl_probe(struct platform_device *pdev)
{
	//struct device *dev = &pdev->dev;
    struct task_struct *tsk;
    printk("%s rockchip,deferred-probe\n", __func__);
	//if (of_property_read_bool(dev->of_node, "rockchip,deferred-probe")) {

		tsk = kthread_run(gpio_ctrl_deferred_probe, pdev, "sata-probe");
		if (IS_ERR(tsk)) {
			dev_err(&pdev->dev, "start sata-probe thread failed\n");
			return PTR_ERR(tsk);
		}

		return 0;
	//}

	//return gpio_ctrl_deferred_probe(pdev);
}

static int gpio_ctrl_remove(struct platform_device *pdev)
{
        struct gpio_ctrl_gpio *data = platform_get_drvdata(pdev);


	if(data->buzzer_gpio.gpio_num != -1){
		gpio_direction_output(data->buzzer_gpio.gpio_num, 1);
    	gpio_set_value(data->buzzer_gpio.gpio_num, 1);
        //schedule_timeout(msecs_to_jiffies(200));
        mdelay(200);
        gpio_direction_output(data->buzzer_gpio.gpio_num, 0);
    	gpio_set_value(data->buzzer_gpio.gpio_num, 0);
		gpio_free(data->buzzer_gpio.gpio_num);
	}

	if(data->hub_rst.gpio_num != -1){
		gpio_direction_output(data->hub_rst.gpio_num, 0);
		gpio_free(data->hub_rst.gpio_num);
	}

	if(data->switch_gpio.gpio_num != -1){
		gpio_direction_output(data->switch_gpio.gpio_num, 0);
		gpio_free(data->switch_gpio.gpio_num);
	}
    printk("gpio_ctrl_remove...\n");
    return 0;
}

#ifdef CONFIG_PM
static int gpio_ctrl_suspend(struct device *dev)
{
	struct platform_device *pdev = to_platform_device(dev);
        struct gpio_ctrl_gpio *data = platform_get_drvdata(pdev);

	if(data->buzzer_gpio.gpio_num != -1){
		gpio_direction_output(data->buzzer_gpio.gpio_num, 1);
    	gpio_set_value(data->buzzer_gpio.gpio_num, 1);
        //schedule_timeout(msecs_to_jiffies(200));
        mdelay(200);
        gpio_direction_output(data->buzzer_gpio.gpio_num, 0);
    	gpio_set_value(data->buzzer_gpio.gpio_num, 0);
		gpio_free(data->buzzer_gpio.gpio_num);
	}

	if(data->hub_rst.gpio_num != -1){
		gpio_direction_output(data->hub_rst.gpio_num, 0);
		gpio_set_value(data->hub_rst.gpio_num,0);
	}

	if(data->switch_gpio.gpio_num != -1){
		gpio_direction_output(data->switch_gpio.gpio_num, 0);
		gpio_set_value(data->switch_gpio.gpio_num,0);
	}

    if(data->sd_pwr_gpio.gpio_num != -1){
        gpio_direction_output(data->sd_pwr_gpio.gpio_num, 1);
        gpio_set_value(data->sd_pwr_gpio.gpio_num,1);
        printk("gpio_ctrl_suspend set sd_pwr_gpio 1\n ");
    }

    if(data->tp_pwr_gpio.gpio_num != -1){
        gpio_direction_output(data->tp_pwr_gpio.gpio_num, 0);
        gpio_set_value(data->tp_pwr_gpio.gpio_num,0);
        printk("gpio_ctrl_suspend set tp_pwr_gpio 0\n ");
    }



    printk("gpio_ctrl_suspend...\n");
    return 0;
}

static int gpio_ctrl_resume(struct device *dev)
{
	struct platform_device *pdev = to_platform_device(dev);
        struct gpio_ctrl_gpio *data = platform_get_drvdata(pdev);

	if(data->buzzer_gpio.gpio_num != -1){
			gpio_direction_output(data->buzzer_gpio.gpio_num, 1);
        	gpio_set_value(data->buzzer_gpio.gpio_num, 1);
	}

	if(data->hub_rst.gpio_num != -1){
			//gpio_direction_output(data->hub_rst.gpio_num, 0);
        		//gpio_set_value(data->hub_rst.gpio_num, 0);
			//msleep(100);
			gpio_direction_output(data->hub_rst.gpio_num, 1);
        	gpio_set_value(data->hub_rst.gpio_num, 1);
	}


	if(data->switch_gpio.gpio_num != -1){
			gpio_direction_output(data->switch_gpio.gpio_num, 0);
  			gpio_set_value(data->switch_gpio.gpio_num, 0);
	}

    if(data->sd_pwr_gpio.gpio_num != -1){
        gpio_direction_output(data->sd_pwr_gpio.gpio_num, 0);
        gpio_set_value(data->sd_pwr_gpio.gpio_num,0);
        printk("gpio_ctrl_resume set sd_pwr_gpio 0\n ");
    }

    if(data->tp_pwr_gpio.gpio_num != -1){
        gpio_direction_output(data->tp_pwr_gpio.gpio_num, 1);
        gpio_set_value(data->tp_pwr_gpio.gpio_num,1);
        printk("gpio_ctrl_resume set tp_pwr_gpio 1\n ");
    }
        return 0;
}

static const struct dev_pm_ops gpio_ctrl_pm_ops = {
        .suspend        = gpio_ctrl_suspend,
        .resume         = gpio_ctrl_resume,
};
#endif

static const struct of_device_id gpio_ctrl_of_match[] = {
 	    { .compatible = "hdk,gpio-ctrl" },
        { .compatible = "gpio_ctrl" },
        { }
};

void gpio_ctrl_shutdown(struct platform_device *pdev)
{
        struct gpio_ctrl_gpio *data = platform_get_drvdata(pdev);


	if(data->buzzer_gpio.gpio_num != -1){
		if(buzzer_gpio_disable != 1){
			gpio_direction_output(data->buzzer_gpio.gpio_num, 1);
			gpio_set_value(data->buzzer_gpio.gpio_num, 1);
			//schedule_timeout(msecs_to_jiffies(200));
			mdelay(200);
			gpio_direction_output(data->buzzer_gpio.gpio_num, 0);
			gpio_set_value(data->buzzer_gpio.gpio_num, 0);
			gpio_free(data->buzzer_gpio.gpio_num);
		}
	}
    if(data->switch_gpio.gpio_num != -1){
        gpio_direction_output(hub_data->switch_gpio.gpio_num, 0);
        gpio_set_value(hub_data->switch_gpio.gpio_num, 0);
    }
    printk("gpio_ctrl_shutdown...\n");
}


static struct platform_driver gpio_ctrl_driver = {
        .probe = gpio_ctrl_probe,
        .remove = gpio_ctrl_remove,
        .shutdown = gpio_ctrl_shutdown,
        .driver = {
                .name           = "gpio_ctrl",
                .of_match_table = of_match_ptr(gpio_ctrl_of_match),
#ifdef CONFIG_PM
                .pm     = &gpio_ctrl_pm_ops,
#endif

        },
};

module_platform_driver(gpio_ctrl_driver);

MODULE_LICENSE("GPL");

// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"ebc_dev_y8.c"
                                        // Start of file scope inline assembly
	.section	.initcall6s.init,"a",@progbits
__initcall__kmod_rkebc__641_4442_ebc_init6s:
.Ltmp0:
	.word	ebc_init-.Ltmp0
	.text

	.weak	__kcfi_typeid_delayed_work_timer_fn
.set __kcfi_typeid_delayed_work_timer_fn, 2444535866

                                        // End of file scope inline assembly
	.section	.exit.text,"ax",@progbits
	.p2align	2                               // -- Begin function ebc_exit
	.type	ebc_exit,@function
	.word	2772461324                      // 0xa540670c
ebc_exit:                               // @ebc_exit
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x0, ebc_driver
	add	x0, x0, :lo12:ebc_driver
	mov	x29, sp
	bl	platform_driver_unregister
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end0:
	.size	ebc_exit, .Lfunc_end0-ebc_exit
                                        // -- End function
	.section	.init.text,"ax",@progbits
	.p2align	2                               // -- Begin function ebc_init
	.type	ebc_init,@function
	.word	917620134                       // 0x36b1c5a6
ebc_init:                               // @ebc_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x0, ebc_driver
	add	x0, x0, :lo12:ebc_driver
	mov	x1, xzr
	mov	x29, sp
	bl	__platform_driver_register
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end1:
	.size	ebc_init, .Lfunc_end1-ebc_init
                                        // -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	2                               // -- Begin function ebc_probe
	.type	ebc_probe,@function
	.word	1675564689                      // 0x63df1691
ebc_probe:                              // @ebc_probe
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #208
	stp	x20, x19, [sp, #192]            // 16-byte Folded Spill
	add	x19, x0, #16
	mov	x20, x0
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	mov	x0, x19
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	stp	x28, x27, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #112
	stp	x26, x25, [sp, #144]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #160]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            // 16-byte Folded Spill
	str	xzr, [sp, #24]
	str	wzr, [sp, #20]
	str	xzr, [sp, #8]
	bl	_dev_info
	mov	x0, x19
	mov	w1, #18536                      // =0x4868
	mov	w2, #3520                       // =0xdc0
	bl	devm_kmalloc
	cbz	x0, .LBB2_6
// %bb.1:
	adrp	x8, global_ebc
	mov	x21, x0
	str	x19, [x0]
	str	x0, [x8, :lo12:global_ebc]
	ldr	x0, [x20, #712]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	add	x5, sp, #32
	mov	x2, xzr
	mov	w3, wzr
	mov	w4, wzr
	stp	xzr, xzr, [sp, #96]
	stp	xzr, xzr, [sp, #80]
	stp	xzr, xzr, [sp, #64]
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	bl	__of_parse_phandle_with_args
	cbnz	w0, .LBB2_8
// %bb.2:
	ldr	x0, [sp, #32]
	cbz	x0, .LBB2_8
// %bb.3:
	bl	of_find_device_by_node
	cbz	x0, .LBB2_5
// %bb.4:
	ldr	x8, [x0, #168]
	str	x8, [x21, #8]
	cbnz	x8, .LBB2_10
.LBB2_5:
	mov	w0, #-517                       // =0xfffffdfb
	b	.LBB2_7
.LBB2_6:
	mov	w0, #-12                        // =0xfffffff4
.LBB2_7:
	ldp	x20, x19, [sp, #192]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #208
	ldr	x30, [x18, #-8]!
	ret
.LBB2_8:
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
.LBB2_9:
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-19                        // =0xffffffed
	b	.LBB2_7
.LBB2_10:
	adrp	x9, frame_done_callback
	add	x9, x9, :lo12:frame_done_callback
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	mov	x0, x19
	str	x9, [x8, #232]
	bl	nvmem_cell_get
	cmn	x0, #4095
	b.lo	.LBB2_12
// %bb.11:
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	b	.LBB2_24
.LBB2_12:
	add	x1, sp, #8
	mov	x22, x0
	bl	nvmem_cell_read
	mov	x23, x0
	mov	x0, x22
	bl	nvmem_cell_put
	cmn	x23, #4095
	b.lo	.LBB2_14
// %bb.13:
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	b	.LBB2_24
.LBB2_14:
	ldrb	w8, [x23]
	cmp	w8, #51
	b.eq	.LBB2_21
// %bb.15:
	cmp	w8, #53
	b.ne	.LBB2_23
// %bb.16:
	ldrb	w8, [x23, #1]
	mov	w22, #3566                      // =0xdee
	cmp	w8, #103
	b.le	.LBB2_27
// %bb.17:
	cmp	w8, #104
	b.eq	.LBB2_31
// %bb.18:
	cmp	w8, #114
	b.eq	.LBB2_29
// %bb.19:
	cmp	w8, #118
	b.ne	.LBB2_23
// %bb.20:
	mov	w22, #3576                      // =0xdf8
	b	.LBB2_31
.LBB2_21:
	ldrb	w8, [x23, #1]
	mov	w22, #3326                      // =0xcfe
	cmp	w8, #38
	b.eq	.LBB2_31
// %bb.22:
	cmp	w8, #48
	b.eq	.LBB2_31
.LBB2_23:
	mov	x0, x23
	bl	kfree
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
.LBB2_24:
	mov	x0, x19
	bl	_dev_err
	ldr	x0, [x21, #8]
	ldr	x8, [x0, #256]
	ldur	w16, [x8, #-4]
	movk	w17, #38569
	movk	w17, #44233, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp1
	brk	#0x8228
.Ltmp1:
	blr	x8
	cmp	w0, #5
	b.hs	.LBB2_26
// %bb.25:
	adrp	x8, .Lswitch.table.ebc_probe.261
	add	x8, x8, :lo12:.Lswitch.table.ebc_probe.261
	ldr	w22, [x8, w0, uxtw #2]
	b	.LBB2_32
.LBB2_26:
	mov	w22, #-1                        // =0xffffffff
	b	.LBB2_32
.LBB2_27:
	cmp	w8, #6
	b.eq	.LBB2_30
// %bb.28:
	cmp	w8, #102
	b.eq	.LBB2_31
	b	.LBB2_23
.LBB2_29:
	mov	w22, #3572                      // =0xdf4
	b	.LBB2_31
.LBB2_30:
	mov	w22, #3506                      // =0xdb2
.LBB2_31:
	mov	x0, x23
	bl	kfree
.LBB2_32:
	ldr	x0, [x20, #712]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	add	x2, sp, #20
	bl	of_get_property
	ldr	w9, [sp, #20]
	asr	w8, w9, #2
	cmp	w9, #4
	str	w8, [sp, #20]
	b.hs	.LBB2_34
// %bb.33:
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-22                        // =0xffffffea
	b	.LBB2_7
.LBB2_34:
	cmp	w8, #1
	b.lt	.LBB2_86
// %bb.35:
	mov	x23, x0
	mov	x24, xzr
	mov	w28, wzr
	adrp	x25, .L.str.15
	add	x25, x25, :lo12:.L.str.15
	adrp	x26, .L.str.16
	add	x26, x26, :lo12:.L.str.16
	adrp	x27, .L.str.17
	add	x27, x27, :lo12:.L.str.17
	str	w22, [sp, #4]                   // 4-byte Folded Spill
	b	.LBB2_39
.LBB2_36:                               //   in Loop: Header=BB2_39 Depth=1
	mov	x0, x19
	mov	x1, x26
.LBB2_37:                               //   in Loop: Header=BB2_39 Depth=1
	bl	_dev_warn
.LBB2_38:                               //   in Loop: Header=BB2_39 Depth=1
	ldr	w8, [sp, #20]
	add	x24, x24, #1
	cmp	w24, w8
	b.ge	.LBB2_51
.LBB2_39:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [x23, x24, lsl #2]
	rev	w0, w8
	bl	of_find_node_by_phandle
	cbz	x0, .LBB2_48
// %bb.40:                              //   in Loop: Header=BB2_39 Depth=1
	add	x0, x0, #24
	bl	i2c_find_device_by_fwnode
	cbz	x0, .LBB2_49
// %bb.41:                              //   in Loop: Header=BB2_39 Depth=1
	ldr	x8, [x0, #184]
	mov	x22, x0
	str	x8, [x21, #16]
	cbnz	x8, .LBB2_50
// %bb.42:                              //   in Loop: Header=BB2_39 Depth=1
	add	x0, x22, #32
	mov	x1, x25
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #24]
	b.hs	.LBB2_36
// %bb.43:                              //   in Loop: Header=BB2_39 Depth=1
	add	x0, x22, #32
	add	x2, sp, #24
	mov	x1, x27
	bl	device_property_read_string
	cbnz	w0, .LBB2_46
// %bb.44:                              //   in Loop: Header=BB2_39 Depth=1
	ldr	x0, [sp, #24]
	bl	thermal_zone_get_zone_by_name
	cmn	x0, #4095
	str	x0, [x21, #104]
	b.hs	.LBB2_47
// %bb.45:                              //   in Loop: Header=BB2_39 Depth=1
	mov	w28, #1                         // =0x1
	b	.LBB2_38
.LBB2_46:                               //   in Loop: Header=BB2_39 Depth=1
	mov	x0, x19
	adrp	x1, .L.str.18
	add	x1, x1, :lo12:.L.str.18
	b	.LBB2_37
.LBB2_47:                               //   in Loop: Header=BB2_39 Depth=1
	mov	x0, x19
	adrp	x1, .L.str.19
	add	x1, x1, :lo12:.L.str.19
	bl	_dev_err
	b	.LBB2_38
.LBB2_48:
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	b	.LBB2_9
.LBB2_49:
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	b	.LBB2_9
.LBB2_50:
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	mov	x0, x19
	mov	w2, w24
	bl	_dev_info
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	b	.LBB2_52
.LBB2_51:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w28, #0, .LBB2_86
.LBB2_52:
	cmp	w8, #3326
	str	x19, [x21, #304]
	str	w8, [x21, #2012]
	str	wzr, [x21, #2020]
	b.eq	.LBB2_55
// %bb.53:
	cmp	w8, #3506
	b.eq	.LBB2_55
// %bb.54:
	adrp	x1, .L.str.21
	add	x1, x1, :lo12:.L.str.21
	mov	x0, x19
	bl	device_property_present
	tbz	w0, #0, .LBB2_56
.LBB2_55:
	mov	w8, #1                          // =0x1
	str	w8, [x21, #2020]
.LBB2_56:
	mov	x23, x21
	adrp	x1, .L.str.22
	add	x1, x1, :lo12:.L.str.22
	str	x19, [x23, #112]!
	mov	x0, x19
	ldp	x8, x9, [x23, #-104]
	stp	x8, x9, [x23, #8]
	bl	device_property_present
	tbz	w0, #0, .LBB2_58
// %bb.57:
	mov	w8, #3576                       // =0xdf8
	str	w8, [x21, #2016]
.LBB2_58:
	adrp	x1, .L.str.23
	add	x1, x1, :lo12:.L.str.23
	mov	x0, x19
	bl	device_property_present
	tbz	w0, #0, .LBB2_60
// %bb.59:
	mov	w8, #1                          // =0x1
	str	w8, [x21, #2004]
.LBB2_60:
	mov	x0, x21
	bl	ebc_panel_probe
	cbnz	w0, .LBB2_87
// %bb.61:
	ldp	w9, w8, [x21, #188]
	ldr	w10, [x21, #2020]
	str	w8, [x21, #432]
	str	w9, [x21, #436]
	cbnz	w10, .LBB2_88
.LBB2_62:
	ldr	w8, [x21, #264]
	cmp	w8, #230
	b.ne	.LBB2_82
// %bb.63:
	ldr	w8, [x21, #272]
	cbnz	w8, .LBB2_91
// %bb.64:
	ldr	w8, [x21, #280]
	cbnz	w8, .LBB2_91
// %bb.65:
	adrp	x1, .L.str.27
	add	x1, x1, :lo12:.L.str.27
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #32]
	b.lo	.LBB2_67
// %bb.66:
	adrp	x1, .L.str.28
	add	x1, x1, :lo12:.L.str.28
	mov	x0, x19
	bl	_dev_warn
.LBB2_67:
	adrp	x1, .L.str.29
	add	x1, x1, :lo12:.L.str.29
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #40]
	b.lo	.LBB2_69
// %bb.68:
	adrp	x1, .L.str.30
	add	x1, x1, :lo12:.L.str.30
	mov	x0, x19
	bl	_dev_warn
.LBB2_69:
	adrp	x1, .L.str.31
	add	x1, x1, :lo12:.L.str.31
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #48]
	b.lo	.LBB2_71
// %bb.70:
	adrp	x1, .L.str.32
	add	x1, x1, :lo12:.L.str.32
	mov	x0, x19
	bl	_dev_warn
.LBB2_71:
	adrp	x1, .L.str.33
	add	x1, x1, :lo12:.L.str.33
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #56]
	b.lo	.LBB2_73
// %bb.72:
	adrp	x1, .L.str.34
	add	x1, x1, :lo12:.L.str.34
	mov	x0, x19
	bl	_dev_warn
.LBB2_73:
	adrp	x1, .L.str.35
	add	x1, x1, :lo12:.L.str.35
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #64]
	b.lo	.LBB2_75
// %bb.74:
	adrp	x1, .L.str.36
	add	x1, x1, :lo12:.L.str.36
	mov	x0, x19
	bl	_dev_warn
.LBB2_75:
	adrp	x1, .L.str.37
	add	x1, x1, :lo12:.L.str.37
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #72]
	b.lo	.LBB2_77
// %bb.76:
	adrp	x1, .L.str.38
	add	x1, x1, :lo12:.L.str.38
	mov	x0, x19
	bl	_dev_warn
.LBB2_77:
	adrp	x1, .L.str.39
	add	x1, x1, :lo12:.L.str.39
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #80]
	b.lo	.LBB2_79
// %bb.78:
	adrp	x1, .L.str.40
	add	x1, x1, :lo12:.L.str.40
	mov	x0, x19
	bl	_dev_warn
.LBB2_79:
	adrp	x1, .L.str.41
	add	x1, x1, :lo12:.L.str.41
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #88]
	b.lo	.LBB2_81
// %bb.80:
	adrp	x1, .L.str.42
	add	x1, x1, :lo12:.L.str.42
	mov	x0, x19
	bl	_dev_warn
.LBB2_81:
	ldr	x8, [x21, #24]
	str	x8, [x21, #96]
.LBB2_82:
	add	x0, x21, #304
	bl	ebc_lut_table_init
	cbnz	w0, .LBB2_94
// %bb.83:
	mov	x0, x21
	bl	ebc_ability_init
	mov	x0, x21
	bl	ebc_buffer_manage_init
	cbnz	w0, .LBB2_95
// %bb.84:
	adrp	x8, __cpu_possible_mask
	ldrb	w0, [x8, :lo12:__cpu_possible_mask]
	bl	__sw_hweight64
	str	w0, [x21, #2000]
	add	x0, x21, #304
	bl	ebc_task_init
	cbnz	w0, .LBB2_96
// %bb.85:
	add	x0, x21, #304
	bl	ebc_other_init
	mov	x0, x21
	mov	x1, x23
	bl	ebc_logo_init
	add	x0, x21, #304
	str	x21, [x20, #168]
	bl	ebc_sysfs_init
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.46
	add	x1, x1, :lo12:.L.str.46
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	bl	_dev_info
	b	.LBB2_93
.LBB2_86:
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	mov	x0, x19
	bl	_dev_err
	b	.LBB2_5
.LBB2_87:
	mov	w20, w0
	adrp	x1, .L.str.24
	add	x1, x1, :lo12:.L.str.24
	mov	x0, x19
	mov	w2, w20
	bl	_dev_err
	mov	w0, w20
	b	.LBB2_7
.LBB2_88:
	ldr	w8, [x21, #272]
	cbnz	w8, .LBB2_90
// %bb.89:
	ldr	w8, [x21, #280]
	cbz	w8, .LBB2_62
.LBB2_90:
	adrp	x1, .L.str.25
	add	x1, x1, :lo12:.L.str.25
	b	.LBB2_92
.LBB2_91:
	adrp	x1, .L.str.26
	add	x1, x1, :lo12:.L.str.26
.LBB2_92:
	mov	x0, x19
	bl	_dev_err
.LBB2_93:
	mov	w0, wzr
	b	.LBB2_7
.LBB2_94:
	adrp	x1, .L.str.43
	add	x1, x1, :lo12:.L.str.43
	mov	w20, w0
	mov	x0, x19
	bl	_dev_err
	mov	w0, w20
	b	.LBB2_7
.LBB2_95:
	mov	w22, w0
	adrp	x1, .L.str.44
	add	x1, x1, :lo12:.L.str.44
	mov	x0, x19
	bl	_dev_err
	mov	w0, w22
	b	.LBB2_7
.LBB2_96:
	adrp	x1, .L.str.45
	add	x1, x1, :lo12:.L.str.45
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB2_7
.Lfunc_end2:
	.size	ebc_probe, .Lfunc_end2-ebc_probe
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_remove
	.type	ebc_remove,@function
	.word	2809065558                      // 0xa76ef056
ebc_remove:                             // @ebc_remove
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	adrp	x0, ebc_misc
	add	x0, x0, :lo12:ebc_misc
	ldr	x19, [x8, :lo12:global_ebc]
	mov	x29, sp
	bl	misc_deregister
	mov	x0, x19
	bl	ebc_buffer_manage_uninit
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end3:
	.size	ebc_remove, .Lfunc_end3-ebc_remove
                                        // -- End function
	.p2align	2                               // -- Begin function frame_done_callback
	.type	frame_done_callback,@function
	.word	2772461324                      // 0xa540670c
frame_done_callback:                    // @frame_done_callback
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	ldr	x20, [x8, :lo12:global_ebc]
	add	x8, x20, #4, lsl #12            // =16384
	ldrb	w9, [x8, #2145]
	ldrb	w10, [x8, #2146]
	orr	w9, w10, w9
	tst	w9, #0xff
	strb	w9, [x8, #2147]
	b.ne	.LBB4_11
// %bb.1:
	ldrb	w9, [x20, #1998]
	tbnz	w9, #0, .LBB4_11
// %bb.2:
	ldrb	w9, [x8, #2113]
	cmp	w9, #1
	b.ne	.LBB4_7
// %bb.3:
	ldrb	w9, [x8, #2140]
	cmp	w9, #1
	b.ne	.LBB4_6
// %bb.4:
	ldrb	w9, [x8, #2141]
	cmp	w9, #1
	b.ne	.LBB4_6
// %bb.5:
	strb	w9, [x8, #2142]
.LBB4_6:
	ldrb	w8, [x8, #2142]
	tbnz	w8, #0, .LBB4_8
	b	.LBB4_11
.LBB4_7:
	ldr	w8, [x8, #2064]
	cmp	w8, #1
	b.ge	.LBB4_11
.LBB4_8:
	ldrb	w8, [x20, #1996]
	tbnz	w8, #0, .LBB4_11
// %bb.9:
	ldrb	w8, [x20, #1997]
	tbnz	w8, #0, .LBB4_11
// %bb.10:
	ldr	x0, [x20, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #240]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp2
	brk	#0x8228
.Ltmp2:
	blr	x8
	ldr	x19, [x20, #312]
	bl	ebc_get_power_off_delay
	bl	__msecs_to_jiffies
	mov	x3, x0
	add	x2, x20, #320
	mov	w0, #8                          // =0x8
	mov	x1, x19
	bl	queue_delayed_work_on
.LBB4_11:
	ldr	w8, [x20, #2008]
	cmp	w8, #1
	b.gt	.LBB4_13
.LBB4_12:
	adrp	x0, ebc_flip_wq
	add	x0, x0, :lo12:ebc_flip_wq
	mov	w1, #1                          // =0x1
	strb	wzr, [x20, #1784]
	bl	__wake_up_sync
	adrp	x8, ebc_task
	ldr	x0, [x8, :lo12:ebc_task]
	bl	wake_up_process
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB4_13:
	ldr	w8, [x20, #184]
	ldr	x0, [x20, #304]
	mov	w9, #1                          // =0x1
	adrp	x1, .L.str.47
	add	x1, x1, :lo12:.L.str.47
	adrp	x2, .L.str.48
	add	x2, x2, :lo12:.L.str.48
	sub	w3, w9, w8
	bl	_dev_info
	b	.LBB4_12
.Lfunc_end4:
	.size	frame_done_callback, .Lfunc_end4-frame_done_callback
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_panel_probe
	.type	ebc_panel_probe,@function
ebc_panel_probe:                        // @ebc_panel_probe
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	mov	x2, x0
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	adrp	x1, .L.str.50
	add	x1, x1, :lo12:.L.str.50
	ldr	x21, [x2], #188
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x0
	mov	w3, #1                          // =0x1
	ldr	x0, [x21, #696]
	mov	x4, xzr
	mov	x29, sp
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.1:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.51
	add	x1, x1, :lo12:.L.str.51
	add	x2, x19, #192
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.2:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.52
	add	x1, x1, :lo12:.L.str.52
	add	x2, x19, #196
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.3:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.53
	add	x1, x1, :lo12:.L.str.53
	add	x2, x19, #200
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.4:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.54
	add	x1, x1, :lo12:.L.str.54
	add	x2, x19, #216
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.5:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.55
	add	x1, x1, :lo12:.L.str.55
	add	x2, x19, #220
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.6:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.56
	add	x1, x1, :lo12:.L.str.56
	add	x2, x19, #224
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.7:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.57
	add	x1, x1, :lo12:.L.str.57
	add	x2, x19, #228
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.8:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.58
	add	x1, x1, :lo12:.L.str.58
	add	x2, x19, #232
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.9:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.59
	add	x1, x1, :lo12:.L.str.59
	add	x2, x19, #236
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.10:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.60
	add	x1, x1, :lo12:.L.str.60
	add	x2, x19, #240
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.11:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.61
	add	x1, x1, :lo12:.L.str.61
	add	x2, x19, #244
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.12:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.62
	add	x1, x1, :lo12:.L.str.62
	add	x2, x19, #248
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.13:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.63
	add	x1, x1, :lo12:.L.str.63
	add	x2, x19, #252
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.14:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.64
	add	x1, x1, :lo12:.L.str.64
	add	x2, x19, #256
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_39
// %bb.15:
	ldr	x0, [x21, #696]
	add	x20, x19, #260
	adrp	x1, .L.str.65
	add	x1, x1, :lo12:.L.str.65
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_17
// %bb.16:
	str	wzr, [x20]
.LBB5_17:
	ldr	x0, [x21, #696]
	add	x20, x19, #264
	adrp	x1, .L.str.66
	add	x1, x1, :lo12:.L.str.66
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_19
// %bb.18:
	str	wzr, [x20]
.LBB5_19:
	ldr	x0, [x21, #696]
	add	x20, x19, #268
	adrp	x1, .L.str.67
	add	x1, x1, :lo12:.L.str.67
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_21
// %bb.20:
	str	wzr, [x20]
.LBB5_21:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.68
	add	x1, x1, :lo12:.L.str.68
	add	x2, x19, #204
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_23
// %bb.22:
	stur	wzr, [x19, #204]
.LBB5_23:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.69
	add	x1, x1, :lo12:.L.str.69
	add	x2, x19, #208
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_25
// %bb.24:
	stur	wzr, [x19, #208]
.LBB5_25:
	ldr	x0, [x21, #696]
	add	x20, x19, #272
	adrp	x1, .L.str.70
	add	x1, x1, :lo12:.L.str.70
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_27
// %bb.26:
	str	wzr, [x20]
.LBB5_27:
	ldr	x0, [x21, #696]
	add	x20, x19, #284
	adrp	x1, .L.str.71
	add	x1, x1, :lo12:.L.str.71
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_29
// %bb.28:
	str	wzr, [x20]
.LBB5_29:
	ldr	x0, [x21, #696]
	add	x20, x19, #288
	adrp	x1, .L.str.72
	add	x1, x1, :lo12:.L.str.72
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_31
// %bb.30:
	str	wzr, [x20]
.LBB5_31:
	ldr	x0, [x21, #696]
	add	x20, x19, #292
	adrp	x1, .L.str.73
	add	x1, x1, :lo12:.L.str.73
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	mov	w22, #1                         // =0x1
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_33
// %bb.32:
	str	w22, [x20]
.LBB5_33:
	ldr	x0, [x21, #696]
	add	x20, x19, #276
	adrp	x1, .L.str.74
	add	x1, x1, :lo12:.L.str.74
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_35
// %bb.34:
	str	wzr, [x20]
.LBB5_35:
	ldr	x0, [x21, #696]
	add	x20, x19, #280
	adrp	x1, .L.str.75
	add	x1, x1, :lo12:.L.str.75
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	mov	w22, #1                         // =0x1
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_37
// %bb.36:
	str	wzr, [x20]
.LBB5_37:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.76
	add	x1, x1, :lo12:.L.str.76
	mov	x2, xzr
	bl	of_find_property
	ldr	x8, [x19, #120]
	cmp	x0, #0
	cset	w9, ne
	strb	w9, [x19, #296]
	str	wzr, [x8, #104]
	ldr	x8, [x19, #120]
	str	wzr, [x8, #116]
	ldr	w8, [x19, #264]
	ldr	w9, [x19, #188]
	ldr	x10, [x19, #120]
	cmp	w8, #230
	cinc	w8, w22, ne
	lsr	w8, w9, w8
	str	w8, [x10, #120]
	ldr	w8, [x19, #2020]
	cbz	w8, .LBB5_41
// %bb.38:
	ldp	w8, w9, [x19, #220]
	ldp	w10, w11, [x19, #228]
	mov	w0, wzr
	add	w8, w9, w8
	ldr	x9, [x19, #120]
	add	w10, w10, w11
	add	w8, w8, w10
	str	w8, [x9, #108]
	ldp	w8, w9, [x19, #244]
	ldp	w10, w11, [x19, #252]
	add	w8, w9, w8
	add	w9, w10, w11
	ldr	x10, [x19, #120]
	add	w8, w8, w9
	mov	w9, #4                          // =0x4
	str	w8, [x10, #112]
	ldr	x8, [x19, #120]
	str	w9, [x8, #116]
	ldr	x8, [x19, #120]
	ldr	w9, [x8, #108]
	ldr	w10, [x8, #116]
	mul	w9, w10, w9
	str	w9, [x8, #120]
	ldp	w8, w9, [x19, #220]
	ldr	x10, [x19, #120]
	add	w8, w9, w8
	str	w8, [x10, #104]
	b	.LBB5_40
.LBB5_39:
	mov	w0, #-22                        // =0xffffffea
.LBB5_40:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB5_41:
	mov	w0, wzr
	b	.LBB5_40
.Lfunc_end5:
	.size	ebc_panel_probe, .Lfunc_end5-ebc_panel_probe
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_lut_table_init
	.type	ebc_lut_table_init,@function
ebc_lut_table_init:                     // @ebc_lut_table_init
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #240
	stp	x20, x19, [sp, #224]            // 16-byte Folded Spill
	ldr	x20, [x0]
	mov	x19, x0
	stp	x22, x21, [sp, #208]            // 16-byte Folded Spill
	adrp	x1, .L.str.77
	add	x1, x1, :lo12:.L.str.77
	ldr	x22, [x20, #696]
	stp	x29, x30, [sp, #192]            // 16-byte Folded Spill
	add	x29, sp, #192
	sub	x8, x29, #80
	sub	x5, x29, #80
	mov	x2, xzr
	mov	x0, x22
	mov	w3, wzr
	mov	w4, wzr
	stp	xzr, xzr, [sp, #96]
	stp	xzr, xzr, [sp, #80]
	stp	xzr, xzr, [sp, #64]
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	stp	xzr, xzr, [sp, #16]
	str	wzr, [sp, #12]
	stp	xzr, xzr, [x8, #64]
	stp	xzr, xzr, [x8, #48]
	stp	xzr, xzr, [x8, #32]
	stp	xzr, xzr, [x29, #-64]
	stp	xzr, xzr, [x29, #-80]
	bl	__of_parse_phandle_with_args
	mov	w8, w0
	mov	w0, #-19                        // =0xffffffed
	cbnz	w8, .LBB6_9
// %bb.1:
	ldur	x21, [x29, #-80]
	cbz	x21, .LBB6_9
// %bb.2:
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	add	x2, sp, #12
	mov	x0, x22
	bl	of_get_property
	ldr	w1, [sp, #12]
	cmp	w1, #1
	b.lt	.LBB6_5
// %bb.3:
	bl	pvi_wf_add_custom_mode_table
	cbz	w0, .LBB6_5
// %bb.4:
	mov	w0, #-19                        // =0xffffffed
	b	.LBB6_9
.LBB6_5:
	add	x2, sp, #16
	mov	x0, x21
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB6_9
// %bb.6:
	ldp	x1, x8, [sp, #16]
	mov	x0, x20
	mov	w3, #1                          // =0x1
	sub	x8, x8, x1
	str	x1, [x19, #1400]
	add	x21, x8, #1
	sxtw	x2, w21
	str	w21, [x19, #1408]
	bl	devm_memremap
	str	x0, [x19, #1472]
	cbz	x0, .LBB6_10
// %bb.7:
	bl	epd_lut_from_mem_init
	tbnz	w0, #31, .LBB6_11
.LBB6_8:
	mov	w0, wzr
.LBB6_9:
	ldp	x20, x19, [sp, #224]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #208]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #240
	ldr	x30, [x18, #-8]!
	ret
.LBB6_10:
	ldr	x0, [x19]
	adrp	x1, .L.str.79
	add	x1, x1, :lo12:.L.str.79
	adrp	x2, .L__func__.ebc_lut_table_init
	add	x2, x2, :lo12:.L__func__.ebc_lut_table_init
	mov	w3, #3576                       // =0xdf8
	bl	_dev_err
	mov	w0, #-12                        // =0xfffffff4
	b	.LBB6_9
.LBB6_11:
	ldr	x0, [x19]
	adrp	x1, .L.str.80
	add	x1, x1, :lo12:.L.str.80
	bl	_dev_err
	ldr	x0, [x19]
	ldr	x1, [x19, #1472]
	mov	w2, w21
	bl	epd_lut_from_file_init
	tbz	w0, #31, .LBB6_8
// %bb.12:
	ldr	x0, [x19]
	adrp	x1, .L.str.81
	add	x1, x1, :lo12:.L.str.81
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB6_9
.Lfunc_end6:
	.size	ebc_lut_table_init, .Lfunc_end6-ebc_lut_table_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_ability_init
	.type	ebc_ability_init,@function
ebc_ability_init:                       // @ebc_ability_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	ldr	x20, [x0]
	mov	x29, sp
	mov	x19, x0
	bl	epd_lut_get_wf_bit
	ldr	w8, [x19, #2012]
	cmp	w0, #32
	cset	w9, eq
	cmp	w8, #3576
	strb	w9, [x19, #2026]
	b.ne	.LBB7_2
// %bb.1:
	mov	w9, #1                          // =0x1
	b	.LBB7_3
.LBB7_2:
	ldr	w9, [x19, #2016]
	cmp	w8, #3572
	mov	w10, #3576                      // =0xdf8
	ccmp	w9, w10, #4, ne
	cset	w9, eq
.LBB7_3:
	cmp	w8, #3572
	strb	w9, [x19, #2024]
	strb	w9, [x19, #2025]
	b.ne	.LBB7_6
// %bb.4:
	ldr	w8, [x19, #272]
	cbnz	w8, .LBB7_6
// %bb.5:
	ldr	w8, [x19, #268]
	cbz	w8, .LBB7_12
.LBB7_6:
	mov	w8, wzr
.LBB7_7:
	ldr	w9, [x19, #2020]
	strb	w8, [x19, #2029]
	cbnz	w9, .LBB7_9
// %bb.8:
	ldr	w8, [x19, #264]
	cmp	w8, #230
	b.ne	.LBB7_11
.LBB7_9:
	mov	w8, wzr
.LBB7_10:
	strb	w8, [x19, #2027]
	adrp	x1, .L.str.83
	add	x1, x1, :lo12:.L.str.83
	ldr	x0, [x20, #696]
	mov	x2, xzr
	bl	of_find_property
	cmp	x0, #0
	cset	w8, eq
	strb	w8, [x19, #2028]
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB7_11:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.82
	add	x1, x1, :lo12:.L.str.82
	mov	x2, xzr
	bl	of_find_property
	cmp	x0, #0
	cset	w8, eq
	b	.LBB7_10
.LBB7_12:
	mov	w8, #1                          // =0x1
	b	.LBB7_7
.Lfunc_end7:
	.size	ebc_ability_init, .Lfunc_end7-ebc_ability_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_buffer_manage_init
	.type	ebc_buffer_manage_init,@function
ebc_buffer_manage_init:                 // @ebc_buffer_manage_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	ldp	w8, w9, [x0, #188]
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	ldr	x20, [x0]
	mov	x19, x0
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	mul	w8, w9, w8
	ldr	w9, [x0, #2020]
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	str	wzr, [x0, #440]
	str	w8, [x0, #424]
	cbz	w9, .LBB8_2
// %bb.1:
	ldp	w8, w9, [x19, #244]
	ldp	w12, w11, [x19, #252]
	ldr	x10, [x19, #120]
	add	w9, w9, w8
	ldr	w13, [x10, #108]
	add	w8, w11, w12
	ldr	w10, [x10, #116]
	add	w8, w8, w9
	mul	w8, w8, w13
	mul	w21, w13, w9
	mul	w8, w8, w10
	b	.LBB8_5
.LBB8_2:
	ldr	w9, [x19, #264]
	cmp	w9, #230
	b.ne	.LBB8_4
// %bb.3:
	mov	w21, wzr
	lsr	w8, w8, #1
	b	.LBB8_5
.LBB8_4:
	lsr	w8, w8, #2
	mov	w21, wzr
.LBB8_5:
	sxtw	x2, w8
	add	x1, x19, #448
	mov	x0, x20
	str	w8, [x19, #428]
	bl	ebc_alloc_dma_cma_buf
	cbnz	w0, .LBB8_74
// %bb.6:
	ldp	x8, x9, [x19, #448]
	add	x1, x19, #520
	ldr	x10, [x19, #464]
	ldrsw	x2, [x19, #428]
	mov	x0, x20
	stp	x9, x8, [x19, #136]
	str	x10, [x19, #152]
	bl	ebc_alloc_dma_cma_buf
	cbnz	w0, .LBB8_76
// %bb.7:
	ldr	x8, [x19, #520]
	ldr	x0, [x19, #528]
	ldr	x9, [x19, #536]
	ldr	w10, [x19, #2020]
	stp	x0, x8, [x19, #160]
	str	x9, [x19, #176]
	cbz	w10, .LBB8_39
// %bb.8:
	ldr	x11, [x19, #120]
	ldr	w8, [x11, #112]
	cbz	w8, .LBB8_37
// %bb.9:
	ldr	w12, [x19, #284]
	ldr	w11, [x11, #108]
	mov	x9, xzr
	mov	w10, wzr
	mov	w15, wzr
	mov	w14, wzr
	cmp	w12, #0
	mov	w12, #1                         // =0x1
	cset	w13, ne
	b	.LBB8_11
.LBB8_10:                               //   in Loop: Header=BB8_11 Depth=1
	add	w10, w10, #1
	add	x9, x9, x11
	cmp	w10, w8
	b.eq	.LBB8_36
.LBB8_11:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB8_15 Depth 2
	cbz	w11, .LBB8_10
// %bb.12:                              //   in Loop: Header=BB8_11 Depth=1
	mov	x16, xzr
	b	.LBB8_15
.LBB8_13:                               //   in Loop: Header=BB8_15 Depth=2
	lsl	w0, w0, #11
	and	w1, w12, #0xff
	cmp	x16, x17
	bfi	w0, w13, #12, #8
	orr	w0, w0, w1, lsl #15
	and	w1, w14, #0xff
	orr	w0, w0, w15, lsl #14
	orr	w17, w0, w1, lsl #13
	cset	w0, lo
	add	w1, w9, w16
	orr	w17, w17, w0, lsl #10
	ldr	x0, [x19, #136]
	orr	w17, w17, #0xff000000
	str	w17, [x0, w1, uxtw #2]
.LBB8_14:                               //   in Loop: Header=BB8_15 Depth=2
	add	x16, x16, #1
	cmp	x11, x16
	b.eq	.LBB8_10
.LBB8_15:                               //   Parent Loop BB8_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldp	w0, w17, [x19, #244]
	add	w17, w17, w0
	cmp	w10, w17
	b.hs	.LBB8_19
// %bb.16:                              //   in Loop: Header=BB8_15 Depth=2
	ldp	w17, w3, [x19, #220]
	ldp	w1, w2, [x19, #236]
	add	w1, w1, w17
	cmp	x16, x1
	add	w1, w2, w1
	cset	w2, hs
	cmp	w10, w0
	add	w0, w3, w17
	cset	w4, hs
	cmp	x16, w1, uxtw
	csel	w1, wzr, w2, hs
	csel	w12, w12, w4, lo
	cmp	x16, x0
	b.lo	.LBB8_21
// %bb.17:                              //   in Loop: Header=BB8_15 Depth=2
	ldr	w2, [x19, #228]
	add	w0, w2, w0
	cmp	x16, x0
	b.hs	.LBB8_21
// %bb.18:                              //   in Loop: Header=BB8_15 Depth=2
	mov	w0, wzr
	b	.LBB8_22
.LBB8_19:                               //   in Loop: Header=BB8_15 Depth=2
	ldr	w14, [x19, #252]
	add	w14, w14, w17
	cmp	w10, w14
	b.ls	.LBB8_23
// %bb.20:                              //   in Loop: Header=BB8_15 Depth=2
	ldr	w15, [x19, #284]
	mov	w14, wzr
	cmp	w15, #0
	csel	w13, wzr, w13, eq
	b	.LBB8_24
.LBB8_21:                               //   in Loop: Header=BB8_15 Depth=2
	mov	w0, #1                          // =0x1
.LBB8_22:                               //   in Loop: Header=BB8_15 Depth=2
	tst	w15, #0xff
	mov	w15, w1
	cset	w2, eq
	tst	w2, w1
	csinc	w14, w14, wzr, eq
	b	.LBB8_34
.LBB8_23:                               //   in Loop: Header=BB8_15 Depth=2
	mov	w13, #1                         // =0x1
	mov	w14, #1                         // =0x1
.LBB8_24:                               //   in Loop: Header=BB8_15 Depth=2
	ldr	w17, [x19, #220]
	ldr	w15, [x19, #236]
	add	w15, w15, w17
	cmp	x16, x15
	b.lo	.LBB8_27
// %bb.25:                              //   in Loop: Header=BB8_15 Depth=2
	ldr	w0, [x19, #240]
	add	w15, w0, w15
	cmp	x16, x15
	b.hs	.LBB8_27
// %bb.26:                              //   in Loop: Header=BB8_15 Depth=2
	mov	w15, #1                         // =0x1
	b	.LBB8_28
.LBB8_27:                               //   in Loop: Header=BB8_15 Depth=2
	mov	w15, wzr
.LBB8_28:                               //   in Loop: Header=BB8_15 Depth=2
	ldr	w0, [x19, #224]
	add	w0, w0, w17
	cmp	x16, x0
	b.lo	.LBB8_33
// %bb.29:                              //   in Loop: Header=BB8_15 Depth=2
	ldr	w1, [x19, #288]
	cbnz	w1, .LBB8_31
// %bb.30:                              //   in Loop: Header=BB8_15 Depth=2
	ldr	w1, [x19, #228]
.LBB8_31:                               //   in Loop: Header=BB8_15 Depth=2
	add	w0, w1, w0
	cmp	x16, x0
	b.hs	.LBB8_33
// %bb.32:                              //   in Loop: Header=BB8_15 Depth=2
	mov	w0, wzr
	b	.LBB8_34
.LBB8_33:                               //   in Loop: Header=BB8_15 Depth=2
	mov	w0, #1                          // =0x1
.LBB8_34:                               //   in Loop: Header=BB8_15 Depth=2
	ldr	x1, [x19, #120]
	mov	w17, w17
	ldr	w1, [x1, #116]
	cmp	w1, #2
	b.ne	.LBB8_13
// %bb.35:                              //   in Loop: Header=BB8_15 Depth=2
	lsl	w1, w13, #12
	lsl	w2, w12, #15
	cmp	x16, x17
	cset	w17, lo
	orr	w0, w1, w0, lsl #11
	orr	w1, w2, w15, lsl #14
	orr	w0, w0, w14, lsl #13
	orr	w0, w0, w1
	ldr	x1, [x19, #136]
	orr	w17, w0, w17, lsl #10
	add	w0, w9, w16
	strh	w17, [x1, w0, uxtw #1]
	b	.LBB8_14
.LBB8_36:
	ldr	x0, [x19, #160]
.LBB8_37:
	ldr	x1, [x19, #136]
	ldr	x2, [x19, #152]
	bl	memcpy
	ldr	w8, [x19, #2020]
	cbz	w8, .LBB8_39
// %bb.38:
	ldr	x8, [x19, #120]
	ldr	x10, [x19, #136]
	ldr	x11, [x19, #160]
	ldr	w9, [x8, #116]
	mul	w9, w9, w21
	add	x9, x10, x9
	str	x9, [x19, #1760]
	ldr	w9, [x8, #116]
	mul	w9, w9, w21
	add	x9, x11, x9
	str	x9, [x19, #1768]
	ldr	w9, [x8, #116]
	mul	w9, w9, w21
	add	x9, x10, x9
	str	x9, [x19, #1760]
	ldr	w8, [x8, #116]
	mul	w8, w8, w21
	add	x8, x11, x8
	str	x8, [x19, #1768]
	b	.LBB8_40
.LBB8_39:
	ldr	x8, [x19, #136]
	ldr	x9, [x19, #160]
	str	x8, [x19, #1760]
	str	x9, [x19, #1768]
.LBB8_40:
	ldrb	w8, [x19, #2029]
	cmp	w8, #1
	b.ne	.LBB8_43
// %bb.41:
	ldrsw	x2, [x19, #424]
	add	x1, x19, #1528
	mov	x0, x20
	bl	ebc_alloc_dma_cma_buf
	cbnz	w0, .LBB8_80
// %bb.42:
	ldrsw	x2, [x19, #424]
	add	x1, x19, #1600
	mov	x0, x20
	bl	ebc_alloc_dma_cma_buf
	cbnz	w0, .LBB8_82
.LBB8_43:
	bl	ebc_buf_list_init
	cbnz	w0, .LBB8_78
// %bb.44:
	ldr	x0, [x20, #696]
	add	x22, x19, #444
	adrp	x1, .L.str.88
	add	x1, x1, :lo12:.L.str.88
	mov	x2, x22
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB8_46
// %bb.45:
	ldr	w8, [x22]
	sub	w8, w8, #5
	cmn	w8, #3
	b.hi	.LBB8_47
.LBB8_46:
	mov	w8, #4                          // =0x4
	str	w8, [x22]
.LBB8_47:
	mov	x21, xzr
	add	x23, x19, #592
.LBB8_48:                               // =>This Inner Loop Header: Depth=1
	ldrsw	x2, [x19, #424]
	mov	x0, x20
	mov	x1, x23
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_79
// %bb.49:                              //   in Loop: Header=BB8_48 Depth=1
	ldr	w0, [x19, #440]
	add	w8, w0, #1
	str	w8, [x19, #440]
	ldp	x1, x2, [x23, #8]
	str	w0, [x23, #24]
	bl	ebc_dsp_buf_init
	cbnz	w0, .LBB8_73
// %bb.50:                              //   in Loop: Header=BB8_48 Depth=1
	ldrsw	x8, [x22]
	add	x21, x21, #1
	add	x23, x23, #72
	cmp	x21, x8
	b.lt	.LBB8_48
// %bb.51:
	ldrb	w8, [x19, #2027]
	cmp	w8, #1
	b.ne	.LBB8_54
// %bb.52:
	ldrsw	x2, [x19, #424]
	add	x1, x19, #1024
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_86
// %bb.53:
	ldr	w8, [x19, #440]
	ldr	x0, [x19, #1032]
	mov	w1, #255                        // =0xff
	ldrsw	x2, [x19, #424]
	add	w9, w8, #1
	str	w8, [x19, #1048]
	str	w9, [x19, #440]
	bl	memset
	ldr	w0, [x19, #1048]
	ldr	x1, [x19, #1032]
	ldr	x2, [x19, #1040]
	bl	ebc_osd_buf_init
	cbnz	w0, .LBB8_73
.LBB8_54:
	add	x1, x19, #880
	mov	x0, x20
	mov	w2, #1048576                    // =0x100000
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_75
// %bb.55:
	ldr	x9, [x19, #888]
	ldrb	w8, [x19, #2027]
	str	x9, [x19, #1744]
	tbz	w8, #0, .LBB8_58
// %bb.56:
	add	x1, x19, #952
	mov	x0, x20
	mov	w2, #1048576                    // =0x100000
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_75
// %bb.57:
	ldrb	w8, [x19, #2027]
	ldr	x9, [x19, #960]
	cmp	w8, #1
	str	x9, [x19, #1752]
	b.eq	.LBB8_59
.LBB8_58:
	str	xzr, [x19, #1752]
.LBB8_59:
	ldrb	w9, [x19, #2028]
	cmp	w9, #1
	b.ne	.LBB8_62
// %bb.60:
	ldrsw	x2, [x19, #424]
	add	x1, x19, #1096
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_89
// %bb.61:
	ldr	w8, [x19, #440]
	ldrb	w9, [x19, #2027]
	add	w10, w8, #1
	str	w8, [x19, #1120]
	str	w10, [x19, #440]
	tbz	w9, #0, .LBB8_63
	b	.LBB8_64
.LBB8_62:
	tbnz	w8, #0, .LBB8_64
.LBB8_63:
	ldrb	w8, [x19, #2024]
	cmp	w8, #1
	b.ne	.LBB8_71
.LBB8_64:
	ldrsw	x2, [x19, #424]
	add	x1, x19, #1168
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_81
// %bb.65:
	ldr	x0, [x19, #1176]
	ldrsw	x2, [x19, #424]
	mov	w1, #255                        // =0xff
	bl	memset
	ldr	w8, [x19, #440]
	ldrsw	x2, [x19, #424]
	add	x1, x19, #1240
	mov	x0, x20
	add	w9, w8, #1
	str	w8, [x19, #1192]
	str	w9, [x19, #440]
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_83
// %bb.66:
	ldr	x0, [x19, #1248]
	ldrsw	x2, [x19, #424]
	mov	w1, #255                        // =0xff
	bl	memset
	ldr	w8, [x19, #440]
	ldrsw	x2, [x19, #424]
	add	x1, x19, #1384
	mov	x0, x20
	add	w9, w8, #1
	str	w8, [x19, #1264]
	str	w9, [x19, #440]
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_84
// %bb.67:
	ldr	x0, [x19, #1392]
	ldrsw	x2, [x19, #424]
	mov	w1, wzr
	bl	memset
	ldr	w8, [x19, #440]
	ldrsw	x2, [x19, #424]
	add	x1, x19, #1456
	mov	x0, x20
	add	w9, w8, #1
	str	w8, [x19, #1408]
	str	w9, [x19, #440]
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_85
// %bb.68:
	ldr	x0, [x19, #1464]
	ldrsw	x2, [x19, #424]
	mov	w1, wzr
	bl	memset
	ldr	w8, [x19, #440]
	ldrb	w9, [x19, #2024]
	add	w10, w8, #1
	str	w8, [x19, #1480]
	str	w10, [x19, #440]
	tbz	w9, #0, .LBB8_72
.LBB8_69:
	ldrsw	x2, [x19, #424]
	add	x1, x19, #1312
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_90
// %bb.70:
	ldr	x0, [x19, #1320]
	ldrsw	x2, [x19, #424]
	mov	w1, #240                        // =0xf0
	bl	memset
	ldr	w8, [x19, #440]
	mov	w0, wzr
	add	w9, w8, #1
	str	w8, [x19, #1336]
	str	w9, [x19, #440]
	b	.LBB8_94
.LBB8_71:
	cbnz	w8, .LBB8_69
.LBB8_72:
	mov	w0, wzr
	b	.LBB8_94
.LBB8_73:
	adrp	x1, .L.str.90
	add	x1, x1, :lo12:.L.str.90
	b	.LBB8_87
.LBB8_74:
	mov	w21, w0
	mov	w2, wzr
	b	.LBB8_77
.LBB8_75:
	mov	w21, w0
	adrp	x1, .L.str.92
	add	x1, x1, :lo12:.L.str.92
	mov	x0, x20
	mov	w2, w21
	b	.LBB8_92
.LBB8_76:
	mov	w21, w0
	mov	w2, #1                          // =0x1
.LBB8_77:
	adrp	x1, .L.str.84
	add	x1, x1, :lo12:.L.str.84
	mov	x0, x20
	mov	w3, w21
	b	.LBB8_88
.LBB8_78:
	adrp	x1, .L.str.87
	add	x1, x1, :lo12:.L.str.87
	b	.LBB8_91
.LBB8_79:
	adrp	x1, .L.str.89
	add	x1, x1, :lo12:.L.str.89
	b	.LBB8_87
.LBB8_80:
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	b	.LBB8_91
.LBB8_81:
	adrp	x1, .L.str.94
	add	x1, x1, :lo12:.L.str.94
	b	.LBB8_91
.LBB8_82:
	adrp	x1, .L.str.86
	add	x1, x1, :lo12:.L.str.86
	b	.LBB8_91
.LBB8_83:
	adrp	x1, .L.str.95
	add	x1, x1, :lo12:.L.str.95
	b	.LBB8_91
.LBB8_84:
	adrp	x1, .L.str.96
	add	x1, x1, :lo12:.L.str.96
	b	.LBB8_91
.LBB8_85:
	adrp	x1, .L.str.97
	add	x1, x1, :lo12:.L.str.97
	b	.LBB8_91
.LBB8_86:
	adrp	x1, .L.str.91
	add	x1, x1, :lo12:.L.str.91
.LBB8_87:
	mov	w3, w0
	mov	x0, x20
	mov	w2, w21
	mov	w21, w3
.LBB8_88:
	bl	_dev_err
	b	.LBB8_93
.LBB8_89:
	adrp	x1, .L.str.93
	add	x1, x1, :lo12:.L.str.93
	b	.LBB8_91
.LBB8_90:
	adrp	x1, .L.str.98
	add	x1, x1, :lo12:.L.str.98
.LBB8_91:
	mov	w2, w0
	mov	x0, x20
	mov	w21, w2
.LBB8_92:
	bl	_dev_err
.LBB8_93:
	mov	x0, x19
	bl	ebc_buffer_manage_uninit
	mov	w0, w21
.LBB8_94:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end8:
	.size	ebc_buffer_manage_init, .Lfunc_end8-ebc_buffer_manage_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_task_init
	.type	ebc_task_init,@function
ebc_task_init:                          // @ebc_task_init
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #48
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x0
	mov	w8, #99                         // =0x63
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x0, ebc_assist_thread
	add	x0, x0, :lo12:ebc_assist_thread
	adrp	x3, .L.str.99
	add	x3, x3, :lo12:.L.str.99
	mov	x1, x19
	mov	w2, #-1                         // =0xffffffff
	stur	w8, [x29, #-4]
	bl	kthread_create_on_node
	adrp	x20, ebc_assist_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_assist_task]
	b.hs	.LBB9_14
// %bb.1:
	sub	x2, x29, #4
	mov	w1, #1                          // =0x1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #1696]
	cmp	w8, #8
	b.lt	.LBB9_3
// %bb.2:
	ldr	x0, [x20, :lo12:ebc_assist_task]
	adrp	x1, cpu_bit_bitmap+56
	add	x1, x1, :lo12:cpu_bit_bitmap+56
	bl	set_cpus_allowed_ptr
.LBB9_3:
	ldr	x8, [x20, :lo12:ebc_assist_task]
	add	x0, x8, #64
	//APP
.Ltmp3:
	b	.LBB9_19
.Ltmp4:
	.section	.altinstructions,"a",@progbits
.Ltmp5:
	.word	.Ltmp3-.Ltmp5
.Ltmp6:
	.word	alt_cb_patch_nops-.Ltmp6
	.hword	32805
	.byte	.Ltmp4-.Ltmp3
	.byte	.Ltmp7-.Ltmp8
	.text

.Ltmp8:
.Ltmp7:

	//NO_APP
// %bb.4:
	mov	w8, #1                          // =0x1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB9_20
.LBB9_5:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB9_17
.LBB9_6:
	adrp	x0, ebc_thread
	add	x0, x0, :lo12:ebc_thread
	adrp	x3, .L.str.101
	add	x3, x3, :lo12:.L.str.101
	mov	x1, x19
	mov	w2, #-1                         // =0xffffffff
	bl	kthread_create_on_node
	adrp	x20, ebc_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_task]
	b.hs	.LBB9_15
// %bb.7:
	sub	x2, x29, #4
	mov	w1, #1                          // =0x1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #1696]
	cmp	w8, #8
	b.lt	.LBB9_9
// %bb.8:
	ldr	x0, [x20, :lo12:ebc_task]
	adrp	x1, cpu_bit_bitmap+64
	add	x1, x1, :lo12:cpu_bit_bitmap+64
	bl	set_cpus_allowed_ptr
.LBB9_9:
	ldr	x8, [x20, :lo12:ebc_task]
	add	x0, x8, #64
	//APP
.Ltmp9:
	b	.LBB9_22
.Ltmp10:
	.section	.altinstructions,"a",@progbits
.Ltmp11:
	.word	.Ltmp9-.Ltmp11
.Ltmp12:
	.word	alt_cb_patch_nops-.Ltmp12
	.hword	32805
	.byte	.Ltmp10-.Ltmp9
	.byte	.Ltmp13-.Ltmp14
	.text

.Ltmp14:
.Ltmp13:

	//NO_APP
// %bb.10:
	mov	w8, #1                          // =0x1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB9_23
.LBB9_11:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB9_18
.LBB9_12:
	mov	w1, #14                         // =0xe
	adrp	x0, .L.str.103
	add	x0, x0, :lo12:.L.str.103
	adrp	x3, .L.str.104
	add	x3, x3, :lo12:.L.str.104
	movk	w1, #2, lsl #16
	mov	w2, #1                          // =0x1
	bl	alloc_workqueue
	mov	x8, #4503599625273344           // =0xfffffffe00000
	add	x9, x19, #24
	adrp	x1, delayed_work_timer_fn
	add	x1, x1, :lo12:delayed_work_timer_fn
	stp	x0, x8, [x19, #8]
	adrp	x8, ebc_delay_power_off
	add	x8, x8, :lo12:ebc_delay_power_off
	add	x0, x19, #48
	mov	w2, #2097152                    // =0x200000
	mov	x3, xzr
	mov	x4, xzr
	str	x9, [x19, #24]
	str	x9, [x19, #32]
	str	x8, [x19, #40]
	bl	init_timer_key
	mov	w0, wzr
.LBB9_13:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #48
	ldr	x30, [x18, #-8]!
	ret
.LBB9_14:
	ldr	x0, [x19]
	adrp	x1, .L.str.100
	add	x1, x1, :lo12:.L.str.100
	b	.LBB9_16
.LBB9_15:
	ldr	x0, [x19]
	adrp	x1, .L.str.102
	add	x1, x1, :lo12:.L.str.102
.LBB9_16:
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB9_13
.LBB9_17:
	mov	w1, #1                          // =0x1
	b	.LBB9_21
.LBB9_18:
	mov	w1, #1                          // =0x1
	b	.LBB9_24
.LBB9_19:                               // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp15:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp15

	//NO_APP
	cbnz	w8, .LBB9_5
.LBB9_20:
	mov	w1, #2                          // =0x2
.LBB9_21:
	bl	refcount_warn_saturate
	b	.LBB9_6
.LBB9_22:                               // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp16:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp16

	//NO_APP
	cbnz	w8, .LBB9_11
.LBB9_23:
	mov	w1, #2                          // =0x2
.LBB9_24:
	bl	refcount_warn_saturate
	b	.LBB9_12
.Lfunc_end9:
	.size	ebc_task_init, .Lfunc_end9-ebc_task_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_other_init
	.type	ebc_other_init,@function
ebc_other_init:                         // @ebc_other_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	mov	x8, #8589934592                 // =0x200000000
	add	x9, x0, #1484
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	mov	x19, x0
	str	xzr, [x0, #1728]
	str	x8, [x9]
	add	x20, x0, #4, lsl #12            // =16384
	strb	wzr, [x0, #1480]
	bl	ebc_get_init_log_level
	ldrb	w9, [x19, #1720]
	mov	w8, #2                          // =0x2
	mov	w10, #18223                     // =0x472f
	str	w8, [x20, #1772]
	mov	w8, #1                          // =0x1
	add	x10, x19, x10
	str	w9, [x20, #1776]
	ldr	w9, [x19, #132]
	str	w0, [x19, #1704]
	add	x0, x19, #1496
	str	w8, [x20, #1780]
	strb	w8, [x20, #1768]
	str	w8, [x20, #1804]
	str	w9, [x20, #1828]
	mov	w9, #-1                         // =0xffffffff
	strb	w8, [x20, #1838]
	strb	w8, [x20, #1736]
	adrp	x8, .L.str.177
	add	x8, x8, :lo12:.L.str.177
	str	wzr, [x20, #1740]
	strh	wzr, [x20, #1820]
	str	wzr, [x20, #1832]
	strb	wzr, [x19, #1694]
	str	w9, [x20, #1764]
	str	xzr, [x19, #1376]
	str	xzr, [x19, #1392]
	str	wzr, [x10]
	strb	wzr, [x10, #4]
	str	w9, [x19, #1412]
	strb	wzr, [x20, #1844]
	str	xzr, [x19, #1504]
	str	xzr, [x19, #1512]
	str	xzr, [x19, #1520]
	str	xzr, [x19, #1528]
	str	xzr, [x19, #1536]
	str	xzr, [x19, #1544]
	str	xzr, [x19, #1552]
	str	xzr, [x19, #1560]
	str	xzr, [x19, #1568]
	str	xzr, [x19, #1576]
	str	xzr, [x19, #1584]
	str	xzr, [x19, #1592]
	str	xzr, [x19, #1600]
	str	xzr, [x19, #1608]
	str	xzr, [x19, #1616]
	str	xzr, [x19, #1624]
	str	xzr, [x19, #1632]
	str	xzr, [x19, #1640]
	str	xzr, [x19, #1648]
	str	xzr, [x19, #1656]
	str	xzr, [x19, #1664]
	str	xzr, [x19, #1672]
	str	xzr, [x19, #1680]
	str	x8, [x19, #1496]
	bl	wakeup_source_add
	str	wzr, [x19, #1688]
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end10:
	.size	ebc_other_init, .Lfunc_end10-ebc_other_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_logo_init
	.type	ebc_logo_init,@function
ebc_logo_init:                          // @ebc_logo_init
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #288
	adrp	x8, saved_command_line
	stp	x22, x21, [sp, #256]            // 16-byte Folded Spill
	ldr	x21, [x8, :lo12:saved_command_line]
	stp	x29, x30, [sp, #192]            // 16-byte Folded Spill
	add	x29, sp, #192
	stp	x26, x25, [sp, #224]            // 16-byte Folded Spill
	mov	x25, x0
	stp	x20, x19, [sp, #272]            // 16-byte Folded Spill
	mov	x20, x1
	ldr	x19, [x0]
	adrp	x1, .L.str.178
	add	x1, x1, :lo12:.L.str.178
	mov	x0, x21
	stp	x28, x27, [sp, #208]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #240]            // 16-byte Folded Spill
	stur	wzr, [x29, #-92]
	str	wzr, [sp, #96]
	bl	strstr
	mov	x24, x0
	adrp	x1, .L.str.179
	add	x1, x1, :lo12:.L.str.179
	mov	x0, x21
	bl	strstr
	mov	x26, x0
	ldr	x0, [x19, #696]
	adrp	x1, .L.str.180
	add	x1, x1, :lo12:.L.str.180
	sub	x5, x29, #88
	mov	x2, xzr
	ldp	w21, w22, [x20, #76]
	mov	w3, wzr
	mov	w4, wzr
	stp	xzr, xzr, [sp, #80]
	stp	xzr, xzr, [sp, #64]
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	stp	xzr, xzr, [sp, #16]
	stp	xzr, xzr, [sp]
	stp	xzr, xzr, [x29, #-24]
	stp	xzr, xzr, [x29, #-40]
	stp	xzr, xzr, [x29, #-56]
	stp	xzr, xzr, [x29, #-72]
	stp	xzr, xzr, [x29, #-88]
	bl	__of_parse_phandle_with_args
	cbnz	w0, .LBB11_53
// %bb.1:
	ldur	x0, [x29, #-88]
	cbz	x0, .LBB11_53
// %bb.2:
	mov	x2, sp
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB11_49
// %bb.3:
	mul	w8, w22, w21
	ldp	x21, x9, [sp]
	lsr	w2, w8, #1
	sub	x8, x9, x21
	add	x8, x8, #1
	cmp	w2, w8
	b.gt	.LBB11_50
// %bb.4:
	mov	w22, w8
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	mov	w3, #1                          // =0x1
	bl	devm_memremap
	cbz	x0, .LBB11_51
// %bb.5:
	mov	x23, x0
	cbz	x24, .LBB11_8
// %bb.6:
	adrp	x1, .L.str.184
	add	x1, x1, :lo12:.L.str.184
	sub	x2, x29, #92
	mov	x0, x24
	bl	sscanf
	ldur	w2, [x29, #-92]
	cmp	x21, x2
	b.ls	.LBB11_54
// %bb.7:
	mov	x24, xzr
.LBB11_8:
	mov	w28, #1                         // =0x1
	cbz	x26, .LBB11_56
.LBB11_9:
	adrp	x1, .L.str.187
	add	x1, x1, :lo12:.L.str.187
	add	x2, sp, #96
	mov	x0, x26
	bl	sscanf
	ldr	w2, [sp, #96]
	cmp	x21, x2
	b.ls	.LBB11_59
// %bb.10:
	mov	x26, xzr
	mov	w27, #1                         // =0x1
	cbnz	w28, .LBB11_57
.LBB11_11:
	adrp	x0, .L.str.191
	add	x0, x0, :lo12:.L.str.191
	bl	ebc_empty_buf_get
	cbz	x0, .LBB11_17
// %bb.12:
	ldp	w8, w9, [x20, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB11_15
// %bb.13:
	lsr	w8, w8, #1
	ldr	x10, [x0, #8]
	mov	x9, x24
.LBB11_14:                              // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x9], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w11, [x10, #1]
	strb	w12, [x10]
	add	x12, x10, #2
	mov	x10, x12
	b.ne	.LBB11_14
.LBB11_15:
	mov	w8, #7                          // =0x7
	str	xzr, [x0, #40]
	mov	w9, #1                          // =0x1
	str	w8, [x0, #32]
	ldr	w8, [x20, #76]
	str	w8, [x0, #48]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x0, #52]
.LBB11_16:
	bl	ebc_add_to_dsp_buf_list_tail
.LBB11_17:
	tbnz	w27, #0, .LBB11_23
// %bb.18:
	adrp	x0, .L.str.191
	add	x0, x0, :lo12:.L.str.191
	bl	ebc_empty_buf_get
	cbz	x0, .LBB11_23
// %bb.19:
	ldp	w8, w9, [x20, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB11_22
// %bb.20:
	lsr	w8, w8, #1
	ldr	x10, [x0, #8]
	mov	x9, x26
.LBB11_21:                              // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x9], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w11, [x10, #1]
	strb	w12, [x10]
	add	x12, x10, #2
	mov	x10, x12
	b.ne	.LBB11_21
.LBB11_22:
	mov	w8, #7                          // =0x7
	str	xzr, [x0, #40]
	mov	w9, #1                          // =0x1
	str	w8, [x0, #32]
	ldr	w8, [x20, #76]
	str	w8, [x0, #48]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x0, #52]
	bl	ebc_add_to_dsp_buf_list_tail
.LBB11_23:
	adrp	x8, ebc_task
	ldr	x0, [x8, :lo12:ebc_task]
	bl	wake_up_process
	cbz	x24, .LBB11_25
.LBB11_24:
	mov	x0, x24
	bl	kfree
.LBB11_25:
	cbz	x26, .LBB11_27
// %bb.26:
	mov	x0, x26
	bl	kfree
.LBB11_27:
	mov	x0, x19
	mov	x1, x23
	bl	devm_memunmap
	add	x8, x21, x22
	and	x19, x21, #0xfffffffffffff000
	add	x8, x8, #4095
	and	x20, x8, #0xfffffffffffff000
	cmp	x19, x20
	b.hs	.LBB11_53
// %bb.28:
	lsr	x8, x21, #12
	mov	x9, #-8589934592                // =0xfffffffe00000000
	adrp	x22, memstart_addr
	movk	x9, #49152, lsl #16
	mov	x23, #281474976706560           // =0xfffffffff000
	adrp	x24, mem_section
	add	x21, x9, x8, lsl #6
	//APP
	mrs	x25, SP_EL0
	//NO_APP
	b	.LBB11_32
.LBB11_29:                              //   in Loop: Header=BB11_32 Depth=1
	//APP
	//NO_APP
	ldr	x8, [x25, #16]
	subs	x8, x8, #1
	str	w8, [x25, #16]
	b.eq	.LBB11_47
// %bb.30:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x8, [x25, #16]
	cbz	x8, .LBB11_47
.LBB11_31:                              //   in Loop: Header=BB11_32 Depth=1
	add	x19, x19, #1, lsl #12           // =4096
	add	x21, x21, #64
	cmp	x19, x20
	b.hs	.LBB11_53
.LBB11_32:                              // =>This Inner Loop Header: Depth=1
	cmp	x19, x23
	b.hi	.LBB11_31
// %bb.33:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x8, [x24, :lo12:mem_section]
	cbz	x8, .LBB11_36
// %bb.34:                              //   in Loop: Header=BB11_32 Depth=1
	lsr	x9, x19, #32
	and	x9, x9, #0xfffffff8
	ldr	x8, [x8, x9]
	cbz	x8, .LBB11_36
// %bb.35:                              //   in Loop: Header=BB11_32 Depth=1
	lsr	x9, x19, #27
	add	x8, x8, w9, uxtb #4
.LBB11_36:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x26, [x22, :lo12:memstart_addr]
	ldr	w9, [x25, #16]
	add	w9, w9, #1
	str	w9, [x25, #16]
	//APP
	//NO_APP
	cbz	x8, .LBB11_29
// %bb.37:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x9, [x8]
	tbz	w9, #1, .LBB11_29
// %bb.38:                              //   in Loop: Header=BB11_32 Depth=1
	tbnz	w9, #3, .LBB11_41
// %bb.39:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x8, [x8, #8]
	cbz	x8, .LBB11_42
// %bb.40:                              //   in Loop: Header=BB11_32 Depth=1
	lsr	x9, x19, #21
	ldr	x8, [x8, #16]
	lsr	x8, x8, x9
	and	w27, w8, #0x1
	b	.LBB11_43
.LBB11_41:                              //   in Loop: Header=BB11_32 Depth=1
	mov	w27, #1                         // =0x1
	b	.LBB11_43
.LBB11_42:                              //   in Loop: Header=BB11_32 Depth=1
	mov	w27, wzr
.LBB11_43:                              //   in Loop: Header=BB11_32 Depth=1
	//APP
	//NO_APP
	ldr	x8, [x25, #16]
	subs	x8, x8, #1
	str	w8, [x25, #16]
	b.eq	.LBB11_48
// %bb.44:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x8, [x25, #16]
	cbz	x8, .LBB11_48
// %bb.45:                              //   in Loop: Header=BB11_32 Depth=1
	cbz	w27, .LBB11_31
.LBB11_46:                              //   in Loop: Header=BB11_32 Depth=1
	asr	x8, x26, #12
	sub	x0, x21, x8, lsl #6
	bl	free_reserved_page
	b	.LBB11_31
.LBB11_47:                              //   in Loop: Header=BB11_32 Depth=1
	mov	w27, wzr
.LBB11_48:                              //   in Loop: Header=BB11_32 Depth=1
	bl	preempt_schedule
	cbnz	w27, .LBB11_46
	b	.LBB11_31
.LBB11_49:
	adrp	x1, .L.str.181
	add	x1, x1, :lo12:.L.str.181
	b	.LBB11_52
.LBB11_50:
	adrp	x1, .L.str.182
	add	x1, x1, :lo12:.L.str.182
	mov	x0, x19
	bl	_dev_err
	b	.LBB11_53
.LBB11_51:
	adrp	x1, .L.str.183
	add	x1, x1, :lo12:.L.str.183
.LBB11_52:
	mov	x0, x19
	bl	_dev_err
.LBB11_53:
	ldp	x20, x19, [sp, #272]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #256]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #240]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #224]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #208]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #288
	ldr	x30, [x18, #-8]!
	ret
.LBB11_54:
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.185
	add	x1, x1, :lo12:.L.str.185
                                        // kill: def $w2 killed $w2 killed $x2
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520                       // =0xdc0
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc_noprof
	cbz	x0, .LBB11_63
// %bb.55:
	ldp	w8, w9, [x20, #76]
	mov	x24, x0
	mul	w8, w9, w8
	ldur	w9, [x29, #-92]
	lsr	w2, w8, #1
	sub	x8, x23, x21
	add	x1, x8, x9
	bl	memcpy
	mov	w28, wzr
	cbnz	x26, .LBB11_9
.LBB11_56:
	mov	w27, #1                         // =0x1
	cbz	w28, .LBB11_11
.LBB11_57:
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.190
	add	x1, x1, :lo12:.L.str.190
	bl	_dev_info
	ldr	x0, [x25, #16]
	cbz	x0, .LBB11_61
// %bb.58:
	bl	ebc_pmic_verity_vcom
	b	.LBB11_62
.LBB11_59:
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.188
	add	x1, x1, :lo12:.L.str.188
                                        // kill: def $w2 killed $w2 killed $x2
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520                       // =0xdc0
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc_noprof
	mov	x26, x0
	cbz	x0, .LBB11_64
// %bb.60:
	ldp	w8, w9, [x20, #76]
	mov	x0, x26
	mul	w8, w9, w8
	ldr	w9, [sp, #96]
	lsr	w2, w8, #1
	sub	x8, x23, x21
	add	x1, x8, x9
	bl	memcpy
	mov	w27, wzr
	cbz	w28, .LBB11_11
	b	.LBB11_57
.LBB11_61:
	ldr	x0, [x25, #24]
	bl	ebc_regulator_verity_vcom
.LBB11_62:
	adrp	x0, .L.str.192
	add	x0, x0, :lo12:.L.str.192
	bl	ebc_empty_buf_get
	ldp	w8, w9, [x20, #76]
	mov	x25, x0
	ldr	x0, [x0, #8]
	mov	w1, #240                        // =0xf0
	mul	w2, w9, w8
	bl	memset
	mov	w8, #17                         // =0x11
	str	xzr, [x25, #40]
	mov	w9, #1                          // =0x1
	str	w8, [x25, #32]
	mov	x0, x25
	ldr	w8, [x20, #76]
	str	w8, [x25, #48]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x25, #52]
	b	.LBB11_16
.LBB11_63:
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.186
	add	x1, x1, :lo12:.L.str.186
	bl	_dev_err
	b	.LBB11_27
.LBB11_64:
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.189
	add	x1, x1, :lo12:.L.str.189
	bl	_dev_err
	cbnz	x24, .LBB11_24
	b	.LBB11_25
.Lfunc_end11:
	.size	ebc_logo_init, .Lfunc_end11-ebc_logo_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_sysfs_init
	.type	ebc_sysfs_init,@function
ebc_sysfs_init:                         // @ebc_sysfs_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x19, x0
	adrp	x0, ebc_misc
	add	x0, x0, :lo12:ebc_misc
	mov	x29, sp
	bl	misc_register
	adrp	x0, waveform_misc
	add	x0, x0, :lo12:waveform_misc
	bl	misc_register
	ldrb	w8, [x19, #1724]
	cmp	w8, #1
	b.ne	.LBB12_2
// %bb.1:
	adrp	x0, transition_lut_misc
	add	x0, x0, :lo12:transition_lut_misc
	bl	misc_register
.LBB12_2:
	ldr	x0, [x19]
	adrp	x1, dev_attr_waveform_version
	add	x1, x1, :lo12:dev_attr_waveform_version
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_pmic_name
	add	x1, x1, :lo12:dev_attr_pmic_name
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_pmic_temp
	add	x1, x1, :lo12:dev_attr_pmic_temp
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_pmic_vcom
	add	x1, x1, :lo12:dev_attr_pmic_vcom
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_ebc_version
	add	x1, x1, :lo12:dev_attr_ebc_version
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_ebc_state
	add	x1, x1, :lo12:dev_attr_ebc_state
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_ebc_buf_state
	add	x1, x1, :lo12:dev_attr_ebc_buf_state
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_auto_frame_state
	add	x1, x1, :lo12:dev_attr_auto_frame_state
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_ebc_debug_level
	add	x1, x1, :lo12:dev_attr_ebc_debug_level
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_wf_data
	add	x1, x1, :lo12:dev_attr_wf_data
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_overlay_wf_data
	add	x1, x1, :lo12:dev_attr_overlay_wf_data
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_ori_wf_data
	add	x1, x1, :lo12:dev_attr_ori_wf_data
	bl	device_create_file
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end12:
	.size	ebc_sysfs_init, .Lfunc_end12-ebc_sysfs_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_buffer_manage_uninit
	.type	ebc_buffer_manage_uninit,@function
ebc_buffer_manage_uninit:               // @ebc_buffer_manage_uninit
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	ldr	x8, [x0, #1464]
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x0
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	cbz	x8, .LBB13_2
// %bb.1:
	add	x0, x19, #1456
	bl	ebc_free_dma_buf
.LBB13_2:
	ldr	x8, [x19, #1320]
	cbz	x8, .LBB13_4
// %bb.3:
	add	x0, x19, #1312
	bl	ebc_free_dma_buf
.LBB13_4:
	ldr	x8, [x19, #1248]
	cbz	x8, .LBB13_6
// %bb.5:
	add	x0, x19, #1240
	bl	ebc_free_dma_buf
.LBB13_6:
	ldr	x8, [x19, #1176]
	cbz	x8, .LBB13_8
// %bb.7:
	add	x0, x19, #1168
	bl	ebc_free_dma_buf
.LBB13_8:
	ldr	x8, [x19, #1392]
	cbz	x8, .LBB13_10
// %bb.9:
	add	x0, x19, #1384
	bl	ebc_free_dma_buf
.LBB13_10:
	ldr	x8, [x19, #1104]
	cbz	x8, .LBB13_12
// %bb.11:
	add	x0, x19, #1096
	bl	ebc_free_dma_buf
.LBB13_12:
	ldr	x8, [x19, #888]
	cbz	x8, .LBB13_14
// %bb.13:
	add	x0, x19, #880
	bl	ebc_free_dma_buf
.LBB13_14:
	ldr	x8, [x19, #960]
	cbz	x8, .LBB13_16
// %bb.15:
	add	x0, x19, #952
	bl	ebc_free_dma_buf
.LBB13_16:
	ldr	x8, [x19, #1032]
	cbz	x8, .LBB13_18
// %bb.17:
	add	x0, x19, #1024
	bl	ebc_free_dma_buf
.LBB13_18:
	ldr	w8, [x19, #444]
	cmp	w8, #1
	b.lt	.LBB13_23
// %bb.19:
	mov	x21, xzr
	add	x20, x19, #592
	b	.LBB13_21
.LBB13_20:                              //   in Loop: Header=BB13_21 Depth=1
	add	x21, x21, #1
	add	x20, x20, #72
	cmp	x21, w8, sxtw
	b.ge	.LBB13_23
.LBB13_21:                              // =>This Inner Loop Header: Depth=1
	ldr	x9, [x20, #8]
	cbz	x9, .LBB13_20
// %bb.22:                              //   in Loop: Header=BB13_21 Depth=1
	mov	x0, x20
	bl	ebc_free_dma_buf
	ldr	w8, [x19, #444]
	b	.LBB13_20
.LBB13_23:
	bl	ebc_buf_uninit
	ldr	x8, [x19, #456]
	cbz	x8, .LBB13_25
// %bb.24:
	add	x0, x19, #448
	bl	ebc_free_dma_buf
.LBB13_25:
	ldr	x8, [x19, #528]
	cbz	x8, .LBB13_27
// %bb.26:
	add	x0, x19, #520
	bl	ebc_free_dma_buf
.LBB13_27:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end13:
	.size	ebc_buffer_manage_uninit, .Lfunc_end13-ebc_buffer_manage_uninit
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_assist_thread
	.type	ebc_assist_thread,@function
	.word	2314953021                      // 0x89fb613d
ebc_assist_thread:                      // @ebc_assist_thread
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	mov	w26, #1                         // =0x1
	ldr	x25, [x8, :lo12:global_ebc]
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	mov	w24, #2                         // =0x2
	//APP
	mrs	x23, SP_EL0
	//NO_APP
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	add	x27, x25, #4, lsl #12           // =16384
	add	x28, x25, #1760
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	adrp	x20, .L.str.106
	add	x20, x20, :lo12:.L.str.106
	adrp	x21, .L.str.107
	add	x21, x21, :lo12:.L.str.107
	mov	w19, #552                       // =0x228
	adrp	x22, ebc_assist_finished_flag_sem
	add	x22, x22, :lo12:ebc_assist_finished_flag_sem
	b	.LBB14_3
.LBB14_1:                               //   in Loop: Header=BB14_3 Depth=1
	ldrsw	x8, [x25, #184]
	add	x1, x25, #304
	mov	w2, #3                          // =0x3
	ldr	x0, [x28, x8, lsl #3]
	bl	get_full_or_part_data
.LBB14_2:                               //   in Loop: Header=BB14_3 Depth=1
	mov	x0, x22
	bl	up
	bl	schedule
.LBB14_3:                               // =>This Inner Loop Header: Depth=1
	str	w24, [x23, #48]
	//APP
	dmb	ish
	//NO_APP
	ldrb	w8, [x27, #2145]
	ldrb	w9, [x27, #2146]
	orr	w8, w9, w8
	tst	w8, #0xff
	strb	w8, [x27, #2147]
	b.ne	.LBB14_13
// %bb.4:                               //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x25, #1998]
	tbnz	w8, #0, .LBB14_13
// %bb.5:                               //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x27, #2113]
	cmp	w8, #1
	b.ne	.LBB14_10
// %bb.6:                               //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x27, #2140]
	cmp	w8, #1
	b.ne	.LBB14_9
// %bb.7:                               //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x27, #2141]
	cmp	w8, #1
	b.ne	.LBB14_9
// %bb.8:                               //   in Loop: Header=BB14_3 Depth=1
	strb	w26, [x27, #2142]
.LBB14_9:                               //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x27, #2142]
	tbnz	w8, #0, .LBB14_11
	b	.LBB14_13
.LBB14_10:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x27, #2064]
	cmp	w8, #0
	b.gt	.LBB14_13
.LBB14_11:                              //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x25, #1996]
	tbnz	w8, #0, .LBB14_13
// %bb.12:                              //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x25, #1997]
	tbz	w8, #0, .LBB14_21
.LBB14_13:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x27, #2048]
	cbz	w8, .LBB14_18
// %bb.14:                              //   in Loop: Header=BB14_3 Depth=1
	cmp	w8, #1
	b.ne	.LBB14_2
// %bb.15:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #2008]
	cmp	w8, #2
	b.lt	.LBB14_2
// %bb.16:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	x0, [x25, #304]
	mov	x1, x21
.LBB14_17:                              //   in Loop: Header=BB14_3 Depth=1
	mov	x2, x20
	bl	_dev_info
	b	.LBB14_2
.LBB14_18:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #1792]
	cmp	w8, #9
	b.hi	.LBB14_1
// %bb.19:                              //   in Loop: Header=BB14_3 Depth=1
	lsl	w8, w26, w8
	tst	w8, w19
	b.eq	.LBB14_1
// %bb.20:                              //   in Loop: Header=BB14_3 Depth=1
	ldrsw	x8, [x25, #184]
	add	x1, x25, #304
	mov	w2, #3                          // =0x3
	ldr	x0, [x28, x8, lsl #3]
	bl	get_auto_data
	b	.LBB14_2
.LBB14_21:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #2008]
	cmp	w8, #2
	b.lt	.LBB14_2
// %bb.22:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.105
	add	x1, x1, :lo12:.L.str.105
	b	.LBB14_17
.Lfunc_end14:
	.size	ebc_assist_thread, .Lfunc_end14-ebc_assist_thread
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_thread
	.type	ebc_thread,@function
	.word	2314953021                      // 0x89fb613d
ebc_thread:                             // @ebc_thread
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #240
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #208]            // 16-byte Folded Spill
	ldr	x21, [x8, :lo12:global_ebc]
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	stp	x28, x27, [sp, #160]            // 16-byte Folded Spill
	mov	w27, wzr
	add	x8, x21, #136
	stp	x26, x25, [sp, #176]            // 16-byte Folded Spill
	mov	w25, wzr
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	add	x8, x21, #1760
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	stp	x24, x23, [sp, #192]            // 16-byte Folded Spill
	mov	w24, #1                         // =0x1
	stp	x20, x19, [sp, #224]            // 16-byte Folded Spill
	add	x20, x21, #4, lsl #12           // =16384
	stur	x8, [x29, #-56]                 // 8-byte Folded Spill
	mov	w8, #1                          // =0x1
	stur	wzr, [x29, #-64]                // 4-byte Folded Spill
	str	wzr, [sp, #72]                  // 4-byte Folded Spill
	stur	w8, [x29, #-68]                 // 4-byte Folded Spill
	stur	w8, [x29, #-60]                 // 4-byte Folded Spill
	b	.LBB15_4
.LBB15_1:                               //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x8, [x21, #184]
	ldr	x9, [sp, #48]                   // 8-byte Folded Reload
	add	x1, x21, #304
	mov	w2, #2                          // =0x2
	ldr	x0, [x9, x8, lsl #3]
	bl	get_full_or_part_data
.LBB15_2:                               //   in Loop: Header=BB15_4 Depth=1
	ldur	x8, [x29, #-56]                 // 8-byte Folded Reload
	str	wzr, [x8, #48]
	//APP
	dmb	ish
	//NO_APP
.LBB15_3:                               //   in Loop: Header=BB15_4 Depth=1
	bl	schedule
	mov	w25, #1                         // =0x1
.LBB15_4:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB15_7 Depth 2
                                        //     Child Loop BB15_17 Depth 2
                                        //       Child Loop BB15_19 Depth 3
                                        //         Child Loop BB15_21 Depth 4
                                        //     Child Loop BB15_47 Depth 2
                                        //       Child Loop BB15_50 Depth 3
                                        //     Child Loop BB15_114 Depth 2
                                        //     Child Loop BB15_164 Depth 2
                                        //       Child Loop BB15_168 Depth 3
                                        //     Child Loop BB15_307 Depth 2
                                        //     Child Loop BB15_310 Depth 2
                                        //     Child Loop BB15_128 Depth 2
                                        //       Child Loop BB15_131 Depth 3
                                        //         Child Loop BB15_134 Depth 4
                                        //     Child Loop BB15_274 Depth 2
                                        //     Child Loop BB15_326 Depth 2
                                        //     Child Loop BB15_209 Depth 2
                                        //       Child Loop BB15_223 Depth 3
                                        //     Child Loop BB15_236 Depth 2
                                        //       Child Loop BB15_239 Depth 3
                                        //         Child Loop BB15_261 Depth 4
                                        //     Child Loop BB15_365 Depth 2
                                        //       Child Loop BB15_370 Depth 3
	adrp	x0, ebc_assist_finished_flag_sem
	add	x0, x0, :lo12:ebc_assist_finished_flag_sem
	bl	down
	stur	w25, [x29, #-44]                // 4-byte Folded Spill
	tbz	w25, #0, .LBB15_41
// %bb.5:                               //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1784]
	cmp	w8, #1
	b.ne	.LBB15_10
// %bb.6:                               //   in Loop: Header=BB15_4 Depth=1
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	adrp	x19, ebc_flip_wq
	add	x19, x19, :lo12:ebc_flip_wq
	sub	x1, x29, #40
	mov	x0, x19
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldrb	w8, [x21, #1784]
	cmp	w8, #1
	b.ne	.LBB15_9
.LBB15_7:                               //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	cbnz	x0, .LBB15_10
// %bb.8:                               //   in Loop: Header=BB15_7 Depth=2
	bl	schedule
	sub	x1, x29, #40
	mov	x0, x19
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldrb	w8, [x21, #1784]
	tbnz	w8, #0, .LBB15_7
.LBB15_9:                               //   in Loop: Header=BB15_4 Depth=1
	sub	x1, x29, #40
	mov	x0, x19
	bl	finish_wait
.LBB15_10:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	cmp	w8, #2
	b.ge	.LBB15_181
.LBB15_11:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2048]
	cmp	w8, #1
	b.ne	.LBB15_22
// %bb.12:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #1792]
	ldr	x0, [x21, #1536]
	ldr	x22, [x21, #1608]
	ldp	w23, w25, [x21, #188]
	str	w8, [sp, #60]                   // 4-byte Folded Spill
	adrp	x8, global_ebc
	ldr	x26, [x21, #1528]
	ldr	x28, [x8, :lo12:global_ebc]
	ldr	w8, [x21, #2008]
	strb	w24, [x21, #1784]
	cmp	w8, #2
	ldr	x8, [x21, #1600]
	str	x8, [sp, #64]                   // 8-byte Folded Spill
	b.ge	.LBB15_304
.LBB15_13:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2040]
	cmp	w8, #1
	b.ne	.LBB15_33
// %bb.14:                              //   in Loop: Header=BB15_4 Depth=1
	strb	wzr, [x20, #2040]
	ldr	w19, [x28, #1720]
	str	w23, [sp, #44]                  // 4-byte Folded Spill
	cmp	w19, #64
	b.gt	.LBB15_322
// %bb.15:                              //   in Loop: Header=BB15_4 Depth=1
	lsl	w8, w19, #8
	mov	x23, x26
	add	x26, x28, #2040
	stp	x0, x22, [sp, #16]              // 16-byte Folded Spill
	ldr	x22, [x28, #1744]
	mov	x0, x26
	sxtw	x2, w8
	mov	w1, wzr
	bl	memset
	mov	x8, xzr
	b	.LBB15_17
.LBB15_16:                              //   in Loop: Header=BB15_17 Depth=2
	add	x8, x8, #1
	add	x22, x22, #1
	cmp	x8, #32
	b.eq	.LBB15_31
.LBB15_17:                              //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_19 Depth 3
                                        //         Child Loop BB15_21 Depth 4
	lsl	x10, x8, #1
	mov	x9, xzr
	mov	x11, x22
	mov	x12, x26
	b	.LBB15_19
.LBB15_18:                              //   in Loop: Header=BB15_19 Depth=3
	add	x9, x9, #1
	add	x12, x12, #8
	add	x11, x11, #32
	cmp	x9, #32
	b.eq	.LBB15_16
.LBB15_19:                              //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_17 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB15_21 Depth 4
	cmp	w19, #1
	b.lt	.LBB15_18
// %bb.20:                              //   in Loop: Header=BB15_19 Depth=3
	mov	x13, x11
	mov	x14, x12
	mov	x15, x19
.LBB15_21:                              //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_17 Depth=2
                                        //       Parent Loop BB15_19 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldrb	w16, [x13]
	ldr	x17, [x14]
	subs	x15, x15, #1
	add	x13, x13, #1024
	lsl	x16, x16, x10
	orr	x16, x16, x17
	str	x16, [x14]
	add	x14, x14, #256
	b.ne	.LBB15_21
	b	.LBB15_18
.LBB15_22:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	ldrsw	x19, [x21, #184]
	strb	w24, [x21, #1784]
	cmp	w8, #2
	mov	w8, w19
	b.ge	.LBB15_305
.LBB15_23:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w10, #24                        // =0x18
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	ldr	w22, [x21, #252]
	smaddl	x23, w19, w10, x9
	sub	w9, w24, w8
	ldr	w8, [x21, #280]
	ldp	w25, w26, [x21, #244]
	str	w9, [x21, #184]
	cbz	w8, .LBB15_25
// %bb.24:                              //   in Loop: Header=BB15_4 Depth=1
	ldp	w9, w10, [x21, #188]
	ldr	w11, [x21, #276]
	mul	w12, w9, w8
	add	w8, w11, w8
	sub	w10, w10, w11
	mul	w13, w11, w9
	mul	w8, w8, w9
	mul	w10, w10, w9
	ldr	x9, [x23]
	lsr	w19, w12, #2
	lsr	w28, w13, #2
	lsr	w8, w8, #2
	lsr	w2, w10, #2
	add	x1, x9, x28
	add	x0, x9, x8
	bl	memmove
	ldr	x8, [x23]
	mov	w1, wzr
	mov	x2, x19
	add	x0, x8, x28
	bl	memset
.LBB15_25:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #112]
	ldrb	w8, [x0, #796]
	tbnz	w8, #6, .LBB15_27
// %bb.26:                              //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x2, [x21, #428]
	ldr	x1, [x23, #8]
	mov	w3, #1                          // =0x1
	bl	__dma_sync_single_for_device
.LBB15_27:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #120]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	add	w19, w26, w25
	ldr	x8, [x0, #184]
	ldur	w16, [x8, #-4]
	movk	w17, #25337
	movk	w17, #33182, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp17
	brk	#0x8228
.Ltmp17:
	blr	x8
	ldr	x0, [x21, #120]
	ldr	w1, [x23, #8]
	mov	w2, wzr
	ldr	x8, [x0, #192]
	ldur	w16, [x8, #-4]
	movk	w17, #4825
	movk	w17, #3196, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp18
	brk	#0x8228
.Ltmp18:
	blr	x8
	ldr	x0, [x21, #120]
	add	w1, w19, w22
	mov	w2, wzr
	ldr	x8, [x0, #240]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp19
	brk	#0x8228
.Ltmp19:
	blr	x8
	ldr	x0, [x21, #120]
	mov	w1, #1                          // =0x1
	ldr	x8, [x0, #224]
	ldur	w16, [x8, #-4]
	movk	w17, #41130
	movk	w17, #9946, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp20
	brk	#0x8228
.Ltmp20:
	blr	x8
	ldrb	w8, [x20, #2113]
	cmp	w8, #1
	b.ne	.LBB15_29
// %bb.28:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2128]
	add	w8, w8, #1
	str	w8, [x20, #2128]
	b	.LBB15_41
.LBB15_29:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2064]
	tbnz	w8, #31, .LBB15_41
// %bb.30:                              //   in Loop: Header=BB15_4 Depth=1
	sub	w8, w8, #1
	b	.LBB15_40
.LBB15_31:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x28, #8]
	mov	x1, x26
	mov	w2, w19
	mov	w3, #1                          // =0x1
	ldr	x8, [x0, #208]
	ldur	w16, [x8, #-4]
	movk	w17, #40695
	movk	w17, #24657, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp21
	brk	#0x8228
.Ltmp21:
	blr	x8
	ldp	x0, x22, [sp, #16]              // 16-byte Folded Reload
	mov	w19, wzr
	mov	x26, x23
.LBB15_32:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	ldr	w23, [sp, #44]                  // 4-byte Folded Reload
	cmp	w8, #2
	b.ge	.LBB15_323
.LBB15_33:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	x8, [x21, #1672]
	mul	w19, w25, w23
	ldr	x1, [x8, #8]
	mov	x2, x19
	bl	memcpy
	ldr	x8, [x21, #1680]
	mov	x0, x22
	mov	x2, x19
	ldr	x1, [x8, #8]
	bl	memcpy
	ldr	x0, [x21, #112]
	ldr	w22, [x21, #252]
	ldp	w23, w25, [x21, #244]
	ldrb	w8, [x0, #796]
	tbnz	w8, #6, .LBB15_35
// %bb.34:                              //   in Loop: Header=BB15_4 Depth=1
	mov	x1, x26
	mov	x2, x19
	mov	w3, #1                          // =0x1
	bl	__dma_sync_single_for_device
	ldr	x0, [x21, #112]
	ldrb	w8, [x0, #796]
.LBB15_35:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	x28, [sp, #64]                  // 8-byte Folded Reload
	tbnz	w8, #6, .LBB15_37
// %bb.36:                              //   in Loop: Header=BB15_4 Depth=1
	mov	x1, x28
	mov	x2, x19
	mov	w3, #1                          // =0x1
	bl	__dma_sync_single_for_device
.LBB15_37:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #120]
	ldr	w8, [sp, #60]                   // 4-byte Folded Reload
	mov	w1, #4                          // =0x4
	add	w23, w25, w23
	cmp	w8, #2
	ldr	x8, [x0, #216]
	cset	w19, eq
	ldur	w16, [x8, #-4]
	movk	w17, #52063
	movk	w17, #7488, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp22
	brk	#0x8228
.Ltmp22:
	blr	x8
	ldr	x0, [x21, #120]
	mov	w1, w19
	mov	w2, #1                          // =0x1
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #184]
	ldur	w16, [x8, #-4]
	movk	w17, #25337
	movk	w17, #33182, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp23
	brk	#0x8228
.Ltmp23:
	blr	x8
	ldr	x0, [x21, #120]
	mov	w1, w26
	mov	w2, w28
	ldr	x8, [x0, #192]
	ldur	w16, [x8, #-4]
	movk	w17, #4825
	movk	w17, #3196, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp24
	brk	#0x8228
.Ltmp24:
	blr	x8
	ldr	x0, [x21, #120]
	add	w1, w23, w22
	mov	w2, wzr
	ldr	x8, [x0, #240]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp25
	brk	#0x8228
.Ltmp25:
	blr	x8
	ldr	x0, [x21, #120]
	ldr	w1, [x20, #2052]
	ldr	x8, [x0, #224]
	ldur	w16, [x8, #-4]
	movk	w17, #41130
	movk	w17, #9946, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp26
	brk	#0x8228
.Ltmp26:
	blr	x8
	ldrb	w8, [x20, #2113]
	cmp	w8, #1
	b.ne	.LBB15_39
// %bb.38:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #257                        // =0x101
	strb	w24, [x20, #2142]
	strh	w8, [x20, #2140]
	b	.LBB15_41
.LBB15_39:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #-1                         // =0xffffffff
.LBB15_40:                              //   in Loop: Header=BB15_4 Depth=1
	str	w8, [x20, #2064]
.LBB15_41:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1792]
	mov	w5, #2                          // =0x2
	mov	w6, #248                        // =0xf8
	tbz	w8, #3, .LBB15_55
// %bb.42:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2104]
	cbnz	w8, .LBB15_55
// %bb.43:                              //   in Loop: Header=BB15_4 Depth=1
	adrp	x8, global_ebc
	ldr	x11, [x8, :lo12:global_ebc]
	ldr	w9, [x11, #192]
	cmp	w9, #1
	b.lt	.LBB15_53
// %bb.44:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w11, [x11, #188]
	ldrb	w17, [x20, #2052]
	mov	w8, wzr
	ldr	x12, [x21, #1464]
	ldr	x13, [x21, #1392]
	mov	w10, wzr
	ldr	x14, [x21, #1320]
	ldr	x15, [x21, #1248]
	sub	w0, w11, #1
	ldr	x16, [x21, #1176]
	sub	w17, w17, #1
	add	x0, x0, #1
	b	.LBB15_47
.LBB15_45:                              //   in Loop: Header=BB15_47 Depth=2
	add	x16, x16, x0
.LBB15_46:                              //   in Loop: Header=BB15_47 Depth=2
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB15_54
.LBB15_47:                              //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_50 Depth 3
	cmp	w11, #1
	b.lt	.LBB15_46
// %bb.48:                              //   in Loop: Header=BB15_47 Depth=2
	mov	w1, w11
	mov	x2, x16
	b	.LBB15_50
.LBB15_49:                              //   in Loop: Header=BB15_50 Depth=3
	add	x2, x2, #1
	add	x15, x15, #1
	subs	w1, w1, #1
	add	x14, x14, #1
	add	x13, x13, #1
	add	x12, x12, #1
	b.eq	.LBB15_45
.LBB15_50:                              //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_47 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w3, [x2]
	ldrb	w4, [x15]
	cmp	w3, w4
	b.ne	.LBB15_49
// %bb.51:                              //   in Loop: Header=BB15_50 Depth=3
	ldrb	w3, [x14]
	cbz	w3, .LBB15_49
// %bb.52:                              //   in Loop: Header=BB15_50 Depth=3
	mov	w8, #4                          // =0x4
	strb	wzr, [x14]
	strb	w17, [x13]
	strb	w6, [x15]
	strb	w5, [x12]
	b	.LBB15_49
.LBB15_53:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w8, wzr
.LBB15_54:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x20, #2146]
	ldrb	w10, [x20, #2145]
	ldr	w11, [x21, #2008]
	orr	w9, w9, w8
	orr	w8, w10, w8
	cmp	w11, #1
	strb	w9, [x20, #2146]
	strb	w8, [x20, #2145]
	b.gt	.LBB15_312
.LBB15_55:                              //   in Loop: Header=BB15_4 Depth=1
	ldrsb	w8, [x20, #2148]
	tbnz	w8, #31, .LBB15_313
.LBB15_56:                              //   in Loop: Header=BB15_4 Depth=1
	ldur	x8, [x29, #-56]                 // 8-byte Folded Reload
	str	w5, [x8, #48]
	//APP
	dmb	ish
	//NO_APP
	ldrb	w8, [x20, #2145]
	ldrb	w9, [x20, #2146]
	orr	w8, w9, w8
	cbz	w8, .LBB15_58
// %bb.57:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w19, #1                         // =0x1
	b	.LBB15_59
.LBB15_58:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w19, [x21, #1998]
.LBB15_59:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x20, #2113]
	cmp	w9, #1
	b.ne	.LBB15_64
// %bb.60:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w10, [x20, #2140]
	cmp	w10, #1
	b.ne	.LBB15_63
// %bb.61:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w10, [x20, #2141]
	cmp	w10, #1
	b.ne	.LBB15_63
// %bb.62:                              //   in Loop: Header=BB15_4 Depth=1
	strb	w24, [x20, #2142]
.LBB15_63:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w23, [x20, #2142]
	strb	w8, [x20, #2147]
	cbnz	w8, .LBB15_66
	b	.LBB15_65
.LBB15_64:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w10, [x20, #2064]
	cmp	w10, #1
	cset	w23, lt
	strb	w8, [x20, #2147]
	cbnz	w8, .LBB15_66
.LBB15_65:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w10, [x21, #1998]
	tbz	w10, #0, .LBB15_72
.LBB15_66:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w26, wzr
.LBB15_67:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [x21, #2008]
	cmp	w9, #2
	b.ge	.LBB15_154
.LBB15_68:                              //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_get_osd_list_enum_num
	cmp	w0, #0
	mov	w25, w0
	cset	w22, ne
	strb	w22, [x21, #1997]
	bl	ebc_get_dsp_list_enum_num
	mov	w28, w0
	strb	wzr, [x21, #1996]
	cbz	w0, .LBB15_86
// %bb.69:                              //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_dsp_buf_get
	mov	w13, #2                         // =0x2
	cbz	x0, .LBB15_86
// %bb.70:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2143]
	ldrb	w9, [x20, #2144]
	ldrb	w12, [x20, #2113]
	ldr	w11, [x20, #2080]
	cmp	w8, #0
	cset	w8, ne
	cmp	w9, #0
	mov	w9, #4                          // =0x4
	csel	w10, w9, wzr, ne
	cmp	w12, #0
	csel	w9, w13, wzr, ne
	cmp	w11, #1
	b.lt	.LBB15_77
// %bb.71:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w12, [x20, #2052]
	sub	w12, w12, #1
	cmp	w11, w12
	cset	w12, lt
	b	.LBB15_78
.LBB15_72:                              //   in Loop: Header=BB15_4 Depth=1
	cbz	w9, .LBB15_104
// %bb.73:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x20, #2140]
	cmp	w9, #1
	b.ne	.LBB15_76
// %bb.74:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x20, #2141]
	cmp	w9, #1
	b.ne	.LBB15_76
// %bb.75:                              //   in Loop: Header=BB15_4 Depth=1
	strb	w24, [x20, #2142]
.LBB15_76:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w26, [x20, #2142]
	b	.LBB15_67
.LBB15_77:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w12, wzr
.LBB15_78:                              //   in Loop: Header=BB15_4 Depth=1
	adrp	x11, global_ebc
	orr	w8, w10, w8, lsl #1
	ldrb	w10, [x20, #2125]
	ldr	x11, [x11, :lo12:global_ebc]
	orr	w5, w8, w22
	orr	w8, w9, w10
	ldr	w11, [x11, #264]
	str	w8, [sp, #72]                   // 4-byte Folded Spill
	cmp	w11, #230
	b.ne	.LBB15_87
// %bb.79:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #3                          // =0x3
	str	w13, [x0, #32]
	mov	w27, #4                         // =0x4
.LBB15_80:                              //   in Loop: Header=BB15_4 Depth=1
	stur	w8, [x29, #-64]                 // 4-byte Folded Spill
.LBB15_81:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	cmp	w8, #2
	b.ge	.LBB15_280
.LBB15_82:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #1716]
	ldur	w9, [x29, #-64]                 // 4-byte Folded Reload
	cmp	w9, w8
	b.ne	.LBB15_92
// %bb.83:                              //   in Loop: Header=BB15_4 Depth=1
	tbnz	w27, #3, .LBB15_91
// %bb.84:                              //   in Loop: Header=BB15_4 Depth=1
	tbz	w23, #0, .LBB15_86
.LBB15_85:                              //   in Loop: Header=BB15_4 Depth=1
	strb	w24, [x21, #1996]
.LBB15_86:                              //   in Loop: Header=BB15_4 Depth=1
	tbnz	w26, #0, .LBB15_94
	b	.LBB15_95
.LBB15_87:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w3, [x0, #32]
	cmp	w5, #0
	cset	w8, ne
	cmp	w3, #21
	b.hi	.LBB15_314
// %bb.88:                              //   in Loop: Header=BB15_4 Depth=1
	lsl	w9, w24, w3
	mov	w10, #36736                     // =0x8f80
	orr	w8, w19, w8
	movk	w10, #1, lsl #16
	and	w8, w8, #0x1
	tst	w9, w10
	b.ne	.LBB15_177
// %bb.89:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w10, #124                       // =0x7c
	movk	w10, #34, lsl #16
	tst	w9, w10
	b.eq	.LBB15_173
// %bb.90:                              //   in Loop: Header=BB15_4 Depth=1
	orr	w27, w8, #0x4
	b	.LBB15_178
.LBB15_91:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1792]
	tbnz	w8, #3, .LBB15_156
.LBB15_92:                              //   in Loop: Header=BB15_4 Depth=1
	tbz	w26, #0, .LBB15_95
// %bb.93:                              //   in Loop: Header=BB15_4 Depth=1
	strb	w24, [x21, #1996]
.LBB15_94:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w8, wzr
	mov	w9, #1                          // =0x1
	str	wzr, [x20, #2100]
	stur	w9, [x29, #-68]                 // 4-byte Folded Spill
	stur	w9, [x29, #-60]                 // 4-byte Folded Spill
	b	.LBB15_96
.LBB15_95:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2100]
	ldr	w9, [x20, #2092]
	ldr	w10, [x20, #2104]
	ldr	w12, [x20, #2052]
	add	w11, w8, #1
	cmp	w11, w9
	add	w9, w10, #1
	csinc	w8, wzr, w8, ge
	cmp	w9, w12
	str	w8, [x20, #2100]
	csinc	w8, wzr, w10, ge
.LBB15_96:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [x21, #2008]
	str	w8, [x20, #2104]
	cmp	w9, #2
	b.ge	.LBB15_155
.LBB15_97:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2145]
	ldrb	w9, [x20, #2146]
	ldur	w25, [x29, #-44]                // 4-byte Folded Reload
	orr	w8, w9, w8
	tst	w8, #0xff
	strb	w8, [x20, #2147]
	b.ne	.LBB15_108
// %bb.98:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1998]
	tbnz	w8, #0, .LBB15_108
// %bb.99:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2113]
	cmp	w8, #1
	b.ne	.LBB15_105
// %bb.100:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2140]
	cmp	w8, #1
	b.ne	.LBB15_103
// %bb.101:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2141]
	cmp	w8, #1
	b.ne	.LBB15_103
// %bb.102:                             //   in Loop: Header=BB15_4 Depth=1
	strb	w24, [x20, #2142]
.LBB15_103:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2142]
	tbnz	w8, #0, .LBB15_106
	b	.LBB15_108
.LBB15_104:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [x20, #2064]
	cmp	w9, #1
	cset	w26, lt
	b	.LBB15_67
.LBB15_105:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2064]
	cmp	w8, #0
	b.gt	.LBB15_108
.LBB15_106:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1996]
	tbnz	w8, #0, .LBB15_108
// %bb.107:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1997]
	cmp	w8, #1
	b.ne	.LBB15_281
.LBB15_108:                             //   in Loop: Header=BB15_4 Depth=1
	add	x0, x21, #320
	bl	cancel_delayed_work_sync
	ldrb	w8, [x21, #1997]
	tbz	w8, #0, .LBB15_185
.LBB15_109:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	w8, [x29, #-60]                 // 4-byte Folded Reload
	tbz	w8, #0, .LBB15_111
// %bb.110:                             //   in Loop: Header=BB15_4 Depth=1
	mov	x0, x21
	mov	w1, #1                          // =0x1
	mov	w2, #10                         // =0xa
	bl	ebc_lut_update
	ldr	w8, [x21, #1724]
	str	w8, [x20, #2060]
.LBB15_111:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_get_osd_list_enum_num
	mov	x28, xzr
	cbz	w0, .LBB15_121
// %bb.112:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w19, #-1                        // =0xffffffff
	mov	w25, #-1                        // =0xffffffff
	mov	w22, #-1                        // =0xffffffff
	mov	w23, #-1                        // =0xffffffff
	b	.LBB15_114
.LBB15_113:                             //   in Loop: Header=BB15_114 Depth=2
	bl	ebc_get_osd_list_enum_num
	cbz	w0, .LBB15_118
.LBB15_114:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	cbz	x28, .LBB15_116
// %bb.115:                             //   in Loop: Header=BB15_114 Depth=2
	mov	x0, x28
	bl	ebc_buf_release
.LBB15_116:                             //   in Loop: Header=BB15_114 Depth=2
	bl	ebc_osd_buf_pop_get
	mov	x28, x0
	cbz	x0, .LBB15_113
// %bb.117:                             //   in Loop: Header=BB15_114 Depth=2
	ldp	w8, w9, [x28, #40]
	cmp	w8, w23
	csel	w11, w8, w23, lt
	cmp	w23, #0
	csel	w23, w8, w11, lt
	ldp	w10, w8, [x28, #48]
	cmp	w10, w22
	csel	w11, w10, w22, gt
	cmp	w22, #0
	csel	w22, w10, w11, lt
	cmp	w9, w25
	csel	w10, w9, w25, lt
	cmp	w25, #0
	csel	w25, w9, w10, lt
	cmp	w8, w19
	csel	w9, w8, w19, gt
	cmp	w19, #0
	csel	w19, w8, w9, lt
	b	.LBB15_113
.LBB15_118:                             //   in Loop: Header=BB15_4 Depth=1
	cbz	x28, .LBB15_120
// %bb.119:                             //   in Loop: Header=BB15_4 Depth=1
	stp	w23, w25, [x28, #40]
	stp	w22, w19, [x28, #48]
.LBB15_120:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	w25, [x29, #-44]                // 4-byte Folded Reload
.LBB15_121:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1792]
	mov	w9, #9                          // =0x9
	tst	w8, w9
	b.eq	.LBB15_147
.LBB15_122:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #1792]
	ldr	w9, [x21, #436]
	ldrb	w12, [x20, #2143]
	ldr	x17, [x21, #1176]
	ldr	x16, [x21, #1248]
	ldr	x1, [x21, #1464]
	orr	w8, w8, #0x1
	cmp	w9, #0
	ldr	x0, [x21, #1392]
	str	w8, [x21, #1792]
	add	w8, w9, #7
	csel	w9, w8, w9, lt
	ldr	x2, [x28, #8]
	ldp	w10, w8, [x28, #40]
	ldp	w11, w5, [x28, #48]
	asr	w13, w9, #3
	ldr	w9, [x21, #432]
	cmp	w10, #0
	add	w4, w10, #7
	csel	w14, w4, w10, lt
	add	w10, w11, #7
	cmp	w11, #0
	csel	w10, w10, w11, lt
	sub	w15, w13, #1
	sub	w3, w9, #1
	asr	w10, w10, #3
	add	w11, w10, #1
	cmp	w11, w13
	csinc	w10, w15, w10, ge
	cmp	w5, w9
	mov	w9, w12
	csel	w11, w5, w3, lt
	cmp	w4, #14
	b.hi	.LBB15_124
// %bb.123:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w11, w3
	ccmp	w8, #0, #0, eq
	ccmp	w10, w15, #0, eq
	csel	w9, wzr, w12, eq
.LBB15_124:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w8, w11
	b.le	.LBB15_126
// %bb.125:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w19, wzr
	b	.LBB15_144
.LBB15_126:                             //   in Loop: Header=BB15_4 Depth=1
	asr	w12, w14, #3
	mul	w14, w8, w13
	sbfiz	x13, x13, #3, #32
	mov	w19, wzr
	sbfiz	x15, x12, #3, #32
	cmp	w10, w12
	csel	w3, w10, w12, gt
	add	x4, x15, w14, sxtw #3
	add	w15, w3, #1
	sxtw	x14, w12
	sxtw	x15, w15
	add	x16, x16, x4
	add	x17, x17, x4
	add	x0, x0, x4
	add	x1, x1, x4
	add	x2, x2, x4
	b	.LBB15_128
.LBB15_127:                             //   in Loop: Header=BB15_128 Depth=2
	add	w8, w8, #1
	add	x16, x16, x13
	add	x17, x17, x13
	cmp	w8, w11
	add	x0, x0, x13
	add	x1, x1, x13
	add	x2, x2, x13
	b.gt	.LBB15_143
.LBB15_128:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_131 Depth 3
                                        //         Child Loop BB15_134 Depth 4
	cmp	w12, w10
	b.gt	.LBB15_127
// %bb.129:                             //   in Loop: Header=BB15_128 Depth=2
	mov	x3, x2
	mov	x4, x1
	mov	x5, x0
	mov	x6, x17
	mov	x7, x16
	mov	x25, x14
	b	.LBB15_131
.LBB15_130:                             //   in Loop: Header=BB15_131 Depth=3
	add	x25, x25, #1
	add	x7, x7, #8
	add	x6, x6, #8
	cmp	x25, x15
	add	x5, x5, #8
	add	x4, x4, #8
	add	x3, x3, #8
	b.eq	.LBB15_127
.LBB15_131:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_128 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB15_134 Depth 4
	mov	x22, xzr
	b	.LBB15_134
.LBB15_132:                             //   in Loop: Header=BB15_134 Depth=4
	strb	wzr, [x5, x22]
	strb	wzr, [x4, x22]
.LBB15_133:                             //   in Loop: Header=BB15_134 Depth=4
	add	x22, x22, #1
	cmp	x22, #8
	b.eq	.LBB15_130
.LBB15_134:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_128 Depth=2
                                        //       Parent Loop BB15_131 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldrb	w23, [x3, x22]
	cmp	w23, #255
	b.ne	.LBB15_138
// %bb.135:                             //   in Loop: Header=BB15_134 Depth=4
	ldrb	w23, [x4, x22]
	cmp	w23, #1
	b.ne	.LBB15_133
// %bb.136:                             //   in Loop: Header=BB15_134 Depth=4
	ldrb	w23, [x5, x22]
	orr	w9, w9, #0x1
	cbz	w23, .LBB15_132
// %bb.137:                             //   in Loop: Header=BB15_134 Depth=4
	ldrb	w23, [x6, x22]
	ldrb	w26, [x7, x22]
	cmp	w23, w26
	b.eq	.LBB15_132
	b	.LBB15_142
.LBB15_138:                             //   in Loop: Header=BB15_134 Depth=4
	ldrb	w26, [x6, x22]
	orr	w9, w9, #0x3
	cmp	w26, w23
	b.eq	.LBB15_133
// %bb.139:                             //   in Loop: Header=BB15_134 Depth=4
	ldrb	w30, [x5, x22]
	cbz	w30, .LBB15_141
// %bb.140:                             //   in Loop: Header=BB15_134 Depth=4
	ldrb	w30, [x7, x22]
	cmp	w26, w30
	b.ne	.LBB15_142
.LBB15_141:                             //   in Loop: Header=BB15_134 Depth=4
	strb	w23, [x6, x22]
	strb	wzr, [x5, x22]
	strb	w24, [x4, x22]
	b	.LBB15_133
.LBB15_142:                             //   in Loop: Header=BB15_134 Depth=4
	mov	w19, #1                         // =0x1
	b	.LBB15_133
.LBB15_143:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w12, [x20, #2143]
	ldur	w25, [x29, #-44]                // 4-byte Folded Reload
.LBB15_144:                             //   in Loop: Header=BB15_4 Depth=1
	and	w8, w9, #0xff
	and	w10, w12, #0x2
	ldr	w11, [x21, #2008]
	cmp	w8, #1
	ccmp	w10, #0, #0, eq
	csel	w8, wzr, w9, eq
	cmp	w11, #2
	strb	w8, [x20, #2143]
	b.ge	.LBB15_182
// %bb.145:                             //   in Loop: Header=BB15_4 Depth=1
	mov	x0, x28
	tbz	w19, #0, .LBB15_183
.LBB15_146:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_add_to_osd_buf_list_head
	b	.LBB15_184
.LBB15_147:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w26, #0, .LBB15_151
// %bb.148:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1996]
	tbnz	w8, #0, .LBB15_122
// %bb.149:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x8, [x21, #1680]
	ldrsw	x2, [x21, #424]
	ldr	x0, [x21, #1248]
	ldr	x1, [x8, #8]
	bl	memcpy
	ldr	x8, [x21, #1680]
	ldr	x0, [x21, #1176]
	ldrsw	x2, [x21, #424]
	ldr	x1, [x8, #8]
	bl	memcpy
	ldr	x0, [x21, #1464]
	ldrsw	x2, [x21, #424]
	mov	w1, wzr
	bl	memset
	ldr	x0, [x21, #1392]
	ldrsw	x2, [x21, #424]
	mov	w1, wzr
	bl	memset
	ldr	w8, [x21, #2008]
	cmp	w8, #2
	b.lt	.LBB15_122
// %bb.150:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #1792]
	ldr	x0, [x21, #304]
	adrp	x9, .L.str.167
	add	x9, x9, :lo12:.L.str.167
	adrp	x1, .L.str.165
	add	x1, x1, :lo12:.L.str.165
	tst	w8, #0x2
	adrp	x8, .L.str.166
	add	x8, x8, :lo12:.L.str.166
	csel	x3, x9, x8, eq
	adrp	x2, .L.str.163
	add	x2, x2, :lo12:.L.str.163
	bl	_dev_info
	b	.LBB15_122
.LBB15_151:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w25, [x21, #436]
	ldr	w8, [x21, #2008]
	ldr	w19, [x21, #432]
	add	w9, w25, #7
	cmp	w25, #0
	csel	w22, w9, w25, lt
	cmp	w8, #2
	b.ge	.LBB15_419
.LBB15_152:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2113]
	cmp	w8, #1
	b.ne	.LBB15_157
// %bb.153:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #257                        // =0x101
	strb	w24, [x20, #2142]
	strh	w8, [x20, #2140]
	b	.LBB15_158
.LBB15_154:                             //   in Loop: Header=BB15_4 Depth=1
	tst	w26, #0x1
	adrp	x9, .L.str.113
	add	x9, x9, :lo12:.L.str.113
	adrp	x10, .L.str.112
	add	x10, x10, :lo12:.L.str.112
	ldr	x0, [x21, #304]
	csel	x3, x10, x9, ne
	tst	w23, #0x1
	adrp	x1, .L.str.120
	add	x1, x1, :lo12:.L.str.120
	csel	x4, x10, x9, ne
	tst	w19, #0x1
	csel	x5, x9, x10, ne
	tst	w8, #0x4
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	csel	x6, x10, x9, eq
	bl	_dev_info
	b	.LBB15_68
.LBB15_155:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1997]
	cmp	w25, #0
	adrp	x9, .L.str.113
	add	x9, x9, :lo12:.L.str.113
	adrp	x10, .L.str.112
	add	x10, x10, :lo12:.L.str.112
	csel	x3, x10, x9, ne
	cmp	w8, #0
	ldrb	w8, [x21, #1996]
	csel	x4, x10, x9, ne
	cmp	w28, #0
	ldr	x0, [x21, #304]
	csel	x5, x9, x10, eq
	cmp	w8, #0
	adrp	x1, .L.str.122
	add	x1, x1, :lo12:.L.str.122
	csel	x6, x10, x9, ne
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB15_97
.LBB15_156:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2100]
	cbnz	w8, .LBB15_86
	b	.LBB15_85
.LBB15_157:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #-1                         // =0xffffffff
	str	w8, [x20, #2064]
.LBB15_158:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x8, [x21, #1672]
	ldr	x0, [x21, #1248]
	asr	w26, w22, #3
	ldrsw	x2, [x21, #424]
	ldr	x1, [x8, #8]
	bl	memcpy
	ldr	x8, [x21, #1680]
	ldr	x0, [x21, #1176]
	ldrsw	x2, [x21, #424]
	ldr	x1, [x8, #8]
	bl	memcpy
	ldr	x0, [x21, #1464]
	ldrsw	x2, [x21, #424]
	mov	w1, wzr
	bl	memset
	ldrb	w8, [x20, #2113]
	cmp	w8, #1
	b.ne	.LBB15_172
// %bb.159:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2128]
	strb	wzr, [x20, #2113]
	cbz	w8, .LBB15_287
// %bb.160:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w19, #1
	mov	x15, #72340172838076673         // =0x101010101010101
	b.lt	.LBB15_289
// %bb.161:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x8, [x21, #1392]
	mov	w9, wzr
	b	.LBB15_164
.LBB15_162:                             //   in Loop: Header=BB15_164 Depth=2
	add	x8, x8, x10
.LBB15_163:                             //   in Loop: Header=BB15_164 Depth=2
	add	w9, w9, #1
	cmp	w9, w19
	b.eq	.LBB15_289
.LBB15_164:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_168 Depth 3
	cmp	w25, #8
	b.lt	.LBB15_163
// %bb.165:                             //   in Loop: Header=BB15_164 Depth=2
	mov	x10, xzr
	mov	x11, x26
	b	.LBB15_168
.LBB15_166:                             //   in Loop: Header=BB15_168 Depth=3
	sub	w12, w12, w13
.LBB15_167:                             //   in Loop: Header=BB15_168 Depth=3
	and	x12, x12, #0xff
	subs	x11, x11, #1
	mul	x12, x12, x15
	str	x12, [x8, x10]
	add	x10, x10, #8
	b.eq	.LBB15_162
.LBB15_168:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_164 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x12, [x21, #1104]
	cbz	x12, .LBB15_171
// %bb.169:                             //   in Loop: Header=BB15_168 Depth=3
	ldr	w13, [x21, #436]
	ldr	w14, [x20, #2120]
	asr	w13, w13, #1
	cmp	w14, #10
	mul	w13, w9, w13
	add	x13, x12, w13, sxtw #1
	ldr	w12, [x20, #2128]
	ldrh	w13, [x13, x10]
	b.ne	.LBB15_166
// %bb.170:                             //   in Loop: Header=BB15_168 Depth=3
	ldr	w14, [x20, #2116]
	sdiv	w13, w13, w14
	b	.LBB15_166
.LBB15_171:                             //   in Loop: Header=BB15_168 Depth=3
	mov	w12, #-1                        // =0xffffffff
	b	.LBB15_167
.LBB15_172:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2052]
	ldr	w9, [x20, #2064]
	ldr	x0, [x21, #1392]
	ldrsw	x2, [x21, #424]
	sub	w1, w8, w9
	b	.LBB15_288
.LBB15_173:                             //   in Loop: Header=BB15_4 Depth=1
	tst	w9, #0x7000
	b.eq	.LBB15_314
// %bb.174:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [sp, #72]                   // 4-byte Folded Reload
	cmp	w9, #0
	csel	w9, wzr, w12, ne
	tbz	w9, #0, .LBB15_177
// %bb.175:                             //   in Loop: Header=BB15_4 Depth=1
	cbz	w5, .LBB15_418
// %bb.176:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #14                         // =0xe
	mov	w27, #9                         // =0x9
	str	w8, [x0, #32]
	mov	w8, #1                          // =0x1
	b	.LBB15_80
.LBB15_177:                             //   in Loop: Header=BB15_4 Depth=1
	orr	w27, w8, #0x2
.LBB15_178:                             //   in Loop: Header=BB15_4 Depth=1
	sub	w8, w3, #2
	cmp	w8, #19
	b.hi	.LBB15_284
// %bb.179:                             //   in Loop: Header=BB15_4 Depth=1
	adrp	x11, .LJTI15_0
	add	x11, x11, :lo12:.LJTI15_0
	stur	wzr, [x29, #-64]                // 4-byte Folded Spill
.Ltmp27:
	adr	x9, .Ltmp27
	ldrsw	x10, [x11, x8, lsl #2]
	add	x9, x9, x10
	br	x9
.LBB15_180:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #8                          // =0x8
	b	.LBB15_80
.LBB15_181:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.117
	add	x1, x1, :lo12:.L.str.117
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB15_11
.LBB15_182:                             //   in Loop: Header=BB15_4 Depth=1
	ldp	w3, w5, [x28, #40]
	ldp	w4, w6, [x28, #48]
	ldr	x0, [x21, #304]
	tst	w19, #0x1
	adrp	x9, .L.str.113
	add	x9, x9, :lo12:.L.str.113
	adrp	x10, .L.str.112
	add	x10, x10, :lo12:.L.str.112
	csel	x7, x9, x10, ne
	and	w8, w8, #0xff
	adrp	x1, .L.str.168
	add	x1, x1, :lo12:.L.str.168
	adrp	x2, .L.str.144
	add	x2, x2, :lo12:.L.str.144
	str	w8, [sp]
	bl	_dev_info
	mov	x0, x28
	tbnz	w19, #0, .LBB15_146
.LBB15_183:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_buf_release
.LBB15_184:                             //   in Loop: Header=BB15_4 Depth=1
	stur	wzr, [x29, #-60]                // 4-byte Folded Spill
.LBB15_185:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1996]
	cmp	w8, #1
	b.ne	.LBB15_343
// %bb.186:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_dsp_buf_pop_get
	cbz	x0, .LBB15_343
// %bb.187:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	mov	x28, x0
	cmp	w8, #2
	b.ge	.LBB15_286
.LBB15_188:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #1672]
	ldr	x8, [x21, #1680]
	cbz	x0, .LBB15_191
// %bb.189:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	x0, x8
	b.eq	.LBB15_191
// %bb.190:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_buf_release
	ldr	x8, [x21, #1680]
.LBB15_191:                             //   in Loop: Header=BB15_4 Depth=1
	str	x8, [x21, #1672]
	str	x28, [x21, #1680]
	cbz	x8, .LBB15_199
// %bb.192:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	w8, [x29, #-68]                 // 4-byte Folded Reload
	tbz	w8, #0, .LBB15_194
.LBB15_193:                             //   in Loop: Header=BB15_4 Depth=1
	add	x8, x20, #2076
	ldr	w9, [x20, #2084]
	ldur	w2, [x29, #-64]                 // 4-byte Folded Reload
	ldr	x8, [x8]
	mov	x0, x21
	str	w9, [x20, #2096]
	str	x8, [x20, #2088]
	ldr	w1, [x28, #32]
	bl	ebc_lut_update
	ldr	w8, [x21, #1720]
	ldr	w9, [x21, #1728]
	str	w8, [x20, #2052]
	str	w9, [x20, #2056]
.LBB15_194:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #1792]
	mov	w9, #9                          // =0x9
	ldur	w10, [x29, #-64]                // 4-byte Folded Reload
	tst	w27, w9
	and	w9, w8, w9
	str	w10, [x21, #1716]
	b.eq	.LBB15_200
// %bb.195:                             //   in Loop: Header=BB15_4 Depth=1
	cbnz	w9, .LBB15_203
// %bb.196:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w19, [x21, #424]
	ldr	x8, [x21, #1672]
	ldr	x0, [x21, #1248]
	sxtw	x2, w19
	ldr	x1, [x8, #8]
	add	w9, w19, #7
	cmp	w19, #0
	csel	w22, w9, w19, lt
	bl	memcpy
	ldr	x8, [x21, #1680]
	ldr	x0, [x21, #1176]
	ldrsw	x2, [x21, #424]
	ldr	x1, [x8, #8]
	bl	memcpy
	ldr	x0, [x21, #1464]
	ldrsw	x2, [x21, #424]
	mov	w1, wzr
	bl	memset
	ldr	x0, [x21, #1392]
	ldrsw	x2, [x21, #424]
	mov	w1, wzr
	bl	memset
	tbnz	w27, #2, .LBB15_271
// %bb.197:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	mov	w30, #65535                     // =0xffff
	cmp	w8, #2
	b.lt	.LBB15_296
// %bb.198:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	tst	w27, #0x2
	adrp	x8, .L.str.166
	add	x8, x8, :lo12:.L.str.166
	adrp	x9, .L.str.167
	add	x9, x9, :lo12:.L.str.167
	csel	x3, x9, x8, eq
	adrp	x1, .L.str.165
	add	x1, x1, :lo12:.L.str.165
	adrp	x2, .L.str.163
	add	x2, x2, :lo12:.L.str.163
	bl	_dev_info
	mov	w30, #65535                     // =0xffff
	b	.LBB15_296
.LBB15_199:                             //   in Loop: Header=BB15_4 Depth=1
	str	x28, [x21, #1672]
	ldur	w8, [x29, #-68]                 // 4-byte Folded Reload
	tbnz	w8, #0, .LBB15_193
	b	.LBB15_194
.LBB15_200:                             //   in Loop: Header=BB15_4 Depth=1
	cbz	w9, .LBB15_203
// %bb.201:                             //   in Loop: Header=BB15_4 Depth=1
	tbnz	w8, #1, .LBB15_276
// %bb.202:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [x21, #2008]
	tst	w8, #0x4
	adrp	x8, .L.str.170
	add	x8, x8, :lo12:.L.str.170
	adrp	x10, .L.str.171
	add	x10, x10, :lo12:.L.str.171
	csel	x1, x10, x8, eq
	cmp	w9, #2
	mov	w30, #65535                     // =0xffff
	b.lt	.LBB15_296
	b	.LBB15_278
.LBB15_203:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w27, #3, .LBB15_231
// %bb.204:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w8, #3, .LBB15_231
// %bb.205:                             //   in Loop: Header=BB15_4 Depth=1
	adrp	x8, global_ebc
	mov	w30, #65535                     // =0xffff
	ldr	x11, [x8, :lo12:global_ebc]
	ldr	w8, [x11, #192]
	subs	w9, w8, #1
	b.lt	.LBB15_269
// %bb.206:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #1680]
	ldrsw	x11, [x11, #188]
	mov	w10, wzr
	ldr	w1, [x20, #2052]
	ldr	w12, [x20, #2088]
	ldr	x13, [x21, #1464]
	ldr	x14, [x21, #1392]
	neg	x2, x11
	sub	w3, w11, #1
	ldr	x15, [x21, #1320]
	ldr	x16, [x21, #1248]
	sub	w1, w1, #1
	ldr	x17, [x21, #1176]
	ldr	x0, [x0, #8]
	b	.LBB15_209
.LBB15_207:                             //   in Loop: Header=BB15_209 Depth=2
	add	x0, x0, x5
	add	x13, x13, x5
	add	x14, x14, x5
	add	x15, x15, x5
	add	x17, x17, x5
	add	x16, x16, x5
.LBB15_208:                             //   in Loop: Header=BB15_209 Depth=2
	add	w10, w10, #1
	cmp	w10, w8
	b.eq	.LBB15_269
.LBB15_209:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_223 Depth 3
	cmp	w11, #1
	b.lt	.LBB15_208
// %bb.210:                             //   in Loop: Header=BB15_209 Depth=2
	ldrb	w5, [x0]
	ldrb	w4, [x17]
	cmp	w5, w4
	b.eq	.LBB15_219
// %bb.211:                             //   in Loop: Header=BB15_209 Depth=2
	ldrb	w5, [x13]
	cmp	w5, #1
	b.eq	.LBB15_219
// %bb.212:                             //   in Loop: Header=BB15_209 Depth=2
	strb	w4, [x16]
	ldrb	w4, [x0]
	strb	w4, [x17]
	strb	wzr, [x13]
	strb	w24, [x15]
	cbz	w10, .LBB15_214
// %bb.213:                             //   in Loop: Header=BB15_209 Depth=2
	strb	w24, [x15, x2]
.LBB15_214:                             //   in Loop: Header=BB15_209 Depth=2
	cmp	w10, w9
	b.ge	.LBB15_216
// %bb.215:                             //   in Loop: Header=BB15_209 Depth=2
	strb	w24, [x15, x11]
.LBB15_216:                             //   in Loop: Header=BB15_209 Depth=2
	cmp	w11, #1
	b.eq	.LBB15_218
// %bb.217:                             //   in Loop: Header=BB15_209 Depth=2
	strb	w24, [x15, #1]
.LBB15_218:                             //   in Loop: Header=BB15_209 Depth=2
	ldrb	w4, [x14]
	sub	w5, w1, w12
	and	w4, w4, #0xff
	sub	w5, w5, w4
	cmp	w1, w4
	bic	w5, w5, w5, asr #31
	ccmp	w4, #0, #4, gt
	csel	w4, w5, wzr, ne
	strb	w4, [x14]
.LBB15_219:                             //   in Loop: Header=BB15_209 Depth=2
	add	x0, x0, #1
	add	x17, x17, #1
	add	x16, x16, #1
	cmp	w11, #1
	add	x15, x15, #1
	add	x14, x14, #1
	add	x13, x13, #1
	b.eq	.LBB15_208
// %bb.220:                             //   in Loop: Header=BB15_209 Depth=2
	mov	x7, xzr
	add	x4, x15, x11
	add	x6, x15, x2
	b	.LBB15_223
.LBB15_221:                             //   in Loop: Header=BB15_223 Depth=3
	ldrb	w19, [x14, x7]
	sub	w22, w1, w12
	and	w19, w19, #0xff
	sub	w22, w22, w19
	cmp	w1, w19
	bic	w22, w22, w22, asr #31
	ccmp	w19, #0, #4, gt
	csel	w19, w22, wzr, ne
	strb	w19, [x14, x7]
.LBB15_222:                             //   in Loop: Header=BB15_223 Depth=3
	cmp	w3, w5
	mov	x7, x5
	b.eq	.LBB15_207
.LBB15_223:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_209 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w5, [x0, x7]
	ldrb	w19, [x17, x7]
	cmp	w5, w19
	add	x5, x7, #1
	b.eq	.LBB15_222
// %bb.224:                             //   in Loop: Header=BB15_223 Depth=3
	ldrb	w22, [x13, x7]
	cmp	w22, #1
	b.eq	.LBB15_222
// %bb.225:                             //   in Loop: Header=BB15_223 Depth=3
	strb	w19, [x16, x7]
	ldrb	w19, [x0, x7]
	strb	w19, [x17, x7]
	strb	wzr, [x13, x7]
	strb	w24, [x15, x7]
	cbz	w10, .LBB15_227
// %bb.226:                             //   in Loop: Header=BB15_223 Depth=3
	strb	w24, [x6, x7]
.LBB15_227:                             //   in Loop: Header=BB15_223 Depth=3
	cmp	w10, w9
	b.ge	.LBB15_229
// %bb.228:                             //   in Loop: Header=BB15_223 Depth=3
	strb	w24, [x4, x7]
.LBB15_229:                             //   in Loop: Header=BB15_223 Depth=3
	add	x19, x15, x7
	cmp	w5, w3
	sturb	w24, [x19, #-1]
	b.ge	.LBB15_221
// %bb.230:                             //   in Loop: Header=BB15_223 Depth=3
	strb	w24, [x19, #1]
	b	.LBB15_221
.LBB15_231:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w30, #65535                     // =0xffff
	tbz	w27, #0, .LBB15_296
// %bb.232:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w8, #0, .LBB15_296
// %bb.233:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #436]
	ldr	w9, [x21, #432]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w10, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB15_293
// %bb.234:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x13, [x21, #1680]
	asr	w10, w10, #3
	ldr	x11, [x21, #1392]
	ldr	x12, [x21, #1464]
	ldr	x14, [x21, #1248]
	mov	w19, wzr
	ldr	x13, [x13, #8]
	ldr	x15, [x21, #1176]
	mov	w16, wzr
	b	.LBB15_236
.LBB15_235:                             //   in Loop: Header=BB15_236 Depth=2
	add	w16, w16, #1
	cmp	w16, w9
	b.eq	.LBB15_294
.LBB15_236:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_239 Depth 3
                                        //         Child Loop BB15_261 Depth 4
	cmp	w8, #8
	b.lt	.LBB15_235
// %bb.237:                             //   in Loop: Header=BB15_236 Depth=2
	mov	w17, wzr
	b	.LBB15_239
.LBB15_238:                             //   in Loop: Header=BB15_239 Depth=3
	add	w17, w17, #1
	add	x15, x15, #8
	add	x14, x14, #8
	cmp	w17, w10
	add	x13, x13, #8
	add	x12, x12, #8
	add	x11, x11, #8
	b.eq	.LBB15_235
.LBB15_239:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_236 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB15_261 Depth 4
	ldr	x0, [x15]
	ldr	x1, [x13]
	cmp	x0, x1
	b.ne	.LBB15_257
// %bb.240:                             //   in Loop: Header=BB15_239 Depth=3
	tbz	w27, #2, .LBB15_238
// %bb.241:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x12]
	cmp	w0, #1
	b.eq	.LBB15_243
// %bb.242:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x14]
	orr	w0, w0, #0x4
	strb	w0, [x14]
	strb	wzr, [x12]
.LBB15_243:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x12, #1]
	cmp	w0, #1
	b.eq	.LBB15_245
// %bb.244:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x14, #1]
	orr	w0, w0, #0x4
	strb	w0, [x14, #1]
	strb	wzr, [x12, #1]
.LBB15_245:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x12, #2]
	cmp	w0, #1
	b.eq	.LBB15_247
// %bb.246:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x14, #2]
	orr	w0, w0, #0x4
	strb	w0, [x14, #2]
	strb	wzr, [x12, #2]
.LBB15_247:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x12, #3]
	cmp	w0, #1
	b.eq	.LBB15_249
// %bb.248:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x14, #3]
	orr	w0, w0, #0x4
	strb	w0, [x14, #3]
	strb	wzr, [x12, #3]
.LBB15_249:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x12, #4]
	cmp	w0, #1
	b.eq	.LBB15_251
// %bb.250:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x14, #4]
	orr	w0, w0, #0x4
	strb	w0, [x14, #4]
	strb	wzr, [x12, #4]
.LBB15_251:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x12, #5]
	cmp	w0, #1
	b.eq	.LBB15_253
// %bb.252:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x14, #5]
	orr	w0, w0, #0x4
	strb	w0, [x14, #5]
	strb	wzr, [x12, #5]
.LBB15_253:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x12, #6]
	cmp	w0, #1
	b.eq	.LBB15_255
// %bb.254:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x14, #6]
	orr	w0, w0, #0x4
	strb	w0, [x14, #6]
	strb	wzr, [x12, #6]
.LBB15_255:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x12, #7]
	cmp	w0, #1
	b.eq	.LBB15_238
// %bb.256:                             //   in Loop: Header=BB15_239 Depth=3
	ldrb	w0, [x14, #7]
	orr	w0, w0, #0x4
	strb	w0, [x14, #7]
	strb	wzr, [x12, #7]
	b	.LBB15_238
.LBB15_257:                             //   in Loop: Header=BB15_239 Depth=3
	mov	x0, xzr
	b	.LBB15_261
.LBB15_258:                             //   in Loop: Header=BB15_261 Depth=4
	strb	w2, [x15, x0]
	strb	wzr, [x11, x0]
.LBB15_259:                             //   in Loop: Header=BB15_261 Depth=4
	strb	wzr, [x1]
.LBB15_260:                             //   in Loop: Header=BB15_261 Depth=4
	add	x0, x0, #1
	cmp	x0, #8
	b.eq	.LBB15_238
.LBB15_261:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_236 Depth=2
                                        //       Parent Loop BB15_239 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldrb	w3, [x15, x0]
	ldrb	w2, [x13, x0]
	cmp	w3, w2
	b.eq	.LBB15_263
// %bb.262:                             //   in Loop: Header=BB15_261 Depth=4
	add	x1, x12, x0
	ldrb	w4, [x1]
	cmp	w4, #1
	b.ne	.LBB15_266
.LBB15_263:                             //   in Loop: Header=BB15_261 Depth=4
	tbz	w27, #2, .LBB15_260
// %bb.264:                             //   in Loop: Header=BB15_261 Depth=4
	add	x1, x12, x0
	ldrb	w2, [x1]
	cmp	w2, #1
	b.eq	.LBB15_260
// %bb.265:                             //   in Loop: Header=BB15_261 Depth=4
	ldrb	w2, [x14, x0]
	orr	w2, w2, #0x4
	strb	w2, [x14, x0]
	b	.LBB15_259
.LBB15_266:                             //   in Loop: Header=BB15_261 Depth=4
	ldrb	w4, [x11, x0]
	cbz	w4, .LBB15_258
// %bb.267:                             //   in Loop: Header=BB15_261 Depth=4
	ldrb	w4, [x14, x0]
	cmp	w3, w4
	b.eq	.LBB15_258
// %bb.268:                             //   in Loop: Header=BB15_261 Depth=4
	mov	w19, #1                         // =0x1
	b	.LBB15_260
.LBB15_269:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	cmp	w8, #1
	b.le	.LBB15_296
// %bb.270:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.172
	add	x1, x1, :lo12:.L.str.172
	adrp	x2, .L.str.144
	add	x2, x2, :lo12:.L.str.144
	b	.LBB15_279
.LBB15_271:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w19, #8
	mov	w30, #65535                     // =0xffff
	b.lt	.LBB15_327
// %bb.272:                             //   in Loop: Header=BB15_4 Depth=1
	asr	w9, w22, #3
	ldr	x12, [x21, #1248]
	subs	w8, w9, #1
	b.eq	.LBB15_324
// %bb.273:                             //   in Loop: Header=BB15_4 Depth=1
	add	x11, x8, #1
	and	x10, x11, #0x1fffffffe
	add	x8, x12, x10, lsl #3
	add	x12, x12, #8
	mov	x13, x10
.LBB15_274:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldp	x14, x15, [x12, #-8]
	subs	x13, x13, #2
	orr	x14, x14, #0x404040404040404
	orr	x15, x15, #0x404040404040404
	stp	x14, x15, [x12, #-8]
	add	x12, x12, #16
	b.ne	.LBB15_274
// %bb.275:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	x11, x10
	b.ne	.LBB15_325
	b	.LBB15_327
.LBB15_276:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	mov	w30, #65535                     // =0xffff
	cmp	w8, #1
	b.le	.LBB15_296
// %bb.277:                             //   in Loop: Header=BB15_4 Depth=1
	adrp	x1, .L.str.169
	add	x1, x1, :lo12:.L.str.169
.LBB15_278:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x2, .L.str.163
	add	x2, x2, :lo12:.L.str.163
.LBB15_279:                             //   in Loop: Header=BB15_4 Depth=1
	bl	_dev_info
	mov	w30, #65535                     // =0xffff
	b	.LBB15_296
.LBB15_280:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	ldr	w4, [sp, #72]                   // 4-byte Folded Reload
	adrp	x1, .L.str.121
	add	x1, x1, :lo12:.L.str.121
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	mov	w3, w12
	mov	w6, w27
	bl	_dev_info
	b	.LBB15_82
.LBB15_281:                             //   in Loop: Header=BB15_4 Depth=1
	cbnz	w8, .LBB15_109
	b	.LBB15_185
.LBB15_282:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #7                          // =0x7
	b	.LBB15_80
.LBB15_283:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #1                          // =0x1
	b	.LBB15_80
.LBB15_284:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #3                          // =0x3
	b	.LBB15_80
.LBB15_285:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #6                          // =0x6
	b	.LBB15_80
.LBB15_286:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.123
	add	x1, x1, :lo12:.L.str.123
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB15_188
.LBB15_287:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #1392]
	ldrsw	x2, [x21, #424]
	mov	w1, wzr
.LBB15_288:                             //   in Loop: Header=BB15_4 Depth=1
	bl	memset
.LBB15_289:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1792]
	ldur	w25, [x29, #-44]                // 4-byte Folded Reload
	tbz	w8, #2, .LBB15_122
// %bb.290:                             //   in Loop: Header=BB15_4 Depth=1
	mul	w9, w26, w19
	cmp	w9, #1
	b.lt	.LBB15_311
// %bb.291:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x11, [x21, #1248]
	cmp	w9, #1
	b.ne	.LBB15_306
// %bb.292:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w10, wzr
	mov	x8, x11
	b	.LBB15_309
.LBB15_293:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w19, wzr
.LBB15_294:                             //   in Loop: Header=BB15_4 Depth=1
	and	w8, w27, #0xfffffff9
	ldr	w9, [x21, #2008]
	tst	w27, #0x4
	orr	w8, w8, #0x2
	csel	w22, w27, w8, eq
	cmp	w9, #1
	b.gt	.LBB15_420
.LBB15_295:                             //   in Loop: Header=BB15_4 Depth=1
	and	w8, w19, #0x1
	mov	w27, w22
	strb	w8, [x21, #1998]
.LBB15_296:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w9, #9                          // =0x9
	mov	w8, wzr
	str	w27, [x21, #1792]
	tst	w27, w9
	b.ne	.LBB15_300
// %bb.297:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [sp, #72]                   // 4-byte Folded Reload
	tst	w9, #0xff
	b.ne	.LBB15_300
// %bb.298:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #264]
	cmp	w8, #230
	b.ne	.LBB15_303
// %bb.299:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, wzr
.LBB15_300:                             //   in Loop: Header=BB15_4 Depth=1
	str	w8, [x20, #2048]
	tbz	w27, #3, .LBB15_329
.LBB15_301:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	cmp	w8, #1
	b.lt	.LBB15_330
// %bb.302:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	ldr	w3, [x28, #32]
	adrp	x1, .L.str.124
	add	x1, x1, :lo12:.L.str.124
	ldr	w4, [x20, #2052]
	ldr	w5, [x20, #2056]
	adrp	x2, .L.str.125
	add	x2, x2, :lo12:.L.str.125
	bl	_dev_info
	b	.LBB15_417
.LBB15_303:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2044]
	cmp	w8, #1
	cset	w8, eq
	str	w8, [x20, #2048]
	tbnz	w27, #3, .LBB15_301
	b	.LBB15_329
.LBB15_304:                             //   in Loop: Header=BB15_4 Depth=1
	mov	x19, x0
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.138
	add	x1, x1, :lo12:.L.str.138
	adrp	x2, .L.str.139
	add	x2, x2, :lo12:.L.str.139
	bl	_dev_info
	mov	x0, x19
	b	.LBB15_13
.LBB15_305:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.142
	add	x1, x1, :lo12:.L.str.142
	adrp	x2, .L.str.139
	add	x2, x2, :lo12:.L.str.139
	mov	w3, w19
	bl	_dev_info
	ldr	w8, [x21, #184]
	b	.LBB15_23
.LBB15_306:                             //   in Loop: Header=BB15_4 Depth=1
	and	x10, x9, #0x7ffffffe
	add	x8, x11, x10, lsl #3
	add	x11, x11, #8
	mov	x12, x10
.LBB15_307:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldp	x13, x14, [x11, #-8]
	subs	x12, x12, #2
	orr	x13, x13, #0x404040404040404
	orr	x14, x14, #0x404040404040404
	stp	x13, x14, [x11, #-8]
	add	x11, x11, #16
	b.ne	.LBB15_307
// %bb.308:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	x10, x9
	b.eq	.LBB15_311
.LBB15_309:                             //   in Loop: Header=BB15_4 Depth=1
	sub	w9, w9, w10
.LBB15_310:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [x8]
	subs	w9, w9, #1
	orr	x10, x10, #0x404040404040404
	str	x10, [x8], #8
	b.ne	.LBB15_310
.LBB15_311:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #3                          // =0x3
	str	w8, [x21, #1792]
	b	.LBB15_122
.LBB15_312:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.143
	add	x1, x1, :lo12:.L.str.143
	adrp	x2, .L.str.144
	add	x2, x2, :lo12:.L.str.144
	bl	_dev_info
	mov	w5, #2                          // =0x2
	ldrsb	w8, [x20, #2148]
	tbz	w8, #31, .LBB15_56
.LBB15_313:                             //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x8, [x21, #184]
	ldr	x9, [sp, #48]                   // 8-byte Folded Reload
	adrp	x0, .L.str.119
	add	x0, x0, :lo12:.L.str.119
	ldrsw	x2, [x21, #428]
	ldr	x1, [x9, x8, lsl #3]
	bl	write_buffer_to_file
	mov	w5, #2                          // =0x2
	b	.LBB15_56
.LBB15_314:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	tbz	w8, #31, .LBB15_425
.LBB15_315:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w27, #4                         // =0x4
	str	w27, [x0, #32]
.LBB15_316:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #5                          // =0x5
	b	.LBB15_80
.LBB15_317:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #4                          // =0x4
	b	.LBB15_80
.LBB15_318:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #2                          // =0x2
	b	.LBB15_80
.LBB15_319:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #14                         // =0xe
	b	.LBB15_80
.LBB15_320:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2112]
	mov	w9, #15                         // =0xf
	cmp	w8, #0
	mov	w8, #3                          // =0x3
	csel	w8, w9, w8, ne
	b	.LBB15_80
.LBB15_321:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #13                         // =0xd
	b	.LBB15_80
.LBB15_322:                             //   in Loop: Header=BB15_4 Depth=1
	mov	x23, x0
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.140
	add	x1, x1, :lo12:.L.str.140
	mov	w2, #-12                        // =0xfffffff4
	mov	w19, #-12                       // =0xfffffff4
	bl	_dev_err
	mov	x0, x23
	b	.LBB15_32
.LBB15_323:                             //   in Loop: Header=BB15_4 Depth=1
	mov	x23, x0
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.141
	add	x1, x1, :lo12:.L.str.141
	adrp	x2, .L.str.139
	add	x2, x2, :lo12:.L.str.139
	mov	w3, w19
	bl	_dev_info
	mov	x0, x23
	ldr	w23, [sp, #44]                  // 4-byte Folded Reload
	b	.LBB15_33
.LBB15_324:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w10, wzr
	mov	x8, x12
.LBB15_325:                             //   in Loop: Header=BB15_4 Depth=1
	sub	w9, w9, w10
.LBB15_326:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [x8]
	subs	w9, w9, #1
	orr	x10, x10, #0x404040404040404
	str	x10, [x8], #8
	b.ne	.LBB15_326
.LBB15_327:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	cmp	w8, #2
	b.ge	.LBB15_421
.LBB15_328:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w27, #3                         // =0x3
	str	wzr, [x20, #2048]
	str	w27, [x21, #1792]
.LBB15_329:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	cmp	w8, #1
	b.ge	.LBB15_416
.LBB15_330:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x21, #2028]
	ldrb	w8, [x20, #2125]
	cmp	w9, #1
	strb	w8, [x20, #2113]
	b.ne	.LBB15_341
// %bb.331:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x21, #1792]
	tbnz	w9, #0, .LBB15_341
// %bb.332:                             //   in Loop: Header=BB15_4 Depth=1
	cbz	w8, .LBB15_342
// %bb.333:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w25, [x20, #2136]
	ldr	w28, [x20, #2132]
	mov	w8, wzr
	ldr	x19, [x21, #1104]
	str	wzr, [x20, #2128]
	str	w25, [x20, #2120]
	str	w28, [x20, #2116]
	strh	wzr, [x20, #2140]
	strb	wzr, [x20, #2142]
	cbz	x19, .LBB15_413
// %bb.334:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w26, [x21, #436]
	cmp	w26, #1
	b.lt	.LBB15_413
// %bb.335:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w22, [x21, #432]
	cmp	w22, #1
	b.lt	.LBB15_413
// %bb.336:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w28, #1
	b.lt	.LBB15_413
// %bb.337:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	cmp	w8, #1
	b.ge	.LBB15_423
// %bb.338:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w25, #10
	b.eq	.LBB15_424
.LBB15_339:                             //   in Loop: Header=BB15_4 Depth=1
	and	x8, x22, #0xffff
	cbz	w8, .LBB15_424
// %bb.340:                             //   in Loop: Header=BB15_4 Depth=1
	mul	w9, w28, w28
	ubfx	w10, w26, #1, #16
	ubfx	x11, x22, #1, #16
	mov	x13, xzr
	lsl	w12, w9, #2
	b	.LBB15_365
.LBB15_341:                             //   in Loop: Header=BB15_4 Depth=1
	strb	wzr, [x20, #2113]
.LBB15_342:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2052]
	stur	wzr, [x29, #-68]                // 4-byte Folded Spill
	str	w8, [x20, #2064]
.LBB15_343:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2148]
	tbz	w8, #0, .LBB15_345
// %bb.344:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x9, [x21, #1672]
	ldr	x1, [x9, #8]
	cbnz	x1, .LBB15_402
.LBB15_345:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w8, #1, .LBB15_347
.LBB15_346:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x9, [x21, #1680]
	ldr	x1, [x9, #8]
	cbnz	x1, .LBB15_403
.LBB15_347:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w8, #2, .LBB15_349
// %bb.348:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x1, [x21, #1248]
	cbnz	x1, .LBB15_404
.LBB15_349:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w8, #3, .LBB15_351
.LBB15_350:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x1, [x21, #1176]
	cbnz	x1, .LBB15_405
.LBB15_351:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w8, #4, .LBB15_353
// %bb.352:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x1, [x21, #1392]
	cbnz	x1, .LBB15_406
.LBB15_353:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w8, #5, .LBB15_355
.LBB15_354:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x1, [x21, #1320]
	cbnz	x1, .LBB15_407
.LBB15_355:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w8, #6, .LBB15_357
// %bb.356:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x1, [x21, #1464]
	cbnz	x1, .LBB15_408
.LBB15_357:                             //   in Loop: Header=BB15_4 Depth=1
	adrp	x8, ebc_assist_task
	ldr	x0, [x8, :lo12:ebc_assist_task]
	bl	wake_up_process
	ldrb	w8, [x20, #2145]
	ldrb	w9, [x20, #2146]
	orr	w8, w9, w8
	tst	w8, #0xff
	strb	w8, [x20, #2147]
	b.ne	.LBB15_394
// %bb.358:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1998]
	tbnz	w8, #0, .LBB15_394
// %bb.359:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2113]
	cmp	w8, #1
	b.ne	.LBB15_391
// %bb.360:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2140]
	cmp	w8, #1
	b.ne	.LBB15_363
// %bb.361:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2141]
	cmp	w8, #1
	b.ne	.LBB15_363
// %bb.362:                             //   in Loop: Header=BB15_4 Depth=1
	strb	w24, [x20, #2142]
.LBB15_363:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x20, #2142]
	tbnz	w8, #0, .LBB15_392
	b	.LBB15_394
.LBB15_364:                             //   in Loop: Header=BB15_365 Depth=2
	add	x13, x13, #1
	cmp	x13, x8
	b.eq	.LBB15_424
.LBB15_365:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_370 Depth 3
	cbz	w10, .LBB15_364
// %bb.366:                             //   in Loop: Header=BB15_365 Depth=2
	sub	w15, w22, w13
	subs	x1, x13, x11
	mov	w14, wzr
	sdiv	w15, w15, w28
	mul	x16, x1, x1
	asr	x0, x1, #63
	cinc	w17, w24, lt
	cmp	w1, #0
	and	w0, w0, #0x3
	cneg	w1, w1, mi
	b	.LBB15_370
.LBB15_367:                             //   in Loop: Header=BB15_370 Depth=3
	and	w2, w2, #0xffff
	subs	w2, w2, w10
	smaddl	x2, w2, w2, x16
	csel	w3, w17, w0, lt
	orr	w3, w3, #0x4
	udiv	x2, x2, x12
	mul	w2, w3, w2
.LBB15_368:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w2, w30
	csel	w2, w2, w30, lo
.LBB15_369:                             //   in Loop: Header=BB15_370 Depth=3
	add	w14, w14, #1
	strh	w2, [x19], #2
	cmp	w10, w14
	b.eq	.LBB15_364
.LBB15_370:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_365 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	lsl	w2, w14, #1
	cmp	w25, #4
	b.gt	.LBB15_375
// %bb.371:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w25, #2
	b.gt	.LBB15_379
// %bb.372:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w25, #1
	b.eq	.LBB15_385
// %bb.373:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w25, #2
	b.ne	.LBB15_389
// %bb.374:                             //   in Loop: Header=BB15_370 Depth=3
	and	w2, w2, #0xffff
	subs	w2, w2, w10
	cneg	w2, w2, mi
	add	w2, w2, w1
	b	.LBB15_387
.LBB15_375:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w25, #7
	b.gt	.LBB15_382
// %bb.376:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w25, #5
	b.eq	.LBB15_367
// %bb.377:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w25, #7
	b.ne	.LBB15_389
// %bb.378:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w15, w30
	csel	w2, w15, w30, lt
	b	.LBB15_369
.LBB15_379:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w25, #3
	b.eq	.LBB15_386
// %bb.380:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w25, #4
	b.ne	.LBB15_389
// %bb.381:                             //   in Loop: Header=BB15_370 Depth=3
	and	w2, w2, #0xffff
	subs	w2, w2, w10
	cneg	w2, w2, mi
	cmp	w2, w1
	csel	w2, w2, w1, lo
	b	.LBB15_390
.LBB15_382:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w25, #8
	b.eq	.LBB15_388
// %bb.383:                             //   in Loop: Header=BB15_370 Depth=3
	cmp	w25, #9
	b.ne	.LBB15_389
// %bb.384:                             //   in Loop: Header=BB15_370 Depth=3
	udiv	w2, w13, w28
	b	.LBB15_369
.LBB15_385:                             //   in Loop: Header=BB15_370 Depth=3
	and	w2, w2, #0xffff
	sub	w2, w2, w10
	smaddl	x2, w2, w2, x16
	udiv	x2, x2, x9
	cmp	x2, x30
	csel	x2, x2, x30, lo
	b	.LBB15_369
.LBB15_386:                             //   in Loop: Header=BB15_370 Depth=3
	and	w2, w2, #0xffff
	subs	w2, w2, w10
	cneg	w2, w2, mi
	cmp	w2, w1
	csel	w2, w2, w1, hi
.LBB15_387:                             //   in Loop: Header=BB15_370 Depth=3
	udiv	w2, w2, w28
	b	.LBB15_368
.LBB15_388:                             //   in Loop: Header=BB15_370 Depth=3
	sub	w2, w26, w2, uxth
	sdiv	w2, w2, w28
	cmp	w2, w30
	csel	w2, w2, w30, lt
	b	.LBB15_369
.LBB15_389:                             //   in Loop: Header=BB15_370 Depth=3
	and	w2, w2, #0xffff
.LBB15_390:                             //   in Loop: Header=BB15_370 Depth=3
	udiv	w2, w2, w28
	b	.LBB15_369
.LBB15_391:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2064]
	cmp	w8, #0
	b.gt	.LBB15_394
.LBB15_392:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1996]
	tbnz	w8, #0, .LBB15_394
// %bb.393:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x21, #1997]
	tbz	w8, #0, .LBB15_409
.LBB15_394:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x20, #2048]
	cbz	w8, .LBB15_398
// %bb.395:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w8, #1
	b.ne	.LBB15_411
// %bb.396:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	cmp	w8, #2
	b.ge	.LBB15_414
.LBB15_397:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	x8, [x29, #-56]                 // 8-byte Folded Reload
	str	wzr, [x8, #48]
	//APP
	dmb	ish
	//NO_APP
	b	.LBB15_3
.LBB15_398:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	cmp	w8, #2
	b.ge	.LBB15_415
.LBB15_399:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #1792]
	cmp	w8, #9
	b.hi	.LBB15_1
// %bb.400:                             //   in Loop: Header=BB15_4 Depth=1
	lsl	w8, w24, w8
	mov	w9, #552                        // =0x228
	tst	w8, w9
	b.eq	.LBB15_1
// %bb.401:                             //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x8, [x21, #184]
	ldr	x9, [sp, #48]                   // 8-byte Folded Reload
	add	x1, x21, #304
	mov	w2, #2                          // =0x2
	ldr	x0, [x9, x8, lsl #3]
	bl	get_auto_data
	b	.LBB15_2
.LBB15_402:                             //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x2, [x21, #424]
	adrp	x0, .L.str.127
	add	x0, x0, :lo12:.L.str.127
	bl	write_buffer_to_file
	ldrb	w8, [x20, #2148]
	tbnz	w8, #1, .LBB15_346
	b	.LBB15_347
.LBB15_403:                             //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x2, [x21, #424]
	adrp	x0, .L.str.128
	add	x0, x0, :lo12:.L.str.128
	bl	write_buffer_to_file
	ldrb	w8, [x20, #2148]
	b	.LBB15_347
.LBB15_404:                             //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x2, [x21, #424]
	adrp	x0, .L.str.129
	add	x0, x0, :lo12:.L.str.129
	bl	write_buffer_to_file
	ldrb	w8, [x20, #2148]
	tbnz	w8, #3, .LBB15_350
	b	.LBB15_351
.LBB15_405:                             //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x2, [x21, #424]
	adrp	x0, .L.str.130
	add	x0, x0, :lo12:.L.str.130
	bl	write_buffer_to_file
	ldrb	w8, [x20, #2148]
	b	.LBB15_351
.LBB15_406:                             //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x2, [x21, #424]
	adrp	x0, .L.str.131
	add	x0, x0, :lo12:.L.str.131
	bl	write_buffer_to_file
	ldrb	w8, [x20, #2148]
	tbnz	w8, #5, .LBB15_354
	b	.LBB15_355
.LBB15_407:                             //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x2, [x21, #424]
	adrp	x0, .L.str.132
	add	x0, x0, :lo12:.L.str.132
	bl	write_buffer_to_file
	ldrb	w8, [x20, #2148]
	b	.LBB15_355
.LBB15_408:                             //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x2, [x21, #424]
	adrp	x0, .L.str.133
	add	x0, x0, :lo12:.L.str.133
	bl	write_buffer_to_file
	b	.LBB15_357
.LBB15_409:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x21, #2008]
	cmp	w8, #1
	b.ge	.LBB15_422
.LBB15_410:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w25, wzr
.LBB15_411:                             //   in Loop: Header=BB15_4 Depth=1
	bl	schedule
	ldr	w8, [x21, #2008]
	cmp	w8, #1
	b.le	.LBB15_4
// %bb.412:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.137
	add	x1, x1, :lo12:.L.str.137
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB15_4
.LBB15_413:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	w25, [x29, #-44]                // 4-byte Folded Reload
	stur	w8, [x29, #-68]                 // 4-byte Folded Spill
	b	.LBB15_343
.LBB15_414:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.135
	add	x1, x1, :lo12:.L.str.135
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB15_397
.LBB15_415:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	ldr	w3, [x21, #184]
	adrp	x1, .L.str.136
	add	x1, x1, :lo12:.L.str.136
	ldr	w4, [x21, #1792]
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB15_399
.LBB15_416:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	ldr	w3, [x28, #32]
	adrp	x1, .L.str.126
	add	x1, x1, :lo12:.L.str.126
	ldr	w4, [x20, #2052]
	adrp	x2, .L.str.125
	add	x2, x2, :lo12:.L.str.125
	bl	_dev_info
.LBB15_417:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w30, #65535                     // =0xffff
	b	.LBB15_330
.LBB15_418:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w27, #9                         // =0x9
	b	.LBB15_178
.LBB15_419:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.162
	add	x1, x1, :lo12:.L.str.162
	adrp	x2, .L.str.163
	add	x2, x2, :lo12:.L.str.163
	bl	_dev_info
	b	.LBB15_152
.LBB15_420:                             //   in Loop: Header=BB15_4 Depth=1
	tst	w27, #0x4
	adrp	x8, .L.str.166
	add	x8, x8, :lo12:.L.str.166
	adrp	x9, .L.str.174
	add	x9, x9, :lo12:.L.str.174
	ldr	x0, [x21, #304]
	csel	x3, x8, x9, eq
	tst	w19, #0x1
	adrp	x8, .L.str.113
	add	x8, x8, :lo12:.L.str.113
	adrp	x9, .L.str.112
	add	x9, x9, :lo12:.L.str.112
	csel	x4, x8, x9, ne
	adrp	x1, .L.str.173
	add	x1, x1, :lo12:.L.str.173
	adrp	x2, .L.str.144
	add	x2, x2, :lo12:.L.str.144
	bl	_dev_info
	mov	w30, #65535                     // =0xffff
	b	.LBB15_295
.LBB15_421:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.164
	add	x1, x1, :lo12:.L.str.164
	adrp	x2, .L.str.163
	add	x2, x2, :lo12:.L.str.163
	bl	_dev_info
	mov	w30, #65535                     // =0xffff
	b	.LBB15_328
.LBB15_422:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.134
	add	x1, x1, :lo12:.L.str.134
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB15_410
.LBB15_423:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.175
	add	x1, x1, :lo12:.L.str.175
	adrp	x2, .L.str.176
	add	x2, x2, :lo12:.L.str.176
	mov	w3, w25
	mov	w4, w28
	bl	_dev_info
	mov	w30, #65535                     // =0xffff
	cmp	w25, #10
	b.ne	.LBB15_339
.LBB15_424:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	w25, [x29, #-44]                // 4-byte Folded Reload
	stur	wzr, [x29, #-68]                // 4-byte Folded Spill
	b	.LBB15_343
.LBB15_425:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x8, [x21, #304]
	mov	x19, x0
	adrp	x1, .L.str.148
	add	x1, x1, :lo12:.L.str.148
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	mov	x0, x8
	mov	w22, w5
	mov	w27, w12
	bl	_dev_info
	mov	w12, w27
	mov	w5, w22
	mov	x0, x19
	b	.LBB15_315
.Lfunc_end15:
	.size	ebc_thread, .Lfunc_end15-ebc_thread
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI15_0:
	.word	.LBB15_284-.Ltmp27
	.word	.LBB15_317-.Ltmp27
	.word	.LBB15_316-.Ltmp27
	.word	.LBB15_285-.Ltmp27
	.word	.LBB15_180-.Ltmp27
	.word	.LBB15_319-.Ltmp27
	.word	.LBB15_321-.Ltmp27
	.word	.LBB15_316-.Ltmp27
	.word	.LBB15_285-.Ltmp27
	.word	.LBB15_180-.Ltmp27
	.word	.LBB15_282-.Ltmp27
	.word	.LBB15_282-.Ltmp27
	.word	.LBB15_283-.Ltmp27
	.word	.LBB15_318-.Ltmp27
	.word	.LBB15_283-.Ltmp27
	.word	.LBB15_81-.Ltmp27
	.word	.LBB15_284-.Ltmp27
	.word	.LBB15_284-.Ltmp27
	.word	.LBB15_284-.Ltmp27
	.word	.LBB15_320-.Ltmp27
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_delay_power_off
	.type	ebc_delay_power_off,@function
	.word	3093299638                      // 0xb86001b6
ebc_delay_power_off:                    // @ebc_delay_power_off
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	ldr	x20, [x8, :lo12:global_ebc]
	ldr	w8, [x20, #1788]
	cbz	w8, .LBB16_9
// %bb.1:
	ldr	w8, [x20, #2004]
	cbz	w8, .LBB16_3
// %bb.2:
	mov	x0, xzr
	bl	ebc_notify
.LBB16_3:
	ldr	x0, [x20, #8]
	str	wzr, [x20, #1788]
	ldr	x8, [x0, #176]
	ldur	w16, [x8, #-4]
	movk	w17, #15803
	movk	w17, #24474, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp28
	brk	#0x8228
.Ltmp28:
	blr	x8
	ldrb	w8, [x20, #296]
	cmp	w8, #1
	b.ne	.LBB16_5
// %bb.4:
	mov	w0, #10                         // =0xa
	bl	msleep
.LBB16_5:
	ldr	x0, [x20, #16]
	cbz	x0, .LBB16_10
// %bb.6:
	ldr	x8, [x0, #32]
	mov	w1, wzr
	ldur	w16, [x8, #-4]
	movk	w17, #39905
	movk	w17, #26023, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp29
	brk	#0x8228
.Ltmp29:
	blr	x8
	mov	w19, wzr
	ldr	w8, [x20, #1992]
	cbz	w8, .LBB16_8
.LBB16_7:
	add	x0, x20, #1800
	str	wzr, [x20, #1992]
	bl	__pm_relax
.LBB16_8:
	ldr	w8, [x20, #2008]
	cmp	w8, #1
	b.ge	.LBB16_11
.LBB16_9:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB16_10:
	ldr	x0, [x20, #24]
	bl	regulator_disable
	mov	w19, w0
	ldr	w8, [x20, #1992]
	cbnz	w8, .LBB16_7
	b	.LBB16_8
.LBB16_11:
	ldr	x0, [x20, #304]
	adrp	x1, .L.str.161
	add	x1, x1, :lo12:.L.str.161
	adrp	x2, .L.str.160
	add	x2, x2, :lo12:.L.str.160
	mov	w3, w19
	bl	_dev_info
	b	.LBB16_9
.Lfunc_end16:
	.size	ebc_delay_power_off, .Lfunc_end16-ebc_delay_power_off
                                        // -- End function
	.p2align	2                               // -- Begin function get_auto_data
	.type	get_auto_data,@function
get_auto_data:                          // @get_auto_data
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #208
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #144]            // 16-byte Folded Spill
	ldr	x25, [x1, #1088]
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x24, x23, [sp, #160]            // 16-byte Folded Spill
	add	x13, x1, #4, lsl #12            // =16384
	ldr	x23, [x1, #872]
	ldr	x24, [x1, #944]
	ldr	x26, [x1, #1160]
	ldr	w9, [x8, #272]
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stp	x28, x27, [sp, #128]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #192]            // 16-byte Folded Spill
	str	x0, [sp, #48]                   // 8-byte Folded Spill
	str	w2, [sp, #28]                   // 4-byte Folded Spill
	stp	x13, x1, [sp, #8]               // 16-byte Folded Spill
	cbz	w9, .LBB17_3
// %bb.1:
	ldr	w9, [x13, #1748]
	ldr	w10, [x13, #1756]
	cmp	w2, #2
	ldr	w11, [x13, #1752]
	ldp	w12, w22, [x8, #188]
	stp	w9, w10, [x29, #-12]
	ldr	x9, [x1, #1440]
	sub	w10, w11, #1
	ldr	x11, [x1, #1448]
	stur	w10, [x29, #-4]
	mov	x10, #2048                      // =0x800
	stur	x9, [x29, #-24]
	ldr	x8, [x8, #120]
	movk	x10, #6160, lsl #16
	stp	x9, x11, [x29, #-40]
	add	w11, w22, w22, lsr #31
	mov	x9, #3076                       // =0xc04
	movk	x9, #7188, lsl #16
	movk	x10, #10272, lsl #32
	lsr	x19, x12, #3
	movk	x9, #11300, lsl #32
	asr	w28, w11, #1
	ldr	w20, [x8, #120]
	movk	x10, #14384, lsl #48
	movk	x9, #15412, lsl #48
	str	x12, [sp, #40]                  // 8-byte Folded Spill
	stur	x10, [x29, #-48]
	str	x9, [sp, #56]
	b.ne	.LBB17_8
// %bb.2:
	mov	w22, w28
	mov	w28, wzr
	b	.LBB17_9
.LBB17_3:
	mov	x9, #256                        // =0x100
	ldr	x11, [x8, #120]
	mov	x14, #1543                      // =0x607
	movk	x9, #770, lsl #16
	movk	x14, #1029, lsl #16
	ldr	w10, [x13, #1748]
	movk	x9, #1284, lsl #32
	movk	x14, #515, lsl #32
	ldr	w12, [x13, #1756]
	movk	x9, #1798, lsl #48
	movk	x14, #1, lsl #48
	ldr	w13, [x13, #1752]
	stur	x9, [x29, #-48]
	add	x16, sp, #56
	ldr	x15, [x1, #1440]
	ldp	w9, w11, [x11, #116]
	str	x14, [sp, #56]
	sub	x14, x29, #48
	ldr	x17, [x1, #1448]
	stp	w10, w12, [x29, #-12]
	sub	w12, w13, #1
	cmp	w9, #0
	str	w11, [sp, #32]                  // 4-byte Folded Spill
	csel	x10, x14, x16, eq
	stur	w12, [x29, #-4]
	cmp	w2, #2
	ldrb	w13, [x10, #1]
	ldrb	w11, [x10]
	ldrb	w14, [x10, #2]
	ldrb	w12, [x10, #3]
	stp	x15, x17, [x29, #-40]
	lsl	w13, w13, #1
	lsl	w11, w11, #1
	lsl	w14, w14, #1
	stur	x15, [x29, #-24]
	ldrb	w15, [x10, #4]
	strb	w13, [x10, #1]
	ldp	w13, w6, [x8, #188]
	strb	w11, [x10]
	lsl	w11, w12, #1
	ldrb	w12, [x10, #5]
	strb	w14, [x10, #2]
	ldrb	w14, [x10, #6]
	lsl	w15, w15, #1
	lsl	w12, w12, #1
	strb	w11, [x10, #3]
	add	w16, w6, w6, lsr #31
	lsl	w11, w14, #1
	ldrb	w14, [x10, #7]
	strb	w15, [x10, #4]
	strb	w12, [x10, #5]
	lsr	w15, w13, #3
	asr	w16, w16, #1
	lsl	w12, w14, #1
	ldr	w14, [x8, #260]
	strb	w11, [x10, #6]
	str	w13, [sp, #40]                  // 4-byte Folded Spill
	strb	w12, [x10, #7]
	b.ne	.LBB17_30
// %bb.4:
	mov	w6, w16
	mov	w16, wzr
	cmp	w16, w6
	b.lt	.LBB17_31
.LBB17_5:
	mov	w17, wzr
.LBB17_6:
	ldr	w10, [sp, #28]                  // 4-byte Folded Reload
	cmp	w10, #2
	b.ne	.LBB17_63
// %bb.7:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	strb	w17, [x8, #1842]
	b	.LBB17_64
.LBB17_8:
	mul	w8, w28, w19
	sbfiz	x8, x8, #3, #32
	add	x23, x23, x8
	add	x24, x24, x8
	add	x25, x25, x8
	add	x26, x26, x8
.LBB17_9:
	mul	w8, w28, w20
	subs	w9, w22, w28
	mov	w1, wzr
	mul	w2, w9, w20
	ldr	x9, [sp, #48]                   // 8-byte Folded Reload
	add	x0, x9, x8
	bl	memset
	cmp	w22, w28
	mov	w8, wzr
	b.le	.LBB17_25
// %bb.10:
	mov	w8, wzr
	mov	x9, xzr
	adrp	x11, _8_8bit_mask
	add	x11, x11, :lo12:_8_8bit_mask
	adrp	x13, .L__const.get_normal_panel_auto_data.offset
	add	x13, x13, :lo12:.L__const.get_normal_panel_auto_data.offset
	sub	x14, x29, #40
	sub	x15, x29, #12
	mov	w16, #1                         // =0x1
	b	.LBB17_12
.LBB17_11:                              //   in Loop: Header=BB17_12 Depth=1
	add	w28, w28, #1
	cmp	w28, w22
	b.eq	.LBB17_25
.LBB17_12:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB17_17 Depth 2
                                        //       Child Loop BB17_21 Depth 3
	mul	w17, w28, w20
	ldr	x10, [sp, #48]                  // 8-byte Folded Reload
	tst	w28, #0x1
	sub	x12, x29, #48
	add	x0, x10, x17
	add	x10, sp, #56
	csel	x17, x12, x10, eq
	ldr	x10, [sp, #40]                  // 8-byte Folded Reload
	csel	x9, x0, x9, eq
	cmp	w10, #8
	b.lo	.LBB17_11
// %bb.13:                              //   in Loop: Header=BB17_12 Depth=1
	mov	x0, xzr
	b	.LBB17_17
.LBB17_14:                              //   in Loop: Header=BB17_17 Depth=2
	str	x3, [x24]
.LBB17_15:                              //   in Loop: Header=BB17_17 Depth=2
	ldr	w10, [x9, x0, lsl #2]
	orr	w10, w10, w1
	str	w10, [x9, x0, lsl #2]
.LBB17_16:                              //   in Loop: Header=BB17_17 Depth=2
	add	x0, x0, #1
	add	x23, x23, #8
	add	x24, x24, #8
	cmp	x0, x19
	add	x25, x25, #8
	add	x26, x26, #8
	b.eq	.LBB17_11
.LBB17_17:                              //   Parent Loop BB17_12 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB17_21 Depth 3
	ldr	x2, [x23]
	ldr	x3, [x24]
	cmp	x2, x3
	b.eq	.LBB17_16
// %bb.18:                              //   in Loop: Header=BB17_17 Depth=2
	mov	x4, xzr
	mov	w6, wzr
	mov	w1, wzr
	eor	x5, x3, x2
	b	.LBB17_21
.LBB17_19:                              //   in Loop: Header=BB17_21 Depth=3
	lsl	w10, w16, w30
	and	w10, w10, #0xff
	orr	w8, w8, w10
.LBB17_20:                              //   in Loop: Header=BB17_21 Depth=3
	add	x4, x4, #1
	cmp	x4, #8
	b.eq	.LBB17_24
.LBB17_21:                              //   Parent Loop BB17_12 Depth=1
                                        //     Parent Loop BB17_17 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x7, [x11, x4, lsl #3]
	tst	x7, x5
	b.eq	.LBB17_20
// %bb.22:                              //   in Loop: Header=BB17_21 Depth=3
	ldr	w30, [x13, x4, lsl #2]
	ldrb	w21, [x26, x4]
	ldrb	w12, [x25, x4]
	lsr	x10, x2, x30
	ldr	x21, [x14, x21, lsl #3]
	lsr	x30, x3, x30
	and	x10, x10, #0x1f
	add	x21, x21, x12, lsl #10
	add	w12, w12, #1
	bfi	x10, x30, #5, #5
	ldrb	w10, [x21, x10]
	ldrb	w21, [x17, x4]
	strb	w12, [x25, x4]
	ldrb	w30, [x26, x4]
	lsl	w10, w10, w21
	ldr	w27, [x15, x30, lsl #2]
	orr	w1, w10, w1
	cmp	w27, w12, uxtb
	b.gt	.LBB17_19
// %bb.23:                              //   in Loop: Header=BB17_21 Depth=3
	bic	x10, x3, x7
	and	x12, x7, x2
	strb	wzr, [x25, x4]
	cmp	x4, #7
	add	x4, x4, #1
	orr	x3, x10, x12
	mov	w6, #1                          // =0x1
	b.ne	.LBB17_21
	b	.LBB17_14
.LBB17_24:                              //   in Loop: Header=BB17_17 Depth=2
	tbnz	w6, #0, .LBB17_14
	b	.LBB17_15
.LBB17_25:
	ldr	w11, [sp, #28]                  // 4-byte Folded Reload
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	cmp	w11, #2
	b.ne	.LBB17_27
// %bb.26:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	strb	w8, [x9, #1842]
	b	.LBB17_28
.LBB17_27:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	strb	w8, [x9, #1841]
.LBB17_28:
	ldr	w9, [x10, #1704]
	cmp	w9, #2
	b.lt	.LBB17_65
// %bb.29:
	ldr	x0, [x10]
	adrp	x9, .L.str.111
	add	x9, x9, :lo12:.L.str.111
	cmp	w11, #2
	adrp	x10, .L.str.110
	add	x10, x10, :lo12:.L.str.110
	csel	x9, x10, x9, eq
	adrp	x10, .L.str.109
	add	x10, x10, :lo12:.L.str.109
	cmp	w11, #3
	adrp	x1, .L.str.108
	add	x1, x1, :lo12:.L.str.108
	ldp	w4, w5, [x29, #-12]
	csel	x2, x10, x9, eq
	adrp	x9, .L.str.112
	add	x9, x9, :lo12:.L.str.112
	cmp	w8, #0
	adrp	x8, .L.str.113
	add	x8, x8, :lo12:.L.str.113
	csel	x3, x8, x9, eq
	bl	_dev_info
	b	.LBB17_65
.LBB17_30:
	mul	w11, w16, w15
	sbfiz	x11, x11, #3, #32
	add	x23, x23, x11
	add	x24, x24, x11
	add	x25, x25, x11
	add	x26, x26, x11
	cmp	w16, w6
	b.ge	.LBB17_5
.LBB17_31:
	mov	w17, wzr
	adrp	x0, _8_8bit_mask
	add	x0, x0, :lo12:_8_8bit_mask
	adrp	x2, .L__const.get_normal_panel_auto_data.offset
	add	x2, x2, :lo12:.L__const.get_normal_panel_auto_data.offset
	sub	x3, x29, #40
	sub	x4, x29, #12
	mov	w5, #1                          // =0x1
	str	w6, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB17_33
.LBB17_32:                              //   in Loop: Header=BB17_33 Depth=1
	ldr	w6, [sp, #36]                   // 4-byte Folded Reload
	add	w16, w16, #1
	cmp	w16, w6
	b.eq	.LBB17_6
.LBB17_33:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB17_40 Depth 2
                                        //       Child Loop BB17_47 Depth 3
	ldr	w12, [x8, #268]
	mov	w11, w16
	cbz	w12, .LBB17_35
// %bb.34:                              //   in Loop: Header=BB17_33 Depth=1
	ldr	w11, [x8, #192]
	mvn	w12, w16
	add	w11, w11, w12
.LBB17_35:                              //   in Loop: Header=BB17_33 Depth=1
	ldr	w12, [sp, #40]                  // 4-byte Folded Reload
	cmp	w12, #8
	b.lo	.LBB17_32
// %bb.36:                              //   in Loop: Header=BB17_33 Depth=1
	ldr	x12, [x8, #120]
	ldr	w13, [sp, #32]                  // 4-byte Folded Reload
	mov	w6, wzr
	ldr	w12, [x12, #104]
	mul	w11, w11, w13
	ldr	x13, [sp, #48]                  // 8-byte Folded Reload
	mul	w12, w12, w9
	add	x11, x13, x11
	add	x7, x11, x12
	b	.LBB17_40
.LBB17_37:                              //   in Loop: Header=BB17_40 Depth=2
	strh	wzr, [x7]
.LBB17_38:                              //   in Loop: Header=BB17_40 Depth=2
	mov	w11, #2                         // =0x2
.LBB17_39:                              //   in Loop: Header=BB17_40 Depth=2
	add	w6, w6, #1
	add	x7, x7, x11
	add	x23, x23, #8
	cmp	w6, w15
	add	x24, x24, #8
	add	x25, x25, #8
	add	x26, x26, #8
	b.eq	.LBB17_32
.LBB17_40:                              //   Parent Loop BB17_33 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB17_47 Depth 3
	ldr	x20, [x23]
	ldr	x22, [x24]
	cmp	x20, x22
	b.ne	.LBB17_44
// %bb.41:                              //   in Loop: Header=BB17_40 Depth=2
	cmp	w9, #4
	b.eq	.LBB17_55
// %bb.42:                              //   in Loop: Header=BB17_40 Depth=2
	cmp	w9, #2
	b.ne	.LBB17_37
// %bb.43:                              //   in Loop: Header=BB17_40 Depth=2
	ldrb	w11, [x7, #1]
	ldrb	w12, [x7, #3]
	lsl	w11, w11, #8
	lsl	w12, w12, #8
	strh	w11, [x7]
	mov	w11, #4                         // =0x4
	strh	w12, [x7, #2]
	b	.LBB17_39
.LBB17_44:                              //   in Loop: Header=BB17_40 Depth=2
	mov	x27, xzr
	mov	w30, wzr
	mov	w19, wzr
	eor	x28, x22, x20
	b	.LBB17_47
.LBB17_45:                              //   in Loop: Header=BB17_47 Depth=3
	lsl	w11, w5, w12
	orr	w17, w17, w11
.LBB17_46:                              //   in Loop: Header=BB17_47 Depth=3
	add	x27, x27, #1
	cmp	x27, #8
	b.eq	.LBB17_50
.LBB17_47:                              //   Parent Loop BB17_33 Depth=1
                                        //     Parent Loop BB17_40 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x11, [x0, x27, lsl #3]
	tst	x11, x28
	b.eq	.LBB17_46
// %bb.48:                              //   in Loop: Header=BB17_47 Depth=3
	ldr	w12, [x2, x27, lsl #2]
	ldrb	w21, [x26, x27]
	ldrb	w1, [x25, x27]
	lsr	x13, x20, x12
	ldr	x21, [x3, x21, lsl #3]
	lsr	x12, x22, x12
	and	x13, x13, #0x1f
	add	x21, x21, x1, lsl #10
	add	w1, w1, #1
	bfi	x13, x12, #5, #5
	ldrb	w13, [x21, x13]
	ldrb	w21, [x10, x27]
	strb	w1, [x25, x27]
	ldrb	w12, [x26, x27]
	lsl	w13, w13, w21
	ldr	w21, [x4, x12, lsl #2]
	and	w13, w13, #0xffff
	cmp	w21, w1, uxtb
	orr	w19, w19, w13
	b.gt	.LBB17_45
// %bb.49:                              //   in Loop: Header=BB17_47 Depth=3
	bic	x12, x22, x11
	and	x11, x11, x20
	strb	wzr, [x25, x27]
	cmp	x27, #7
	add	x27, x27, #1
	orr	x22, x12, x11
	mov	w30, #1                         // =0x1
	b.ne	.LBB17_47
	b	.LBB17_51
.LBB17_50:                              //   in Loop: Header=BB17_40 Depth=2
	tbz	w30, #0, .LBB17_52
.LBB17_51:                              //   in Loop: Header=BB17_40 Depth=2
	str	x22, [x24]
.LBB17_52:                              //   in Loop: Header=BB17_40 Depth=2
	cmp	w9, #4
	b.eq	.LBB17_57
// %bb.53:                              //   in Loop: Header=BB17_40 Depth=2
	cmp	w9, #2
	b.ne	.LBB17_60
// %bb.54:                              //   in Loop: Header=BB17_40 Depth=2
	ldrb	w11, [x7, #1]
	ldrb	w12, [x7, #3]
	lsl	w11, w11, #8
	orr	w11, w11, w19, lsr #8
	bfi	w19, w12, #8, #8
	strh	w11, [x7]
	mov	w11, #4                         // =0x4
	strh	w19, [x7, #2]
	b	.LBB17_39
.LBB17_55:                              //   in Loop: Header=BB17_40 Depth=2
	cbz	w14, .LBB17_61
// %bb.56:                              //   in Loop: Header=BB17_40 Depth=2
	ldr	x11, [x8, #120]
	mov	w13, #255                       // =0xff
	ldp	w11, w12, [x11, #96]
	lsl	w12, w13, w12
	lsl	w11, w13, w11
	ldr	w13, [x7]
	orr	w11, w11, w12
	bic	w11, w13, w11
	b	.LBB17_59
.LBB17_57:                              //   in Loop: Header=BB17_40 Depth=2
	cbz	w14, .LBB17_62
// %bb.58:                              //   in Loop: Header=BB17_40 Depth=2
	ldr	x11, [x8, #120]
	mov	w1, #255                        // =0xff
	ldr	w12, [x7]
	and	w13, w19, #0xff00
	ldr	w11, [x11, #100]
	lsl	w11, w1, w11
	bic	w11, w12, w11
	str	w11, [x7]
	ldr	x12, [x8, #120]
	ldr	w12, [x12, #100]
	sub	w12, w12, #8
	lsl	w12, w13, w12
	and	w13, w19, #0xff
	orr	w11, w12, w11
	str	w11, [x7]
	ldr	x12, [x8, #120]
	ldr	w12, [x12, #96]
	lsl	w12, w1, w12
	bic	w11, w11, w12
	str	w11, [x7]
	ldr	x12, [x8, #120]
	ldr	w12, [x12, #96]
	lsl	w12, w13, w12
	orr	w11, w12, w11
.LBB17_59:                              //   in Loop: Header=BB17_40 Depth=2
	str	w11, [x7]
	mov	w11, #4                         // =0x4
	b	.LBB17_39
.LBB17_60:                              //   in Loop: Header=BB17_40 Depth=2
	strh	w19, [x7]
	b	.LBB17_38
.LBB17_61:                              //   in Loop: Header=BB17_40 Depth=2
	ldp	w11, w12, [x7]
	and	w11, w11, #0xffffff00
	and	w12, w12, #0xffffff00
	stp	w11, w12, [x7]
	mov	w11, #8                         // =0x8
	b	.LBB17_39
.LBB17_62:                              //   in Loop: Header=BB17_40 Depth=2
	ldr	w11, [x7]
	strb	w19, [x7, #4]
	and	w11, w11, #0xffffff00
	orr	w11, w11, w19, lsr #8
	str	w11, [x7]
	mov	w11, #8                         // =0x8
	b	.LBB17_39
.LBB17_63:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	strb	w17, [x8, #1841]
.LBB17_64:
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	ldr	w8, [x11, #1704]
	cmp	w8, #2
	b.ge	.LBB17_66
.LBB17_65:
	ldp	x20, x19, [sp, #192]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #208
	ldr	x30, [x18, #-8]!
	ret
.LBB17_66:
	adrp	x8, .L.str.111
	add	x8, x8, :lo12:.L.str.111
	adrp	x9, .L.str.110
	add	x9, x9, :lo12:.L.str.110
	cmp	w10, #2
	ldr	x0, [x11]
	ldp	w4, w5, [x29, #-12]
	csel	x8, x9, x8, eq
	cmp	w10, #3
	ldur	w6, [x29, #-4]
	adrp	x9, .L.str.109
	add	x9, x9, :lo12:.L.str.109
	adrp	x1, .L.str.114
	add	x1, x1, :lo12:.L.str.114
	csel	x2, x9, x8, eq
	and	w3, w17, #0xff
	bl	_dev_info
	b	.LBB17_65
.Lfunc_end17:
	.size	get_auto_data, .Lfunc_end17-get_auto_data
                                        // -- End function
	.p2align	2                               // -- Begin function get_full_or_part_data
	.type	get_full_or_part_data,@function
get_full_or_part_data:                  // @get_full_or_part_data
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #304
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #240]            // 16-byte Folded Spill
	add	x12, x1, #4, lsl #12            // =16384
	ldr	x25, [x8, :lo12:global_ebc]
	stp	x29, x30, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #208
	stp	x20, x19, [sp, #288]            // 16-byte Folded Spill
	mov	x20, x1
	ldr	w8, [x25, #272]
	stp	x28, x27, [sp, #224]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #256]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #272]            // 16-byte Folded Spill
	stur	x12, [x29, #-56]                // 8-byte Folded Spill
	cbz	w8, .LBB18_14
// %bb.1:
	ldr	w8, [x25, #192]
	ldr	x10, [x25, #120]
	cmp	w2, #2
	mov	w22, w2
	ldr	w24, [x12, #1748]
	ldr	w11, [x12, #1760]
	add	w9, w8, w8, lsr #31
	ldr	w10, [x10, #120]
	ldr	w25, [x25, #188]
	ldrb	w26, [x12, #1809]
	mov	w1, wzr
	sub	w21, w24, w11
	asr	w9, w9, #1
	csel	w19, w9, w8, eq
	csel	w23, wzr, w9, eq
	mul	w8, w23, w10
	subs	w9, w19, w23
	mul	w2, w9, w10
	add	x0, x0, x8
	bl	memset
	cmp	w19, w23
	b.le	.LBB18_20
// %bb.2:
	ldur	x15, [x29, #-56]                // 8-byte Folded Reload
	and	x9, x25, #0xfffffff8
	mov	w8, #1                          // =0x1
	mov	w14, w22
	b	.LBB18_4
.LBB18_3:                               //   in Loop: Header=BB18_4 Depth=1
	add	w23, w23, #1
	cmp	w23, w19
	b.eq	.LBB18_21
.LBB18_4:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_9 Depth 2
	cmp	w25, #8
	b.lo	.LBB18_3
// %bb.5:                               //   in Loop: Header=BB18_4 Depth=1
	mov	x10, xzr
	b	.LBB18_9
.LBB18_6:                               //   in Loop: Header=BB18_9 Depth=2
	ldr	w12, [x15, #1824]
	sub	w21, w12, w11
	cmp	w21, w24
	cset	w11, ge
.LBB18_7:                               //   in Loop: Header=BB18_9 Depth=2
	and	w8, w11, w8
.LBB18_8:                               //   in Loop: Header=BB18_9 Depth=2
	add	x10, x10, #8
	cmp	x9, x10
	b.eq	.LBB18_3
.LBB18_9:                               //   Parent Loop BB18_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	cbz	w26, .LBB18_8
// %bb.10:                              //   in Loop: Header=BB18_9 Depth=2
	ldr	x11, [x20, #800]
	cbz	x11, .LBB18_13
// %bb.11:                              //   in Loop: Header=BB18_9 Depth=2
	ldr	w12, [x20, #132]
	ldr	w13, [x15, #1816]
	asr	w12, w12, #1
	cmp	w13, #10
	mul	w12, w12, w23
	add	x11, x11, w12, sxtw #1
	asr	w12, w10, #1
	ldrh	w11, [x11, w12, sxtw #1]
	b.ne	.LBB18_6
// %bb.12:                              //   in Loop: Header=BB18_9 Depth=2
	ldr	w12, [x15, #1812]
	sdiv	w11, w11, w12
	b	.LBB18_6
.LBB18_13:                              //   in Loop: Header=BB18_9 Depth=2
	cmp	w24, #0
	mov	w21, #-1                        // =0xffffffff
	cset	w11, lt
	b	.LBB18_7
.LBB18_14:
	ldr	w11, [x12, #1748]
	ldr	w9, [x12, #1760]
	mov	x15, x12
	ldr	x8, [x20, #1376]
	str	w2, [sp, #8]                    // 4-byte Folded Spill
	ldr	w10, [x25, #264]
	sub	w1, w11, w9
	stur	w11, [x29, #-16]                // 4-byte Folded Spill
	ldr	x9, [x20, #1440]
	ldp	w26, w27, [x25, #188]
	ldr	x12, [x8, #8]
	lsl	w11, w1, #10
	cmp	w10, #230
	ldr	x8, [x20, #1368]
	ldrb	w28, [x15, #1809]
	add	x2, x9, w11, sxtw
	ldr	w9, [x25, #260]
	add	w14, w27, w27, lsr #31
	ldr	x13, [x8, #8]
	ldr	x8, [x25, #120]
	stur	w9, [x29, #-44]                 // 4-byte Folded Spill
	asr	w24, w14, #1
	ldp	w30, w9, [x8, #116]
	str	w9, [sp, #92]                   // 4-byte Folded Spill
	b.ne	.LBB18_26
// %bb.15:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	lsr	w11, w26, #2
	cmp	w8, #2
	b.ne	.LBB18_31
// %bb.16:
	mov	w27, w24
	mov	w24, wzr
	cmp	w24, w27
	b.lt	.LBB18_32
.LBB18_17:
	mov	w17, #1                         // =0x1
.LBB18_18:
	ldr	w11, [sp, #8]                   // 4-byte Folded Reload
	and	w8, w17, #0x1
	cmp	w11, #2
	b.ne	.LBB18_66
// %bb.19:
	ldur	x9, [x29, #-56]                 // 8-byte Folded Reload
	strb	w8, [x9, #1837]
	b	.LBB18_67
.LBB18_20:
	ldur	x15, [x29, #-56]                // 8-byte Folded Reload
	mov	w8, #1                          // =0x1
	mov	w14, w22
.LBB18_21:
	cmp	w14, #2
	and	w8, w8, #0x1
	b.ne	.LBB18_23
// %bb.22:
	strb	w8, [x15, #1837]
	b	.LBB18_24
.LBB18_23:
	strb	w8, [x15, #1836]
.LBB18_24:
	ldr	w9, [x20, #1704]
	cmp	w9, #2
	b.lt	.LBB18_133
// %bb.25:
	adrp	x9, .L.str.111
	add	x9, x9, :lo12:.L.str.111
	adrp	x10, .L.str.110
	add	x10, x10, :lo12:.L.str.110
	cmp	w14, #2
	ldr	x0, [x20]
	csel	x9, x10, x9, eq
	cmp	w14, #3
	adrp	x10, .L.str.109
	add	x10, x10, :lo12:.L.str.109
	adrp	x1, .L.str.115
	add	x1, x1, :lo12:.L.str.115
	csel	x2, x10, x9, eq
	adrp	x9, .L.str.113
	add	x9, x9, :lo12:.L.str.113
	cmp	w8, #0
	adrp	x8, .L.str.112
	add	x8, x8, :lo12:.L.str.112
	csel	x4, x8, x9, ne
	mov	w3, w21
	bl	_dev_info
	b	.LBB18_133
.LBB18_26:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	lsr	w9, w26, #3
	cmp	w8, #2
	b.ne	.LBB18_69
// %bb.27:
	mov	w27, w24
	mov	w24, wzr
	cmp	w24, w27
	b.lt	.LBB18_70
.LBB18_28:
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-20]                 // 4-byte Folded Spill
.LBB18_29:
	ldr	w11, [sp, #8]                   // 4-byte Folded Reload
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	cmp	w11, #2
	and	w8, w8, #0x1
	b.ne	.LBB18_131
// %bb.30:
	ldur	x9, [x29, #-56]                 // 8-byte Folded Reload
	strb	w8, [x9, #1837]
	b	.LBB18_132
.LBB18_31:
	mul	w8, w24, w11
	sbfiz	x8, x8, #2, #32
	add	x12, x12, x8
	add	x13, x13, x8
	cmp	w24, w27
	b.ge	.LBB18_17
.LBB18_32:
	cmp	w30, #0
	mov	w8, #12                         // =0xc
	mov	w9, #8                          // =0x8
	mov	w10, #4                         // =0x4
	csel	w22, wzr, w8, eq
	csel	w6, w8, wzr, eq
	csel	w4, w10, w9, eq
	csel	w5, w9, w10, eq
	mov	w17, #1                         // =0x1
	mov	w7, #255                        // =0xff
	mov	w19, w1
	b	.LBB18_34
.LBB18_33:                              //   in Loop: Header=BB18_34 Depth=1
	add	w24, w24, #1
	cmp	w24, w27
	b.eq	.LBB18_18
.LBB18_34:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_40 Depth 2
	ldr	w9, [x25, #268]
	mov	w8, w24
	cbz	w9, .LBB18_36
// %bb.35:                              //   in Loop: Header=BB18_34 Depth=1
	ldr	w8, [x25, #192]
	mvn	w9, w24
	add	w8, w8, w9
.LBB18_36:                              //   in Loop: Header=BB18_34 Depth=1
	cmp	w26, #4
	b.lo	.LBB18_33
// %bb.37:                              //   in Loop: Header=BB18_34 Depth=1
	ldr	x9, [x25, #120]
	ldr	w10, [sp, #92]                  // 4-byte Folded Reload
	mov	w14, wzr
	mov	w23, w11
	ldr	w9, [x9, #104]
	mul	w8, w8, w10
	mul	w9, w9, w30
	add	x8, x0, x8
	add	x21, x8, x9
	b	.LBB18_40
.LBB18_38:                              //   in Loop: Header=BB18_40 Depth=2
	ldrb	w8, [x21, #1]
	ldrb	w9, [x21, #3]
	lsl	w8, w8, #8
	lsl	w9, w9, #8
	strh	w8, [x21]
	mov	w8, #4                          // =0x4
	strh	w9, [x21, #2]
.LBB18_39:                              //   in Loop: Header=BB18_40 Depth=2
	subs	w23, w23, #1
	add	x21, x21, x8
	add	w14, w14, #8
	b.eq	.LBB18_33
.LBB18_40:                              //   Parent Loop BB18_34 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [x12]
	ldr	w9, [x13]
	cbz	w28, .LBB18_48
// %bb.41:                              //   in Loop: Header=BB18_40 Depth=2
	ldr	x10, [x20, #800]
	cbz	x10, .LBB18_53
// %bb.42:                              //   in Loop: Header=BB18_40 Depth=2
	ldr	w15, [x20, #132]
	ldur	x1, [x29, #-56]                 // 8-byte Folded Reload
	asr	w15, w15, #1
	ldr	w16, [x1, #1816]
	mul	w15, w15, w24
	cmp	w16, #10
	add	x10, x10, w15, sxtw #1
	asr	w15, w14, #1
	ldrh	w10, [x10, w15, sxtw #1]
	b.ne	.LBB18_44
// %bb.43:                              //   in Loop: Header=BB18_40 Depth=2
	ldr	w15, [x1, #1812]
	sdiv	w10, w10, w15
.LBB18_44:                              //   in Loop: Header=BB18_40 Depth=2
	ldr	w15, [x1, #1824]
	sub	w1, w15, w10
	ldur	w10, [x29, #-16]                // 4-byte Folded Reload
	cmp	w1, w10
	cset	w10, ge
	cmp	w1, w19
	and	w17, w10, w17
	b.eq	.LBB18_48
// %bb.45:                              //   in Loop: Header=BB18_40 Depth=2
	tbnz	w1, #31, .LBB18_48
// %bb.46:                              //   in Loop: Header=BB18_40 Depth=2
	ldur	w10, [x29, #-16]                // 4-byte Folded Reload
	cmp	w1, w10
	b.ge	.LBB18_48
// %bb.47:                              //   in Loop: Header=BB18_40 Depth=2
	ldr	x10, [x20, #1440]
	lsl	w15, w1, #10
	mov	w19, w1
	add	x2, x10, w15, sxtw
.LBB18_48:                              //   in Loop: Header=BB18_40 Depth=2
	tbnz	w1, #31, .LBB18_54
// %bb.49:                              //   in Loop: Header=BB18_40 Depth=2
	ldur	w10, [x29, #-16]                // 4-byte Folded Reload
	cmp	w1, w10
	b.ge	.LBB18_54
// %bb.50:                              //   in Loop: Header=BB18_40 Depth=2
	lsl	x10, x9, #2
	lsr	x15, x9, #6
	cmp	w30, #4
	and	x10, x10, #0x3e0
	and	x15, x15, #0x3e0
	bfxil	x10, x8, #3, #5
	bfxil	x15, x8, #11, #5
	ldrb	w10, [x2, x10]
	ldrb	w15, [x2, x15]
	b.eq	.LBB18_59
// %bb.51:                              //   in Loop: Header=BB18_40 Depth=2
	cmp	w30, #2
	b.ne	.LBB18_62
// %bb.52:                              //   in Loop: Header=BB18_40 Depth=2
	lsr	x16, x9, #14
	ubfx	x9, x9, #22, #10
	lsl	w15, w15, #8
	and	x16, x16, #0x3e0
	and	w9, w9, #0x3e0
	orr	w10, w15, w10, lsl #12
	bfxil	x16, x8, #19, #5
	orr	w8, w9, w8, lsr #27
	ldrb	w16, [x2, x16]
	ldrb	w8, [x2, w8, uxtw]
	lsl	w15, w16, #4
	orr	w9, w10, w15
	orr	w8, w8, w15
	lsr	w9, w9, #8
	strb	w8, [x21, #2]
	mov	w8, #4                          // =0x4
	strb	w9, [x21]
	b	.LBB18_39
.LBB18_53:                              //   in Loop: Header=BB18_40 Depth=2
	ldur	w8, [x29, #-16]                 // 4-byte Folded Reload
	mov	w1, #-1                         // =0xffffffff
	cmp	w8, #0
	cset	w8, lt
	and	w17, w8, w17
.LBB18_54:                              //   in Loop: Header=BB18_40 Depth=2
	cmp	w30, #2
	b.eq	.LBB18_38
// %bb.55:                              //   in Loop: Header=BB18_40 Depth=2
	cmp	w30, #4
	b.ne	.LBB18_58
// %bb.56:                              //   in Loop: Header=BB18_40 Depth=2
	ldur	w8, [x29, #-44]                 // 4-byte Folded Reload
	cbz	w8, .LBB18_64
// %bb.57:                              //   in Loop: Header=BB18_40 Depth=2
	ldr	x8, [x25, #120]
	ldr	w10, [x21]
	ldp	w8, w9, [x8, #96]
	lsl	w9, w7, w9
	lsl	w8, w7, w8
	orr	w8, w8, w9
	bic	w8, w10, w8
	b	.LBB18_61
.LBB18_58:                              //   in Loop: Header=BB18_40 Depth=2
	strh	wzr, [x21]
	b	.LBB18_63
.LBB18_59:                              //   in Loop: Header=BB18_40 Depth=2
	lsr	x16, x9, #14
	ubfx	x9, x9, #22, #10
	lsl	w10, w10, #12
	lsl	w15, w15, #8
	and	x16, x16, #0x3e0
	and	w9, w9, #0x3e0
	bfxil	x16, x8, #19, #5
	orr	w9, w9, w8, lsr #27
	ldrb	w16, [x2, x16]
	ldrb	w9, [x2, w9, uxtw]
	lsl	w8, w16, #4
	ldur	w16, [x29, #-44]                // 4-byte Folded Reload
	cbz	w16, .LBB18_65
// %bb.60:                              //   in Loop: Header=BB18_40 Depth=2
	ldr	x16, [x25, #120]
	mov	w3, w1
	mov	w1, w24
	ldr	w24, [x21]
	orr	w15, w8, w15
	orr	w8, w9, w8
	ldr	w16, [x16, #100]
	orr	w10, w15, w10
	and	w8, w8, #0xff
	and	w10, w10, #0xff00
	lsl	w16, w7, w16
	bic	w16, w24, w16
	str	w16, [x21]
	ldr	x24, [x25, #120]
	ldr	w24, [x24, #100]
	sub	w15, w24, #8
	mov	w24, w1
	mov	w1, w3
	lsl	w10, w10, w15
	orr	w10, w10, w16
	str	w10, [x21]
	ldr	x15, [x25, #120]
	ldr	w15, [x15, #96]
	lsl	w15, w7, w15
	bic	w10, w10, w15
	str	w10, [x21]
	ldr	x15, [x25, #120]
	ldr	w9, [x15, #96]
	lsl	w8, w8, w9
	orr	w8, w8, w10
.LBB18_61:                              //   in Loop: Header=BB18_40 Depth=2
	str	w8, [x21]
	mov	w8, #4                          // =0x4
	b	.LBB18_39
.LBB18_62:                              //   in Loop: Header=BB18_40 Depth=2
	ubfx	x16, x9, #14, #18
	ubfx	x9, x9, #22, #10
	lsl	w10, w10, w22
	lsl	w15, w15, w4
	and	w16, w16, #0x3e0
	and	w9, w9, #0x3e0
	bfxil	w16, w8, #19, #5
	orr	w8, w9, w8, lsr #27
	orr	w10, w15, w10
	ldrb	w9, [x2, w16, uxtw]
	ldrb	w8, [x2, w8, uxtw]
	lsl	w9, w9, w5
	lsl	w8, w8, w6
	orr	w8, w9, w8
	orr	w8, w10, w8
	strh	w8, [x21]
.LBB18_63:                              //   in Loop: Header=BB18_40 Depth=2
	mov	w8, #2                          // =0x2
	b	.LBB18_39
.LBB18_64:                              //   in Loop: Header=BB18_40 Depth=2
	ldp	w8, w9, [x21]
	and	w8, w8, #0xffffff00
	and	w9, w9, #0xffffff00
	stp	w8, w9, [x21]
	mov	w8, #8                          // =0x8
	b	.LBB18_39
.LBB18_65:                              //   in Loop: Header=BB18_40 Depth=2
	and	w10, w10, #0xf000
	orr	w15, w15, w8
	orr	w8, w9, w8
	orr	w10, w10, w15
	strb	w8, [x21, #4]
	mov	w8, #8                          // =0x8
	lsr	w10, w10, #8
	strb	w10, [x21]
	b	.LBB18_39
.LBB18_66:
	ldur	x9, [x29, #-56]                 // 8-byte Folded Reload
	strb	w8, [x9, #1836]
.LBB18_67:
	ldr	w9, [x20, #1704]
	cmp	w9, #2
	b.lt	.LBB18_133
// %bb.68:
	adrp	x9, .L.str.111
	add	x9, x9, :lo12:.L.str.111
	adrp	x10, .L.str.110
	add	x10, x10, :lo12:.L.str.110
	cmp	w11, #2
	ldr	x0, [x20]
	csel	x9, x10, x9, eq
	cmp	w11, #3
	adrp	x10, .L.str.109
	add	x10, x10, :lo12:.L.str.109
	mov	w3, w1
	adrp	x1, .L.str.115
	add	x1, x1, :lo12:.L.str.115
	csel	x2, x10, x9, eq
	adrp	x9, .L.str.113
	add	x9, x9, :lo12:.L.str.113
	cmp	w8, #0
	adrp	x8, .L.str.112
	add	x8, x8, :lo12:.L.str.112
	csel	x4, x8, x9, ne
	bl	_dev_info
	b	.LBB18_133
.LBB18_69:
	mul	w8, w24, w9
	sbfiz	x8, x8, #3, #32
	add	x12, x12, x8
	add	x13, x13, x8
	cmp	w24, w27
	b.ge	.LBB18_28
.LBB18_70:
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cmp	w30, #0
	mov	w9, #6                          // =0x6
	mov	w10, #5                         // =0x5
	mov	w11, #2                         // =0x2
	csinc	x15, x9, xzr, ne
	str	x15, [sp, #64]                  // 8-byte Folded Spill
	csel	x15, x11, x10, eq
	csel	x10, x10, x11, eq
	mov	w8, #7                          // =0x7
	str	x15, [sp, #56]                  // 8-byte Folded Spill
	mov	w15, #3                         // =0x3
	str	x10, [sp, #32]                  // 8-byte Folded Spill
	csinc	x10, x9, xzr, eq
	csel	x14, xzr, x8, eq
	cinc	x16, x15, ne
	cinc	x15, x15, eq
	str	x10, [sp, #24]                  // 8-byte Folded Spill
	mov	w10, #14                        // =0xe
	csel	x8, x8, xzr, eq
	stp	x15, x16, [sp, #40]             // 16-byte Folded Spill
	mov	w15, #12                        // =0xc
	str	x8, [sp, #96]                   // 8-byte Folded Spill
	csel	w8, wzr, w10, eq
	stur	w8, [x29, #-76]                 // 4-byte Folded Spill
	csel	w8, w11, w15, eq
	mov	w16, #4                         // =0x4
	stur	w8, [x29, #-80]                 // 4-byte Folded Spill
	mov	w8, #10                         // =0xa
	mov	w17, #8                         // =0x8
	mov	w3, w1
	csel	w4, w16, w8, eq
	csel	w1, w9, w17, eq
	csel	w9, w17, w9, eq
	csel	w8, w8, w16, eq
	stp	w1, w4, [x29, #-88]             // 8-byte Folded Spill
	stp	w8, w9, [x29, #-96]             // 8-byte Folded Spill
	csel	w8, w15, w11, eq
	mov	w1, w3
	stur	w8, [x29, #-100]                // 4-byte Folded Spill
	csel	w8, w10, wzr, eq
	mov	w10, w24
	str	w8, [sp, #104]                  // 4-byte Folded Spill
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-20]                 // 4-byte Folded Spill
	lsl	x8, x14, #2
	stur	w3, [x29, #-60]                 // 4-byte Folded Spill
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x0, [sp, #80]                   // 8-byte Folded Spill
	stur	x25, [x29, #-72]                // 8-byte Folded Spill
	stp	w30, w28, [x29, #-28]           // 8-byte Folded Spill
	stp	w27, w26, [sp, #72]             // 8-byte Folded Spill
	b	.LBB18_72
.LBB18_71:                              //   in Loop: Header=BB18_72 Depth=1
	ldur	w10, [x29, #-64]                // 4-byte Folded Reload
	ldr	x0, [sp, #80]                   // 8-byte Folded Reload
	ldur	x25, [x29, #-72]                // 8-byte Folded Reload
	ldp	w27, w26, [sp, #72]             // 8-byte Folded Reload
	add	w10, w10, #1
	cmp	w10, w27
	b.eq	.LBB18_29
.LBB18_72:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_78 Depth 2
	ldr	w9, [x25, #268]
	mov	w8, w10
	cbz	w9, .LBB18_74
// %bb.73:                              //   in Loop: Header=BB18_72 Depth=1
	ldr	w8, [x25, #192]
	mvn	w9, w10
	add	w8, w8, w9
.LBB18_74:                              //   in Loop: Header=BB18_72 Depth=1
	cmp	w26, #8
	stur	w10, [x29, #-64]                // 4-byte Folded Spill
	b.lo	.LBB18_71
// %bb.75:                              //   in Loop: Header=BB18_72 Depth=1
	ldr	x9, [x25, #120]
	ldr	w10, [sp, #92]                  // 4-byte Folded Reload
	mov	w11, wzr
	ldr	w27, [sp, #12]                  // 4-byte Folded Reload
	ldr	w9, [x9, #104]
	mul	w8, w8, w10
	mul	w9, w9, w30
	add	x8, x0, x8
	add	x26, x8, x9
	b	.LBB18_78
.LBB18_76:                              //   in Loop: Header=BB18_78 Depth=2
	ldrb	w8, [x26, #1]
	ldrb	w9, [x26, #3]
	lsl	w8, w8, #8
	lsl	w9, w9, #8
	strh	w8, [x26]
	mov	w8, #4                          // =0x4
	strh	w9, [x26, #2]
.LBB18_77:                              //   in Loop: Header=BB18_78 Depth=2
	add	x26, x26, x8
	subs	w27, w27, #1
	add	x12, x12, #8
	add	x13, x13, #8
	add	w11, w11, #8
	b.eq	.LBB18_71
.LBB18_78:                              //   Parent Loop BB18_72 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	cbz	w28, .LBB18_87
// %bb.79:                              //   in Loop: Header=BB18_78 Depth=2
	ldr	x8, [x20, #800]
	cbz	x8, .LBB18_86
// %bb.80:                              //   in Loop: Header=BB18_78 Depth=2
	ldr	w9, [x20, #132]
	ldur	w10, [x29, #-64]                // 4-byte Folded Reload
	ldur	x14, [x29, #-56]                // 8-byte Folded Reload
	asr	w9, w9, #1
	mul	w9, w9, w10
	ldr	w10, [x14, #1816]
	cmp	w10, #10
	add	x8, x8, w9, sxtw #1
	asr	w9, w11, #1
	ldrh	w8, [x8, w9, sxtw #1]
	b.ne	.LBB18_82
// %bb.81:                              //   in Loop: Header=BB18_78 Depth=2
	ldr	w9, [x14, #1812]
	sdiv	w8, w8, w9
.LBB18_82:                              //   in Loop: Header=BB18_78 Depth=2
	ldr	w9, [x14, #1824]
	sub	w1, w9, w8
	ldur	w8, [x29, #-16]                 // 4-byte Folded Reload
	ldur	w9, [x29, #-60]                 // 4-byte Folded Reload
	cmp	w1, w8
	cset	w8, ge
	cmp	w1, w9
	ldur	w9, [x29, #-20]                 // 4-byte Folded Reload
	and	w9, w8, w9
	stur	w9, [x29, #-20]                 // 4-byte Folded Spill
	b.eq	.LBB18_87
// %bb.83:                              //   in Loop: Header=BB18_78 Depth=2
	tbnz	w1, #31, .LBB18_87
// %bb.84:                              //   in Loop: Header=BB18_78 Depth=2
	ldur	w8, [x29, #-16]                 // 4-byte Folded Reload
	cmp	w1, w8
	b.ge	.LBB18_87
// %bb.85:                              //   in Loop: Header=BB18_78 Depth=2
	ldr	x8, [x20, #1440]
	lsl	w9, w1, #10
	stur	w1, [x29, #-60]                 // 4-byte Folded Spill
	add	x2, x8, w9, sxtw
	b	.LBB18_87
.LBB18_86:                              //   in Loop: Header=BB18_78 Depth=2
	ldp	w9, w8, [x29, #-20]             // 8-byte Folded Reload
	mov	w1, #-1                         // =0xffffffff
	cmp	w8, #0
	cset	w8, lt
	and	w9, w8, w9
	stur	w9, [x29, #-20]                 // 4-byte Folded Spill
.LBB18_87:                              //   in Loop: Header=BB18_78 Depth=2
	ldr	x5, [x12]
	ldr	x8, [x13]
	ldr	w7, [x20, #1488]
	stur	w1, [x29, #-12]                 // 4-byte Folded Spill
	lsr	x21, x5, #8
	lsr	x0, x5, #16
	lsr	x14, x5, #24
	lsr	x17, x5, #32
	lsr	x4, x5, #40
	lsr	x24, x5, #48
	lsr	x19, x5, #56
	lsr	x9, x8, #8
	lsr	x16, x8, #16
	lsr	x28, x8, #24
	lsr	x25, x8, #32
	lsr	x15, x8, #40
	lsr	x6, x8, #48
	lsr	x10, x8, #56
	cmp	w7, #4
	b.ne	.LBB18_91
// %bb.88:                              //   in Loop: Header=BB18_78 Depth=2
	and	x23, x5, #0x404040404040404
	cbz	x23, .LBB18_91
// %bb.89:                              //   in Loop: Header=BB18_78 Depth=2
	ubfx	x23, x8, #48, #8
	ubfx	x1, x5, #48, #8
	mov	x3, x20
	mov	x20, x2
	mov	w2, #-12                        // =0xfffffff4
	mov	w30, #-32                       // =0xffffffe0
	cmp	w23, #240
	stur	x12, [x29, #-40]                // 8-byte Folded Spill
	mov	w12, #240                       // =0xf0
	csel	w22, w30, w2, eq
	cmp	w1, #244
	ubfx	x1, x8, #40, #8
	csel	w24, w22, w24, eq
	ubfx	x22, x5, #40, #8
	ccmp	w23, w12, #0, eq
	csel	w6, w30, w6, eq
	cmp	w1, #240
	csel	w23, w30, w2, eq
	cmp	w22, #244
	ubfx	x22, x8, #32, #8
	csel	w4, w23, w4, eq
	ubfx	x23, x5, #32, #8
	ccmp	w1, w12, #0, eq
	csel	w15, w30, w15, eq
	cmp	w22, #240
	csel	w1, w30, w2, eq
	cmp	w23, #244
	ubfx	x23, x8, #24, #8
	csel	w17, w1, w17, eq
	ubfx	x1, x5, #24, #8
	ccmp	w22, w12, #0, eq
	csel	w25, w30, w25, eq
	cmp	w23, #240
	csel	w22, w30, w2, eq
	cmp	w1, #244
	ubfx	x1, x8, #16, #8
	csel	w14, w22, w14, eq
	ubfx	x22, x5, #16, #8
	ccmp	w23, w12, #0, eq
	csel	w28, w30, w28, eq
	cmp	w1, #240
	csel	w23, w30, w2, eq
	cmp	w22, #244
	ubfx	x22, x8, #8, #8
	csel	w0, w23, w0, eq
	ubfx	x23, x5, #8, #8
	ccmp	w1, w12, #0, eq
	csel	w16, w30, w16, eq
	cmp	w22, #240
	csel	w1, w30, w2, eq
	cmp	w23, #244
	csel	w21, w1, w21, eq
	and	w1, w8, #0xff
	ccmp	w22, w12, #0, eq
	and	w22, w5, #0xff
	csel	w9, w30, w9, eq
	cmp	w1, #240
	csel	w23, w30, w2, eq
	cmp	w22, #244
	csel	w5, w23, w5, eq
	ccmp	w1, w12, #0, eq
	csel	w8, w30, w8, eq
	cmp	x19, #244
	b.ne	.LBB18_92
// %bb.90:                              //   in Loop: Header=BB18_78 Depth=2
	cmp	x10, #240
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x12, [x29, #-40]                // 8-byte Folded Reload
	csel	w19, w30, w2, eq
	csel	w10, w30, w10, eq
	b	.LBB18_93
.LBB18_91:                              //   in Loop: Header=BB18_78 Depth=2
                                        // kill: def $w10 killed $w10 killed $x10 def $x10
                                        // kill: def $w6 killed $w6 killed $x6 def $x6
                                        // kill: def $w15 killed $w15 killed $x15 def $x15
                                        // kill: def $w25 killed $w25 killed $x25 def $x25
                                        // kill: def $w28 killed $w28 killed $x28 def $x28
                                        // kill: def $w16 killed $w16 killed $x16 def $x16
                                        // kill: def $w9 killed $w9 killed $x9 def $x9
	tbz	w1, #31, .LBB18_94
	b	.LBB18_107
.LBB18_92:                              //   in Loop: Header=BB18_78 Depth=2
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x12, [x29, #-40]                // 8-byte Folded Reload
                                        // kill: def $w10 killed $w10 killed $x10 def $x10
.LBB18_93:                              //   in Loop: Header=BB18_78 Depth=2
	mov	x2, x20
	mov	x20, x3
	tbnz	w1, #31, .LBB18_107
.LBB18_94:                              //   in Loop: Header=BB18_78 Depth=2
	ldp	w1, w3, [x29, #-16]             // 8-byte Folded Reload
	cmp	w3, w1
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	b.ge	.LBB18_107
// %bb.95:                              //   in Loop: Header=BB18_78 Depth=2
	cmp	w7, #2
	b.eq	.LBB18_97
// %bb.96:                              //   in Loop: Header=BB18_78 Depth=2
	cmp	w7, #8
	b.ne	.LBB18_112
.LBB18_97:                              //   in Loop: Header=BB18_78 Depth=2
	mov	w1, w19
	lsl	x22, x10, #56
	and	w7, w24, #0xff
	lsl	x1, x1, #56
	mov	w23, w5
                                        // kill: def $w8 killed $w8 killed $x8 def $x8
	bfi	x22, x6, #48, #8
	and	x23, x23, #0xff
	orr	x1, x1, x7, lsl #48
	and	w7, w4, #0xff
	bfi	x22, x15, #40, #8
	orr	x1, x1, x7, lsl #40
	and	w7, w17, #0xff
	bfi	x22, x25, #32, #8
	orr	x1, x1, x7, lsl #32
	mov	w7, w14
	bfi	x22, x28, #24, #8
	bfi	x1, x7, #24, #8
	mov	w7, w0
	bfi	x22, x16, #16, #8
	bfi	x1, x7, #16, #8
	mov	w7, w21
	bfi	x22, x9, #8, #8
	bfi	x1, x7, #8, #8
	and	x7, x8, #0xff
	orr	x8, x22, x7
	orr	x23, x1, x23
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	cmp	x8, x23
	b.eq	.LBB18_107
// %bb.98:                              //   in Loop: Header=BB18_78 Depth=2
	eor	x23, x8, x23
	tst	x23, #0xff
	b.eq	.LBB18_114
// %bb.99:                              //   in Loop: Header=BB18_78 Depth=2
	mov	w8, #65535                      // =0xffff
	tst	x23, #0xff00
	b.eq	.LBB18_115
.LBB18_100:                             //   in Loop: Header=BB18_78 Depth=2
	tst	x23, #0xff0000
	b.eq	.LBB18_116
.LBB18_101:                             //   in Loop: Header=BB18_78 Depth=2
	tst	x23, #0xff000000
	b.eq	.LBB18_117
.LBB18_102:                             //   in Loop: Header=BB18_78 Depth=2
	tst	x23, #0xff00000000
	b.eq	.LBB18_118
.LBB18_103:                             //   in Loop: Header=BB18_78 Depth=2
	tst	x23, #0xff0000000000
	b.eq	.LBB18_119
.LBB18_104:                             //   in Loop: Header=BB18_78 Depth=2
	tst	x23, #0xff000000000000
	b.eq	.LBB18_120
.LBB18_105:                             //   in Loop: Header=BB18_78 Depth=2
	lsr	x1, x23, #56
	cbnz	x1, .LBB18_121
.LBB18_106:                             //   in Loop: Header=BB18_78 Depth=2
	ldr	x1, [sp, #96]                   // 8-byte Folded Reload
	adrp	x22, _16_2bit_mask
	add	x22, x22, :lo12:_16_2bit_mask
	ldr	w1, [x22, x1, lsl #2]
	bic	w8, w8, w1
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	cbnz	w8, .LBB18_122
.LBB18_107:                             //   in Loop: Header=BB18_78 Depth=2
	ldur	w30, [x29, #-28]                // 4-byte Folded Reload
	cmp	w30, #4
	b.eq	.LBB18_110
// %bb.108:                             //   in Loop: Header=BB18_78 Depth=2
	ldur	w28, [x29, #-24]                // 4-byte Folded Reload
	cmp	w30, #2
	b.eq	.LBB18_76
// %bb.109:                             //   in Loop: Header=BB18_78 Depth=2
	mov	w8, #2                          // =0x2
	strh	wzr, [x26]
	b	.LBB18_77
.LBB18_110:                             //   in Loop: Header=BB18_78 Depth=2
	ldur	w28, [x29, #-24]                // 4-byte Folded Reload
	ldur	w8, [x29, #-44]                 // 4-byte Folded Reload
	cbz	w8, .LBB18_113
// %bb.111:                             //   in Loop: Header=BB18_78 Depth=2
	ldur	x8, [x29, #-72]                 // 8-byte Folded Reload
	mov	w10, #255                       // =0xff
	ldr	x8, [x8, #120]
	ldp	w8, w9, [x8, #96]
	lsl	w9, w10, w9
	lsl	w8, w10, w8
	ldr	w10, [x26]
	orr	w8, w8, w9
	bic	w8, w10, w8
	str	w8, [x26]
	mov	w8, #4                          // =0x4
	b	.LBB18_77
.LBB18_112:                             //   in Loop: Header=BB18_78 Depth=2
                                        // kill: def $w10 killed $w10 killed $x10 def $x10
                                        // kill: def $w6 killed $w6 killed $x6 def $x6
                                        // kill: def $w15 killed $w15 killed $x15 def $x15
                                        // kill: def $w25 killed $w25 killed $x25 def $x25
                                        // kill: def $w16 killed $w16 killed $x16 def $x16
                                        // kill: def $w9 killed $w9 killed $x9 def $x9
                                        // kill: def $w8 killed $w8 killed $x8 def $x8
                                        // kill: def $w28 killed $w28 killed $x28 def $x28
	and	x23, x25, #0xff
	and	x7, x8, #0xff
	and	x10, x10, #0xff
	and	x6, x6, #0xff
	and	x15, x15, #0xff
	and	x25, x28, #0xff
	and	x16, x16, #0xff
	and	x9, x9, #0xff
	mov	w8, #65535                      // =0xffff
	b	.LBB18_123
.LBB18_113:                             //   in Loop: Header=BB18_78 Depth=2
	ldp	w8, w9, [x26]
	and	w8, w8, #0xffffff00
	and	w9, w9, #0xffffff00
	stp	w8, w9, [x26]
	mov	w8, #8                          // =0x8
	b	.LBB18_77
.LBB18_114:                             //   in Loop: Header=BB18_78 Depth=2
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	adrp	x8, _16_2bit_mask
	add	x8, x8, :lo12:_16_2bit_mask
	ldrh	w8, [x8, x1]
	eor	w8, w8, #0xffff
	tst	x23, #0xff00
	b.ne	.LBB18_100
.LBB18_115:                             //   in Loop: Header=BB18_78 Depth=2
	ldr	x1, [sp, #64]                   // 8-byte Folded Reload
	adrp	x22, _16_2bit_mask
	add	x22, x22, :lo12:_16_2bit_mask
	ldr	w1, [x22, x1, lsl #2]
	bic	w8, w8, w1
	tst	x23, #0xff0000
	b.ne	.LBB18_101
.LBB18_116:                             //   in Loop: Header=BB18_78 Depth=2
	ldr	x1, [sp, #56]                   // 8-byte Folded Reload
	adrp	x22, _16_2bit_mask
	add	x22, x22, :lo12:_16_2bit_mask
	ldr	w1, [x22, x1, lsl #2]
	bic	w8, w8, w1
	tst	x23, #0xff000000
	b.ne	.LBB18_102
.LBB18_117:                             //   in Loop: Header=BB18_78 Depth=2
	ldr	x1, [sp, #48]                   // 8-byte Folded Reload
	adrp	x22, _16_2bit_mask
	add	x22, x22, :lo12:_16_2bit_mask
	ldr	w1, [x22, x1, lsl #2]
	bic	w8, w8, w1
	tst	x23, #0xff00000000
	b.ne	.LBB18_103
.LBB18_118:                             //   in Loop: Header=BB18_78 Depth=2
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	adrp	x22, _16_2bit_mask
	add	x22, x22, :lo12:_16_2bit_mask
	ldr	w1, [x22, x1, lsl #2]
	bic	w8, w8, w1
	tst	x23, #0xff0000000000
	b.ne	.LBB18_104
.LBB18_119:                             //   in Loop: Header=BB18_78 Depth=2
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	adrp	x22, _16_2bit_mask
	add	x22, x22, :lo12:_16_2bit_mask
	ldr	w1, [x22, x1, lsl #2]
	bic	w8, w8, w1
	tst	x23, #0xff000000000000
	b.ne	.LBB18_105
.LBB18_120:                             //   in Loop: Header=BB18_78 Depth=2
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	adrp	x22, _16_2bit_mask
	add	x22, x22, :lo12:_16_2bit_mask
	ldr	w1, [x22, x1, lsl #2]
	bic	w8, w8, w1
	lsr	x1, x23, #56
	cbz	x1, .LBB18_106
.LBB18_121:                             //   in Loop: Header=BB18_78 Depth=2
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	cbz	w8, .LBB18_107
.LBB18_122:                             //   in Loop: Header=BB18_78 Depth=2
	and	x10, x10, #0xff
	and	x6, x6, #0xff
	and	x15, x15, #0xff
	and	x23, x25, #0xff
	and	x25, x28, #0xff
	and	x16, x16, #0xff
	and	x9, x9, #0xff
.LBB18_123:                             //   in Loop: Header=BB18_78 Depth=2
	lsr	x1, x7, #3
	ubfx	w5, w5, #3, #5
	lsr	x9, x9, #3
	ubfx	w7, w21, #3, #5
	lsr	x16, x16, #3
	ubfx	w22, w0, #3, #5
	bfi	x5, x1, #5, #5
	lsr	x21, x25, #3
	ubfx	w1, w14, #3, #5
	bfi	x7, x9, #5, #5
	lsr	x0, x23, #3
	ubfx	w17, w17, #3, #5
	bfi	x22, x16, #5, #5
	ldrb	w9, [x2, x5]
	lsr	x15, x15, #3
	ubfx	w16, w4, #3, #5
	lsr	x4, x6, #3
	ubfx	w5, w24, #3, #5
	lsr	x10, x10, #3
	ubfx	w6, w19, #3, #5
	bfi	x1, x21, #5, #5
	bfi	x17, x0, #5, #5
	bfi	x16, x15, #5, #5
	bfi	x5, x4, #5, #5
	bfi	x6, x10, #5, #5
	ldur	w30, [x29, #-28]                // 4-byte Folded Reload
	ldrb	w14, [x2, x7]
	ldrb	w0, [x2, x22]
	ldrb	w4, [x2, x1]
	ldrb	w17, [x2, x17]
	ldrb	w16, [x2, x16]
	ldrb	w15, [x2, x5]
	ldrb	w10, [x2, x6]
	cmp	w30, #4
	b.eq	.LBB18_126
// %bb.124:                             //   in Loop: Header=BB18_78 Depth=2
	ldur	w28, [x29, #-24]                // 4-byte Folded Reload
	cmp	w30, #2
	b.ne	.LBB18_129
// %bb.125:                             //   in Loop: Header=BB18_78 Depth=2
	lsl	w14, w14, #12
	orr	w9, w14, w9, lsl #14
	orr	w9, w9, w0, lsl #10
	orr	w9, w9, w4, lsl #8
	orr	w9, w9, w17, lsl #6
	orr	w9, w9, w16, lsl #4
	orr	w9, w9, w15, lsl #2
	orr	w9, w9, w10
	and	w8, w9, w8
	lsr	w9, w8, #8
	strb	w8, [x26, #2]
	strb	w9, [x26]
	b	.LBB18_128
.LBB18_126:                             //   in Loop: Header=BB18_78 Depth=2
	lsl	w14, w14, #12
	ldur	w28, [x29, #-24]                // 4-byte Folded Reload
	orr	w9, w14, w9, lsl #14
	orr	w9, w9, w0, lsl #10
	orr	w9, w9, w4, lsl #8
	orr	w9, w9, w17, lsl #6
	orr	w9, w9, w16, lsl #4
	orr	w9, w9, w15, lsl #2
	orr	w9, w9, w10
	and	w8, w9, w8
	ldur	w9, [x29, #-44]                 // 4-byte Folded Reload
	cbz	w9, .LBB18_130
// %bb.127:                             //   in Loop: Header=BB18_78 Depth=2
	ldur	x15, [x29, #-72]                // 8-byte Folded Reload
	mov	w16, #255                       // =0xff
	ldr	w10, [x26]
	and	w14, w8, #0xff00
	and	w8, w8, #0xff
	ldr	x9, [x15, #120]
	ldr	w9, [x9, #100]
	lsl	w9, w16, w9
	bic	w9, w10, w9
	str	w9, [x26]
	ldr	x10, [x15, #120]
	ldr	w10, [x10, #100]
	sub	w10, w10, #8
	lsl	w10, w14, w10
	orr	w9, w10, w9
	str	w9, [x26]
	ldr	x10, [x15, #120]
	ldr	w10, [x10, #96]
	lsl	w10, w16, w10
	bic	w9, w9, w10
	str	w9, [x26]
	ldr	x10, [x15, #120]
	ldr	w10, [x10, #96]
	lsl	w8, w8, w10
	orr	w8, w8, w9
	str	w8, [x26]
.LBB18_128:                             //   in Loop: Header=BB18_78 Depth=2
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	mov	w8, #4                          // =0x4
	b	.LBB18_77
.LBB18_129:                             //   in Loop: Header=BB18_78 Depth=2
	ldp	w1, w3, [x29, #-80]             // 8-byte Folded Reload
	lsl	w9, w9, w3
	lsl	w14, w14, w1
	ldp	w1, w3, [x29, #-88]             // 8-byte Folded Reload
	orr	w9, w14, w9
	lsl	w0, w0, w3
	lsl	w1, w4, w1
	ldp	w4, w3, [x29, #-96]             // 8-byte Folded Reload
	orr	w14, w0, w1
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	orr	w9, w9, w14
	lsl	w16, w16, w4
	ldur	w4, [x29, #-100]                // 4-byte Folded Reload
	lsl	w17, w17, w3
	lsl	w15, w15, w4
	orr	w16, w17, w16
	orr	w14, w16, w15
	ldr	w15, [sp, #104]                 // 4-byte Folded Reload
	orr	w9, w9, w14
	lsl	w10, w10, w15
	orr	w9, w9, w10
	and	w8, w9, w8
	strh	w8, [x26]
	mov	w8, #2                          // =0x2
	b	.LBB18_77
.LBB18_130:                             //   in Loop: Header=BB18_78 Depth=2
	lsr	w9, w8, #8
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	strb	w8, [x26, #4]
	mov	w8, #8                          // =0x8
	strb	w9, [x26]
	b	.LBB18_77
.LBB18_131:
	ldur	x9, [x29, #-56]                 // 8-byte Folded Reload
	strb	w8, [x9, #1836]
.LBB18_132:
	ldr	w9, [x20, #1704]
	cmp	w9, #2
	b.ge	.LBB18_134
.LBB18_133:
	ldp	x20, x19, [sp, #288]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #272]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #256]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #240]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #224]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #208]            // 16-byte Folded Reload
	add	sp, sp, #304
	ldr	x30, [x18, #-8]!
	ret
.LBB18_134:
	adrp	x9, .L.str.111
	add	x9, x9, :lo12:.L.str.111
	cmp	w11, #2
	adrp	x10, .L.str.110
	add	x10, x10, :lo12:.L.str.110
	ldr	x0, [x20]
	csel	x9, x10, x9, eq
	adrp	x10, .L.str.109
	add	x10, x10, :lo12:.L.str.109
	cmp	w11, #3
	mov	w3, w1
	adrp	x1, .L.str.116
	add	x1, x1, :lo12:.L.str.116
	csel	x2, x10, x9, eq
	adrp	x9, .L.str.113
	add	x9, x9, :lo12:.L.str.113
	adrp	x10, .L.str.112
	add	x10, x10, :lo12:.L.str.112
	cmp	w28, #0
	csel	x4, x10, x9, ne
	cmp	w8, #0
	csel	x5, x10, x9, ne
	bl	_dev_info
	b	.LBB18_133
.Lfunc_end18:
	.size	get_full_or_part_data, .Lfunc_end18-get_full_or_part_data
                                        // -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	2                               // -- Begin function write_buffer_to_file
	.type	write_buffer_to_file,@function
write_buffer_to_file:                   // @write_buffer_to_file
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #64
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	mov	x21, x1
	mov	w1, #1089                       // =0x441
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x20, x2
	mov	w2, #420                        // =0x1a4
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	x19, x0
	str	xzr, [sp, #8]
	bl	filp_open
	cmn	x0, #4095
	b.lo	.LBB19_2
// %bb.1:
	adrp	x0, .L.str.145
	add	x0, x0, :lo12:.L.str.145
	mov	x1, x19
	bl	_printk
	b	.LBB19_5
.LBB19_2:
	add	x3, sp, #8
	mov	x1, x21
	mov	x2, x20
	mov	x22, x0
	bl	kernel_write
	tbz	x0, #63, .LBB19_4
// %bb.3:
	mov	x1, x0
	adrp	x0, .L.str.146
	add	x0, x0, :lo12:.L.str.146
	bl	_printk
	mov	x0, x22
	mov	x1, xzr
	bl	filp_close
	b	.LBB19_5
.LBB19_4:
	mov	x0, x22
	mov	x1, xzr
	bl	filp_close
	adrp	x0, .L.str.147
	add	x0, x0, :lo12:.L.str.147
	mov	x1, x20
	mov	x2, x19
	bl	_printk
.LBB19_5:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #64
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end19:
	.size	write_buffer_to_file, .Lfunc_end19-write_buffer_to_file
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_lut_update
	.type	ebc_lut_update,@function
ebc_lut_update:                         // @ebc_lut_update
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #96
	ldr	w8, [x0, #1788]
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x23, [sp, #48]                  // 8-byte Folded Spill
	mov	w9, #25                         // =0x19
	add	x23, x0, #4, lsl #12            // =16384
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	mov	w21, w1
	cmp	w8, #1
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	mov	w20, w2
	mov	x19, x0
	str	w9, [x29, #28]
	b.eq	.LBB20_11
// %bb.1:
	ldr	w8, [x19, #2004]
	cbz	w8, .LBB20_3
// %bb.2:
	mov	w0, #1                          // =0x1
	bl	ebc_notify
.LBB20_3:
	ldr	w8, [x19, #1992]
	cbnz	w8, .LBB20_5
// %bb.4:
	mov	w8, #1                          // =0x1
	add	x0, x19, #1800
	str	w8, [x19, #1992]
	bl	__pm_stay_awake
.LBB20_5:
	ldr	x0, [x19, #16]
	mov	w8, #1                          // =0x1
	str	w8, [x19, #1788]
	cbz	x0, .LBB20_7
// %bb.6:
	ldr	x8, [x0, #32]
	mov	w1, #1                          // =0x1
	ldur	w16, [x8, #-4]
	movk	w17, #39905
	movk	w17, #26023, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp30
	brk	#0x8228
.Ltmp30:
	blr	x8
	mov	w22, wzr
	b	.LBB20_8
.LBB20_7:
	ldr	x0, [x19, #24]
	bl	regulator_enable
	mov	w22, w0
.LBB20_8:
	ldrb	w8, [x19, #296]
	cmp	w8, #1
	b.ne	.LBB20_10
// %bb.9:
	mov	w0, #50                         // =0x32
	bl	msleep
.LBB20_10:
	ldr	x0, [x19, #8]
	add	x1, x19, #112
	ldr	x8, [x0, #168]
	ldur	w16, [x8, #-4]
	movk	w17, #64249
	movk	w17, #27985, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp31
	brk	#0x8228
.Ltmp31:
	blr	x8
	ldr	w8, [x19, #2008]
	cmp	w8, #1
	b.ge	.LBB20_17
.LBB20_11:
	ldr	w3, [x23, #2068]
	tbnz	w3, #31, .LBB20_18
.LBB20_12:
	ldr	w8, [x19, #2008]
	str	w3, [x29, #28]
	tbz	w8, #31, .LBB20_16
.LBB20_13:
	cmp	w3, #51
	b.lo	.LBB20_26
// %bb.14:
	ldr	w8, [x19, #2008]
	tbz	w8, #31, .LBB20_44
.LBB20_15:
	mov	w3, #50                         // =0x32
	str	w3, [x29, #28]
	b	.LBB20_26
.LBB20_16:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.149
	add	x1, x1, :lo12:.L.str.149
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB20_23
.LBB20_17:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.159
	add	x1, x1, :lo12:.L.str.159
	adrp	x2, .L.str.160
	add	x2, x2, :lo12:.L.str.160
	mov	w3, w22
	bl	_dev_info
	ldr	w3, [x23, #2068]
	tbz	w3, #31, .LBB20_12
.LBB20_18:
	ldr	x0, [x19, #16]
	cbz	x0, .LBB20_22
// %bb.19:
	ldr	x8, [x0, #56]
	add	x1, x29, #28
	ldur	w16, [x8, #-4]
	movk	w17, #46199
	movk	w17, #3090, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp32
	brk	#0x8228
.Ltmp32:
	blr	x8
	cbz	w0, .LBB20_23
.LBB20_20:
	ldr	w8, [x19, #2008]
	mov	w3, #25                         // =0x19
	str	w3, [x29, #28]
	tbnz	w8, #31, .LBB20_26
// %bb.21:
	ldr	x8, [x19, #304]
	adrp	x1, .L.str.152
	add	x1, x1, :lo12:.L.str.152
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	mov	w3, w0
	mov	x0, x8
	bl	_dev_info
	ldr	w3, [x29, #28]
	b	.LBB20_26
.LBB20_22:
	ldr	x0, [x19, #104]
	add	x1, x29, #28
	bl	thermal_zone_get_temp
	ldrsw	x8, [x29, #28]
	mov	w9, #19923                      // =0x4dd3
	movk	w9, #4194, lsl #16
	smull	x8, w8, w9
	lsr	x9, x8, #63
	asr	x8, x8, #38
	add	w8, w8, w9
	str	w8, [x29, #28]
	cbnz	w0, .LBB20_20
.LBB20_23:
	ldr	w3, [x29, #28]
	tbz	w3, #31, .LBB20_13
// %bb.24:
	ldr	w8, [x19, #2008]
	tbz	w8, #31, .LBB20_47
.LBB20_25:
	mov	w3, wzr
	str	wzr, [x29, #28]
.LBB20_26:
	mov	w0, w3
	bl	ebc_overlay_temp_fix
	ldr	w1, [x29, #28]
	mov	w22, w0
	mov	w0, w21
	bl	ebc_normal_temp_fix
	and	w3, w22, #0xffff
	cmp	w3, #51
	b.lo	.LBB20_29
// %bb.27:
	ldr	w8, [x19, #2008]
	cmp	w8, #1
	b.ge	.LBB20_41
.LBB20_28:
	ldr	w22, [x29, #28]
.LBB20_29:
	and	w3, w0, #0xffff
	cmp	w3, #51
	b.lo	.LBB20_31
// %bb.30:
	ldr	w8, [x19, #2008]
	ldr	w0, [x29, #28]
	cmp	w8, #1
	b.ge	.LBB20_42
.LBB20_31:
	ldr	w8, [x19, #2008]
	cmp	w8, #1
	b.ge	.LBB20_40
.LBB20_32:
	ldrb	w8, [x23, #2072]
	ldr	w9, [x19, #2020]
	mov	w10, #32                        // =0x20
	ldr	w11, [x23, #2108]
	orr	w2, w0, w22, lsl #8
	add	x0, x19, #1720
	stp	w10, w8, [sp, #12]
	cmp	w9, #0
	ldr	w8, [x23, #2096]
	cset	w9, eq
	add	x3, sp, #12
	mov	w1, w20
	stp	w11, w9, [sp, #20]
	str	w8, [sp, #28]
	bl	epd_lut_get
	tbnz	w0, #31, .LBB20_38
// %bb.33:
	tbz	w0, #1, .LBB20_35
// %bb.34:
	ldr	w8, [x19, #2008]
	cmp	w8, #2
	b.ge	.LBB20_45
.LBB20_35:
	tbz	w0, #0, .LBB20_39
.LBB20_36:
	ldr	w8, [x19, #2008]
	cmp	w8, #2
	b.ge	.LBB20_46
.LBB20_37:
	mov	w8, #1                          // =0x1
	strb	w8, [x23, #2040]
	b	.LBB20_39
.LBB20_38:
	ldr	w8, [x19, #2008]
	cmp	w8, #1
	b.ge	.LBB20_43
.LBB20_39:
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldr	x23, [sp, #48]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #96
	ldr	x30, [x18, #-8]!
	ret
.LBB20_40:
	ldr	x8, [x19, #304]
	ldr	w5, [x29, #28]
	adrp	x1, .L.str.155
	add	x1, x1, :lo12:.L.str.155
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	and	w3, w22, #0xffff
	and	w4, w0, #0xffff
	mov	w21, w0
	mov	x0, x8
	bl	_dev_info
	mov	w0, w21
	b	.LBB20_32
.LBB20_41:
	ldr	x8, [x19, #304]
	ldr	w4, [x29, #28]
	adrp	x1, .L.str.153
	add	x1, x1, :lo12:.L.str.153
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	mov	w21, w0
	mov	x0, x8
	bl	_dev_info
	mov	w0, w21
	b	.LBB20_28
.LBB20_42:
	ldr	x8, [x19, #304]
	adrp	x1, .L.str.154
	add	x1, x1, :lo12:.L.str.154
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	mov	w4, w0
	mov	x0, x8
	bl	_dev_info
	ldr	w0, [x29, #28]
	b	.LBB20_31
.LBB20_43:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.156
	add	x1, x1, :lo12:.L.str.156
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB20_39
.LBB20_44:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.151
	add	x1, x1, :lo12:.L.str.151
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB20_15
.LBB20_45:
	ldr	x8, [x19, #304]
	adrp	x1, .L.str.157
	add	x1, x1, :lo12:.L.str.157
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	mov	w20, w0
	mov	x0, x8
	bl	_dev_info
	mov	w0, w20
	tbnz	w0, #0, .LBB20_36
	b	.LBB20_39
.LBB20_46:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.158
	add	x1, x1, :lo12:.L.str.158
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB20_37
.LBB20_47:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.150
	add	x1, x1, :lo12:.L.str.150
	adrp	x2, .L.str.118
	add	x2, x2, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB20_25
.Lfunc_end20:
	.size	ebc_lut_update, .Lfunc_end20-ebc_lut_update
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_io_ctl
	.type	ebc_io_ctl,@function
	.word	3759409357                      // 0xe01408cd
ebc_io_ctl:                             // @ebc_io_ctl
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #432
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #400]            // 16-byte Folded Spill
	ldr	x22, [x0, #32]
	ldr	x21, [x8, :lo12:global_ebc]
	mov	w8, #28690                      // =0x7012
	stp	x29, x30, [sp, #352]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #416]            // 16-byte Folded Spill
	add	x29, sp, #352
	cmp	w1, w8
	add	x19, x21, #4, lsl #12           // =16384
	stp	x28, x25, [sp, #368]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #384]            // 16-byte Folded Spill
	stur	wzr, [x29, #-8]
	stp	xzr, xzr, [x29, #-24]
	stp	xzr, xzr, [x29, #-40]
	stp	xzr, xzr, [x29, #-56]
	stp	xzr, xzr, [x29, #-72]
	b.le	.LBB21_4
// %bb.1:
	mov	w8, #-28693                     // =0xffff8feb
	add	w8, w1, w8
	cmp	w8, #14
	b.lo	.LBB21_15
// %bb.2:
	mov	w8, #28691                      // =0x7013
	cmp	w1, w8
	b.eq	.LBB21_31
// %bb.3:
	mov	w8, #28692                      // =0x7014
	cmp	w1, w8
	b.eq	.LBB21_27
	b	.LBB21_111
.LBB21_4:
	mov	w8, #28677                      // =0x7005
	cmp	w1, w8
	b.le	.LBB21_8
// %bb.5:
	mov	w8, #28687                      // =0x700f
	cmp	w1, w8
	b.gt	.LBB21_11
// %bb.6:
	mov	w8, #-28678                     // =0xffff8ffa
	add	w8, w1, w8
	cmp	w8, #2
	b.lo	.LBB21_15
// %bb.7:
	mov	w8, #28683                      // =0x700b
	b	.LBB21_14
.LBB21_8:
	sub	w8, w1, #7, lsl #12             // =28672
	cmp	w8, #3
	b.lo	.LBB21_15
// %bb.9:
	mov	w8, #28676                      // =0x7004
	cmp	w1, w8
	b.eq	.LBB21_25
// %bb.10:
	mov	w8, #28677                      // =0x7005
	cmp	w1, w8
	b.eq	.LBB21_23
	b	.LBB21_111
.LBB21_11:
	mov	w8, #28688                      // =0x7010
	cmp	w1, w8
	b.eq	.LBB21_15
// %bb.12:
	mov	w8, #28689                      // =0x7011
	cmp	w1, w8
	b.eq	.LBB21_22
// %bb.13:
	mov	w8, #28690                      // =0x7012
.LBB21_14:
	cmp	w1, w8
	b.ne	.LBB21_111
.LBB21_15:
	cbz	x2, .LBB21_33
// %bb.16:
	sub	w8, w1, #7, lsl #12             // =28672
	cmp	w8, #34
	b.hi	.LBB21_111
// %bb.17:
	adrp	x9, .LJTI21_0
	add	x9, x9, :lo12:.LJTI21_0
	adr	x10, .LBB21_18
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB21_18:
	sub	x0, x29, #72
	mov	x19, x2
	mov	x1, x2
	mov	w2, #68                         // =0x44
	sub	x20, x29, #72
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.19:
	add	x0, x20, #48
	bl	ebc_empty_buf_get
	cbz	x0, .LBB21_99
// %bb.20:
	ldp	w10, w9, [x21, #188]
	ldrsw	x8, [x0, #4]
	ldr	w11, [x21, #264]
	mov	x20, x0
	stur	wzr, [x29, #-28]
	sub	x1, x29, #72
	mov	x0, x19
	stur	w8, [x29, #-72]
	mov	w2, #68                         // =0x44
	stp	w9, w10, [x29, #-64]
	stur	w11, [x29, #-56]
	ldr	x9, [x22]
	ldr	w8, [x9, x8, lsl #2]
	stur	w8, [x29, #-8]
	bl	_inline_copy_to_user
	cbz	w0, .LBB21_112
// %bb.21:
	mov	x0, x20
	bl	ebc_buf_release
	mov	x0, #-14                        // =0xfffffffffffffff2
	b	.LBB21_114
.LBB21_22:
	bl	ebc_drop_one_dsp_buf
	cbnz	w0, .LBB21_98
	b	.LBB21_112
.LBB21_23:
	ldr	w8, [x21, #2008]
	tbz	w8, #31, .LBB21_109
.LBB21_24:
	mov	x0, xzr
	strb	wzr, [x19, #2144]
	b	.LBB21_113
.LBB21_25:
	ldr	w8, [x21, #2008]
	tbz	w8, #31, .LBB21_110
.LBB21_26:
	mov	w8, #1                          // =0x1
	mov	x0, xzr
	strb	w8, [x19, #2144]
	b	.LBB21_113
.LBB21_27:
	ldr	w8, [x21, #2008]
	tbz	w8, #31, .LBB21_115
// %bb.28:
	ldr	w8, [x21, #2032]
	cbz	w8, .LBB21_30
.LBB21_29:
	mov	w0, #3                          // =0x3
	bl	ebc_notify
.LBB21_30:
	mov	x0, xzr
	str	wzr, [x21, #2032]
	b	.LBB21_113
.LBB21_31:
	ldr	w8, [x21, #2008]
	tbz	w8, #31, .LBB21_116
.LBB21_32:
	mov	w0, #2                          // =0x2
	bl	ebc_notify
	mov	w8, #1                          // =0x1
	mov	x0, xzr
	str	w8, [x21, #2032]
	b	.LBB21_113
.LBB21_33:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.195
	add	x1, x1, :lo12:.L.str.195
	adrp	x2, .L__func__.ebc_io_ctl
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
	mov	x0, #-14                        // =0xfffffffffffffff2
	b	.LBB21_114
.LBB21_34:
	ldrb	w8, [x21, #2024]
	ldr	w9, [x19, #2080]
	cmp	w8, #1
	str	w9, [sp, #8]
	b.ne	.LBB21_112
// %bb.35:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.36:
	ldr	w3, [sp, #8]
	cmn	w3, #1
	b.eq	.LBB21_112
// %bb.37:
	ldr	w8, [x21, #2008]
	str	w3, [x19, #2080]
	tbnz	w8, #31, .LBB21_112
// %bb.38:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.202
	add	x1, x1, :lo12:.L.str.202
	b	.LBB21_108
.LBB21_39:
	add	x1, x21, #1992
	b	.LBB21_43
.LBB21_40:
	mov	w8, #1                          // =0x1
	b	.LBB21_42
.LBB21_41:
	ldrb	w8, [x21, #2025]
.LBB21_42:
	str	w8, [sp, #8]
	add	x1, sp, #8
.LBB21_43:
	mov	x0, x2
	b	.LBB21_95
.LBB21_44:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp, #8]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.45:
	ldr	w3, [sp, #8]
	cmp	w3, #11
	b.lo	.LBB21_100
// %bb.46:
	str	wzr, [sp, #8]
	b	.LBB21_102
.LBB21_47:
	mov	w8, #-1                         // =0xffffffff
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	w8, [sp, #8]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.48:
	ldr	w3, [sp, #8]
	ldr	w8, [x21, #2008]
	str	w3, [x19, #2068]
	tbnz	w8, #31, .LBB21_112
// %bb.49:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.207
	add	x1, x1, :lo12:.L.str.207
	b	.LBB21_108
.LBB21_50:
	mov	x19, x2
	bl	ebc_empty_osd_buf_get
	cbz	x0, .LBB21_99
// %bb.51:
	ldp	w10, w9, [x21, #188]
	ldrsw	x8, [x0, #4]
	ldr	w11, [x21, #264]
	sub	x1, x29, #72
	stur	wzr, [x29, #-28]
	mov	x0, x19
	mov	w2, #68                         // =0x44
	stur	w8, [x29, #-72]
	stp	w9, w10, [x29, #-64]
	stur	w11, [x29, #-56]
	ldr	x9, [x22]
	ldr	w8, [x9, x8, lsl #2]
	stur	w8, [x29, #-8]
	bl	_inline_copy_to_user
	b	.LBB21_113
.LBB21_52:
	sub	x0, x29, #72
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	x0, .LBB21_98
// %bb.53:
	ldur	w0, [x29, #-72]
	bl	ebc_find_buf_by_id
	cbz	x0, .LBB21_113
// %bb.54:
	ldur	w8, [x29, #-68]
	ldp	w9, w10, [x29, #-52]
	str	w8, [x0, #32]
	ldur	w8, [x29, #-28]
	stp	w9, w10, [x0, #40]
	ldp	w9, w11, [x29, #-44]
	stp	w11, w8, [x0, #52]
	str	w9, [x0, #48]
	bl	ebc_add_to_dsp_buf_list_tail
	ldr	w8, [x21, #2008]
	cmp	w8, #2
	b.lt	.LBB21_79
// %bb.55:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.196
	add	x1, x1, :lo12:.L.str.196
	b	.LBB21_118
.LBB21_56:
	ldp	w8, w9, [x21, #188]
	ldr	w10, [x21, #264]
	sub	x1, x29, #72
	mov	x0, x2
	mov	w2, #68                         // =0x44
	stur	wzr, [x29, #-28]
	stp	w9, w8, [x29, #-64]
	ldp	w8, w9, [x21, #204]
	stur	w10, [x29, #-56]
	stp	w8, w9, [x29, #-36]
	bl	_inline_copy_to_user
	cbz	x0, .LBB21_113
// %bb.57:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.199
	add	x1, x1, :lo12:.L.str.199
	bl	_dev_err
	b	.LBB21_98
.LBB21_58:
	sub	x0, x29, #72
	mov	x19, x2
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.59:
	ldr	x8, [x21, #1680]
	cbz	x8, .LBB21_99
// %bb.60:
	ldp	w10, w9, [x21, #188]
	ldrsw	x8, [x8, #4]
	ldr	w11, [x21, #264]
	sub	x1, x29, #72
	stur	wzr, [x29, #-28]
	mov	x0, x19
	mov	w2, #68                         // =0x44
	stur	w8, [x29, #-72]
	stp	w9, w10, [x29, #-64]
	stur	w11, [x29, #-56]
	ldr	x9, [x22]
	ldr	w8, [x9, x8, lsl #2]
	stur	w8, [x29, #-8]
	b	.LBB21_65
.LBB21_61:
	mov	x19, x2
	add	x0, sp, #8
	mov	w1, wzr
	mov	w2, #272                        // =0x110
	bl	memset
	ldr	w25, [x21, #1192]
	ldrb	w8, [x21, #2027]
	ldr	w24, [x21, #1264]
	ldr	w23, [x21, #1408]
	ldr	w20, [x21, #1480]
	tbnz	w8, #0, .LBB21_63
// %bb.62:
	ldrb	w8, [x21, #2024]
	cmp	w8, #1
	b.ne	.LBB21_98
.LBB21_63:
	add	x0, sp, #8
	mov	x1, x19
	mov	w2, #272                        // =0x110
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.64:
	ldp	w8, w9, [x21, #188]
	str	w25, [sp, #8]
	add	x1, sp, #8
	mov	x0, x19
	mov	w2, #272                        // =0x110
	stp	w9, w8, [sp, #16]
	ldr	x10, [x22]
	ldr	w11, [x10, w25, sxtw #2]
	stp	w9, w8, [sp, #84]
	stp	w11, w24, [sp, #72]
	ldr	w11, [x10, w24, sxtw #2]
	stp	w9, w8, [sp, #152]
	stp	w11, w23, [sp, #140]
	ldr	w11, [x10, w23, sxtw #2]
	stp	w9, w8, [sp, #220]
	stp	w11, w20, [sp, #208]
	ldr	w8, [x10, w20, sxtw #2]
	str	w8, [sp, #276]
.LBB21_65:
	bl	_inline_copy_to_user
	cbnz	w0, .LBB21_98
	b	.LBB21_112
.LBB21_66:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp, #8]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.67:
	ldr	w8, [sp, #8]
	ldr	w9, [x21, #2008]
	cmp	w8, #0
	cset	w10, ne
	strb	w10, [x19, #2112]
	tbnz	w9, #31, .LBB21_112
// %bb.68:
	cmp	w8, #0
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.209
	add	x1, x1, :lo12:.L.str.209
	cset	w3, ne
	b	.LBB21_108
.LBB21_69:
	ldrb	w8, [x21, #2025]
	mov	w9, #1                          // =0x1
	str	w9, [sp, #8]
	cmp	w8, #1
	b.ne	.LBB21_112
// %bb.70:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.71:
	ldr	w8, [sp, #8]
	str	w8, [x19, #2108]
	b	.LBB21_112
.LBB21_72:
	ldrb	w8, [x21, #2029]
	str	wzr, [sp, #8]
	cmp	w8, #1
	b.ne	.LBB21_112
// %bb.73:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.74:
	ldr	w8, [sp, #8]
	str	w8, [x19, #2044]
	b	.LBB21_112
.LBB21_75:
	ldrb	w8, [x21, #2027]
	cmp	w8, #1
	b.ne	.LBB21_98
// %bb.76:
	sub	x0, x29, #72
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	x0, .LBB21_98
// %bb.77:
	bl	ebc_osd_buf_clone
	cbz	x0, .LBB21_113
// %bb.78:
	ldur	w8, [x29, #-68]
	ldur	w9, [x29, #-52]
	str	w8, [x0, #32]
	ldur	x8, [x29, #-48]
	str	w9, [x0, #40]
	ldur	w9, [x29, #-40]
	stur	x8, [x0, #44]
	str	w9, [x0, #52]
	bl	ebc_add_to_osd_buf_list_tail
	ldr	w8, [x21, #2008]
	cmp	w8, #2
	b.ge	.LBB21_117
.LBB21_79:
	adrp	x8, ebc_task
	ldr	x0, [x8, :lo12:ebc_task]
	bl	wake_up_process
	b	.LBB21_112
.LBB21_80:
	ldrb	w8, [x21, #2024]
	ldr	w9, [x19, #2084]
	cmp	w8, #1
	str	w9, [sp, #8]
	b.ne	.LBB21_112
// %bb.81:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.82:
	ldr	w3, [sp, #8]
	cmn	w3, #1
	b.eq	.LBB21_112
// %bb.83:
	ldr	w8, [x21, #2008]
	str	w3, [x19, #2084]
	tbnz	w8, #31, .LBB21_112
// %bb.84:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.204
	add	x1, x1, :lo12:.L.str.204
	b	.LBB21_108
.LBB21_85:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp, #8]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.86:
	ldr	w3, [sp, #8]
	ldr	w8, [x21, #436]
	cmp	w3, #1
	b.lt	.LBB21_88
// %bb.87:
	cmp	w3, w8
	b.le	.LBB21_89
.LBB21_88:
	mov	w3, w8
	str	w8, [sp, #8]
.LBB21_89:
	ldr	w8, [x21, #2008]
	str	w3, [x19, #2132]
	tbnz	w8, #31, .LBB21_112
// %bb.90:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.205
	add	x1, x1, :lo12:.L.str.205
	b	.LBB21_108
.LBB21_91:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp, #8]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB21_98
// %bb.92:
	ldr	w8, [sp, #8]
	ldr	w9, [x21, #2008]
	cmp	w8, #0
	cset	w10, ne
	strb	w10, [x19, #2072]
	tbnz	w9, #31, .LBB21_112
// %bb.93:
	cmp	w8, #0
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.208
	add	x1, x1, :lo12:.L.str.208
	cset	w3, ne
	b	.LBB21_108
.LBB21_94:
	mov	x19, x2
	bl	epd_lut_get_wf_bit
	cmp	w0, #32
	add	x1, sp, #8
	mov	x0, x19
	cset	w8, eq
	str	w8, [sp, #8]
.LBB21_95:
	mov	w2, #4                          // =0x4
	bl	_inline_copy_to_user
	b	.LBB21_113
.LBB21_96:
	ldrb	w8, [x21, #2024]
	ldr	w9, [x19, #2076]
	cmp	w8, #1
	str	w9, [sp, #8]
	b.ne	.LBB21_112
// %bb.97:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbz	w0, .LBB21_105
.LBB21_98:
	mov	x0, #-14                        // =0xfffffffffffffff2
	b	.LBB21_114
.LBB21_99:
	mov	x0, #-1                         // =0xffffffffffffffff
	b	.LBB21_114
.LBB21_100:
	cbz	w3, .LBB21_102
// %bb.101:
	mov	w8, #1                          // =0x1
	b	.LBB21_103
.LBB21_102:
	mov	w8, wzr
	mov	w3, wzr
.LBB21_103:
	ldr	w9, [x21, #2008]
	strb	w8, [x19, #2125]
	str	w3, [x19, #2136]
	tbnz	w9, #31, .LBB21_112
// %bb.104:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.206
	add	x1, x1, :lo12:.L.str.206
	b	.LBB21_108
.LBB21_105:
	ldr	w3, [sp, #8]
	cmn	w3, #1
	b.eq	.LBB21_112
// %bb.106:
	ldr	w8, [x21, #2008]
	str	w3, [x19, #2076]
	tbnz	w8, #31, .LBB21_112
// %bb.107:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.203
	add	x1, x1, :lo12:.L.str.203
.LBB21_108:
	adrp	x2, .L.str.197
	add	x2, x2, :lo12:.L.str.197
	bl	_dev_info
	b	.LBB21_112
.LBB21_109:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.211
	add	x1, x1, :lo12:.L.str.211
	adrp	x2, .L.str.197
	add	x2, x2, :lo12:.L.str.197
	bl	_dev_info
	b	.LBB21_24
.LBB21_110:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.210
	add	x1, x1, :lo12:.L.str.210
	adrp	x2, .L.str.197
	add	x2, x2, :lo12:.L.str.197
	bl	_dev_info
	b	.LBB21_26
.LBB21_111:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.212
	add	x1, x1, :lo12:.L.str.212
	adrp	x2, .L__func__.ebc_io_ctl
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
.LBB21_112:
	mov	x0, xzr
.LBB21_113:
	sxtw	x0, w0
.LBB21_114:
	ldp	x20, x19, [sp, #416]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #400]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #384]            // 16-byte Folded Reload
	ldp	x28, x25, [sp, #368]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #352]            // 16-byte Folded Reload
	add	sp, sp, #432
	ldr	x30, [x18, #-8]!
	ret
.LBB21_115:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.201
	add	x1, x1, :lo12:.L.str.201
	adrp	x2, .L.str.197
	add	x2, x2, :lo12:.L.str.197
	bl	_dev_info
	ldr	w8, [x21, #2032]
	cbnz	w8, .LBB21_29
	b	.LBB21_30
.LBB21_116:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.200
	add	x1, x1, :lo12:.L.str.200
	adrp	x2, .L.str.197
	add	x2, x2, :lo12:.L.str.197
	bl	_dev_info
	b	.LBB21_32
.LBB21_117:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.198
	add	x1, x1, :lo12:.L.str.198
.LBB21_118:
	adrp	x2, .L.str.197
	add	x2, x2, :lo12:.L.str.197
	bl	_dev_info
	b	.LBB21_79
.Lfunc_end21:
	.size	ebc_io_ctl, .Lfunc_end21-ebc_io_ctl
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
.LJTI21_0:
	.hword	(.LBB21_18-.LBB21_18)>>2
	.hword	(.LBB21_52-.LBB21_18)>>2
	.hword	(.LBB21_56-.LBB21_18)>>2
	.hword	(.LBB21_111-.LBB21_18)>>2
	.hword	(.LBB21_25-.LBB21_18)>>2
	.hword	(.LBB21_23-.LBB21_18)>>2
	.hword	(.LBB21_50-.LBB21_18)>>2
	.hword	(.LBB21_75-.LBB21_18)>>2
	.hword	(.LBB21_111-.LBB21_18)>>2
	.hword	(.LBB21_111-.LBB21_18)>>2
	.hword	(.LBB21_111-.LBB21_18)>>2
	.hword	(.LBB21_61-.LBB21_18)>>2
	.hword	(.LBB21_111-.LBB21_18)>>2
	.hword	(.LBB21_111-.LBB21_18)>>2
	.hword	(.LBB21_111-.LBB21_18)>>2
	.hword	(.LBB21_111-.LBB21_18)>>2
	.hword	(.LBB21_40-.LBB21_18)>>2
	.hword	(.LBB21_22-.LBB21_18)>>2
	.hword	(.LBB21_39-.LBB21_18)>>2
	.hword	(.LBB21_31-.LBB21_18)>>2
	.hword	(.LBB21_27-.LBB21_18)>>2
	.hword	(.LBB21_34-.LBB21_18)>>2
	.hword	(.LBB21_80-.LBB21_18)>>2
	.hword	(.LBB21_41-.LBB21_18)>>2
	.hword	(.LBB21_85-.LBB21_18)>>2
	.hword	(.LBB21_44-.LBB21_18)>>2
	.hword	(.LBB21_47-.LBB21_18)>>2
	.hword	(.LBB21_91-.LBB21_18)>>2
	.hword	(.LBB21_111-.LBB21_18)>>2
	.hword	(.LBB21_66-.LBB21_18)>>2
	.hword	(.LBB21_58-.LBB21_18)>>2
	.hword	(.LBB21_94-.LBB21_18)>>2
	.hword	(.LBB21_69-.LBB21_18)>>2
	.hword	(.LBB21_96-.LBB21_18)>>2
	.hword	(.LBB21_72-.LBB21_18)>>2
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_open
	.type	ebc_open,@function
	.word	2399652437                      // 0x8f07ca55
ebc_open:                               // @ebc_open
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	adrp	x9, kmalloc_caches+24
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	ldr	x0, [x9, :lo12:kmalloc_caches+24]
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	ldr	x22, [x8, :lo12:global_ebc]
	mov	x19, x1
	mov	w1, #3520                       // =0xdc0
	mov	w2, #8                          // =0x8
	str	x27, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	bl	__kmalloc_cache_noprof
	cbz	x0, .LBB22_39
// %bb.1:
	ldrsw	x8, [x22, #440]
	mov	x20, x0
	mov	w1, #3520                       // =0xdc0
	lsl	x0, x8, #2
	bl	__kmalloc_noprof
	str	x0, [x20]
	cbz	x0, .LBB22_38
// %bb.2:
	ldr	w8, [x22, #444]
	adrp	x23, get_file.__already_done
	cmp	w8, #1
	b.lt	.LBB22_12
// %bb.3:
	mov	x24, xzr
	add	x25, x22, #624
	mov	w26, #1                         // =0x1
	adrp	x21, .L.str.213
	add	x21, x21, :lo12:.L.str.213
	b	.LBB22_6
.LBB22_4:                               //   in Loop: Header=BB22_6 Depth=1
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldursw	x9, [x25, #-8]
	str	w0, [x8, x9, lsl #2]
	ldr	w8, [x22, #444]
.LBB22_5:                               //   in Loop: Header=BB22_6 Depth=1
	add	x24, x24, #1
	add	x25, x25, #72
	cmp	x24, w8, sxtw
	b.ge	.LBB22_12
.LBB22_6:                               // =>This Inner Loop Header: Depth=1
	ldur	x9, [x25, #-24]
	cbz	x9, .LBB22_5
// %bb.7:                               //   in Loop: Header=BB22_6 Depth=1
	ldr	x0, [x25]
	ldr	x9, [x0, #8]
	//APP
.Ltmp33:
	b	.LBB22_11
.Ltmp34:
	.section	.altinstructions,"a",@progbits
.Ltmp35:
	.word	.Ltmp33-.Ltmp35
.Ltmp36:
	.word	alt_cb_patch_nops-.Ltmp36
	.hword	32805
	.byte	.Ltmp34-.Ltmp33
	.byte	.Ltmp37-.Ltmp38
	.text

.Ltmp38:
.Ltmp37:

	//NO_APP
// %bb.8:                               //   in Loop: Header=BB22_6 Depth=1
	//APP
	ldadd	x26, x8, [x9]
	//NO_APP
	cbnz	x8, .LBB22_4
.LBB22_9:                               //   in Loop: Header=BB22_6 Depth=1
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbnz	w8, #0, .LBB22_4
// %bb.10:                              //   in Loop: Header=BB22_6 Depth=1
	mov	x27, x0
	mov	x0, x21
	strb	w26, [x23, :lo12:get_file.__already_done]
	bl	__warn_printk
	mov	x0, x27
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp39:
.Ltmp41:
	.word	.Ltmp40-.Ltmp41
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp42:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp43:
	.word	.Ltmp42-.Ltmp43
	.hword	1087
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp40:
	brk	#0x800
	//NO_APP
	b	.LBB22_4
.LBB22_11:                              // Block address taken
                                        //   in Loop: Header=BB22_6 Depth=1
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x9]
.Ltmp44:
	ldxr	x8, [x9]
	add	x10, x8, #1
	stxr	w11, x10, [x9]
	cbnz	w11, .Ltmp44

	//NO_APP
	cbz	x8, .LBB22_9
	b	.LBB22_4
.LBB22_12:
	ldr	x8, [x22, #1032]
	cbz	x8, .LBB22_17
// %bb.13:
	ldr	x0, [x22, #1056]
	ldr	x8, [x0, #8]
	//APP
.Ltmp45:
	b	.LBB22_46
.Ltmp46:
	.section	.altinstructions,"a",@progbits
.Ltmp47:
	.word	.Ltmp45-.Ltmp47
.Ltmp48:
	.word	alt_cb_patch_nops-.Ltmp48
	.hword	32805
	.byte	.Ltmp46-.Ltmp45
	.byte	.Ltmp49-.Ltmp50
	.text

.Ltmp50:
.Ltmp49:

	//NO_APP
// %bb.14:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB22_16
.LBB22_15:
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB22_41
.LBB22_16:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldrsw	x9, [x22, #1048]
	str	w0, [x8, x9, lsl #2]
.LBB22_17:
	ldr	x8, [x22, #1176]
	cbz	x8, .LBB22_22
// %bb.18:
	ldr	x0, [x22, #1200]
	ldr	x8, [x0, #8]
	//APP
.Ltmp51:
	b	.LBB22_47
.Ltmp52:
	.section	.altinstructions,"a",@progbits
.Ltmp53:
	.word	.Ltmp51-.Ltmp53
.Ltmp54:
	.word	alt_cb_patch_nops-.Ltmp54
	.hword	32805
	.byte	.Ltmp52-.Ltmp51
	.byte	.Ltmp55-.Ltmp56
	.text

.Ltmp56:
.Ltmp55:

	//NO_APP
// %bb.19:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB22_21
.LBB22_20:
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB22_42
.LBB22_21:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldrsw	x9, [x22, #1192]
	str	w0, [x8, x9, lsl #2]
.LBB22_22:
	ldr	x8, [x22, #1248]
	cbz	x8, .LBB22_27
// %bb.23:
	ldr	x0, [x22, #1272]
	ldr	x8, [x0, #8]
	//APP
.Ltmp57:
	b	.LBB22_48
.Ltmp58:
	.section	.altinstructions,"a",@progbits
.Ltmp59:
	.word	.Ltmp57-.Ltmp59
.Ltmp60:
	.word	alt_cb_patch_nops-.Ltmp60
	.hword	32805
	.byte	.Ltmp58-.Ltmp57
	.byte	.Ltmp61-.Ltmp62
	.text

.Ltmp62:
.Ltmp61:

	//NO_APP
// %bb.24:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB22_26
.LBB22_25:
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB22_43
.LBB22_26:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldrsw	x9, [x22, #1264]
	str	w0, [x8, x9, lsl #2]
.LBB22_27:
	ldr	x8, [x22, #1392]
	cbz	x8, .LBB22_32
// %bb.28:
	ldr	x0, [x22, #1416]
	ldr	x8, [x0, #8]
	//APP
.Ltmp63:
	b	.LBB22_49
.Ltmp64:
	.section	.altinstructions,"a",@progbits
.Ltmp65:
	.word	.Ltmp63-.Ltmp65
.Ltmp66:
	.word	alt_cb_patch_nops-.Ltmp66
	.hword	32805
	.byte	.Ltmp64-.Ltmp63
	.byte	.Ltmp67-.Ltmp68
	.text

.Ltmp68:
.Ltmp67:

	//NO_APP
// %bb.29:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB22_31
.LBB22_30:
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB22_44
.LBB22_31:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldrsw	x9, [x22, #1408]
	str	w0, [x8, x9, lsl #2]
.LBB22_32:
	ldr	x8, [x22, #1464]
	cbz	x8, .LBB22_37
// %bb.33:
	ldr	x0, [x22, #1488]
	ldr	x8, [x0, #8]
	//APP
.Ltmp69:
	b	.LBB22_50
.Ltmp70:
	.section	.altinstructions,"a",@progbits
.Ltmp71:
	.word	.Ltmp69-.Ltmp71
.Ltmp72:
	.word	alt_cb_patch_nops-.Ltmp72
	.hword	32805
	.byte	.Ltmp70-.Ltmp69
	.byte	.Ltmp73-.Ltmp74
	.text

.Ltmp74:
.Ltmp73:

	//NO_APP
// %bb.34:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB22_36
.LBB22_35:
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB22_45
.LBB22_36:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldrsw	x9, [x22, #1480]
	str	w0, [x8, x9, lsl #2]
.LBB22_37:
	mov	w0, wzr
	str	x20, [x19, #32]
	str	xzr, [x19, #112]
	b	.LBB22_40
.LBB22_38:
	mov	x0, x20
	bl	kfree
.LBB22_39:
	mov	w0, #-12                        // =0xfffffff4
.LBB22_40:
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldr	x27, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB22_41:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x23, :lo12:get_file.__already_done]
	adrp	x8, .L.str.213
	add	x8, x8, :lo12:.L.str.213
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp75:
.Ltmp77:
	.word	.Ltmp76-.Ltmp77
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp78:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp79:
	.word	.Ltmp78-.Ltmp79
	.hword	1087
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp76:
	brk	#0x800
	//NO_APP
	b	.LBB22_16
.LBB22_42:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x23, :lo12:get_file.__already_done]
	adrp	x8, .L.str.213
	add	x8, x8, :lo12:.L.str.213
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp80:
.Ltmp82:
	.word	.Ltmp81-.Ltmp82
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp83:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp84:
	.word	.Ltmp83-.Ltmp84
	.hword	1087
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp81:
	brk	#0x800
	//NO_APP
	b	.LBB22_21
.LBB22_43:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x23, :lo12:get_file.__already_done]
	adrp	x8, .L.str.213
	add	x8, x8, :lo12:.L.str.213
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp85:
.Ltmp87:
	.word	.Ltmp86-.Ltmp87
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp88:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp89:
	.word	.Ltmp88-.Ltmp89
	.hword	1087
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp86:
	brk	#0x800
	//NO_APP
	b	.LBB22_26
.LBB22_44:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x23, :lo12:get_file.__already_done]
	adrp	x8, .L.str.213
	add	x8, x8, :lo12:.L.str.213
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp90:
.Ltmp92:
	.word	.Ltmp91-.Ltmp92
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp93:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp94:
	.word	.Ltmp93-.Ltmp94
	.hword	1087
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp91:
	brk	#0x800
	//NO_APP
	b	.LBB22_31
.LBB22_45:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x23, :lo12:get_file.__already_done]
	adrp	x8, .L.str.213
	add	x8, x8, :lo12:.L.str.213
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp95:
.Ltmp97:
	.word	.Ltmp96-.Ltmp97
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp98:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp99:
	.word	.Ltmp98-.Ltmp99
	.hword	1087
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp96:
	brk	#0x800
	//NO_APP
	b	.LBB22_36
.LBB22_46:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp100:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp100

	//NO_APP
	cbz	x9, .LBB22_15
	b	.LBB22_16
.LBB22_47:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp101:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp101

	//NO_APP
	cbz	x9, .LBB22_20
	b	.LBB22_21
.LBB22_48:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp102:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp102

	//NO_APP
	cbz	x9, .LBB22_25
	b	.LBB22_26
.LBB22_49:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp103:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp103

	//NO_APP
	cbz	x9, .LBB22_30
	b	.LBB22_31
.LBB22_50:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp104:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp104

	//NO_APP
	cbz	x9, .LBB22_35
	b	.LBB22_36
.Lfunc_end22:
	.size	ebc_open, .Lfunc_end22-ebc_open
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_release
	.type	ebc_release,@function
	.word	2399652437                      // 0x8f07ca55
ebc_release:                            // @ebc_release
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	ldr	x19, [x1, #32]
	mov	x29, sp
	ldr	x0, [x19]
	cbz	x0, .LBB23_2
// %bb.1:
	bl	kfree
.LBB23_2:
	mov	x0, x19
	bl	kfree
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end23:
	.size	ebc_release, .Lfunc_end23-ebc_release
                                        // -- End function
	.p2align	2                               // -- Begin function _inline_copy_to_user
	.type	_inline_copy_to_user,@function
_inline_copy_to_user:                   // @_inline_copy_to_user
// %bb.0:
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	ldrb	w9, [x8, #70]
	tbnz	w9, #5, .LBB24_2
// %bb.1:
	ldr	x10, [x8]
	mov	x9, x0
	tbz	w10, #26, .LBB24_3
.LBB24_2:
	lsl	x9, x0, #8
	and	x9, x0, x9, asr #8
.LBB24_3:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x10, #549755813888              // =0x8000000000
	mov	x29, sp
	cmp	x2, x10
	b.hi	.LBB24_15
// %bb.4:
	sub	x10, x10, x2
	cmp	x10, x9
	b.lo	.LBB24_15
// %bb.5:
	//APP
.Ltmp105:
	nop
.Ltmp106:
	.section	.altinstructions,"a",@progbits
.Ltmp107:
	.word	.Ltmp105-.Ltmp107
.Ltmp109:
	.word	.Ltmp108-.Ltmp109
	.hword	40
	.byte	.Ltmp106-.Ltmp105
	.byte	.Ltmp110-.Ltmp108
	.text

	.text	1
.Ltmp108:
	b	.LBB24_10
.Ltmp110:
.Ltmp111:
.org (.Ltmp111-(.Ltmp110-.Ltmp108))+(.Ltmp106-.Ltmp105), 0
.Ltmp112:
.org (.Ltmp112-(.Ltmp106-.Ltmp105))+(.Ltmp110-.Ltmp108), 0
	.text


	//NO_APP
// %bb.6:
	//APP
.Ltmp113:
	nop
.Ltmp114:
	.section	.altinstructions,"a",@progbits
.Ltmp115:
	.word	.Ltmp113-.Ltmp115
.Ltmp117:
	.word	.Ltmp116-.Ltmp117
	.hword	31
	.byte	.Ltmp114-.Ltmp113
	.byte	.Ltmp118-.Ltmp116
	.text

	.text	1
.Ltmp116:
	b	.LBB24_16
.Ltmp118:
.Ltmp119:
.org (.Ltmp119-(.Ltmp118-.Ltmp116))+(.Ltmp114-.Ltmp113), 0
.Ltmp120:
.org (.Ltmp120-(.Ltmp114-.Ltmp113))+(.Ltmp118-.Ltmp116), 0
	.text


	//NO_APP
// %bb.7:
	//APP
	mrs	x9, DAIF
	//NO_APP
	//APP
	//NO_APP
	//APP
	msr	DAIFSet, #3
	//NO_APP
	//APP
	//NO_APP
.LBB24_8:
	ldr	x8, [x8, #8]
	//APP
	mrs	x10, TTBR1_EL1
	//NO_APP
	mov	x11, x8
	bfxil	x11, x10, #0, #48
	//APP
	msr	TTBR1_EL1, x11
	//NO_APP
	//APP
	msr	TTBR0_EL1, x8
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp121:
	nop
.Ltmp122:
	.section	.altinstructions,"a",@progbits
.Ltmp123:
	.word	.Ltmp121-.Ltmp123
.Ltmp125:
	.word	.Ltmp124-.Ltmp125
	.hword	31
	.byte	.Ltmp122-.Ltmp121
	.byte	.Ltmp126-.Ltmp124
	.text

	.text	1
.Ltmp124:
	b	.LBB24_18
.Ltmp126:
.Ltmp127:
.org (.Ltmp127-(.Ltmp126-.Ltmp124))+(.Ltmp122-.Ltmp121), 0
.Ltmp128:
.org (.Ltmp128-(.Ltmp122-.Ltmp121))+(.Ltmp126-.Ltmp124), 0
	.text


	//NO_APP
// %bb.9:
	//APP
	//NO_APP
	//APP
	msr	DAIF, x9
	//NO_APP
	//APP
	//NO_APP
.LBB24_10:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	and	x0, x0, #0xff7fffffffffffff

	//NO_APP
	bl	__arch_copy_to_user
	mov	x2, x0
	//APP
.Ltmp129:
	nop
.Ltmp130:
	.section	.altinstructions,"a",@progbits
.Ltmp131:
	.word	.Ltmp129-.Ltmp131
.Ltmp133:
	.word	.Ltmp132-.Ltmp133
	.hword	40
	.byte	.Ltmp130-.Ltmp129
	.byte	.Ltmp134-.Ltmp132
	.text

	.text	1
.Ltmp132:
	b	.LBB24_15
.Ltmp134:
.Ltmp135:
.org (.Ltmp135-(.Ltmp134-.Ltmp132))+(.Ltmp130-.Ltmp129), 0
.Ltmp136:
.org (.Ltmp136-(.Ltmp130-.Ltmp129))+(.Ltmp134-.Ltmp132), 0
	.text


	//NO_APP
// %bb.11:
	//APP
.Ltmp137:
	nop
.Ltmp138:
	.section	.altinstructions,"a",@progbits
.Ltmp139:
	.word	.Ltmp137-.Ltmp139
.Ltmp141:
	.word	.Ltmp140-.Ltmp141
	.hword	31
	.byte	.Ltmp138-.Ltmp137
	.byte	.Ltmp142-.Ltmp140
	.text

	.text	1
.Ltmp140:
	b	.LBB24_19
.Ltmp142:
.Ltmp143:
.org (.Ltmp143-(.Ltmp142-.Ltmp140))+(.Ltmp138-.Ltmp137), 0
.Ltmp144:
.org (.Ltmp144-(.Ltmp138-.Ltmp137))+(.Ltmp142-.Ltmp140), 0
	.text


	//NO_APP
// %bb.12:
	//APP
	mrs	x8, DAIF
	//NO_APP
	//APP
	//NO_APP
	//APP
	msr	DAIFSet, #3
	//NO_APP
	//APP
	//NO_APP
.LBB24_13:
	//APP
	mrs	x9, TTBR1_EL1
	//NO_APP
	and	x9, x9, #0xffffffffffff
	sub	x10, x9, #1, lsl #12            // =4096
	//APP
	msr	TTBR0_EL1, x10
	//NO_APP
	//APP
	msr	TTBR1_EL1, x9
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp145:
	nop
.Ltmp146:
	.section	.altinstructions,"a",@progbits
.Ltmp147:
	.word	.Ltmp145-.Ltmp147
.Ltmp149:
	.word	.Ltmp148-.Ltmp149
	.hword	31
	.byte	.Ltmp146-.Ltmp145
	.byte	.Ltmp150-.Ltmp148
	.text

	.text	1
.Ltmp148:
	b	.LBB24_21
.Ltmp150:
.Ltmp151:
.org (.Ltmp151-(.Ltmp150-.Ltmp148))+(.Ltmp146-.Ltmp145), 0
.Ltmp152:
.org (.Ltmp152-(.Ltmp146-.Ltmp145))+(.Ltmp150-.Ltmp148), 0
	.text


	//NO_APP
// %bb.14:
	//APP
	//NO_APP
	//APP
	msr	DAIF, x8
	//NO_APP
	//APP
	//NO_APP
.LBB24_15:                              // Block address taken
                                        // Label of block must be emitted
	mov	x0, x2
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB24_16:                              // Block address taken
                                        // Label of block must be emitted
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384609

	//NO_APP
	cmp	x9, #224
	b.ne	.LBB24_8
// %bb.17:
	mov	w9, #192                        // =0xc0
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609

	//NO_APP
	//APP
	//NO_APP
	mov	w9, #224                        // =0xe0
	b	.LBB24_8
.LBB24_18:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609

	//NO_APP
	//APP
.Ltmp153:
	dsb	sy
.Ltmp154:
	.section	.altinstructions,"a",@progbits
.Ltmp155:
	.word	.Ltmp153-.Ltmp155
.Ltmp156:
	.word	alt_cb_patch_nops-.Ltmp156
	.hword	32800
	.byte	.Ltmp154-.Ltmp153
	.byte	.Ltmp157-.Ltmp158
	.text

.Ltmp158:
.Ltmp157:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB24_10
.LBB24_19:                              // Block address taken
                                        // Label of block must be emitted
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384608

	//NO_APP
	cmp	x8, #224
	b.ne	.LBB24_13
// %bb.20:
	mov	w8, #192                        // =0xc0
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608

	//NO_APP
	//APP
	//NO_APP
	mov	w8, #224                        // =0xe0
	b	.LBB24_13
.LBB24_21:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608

	//NO_APP
	//APP
.Ltmp159:
	dsb	sy
.Ltmp160:
	.section	.altinstructions,"a",@progbits
.Ltmp161:
	.word	.Ltmp159-.Ltmp161
.Ltmp162:
	.word	alt_cb_patch_nops-.Ltmp162
	.hword	32800
	.byte	.Ltmp160-.Ltmp159
	.byte	.Ltmp163-.Ltmp164
	.text

.Ltmp164:
.Ltmp163:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB24_15
.Lfunc_end24:
	.size	_inline_copy_to_user, .Lfunc_end24-_inline_copy_to_user
                                        // -- End function
	.p2align	2                               // -- Begin function _inline_copy_from_user
	.type	_inline_copy_from_user,@function
_inline_copy_from_user:                 // @_inline_copy_from_user
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	ldrb	w9, [x8, #70]
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x2
	mov	x20, x0
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	tbnz	w9, #5, .LBB25_2
// %bb.1:
	ldr	x10, [x8]
	mov	x9, x1
	tbz	w10, #26, .LBB25_3
.LBB25_2:
	lsl	x9, x1, #8
	and	x9, x1, x9, asr #8
.LBB25_3:
	mov	x10, #549755813888              // =0x8000000000
	mov	x21, x19
	cmp	x19, x10
	b.hi	.LBB25_16
// %bb.4:
	sub	x10, x10, x19
	mov	x21, x19
	cmp	x10, x9
	b.lo	.LBB25_16
// %bb.5:
	//APP
.Ltmp165:
	nop
.Ltmp166:
	.section	.altinstructions,"a",@progbits
.Ltmp167:
	.word	.Ltmp165-.Ltmp167
.Ltmp169:
	.word	.Ltmp168-.Ltmp169
	.hword	40
	.byte	.Ltmp166-.Ltmp165
	.byte	.Ltmp170-.Ltmp168
	.text

	.text	1
.Ltmp168:
	b	.LBB25_10
.Ltmp170:
.Ltmp171:
.org (.Ltmp171-(.Ltmp170-.Ltmp168))+(.Ltmp166-.Ltmp165), 0
.Ltmp172:
.org (.Ltmp172-(.Ltmp166-.Ltmp165))+(.Ltmp170-.Ltmp168), 0
	.text


	//NO_APP
// %bb.6:
	//APP
.Ltmp173:
	nop
.Ltmp174:
	.section	.altinstructions,"a",@progbits
.Ltmp175:
	.word	.Ltmp173-.Ltmp175
.Ltmp177:
	.word	.Ltmp176-.Ltmp177
	.hword	31
	.byte	.Ltmp174-.Ltmp173
	.byte	.Ltmp178-.Ltmp176
	.text

	.text	1
.Ltmp176:
	b	.LBB25_18
.Ltmp178:
.Ltmp179:
.org (.Ltmp179-(.Ltmp178-.Ltmp176))+(.Ltmp174-.Ltmp173), 0
.Ltmp180:
.org (.Ltmp180-(.Ltmp174-.Ltmp173))+(.Ltmp178-.Ltmp176), 0
	.text


	//NO_APP
// %bb.7:
	//APP
	mrs	x9, DAIF
	//NO_APP
	//APP
	//NO_APP
	//APP
	msr	DAIFSet, #3
	//NO_APP
	//APP
	//NO_APP
.LBB25_8:
	ldr	x8, [x8, #8]
	//APP
	mrs	x10, TTBR1_EL1
	//NO_APP
	mov	x11, x8
	bfxil	x11, x10, #0, #48
	//APP
	msr	TTBR1_EL1, x11
	//NO_APP
	//APP
	msr	TTBR0_EL1, x8
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp181:
	nop
.Ltmp182:
	.section	.altinstructions,"a",@progbits
.Ltmp183:
	.word	.Ltmp181-.Ltmp183
.Ltmp185:
	.word	.Ltmp184-.Ltmp185
	.hword	31
	.byte	.Ltmp182-.Ltmp181
	.byte	.Ltmp186-.Ltmp184
	.text

	.text	1
.Ltmp184:
	b	.LBB25_20
.Ltmp186:
.Ltmp187:
.org (.Ltmp187-(.Ltmp186-.Ltmp184))+(.Ltmp182-.Ltmp181), 0
.Ltmp188:
.org (.Ltmp188-(.Ltmp182-.Ltmp181))+(.Ltmp186-.Ltmp184), 0
	.text


	//NO_APP
// %bb.9:
	//APP
	//NO_APP
	//APP
	msr	DAIF, x9
	//NO_APP
	//APP
	//NO_APP
.LBB25_10:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	and	x1, x1, #0xff7fffffffffffff

	//NO_APP
	mov	x0, x20
	mov	x2, x19
	bl	__arch_copy_from_user
	mov	x21, x0
	//APP
.Ltmp189:
	nop
.Ltmp190:
	.section	.altinstructions,"a",@progbits
.Ltmp191:
	.word	.Ltmp189-.Ltmp191
.Ltmp193:
	.word	.Ltmp192-.Ltmp193
	.hword	40
	.byte	.Ltmp190-.Ltmp189
	.byte	.Ltmp194-.Ltmp192
	.text

	.text	1
.Ltmp192:
	b	.LBB25_15
.Ltmp194:
.Ltmp195:
.org (.Ltmp195-(.Ltmp194-.Ltmp192))+(.Ltmp190-.Ltmp189), 0
.Ltmp196:
.org (.Ltmp196-(.Ltmp190-.Ltmp189))+(.Ltmp194-.Ltmp192), 0
	.text


	//NO_APP
// %bb.11:
	//APP
.Ltmp197:
	nop
.Ltmp198:
	.section	.altinstructions,"a",@progbits
.Ltmp199:
	.word	.Ltmp197-.Ltmp199
.Ltmp201:
	.word	.Ltmp200-.Ltmp201
	.hword	31
	.byte	.Ltmp198-.Ltmp197
	.byte	.Ltmp202-.Ltmp200
	.text

	.text	1
.Ltmp200:
	b	.LBB25_21
.Ltmp202:
.Ltmp203:
.org (.Ltmp203-(.Ltmp202-.Ltmp200))+(.Ltmp198-.Ltmp197), 0
.Ltmp204:
.org (.Ltmp204-(.Ltmp198-.Ltmp197))+(.Ltmp202-.Ltmp200), 0
	.text


	//NO_APP
// %bb.12:
	//APP
	mrs	x8, DAIF
	//NO_APP
	//APP
	//NO_APP
	//APP
	msr	DAIFSet, #3
	//NO_APP
	//APP
	//NO_APP
.LBB25_13:
	//APP
	mrs	x9, TTBR1_EL1
	//NO_APP
	and	x9, x9, #0xffffffffffff
	sub	x10, x9, #1, lsl #12            // =4096
	//APP
	msr	TTBR0_EL1, x10
	//NO_APP
	//APP
	msr	TTBR1_EL1, x9
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp205:
	nop
.Ltmp206:
	.section	.altinstructions,"a",@progbits
.Ltmp207:
	.word	.Ltmp205-.Ltmp207
.Ltmp209:
	.word	.Ltmp208-.Ltmp209
	.hword	31
	.byte	.Ltmp206-.Ltmp205
	.byte	.Ltmp210-.Ltmp208
	.text

	.text	1
.Ltmp208:
	b	.LBB25_23
.Ltmp210:
.Ltmp211:
.org (.Ltmp211-(.Ltmp210-.Ltmp208))+(.Ltmp206-.Ltmp205), 0
.Ltmp212:
.org (.Ltmp212-(.Ltmp206-.Ltmp205))+(.Ltmp210-.Ltmp208), 0
	.text


	//NO_APP
// %bb.14:
	//APP
	//NO_APP
	//APP
	msr	DAIF, x8
	//NO_APP
	//APP
	//NO_APP
.LBB25_15:                              // Block address taken
                                        // Label of block must be emitted
	cbz	x21, .LBB25_17
.LBB25_16:
	sub	x8, x19, x21
	mov	w1, wzr
	mov	x2, x21
	add	x0, x20, x8
	bl	memset
.LBB25_17:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	mov	x0, x21
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB25_18:                              // Block address taken
                                        // Label of block must be emitted
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384609

	//NO_APP
	cmp	x9, #224
	b.ne	.LBB25_8
// %bb.19:
	mov	w9, #192                        // =0xc0
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609

	//NO_APP
	//APP
	//NO_APP
	mov	w9, #224                        // =0xe0
	b	.LBB25_8
.LBB25_20:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609

	//NO_APP
	//APP
.Ltmp213:
	dsb	sy
.Ltmp214:
	.section	.altinstructions,"a",@progbits
.Ltmp215:
	.word	.Ltmp213-.Ltmp215
.Ltmp216:
	.word	alt_cb_patch_nops-.Ltmp216
	.hword	32800
	.byte	.Ltmp214-.Ltmp213
	.byte	.Ltmp217-.Ltmp218
	.text

.Ltmp218:
.Ltmp217:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB25_10
.LBB25_21:                              // Block address taken
                                        // Label of block must be emitted
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384608

	//NO_APP
	cmp	x8, #224
	b.ne	.LBB25_13
// %bb.22:
	mov	w8, #192                        // =0xc0
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608

	//NO_APP
	//APP
	//NO_APP
	mov	w8, #224                        // =0xe0
	b	.LBB25_13
.LBB25_23:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608

	//NO_APP
	//APP
.Ltmp219:
	dsb	sy
.Ltmp220:
	.section	.altinstructions,"a",@progbits
.Ltmp221:
	.word	.Ltmp219-.Ltmp221
.Ltmp222:
	.word	alt_cb_patch_nops-.Ltmp222
	.hword	32800
	.byte	.Ltmp220-.Ltmp219
	.byte	.Ltmp223-.Ltmp224
	.text

.Ltmp224:
.Ltmp223:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB25_15
.Lfunc_end25:
	.size	_inline_copy_from_user, .Lfunc_end25-_inline_copy_from_user
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_llseek
	.type	waveform_llseek,@function
	.word	3860367326                      // 0xe61887de
waveform_llseek:                        // @waveform_llseek
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	cbz	w2, .LBB26_4
// %bb.1:
	cmp	w2, #2
	b.eq	.LBB26_5
// %bb.2:
	cmp	w2, #1
	b.ne	.LBB26_7
// %bb.3:
	ldr	x9, [x0, #112]
	add	x1, x9, x1
.LBB26_4:
	tbz	x1, #63, .LBB26_6
	b	.LBB26_7
.LBB26_5:
	ldrsw	x9, [x8, #1712]
	add	x1, x1, x9
	tbnz	x1, #63, .LBB26_7
.LBB26_6:
	ldrsw	x8, [x8, #1712]
	cmp	x1, x8
	b.le	.LBB26_8
.LBB26_7:
	mov	x0, #-22                        // =0xffffffffffffffea
	ret
.LBB26_8:
	str	x1, [x0, #112]
	mov	x0, x1
	ret
.Lfunc_end26:
	.size	waveform_llseek, .Lfunc_end26-waveform_llseek
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_read
	.type	waveform_read,@function
	.word	3899056884                      // 0xe866e2f4
waveform_read:                          // @waveform_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	ldr	x21, [x3]
	ldr	x8, [x8, :lo12:global_ebc]
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	ldrsw	x9, [x8, #1712]
	subs	x10, x9, x21
	b.le	.LBB27_4
// %bb.1:
	add	x11, x21, x2
	cmp	x11, x9
	csel	x19, x10, x2, hi
	lsr	x9, x19, #31
	cbnz	x9, .LBB27_7
// %bb.2:
	ldr	x23, [x8, #1776]
	mov	x20, x1
	mov	x1, x19
	mov	w2, #1                          // =0x1
	mov	x22, x3
	add	x0, x23, x21
	bl	__check_object_size
	add	x1, x23, x21
	mov	x0, x20
	mov	x2, x19
	bl	_inline_copy_to_user
	cbz	x0, .LBB27_5
// %bb.3:
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB27_6
.LBB27_4:
	mov	x19, xzr
	b	.LBB27_6
.LBB27_5:
	ldr	x8, [x22]
	add	x8, x8, x19
	str	x8, [x22]
.LBB27_6:
	mov	x0, x19
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB27_7:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp225:
.Ltmp227:
	.word	.Ltmp226-.Ltmp227
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp228:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp229:
	.word	.Ltmp228-.Ltmp229
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp226:
	brk	#0x800
	//NO_APP
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB27_6
.Lfunc_end27:
	.size	waveform_read, .Lfunc_end27-waveform_read
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_write
	.type	waveform_write,@function
	.word	2590379680                      // 0x9a660ea0
waveform_write:                         // @waveform_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #112
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	ldr	x21, [x8, :lo12:global_ebc]
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	ldr	x23, [x3]
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	ldr	w9, [x21, #2020]
	ldrsw	x8, [x21, #1712]
	str	x25, [sp, #48]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	cmp	w9, #0
	cset	w22, eq
	subs	x9, x8, x23
	b.le	.LBB28_4
// %bb.1:
	add	x10, x23, x2
	cmp	x10, x8
	csel	x19, x9, x2, hi
	lsr	x8, x19, #31
	cbnz	x8, .LBB28_7
// %bb.2:
	ldr	x25, [x21, #1776]
	mov	x20, x1
	mov	x1, x19
	mov	w2, wzr
	mov	x24, x3
	add	x0, x25, x23
	bl	__check_object_size
	add	x0, x25, x23
	mov	x1, x20
	mov	x2, x19
	bl	_inline_copy_from_user
	cbz	x0, .LBB28_5
// %bb.3:
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB28_6
.LBB28_4:
	mov	x19, #-28                       // =0xffffffffffffffe4
	b	.LBB28_6
.LBB28_5:
	ldr	x8, [x24]
	add	x8, x8, x19
	str	x8, [x24]
	ldr	x0, [x21, #1776]
	bl	epd_lut_from_mem_init
	mov	x8, #32                         // =0x20
	add	x0, x21, #1720
	add	x3, sp, #12
	movk	x8, #1, lsl #32
	mov	w1, #3                          // =0x3
	mov	w2, #30                         // =0x1e
	stur	x8, [sp, #12]
	stp	wzr, w22, [sp, #20]
	str	wzr, [sp, #28]
	bl	epd_lut_get
.LBB28_6:
	mov	x0, x19
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldr	x25, [sp, #48]                  // 8-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #112
	ldr	x30, [x18, #-8]!
	ret
.LBB28_7:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp230:
.Ltmp232:
	.word	.Ltmp231-.Ltmp232
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp233:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp234:
	.word	.Ltmp233-.Ltmp234
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp231:
	brk	#0x800
	//NO_APP
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB28_6
.Lfunc_end28:
	.size	waveform_write, .Lfunc_end28-waveform_write
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_mmap
	.type	waveform_mmap,@function
	.word	2241513476                      // 0x859ac804
waveform_mmap:                          // @waveform_mmap
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x19, x1
	ldr	x9, [x8, :lo12:global_ebc]
	ldr	x8, [x1, #16]
	mov	x29, sp
	ldr	x20, [x9, #1704]
	ldr	x9, [x8, #152]
	tbz	w9, #0, .LBB29_4
.LBB29_1:
	ldr	w1, [x8, #216]
	ldr	w8, [x19, #40]
	cmp	w8, w1
	b.eq	.LBB29_3
// %bb.2:
	mov	x0, x19
	bl	__vma_start_write
.LBB29_3:
	ldp	x4, x8, [x19, #24]
	mov	w9, #16384                      // =0x4000
	ldp	x1, x10, [x19]
	movk	w9, #1028, lsl #16
	lsr	x2, x20, #12
	mov	x0, x19
	orr	x8, x8, x9
	sub	x3, x10, x1
	str	x8, [x19, #32]
	bl	remap_pfn_range
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	mov	w8, #-11                        // =0xfffffff5
	cmp	w0, #0
	csel	w0, wzr, w8, eq
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB29_4:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp235:
.Ltmp237:
	.word	.Ltmp236-.Ltmp237
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp238:
	.ascii	"include/linux/rwsem.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp239:
	.word	.Ltmp238-.Ltmp239
	.hword	88
	.hword	2305
	.p2align	2, 0x0
	.text
.Ltmp236:
	brk	#0x800
	//NO_APP
	ldr	x8, [x19, #16]
	b	.LBB29_1
.Lfunc_end29:
	.size	waveform_mmap, .Lfunc_end29-waveform_mmap
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_open
	.type	waveform_open,@function
	.word	2399652437                      // 0x8f07ca55
waveform_open:                          // @waveform_open
// %bb.0:
	mov	w0, wzr
	str	xzr, [x1, #112]
	ret
.Lfunc_end30:
	.size	waveform_open, .Lfunc_end30-waveform_open
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_llseek
	.type	transition_lut_llseek,@function
	.word	3860367326                      // 0xe61887de
transition_lut_llseek:                  // @transition_lut_llseek
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	cbz	w2, .LBB31_6
// %bb.1:
	cmp	w2, #2
	b.eq	.LBB31_4
// %bb.2:
	cmp	w2, #1
	b.ne	.LBB31_8
// %bb.3:
	add	x9, x0, #112
	b	.LBB31_5
.LBB31_4:
	add	x9, x8, #1112
.LBB31_5:
	ldr	x9, [x9]
	add	x1, x9, x1
.LBB31_6:
	tbnz	x1, #63, .LBB31_8
// %bb.7:
	ldr	x8, [x8, #1112]
	cmp	x1, x8
	b.ls	.LBB31_9
.LBB31_8:
	mov	x0, #-22                        // =0xffffffffffffffea
	ret
.LBB31_9:
	str	x1, [x0, #112]
	mov	x0, x1
	ret
.Lfunc_end31:
	.size	transition_lut_llseek, .Lfunc_end31-transition_lut_llseek
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_read
	.type	transition_lut_read,@function
	.word	3899056884                      // 0xe866e2f4
transition_lut_read:                    // @transition_lut_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x9, global_ebc
	mov	x8, x2
	mov	x2, x1
	ldr	x9, [x9, :lo12:global_ebc]
	mov	x1, x3
	mov	x3, x8
	mov	w4, #1                          // =0x1
	mov	x29, sp
	add	x0, x9, #1096
	bl	transition_copy_data
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end32:
	.size	transition_lut_read, .Lfunc_end32-transition_lut_read
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_write
	.type	transition_lut_write,@function
	.word	2590379680                      // 0x9a660ea0
transition_lut_write:                   // @transition_lut_write
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x9, global_ebc
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x8, x2
	ldr	x19, [x9, :lo12:global_ebc]
	mov	x2, x1
	mov	x1, x3
	mov	x3, x8
	mov	w4, wzr
	mov	x29, sp
	add	x0, x19, #1096
	bl	transition_copy_data
	cmp	x0, #1
	b.lt	.LBB33_2
// %bb.1:
	mov	w8, #18508                      // =0x484c
	mov	w9, #1                          // =0x1
	strb	w9, [x19, x8]
.LBB33_2:
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end33:
	.size	transition_lut_write, .Lfunc_end33-transition_lut_write
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_mmap
	.type	transition_lut_mmap,@function
	.word	2241513476                      // 0x859ac804
transition_lut_mmap:                    // @transition_lut_mmap
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	ldr	x8, [x1, #16]
	adrp	x10, transition_lut_vm_ops
	add	x10, x10, :lo12:transition_lut_vm_ops
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	adrp	x9, global_ebc
	mov	x19, x1
	str	x10, [x1, #72]
	ldr	x20, [x9, :lo12:global_ebc]
	mov	x29, sp
	ldr	x9, [x8, #152]
	tbz	w9, #0, .LBB34_4
.LBB34_1:
	ldr	w1, [x8, #216]
	ldr	w8, [x19, #40]
	cmp	w8, w1
	b.eq	.LBB34_3
// %bb.2:
	mov	x0, x19
	bl	__vma_start_write
.LBB34_3:
	ldr	x8, [x19, #32]
	mov	w9, #335806464                  // =0x14040000
	mov	w0, wzr
	orr	x8, x8, x9
	add	x9, x20, #1096
	str	x8, [x19, #32]
	str	x9, [x19, #96]
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB34_4:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp240:
.Ltmp242:
	.word	.Ltmp241-.Ltmp242
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp243:
	.ascii	"include/linux/rwsem.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp244:
	.word	.Ltmp243-.Ltmp244
	.hword	88
	.hword	2305
	.p2align	2, 0x0
	.text
.Ltmp241:
	brk	#0x800
	//NO_APP
	ldr	x8, [x19, #16]
	b	.LBB34_1
.Lfunc_end34:
	.size	transition_lut_mmap, .Lfunc_end34-transition_lut_mmap
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_open
	.type	transition_lut_open,@function
	.word	2399652437                      // 0x8f07ca55
transition_lut_open:                    // @transition_lut_open
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x8, [x8, #1128]
	cmp	x8, #0
	mov	w8, #-19                        // =0xffffffed
	csel	w0, w8, wzr, eq
	ret
.Lfunc_end35:
	.size	transition_lut_open, .Lfunc_end35-transition_lut_open
                                        // -- End function
	.p2align	2                               // -- Begin function transition_copy_data
	.type	transition_copy_data,@function
transition_copy_data:                   // @transition_copy_data
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #128
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	ldr	x23, [x1]
	ldr	x8, [x0, #16]
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	mov	w21, w4
	subs	x8, x8, x23
	stp	x28, x27, [sp, #48]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	stur	x2, [x29, #-8]                  // 8-byte Folded Spill
	b.ls	.LBB36_15
// %bb.1:
	ldr	x20, [x0, #48]
	cmp	x3, x8
	csel	x27, x3, x8, lo
	cbz	x20, .LBB36_16
// %bb.2:
	ldr	w8, [x20, #8]
	str	x1, [sp]                        // 8-byte Folded Spill
	cbz	w8, .LBB36_17
// %bb.3:
	ldr	x0, [x20]
	mov	x19, xzr
	mov	x8, xzr
	mov	w28, wzr
	//APP
	mrs	x24, SP_EL0
	//NO_APP
	stur	w21, [x29, #-12]                // 4-byte Folded Spill
	str	x20, [sp, #8]                   // 8-byte Folded Spill
	b	.LBB36_5
.LBB36_4:                               //   in Loop: Header=BB36_5 Depth=1
	add	w28, w28, #1
	bl	sg_next
	ldr	w8, [x20, #8]
	cmp	w28, w8
	mov	x8, x25
	b.hs	.LBB36_18
.LBB36_5:                               // =>This Inner Loop Header: Depth=1
	ldr	w9, [x0, #12]
	add	x25, x8, x9
	cmp	x23, x25
	ccmp	x27, x19, #0, lo
	b.ls	.LBB36_4
// %bb.6:                               //   in Loop: Header=BB36_5 Depth=1
	ldr	w10, [x0, #8]
	ldr	x11, [x0]
	subs	x8, x23, x8
	ldr	w12, [x24, #16]
	csel	x13, xzr, x8, lo
	sub	x8, x9, x13
	sub	x9, x27, x19
	lsr	x11, x11, #6
	add	w12, w12, #1
	cmp	x8, x9
	add	x26, x13, x10
	str	w12, [x24, #16]
	csel	x22, x8, x9, lo
	mov	x8, #281268818280448            // =0xffd000000000
	//APP
	//NO_APP
	movk	x8, #65535, lsl #48
	ldr	w12, [x24, #2964]
	add	x20, x8, x11, lsl #12
	lsr	x8, x22, #31
	add	w12, w12, #1
	str	w12, [x24, #2964]
	//APP
	//NO_APP
	tbz	w21, #0, .LBB36_9
// %bb.7:                               //   in Loop: Header=BB36_5 Depth=1
	cbnz	x8, .LBB36_20
// %bb.8:                               //   in Loop: Header=BB36_5 Depth=1
	mov	x21, x0
	add	x0, x20, x26
	mov	x1, x22
	mov	w2, #1                          // =0x1
	bl	__check_object_size
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	add	x1, x20, x26
	mov	x2, x22
	add	x0, x8, x19
	bl	_inline_copy_to_user
	cbz	x0, .LBB36_11
	b	.LBB36_21
.LBB36_9:                               //   in Loop: Header=BB36_5 Depth=1
	cbnz	x8, .LBB36_23
// %bb.10:                              //   in Loop: Header=BB36_5 Depth=1
	mov	x21, x0
	add	x0, x20, x26
	mov	x1, x22
	mov	w2, wzr
	bl	__check_object_size
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	add	x0, x20, x26
	mov	x2, x22
	add	x1, x8, x19
	bl	_inline_copy_from_user
	cbnz	x0, .LBB36_24
.LBB36_11:                              //   in Loop: Header=BB36_5 Depth=1
	//APP
	//NO_APP
	mov	x0, x21
	ldr	w8, [x24, #2964]
	sub	w8, w8, #1
	str	w8, [x24, #2964]
	//APP
	//NO_APP
	ldr	x8, [x24, #16]
	subs	x8, x8, #1
	str	w8, [x24, #16]
	b.eq	.LBB36_14
// %bb.12:                              //   in Loop: Header=BB36_5 Depth=1
	ldr	x8, [x24, #16]
	cbz	x8, .LBB36_14
.LBB36_13:                              //   in Loop: Header=BB36_5 Depth=1
	add	x19, x22, x19
	ldur	w21, [x29, #-12]                // 4-byte Folded Reload
	ldr	x20, [sp, #8]                   // 8-byte Folded Reload
	cmp	x19, x27
	add	x23, x22, x23
	b.lo	.LBB36_4
	b	.LBB36_18
.LBB36_14:                              //   in Loop: Header=BB36_5 Depth=1
	mov	x20, x0
	bl	preempt_schedule
	mov	x0, x20
	b	.LBB36_13
.LBB36_15:
	tst	w21, #0x1
	mov	x8, #-28                        // =0xffffffffffffffe4
	csel	x19, xzr, x8, ne
	b	.LBB36_19
.LBB36_16:
	mov	x19, #-28                       // =0xffffffffffffffe4
	b	.LBB36_19
.LBB36_17:
	mov	x19, xzr
.LBB36_18:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x23, [x8]
.LBB36_19:
	mov	x0, x19
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #128
	ldr	x30, [x18, #-8]!
	ret
.LBB36_20:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp245:
.Ltmp247:
	.word	.Ltmp246-.Ltmp247
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp248:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp249:
	.word	.Ltmp248-.Ltmp249
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp246:
	brk	#0x800
	//NO_APP
.LBB36_21:
	//APP
	//NO_APP
	ldr	w8, [x24, #2964]
	sub	w8, w8, #1
	str	w8, [x24, #2964]
	//APP
	//NO_APP
	ldr	x8, [x24, #16]
	subs	x8, x8, #1
	str	w8, [x24, #16]
	b.eq	.LBB36_27
// %bb.22:
	ldr	x8, [x24, #16]
	cbnz	x8, .LBB36_26
	b	.LBB36_27
.LBB36_23:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp250:
.Ltmp252:
	.word	.Ltmp251-.Ltmp252
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp253:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp254:
	.word	.Ltmp253-.Ltmp254
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp251:
	brk	#0x800
	//NO_APP
.LBB36_24:
	//APP
	//NO_APP
	ldr	w8, [x24, #2964]
	sub	w8, w8, #1
	str	w8, [x24, #2964]
	//APP
	//NO_APP
	ldr	x8, [x24, #16]
	subs	x8, x8, #1
	str	w8, [x24, #16]
	b.eq	.LBB36_27
// %bb.25:
	ldr	x8, [x24, #16]
	cbz	x8, .LBB36_27
.LBB36_26:
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB36_19
.LBB36_27:
	bl	preempt_schedule
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB36_19
.Lfunc_end36:
	.size	transition_copy_data, .Lfunc_end36-transition_copy_data
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_vm_fault
	.type	transition_lut_vm_fault,@function
	.word	1469081112                      // 0x57906618
transition_lut_vm_fault:                // @transition_lut_vm_fault
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	ldr	x8, [x0]
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x29, sp
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	ldr	x8, [x8, #96]
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	ldr	x20, [x8, #48]
	cbz	x20, .LBB37_9
// %bb.1:
	ldr	w8, [x20, #8]
	cbz	w8, .LBB37_9
// %bb.2:
	ldr	x9, [x0, #16]
	mov	x19, x0
	ldr	x0, [x20]
	mov	x8, xzr
	mov	w22, wzr
	lsl	x21, x9, #12
	b	.LBB37_4
.LBB37_3:                               //   in Loop: Header=BB37_4 Depth=1
	add	w22, w22, #1
	bl	sg_next
	ldr	w8, [x20, #8]
	cmp	w22, w8
	mov	x8, x23
	b.hs	.LBB37_9
.LBB37_4:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x0, #12]
	subs	x9, x21, x8
	add	x23, x8, x10
	b.lo	.LBB37_3
// %bb.5:                               //   in Loop: Header=BB37_4 Depth=1
	cmp	x21, x23
	b.hs	.LBB37_3
// %bb.6:
	ldr	x8, [x0]
	lsr	x9, x9, #12
	and	x8, x8, #0xfffffffffffffffc
	add	x8, x8, x9, lsl #6
	ldr	x9, [x8, #8]
	sub	x10, x9, #1
	tst	w9, #0x1
	csel	x9, x8, x10, eq
	//APP
.Ltmp255:
	b	.LBB37_11
.Ltmp256:
	.section	.altinstructions,"a",@progbits
.Ltmp257:
	.word	.Ltmp255-.Ltmp257
.Ltmp258:
	.word	alt_cb_patch_nops-.Ltmp258
	.hword	32805
	.byte	.Ltmp256-.Ltmp255
	.byte	.Ltmp259-.Ltmp260
	.text

.Ltmp260:
.Ltmp259:

	//NO_APP
// %bb.7:
	add	x9, x9, #52
	mov	w10, #1                         // =0x1
	//APP
	stadd	w10, [x9]

	//NO_APP
.LBB37_8:
	mov	w0, wzr
	str	x8, [x19, #80]
	b	.LBB37_10
.LBB37_9:
	mov	w0, #2                          // =0x2
.LBB37_10:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB37_11:                              // Block address taken
                                        // Label of block must be emitted
	add	x9, x9, #52
	//APP
	// atomic_add
	prfm	pstl1strm, [x9]
.Ltmp261:
	ldxr	w10, [x9]
	add	w10, w10, #1
	stxr	w11, w10, [x9]
	cbnz	w11, .Ltmp261

	//NO_APP
	b	.LBB37_8
.Lfunc_end37:
	.size	transition_lut_vm_fault, .Lfunc_end37-transition_lut_vm_fault
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_version_read
	.type	waveform_version_read,@function
	.word	3745759836                      // 0xdf43c25c
waveform_version_read:                  // @waveform_version_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	mov	x19, x2
	bl	epd_lut_get_wf_version
	mov	x2, x0
	adrp	x1, .L.str.222
	add	x1, x1, :lo12:.L.str.222
	mov	x0, x19
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end38:
	.size	waveform_version_read, .Lfunc_end38-waveform_version_read
                                        // -- End function
	.p2align	2                               // -- Begin function pmic_name_read
	.type	pmic_name_read,@function
	.word	3745759836                      // 0xdf43c25c
pmic_name_read:                         // @pmic_name_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	mov	x0, x2
	adrp	x1, .L.str.222
	add	x1, x1, :lo12:.L.str.222
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	x8, [x8, #16]
	add	x2, x8, #8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end39:
	.size	pmic_name_read, .Lfunc_end39-pmic_name_read
                                        // -- End function
	.p2align	2                               // -- Begin function pmic_temp_read
	.type	pmic_temp_read,@function
	.word	3745759836                      // 0xdf43c25c
pmic_temp_read:                         // @pmic_temp_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x19, x2
	str	wzr, [x29, #28]
	ldr	x0, [x8, #16]
	cbz	x0, .LBB40_2
// %bb.1:
	ldr	x8, [x0, #56]
	add	x1, x29, #28
	ldur	w16, [x8, #-4]
	movk	w17, #46199
	movk	w17, #3090, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp262
	brk	#0x8228
.Ltmp262:
	blr	x8
	b	.LBB40_3
.LBB40_2:
	ldr	x0, [x8, #104]
	add	x1, x29, #28
	bl	thermal_zone_get_temp
.LBB40_3:
	ldr	w2, [x29, #28]
	adrp	x1, .L.str.227
	add	x1, x1, :lo12:.L.str.227
	mov	x0, x19
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end40:
	.size	pmic_temp_read, .Lfunc_end40-pmic_temp_read
                                        // -- End function
	.p2align	2                               // -- Begin function pmic_vcom_read
	.type	pmic_vcom_read,@function
	.word	3745759836                      // 0xdf43c25c
pmic_vcom_read:                         // @pmic_vcom_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x19, x2
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	x0, [x8, #16]
	cbz	x0, .LBB41_2
// %bb.1:
	ldr	x8, [x0, #64]
	ldur	w16, [x8, #-4]
	movk	w17, #30483
	movk	w17, #34500, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp263
	brk	#0x8228
.Ltmp263:
	blr	x8
	mov	w2, w0
	b	.LBB41_3
.LBB41_2:
	ldr	x0, [x8, #24]
	bl	regulator_get_voltage
	mov	w8, #19923                      // =0x4dd3
	movk	w8, #4194, lsl #16
	smull	x8, w0, w8
	lsr	x9, x8, #63
	asr	x8, x8, #38
	add	w2, w8, w9
.LBB41_3:
	adrp	x1, .L.str.227
	add	x1, x1, :lo12:.L.str.227
	mov	x0, x19
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end41:
	.size	pmic_vcom_read, .Lfunc_end41-pmic_vcom_read
                                        // -- End function
	.p2align	2                               // -- Begin function pmic_vcom_write
	.type	pmic_vcom_write,@function
	.word	2510862855                      // 0x95a8ba07
pmic_vcom_write:                        // @pmic_vcom_write
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	mov	x20, x2
	adrp	x8, global_ebc
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	add	x2, x29, #28
	ldr	x21, [x8, :lo12:global_ebc]
	mov	x0, x20
	mov	w1, wzr
	mov	x19, x3
	str	wzr, [x29, #28]
	bl	kstrtouint
	cbnz	w0, .LBB42_5
// %bb.1:
	ldr	x0, [x21, #16]
	cbz	x0, .LBB42_3
// %bb.2:
	ldr	w1, [x29, #28]
	bl	ebc_pmic_set_vcom
	cbz	w0, .LBB42_7
	b	.LBB42_4
.LBB42_3:
	ldr	x0, [x21, #24]
	ldr	w1, [x29, #28]
	bl	ebc_regulator_set_vcom
	cbz	w0, .LBB42_7
.LBB42_4:
	ldr	x0, [x21]
	adrp	x1, .L.str.231
	add	x1, x1, :lo12:.L.str.231
	bl	_dev_err
	b	.LBB42_6
.LBB42_5:
	ldr	x0, [x21]
	adrp	x1, .L.str.230
	add	x1, x1, :lo12:.L.str.230
	mov	x2, x20
	bl	_dev_err
.LBB42_6:
	mov	x19, #-1                        // =0xffffffffffffffff
.LBB42_7:
	mov	x0, x19
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end42:
	.size	pmic_vcom_write, .Lfunc_end42-pmic_vcom_write
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_version_read
	.type	ebc_version_read,@function
	.word	3745759836                      // 0xdf43c25c
ebc_version_read:                       // @ebc_version_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x0, x2
	adrp	x1, .L.str.222
	add	x1, x1, :lo12:.L.str.222
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	mov	x29, sp
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end43:
	.size	ebc_version_read, .Lfunc_end43-ebc_version_read
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_state_read
	.type	ebc_state_read,@function
	.word	3745759836                      // 0xdf43c25c
ebc_state_read:                         // @ebc_state_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	mov	x0, x2
	adrp	x1, .L.str.227
	add	x1, x1, :lo12:.L.str.227
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	w8, [x8, #1992]
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end44:
	.size	ebc_state_read, .Lfunc_end44-ebc_state_read
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_buf_state_read
	.type	ebc_buf_state_read,@function
	.word	3745759836                      // 0xdf43c25c
ebc_buf_state_read:                     // @ebc_buf_state_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x0, x2
	mov	x29, sp
	bl	ebc_buf_state_show
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end45:
	.size	ebc_buf_state_read, .Lfunc_end45-ebc_buf_state_read
                                        // -- End function
	.p2align	2                               // -- Begin function auto_frame_state_read
	.type	auto_frame_state_read,@function
	.word	3745759836                      // 0xdf43c25c
auto_frame_state_read:                  // @auto_frame_state_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldp	w10, w9, [x8, #188]
	mul	w9, w10, w9
	cbz	w9, .LBB46_4
// %bb.1:
	ldr	x10, [x8, #1392]
	mov	w11, wzr
.LBB46_2:                               // =>This Inner Loop Header: Depth=1
	ldrb	w8, [x10, w11, sxtw]
	cbnz	w8, .LBB46_5
// %bb.3:                               //   in Loop: Header=BB46_2 Depth=1
	add	w11, w11, #1
	cmp	w9, w11
	b.ne	.LBB46_2
.LBB46_4:
	mov	w8, #2608                       // =0xa30
	mov	w0, #2                          // =0x2
	strb	wzr, [x2, #2]
	strh	w8, [x2]
	b	.LBB46_6
.LBB46_5:
	adrp	x1, .L.str.227
	add	x1, x1, :lo12:.L.str.227
	mov	x0, x2
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
.LBB46_6:
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end46:
	.size	auto_frame_state_read, .Lfunc_end46-auto_frame_state_read
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_debug_level_read
	.type	ebc_debug_level_read,@function
	.word	3745759836                      // 0xdf43c25c
ebc_debug_level_read:                   // @ebc_debug_level_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	mov	x0, x2
	adrp	x1, .L.str.227
	add	x1, x1, :lo12:.L.str.227
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	w8, [x8, #2008]
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end47:
	.size	ebc_debug_level_read, .Lfunc_end47-ebc_debug_level_read
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_debug_level_write
	.type	ebc_debug_level_write,@function
	.word	2510862855                      // 0x95a8ba07
ebc_debug_level_write:                  // @ebc_debug_level_write
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	mov	x20, x2
	adrp	x8, global_ebc
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	add	x2, x29, #28
	ldr	x21, [x8, :lo12:global_ebc]
	mov	x0, x20
	mov	w1, wzr
	mov	x19, x3
	str	wzr, [x29, #28]
	bl	kstrtouint
	cbnz	w0, .LBB48_3
// %bb.1:
	ldr	w8, [x29, #28]
	str	w8, [x21, #2008]
.LBB48_2:
	mov	x0, x19
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB48_3:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.230
	add	x1, x1, :lo12:.L.str.230
	mov	x2, x20
	bl	_dev_err
	mov	x19, #-1                        // =0xffffffffffffffff
	b	.LBB48_2
.Lfunc_end48:
	.size	ebc_debug_level_write, .Lfunc_end48-ebc_debug_level_write
                                        // -- End function
	.p2align	2                               // -- Begin function wf_data_write
	.type	wf_data_write,@function
	.word	2510862855                      // 0x95a8ba07
wf_data_write:                          // @wf_data_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #112
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	mov	x0, x2
	ldr	x19, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	adrp	x1, .L.str.245
	add	x1, x1, :lo12:.L.str.245
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	ldr	x25, [x19, #1744]
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	str	x3, [sp, #8]                    // 8-byte Folded Spill
	bl	strstr
	cbnz	x0, .LBB49_2
.LBB49_1:
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #112
	ldr	x30, [x18, #-8]!
	ret
.LBB49_2:
	ldr	w8, [x19, #1728]
	ldr	w9, [x19, #1720]
	adrp	x0, .L.str.246
	add	x0, x0, :lo12:.L.str.246
	cmp	w8, w9
	csel	w19, w8, w9, gt
	mov	w1, w19
	bl	_printk
	mov	x21, xzr
	adrp	x22, .L.str.247
	add	x22, x22, :lo12:.L.str.247
	adrp	x23, .L.str.248
	add	x23, x23, :lo12:.L.str.248
.LBB49_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB49_4 Depth 2
                                        //       Child Loop BB49_6 Depth 3
	mov	x24, xzr
	add	x26, x25, x21
.LBB49_4:                               //   Parent Loop BB49_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB49_6 Depth 3
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cmp	w19, #1
	b.lt	.LBB49_7
// %bb.5:                               //   in Loop: Header=BB49_4 Depth=2
	add	x28, x26, x24, lsl #5
	mov	w27, wzr
	mov	x20, x19
.LBB49_6:                               //   Parent Loop BB49_3 Depth=1
                                        //     Parent Loop BB49_4 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x28, w27, sxtw]
	mov	x0, x23
	bl	_printk
	subs	x20, x20, #1
	add	w27, w27, #1024
	b.ne	.LBB49_6
.LBB49_7:                               //   in Loop: Header=BB49_4 Depth=2
	add	x24, x24, #1
	cmp	x24, #32
	b.ne	.LBB49_4
// %bb.8:                               //   in Loop: Header=BB49_3 Depth=1
	add	x21, x21, #1
	cmp	x21, #32
	b.ne	.LBB49_3
	b	.LBB49_1
.Lfunc_end49:
	.size	wf_data_write, .Lfunc_end49-wf_data_write
                                        // -- End function
	.p2align	2                               // -- Begin function overlay_wf_data_write
	.type	overlay_wf_data_write,@function
	.word	2510862855                      // 0x95a8ba07
overlay_wf_data_write:                  // @overlay_wf_data_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #112
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	mov	x0, x2
	ldr	x19, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	adrp	x1, .L.str.245
	add	x1, x1, :lo12:.L.str.245
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	ldr	x25, [x19, #1752]
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	str	x3, [sp, #8]                    // 8-byte Folded Spill
	bl	strstr
	cbnz	x0, .LBB50_2
.LBB50_1:
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #112
	ldr	x30, [x18, #-8]!
	ret
.LBB50_2:
	ldr	w20, [x19, #1724]
	adrp	x0, .L.str.246
	add	x0, x0, :lo12:.L.str.246
	mov	w1, w20
	bl	_printk
	lsl	x26, x20, #10
	mov	x21, xzr
	adrp	x22, .L.str.247
	add	x22, x22, :lo12:.L.str.247
	adrp	x23, .L.str.248
	add	x23, x23, :lo12:.L.str.248
.LBB50_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB50_4 Depth 2
                                        //       Child Loop BB50_6 Depth 3
	mov	x24, xzr
	add	x27, x25, x21
.LBB50_4:                               //   Parent Loop BB50_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB50_6 Depth 3
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cmp	w20, #1
	b.lt	.LBB50_7
// %bb.5:                               //   in Loop: Header=BB50_4 Depth=2
	add	x28, x27, x24, lsl #5
	mov	x19, xzr
.LBB50_6:                               //   Parent Loop BB50_3 Depth=1
                                        //     Parent Loop BB50_4 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x28, w19, sxtw]
	mov	x0, x23
	bl	_printk
	add	x19, x19, #1024
	cmp	x26, x19
	b.ne	.LBB50_6
.LBB50_7:                               //   in Loop: Header=BB50_4 Depth=2
	add	x24, x24, #1
	cmp	x24, #32
	b.ne	.LBB50_4
// %bb.8:                               //   in Loop: Header=BB50_3 Depth=1
	add	x21, x21, #1
	cmp	x21, #32
	b.ne	.LBB50_3
	b	.LBB50_1
.Lfunc_end50:
	.size	overlay_wf_data_write, .Lfunc_end50-overlay_wf_data_write
                                        // -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	2                               // -- Begin function ori_wf_data_write
	.type	ori_wf_data_write,@function
	.word	2510862855                      // 0x95a8ba07
ori_wf_data_write:                      // @ori_wf_data_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #160
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	mov	w8, #-1                         // =0xffffffff
	mov	w0, #262144                     // =0x40000
	mov	w1, #3520                       // =0xdc0
	stp	x28, x27, [sp, #80]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	mov	x21, x2
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	mov	x19, x3
	stp	w8, w8, [x29, #-8]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	str	xzr, [sp, #16]
	bl	__kmalloc_large_noprof
	cbnz	x0, .LBB51_2
// %bb.1:
	adrp	x0, .L.str.253
	add	x0, x0, :lo12:.L.str.253
	bl	_printk
	b	.LBB51_16
.LBB51_2:
	mov	x20, x0
	str	x0, [sp, #40]
	adrp	x1, .L.str.245
	add	x1, x1, :lo12:.L.str.245
	mov	x0, x21
	bl	strstr
	cbnz	x0, .LBB51_4
// %bb.3:
	adrp	x0, .L.str.256
	add	x0, x0, :lo12:.L.str.256
	b	.LBB51_15
.LBB51_4:
	adrp	x1, .L.str.254
	add	x1, x1, :lo12:.L.str.254
	sub	x2, x29, #4
	sub	x3, x29, #8
	mov	x0, x21
	bl	sscanf
	ldp	w3, w2, [x29, #-8]
	adrp	x0, .L.str.255
	add	x0, x0, :lo12:.L.str.255
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
	ldur	w1, [x29, #-4]
	cmp	w1, #8
	b.hi	.LBB51_14
// %bb.5:
	ldur	w2, [x29, #-8]
	cmp	w2, #50
	b.hi	.LBB51_14
// %bb.6:
	add	x0, sp, #16
	mov	w3, #32                         // =0x20
	str	x19, [sp, #8]                   // 8-byte Folded Spill
	bl	epd_lut_get_original
	ldr	w21, [sp, #16]
	adrp	x0, .L.str.246
	add	x0, x0, :lo12:.L.str.246
	mov	w1, w21
	bl	_printk
	lsl	x26, x21, #10
	mov	x22, xzr
	adrp	x23, .L.str.247
	add	x23, x23, :lo12:.L.str.247
	adrp	x24, .L.str.248
	add	x24, x24, :lo12:.L.str.248
.LBB51_7:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB51_8 Depth 2
                                        //       Child Loop BB51_10 Depth 3
	mov	x25, xzr
	add	x27, x20, x22
.LBB51_8:                               //   Parent Loop BB51_7 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB51_10 Depth 3
	mov	x0, x23
	mov	w1, w25
	mov	w2, w22
	bl	_printk
	cmp	w21, #1
	b.lt	.LBB51_11
// %bb.9:                               //   in Loop: Header=BB51_8 Depth=2
	add	x28, x27, x25, lsl #5
	mov	x19, xzr
.LBB51_10:                              //   Parent Loop BB51_7 Depth=1
                                        //     Parent Loop BB51_8 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x28, w19, sxtw]
	mov	x0, x24
	bl	_printk
	add	x19, x19, #1024
	cmp	x26, x19
	b.ne	.LBB51_10
.LBB51_11:                              //   in Loop: Header=BB51_8 Depth=2
	add	x25, x25, #1
	cmp	x25, #32
	b.ne	.LBB51_8
// %bb.12:                              //   in Loop: Header=BB51_7 Depth=1
	add	x22, x22, #1
	cmp	x22, #32
	b.ne	.LBB51_7
// %bb.13:
	mov	x0, x20
	bl	kfree
	ldr	x19, [sp, #8]                   // 8-byte Folded Reload
	b	.LBB51_16
.LBB51_14:
	adrp	x0, .L.str.257
	add	x0, x0, :lo12:.L.str.257
.LBB51_15:
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
.LBB51_16:
	mov	x0, x19
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #160
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end51:
	.size	ori_wf_data_write, .Lfunc_end51-ori_wf_data_write
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_suspend
	.type	ebc_suspend,@function
	.word	1061512543                      // 0x3f45655f
ebc_suspend:                            // @ebc_suspend
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	ldr	x19, [x0, #152]
	mov	w8, #1                          // =0x1
	mov	x29, sp
	ldr	x0, [x19, #16]
	str	w8, [x19, #2036]
	cbz	x0, .LBB52_2
// %bb.1:
	ldr	x8, [x0, #40]
	ldur	w16, [x8, #-4]
	movk	w17, #9139
	movk	w17, #22874, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp264
	brk	#0x8228
.Ltmp264:
	blr	x8
.LBB52_2:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.258
	add	x1, x1, :lo12:.L.str.258
	bl	_dev_info
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end52:
	.size	ebc_suspend, .Lfunc_end52-ebc_suspend
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_resume
	.type	ebc_resume,@function
	.word	1061512543                      // 0x3f45655f
ebc_resume:                             // @ebc_resume
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	ldr	x19, [x0, #152]
	mov	x29, sp
	ldr	x0, [x19, #16]
	cbz	x0, .LBB53_2
// %bb.1:
	ldr	x8, [x0, #48]
	ldur	w16, [x8, #-4]
	movk	w17, #9139
	movk	w17, #22874, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp265
	brk	#0x8228
.Ltmp265:
	blr	x8
.LBB53_2:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.259
	add	x1, x1, :lo12:.L.str.259
	str	wzr, [x19, #2036]
	bl	_dev_info
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end53:
	.size	ebc_resume, .Lfunc_end53-ebc_resume
                                        // -- End function
	.type	__gendwarfksyms_rule_478,@object // @__gendwarfksyms_rule_478
	.section	.discard.gendwarfksyms.kabi_rules,"a",@progbits
__gendwarfksyms_rule_478:
	.asciz	"1\000declonly\000cgroup_kmi_ext_info\000"
	.size	__gendwarfksyms_rule_478, 32

	.type	__UNIQUE_ID___addressable_ebc_init642,@object // @__UNIQUE_ID___addressable_ebc_init642
	.section	.discard.addressable,"aw",@progbits
	.p2align	3, 0x0
__UNIQUE_ID___addressable_ebc_init642:
	.xword	ebc_init
	.size	__UNIQUE_ID___addressable_ebc_init642, 8

	.type	__exitcall_ebc_exit,@object     // @__exitcall_ebc_exit
	.section	.exitcall.exit,"aw",@progbits
	.p2align	3, 0x0
__exitcall_ebc_exit:
	.xword	ebc_exit
	.size	__exitcall_ebc_exit, 8

	.type	__UNIQUE_ID_author643,@object   // @__UNIQUE_ID_author643
	.section	.modinfo,"a",@progbits
__UNIQUE_ID_author643:
	.asciz	"rkebc.author=Zorro Liu <zorro.liu@rock-chips.com>"
	.size	__UNIQUE_ID_author643, 50

	.type	__UNIQUE_ID_description644,@object // @__UNIQUE_ID_description644
__UNIQUE_ID_description644:
	.asciz	"rkebc.description=ROCKCHIP EBC Driver"
	.size	__UNIQUE_ID_description644, 38

	.type	__UNIQUE_ID_file645,@object     // @__UNIQUE_ID_file645
__UNIQUE_ID_file645:
	.asciz	"rkebc.file=$EBC_DEV_PATH/rkebc"
	.size	__UNIQUE_ID_file645, 31

	.type	__UNIQUE_ID_license646,@object  // @__UNIQUE_ID_license646
__UNIQUE_ID_license646:
	.asciz	"rkebc.license=GPL v2"
	.size	__UNIQUE_ID_license646, 21

	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ebc-dev"
	.size	.L.str, 8

	.type	ebc_match,@object               // @ebc_match
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
ebc_match:
	.zero	32
	.zero	32
	.asciz	"rockchip,ebc-dev\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.xword	0
	.zero	200
	.size	ebc_match, 400

	.type	ebc_pm,@object                  // @ebc_pm
	.p2align	3, 0x0
ebc_pm:
	.xword	0
	.xword	0
	.xword	ebc_suspend
	.xword	ebc_resume
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0                               // 0x0
	.size	ebc_pm, 192

	.type	ebc_driver,@object              // @ebc_driver
	.data
	.p2align	3, 0x0
ebc_driver:
	.xword	ebc_probe
	.xword	ebc_remove
	.xword	0
	.xword	0
	.xword	0
	.xword	.L.str
	.xword	0
	.xword	0
	.xword	0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	ebc_match
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	ebc_pm
	.xword	0
	.xword	0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.xword	0
	.byte	0                               // 0x0
	.byte	0                               // 0x0
	.zero	6
	.xword	0                               // 0x0
	.size	ebc_driver, 240

	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"rockchip ebc driver %s probe\n"
	.size	.L.str.2, 30

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"10.00"
	.size	.L.str.3, 6

	.type	global_ebc,@object              // @global_ebc
	.local	global_ebc
	.comm	global_ebc,8,8
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"ebc_tcon"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"not find ebc tcon\n"
	.size	.L.str.5, 19

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"cpu-code"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"no chip info\n"
	.size	.L.str.7, 14

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"read chip info failed\n"
	.size	.L.str.8, 23

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"chip err\n"
	.size	.L.str.9, 10

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"pmic"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"wrong pmics number\n"
	.size	.L.str.11, 20

	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"not find pmic node\n"
	.size	.L.str.12, 20

	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"not find pmic i2c client\n"
	.size	.L.str.13, 26

	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"use pmic%d\n"
	.size	.L.str.14, 12

	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"vcom"
	.size	.L.str.15, 5

	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"Failed to get vcom regulator\n"
	.size	.L.str.16, 30

	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"thermal-zone"
	.size	.L.str.17, 13

	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"Failed to get thermal zone name\n"
	.size	.L.str.18, 33

	.type	.L.str.19,@object               // @.str.19
.L.str.19:
	.asciz	"Failed to get thermal device\n"
	.size	.L.str.19, 30

	.type	.L.str.20,@object               // @.str.20
.L.str.20:
	.asciz	"Get PMIC device failed\n"
	.size	.L.str.20, 24

	.type	.L.str.21,@object               // @.str.21
.L.str.21:
	.asciz	"ebc-use-soft-tcon"
	.size	.L.str.21, 18

	.type	.L.str.22,@object               // @.str.22
.L.str.22:
	.asciz	"ebc-repair-enable"
	.size	.L.str.22, 18

	.type	.L.str.23,@object               // @.str.23
.L.str.23:
	.asciz	"ebc-dmc-notify-enable"
	.size	.L.str.23, 22

	.type	.L.str.24,@object               // @.str.24
.L.str.24:
	.asciz	"failed to probe panel: %d\n"
	.size	.L.str.24, 27

	.type	.L.str.25,@object               // @.str.25
.L.str.25:
	.asciz	"soft tcon: not support panel rearrange and gate dummy\n"
	.size	.L.str.25, 55

	.type	.L.str.26,@object               // @.str.26
.L.str.26:
	.asciz	"e6: not support panel rearrange and gate dummy\n"
	.size	.L.str.26, 48

	.type	.L.str.27,@object               // @.str.27
.L.str.27:
	.asciz	"vpos1"
	.size	.L.str.27, 6

	.type	.L.str.28,@object               // @.str.28
.L.str.28:
	.asciz	"Failed to get vpos1 regulator\n"
	.size	.L.str.28, 31

	.type	.L.str.29,@object               // @.str.29
.L.str.29:
	.asciz	"vpos2"
	.size	.L.str.29, 6

	.type	.L.str.30,@object               // @.str.30
.L.str.30:
	.asciz	"Failed to get vpos2 regulator\n"
	.size	.L.str.30, 31

	.type	.L.str.31,@object               // @.str.31
.L.str.31:
	.asciz	"vpos3"
	.size	.L.str.31, 6

	.type	.L.str.32,@object               // @.str.32
.L.str.32:
	.asciz	"Failed to get vpos3 regulator\n"
	.size	.L.str.32, 31

	.type	.L.str.33,@object               // @.str.33
.L.str.33:
	.asciz	"vneg1"
	.size	.L.str.33, 6

	.type	.L.str.34,@object               // @.str.34
.L.str.34:
	.asciz	"Failed to get vneg1 regulator\n"
	.size	.L.str.34, 31

	.type	.L.str.35,@object               // @.str.35
.L.str.35:
	.asciz	"vneg2"
	.size	.L.str.35, 6

	.type	.L.str.36,@object               // @.str.36
.L.str.36:
	.asciz	"Failed to get vneg2 regulator\n"
	.size	.L.str.36, 31

	.type	.L.str.37,@object               // @.str.37
.L.str.37:
	.asciz	"vneg3"
	.size	.L.str.37, 6

	.type	.L.str.38,@object               // @.str.38
.L.str.38:
	.asciz	"Failed to get vneg3 regulator\n"
	.size	.L.str.38, 31

	.type	.L.str.39,@object               // @.str.39
.L.str.39:
	.asciz	"vgh"
	.size	.L.str.39, 4

	.type	.L.str.40,@object               // @.str.40
.L.str.40:
	.asciz	"Failed to get vgh regulator\n"
	.size	.L.str.40, 29

	.type	.L.str.41,@object               // @.str.41
.L.str.41:
	.asciz	"vgl"
	.size	.L.str.41, 4

	.type	.L.str.42,@object               // @.str.42
.L.str.42:
	.asciz	"Failed to get vgl regulator\n"
	.size	.L.str.42, 29

	.type	.L.str.43,@object               // @.str.43
.L.str.43:
	.asciz	"lut table init failed\n"
	.size	.L.str.43, 23

	.type	.L.str.44,@object               // @.str.44
.L.str.44:
	.asciz	"buffer manage init failed\n"
	.size	.L.str.44, 27

	.type	.L.str.45,@object               // @.str.45
.L.str.45:
	.asciz	"task init failed\n"
	.size	.L.str.45, 18

	.type	.L.str.46,@object               // @.str.46
.L.str.46:
	.asciz	"rockchip ebc driver %s probe success\n"
	.size	.L.str.46, 38

	.type	.L.str.47,@object               // @.str.47
.L.str.47:
	.asciz	"[%s] buffer %d frame done, wake up ebc task\n"
	.size	.L.str.47, 45

	.type	.L.str.48,@object               // @.str.48
.L.str.48:
	.asciz	"FRAME DONE CALLBACK"
	.size	.L.str.48, 20

	.type	ebc_task,@object                // @ebc_task
	.local	ebc_task
	.comm	ebc_task,8,8
	.type	ebc_flip_wq,@object             // @ebc_flip_wq
	.data
	.p2align	3, 0x0
ebc_flip_wq:
	.zero	4
	.zero	4
	.xword	ebc_flip_wq+8
	.xword	ebc_flip_wq+8
	.size	ebc_flip_wq, 24

	.type	.L.str.50,@object               // @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"panel,width"
	.size	.L.str.50, 12

	.type	.L.str.51,@object               // @.str.51
.L.str.51:
	.asciz	"panel,height"
	.size	.L.str.51, 13

	.type	.L.str.52,@object               // @.str.52
.L.str.52:
	.asciz	"panel,vir_width"
	.size	.L.str.52, 16

	.type	.L.str.53,@object               // @.str.53
.L.str.53:
	.asciz	"panel,vir_height"
	.size	.L.str.53, 17

	.type	.L.str.54,@object               // @.str.54
.L.str.54:
	.asciz	"panel,sdck"
	.size	.L.str.54, 11

	.type	.L.str.55,@object               // @.str.55
.L.str.55:
	.asciz	"panel,lsl"
	.size	.L.str.55, 10

	.type	.L.str.56,@object               // @.str.56
.L.str.56:
	.asciz	"panel,lbl"
	.size	.L.str.56, 10

	.type	.L.str.57,@object               // @.str.57
.L.str.57:
	.asciz	"panel,ldl"
	.size	.L.str.57, 10

	.type	.L.str.58,@object               // @.str.58
.L.str.58:
	.asciz	"panel,lel"
	.size	.L.str.58, 10

	.type	.L.str.59,@object               // @.str.59
.L.str.59:
	.asciz	"panel,gdck-sta"
	.size	.L.str.59, 15

	.type	.L.str.60,@object               // @.str.60
.L.str.60:
	.asciz	"panel,lgonl"
	.size	.L.str.60, 12

	.type	.L.str.61,@object               // @.str.61
.L.str.61:
	.asciz	"panel,fsl"
	.size	.L.str.61, 10

	.type	.L.str.62,@object               // @.str.62
.L.str.62:
	.asciz	"panel,fbl"
	.size	.L.str.62, 10

	.type	.L.str.63,@object               // @.str.63
.L.str.63:
	.asciz	"panel,fdl"
	.size	.L.str.63, 10

	.type	.L.str.64,@object               // @.str.64
.L.str.64:
	.asciz	"panel,fel"
	.size	.L.str.64, 10

	.type	.L.str.65,@object               // @.str.65
.L.str.65:
	.asciz	"panel,panel_16bit"
	.size	.L.str.65, 18

	.type	.L.str.66,@object               // @.str.66
.L.str.66:
	.asciz	"panel,panel_color"
	.size	.L.str.66, 18

	.type	.L.str.67,@object               // @.str.67
.L.str.67:
	.asciz	"panel,mirror"
	.size	.L.str.67, 13

	.type	.L.str.68,@object               // @.str.68
.L.str.68:
	.asciz	"panel,width-mm"
	.size	.L.str.68, 15

	.type	.L.str.69,@object               // @.str.69
.L.str.69:
	.asciz	"panel,height-mm"
	.size	.L.str.69, 16

	.type	.L.str.70,@object               // @.str.70
.L.str.70:
	.asciz	"panel,rearrange"
	.size	.L.str.70, 16

	.type	.L.str.71,@object               // @.str.71
.L.str.71:
	.asciz	"panel,sdoe_mode"
	.size	.L.str.71, 16

	.type	.L.str.72,@object               // @.str.72
.L.str.72:
	.asciz	"panel,sdce_width"
	.size	.L.str.72, 17

	.type	.L.str.73,@object               // @.str.73
.L.str.73:
	.asciz	"panel,lel-keep-clk"
	.size	.L.str.73, 19

	.type	.L.str.74,@object               // @.str.74
.L.str.74:
	.asciz	"panel,gds"
	.size	.L.str.74, 10

	.type	.L.str.75,@object               // @.str.75
.L.str.75:
	.asciz	"panel,gdl"
	.size	.L.str.75, 10

	.type	.L.str.76,@object               // @.str.76
.L.str.76:
	.asciz	"pmic-early-power-on"
	.size	.L.str.76, 20

	.type	.L.str.77,@object               // @.str.77
.L.str.77:
	.asciz	"waveform-region"
	.size	.L.str.77, 16

	.type	.L.str.78,@object               // @.str.78
.L.str.78:
	.asciz	"wf,mode_table"
	.size	.L.str.78, 14

	.type	.L.str.79,@object               // @.str.79
.L.str.79:
	.asciz	"%s:%d: failed to get mem from reserved\n"
	.size	.L.str.79, 40

	.type	.L__func__.ebc_lut_table_init,@object // @__func__.ebc_lut_table_init
.L__func__.ebc_lut_table_init:
	.asciz	"ebc_lut_table_init"
	.size	.L__func__.ebc_lut_table_init, 19

	.type	.L.str.80,@object               // @.str.80
.L.str.80:
	.asciz	"Failed to read waveform from mem, we use waveform file from kernel file instead\n"
	.size	.L.str.80, 81

	.type	.L.str.81,@object               // @.str.81
.L.str.81:
	.asciz	"Failed to read waveform file from kernel, no waveform!!!\n"
	.size	.L.str.81, 58

	.type	.L.str.82,@object               // @.str.82
.L.str.82:
	.asciz	"ebc-disable-osd"
	.size	.L.str.82, 16

	.type	.L.str.83,@object               // @.str.83
.L.str.83:
	.asciz	"ebc-disable-transition"
	.size	.L.str.83, 23

	.type	.L.str.84,@object               // @.str.84
.L.str.84:
	.asciz	"failed to alloc direct fb %d from cma, ret: %d\n"
	.size	.L.str.84, 48

	.type	.L.str.85,@object               // @.str.85
.L.str.85:
	.asciz	"failed to alloc prev_lut_buf from cma, ret: %d\n"
	.size	.L.str.85, 48

	.type	.L.str.86,@object               // @.str.86
.L.str.86:
	.asciz	"failed to alloc cur_lut_buf from cma, ret: %d\n"
	.size	.L.str.86, 47

	.type	.L.str.87,@object               // @.str.87
.L.str.87:
	.asciz	"failed to init ebc buf list, ret: %d\n"
	.size	.L.str.87, 38

	.type	.L.str.88,@object               // @.str.88
.L.str.88:
	.asciz	"ebc-max-dsp-fb-num"
	.size	.L.str.88, 19

	.type	.L.str.89,@object               // @.str.89
.L.str.89:
	.asciz	"failed to alloc ebc dsp buf %d from dma, ret: %d\n"
	.size	.L.str.89, 50

	.type	.L.str.90,@object               // @.str.90
.L.str.90:
	.asciz	"failed to init ebc dsp buf %d from dma, ret: %d\n"
	.size	.L.str.90, 49

	.type	.L.str.91,@object               // @.str.91
.L.str.91:
	.asciz	"failed to alloc ebc osd buf %d from dma, ret: %d\n"
	.size	.L.str.91, 50

	.type	.L.str.92,@object               // @.str.92
.L.str.92:
	.asciz	"failed to alloc wf_table_buf from dma, ret: %d\n"
	.size	.L.str.92, 48

	.type	.L.str.93,@object               // @.str.93
.L.str.93:
	.asciz	"failed to alloc trans_lut from dma, ret: %d\n"
	.size	.L.str.93, 45

	.type	.L.str.94,@object               // @.str.94
.L.str.94:
	.asciz	"failed to alloc auto_image_new from dma, ret: %d\n"
	.size	.L.str.94, 50

	.type	.L.str.95,@object               // @.str.95
.L.str.95:
	.asciz	"failed to alloc auto_image_old from dma, ret: %d\n"
	.size	.L.str.95, 50

	.type	.L.str.96,@object               // @.str.96
.L.str.96:
	.asciz	"failed to alloc auto_frame_count from dma, ret: %d\n"
	.size	.L.str.96, 52

	.type	.L.str.97,@object               // @.str.97
.L.str.97:
	.asciz	"failed to alloc auto_wf_index from dma, ret: %d\n"
	.size	.L.str.97, 49

	.type	.L.str.98,@object               // @.str.98
.L.str.98:
	.asciz	"failed to alloc auto_image_ghost from dma, ret: %d\n"
	.size	.L.str.98, 52

	.type	.L.str.99,@object               // @.str.99
.L.str.99:
	.asciz	"ebc_assist_task"
	.size	.L.str.99, 16

	.type	ebc_assist_task,@object         // @ebc_assist_task
	.local	ebc_assist_task
	.comm	ebc_assist_task,8,8
	.type	.L.str.100,@object              // @.str.100
.L.str.100:
	.asciz	"failed to create ebc_assist_task thread\n"
	.size	.L.str.100, 41

	.type	.L.str.101,@object              // @.str.101
.L.str.101:
	.asciz	"ebc_task"
	.size	.L.str.101, 9

	.type	.L.str.102,@object              // @.str.102
.L.str.102:
	.asciz	"failed to create ebc_task thread\n"
	.size	.L.str.102, 34

	.type	.L.str.103,@object              // @.str.103
.L.str.103:
	.asciz	"%s"
	.size	.L.str.103, 3

	.type	.L.str.104,@object              // @.str.104
.L.str.104:
	.asciz	"ebc-delay-power-off"
	.size	.L.str.104, 20

	.type	.L.str.105,@object              // @.str.105
.L.str.105:
	.asciz	"[%s] no buffer, exit\n"
	.size	.L.str.105, 22

	.type	.L.str.106,@object              // @.str.106
.L.str.106:
	.asciz	"ASSIST THREAD"
	.size	.L.str.106, 14

	.type	.L.str.107,@object              // @.str.107
.L.str.107:
	.asciz	"[%s] lut mode, exit\n"
	.size	.L.str.107, 21

	.type	ebc_assist_finished_flag_sem,@object // @ebc_assist_finished_flag_sem
	.data
	.p2align	3, 0x0
ebc_assist_finished_flag_sem:
	.zero	4
	.word	1                               // 0x1
	.xword	ebc_assist_finished_flag_sem+8
	.xword	ebc_assist_finished_flag_sem+8
	.size	ebc_assist_finished_flag_sem, 24

	.type	_8_8bit_mask,@object            // @_8_8bit_mask
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
_8_8bit_mask:
	.xword	255                             // 0xff
	.xword	65280                           // 0xff00
	.xword	16711680                        // 0xff0000
	.xword	4278190080                      // 0xff000000
	.xword	1095216660480                   // 0xff00000000
	.xword	280375465082880                 // 0xff0000000000
	.xword	71776119061217280               // 0xff000000000000
	.xword	-72057594037927936              // 0xff00000000000000
	.size	_8_8bit_mask, 64

	.type	.L.str.108,@object              // @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"[%s] overlay left: %s, frame total: %d, osd frame total: %d\n"
	.size	.L.str.108, 61

	.type	.L.str.109,@object              // @.str.109
.L.str.109:
	.asciz	"LEFT"
	.size	.L.str.109, 5

	.type	.L.str.110,@object              // @.str.110
.L.str.110:
	.asciz	"RIGHT"
	.size	.L.str.110, 6

	.type	.L.str.111,@object              // @.str.111
.L.str.111:
	.asciz	"LEFT & RIGHT"
	.size	.L.str.111, 13

	.type	.L.str.112,@object              // @.str.112
.L.str.112:
	.asciz	"true"
	.size	.L.str.112, 5

	.type	.L.str.113,@object              // @.str.113
.L.str.113:
	.asciz	"false"
	.size	.L.str.113, 6

	.type	.L__const.get_normal_panel_auto_data.offset,@object // @__const.get_normal_panel_auto_data.offset
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
.L__const.get_normal_panel_auto_data.offset:
	.word	3                               // 0x3
	.word	11                              // 0xb
	.word	19                              // 0x13
	.word	27                              // 0x1b
	.word	35                              // 0x23
	.word	43                              // 0x2b
	.word	51                              // 0x33
	.word	59                              // 0x3b
	.size	.L__const.get_normal_panel_auto_data.offset, 32

	.type	.L.str.114,@object              // @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"[%s] overlay left: %d, frame total: (%d, %d, %d)\n"
	.size	.L.str.114, 50

	.type	_16_2bit_mask,@object           // @_16_2bit_mask
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
_16_2bit_mask:
	.word	3                               // 0x3
	.word	12                              // 0xc
	.word	48                              // 0x30
	.word	192                             // 0xc0
	.word	768                             // 0x300
	.word	3072                            // 0xc00
	.word	12288                           // 0x3000
	.word	49152                           // 0xc000
	.word	196608                          // 0x30000
	.word	786432                          // 0xc0000
	.word	3145728                         // 0x300000
	.word	12582912                        // 0xc00000
	.word	50331648                        // 0x3000000
	.word	201326592                       // 0xc000000
	.word	805306368                       // 0x30000000
	.word	3221225472                      // 0xc0000000
	.size	_16_2bit_mask, 64

	.type	.L.str.115,@object              // @.str.115
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.115:
	.asciz	"[%s] dsp frameidx: %d, transition done: %s\n"
	.size	.L.str.115, 44

	.type	.L.str.116,@object              // @.str.116
.L.str.116:
	.asciz	"[%s] dsp frameidx: %d, transition (enable: %s, done: %s)\n"
	.size	.L.str.116, 58

	.type	.L.str.117,@object              // @.str.117
.L.str.117:
	.asciz	"[%s] ebc is idle, can flip the next frame\n"
	.size	.L.str.117, 43

	.type	.L.str.118,@object              // @.str.118
.L.str.118:
	.asciz	"MAIN THREAD"
	.size	.L.str.118, 12

	.type	.L.str.119,@object              // @.str.119
.L.str.119:
	.asciz	"/data/dump/direct_buffer.bin"
	.size	.L.str.119, 29

	.type	.L.str.120,@object              // @.str.120
.L.str.120:
	.asciz	"[%s] refresh done: %s (dsp: %s, auto: %s), fast ghost rm done: %s\n"
	.size	.L.str.120, 67

	.type	.L.str.121,@object              // @.str.121
.L.str.121:
	.asciz	"[%s] need bw repair: 0x%02x, need transition: 0x%02x, need overlay: 0x%02x, next ebc_mode: %d\n"
	.size	.L.str.121, 95

	.type	.L.str.122,@object              // @.str.122
.L.str.122:
	.asciz	"[%s] has osd buf: %s, update osd buf: %s, has dsp buf: %s, update dsp buf: %s\n"
	.size	.L.str.122, 79

	.type	.L.str.123,@object              // @.str.123
.L.str.123:
	.asciz	"[%s] update dsp buf for next frame\n"
	.size	.L.str.123, 36

	.type	.L.str.124,@object              // @.str.124
.L.str.124:
	.asciz	"[%s] dsp frame start, refresh mode = %d, dsp frame total = %d, total = %d\n"
	.size	.L.str.124, 75

	.type	.L.str.125,@object              // @.str.125
.L.str.125:
	.asciz	"FRAME START"
	.size	.L.str.125, 12

	.type	.L.str.126,@object              // @.str.126
.L.str.126:
	.asciz	"[%s] dsp frame start, refresh mode = %d, dsp frame total = %d\n"
	.size	.L.str.126, 63

	.type	.L.str.127,@object              // @.str.127
.L.str.127:
	.asciz	"/data/dump/prev_dsp_buf.bin"
	.size	.L.str.127, 28

	.type	.L.str.128,@object              // @.str.128
.L.str.128:
	.asciz	"/data/dump/curr_dsp_buf.bin"
	.size	.L.str.128, 28

	.type	.L.str.129,@object              // @.str.129
.L.str.129:
	.asciz	"/data/dump/auto_image_old.bin"
	.size	.L.str.129, 30

	.type	.L.str.130,@object              // @.str.130
.L.str.130:
	.asciz	"/data/dump/auto_image_new.bin"
	.size	.L.str.130, 30

	.type	.L.str.131,@object              // @.str.131
.L.str.131:
	.asciz	"/data/dump/auto_frame_count.bin"
	.size	.L.str.131, 32

	.type	.L.str.132,@object              // @.str.132
.L.str.132:
	.asciz	"/data/dump/auto_image_ghost.bin"
	.size	.L.str.132, 32

	.type	.L.str.133,@object              // @.str.133
.L.str.133:
	.asciz	"/data/dump/auto_wf_index.bin"
	.size	.L.str.133, 29

	.type	.L.str.134,@object              // @.str.134
.L.str.134:
	.asciz	"[%s] no buffer, frame done\n"
	.size	.L.str.134, 28

	.type	.L.str.135,@object              // @.str.135
.L.str.135:
	.asciz	"[%s] update lut_buffer"
	.size	.L.str.135, 23

	.type	.L.str.136,@object              // @.str.136
.L.str.136:
	.asciz	"[%s] update direct_buffer index: %d, mode: %d\n"
	.size	.L.str.136, 47

	.type	.L.str.137,@object              // @.str.137
.L.str.137:
	.asciz	"[%s] start processing the next frame\n"
	.size	.L.str.137, 38

	.type	.L.str.138,@object              // @.str.138
.L.str.138:
	.asciz	"[%s] lut mode flip buffer\n"
	.size	.L.str.138, 27

	.type	.L.str.139,@object              // @.str.139
.L.str.139:
	.asciz	"FLIP"
	.size	.L.str.139, 5

	.type	.L.str.140,@object              // @.str.140
.L.str.140:
	.asciz	"Failed to set lut in lut mode:%d\n"
	.size	.L.str.140, 34

	.type	.L.str.141,@object              // @.str.141
.L.str.141:
	.asciz	"[%s] update lut in lut mode:%d\n"
	.size	.L.str.141, 32

	.type	.L.str.142,@object              // @.str.142
.L.str.142:
	.asciz	"[%s] direct mode flip buffer index: %d\n"
	.size	.L.str.142, 40

	.type	.L.str.143,@object              // @.str.143
.L.str.143:
	.asciz	"[%s] start fast mode ghost removal\n"
	.size	.L.str.143, 36

	.type	.L.str.144,@object              // @.str.144
.L.str.144:
	.asciz	"AUTO UPDATE"
	.size	.L.str.144, 12

	.type	.L.str.145,@object              // @.str.145
.L.str.145:
	.asciz	"\0013Failed to open file: %s\n"
	.size	.L.str.145, 27

	.type	.L.str.146,@object              // @.str.146
.L.str.146:
	.asciz	"\0013Failed to write to file: %ld\n"
	.size	.L.str.146, 32

	.type	.L.str.147,@object              // @.str.147
.L.str.147:
	.asciz	"\0016Successfully wrote %zu bytes to %s\n"
	.size	.L.str.147, 38

	.type	.L.str.148,@object              // @.str.148
.L.str.148:
	.asciz	"[%s] ebc buffer mode %d not support!\n"
	.size	.L.str.148, 38

	.type	.L.str.149,@object              // @.str.149
.L.str.149:
	.asciz	"[%s] force temperature = %d\n"
	.size	.L.str.149, 29

	.type	.L.str.150,@object              // @.str.150
.L.str.150:
	.asciz	"[%s] temperature = %d, out of range0~50 ,use 0 \n"
	.size	.L.str.150, 49

	.type	.L.str.151,@object              // @.str.151
.L.str.151:
	.asciz	"[%s] temperature = %d, out of range0~50 ,use 50 \n"
	.size	.L.str.151, 50

	.type	.L.str.152,@object              // @.str.152
.L.str.152:
	.asciz	"[%s] ebc_pmic_read_temp failed, ret = %d, use 25 \n"
	.size	.L.str.152, 51

	.type	.L.str.153,@object              // @.str.153
.L.str.153:
	.asciz	"[%s] overlay_temperature_fix(%d) overflow, use origin temperature(%d)\n"
	.size	.L.str.153, 71

	.type	.L.str.154,@object              // @.str.154
.L.str.154:
	.asciz	"[%s] normal_temperature_fix(%d) overflow, use origin temperature(%d)\n"
	.size	.L.str.154, 70

	.type	.L.str.155,@object              // @.str.155
.L.str.155:
	.asciz	"[%s] lut update use overlay_temperature_fix = %d normal_temperature_fix = %d, origin temperature = %d\n"
	.size	.L.str.155, 103

	.type	.L.str.156,@object              // @.str.156
.L.str.156:
	.asciz	"[%s] get lut data failed\n"
	.size	.L.str.156, 26

	.type	.L.str.157,@object              // @.str.157
.L.str.157:
	.asciz	"[%s] osd lut data update\n"
	.size	.L.str.157, 26

	.type	.L.str.158,@object              // @.str.158
.L.str.158:
	.asciz	"[%s] dsp lut data update\n"
	.size	.L.str.158, 26

	.type	.L.str.159,@object              // @.str.159
.L.str.159:
	.asciz	"[%s] ebc hw power on res:%d\n"
	.size	.L.str.159, 29

	.type	.L.str.160,@object              // @.str.160
.L.str.160:
	.asciz	"POWER"
	.size	.L.str.160, 6

	.type	.L.str.161,@object              // @.str.161
.L.str.161:
	.asciz	"[%s] ebc hw power off res:%d\n"
	.size	.L.str.161, 30

	.type	.L.str.162,@object              // @.str.162
.L.str.162:
	.asciz	"[%s] break part or full mode to auto mode\n"
	.size	.L.str.162, 43

	.type	.L.str.163,@object              // @.str.163
.L.str.163:
	.asciz	"MODE CHANGE"
	.size	.L.str.163, 12

	.type	.L.str.164,@object              // @.str.164
.L.str.164:
	.asciz	"[%s] part or full mode to auto(full) mode\n"
	.size	.L.str.164, 43

	.type	.L.str.165,@object              // @.str.165
.L.str.165:
	.asciz	"[%s] part or full mode to auto(%s) mode\n"
	.size	.L.str.165, 41

	.type	.L.str.166,@object              // @.str.166
.L.str.166:
	.asciz	"part"
	.size	.L.str.166, 5

	.type	.L.str.167,@object              // @.str.167
.L.str.167:
	.asciz	"fast"
	.size	.L.str.167, 5

	.type	.L.str.168,@object              // @.str.168
.L.str.168:
	.asciz	"[%s] overlay osd buffer to auto_image (%d, %d, %d, %d), complete: %s, overlay_enable: %d\n"
	.size	.L.str.168, 90

	.type	.L.str.169,@object              // @.str.169
.L.str.169:
	.asciz	"[%s] auto(part) mode to part or full mode\n"
	.size	.L.str.169, 43

	.type	.L.str.170,@object              // @.str.170
.L.str.170:
	.asciz	"[%s] auto(full) mode to part or full mode\n"
	.size	.L.str.170, 43

	.type	.L.str.171,@object              // @.str.171
.L.str.171:
	.asciz	"[%s] auto(fast) mode to part or full mode\n"
	.size	.L.str.171, 43

	.type	.L.str.172,@object              // @.str.172
.L.str.172:
	.asciz	"[%s] update fast buffer to auto_image\n"
	.size	.L.str.172, 39

	.type	.L.str.173,@object              // @.str.173
.L.str.173:
	.asciz	"[%s] update %s buffer to auto_image, complete: %s\n"
	.size	.L.str.173, 51

	.type	.L.str.174,@object              // @.str.174
.L.str.174:
	.asciz	"full"
	.size	.L.str.174, 5

	.type	.L.str.175,@object              // @.str.175
.L.str.175:
	.asciz	"[%s] transition type = %d, step = %d\n"
	.size	.L.str.175, 38

	.type	.L.str.176,@object              // @.str.176
.L.str.176:
	.asciz	"TRANSITION"
	.size	.L.str.176, 11

	.type	.L.str.177,@object              // @.str.177
.L.str.177:
	.asciz	"ebc"
	.size	.L.str.177, 4

	.type	.L.str.178,@object              // @.str.178
.L.str.178:
	.asciz	"ulogo_addr="
	.size	.L.str.178, 12

	.type	.L.str.179,@object              // @.str.179
.L.str.179:
	.asciz	"klogo_addr="
	.size	.L.str.179, 12

	.type	.L.str.180,@object              // @.str.180
.L.str.180:
	.asciz	"memory-region"
	.size	.L.str.180, 14

	.type	.L.str.181,@object              // @.str.181
.L.str.181:
	.asciz	"Couldn't address to resource for reserved memory\n"
	.size	.L.str.181, 50

	.type	.L.str.182,@object              // @.str.182
.L.str.182:
	.asciz	"reserved memory not enough, need 0x%x\n"
	.size	.L.str.182, 39

	.type	.L.str.183,@object              // @.str.183
.L.str.183:
	.asciz	"Couldn't remap for reserved memory\n"
	.size	.L.str.183, 36

	.type	.L.str.184,@object              // @.str.184
.L.str.184:
	.asciz	"ulogo_addr=0x%x"
	.size	.L.str.184, 16

	.type	.L.str.185,@object              // @.str.185
.L.str.185:
	.asciz	"have ulogo display, ulogo addr = 0x%x\n"
	.size	.L.str.185, 39

	.type	.L.str.186,@object              // @.str.186
.L.str.186:
	.asciz	"malloc ulogo buffer failed\n"
	.size	.L.str.186, 28

	.type	.L.str.187,@object              // @.str.187
.L.str.187:
	.asciz	"klogo_addr=0x%x"
	.size	.L.str.187, 16

	.type	.L.str.188,@object              // @.str.188
.L.str.188:
	.asciz	"need show klogo, klogo addr = 0x%x\n"
	.size	.L.str.188, 36

	.type	.L.str.189,@object              // @.str.189
.L.str.189:
	.asciz	"malloc klogo buffer failed\n"
	.size	.L.str.189, 28

	.type	.L.str.190,@object              // @.str.190
.L.str.190:
	.asciz	"no uboot logo, panel init\n"
	.size	.L.str.190, 27

	.type	.L.str.191,@object              // @.str.191
.L.str.191:
	.asciz	"ebc_dev_logo"
	.size	.L.str.191, 13

	.type	.L.str.192,@object              // @.str.192
.L.str.192:
	.asciz	"ebc_dev_reset"
	.size	.L.str.192, 14

	.type	ebc_misc,@object                // @ebc_misc
	.data
	.p2align	3, 0x0
ebc_misc:
	.word	243                             // 0xf3
	.zero	4
	.xword	.L.str.177
	.xword	ebc_ops
	.zero	16
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0                               // 0x0
	.zero	6
	.size	ebc_misc, 80

	.type	ebc_ops,@object                 // @ebc_ops
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
ebc_ops:
	.xword	0
	.word	0                               // 0x0
	.zero	4
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	ebc_io_ctl
	.xword	ebc_io_ctl
	.xword	0
	.xword	ebc_open
	.xword	0
	.xword	ebc_release
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	ebc_ops, 264

	.type	.L.str.195,@object              // @.str.195
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.195:
	.asciz	"%s: argp NULL\n"
	.size	.L.str.195, 15

	.type	.L__func__.ebc_io_ctl,@object   // @__func__.ebc_io_ctl
.L__func__.ebc_io_ctl:
	.asciz	"ebc_io_ctl"
	.size	.L__func__.ebc_io_ctl, 11

	.type	.L.str.196,@object              // @.str.196
.L.str.196:
	.asciz	"[%s] EBC_SEND_BUFFER\n"
	.size	.L.str.196, 22

	.type	.L.str.197,@object              // @.str.197
.L.str.197:
	.asciz	"IOCTL"
	.size	.L.str.197, 6

	.type	.L.str.198,@object              // @.str.198
.L.str.198:
	.asciz	"[%s] EBC_SEND_OSD_BUFFER\n"
	.size	.L.str.198, 26

	.type	.L.str.199,@object              // @.str.199
.L.str.199:
	.asciz	"EBC_GET_BUFFER_INFO failed\n"
	.size	.L.str.199, 28

	.type	.L.str.200,@object              // @.str.200
.L.str.200:
	.asciz	"[%s] EBC_FB_BLANK\n"
	.size	.L.str.200, 19

	.type	.L.str.201,@object              // @.str.201
.L.str.201:
	.asciz	"[%s] EBC_FB_UNBLANK\n"
	.size	.L.str.201, 21

	.type	.L.str.202,@object              // @.str.202
.L.str.202:
	.asciz	"[%s] EBC_BW_ENABLE_REPAIR = %d\n"
	.size	.L.str.202, 32

	.type	.L.str.203,@object              // @.str.203
.L.str.203:
	.asciz	"[%s] EBC_BW_BALANCE_CTL = %d\n"
	.size	.L.str.203, 30

	.type	.L.str.204,@object              // @.str.204
.L.str.204:
	.asciz	"[%s] EBC_BW_GHOST_RM_LEVEL = %d\n"
	.size	.L.str.204, 33

	.type	.L.str.205,@object              // @.str.205
.L.str.205:
	.asciz	"[%s] EBC_SET_TRANSITION_WIDTH = %d\n"
	.size	.L.str.205, 36

	.type	.L.str.206,@object              // @.str.206
.L.str.206:
	.asciz	"[%s] EBC_SET_TRANSITION_TYPE = %d\n"
	.size	.L.str.206, 35

	.type	.L.str.207,@object              // @.str.207
.L.str.207:
	.asciz	"[%s] EBC_SET_FORCE_TEMPERATURE = %d\n"
	.size	.L.str.207, 37

	.type	.L.str.208,@object              // @.str.208
.L.str.208:
	.asciz	"[%s] EBC_ENABLE_WAVEFORM_FIX = %d\n"
	.size	.L.str.208, 35

	.type	.L.str.209,@object              // @.str.209
.L.str.209:
	.asciz	"[%s] EBC_FORCE_FULL_USE_REGAL = %d\n"
	.size	.L.str.209, 36

	.type	.L.str.210,@object              // @.str.210
.L.str.210:
	.asciz	"[%s] EBC_ENABLE_OVERLAY\n"
	.size	.L.str.210, 25

	.type	.L.str.211,@object              // @.str.211
.L.str.211:
	.asciz	"[%s] EBC_DISABLE_OVERLAY\n"
	.size	.L.str.211, 26

	.type	.L.str.212,@object              // @.str.212
.L.str.212:
	.asciz	"%s: unknown cmd\n"
	.size	.L.str.212, 17

	.type	get_file.__already_done,@object // @get_file.__already_done
	.section	.data..once,"aw",@progbits
get_file.__already_done:
	.byte	0                               // 0x0
	.size	get_file.__already_done, 1

	.type	.L.str.213,@object              // @.str.213
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.213:
	.asciz	"struct file::f_count incremented from zero; use-after-free condition present!\n"
	.size	.L.str.213, 79

	.type	.L.str.214,@object              // @.str.214
.L.str.214:
	.asciz	"waveform"
	.size	.L.str.214, 9

	.type	waveform_misc,@object           // @waveform_misc
	.data
	.p2align	3, 0x0
waveform_misc:
	.word	244                             // 0xf4
	.zero	4
	.xword	.L.str.214
	.xword	waveform_ops
	.zero	16
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0                               // 0x0
	.zero	6
	.size	waveform_misc, 80

	.type	waveform_ops,@object            // @waveform_ops
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
waveform_ops:
	.xword	0
	.word	0                               // 0x0
	.zero	4
	.xword	waveform_llseek
	.xword	waveform_read
	.xword	waveform_write
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	waveform_mmap
	.xword	waveform_open
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	waveform_ops, 264

	.type	.L.str.217,@object              // @.str.217
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.217:
	.asciz	"transition_lut"
	.size	.L.str.217, 15

	.type	transition_lut_misc,@object     // @transition_lut_misc
	.data
	.p2align	3, 0x0
transition_lut_misc:
	.word	245                             // 0xf5
	.zero	4
	.xword	.L.str.217
	.xword	transition_lut_ops
	.zero	16
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0                               // 0x0
	.zero	6
	.size	transition_lut_misc, 80

	.type	transition_lut_ops,@object      // @transition_lut_ops
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
transition_lut_ops:
	.xword	0
	.word	0                               // 0x0
	.zero	4
	.xword	transition_lut_llseek
	.xword	transition_lut_read
	.xword	transition_lut_write
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	transition_lut_mmap
	.xword	transition_lut_open
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	transition_lut_ops, 264

	.type	transition_lut_vm_ops,@object   // @transition_lut_vm_ops
	.p2align	3, 0x0
transition_lut_vm_ops:
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	transition_lut_vm_fault
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.size	transition_lut_vm_ops, 144

	.type	.L.str.220,@object              // @.str.220
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.220:
	.asciz	"waveform_version"
	.size	.L.str.220, 17

	.type	dev_attr_waveform_version,@object // @dev_attr_waveform_version
	.data
	.p2align	3, 0x0
dev_attr_waveform_version:
	.xword	.L.str.220
	.hword	292                             // 0x124
	.zero	6
	.xword	waveform_version_read
	.xword	0
	.size	dev_attr_waveform_version, 32

	.type	.L.str.222,@object              // @.str.222
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.222:
	.asciz	"%s\n"
	.size	.L.str.222, 4

	.type	.L.str.223,@object              // @.str.223
.L.str.223:
	.asciz	"pmic_name"
	.size	.L.str.223, 10

	.type	dev_attr_pmic_name,@object      // @dev_attr_pmic_name
	.data
	.p2align	3, 0x0
dev_attr_pmic_name:
	.xword	.L.str.223
	.hword	292                             // 0x124
	.zero	6
	.xword	pmic_name_read
	.xword	0
	.size	dev_attr_pmic_name, 32

	.type	.L.str.225,@object              // @.str.225
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.225:
	.asciz	"pmic_temp"
	.size	.L.str.225, 10

	.type	dev_attr_pmic_temp,@object      // @dev_attr_pmic_temp
	.data
	.p2align	3, 0x0
dev_attr_pmic_temp:
	.xword	.L.str.225
	.hword	292                             // 0x124
	.zero	6
	.xword	pmic_temp_read
	.xword	0
	.size	dev_attr_pmic_temp, 32

	.type	.L.str.227,@object              // @.str.227
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.227:
	.asciz	"%d\n"
	.size	.L.str.227, 4

	.type	.L.str.228,@object              // @.str.228
.L.str.228:
	.asciz	"pmic_vcom"
	.size	.L.str.228, 10

	.type	dev_attr_pmic_vcom,@object      // @dev_attr_pmic_vcom
	.data
	.p2align	3, 0x0
dev_attr_pmic_vcom:
	.xword	.L.str.228
	.hword	420                             // 0x1a4
	.zero	6
	.xword	pmic_vcom_read
	.xword	pmic_vcom_write
	.size	dev_attr_pmic_vcom, 32

	.type	.L.str.230,@object              // @.str.230
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.230:
	.asciz	"invalid value = %s\n"
	.size	.L.str.230, 20

	.type	.L.str.231,@object              // @.str.231
.L.str.231:
	.asciz	"set vcom value failed\n"
	.size	.L.str.231, 23

	.type	.L.str.232,@object              // @.str.232
.L.str.232:
	.asciz	"ebc_version"
	.size	.L.str.232, 12

	.type	dev_attr_ebc_version,@object    // @dev_attr_ebc_version
	.data
	.p2align	3, 0x0
dev_attr_ebc_version:
	.xword	.L.str.232
	.hword	292                             // 0x124
	.zero	6
	.xword	ebc_version_read
	.xword	0
	.size	dev_attr_ebc_version, 32

	.type	.L.str.234,@object              // @.str.234
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.234:
	.asciz	"ebc_state"
	.size	.L.str.234, 10

	.type	dev_attr_ebc_state,@object      // @dev_attr_ebc_state
	.data
	.p2align	3, 0x0
dev_attr_ebc_state:
	.xword	.L.str.234
	.hword	292                             // 0x124
	.zero	6
	.xword	ebc_state_read
	.xword	0
	.size	dev_attr_ebc_state, 32

	.type	.L.str.236,@object              // @.str.236
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.236:
	.asciz	"ebc_buf_state"
	.size	.L.str.236, 14

	.type	dev_attr_ebc_buf_state,@object  // @dev_attr_ebc_buf_state
	.data
	.p2align	3, 0x0
dev_attr_ebc_buf_state:
	.xword	.L.str.236
	.hword	292                             // 0x124
	.zero	6
	.xword	ebc_buf_state_read
	.xword	0
	.size	dev_attr_ebc_buf_state, 32

	.type	.L.str.238,@object              // @.str.238
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.238:
	.asciz	"auto_frame_state"
	.size	.L.str.238, 17

	.type	dev_attr_auto_frame_state,@object // @dev_attr_auto_frame_state
	.data
	.p2align	3, 0x0
dev_attr_auto_frame_state:
	.xword	.L.str.238
	.hword	292                             // 0x124
	.zero	6
	.xword	auto_frame_state_read
	.xword	0
	.size	dev_attr_auto_frame_state, 32

	.type	.L.str.240,@object              // @.str.240
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.240:
	.asciz	"0\n"
	.size	.L.str.240, 3

	.type	.L.str.241,@object              // @.str.241
.L.str.241:
	.asciz	"ebc_debug_level"
	.size	.L.str.241, 16

	.type	dev_attr_ebc_debug_level,@object // @dev_attr_ebc_debug_level
	.data
	.p2align	3, 0x0
dev_attr_ebc_debug_level:
	.xword	.L.str.241
	.hword	420                             // 0x1a4
	.zero	6
	.xword	ebc_debug_level_read
	.xword	ebc_debug_level_write
	.size	dev_attr_ebc_debug_level, 32

	.type	.L.str.243,@object              // @.str.243
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.243:
	.asciz	"wf_data"
	.size	.L.str.243, 8

	.type	dev_attr_wf_data,@object        // @dev_attr_wf_data
	.data
	.p2align	3, 0x0
dev_attr_wf_data:
	.xword	.L.str.243
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	wf_data_write
	.size	dev_attr_wf_data, 32

	.type	.L.str.245,@object              // @.str.245
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.245:
	.asciz	"603893"
	.size	.L.str.245, 7

	.type	.L.str.246,@object              // @.str.246
.L.str.246:
	.asciz	"lutdata: %d frames\n"
	.size	.L.str.246, 20

	.type	.L.str.247,@object              // @.str.247
.L.str.247:
	.asciz	"[%d-->%d]: \n"
	.size	.L.str.247, 13

	.type	.L.str.248,@object              // @.str.248
.L.str.248:
	.asciz	"\001c\0017%d, "
	.size	.L.str.248, 9

	.type	.L.str.249,@object              // @.str.249
.L.str.249:
	.asciz	"overlay_wf_data"
	.size	.L.str.249, 16

	.type	dev_attr_overlay_wf_data,@object // @dev_attr_overlay_wf_data
	.data
	.p2align	3, 0x0
dev_attr_overlay_wf_data:
	.xword	.L.str.249
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	overlay_wf_data_write
	.size	dev_attr_overlay_wf_data, 32

	.type	.L.str.251,@object              // @.str.251
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.251:
	.asciz	"ori_wf_data"
	.size	.L.str.251, 12

	.type	dev_attr_ori_wf_data,@object    // @dev_attr_ori_wf_data
	.data
	.p2align	3, 0x0
dev_attr_ori_wf_data:
	.xword	.L.str.251
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	ori_wf_data_write
	.size	dev_attr_ori_wf_data, 32

	.type	.L.str.253,@object              // @.str.253
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.253:
	.asciz	"malloc wf_table buffer failed\n"
	.size	.L.str.253, 31

	.type	.L.str.254,@object              // @.str.254
.L.str.254:
	.asciz	"603893 %d %d"
	.size	.L.str.254, 13

	.type	.L.str.255,@object              // @.str.255
.L.str.255:
	.asciz	"%s: wf mode %d on temp %d\n"
	.size	.L.str.255, 27

	.type	.L__func__.ori_wf_data_write,@object // @__func__.ori_wf_data_write
.L__func__.ori_wf_data_write:
	.asciz	"ori_wf_data_write"
	.size	.L__func__.ori_wf_data_write, 18

	.type	.L.str.256,@object              // @.str.256
.L.str.256:
	.asciz	"%s: err code\n"
	.size	.L.str.256, 14

	.type	.L.str.257,@object              // @.str.257
.L.str.257:
	.asciz	"%s: err lut_type or temp\n"
	.size	.L.str.257, 26

	.type	.L.str.258,@object              // @.str.258
.L.str.258:
	.asciz	"device suspend\n"
	.size	.L.str.258, 16

	.type	.L.str.259,@object              // @.str.259
.L.str.259:
	.asciz	"device resume\n"
	.size	.L.str.259, 15

	.type	.Lswitch.table.ebc_probe.261,@object // @switch.table.ebc_probe.261
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.ebc_probe.261:
	.word	3566                            // 0xdee
	.word	3576                            // 0xdf8
	.word	3572                            // 0xdf4
	.word	3506                            // 0xdb2
	.word	3326                            // 0xcfe
	.size	.Lswitch.table.ebc_probe.261, 20

	.ident	"Android (13290119, +pgo, +bolt, +lto, +mlgo, based on r547379) clang version 20.0.0 (https://android.googlesource.com/toolchain/llvm-project b718bcaf8c198c82f3021447d943401e3ab5bd54)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ebc_exit
	.addrsig_sym ebc_init
	.addrsig_sym ebc_probe
	.addrsig_sym ebc_remove
	.addrsig_sym frame_done_callback
	.addrsig_sym ebc_assist_thread
	.addrsig_sym ebc_thread
	.addrsig_sym ebc_delay_power_off
	.addrsig_sym delayed_work_timer_fn
	.addrsig_sym ebc_io_ctl
	.addrsig_sym ebc_open
	.addrsig_sym ebc_release
	.addrsig_sym waveform_llseek
	.addrsig_sym waveform_read
	.addrsig_sym waveform_write
	.addrsig_sym waveform_mmap
	.addrsig_sym waveform_open
	.addrsig_sym transition_lut_llseek
	.addrsig_sym transition_lut_read
	.addrsig_sym transition_lut_write
	.addrsig_sym transition_lut_mmap
	.addrsig_sym transition_lut_open
	.addrsig_sym transition_lut_vm_fault
	.addrsig_sym waveform_version_read
	.addrsig_sym pmic_name_read
	.addrsig_sym pmic_temp_read
	.addrsig_sym pmic_vcom_read
	.addrsig_sym pmic_vcom_write
	.addrsig_sym ebc_version_read
	.addrsig_sym ebc_state_read
	.addrsig_sym ebc_buf_state_read
	.addrsig_sym auto_frame_state_read
	.addrsig_sym ebc_debug_level_read
	.addrsig_sym ebc_debug_level_write
	.addrsig_sym wf_data_write
	.addrsig_sym overlay_wf_data_write
	.addrsig_sym ori_wf_data_write
	.addrsig_sym ebc_suspend
	.addrsig_sym ebc_resume
	.addrsig_sym __gendwarfksyms_rule_478
	.addrsig_sym __UNIQUE_ID___addressable_ebc_init642
	.addrsig_sym __exitcall_ebc_exit
	.addrsig_sym __UNIQUE_ID_author643
	.addrsig_sym __UNIQUE_ID_description644
	.addrsig_sym __UNIQUE_ID_file645
	.addrsig_sym __UNIQUE_ID_license646
	.addrsig_sym ebc_match
	.addrsig_sym ebc_pm
	.addrsig_sym ebc_driver
	.addrsig_sym ebc_flip_wq
	.addrsig_sym ebc_assist_finished_flag_sem
	.addrsig_sym cpu_bit_bitmap
	.addrsig_sym ebc_misc
	.addrsig_sym ebc_ops
	.addrsig_sym waveform_misc
	.addrsig_sym waveform_ops
	.addrsig_sym transition_lut_misc
	.addrsig_sym transition_lut_ops
	.addrsig_sym transition_lut_vm_ops
	.addrsig_sym dev_attr_waveform_version
	.addrsig_sym dev_attr_pmic_name
	.addrsig_sym dev_attr_pmic_temp
	.addrsig_sym dev_attr_pmic_vcom
	.addrsig_sym dev_attr_ebc_version
	.addrsig_sym dev_attr_ebc_state
	.addrsig_sym dev_attr_ebc_buf_state
	.addrsig_sym dev_attr_auto_frame_state
	.addrsig_sym dev_attr_ebc_debug_level
	.addrsig_sym dev_attr_wf_data
	.addrsig_sym dev_attr_overlay_wf_data
	.addrsig_sym dev_attr_ori_wf_data

// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"pvi_waveform.c"
	.globl	pvi_wf_add_custom_mode_table    // -- Begin function pvi_wf_add_custom_mode_table
	.p2align	2
	.type	pvi_wf_add_custom_mode_table,@function
	.word	365149294                       // 0x15c3bc6e
pvi_wf_add_custom_mode_table:           // @pvi_wf_add_custom_mode_table
// %bb.0:
	cmp	w1, #11
	b.ne	.LBB0_4
// %bb.1:
	ldrb	w8, [x0, #2]
	adrp	x9, custom_mode_table
	add	x9, x9, :lo12:custom_mode_table
	strb	w8, [x9]
	ldrb	w8, [x0, #3]
	strb	w8, [x9, #1]
	ldrb	w8, [x0, #4]
	strb	w8, [x9, #2]
	ldrb	w8, [x0, #5]
	strb	w8, [x9, #3]
	ldrb	w8, [x0, #6]
	strb	w8, [x9, #4]
	ldrb	w8, [x0, #7]
	strb	w8, [x9, #5]
	ldrb	w8, [x0, #8]
	strb	w8, [x9, #6]
	ldrb	w8, [x0, #9]
	strb	w8, [x9, #7]
	ldrb	w8, [x0, #10]
	strb	w8, [x9, #8]
	ldrb	w8, [x0]
	strb	w8, [x9, #9]
	ldrb	w8, [x0, #1]
	cmp	w8, #4
	b.eq	.LBB0_5
// %bb.2:
	cmp	w8, #5
	b.ne	.LBB0_7
// %bb.3:
	mov	w8, #32                         // =0x20
	b	.LBB0_6
.LBB0_4:
	mov	w0, #-1                         // =0xffffffff
	ret
.LBB0_5:
	mov	w8, #16                         // =0x10
.LBB0_6:
	mov	w0, wzr
	adrp	x9, custom_mode_table+12
	str	w8, [x9, :lo12:custom_mode_table+12]
	ret
.LBB0_7:
	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	pvi_wf_add_custom_mode_table, .Lfunc_end0-pvi_wf_add_custom_mode_table
                                        // -- End function
	.globl	pvi_wf_get_lut                  // -- Begin function pvi_wf_get_lut
	.p2align	2
	.type	pvi_wf_get_lut,@function
	.word	84236660                        // 0x5055974
pvi_wf_get_lut:                         // @pvi_wf_get_lut
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #160
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	adrp	x24, global_waveform
	ldr	x8, [x24, :lo12:global_waveform]
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stp	x28, x27, [sp, #80]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	cbz	x8, .LBB1_10
// %bb.1:
	mov	w19, w2
	cbnz	x0, .LBB1_3
// %bb.2:
	mov	w9, #16                         // =0x10
	ldr	x9, [x9]
	cbz	x9, .LBB1_11
.LBB1_3:
	adrp	x23, pvi_wf_get_lut.sftemp
	mov	w9, #21846                      // =0x5556
	adrp	x26, pvi_wf_get_lut.stype
	ldrsw	x10, [x23, :lo12:pvi_wf_get_lut.sftemp]
	movk	w9, #21845, lsl #16
	adrp	x27, pvi_wf_get_lut.fix
	smull	x11, w19, w9
	smull	x9, w10, w9
	lsr	x10, x11, #63
	lsr	x11, x11, #32
	lsr	x12, x9, #63
	lsr	x9, x9, #32
	add	w25, w11, w10
	ldr	w10, [x26, :lo12:pvi_wf_get_lut.stype]
	ldr	w11, [x27, :lo12:pvi_wf_get_lut.fix]
	add	w9, w9, w12
	cmp	w25, w9
	ccmp	w10, w1, #0, eq
	ccmp	w11, w5, #0, eq
	b.eq	.LBB1_34
// %bb.4:
	adrp	x10, need_pic
	cmp	w1, #10
	stur	x0, [x29, #-8]                  // 8-byte Folded Spill
	str	w3, [x10, :lo12:need_pic]
	b.eq	.LBB1_33
// %bb.5:
	ldr	x10, [x0, #16]
	ldrb	w9, [x8, #38]
	adrp	x21, waveformdata
	mov	w28, w5
	str	x10, [x21, :lo12:waveformdata]
	cbz	w9, .LBB1_12
// %bb.6:
	mov	x10, xzr
	add	x8, x8, #48
.LBB1_7:                                // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x8, x10]
	cmp	w11, w19
	b.ge	.LBB1_13
// %bb.8:                               //   in Loop: Header=BB1_7 Depth=1
	add	x10, x10, #1
	cmp	x9, x10
	b.ne	.LBB1_7
// %bb.9:
	mov	w22, w4
	mov	w8, #-1                         // =0xffffffff
	mov	w10, w9
	b	.LBB1_14
.LBB1_10:
	mov	w0, #-19                        // =0xffffffed
	b	.LBB1_52
.LBB1_11:
	mov	w0, #-22                        // =0xffffffea
	b	.LBB1_52
.LBB1_12:
	mov	w22, w4
	mov	w10, wzr
	mov	w8, #-1                         // =0xffffffff
	b	.LBB1_14
.LBB1_13:
	mov	w22, w4
	mov	w8, w10
.LBB1_14:
	sub	w11, w10, #1
	cmp	w10, w9
	mov	w0, w1
	csel	w20, w11, w8, eq
	mov	w23, w1
	bl	get_wf_mode_index
	and	w0, w0, #0xff
	mov	w1, w20
	bl	get_wf_frm_num
	tbnz	w0, #31, .LBB1_53
// %bb.15:
	mov	w20, w0
	ldur	x0, [x29, #-8]                  // 8-byte Folded Reload
	mov	w2, w28
	mov	w9, w23
	cbz	w22, .LBB1_32
// %bb.16:
	cmp	w9, #7
	b.eq	.LBB1_18
// %bb.17:
	cmp	w9, #1
	b.ne	.LBB1_27
.LBB1_18:
	ldr	x21, [x21, :lo12:waveformdata]
	mov	w9, #62368                      // =0xf3a0
	mov	w10, #52128                     // =0xcba0
	mov	w11, #41888                     // =0xa3a0
	mov	w12, #31648                     // =0x7ba0
	mov	w13, #21408                     // =0x53a0
	add	x9, x21, x9
	add	x14, x21, #17, lsl #12          // =69632
	mov	x8, xzr
	stur	x9, [x29, #-16]                 // 8-byte Folded Spill
	add	x9, x21, x10
	add	x22, x21, x13
	str	x9, [sp, #24]                   // 8-byte Folded Spill
	add	x9, x21, x11
	mov	x10, x21
	stur	x9, [x29, #-24]                 // 8-byte Folded Spill
	add	x9, x14, #2976
	str	x9, [sp, #32]                   // 8-byte Folded Spill
	add	x9, x21, x12
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	mov	w9, #11168                      // =0x2ba0
	add	x9, x21, x9
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	mov	w9, w20
	b	.LBB1_20
.LBB1_19:                               //   in Loop: Header=BB1_20 Depth=1
	add	x8, x8, #1
	add	x10, x10, #1024
	cmp	x8, #72
	b.eq	.LBB1_22
.LBB1_20:                               // =>This Inner Loop Header: Depth=1
	cmp	x8, x9
	strb	wzr, [x10, #32]
	strb	wzr, [x10, #62]
	strb	wzr, [x10, #96]
	strb	wzr, [x10, #126]
	strb	wzr, [x10, #928]
	strb	wzr, [x10, #958]
	strb	wzr, [x10, #992]
	strb	wzr, [x10, #1022]
	strb	wzr, [x10]
	strb	wzr, [x10, #990]
	b.lo	.LBB1_19
// %bb.21:                              //   in Loop: Header=BB1_20 Depth=1
	strb	wzr, [x10, #30]
	strb	wzr, [x10, #960]
	b	.LBB1_19
.LBB1_22:
	cbz	w20, .LBB1_25
// %bb.23:
	lsl	x8, x9, #10
	mov	x9, xzr
.LBB1_24:                               // =>This Inner Loop Header: Depth=1
	add	x10, x21, w9, sxtw
	add	x9, x9, #1024
	cmp	x8, x9
	ldrb	w11, [x10, #960]
	ldrb	w12, [x10, #30]
	strb	w11, [x10]
	strb	w12, [x10, #990]
	b.ne	.LBB1_24
.LBB1_25:
	mov	x0, x21
	bl	epd_gray2_last_repair
	mov	w8, w0
	ldur	x0, [x29, #-8]                  // 8-byte Folded Reload
	mov	w2, w28
	mov	w9, w23
	cbnz	w8, .LBB1_32
// %bb.26:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	mov	w8, #1                          // =0x1
	mov	w10, #2                         // =0x2
	ldur	x12, [x29, #-24]                // 8-byte Folded Reload
	strb	w8, [x21, #928]
	strb	w8, [x11]
	strb	w10, [x11, #30]
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	strb	w10, [x21, #958]
	strb	w8, [x11]
	strb	w10, [x11, #30]
	ldp	x11, x13, [sp, #24]             // 16-byte Folded Reload
	strb	w8, [x22]
	strb	w10, [x22, #30]
	strb	w8, [x11]
	strb	w10, [x11, #30]
	ldur	x11, [x29, #-16]                // 8-byte Folded Reload
	strb	w8, [x12]
	strb	w10, [x12, #30]
	strb	w8, [x11]
	strb	w10, [x11, #30]
	strb	w8, [x13]
	strb	w10, [x13, #30]
	strb	w10, [x21, #1022]
	strb	w8, [x21, #992]
	strb	w10, [x22, #94]
	strb	w8, [x22, #64]
	strb	w10, [x12, #94]
	strb	w8, [x12, #64]
	strb	w10, [x11, #94]
	strb	w8, [x11, #64]
	b	.LBB1_32
.LBB1_27:
	sub	w8, w9, #13
	cmp	w8, #1
	b.hi	.LBB1_29
// %bb.28:
	ldr	x0, [x21, :lo12:waveformdata]
	mov	w1, w20
	bl	pvi_wf_normal_fix
	b	.LBB1_31
.LBB1_29:
	sub	w8, w9, #5
	cmp	w8, #1
	b.hi	.LBB1_54
// %bb.30:
	ldr	x0, [x0, #16]
	mov	w1, w20
	bl	pvi_wf_regal_fix
.LBB1_31:
	ldur	x0, [x29, #-8]                  // 8-byte Folded Reload
	mov	w9, w23
	mov	w2, w28
.LBB1_32:
	ldrb	w8, [x0, #1]
	adrp	x23, pvi_wf_get_lut.sftemp
	mov	w10, #21846                     // =0x5556
	movk	w10, #21845, lsl #16
	orr	w8, w20, w8, lsl #8
	str	w8, [x0]
	ldrsw	x8, [x23, :lo12:pvi_wf_get_lut.sftemp]
	str	w9, [x26, :lo12:pvi_wf_get_lut.stype]
	str	w2, [x27, :lo12:pvi_wf_get_lut.fix]
	smull	x8, w8, w10
	lsr	x10, x8, #63
	lsr	x8, x8, #32
	add	w9, w8, w10
.LBB1_33:
	cmp	w25, w9
	b.ne	.LBB1_35
.LBB1_34:
	mov	w0, wzr
	b	.LBB1_52
.LBB1_35:
	ldr	x8, [x0, #24]
	adrp	x22, waveformdata
	str	x8, [x22, :lo12:waveformdata]
	bl	epd_overlay_lut
	ldr	x10, [x24, :lo12:global_waveform]
	mov	w21, w0
	ldrb	w8, [x10, #38]
	cbz	w8, .LBB1_40
// %bb.36:
	mov	x9, xzr
	add	x10, x10, #48
.LBB1_37:                               // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x10, x9]
	cmp	w11, w19
	b.ge	.LBB1_41
// %bb.38:                              //   in Loop: Header=BB1_37 Depth=1
	add	x9, x9, #1
	cmp	x8, x9
	b.ne	.LBB1_37
// %bb.39:
	mov	w10, #-1                        // =0xffffffff
	mov	w9, w8
	b	.LBB1_42
.LBB1_40:
	mov	w9, wzr
	mov	w10, #-1                        // =0xffffffff
	b	.LBB1_42
.LBB1_41:
	mov	w10, w9
.LBB1_42:
	sub	w11, w9, #1
	cmp	w9, w8
	mov	w0, w21
	csel	w20, w11, w10, eq
	bl	get_wf_mode_index
	and	w0, w0, #0xff
	mov	w1, w20
	bl	get_wf_frm_num
	tbnz	w0, #31, .LBB1_53
// %bb.43:
	mov	w20, w0
	cmp	w21, #1
	b.ne	.LBB1_51
// %bb.44:
	ldr	x21, [x22, :lo12:waveformdata]
	cbz	w20, .LBB1_49
// %bb.45:
	mov	w8, wzr
	mov	x9, xzr
	mov	w10, w20
	add	x11, x21, #31
	add	x12, x21, #992
.LBB1_46:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_47 Depth 2
	sxtw	x14, w8
	mov	x15, #-16                       // =0xfffffffffffffff0
	add	x13, x11, x14
	add	x14, x12, x14
.LBB1_47:                               //   Parent Loop BB1_46 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldurb	w16, [x13, #-1]
	add	x15, x15, #16
	cmp	x15, #224
	strb	w16, [x13]
	sturb	w16, [x13, #-2]
	add	x13, x13, #64
	ldurb	w16, [x14, #-32]
	sturb	w16, [x14, #-64]
	strb	w16, [x14], #2
	b.lo	.LBB1_47
// %bb.48:                              //   in Loop: Header=BB1_46 Depth=1
	add	x9, x9, #1
	add	w8, w8, #1024
	cmp	x9, x10
	b.ne	.LBB1_46
.LBB1_49:
	mov	x0, x21
	mov	w1, w20
	bl	epd_overlay_gray2_repair
	cbnz	w0, .LBB1_51
// %bb.50:
	lsl	w8, w20, #10
	mov	w9, #-6144                      // =0xffffe800
	mov	w10, #1                         // =0x1
	add	w9, w8, w9
	sub	w11, w8, #1, lsl #12            // =4096
	add	x9, x21, w9, sxtw
	add	x11, x21, w11, sxtw
	strb	w10, [x9, #991]
	strb	w10, [x9, #959]
	strb	w10, [x9, #1023]
	mov	w9, #-5120                      // =0xffffec00
	add	w9, w8, w9
	strb	w10, [x11, #991]
	strb	w10, [x11, #959]
	add	x9, x21, w9, sxtw
	strb	w10, [x11, #1023]
	sub	w11, w8, #3072
	sub	w8, w8, #2048
	add	x11, x21, w11, sxtw
	add	x8, x21, w8, sxtw
	mov	w10, #2                         // =0x2
	strb	w10, [x9, #991]
	strb	w10, [x9, #959]
	strb	w10, [x9, #1023]
	strb	w10, [x11, #991]
	strb	w10, [x11, #959]
	strb	w10, [x11, #1023]
	strb	w10, [x8, #991]
	strb	w10, [x8, #959]
	strb	w10, [x8, #1023]
.LBB1_51:
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldrb	w9, [x8]
	orr	w9, w9, w20, lsl #8
	str	w9, [x8]
	str	w19, [x23, :lo12:pvi_wf_get_lut.sftemp]
.LBB1_52:
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #160
	ldr	x30, [x18, #-8]!
	ret
.LBB1_53:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	_printk
	mov	w0, #-5                         // =0xfffffffb
	b	.LBB1_52
.LBB1_54:
	cmp	w9, #15
	b.ne	.LBB1_32
// %bb.55:
	cbz	w20, .LBB1_32
// %bb.56:
	ldr	x8, [x21, :lo12:waveformdata]
	cmp	w20, #1
	mov	w10, w20
	b.ne	.LBB1_58
// %bb.57:
	mov	x11, xzr
	b	.LBB1_68
.LBB1_58:
	sub	x12, x10, #1
	add	x11, x8, #958
	lsl	x13, x12, #10
	add	x14, x11, x13
	cmp	x14, x11
	mov	x11, xzr
	b.lo	.LBB1_68
// %bb.59:
	add	x14, x8, #990
	add	x15, x14, x13
	cmp	x15, x14
	b.lo	.LBB1_68
// %bb.60:
	add	x14, x8, #1022
	add	x15, x14, x13
	cmp	x15, x14
	b.lo	.LBB1_68
// %bb.61:
	add	x14, x8, #991
	add	x15, x14, x13
	cmp	x15, x14
	b.lo	.LBB1_68
// %bb.62:
	add	x14, x8, #1023
	add	x15, x14, x13
	cmp	x15, x14
	b.lo	.LBB1_68
// %bb.63:
	add	x14, x8, #957
	add	x13, x14, x13
	cmp	x13, x14
	b.lo	.LBB1_68
// %bb.64:
	lsr	x12, x12, #21
	cbnz	x12, .LBB1_68
// %bb.65:
	and	x11, x10, #0x7ffffffe
	mov	w12, #1024                      // =0x400
	mov	x13, x11
.LBB1_66:                               // =>This Inner Loop Header: Depth=1
	sub	w15, w12, #1024
	add	x14, x8, w12, sxtw
	subs	x13, x13, #2
	add	x15, x8, w15, sxtw
	add	w12, w12, #2048
	ldrb	w16, [x14, #957]
	ldrb	w17, [x15, #957]
	strb	w16, [x14, #958]
	strb	w16, [x14, #990]
	strb	w16, [x14, #1022]
	strb	w17, [x15, #958]
	strb	w17, [x15, #990]
	strb	w17, [x15, #1022]
	strb	w17, [x15, #991]
	strb	w16, [x14, #991]
	strb	w17, [x15, #1023]
	strb	w16, [x14, #1023]
	b.ne	.LBB1_66
// %bb.67:
	cmp	x11, x10
	b.eq	.LBB1_32
.LBB1_68:
	lsl	w12, w11, #10
	sub	x10, x10, x11
.LBB1_69:                               // =>This Inner Loop Header: Depth=1
	add	x11, x8, w12, sxtw
	subs	x10, x10, #1
	add	w12, w12, #1024
	ldrb	w13, [x11, #957]
	strb	w13, [x11, #958]
	strb	w13, [x11, #990]
	strb	w13, [x11, #1022]
	strb	w13, [x11, #991]
	strb	w13, [x11, #1023]
	b.ne	.LBB1_69
	b	.LBB1_32
.Lfunc_end1:
	.size	pvi_wf_get_lut, .Lfunc_end1-pvi_wf_get_lut
                                        // -- End function
	.p2align	2                               // -- Begin function get_wf_mode_index
	.type	get_wf_mode_index,@function
get_wf_mode_index:                      // @get_wf_mode_index
// %bb.0:
	cmp	w0, #16
	b.hs	.LBB2_28
// %bb.1:
	sub	w8, w0, #10
	cmp	w8, #6
	b.hs	.LBB2_3
// %bb.2:
	adrp	x9, .Lswitch.table.get_wf_mode_index
	add	x9, x9, :lo12:.Lswitch.table.get_wf_mode_index
	ldr	x8, [x9, w8, uxtw #3]
	b	.LBB2_4
.LBB2_3:
	mov	w8, w0
.LBB2_4:
	adrp	x9, global_waveform
	ldr	x9, [x9, :lo12:global_waveform]
	ldrb	w9, [x9, #16]
	cmp	w9, #31
	b.le	.LBB2_9
// %bb.5:
	cmp	w9, #71
	b.gt	.LBB2_14
// %bb.6:
	cmp	w9, #32
	b.eq	.LBB2_21
// %bb.7:
	cmp	w9, #35
	b.eq	.LBB2_23
// %bb.8:
	cmp	w9, #67
	b.eq	.LBB2_13
	b	.LBB2_27
.LBB2_9:
	cmp	w9, #21
	b.le	.LBB2_18
// %bb.10:
	cmp	w9, #22
	b.eq	.LBB2_25
// %bb.11:
	cmp	w9, #24
	b.eq	.LBB2_21
// %bb.12:
	cmp	w9, #25
	b.ne	.LBB2_27
.LBB2_13:
	adrp	x9, pvi_mode_table+27
	add	x9, x9, :lo12:pvi_mode_table+27
	ldrb	w0, [x9, x8]
	ret
.LBB2_14:
	cmp	w9, #72
	b.eq	.LBB2_26
// %bb.15:
	cmp	w9, #84
	b.eq	.LBB2_24
// %bb.16:
	cmp	w9, #114
	b.ne	.LBB2_27
// %bb.17:
	adrp	x9, pvi_mode_table+63
	add	x9, x9, :lo12:pvi_mode_table+63
	ldrb	w0, [x9, x8]
	ret
.LBB2_18:
	cmp	w9, #9
	b.eq	.LBB2_22
// %bb.19:
	cmp	w9, #18
	b.ne	.LBB2_27
// %bb.20:
	adrp	x9, pvi_mode_table+9
	add	x9, x9, :lo12:pvi_mode_table+9
	ldrb	w0, [x9, x8]
	ret
.LBB2_21:
	adrp	x9, pvi_mode_table+72
	add	x9, x9, :lo12:pvi_mode_table+72
	ldrb	w0, [x9, x8]
	ret
.LBB2_22:
	adrp	x9, pvi_mode_table
	add	x9, x9, :lo12:pvi_mode_table
	ldrb	w0, [x9, x8]
	ret
.LBB2_23:
	adrp	x9, pvi_mode_table+36
	add	x9, x9, :lo12:pvi_mode_table+36
	ldrb	w0, [x9, x8]
	ret
.LBB2_24:
	adrp	x9, pvi_mode_table+54
	add	x9, x9, :lo12:pvi_mode_table+54
	ldrb	w0, [x9, x8]
	ret
.LBB2_25:
	adrp	x9, pvi_mode_table+18
	add	x9, x9, :lo12:pvi_mode_table+18
	ldrb	w0, [x9, x8]
	ret
.LBB2_26:
	adrp	x9, pvi_mode_table+45
	add	x9, x9, :lo12:pvi_mode_table+45
	ldrb	w0, [x9, x8]
	ret
.LBB2_27:
	adrp	x10, custom_mode_table
	add	x10, x10, :lo12:custom_mode_table
	ldrb	w11, [x10, #9]
	cmp	w9, w11
	adrp	x9, pvi_mode_table+72
	add	x9, x9, :lo12:pvi_mode_table+72
	csel	x9, x10, x9, eq
	ldrb	w0, [x9, x8]
	ret
.LBB2_28:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	mov	x29, sp
	bl	_printk
	mov	w0, #255                        // =0xff
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end2:
	.size	get_wf_mode_index, .Lfunc_end2-get_wf_mode_index
                                        // -- End function
	.p2align	2                               // -- Begin function get_wf_frm_num
	.type	get_wf_frm_num,@function
get_wf_frm_num:                         // @get_wf_frm_num
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	adrp	x8, global_waveform
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	ldr	x15, [x8, :lo12:global_waveform]
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	ldrb	w8, [x15, #32]
	add	x8, x15, x8
	add	x8, x8, w0, uxtw #2
	ldrb	w9, [x8]
	ldrb	w10, [x8, #1]
	ldrb	w11, [x8, #2]
	ldrb	w12, [x8, #3]
	add	w9, w10, w9
	add	w9, w9, w11
	cmp	w12, w9, uxtb
	b.ne	.LBB3_26
// %bb.1:
	ldr	w8, [x8]
	lsl	w9, w1, #2
	and	x8, x8, #0xffffff
	add	x8, x15, x8
	add	x14, x8, w9, sxtw
	ldrb	w8, [x14]
	ldrb	w9, [x14, #1]
	ldrb	w10, [x14, #2]
	ldrb	w11, [x14, #3]
	add	w8, w9, w8
	add	w8, w8, w10
	cmp	w11, w8, uxtb
	b.ne	.LBB3_27
// %bb.2:
	adrp	x19, waveformdata
	ldr	x8, [x19, :lo12:waveformdata]
	cbz	x8, .LBB3_29
// %bb.3:
	adrp	x20, maxpic
	adrp	x21, need_pic
	ldr	w14, [x14]
	ldr	w9, [x20, :lo12:maxpic]
	ldr	w10, [x21, :lo12:need_pic]
	mov	w13, wzr
	and	x1, x14, #0xffffff
	mov	w11, wzr
	mov	w0, wzr
	cmp	w9, #16
	mov	w12, wzr
	add	x15, x15, x1
	cset	w16, eq
	cmp	w10, #32
	cset	w17, eq
	ands	w14, w16, w17
	mov	w16, #5                         // =0x5
	mov	w17, #1                         // =0x1
	cinc	w16, w16, ne
	b	.LBB3_6
.LBB3_4:                                //   in Loop: Header=BB3_6 Depth=1
	add	w11, w11, #2
	mov	w17, #1                         // =0x1
.LBB3_5:                                //   in Loop: Header=BB3_6 Depth=1
	cmp	w0, #254
	b.hi	.LBB3_18
.LBB3_6:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB3_16 Depth 2
	ldrb	w3, [x15, w11, uxtw]
	cmp	w3, #252
	b.eq	.LBB3_11
// %bb.7:                               //   in Loop: Header=BB3_6 Depth=1
	cmp	w3, #255
	b.eq	.LBB3_19
// %bb.8:                               //   in Loop: Header=BB3_6 Depth=1
	tbnz	w17, #0, .LBB3_12
.LBB3_9:                                //   in Loop: Header=BB3_6 Depth=1
	lsl	w17, w12, w14
	lsl	w1, w13, w16
	add	w2, w13, #1
	lsl	w2, w2, w16
	and	w4, w3, #0x3
	add	w11, w11, #1
	add	w17, w17, w0, lsl #10
	add	w1, w17, w1
	add	w2, w17, w2
	strb	w4, [x8, w1, uxtw]
	add	w1, w13, #2
	ubfx	w4, w3, #2, #2
	lsl	w1, w1, w16
	strb	w4, [x8, w2, uxtw]
	add	w2, w13, #3
	lsl	w2, w2, w16
	ubfx	w4, w3, #4, #2
	add	w13, w13, #4
	add	w1, w17, w1
	cmp	w13, w9
	strb	w4, [x8, w1, uxtw]
	lsr	w1, w3, #6
	add	w17, w17, w2
	strb	w1, [x8, w17, uxtw]
	mov	w17, wzr
	b.lo	.LBB3_5
// %bb.10:                              //   in Loop: Header=BB3_6 Depth=1
	add	w1, w12, #1
	mov	w13, wzr
	cmp	w1, w9
	csinc	w12, wzr, w12, hs
	cinc	w0, w0, hs
	b	.LBB3_5
.LBB3_11:                               //   in Loop: Header=BB3_6 Depth=1
	add	w11, w11, #1
	ldrb	w3, [x15, w11, uxtw]
	tbnz	w17, #0, .LBB3_9
.LBB3_12:                               //   in Loop: Header=BB3_6 Depth=1
	lsl	w17, w12, w14
	add	w1, w13, #1
	lsl	w2, w13, w16
	lsl	w5, w1, w16
	ubfx	w1, w3, #2, #2
	add	w6, w13, #2
	add	w4, w17, w0, lsl #10
	add	w7, w13, #3
	and	w17, w3, #0x3
	lsl	w6, w6, w16
	add	w13, w13, #4
	add	w2, w4, w2
	add	w5, w4, w5
	cmp	w13, w9
	strb	w17, [x8, w2, uxtw]
	ubfx	w2, w3, #4, #2
	lsr	w3, w3, #6
	strb	w1, [x8, w5, uxtw]
	lsl	w5, w7, w16
	add	w6, w4, w6
	strb	w2, [x8, w6, uxtw]
	add	w4, w4, w5
	strb	w3, [x8, w4, uxtw]
	b.lo	.LBB3_14
// %bb.13:                              //   in Loop: Header=BB3_6 Depth=1
	add	w4, w12, #1
	mov	w13, wzr
	cmp	w4, w9
	csinc	w12, wzr, w12, hs
	cinc	w0, w0, hs
.LBB3_14:                               //   in Loop: Header=BB3_6 Depth=1
	add	w4, w11, #1
	ldrb	w4, [x15, w4, uxtw]
	cbnz	w4, .LBB3_16
	b	.LBB3_4
.LBB3_15:                               //   in Loop: Header=BB3_16 Depth=2
	sub	w4, w4, #1
	tst	w4, #0xff
	b.eq	.LBB3_4
.LBB3_16:                               //   Parent Loop BB3_6 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	lsl	w5, w12, w14
	lsl	w7, w13, w16
	add	w6, w13, #1
	add	w22, w13, #2
	lsl	w6, w6, w16
	add	w23, w13, #3
	add	w5, w5, w0, lsl #10
	lsl	w22, w22, w16
	add	w13, w13, #4
	cmp	w13, w9
	add	w7, w5, w7
	add	w6, w5, w6
	strb	w17, [x8, w7, uxtw]
	lsl	w7, w23, w16
	strb	w1, [x8, w6, uxtw]
	add	w6, w5, w22
	add	w5, w5, w7
	strb	w2, [x8, w6, uxtw]
	strb	w3, [x8, w5, uxtw]
	b.lo	.LBB3_15
// %bb.17:                              //   in Loop: Header=BB3_16 Depth=2
	add	w5, w12, #1
	mov	w13, wzr
	cmp	w5, w9
	csinc	w12, wzr, w12, hs
	cinc	w0, w0, hs
	b	.LBB3_15
.LBB3_18:
	adrp	x8, .L.str.7
	add	x8, x8, :lo12:.L.str.7
	mov	w22, w0
	mov	x0, x8
	bl	_printk
	ldr	w9, [x20, :lo12:maxpic]
	ldr	w10, [x21, :lo12:need_pic]
	mov	w0, w22
.LBB3_19:
	cmp	w9, #32
	b.ne	.LBB3_31
// %bb.20:
	cmp	w10, #16
	b.ne	.LBB3_31
// %bb.21:
	cbz	w0, .LBB3_31
// %bb.22:
	ldr	x11, [x19, :lo12:waveformdata]
	mov	w8, wzr
	mov	w9, wzr
	add	x10, x11, #7
	add	x11, x11, #16
.LBB3_23:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB3_24 Depth 2
	mov	w13, w8
	mov	x14, #-2                        // =0xfffffffffffffffe
	add	x12, x10, x13
	add	x13, x11, x13
.LBB3_24:                               //   Parent Loop BB3_23 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldurb	w15, [x13, #-16]
	add	x14, x14, #2
	cmp	x14, #30
	sturb	w15, [x12, #-7]
	ldurb	w15, [x13, #-14]
	sturb	w15, [x12, #-6]
	ldurb	w15, [x13, #-12]
	sturb	w15, [x12, #-5]
	ldurb	w15, [x13, #-10]
	sturb	w15, [x12, #-4]
	ldurb	w15, [x13, #-8]
	sturb	w15, [x12, #-3]
	ldurb	w15, [x13, #-6]
	sturb	w15, [x12, #-2]
	ldurb	w15, [x13, #-4]
	sturb	w15, [x12, #-1]
	ldurb	w15, [x13, #-2]
	strb	w15, [x12]
	ldrb	w15, [x13]
	strb	w15, [x12, #1]
	ldrb	w15, [x13, #2]
	strb	w15, [x12, #2]
	ldrb	w15, [x13, #4]
	strb	w15, [x12, #3]
	ldrb	w15, [x13, #6]
	strb	w15, [x12, #4]
	ldrb	w15, [x13, #8]
	strb	w15, [x12, #5]
	ldrb	w15, [x13, #10]
	strb	w15, [x12, #6]
	ldrb	w15, [x13, #12]
	strb	w15, [x12, #7]
	ldrb	w15, [x13, #14]
	add	x13, x13, #64
	strb	w15, [x12, #8]
	add	x12, x12, #32
	b.lo	.LBB3_24
// %bb.25:                              //   in Loop: Header=BB3_23 Depth=1
	add	w9, w9, #1
	add	w8, w8, #1024
	cmp	w0, w9, uxtb
	b.hi	.LBB3_23
	b	.LBB3_31
.LBB3_26:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L__func__.get_wf_frm_num
	add	x1, x1, :lo12:.L__func__.get_wf_frm_num
	mov	w2, #273                        // =0x111
	b	.LBB3_28
.LBB3_27:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L__func__.get_wf_frm_num
	add	x1, x1, :lo12:.L__func__.get_wf_frm_num
	mov	w2, #280                        // =0x118
.LBB3_28:
	bl	_printk
	b	.LBB3_30
.LBB3_29:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	_printk
.LBB3_30:
	mov	w0, #-22                        // =0xffffffea
.LBB3_31:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end3:
	.size	get_wf_frm_num, .Lfunc_end3-get_wf_frm_num
                                        // -- End function
	.p2align	2                               // -- Begin function pvi_wf_normal_fix
	.type	pvi_wf_normal_fix,@function
pvi_wf_normal_fix:                      // @pvi_wf_normal_fix
// %bb.0:
                                        // kill: def $w1 killed $w1 def $x1
	cmp	w1, #1
	b.lt	.LBB4_5
// %bb.1:
	ubfiz	x8, x1, #10, #32
	mov	x9, xzr
	b	.LBB4_3
.LBB4_2:                                //   in Loop: Header=BB4_3 Depth=1
	ldrb	w11, [x10, #30]
	add	x9, x9, #1024
	strb	wzr, [x10, #958]
	cmp	x8, x9
	strb	wzr, [x10, #1022]
	strb	w11, [x10, #31]
	strb	w11, [x10, #29]
	strb	w11, [x10, #61]
	b.eq	.LBB4_5
.LBB4_3:                                // =>This Inner Loop Header: Depth=1
	add	x10, x0, w9, sxtw
	cbz	w2, .LBB4_2
// %bb.4:                               //   in Loop: Header=BB4_3 Depth=1
	ldrb	w11, [x10, #990]
	strb	wzr, [x10, #990]
	strb	w11, [x10, #989]
	strb	w11, [x10, #1021]
	strb	w11, [x10, #957]
	b	.LBB4_2
.LBB4_5:
	lsl	w8, w1, #10
	mov	w10, #1                         // =0x1
	sub	w9, w8, #1, lsl #12             // =4096
	sub	w11, w8, #3072
	sub	w8, w8, #2048
	add	x9, x0, w9, sxtw
	add	x11, x0, w11, sxtw
	add	x8, x0, w8, sxtw
	mov	w0, w1
	strb	w10, [x9, #991]
	strb	w10, [x9, #959]
	strb	w10, [x9, #1023]
	mov	w9, #2                          // =0x2
	strb	w9, [x11, #991]
	strb	w9, [x11, #959]
	strb	w9, [x11, #1023]
	strb	w9, [x8, #991]
	strb	w9, [x8, #959]
	strb	w9, [x8, #1023]
	ret
.Lfunc_end4:
	.size	pvi_wf_normal_fix, .Lfunc_end4-pvi_wf_normal_fix
                                        // -- End function
	.p2align	2                               // -- Begin function pvi_wf_regal_fix
	.type	pvi_wf_regal_fix,@function
pvi_wf_regal_fix:                       // @pvi_wf_regal_fix
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	mov	w19, w1
	mov	x20, x0
	bl	epd_regal_repair
	cbnz	w0, .LBB5_4
// %bb.1:
	cmp	w19, #1
	b.lt	.LBB5_4
// %bb.2:
	ubfiz	x8, x19, #10, #32
	mov	x9, xzr
.LBB5_3:                                // =>This Inner Loop Header: Depth=1
	add	x10, x20, w9, sxtw
	add	x9, x9, #1024
	cmp	x8, x9
	ldrb	w11, [x10, #94]
	ldrb	w12, [x10, #158]
	strb	w11, [x10, #95]
	strb	w11, [x10, #93]
	ldrb	w11, [x10, #222]
	strb	w12, [x10, #159]
	strb	w12, [x10, #157]
	ldrb	w12, [x10, #286]
	strb	w11, [x10, #223]
	strb	w11, [x10, #221]
	ldrb	w11, [x10, #350]
	strb	w12, [x10, #287]
	strb	w12, [x10, #285]
	ldrb	w12, [x10, #414]
	strb	w11, [x10, #351]
	strb	w11, [x10, #349]
	ldrb	w11, [x10, #478]
	strb	w12, [x10, #415]
	strb	w12, [x10, #413]
	ldrb	w12, [x10, #542]
	strb	w11, [x10, #479]
	strb	w11, [x10, #477]
	ldrb	w11, [x10, #606]
	strb	w12, [x10, #543]
	strb	w12, [x10, #541]
	ldrb	w12, [x10, #670]
	strb	w11, [x10, #607]
	strb	w11, [x10, #605]
	ldrb	w11, [x10, #734]
	strb	w12, [x10, #671]
	strb	w12, [x10, #669]
	ldrb	w12, [x10, #798]
	strb	w11, [x10, #735]
	strb	w11, [x10, #733]
	ldrb	w11, [x10, #862]
	strb	w12, [x10, #799]
	strb	w12, [x10, #797]
	ldrb	w12, [x10, #926]
	strb	w11, [x10, #863]
	strb	w11, [x10, #861]
	strb	w12, [x10, #927]
	strb	w12, [x10, #925]
	b.ne	.LBB5_3
.LBB5_4:
	mov	w0, w19
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end5:
	.size	pvi_wf_regal_fix, .Lfunc_end5-pvi_wf_regal_fix
                                        // -- End function
	.globl	pvi_wf_get_original_lut         // -- Begin function pvi_wf_get_original_lut
	.p2align	2
	.type	pvi_wf_get_original_lut,@function
	.word	1296462099                      // 0x4d467113
pvi_wf_get_original_lut:                // @pvi_wf_get_original_lut
// %bb.0:
	adrp	x8, global_waveform
	ldr	x10, [x8, :lo12:global_waveform]
	cbz	x10, .LBB6_8
// %bb.1:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x19, x0
	mov	x29, sp
	cbnz	x0, .LBB6_3
// %bb.2:
	mov	w8, #16                         // =0x10
	ldr	x8, [x8]
	cbz	x8, .LBB6_14
.LBB6_3:
	adrp	x9, need_pic
	ldr	x11, [x19, #16]
	ldrb	w8, [x10, #38]
	str	w3, [x9, :lo12:need_pic]
	adrp	x9, waveformdata
	str	x11, [x9, :lo12:waveformdata]
	cbz	w8, .LBB6_9
// %bb.4:
	mov	x9, xzr
	add	x10, x10, #48
.LBB6_5:                                // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x10, x9]
	cmp	w11, w2
	b.ge	.LBB6_10
// %bb.6:                               //   in Loop: Header=BB6_5 Depth=1
	add	x9, x9, #1
	cmp	x8, x9
	b.ne	.LBB6_5
// %bb.7:
	mov	w10, #-1                        // =0xffffffff
	mov	w9, w8
	b	.LBB6_11
.LBB6_8:
	mov	w0, #-19                        // =0xffffffed
	ret
.LBB6_9:
	mov	w9, wzr
	mov	w10, #-1                        // =0xffffffff
	b	.LBB6_11
.LBB6_10:
	mov	w10, w9
.LBB6_11:
	sub	w11, w9, #1
	cmp	w9, w8
	mov	w0, w1
	csel	w20, w11, w10, eq
	bl	get_wf_mode_index
	and	w0, w0, #0xff
	mov	w1, w20
	bl	get_wf_frm_num
	tbnz	w0, #31, .LBB6_15
// %bb.12:
	ldrb	w9, [x19, #1]
	mov	w8, w0
	mov	w0, wzr
	orr	w8, w8, w9, lsl #8
	str	w8, [x19]
.LBB6_13:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB6_14:
	mov	w0, #-22                        // =0xffffffea
	b	.LBB6_13
.LBB6_15:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	_printk
	mov	w0, #-5                         // =0xfffffffb
	b	.LBB6_13
.Lfunc_end6:
	.size	pvi_wf_get_original_lut, .Lfunc_end6-pvi_wf_get_original_lut
                                        // -- End function
	.globl	pvi_wf_input                    // -- Begin function pvi_wf_input
	.p2align	2
	.type	pvi_wf_input,@function
	.word	2314953021                      // 0x89fb613d
pvi_wf_input:                           // @pvi_wf_input
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	adrp	x19, global_waveform
	mov	x29, sp
	ldr	x8, [x19, :lo12:global_waveform]
	cbz	x8, .LBB7_3
// %bb.1:
	mov	w0, #-16                        // =0xfffffff0
.LBB7_2:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB7_3:
	ldrb	w1, [x0, #16]
	mov	w9, #32                         // =0x20
	adrp	x8, maxpic
	sub	w10, w1, #9
	cmp	w10, #63
	b.hi	.LBB7_7
// %bb.4:
	mov	w11, #1                         // =0x1
	mov	x12, #40960                     // =0xa000
	lsl	x11, x11, x10
	movk	x12, #129, lsl #16
	movk	x12, #33792, lsl #48
	tst	x11, x12
	b.eq	.LBB7_6
.LBB7_5:
	str	w9, [x8, :lo12:maxpic]
	b	.LBB7_11
.LBB7_6:
	mov	w11, #1                         // =0x1
	lsl	x10, x11, x10
	mov	w11, #513                       // =0x201
	movk	w11, #1024, lsl #16
	tst	x10, x11
	b.ne	.LBB7_11
.LBB7_7:
	cmp	w1, #84
	b.eq	.LBB7_11
// %bb.8:
	cmp	w1, #114
	b.eq	.LBB7_5
// %bb.9:
	adrp	x9, custom_mode_table+9
	ldrb	w9, [x9, :lo12:custom_mode_table+9]
	cmp	w1, w9
	b.ne	.LBB7_12
// %bb.10:
	adrp	x9, custom_mode_table+12
	ldr	w9, [x9, :lo12:custom_mode_table+12]
	b	.LBB7_5
.LBB7_11:
	ldr	w2, [x8, :lo12:maxpic]
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	mov	x20, x0
	mov	x0, x8
	bl	_printk
	mov	w0, wzr
	str	x20, [x19, :lo12:global_waveform]
	b	.LBB7_2
.LBB7_12:
	ldrb	w2, [x0, #22]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	_printk
	mov	w0, #-8                         // =0xfffffff8
	b	.LBB7_2
.Lfunc_end7:
	.size	pvi_wf_input, .Lfunc_end7-pvi_wf_input
                                        // -- End function
	.globl	pvi_wf_get_version              // -- Begin function pvi_wf_get_version
	.p2align	2
	.type	pvi_wf_get_version,@function
	.word	2603798321                      // 0x9b32cf31
pvi_wf_get_version:                     // @pvi_wf_get_version
// %bb.0:
	adrp	x8, global_waveform
	ldr	x8, [x8, :lo12:global_waveform]
	cbz	x8, .LBB8_2
// %bb.1:
	ldrb	w9, [x8, #65]
	adrp	x0, pvi_wf_get_version.spi_id_buffer
	add	x0, x0, :lo12:pvi_wf_get_version.spi_id_buffer
	strb	w9, [x0]
	ldrb	w9, [x8, #66]
	strb	w9, [x0, #1]
	ldrb	w9, [x8, #67]
	strb	w9, [x0, #2]
	ldrb	w9, [x8, #68]
	strb	w9, [x0, #3]
	ldrb	w9, [x8, #69]
	strb	w9, [x0, #4]
	ldrb	w9, [x8, #70]
	strb	w9, [x0, #5]
	ldrb	w9, [x8, #71]
	strb	w9, [x0, #6]
	ldrb	w9, [x8, #72]
	strb	w9, [x0, #7]
	ldrb	w9, [x8, #73]
	strb	w9, [x0, #8]
	ldrb	w9, [x8, #74]
	strb	w9, [x0, #9]
	ldrb	w9, [x8, #75]
	strb	w9, [x0, #10]
	ldrb	w9, [x8, #76]
	strb	w9, [x0, #11]
	ldrb	w9, [x8, #77]
	strb	w9, [x0, #12]
	ldrb	w9, [x8, #78]
	strb	w9, [x0, #13]
	ldrb	w9, [x8, #79]
	strb	w9, [x0, #14]
	ldrb	w9, [x8, #80]
	strb	w9, [x0, #15]
	ldrb	w9, [x8, #81]
	strb	w9, [x0, #16]
	ldrb	w9, [x8, #82]
	strb	w9, [x0, #17]
	ldrb	w9, [x8, #83]
	strb	w9, [x0, #18]
	ldrb	w9, [x8, #84]
	strb	w9, [x0, #19]
	ldrb	w9, [x8, #85]
	strb	w9, [x0, #20]
	ldrb	w9, [x8, #86]
	strb	w9, [x0, #21]
	ldrb	w9, [x8, #87]
	strb	w9, [x0, #22]
	ldrb	w9, [x8, #88]
	strb	w9, [x0, #23]
	ldrb	w9, [x8, #89]
	strb	w9, [x0, #24]
	ldrb	w9, [x8, #90]
	strb	w9, [x0, #25]
	ldrb	w9, [x8, #91]
	strb	w9, [x0, #26]
	ldrb	w9, [x8, #92]
	strb	w9, [x0, #27]
	ldrb	w9, [x8, #93]
	strb	w9, [x0, #28]
	ldrb	w9, [x8, #94]
	strb	w9, [x0, #29]
	ldrb	w8, [x8, #95]
	strb	wzr, [x0, #31]
	strb	w8, [x0, #30]
	ret
.LBB8_2:
	mov	x0, xzr
	ret
.Lfunc_end8:
	.size	pvi_wf_get_version, .Lfunc_end8-pvi_wf_get_version
                                        // -- End function
	.globl	pvi_wf_get_wf_bit               // -- Begin function pvi_wf_get_wf_bit
	.p2align	2
	.type	pvi_wf_get_wf_bit,@function
	.word	917620134                       // 0x36b1c5a6
pvi_wf_get_wf_bit:                      // @pvi_wf_get_wf_bit
// %bb.0:
	adrp	x8, global_waveform
	adrp	x9, maxpic
	ldr	x8, [x8, :lo12:global_waveform]
	ldr	w9, [x9, :lo12:maxpic]
	cmp	x8, #0
	csel	w0, wzr, w9, eq
	ret
.Lfunc_end9:
	.size	pvi_wf_get_wf_bit, .Lfunc_end9-pvi_wf_get_wf_bit
                                        // -- End function
	.type	__gendwarfksyms_rule_188,@object // @__gendwarfksyms_rule_188
	.section	.discard.gendwarfksyms.kabi_rules,"a",@progbits
__gendwarfksyms_rule_188:
	.asciz	"1\000type_string\000s#sched_dl_entity\000structure_type sched_dl_entity { member s#rb_node rb_node data_member_location(0) , member t#u64 dl_runtime data_member_location(24) , member t#u64 dl_deadline data_member_location(32) , member t#u64 dl_period data_member_location(40) , member t#u64 dl_bw data_member_location(48) , member t#u64 dl_density data_member_location(56) , member t#s64 runtime data_member_location(64) , member t#u64 deadline data_member_location(72) , member base_type unsigned int byte_size(4) encoding(7) flags data_member_location(80) , member base_type unsigned int byte_size(4) encoding(7) dl_throttled bit_size(1) data_bit_offset(672) , member base_type unsigned int byte_size(4) encoding(7) dl_yielded bit_size(1) data_bit_offset(673) , member base_type unsigned int byte_size(4) encoding(7) dl_non_contending bit_size(1) data_bit_offset(674) , member base_type unsigned int byte_size(4) encoding(7) dl_overrun bit_size(1) data_bit_offset(675) , member base_type unsigned int byte_size(4) encoding(7) dl_server bit_size(1) data_bit_offset(676) , member base_type unsigned int byte_size(4) encoding(7) dl_server_active bit_size(1) data_bit_offset(677) , member base_type unsigned int byte_size(4) encoding(7) dl_defer bit_size(1) data_bit_offset(678) , member base_type unsigned int byte_size(4) encoding(7) dl_defer_armed bit_size(1) data_bit_offset(679) , member base_type unsigned int byte_size(4) encoding(7) dl_defer_running bit_size(1) data_bit_offset(680) , member s#hrtimer dl_timer data_member_location(88) , member s#hrtimer inactive_timer data_member_location(152) , member pointer_type { s#rq } rq data_member_location(216) , member t#dl_server_has_tasks_f server_has_tasks data_member_location(224) , member t#dl_server_pick_f server_pick_task data_member_location(232) , member pointer_type { s#sched_dl_entity } pi_se data_member_location(240) } byte_size(248)"
	.size	__gendwarfksyms_rule_188, 1893

	.type	pvi_mode_table,@object          // @pvi_mode_table
	.section	.rodata,"a",@progbits
	.globl	pvi_mode_table
pvi_mode_table:
	.ascii	"\000\001\001\002\003\003\003\004\003"
	.ascii	"\000\001\007\003\003\005\006\004\005"
	.ascii	"\000\001\001\002\003\004\004\006\005"
	.ascii	"\000\001\007\002\003\004\005\006\004"
	.ascii	"\000\001\005\002\003\003\003\004\003"
	.ascii	"\000\001\001\002\003\004\004\006\004"
	.ascii	"\000\001\001\002\003\004\004\005\004"
	.ascii	"\000\001\001\002\003\004\013\006\n"
	.ascii	"\000\001\001\002\003\004\005\006\004"
	.size	pvi_mode_table, 81

	.type	custom_mode_table,@object       // @custom_mode_table
	.bss
	.globl	custom_mode_table
	.p2align	2, 0x0
custom_mode_table:
	.zero	16
	.size	custom_mode_table, 16

	.type	pvi_wf_get_lut.stype,@object    // @pvi_wf_get_lut.stype
	.data
	.p2align	2, 0x0
pvi_wf_get_lut.stype:
	.word	16                              // 0x10
	.size	pvi_wf_get_lut.stype, 4

	.type	pvi_wf_get_lut.sftemp,@object   // @pvi_wf_get_lut.sftemp
	.p2align	2, 0x0
pvi_wf_get_lut.sftemp:
	.word	4294967295                      // 0xffffffff
	.size	pvi_wf_get_lut.sftemp, 4

	.type	pvi_wf_get_lut.fix,@object      // @pvi_wf_get_lut.fix
	.local	pvi_wf_get_lut.fix
	.comm	pvi_wf_get_lut.fix,4,4
	.type	global_waveform,@object         // @global_waveform
	.local	global_waveform
	.comm	global_waveform,8,8
	.type	need_pic,@object                // @need_pic
	.p2align	2, 0x0
need_pic:
	.word	16                              // 0x10
	.size	need_pic, 4

	.type	waveformdata,@object            // @waveformdata
	.local	waveformdata
	.comm	waveformdata,8,8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pvi waveform get frame number failed\n"
	.size	.L.str, 38

	.type	maxpic,@object                  // @maxpic
	.data
	.p2align	2, 0x0
maxpic:
	.word	16                              // 0x10
	.size	maxpic, 4

	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"pvi : Unknow waveform version 0x%x, 0x%x, may be wrong waveform file\n"
	.size	.L.str.2, 70

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"pvi : input waveform version 0x%x, gray level: %d\n"
	.size	.L.str.3, 51

	.type	pvi_wf_get_version.spi_id_buffer,@object // @pvi_wf_get_version.spi_id_buffer
	.local	pvi_wf_get_version.spi_id_buffer
	.comm	pvi_wf_get_version.spi_id_buffer,32,4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"pvi: unspport PVI waveform type"
	.size	.L.str.4, 32

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"pvi: %s %d check error\n"
	.size	.L.str.5, 24

	.type	.L__func__.get_wf_frm_num,@object // @__func__.get_wf_frm_num
.L__func__.get_wf_frm_num:
	.asciz	"get_wf_frm_num"
	.size	.L__func__.get_wf_frm_num, 15

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"waveformdata is NULL\n"
	.size	.L.str.6, 22

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"pvi: decodec waveform error, framenum err\n"
	.size	.L.str.7, 43

	.type	.Lswitch.table.get_wf_mode_index,@object // @switch.table.get_wf_mode_index
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lswitch.table.get_wf_mode_index:
	.xword	3                               // 0x3
	.xword	5                               // 0x5
	.xword	6                               // 0x6
	.xword	4                               // 0x4
	.xword	3                               // 0x3
	.xword	5                               // 0x5
	.size	.Lswitch.table.get_wf_mode_index, 48

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gendwarfksyms_rule_188
	.addrsig_sym pvi_wf_get_version.spi_id_buffer

// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"pvi_waveform.c"
	.globl	pvi_wf_add_custom_mode_table
	.p2align	2
	.type	pvi_wf_add_custom_mode_table,@function
pvi_wf_add_custom_mode_table:
	cmp	w1, #11
	b.ne	.LBB0_4
	adrp	x9, custom_mode_table
	ldrb	w8, [x0, #2]
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
	cmp	w8, #5
	b.ne	.LBB0_7
	mov	w8, #32
	b	.LBB0_6
.LBB0_4:
	mov	w0, #-1
	ret
.LBB0_5:
	mov	w8, #16
.LBB0_6:
	adrp	x9, custom_mode_table+12
	mov	w0, wzr
	str	w8, [x9, :lo12:custom_mode_table+12]
	ret
.LBB0_7:
	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	pvi_wf_add_custom_mode_table, .Lfunc_end0-pvi_wf_add_custom_mode_table

	.globl	pvi_wf_get_lut
	.p2align	2
	.type	pvi_wf_get_lut,@function
pvi_wf_get_lut:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	stp	x26, x25, [sp, #32]
	adrp	x25, global_waveform
	stp	x28, x27, [sp, #16]
	mov	x29, sp
	stp	x24, x23, [sp, #48]
	ldr	x8, [x25, :lo12:global_waveform]
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	cbz	x8, .LBB1_12
	mov	w21, w4
	mov	w19, w2
	mov	w22, w1
	mov	x20, x0
	cbnz	x0, .LBB1_3
	mov	w9, #16
	ldr	x9, [x9]
	cbz	x9, .LBB1_13
.LBB1_3:
	adrp	x24, pvi_wf_get_lut.sftemp
	mov	w9, #21846
	movk	w9, #21845, lsl #16
	adrp	x27, pvi_wf_get_lut.stype
	ldrsw	x10, [x24, :lo12:pvi_wf_get_lut.sftemp]
	smull	x11, w19, w9
	mul	x9, x10, x9
	lsr	x10, x11, #63
	lsr	x11, x11, #32
	lsr	x12, x9, #63
	lsr	x9, x9, #32
	add	w26, w11, w10
	add	w9, w9, w12
	adrp	x11, pvi_wf_get_lut.fix
	cmp	w26, w9
	b.ne	.LBB1_6
	ldr	w10, [x27, :lo12:pvi_wf_get_lut.stype]
	cmp	w10, w22
	b.ne	.LBB1_6
	ldr	w10, [x11, :lo12:pvi_wf_get_lut.fix]
	cmp	w10, w21
	b.eq	.LBB1_30
.LBB1_6:
	adrp	x10, need_pic
	cmp	w22, #10
	str	w3, [x10, :lo12:need_pic]
	b.eq	.LBB1_29
	ldr	x10, [x20, #16]
	adrp	x28, waveformdata
	ldrb	w9, [x8, #38]
	str	x10, [x28, :lo12:waveformdata]
	cbz	w9, .LBB1_14
	mov	x10, xzr
	add	x8, x8, #48
.LBB1_9:
	ldrb	w11, [x8, x10]
	cmp	w11, w19
	b.ge	.LBB1_15
	add	x10, x10, #1
	cmp	x9, x10
	b.ne	.LBB1_9
	mov	w8, #-1
	mov	w10, w9
	b	.LBB1_16
.LBB1_12:
	mov	w0, #-19
	b	.LBB1_44
.LBB1_13:
	mov	w0, #-22
	b	.LBB1_44
.LBB1_14:
	mov	w10, wzr
	mov	w8, #-1
	b	.LBB1_16
.LBB1_15:
	mov	w8, w10
.LBB1_16:
	mov	w0, w22
	sub	w11, w10, #1
	cmp	w10, w9
	csel	w23, w11, w8, eq
	bl	get_wf_mode_index
	and	w0, w0, #0xff
	mov	w1, w23
	bl	get_wf_frm_num
	tbnz	w0, #31, .LBB1_49
	mov	w23, w0
	cmp	w22, #1
	b.eq	.LBB1_22
	cmp	w22, #7
	b.ne	.LBB1_37
	ldr	x8, [x28, :lo12:waveformdata]
	cbz	w23, .LBB1_27
	mov	w10, w23
	mov	x9, xzr
	lsl	x10, x10, #10
.LBB1_21:
	add	x11, x8, w9, sxtw
	add	x9, x9, #1024
	cmp	x10, x9
	ldrb	w12, [x11, #960]
	ldrb	w13, [x11, #30]
	strb	w12, [x11]
	strb	w13, [x11, #990]
	strb	w12, [x11, #96]
	strb	w13, [x11, #126]
	b.ne	.LBB1_21
	b	.LBB1_27
.LBB1_22:
	ldr	x8, [x28, :lo12:waveformdata]
	cbz	w23, .LBB1_27
	mov	w9, w23
	mov	x10, xzr
	lsl	x11, x9, #10
.LBB1_24:
	add	x12, x8, w10, sxtw
	add	x10, x10, #1024
	cmp	x11, x10
	ldrb	w13, [x12, #960]
	ldrb	w14, [x12, #30]
	strb	w13, [x12]
	strb	w14, [x12, #990]
	b.ne	.LBB1_24
	mov	w10, wzr
	mov	x11, xzr
.LBB1_26:
	add	x12, x8, w10, sxtw
	add	x11, x11, #2
	add	w10, w10, #2048
	cmp	x11, x9
	ldrb	w13, [x12, #960]
	ldrb	w14, [x12, #30]
	strb	w13, [x12, #96]
	strb	w14, [x12, #126]
	b.lo	.LBB1_26
.LBB1_27:
	lsl	w9, w23, #10
	sub	w9, w9, #2048
	add	x8, x8, w9, sxtw
	mov	w9, #2
	strb	w9, [x8, #830]
.LBB1_28:
	ldrb	w8, [x20, #1]
	mov	w9, #21846
	movk	w9, #21845, lsl #16
	orr	w8, w23, w8, lsl #8
	str	w8, [x20]
	ldrsw	x8, [x24, :lo12:pvi_wf_get_lut.sftemp]
	str	w22, [x27, :lo12:pvi_wf_get_lut.stype]
	mul	x8, x8, x9
	lsr	x9, x8, #63
	lsr	x8, x8, #32
	add	w9, w8, w9
	adrp	x8, pvi_wf_get_lut.fix
	str	w21, [x8, :lo12:pvi_wf_get_lut.fix]
.LBB1_29:
	cmp	w26, w9
	b.ne	.LBB1_31
.LBB1_30:
	mov	w0, wzr
	b	.LBB1_44
.LBB1_31:
	ldr	x8, [x20, #24]
	adrp	x9, waveformdata
	str	x8, [x9, :lo12:waveformdata]
	bl	epd_overlay_lut
	ldr	x10, [x25, :lo12:global_waveform]
	ldrb	w8, [x10, #38]
	cbz	w8, .LBB1_36
	mov	x9, xzr
	add	x10, x10, #48
.LBB1_33:
	ldrb	w11, [x10, x9]
	cmp	w11, w19
	b.ge	.LBB1_41
	add	x9, x9, #1
	cmp	x8, x9
	b.ne	.LBB1_33
	mov	w10, #-1
	mov	w9, w8
	b	.LBB1_42
.LBB1_36:
	mov	w9, wzr
	mov	w10, #-1
	b	.LBB1_42
.LBB1_37:
	sub	w8, w22, #5
	cmp	w8, #1
	b.hi	.LBB1_45
	cbz	w23, .LBB1_28
	ldr	x8, [x28, :lo12:waveformdata]
	mov	w9, w23
	cmp	w23, #1
	b.ne	.LBB1_52
	mov	x10, xzr
	b	.LBB1_64
.LBB1_41:
	mov	w10, w9
.LBB1_42:
	sub	w11, w9, #1
	cmp	w9, w8
	csel	w21, w11, w10, eq
	bl	get_wf_mode_index
	and	w0, w0, #0xff
	mov	w1, w21
	bl	get_wf_frm_num
	tbnz	w0, #31, .LBB1_49
	ldrb	w8, [x20]
	bfi	w8, w0, #8, #24
	mov	w0, wzr
	str	w8, [x20]
	str	w19, [x24, :lo12:pvi_wf_get_lut.sftemp]
.LBB1_44:
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.LBB1_45:
	sub	w8, w22, #11
	cmp	w8, #1
	b.hi	.LBB1_50
	cbz	w23, .LBB1_28
	ldr	x8, [x28, :lo12:waveformdata]
	mov	w9, w23
	cmp	w23, #1
	b.ne	.LBB1_66
	mov	x10, xzr
	b	.LBB1_86
.LBB1_49:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	_printk
	mov	w0, #-5
	b	.LBB1_44
.LBB1_50:
	sub	w8, w22, #13
	cmp	w8, #1
	b.hi	.LBB1_28
	ldr	x0, [x28, :lo12:waveformdata]
	mov	w1, w23
	mov	w2, w21
	bl	pvi_wf_normal_fix
	b	.LBB1_28
.LBB1_52:
	sub	x12, x9, #1
	mov	x10, xzr
	and	x11, x12, #0xffffffff
	lsl	x14, x11, #10
	tst	x14, #0xffffffff00000000
	cset	w13, ne
	cmp	xzr, x12, lsr #54
	cset	w11, ne
	tbnz	w14, #31, .LBB1_64
	tbnz	w13, #0, .LBB1_64
	lsr	x13, x12, #32
	cbnz	x13, .LBB1_64
	add	x13, x8, #30
	lsl	x12, x12, #10
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB1_64
	tbnz	w11, #0, .LBB1_64
	add	x13, x8, #29
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB1_64
	tbnz	w11, #0, .LBB1_64
	add	x13, x8, #31
	add	x12, x13, x12
	cmp	x12, x13
	b.lo	.LBB1_64
	tbnz	w11, #0, .LBB1_64
	and	x10, x9, #0xfffffffe
	mov	w11, #1024
	mov	x12, x10
.LBB1_62:
	sub	w13, w11, #1024
	add	x14, x8, w11, sxtw
	subs	x12, x12, #2
	add	w11, w11, #2048
	add	x13, x8, w13, sxtw
	ldrb	w15, [x14, #30]
	ldrb	w16, [x13, #30]
	strb	w15, [x14, #31]
	strb	w15, [x14, #29]
	strb	w16, [x13, #31]
	strb	w16, [x13, #29]
	b.ne	.LBB1_62
	cmp	x10, x9
	b.eq	.LBB1_28
.LBB1_64:
	sub	x9, x9, x10
	lsl	w10, w10, #10
.LBB1_65:
	add	x11, x8, w10, sxtw
	subs	x9, x9, #1
	add	w10, w10, #1024
	ldrb	w12, [x11, #30]
	strb	w12, [x11, #31]
	strb	w12, [x11, #29]
	b.ne	.LBB1_65
	b	.LBB1_28
.LBB1_66:
	sub	x12, x9, #1
	mov	x10, xzr
	and	x11, x12, #0xffffffff
	lsl	x14, x11, #10
	tst	x14, #0xffffffff00000000
	cset	w13, ne
	cmp	xzr, x12, lsr #54
	cset	w11, ne
	tbnz	w14, #31, .LBB1_86
	tbnz	w13, #0, .LBB1_86
	lsr	x13, x12, #32
	cbnz	x13, .LBB1_86
	add	x13, x8, #30
	lsl	x12, x12, #10
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB1_86
	tbnz	w11, #0, .LBB1_86
	add	x13, x8, #1022
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB1_86
	tbnz	w11, #0, .LBB1_86
	add	x13, x8, #1021
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB1_86
	tbnz	w11, #0, .LBB1_86
	add	x13, x8, #29
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB1_86
	tbnz	w11, #0, .LBB1_86
	add	x13, x8, #31
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB1_86
	tbnz	w11, #0, .LBB1_86
	add	x13, x8, #989
	add	x12, x13, x12
	cmp	x12, x13
	b.lo	.LBB1_86
	tbnz	w11, #0, .LBB1_86
	and	x10, x9, #0xfffffffe
	mov	w11, #1024
	mov	x12, x10
	b	.LBB1_83
.LBB1_82:
	subs	x12, x12, #2
	add	w11, w11, #2048
	b.eq	.LBB1_85
.LBB1_83:
	sub	w14, w11, #1024
	add	x13, x8, w11, sxtw
	add	x14, x8, w14, sxtw
	ldrb	w15, [x13, #30]
	strb	wzr, [x13, #989]
	ldrb	w16, [x14, #30]
	strb	wzr, [x14, #989]
	strb	w15, [x13, #31]
	strb	w15, [x13, #29]
	strb	w16, [x14, #31]
	strb	w16, [x14, #29]
	cbz	w21, .LBB1_82
	add	x14, x14, #1021
	add	x13, x13, #1021
	strh	wzr, [x14]
	strh	wzr, [x13]
	b	.LBB1_82
.LBB1_85:
	cmp	x10, x9
	b.eq	.LBB1_28
.LBB1_86:
	sub	x9, x9, x10
	lsl	w10, w10, #10
	b	.LBB1_88
.LBB1_87:
	subs	x9, x9, #1
	add	w10, w10, #1024
	b.eq	.LBB1_28
.LBB1_88:
	add	x11, x8, w10, sxtw
	ldrb	w12, [x11, #30]
	strb	wzr, [x11, #989]
	strb	w12, [x11, #31]
	strb	w12, [x11, #29]
	cbz	w21, .LBB1_87
	add	x11, x11, #1021
	strh	wzr, [x11]
	b	.LBB1_87
.Lfunc_end1:
	.size	pvi_wf_get_lut, .Lfunc_end1-pvi_wf_get_lut

	.p2align	2
	.type	get_wf_mode_index,@function
get_wf_mode_index:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	cmp	w0, #15
	mov	x29, sp
	b.hs	.LBB2_17
	sub	w8, w0, #10
	cmp	w8, #5
	b.hs	.LBB2_3
	adrp	x9, .Lswitch.table.get_wf_mode_index
	add	x9, x9, :lo12:.Lswitch.table.get_wf_mode_index
	ldr	x8, [x9, w8, sxtw #3]
	b	.LBB2_4
.LBB2_3:
	mov	w8, w0
.LBB2_4:
	adrp	x9, global_waveform
	ldr	x9, [x9, :lo12:global_waveform]
	ldrb	w10, [x9, #16]
	sub	w9, w10, #9
	cmp	w9, #105
	b.hi	.LBB2_8
	adrp	x11, .LJTI2_0
	add	x11, x11, :lo12:.LJTI2_0
	adr	x12, .LBB2_6
	ldrb	w13, [x11, x9]
	add	x12, x12, x13, lsl #2
	adrp	x9, pvi_mode_table
	add	x9, x9, :lo12:pvi_mode_table
	br	x12
.LBB2_6:
	adrp	x9, pvi_mode_table+72
	add	x9, x9, :lo12:pvi_mode_table+72
	b	.LBB2_15
.LBB2_7:
	adrp	x9, pvi_mode_table+27
	add	x9, x9, :lo12:pvi_mode_table+27
	b	.LBB2_15
.LBB2_8:
	adrp	x9, custom_mode_table
	adrp	x12, pvi_mode_table+72
	add	x9, x9, :lo12:custom_mode_table
	add	x12, x12, :lo12:pvi_mode_table+72
	ldrb	w11, [x9, #9]
	cmp	w10, w11
	csel	x9, x9, x12, eq
	b	.LBB2_15
.LBB2_9:
	adrp	x9, pvi_mode_table+9
	add	x9, x9, :lo12:pvi_mode_table+9
	b	.LBB2_15
.LBB2_10:
	adrp	x9, pvi_mode_table+18
	add	x9, x9, :lo12:pvi_mode_table+18
	b	.LBB2_15
.LBB2_11:
	adrp	x9, pvi_mode_table+36
	add	x9, x9, :lo12:pvi_mode_table+36
	b	.LBB2_15
.LBB2_12:
	adrp	x9, pvi_mode_table+45
	add	x9, x9, :lo12:pvi_mode_table+45
	b	.LBB2_15
.LBB2_13:
	adrp	x9, pvi_mode_table+54
	add	x9, x9, :lo12:pvi_mode_table+54
	b	.LBB2_15
.LBB2_14:
	adrp	x9, pvi_mode_table+63
	add	x9, x9, :lo12:pvi_mode_table+63
.LBB2_15:
	ldrb	w0, [x9, x8]
.LBB2_16:
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.LBB2_17:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	_printk
	mov	w0, #255
	b	.LBB2_16
.Lfunc_end2:
	.size	get_wf_mode_index, .Lfunc_end2-get_wf_mode_index
	.section	.rodata,"a",@progbits
.LJTI2_0:
	.byte	(.LBB2_15-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_9-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_10-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_6-.LBB2_6)>>2
	.byte	(.LBB2_7-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_6-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_11-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_7-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_12-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_13-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_8-.LBB2_6)>>2
	.byte	(.LBB2_14-.LBB2_6)>>2

	.text
	.p2align	2
	.type	get_wf_frm_num,@function
get_wf_frm_num:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!
	adrp	x8, global_waveform
	lsl	w9, w0, #2
	str	x23, [sp, #16]
	mov	x29, sp
	stp	x22, x21, [sp, #32]
	ldr	x14, [x8, :lo12:global_waveform]
	stp	x20, x19, [sp, #48]
	ldrb	w8, [x14, #32]
	add	x8, x14, x8
	add	x8, x8, x9
	ldrb	w9, [x8]
	ldrb	w10, [x8, #1]
	ldrb	w11, [x8, #2]
	ldrb	w12, [x8, #3]
	add	w9, w10, w9
	add	w9, w9, w11
	cmp	w12, w9, uxtb
	b.ne	.LBB3_26
	ldr	w8, [x8]
	lsl	w9, w1, #2
	and	x8, x8, #0xffffff
	add	x8, x14, x8
	add	x9, x8, w9, sxtw
	ldrb	w8, [x9]
	ldrb	w10, [x9, #1]
	ldrb	w11, [x9, #2]
	ldrb	w12, [x9, #3]
	add	w8, w10, w8
	add	w8, w8, w11
	cmp	w12, w8, uxtb
	b.ne	.LBB3_27
	adrp	x20, waveformdata
	ldr	x8, [x20, :lo12:waveformdata]
	cbz	x8, .LBB3_29
	adrp	x21, maxpic
	adrp	x22, need_pic
	ldr	w15, [x9]
	mov	w13, wzr
	mov	w11, wzr
	mov	w19, wzr
	ldr	w10, [x21, :lo12:maxpic]
	mov	w12, wzr
	ldr	w9, [x22, :lo12:need_pic]
	and	x15, x15, #0xffffff
	add	x14, x14, x15
	mov	w17, #1
	cmp	w10, #16
	cset	w16, eq
	cmp	w9, #32
	cset	w15, eq
	ands	w15, w16, w15
	mov	w16, #5
	cinc	w16, w16, ne
	b	.LBB3_6
.LBB3_4:
	mov	w17, #1
.LBB3_5:
	add	w11, w11, #1
	cmp	w19, #254
	b.hi	.LBB3_18
.LBB3_6:
	ldrb	w2, [x14, w11, uxtw]
	cmp	w2, #252
	b.eq	.LBB3_11
	cmp	w2, #255
	b.eq	.LBB3_19
	tbnz	w17, #0, .LBB3_12
.LBB3_9:
	add	w17, w13, #1
	lsl	w0, w12, w15
	lsl	w1, w13, w16
	add	w0, w0, w19, lsl #10
	lsl	w17, w17, w16
	add	w1, w0, w1
	add	w17, w0, w17
	and	w3, w2, #0x3
	ubfx	w4, w2, #2, #2
	strb	w3, [x8, w1, uxtw]
	add	w1, w13, #2
	strb	w4, [x8, w17, uxtw]
	add	w17, w13, #3
	lsl	w1, w1, w16
	lsl	w17, w17, w16
	add	w1, w0, w1
	add	w17, w0, w17
	ubfx	w3, w2, #4, #2
	lsr	w0, w2, #6
	add	w13, w13, #4
	strb	w3, [x8, w1, uxtw]
	cmp	w13, w10
	strb	w0, [x8, w17, uxtw]
	mov	w17, wzr
	b.lo	.LBB3_5
	add	w0, w12, #1
	mov	w13, wzr
	cmp	w0, w10
	csinc	w12, wzr, w12, hs
	cinc	w19, w19, hs
	b	.LBB3_5
.LBB3_11:
	add	w11, w11, #1
	ldrb	w2, [x14, w11, uxtw]
	tbnz	w17, #0, .LBB3_9
.LBB3_12:
	add	w17, w13, #1
	lsl	w0, w12, w15
	lsl	w1, w13, w16
	add	w3, w0, w19, lsl #10
	lsl	w0, w17, w16
	add	w1, w3, w1
	add	w4, w3, w0
	and	w17, w2, #0x3
	ubfx	w0, w2, #2, #2
	strb	w17, [x8, w1, uxtw]
	add	w1, w13, #2
	strb	w0, [x8, w4, uxtw]
	add	w4, w13, #3
	lsl	w1, w1, w16
	lsl	w4, w4, w16
	add	w5, w3, w1
	ubfx	w1, w2, #4, #2
	add	w3, w3, w4
	lsr	w2, w2, #6
	add	w13, w13, #4
	cmp	w13, w10
	strb	w1, [x8, w5, uxtw]
	strb	w2, [x8, w3, uxtw]
	b.lo	.LBB3_14
	add	w3, w12, #1
	mov	w13, wzr
	cmp	w3, w10
	csinc	w12, wzr, w12, hs
	cinc	w19, w19, hs
.LBB3_14:
	add	w11, w11, #1
	ldrb	w3, [x14, w11, uxtw]
	cbnz	w3, .LBB3_16
	b	.LBB3_4
.LBB3_15:
	sub	w3, w3, #1
	tst	w3, #0xff
	b.eq	.LBB3_4
.LBB3_16:
	add	w4, w13, #1
	lsl	w5, w12, w15
	add	w7, w13, #2
	add	w23, w13, #3
	lsl	w6, w13, w16
	add	w5, w5, w19, lsl #10
	lsl	w4, w4, w16
	lsl	w7, w7, w16
	lsl	w23, w23, w16
	add	w6, w5, w6
	add	w4, w5, w4
	add	w7, w5, w7
	add	w5, w5, w23
	add	w13, w13, #4
	cmp	w13, w10
	strb	w17, [x8, w6, uxtw]
	strb	w0, [x8, w4, uxtw]
	strb	w1, [x8, w7, uxtw]
	strb	w2, [x8, w5, uxtw]
	b.lo	.LBB3_15
	add	w4, w12, #1
	mov	w13, wzr
	cmp	w4, w10
	csinc	w12, wzr, w12, hs
	cinc	w19, w19, hs
	b	.LBB3_15
.LBB3_18:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	_printk
	ldr	w10, [x21, :lo12:maxpic]
	ldr	w9, [x22, :lo12:need_pic]
.LBB3_19:
	cmp	w10, #32
	b.ne	.LBB3_31
	cmp	w9, #16
	b.ne	.LBB3_31
	cbz	w19, .LBB3_31
	ldr	x11, [x20, :lo12:waveformdata]
	mov	w8, wzr
	mov	w9, wzr
	add	x10, x11, #16
	add	x11, x11, #7
.LBB3_23:
	mov	w13, w8
	mov	x14, #-2
	add	x12, x10, x13
	and	x13, x13, #0xffffffe0
	add	x13, x11, x13
.LBB3_24:
	ldurb	w15, [x12, #-16]
	add	x14, x14, #2
	cmp	x14, #30
	sturb	w15, [x13, #-7]
	ldurb	w15, [x12, #-14]
	sturb	w15, [x13, #-6]
	ldurb	w15, [x12, #-12]
	sturb	w15, [x13, #-5]
	ldurb	w15, [x12, #-10]
	sturb	w15, [x13, #-4]
	ldurb	w15, [x12, #-8]
	sturb	w15, [x13, #-3]
	ldurb	w15, [x12, #-6]
	sturb	w15, [x13, #-2]
	ldurb	w15, [x12, #-4]
	sturb	w15, [x13, #-1]
	ldurb	w15, [x12, #-2]
	strb	w15, [x13]
	ldrb	w15, [x12]
	strb	w15, [x13, #1]
	ldrb	w15, [x12, #2]
	strb	w15, [x13, #2]
	ldrb	w15, [x12, #4]
	strb	w15, [x13, #3]
	ldrb	w15, [x12, #6]
	strb	w15, [x13, #4]
	ldrb	w15, [x12, #8]
	strb	w15, [x13, #5]
	ldrb	w15, [x12, #10]
	strb	w15, [x13, #6]
	ldrb	w15, [x12, #12]
	strb	w15, [x13, #7]
	ldrb	w15, [x12, #14]
	add	x12, x12, #64
	strb	w15, [x13, #8]
	add	x13, x13, #32
	b.lo	.LBB3_24
	add	w9, w9, #1
	add	w8, w8, #1024
	cmp	w19, w9, uxtb
	b.hi	.LBB3_23
	b	.LBB3_31
.LBB3_26:
	adrp	x0, .L.str.5
	adrp	x1, .L__func__.get_wf_frm_num
	add	x0, x0, :lo12:.L.str.5
	add	x1, x1, :lo12:.L__func__.get_wf_frm_num
	mov	w2, #269
	b	.LBB3_28
.LBB3_27:
	adrp	x0, .L.str.5
	adrp	x1, .L__func__.get_wf_frm_num
	add	x0, x0, :lo12:.L.str.5
	add	x1, x1, :lo12:.L__func__.get_wf_frm_num
	mov	w2, #276
.LBB3_28:
	bl	_printk
	b	.LBB3_30
.LBB3_29:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	_printk
.LBB3_30:
	mov	w19, #-22
.LBB3_31:
	mov	w0, w19
	ldr	x23, [sp, #16]
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end3:
	.size	get_wf_frm_num, .Lfunc_end3-get_wf_frm_num

	.p2align	2
	.type	pvi_wf_normal_fix,@function
pvi_wf_normal_fix:
	cmp	w1, #1
	b.lt	.LBB4_5
	mov	w9, w1
	mov	x8, xzr
	lsl	x9, x9, #10
	b	.LBB4_3
.LBB4_2:
	ldrb	w11, [x10, #30]
	add	x8, x8, #1024
	cmp	x9, x8
	strb	wzr, [x10, #958]
	strb	wzr, [x10, #1022]
	strb	w11, [x10, #31]
	strb	w11, [x10, #29]
	strb	w11, [x10, #61]
	b.eq	.LBB4_5
.LBB4_3:
	add	x10, x0, w8, sxtw
	cbz	w2, .LBB4_2
	ldrb	w11, [x10, #990]
	strb	wzr, [x10, #990]
	strb	w11, [x10, #989]
	strb	w11, [x10, #1021]
	strb	w11, [x10, #957]
	b	.LBB4_2
.LBB4_5:
	lsl	w8, w1, #10
	mov	w10, #1
	sub	w9, w8, #1, lsl #12
	sub	w11, w8, #3072
	sub	w8, w8, #2048
	mov	w12, #2
	add	x9, x0, w9, sxtw
	add	x11, x0, w11, sxtw
	add	x8, x0, w8, sxtw
	strb	w10, [x9, #991]
	strb	w10, [x9, #959]
	strb	w10, [x9, #1023]
	strb	w12, [x11, #991]
	strb	w12, [x11, #959]
	strb	w12, [x11, #1023]
	strb	w12, [x8, #991]
	strb	w12, [x8, #959]
	strb	w12, [x8, #1023]
	ret
.Lfunc_end4:
	.size	pvi_wf_normal_fix, .Lfunc_end4-pvi_wf_normal_fix

	.globl	pvi_wf_input
	.p2align	2
	.type	pvi_wf_input,@function
pvi_wf_input:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	stp	x20, x19, [sp, #16]
	adrp	x20, global_waveform
	mov	x29, sp
	ldr	x8, [x20, :lo12:global_waveform]
	cbz	x8, .LBB5_3
	mov	w0, #-16
.LBB5_2:
	ldp	x20, x19, [sp, #16]
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.LBB5_3:
	mov	x19, x0
	ldrb	w1, [x0, #16]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	_printk
	ldrb	w1, [x19, #16]
	sub	w9, w1, #9
	cmp	w9, #105
	b.hi	.LBB5_7
	adrp	x10, .LJTI5_0
	mov	w8, #32
	add	x10, x10, :lo12:.LJTI5_0
	adr	x11, .LBB5_5
	ldrb	w12, [x10, x9]
	add	x11, x11, x12, lsl #2
	br	x11
.LBB5_5:
	adrp	x9, maxpic
	str	w8, [x9, :lo12:maxpic]
.LBB5_6:
	mov	w0, wzr
	str	x19, [x20, :lo12:global_waveform]
	b	.LBB5_2
.LBB5_7:
	adrp	x8, custom_mode_table+9
	ldrb	w8, [x8, :lo12:custom_mode_table+9]
	cmp	w1, w8
	b.ne	.LBB5_9
	adrp	x8, custom_mode_table+12
	ldr	w8, [x8, :lo12:custom_mode_table+12]
	b	.LBB5_5
.LBB5_9:
	adrp	x0, .L.str.3
	ldrb	w2, [x19, #22]
	add	x0, x0, :lo12:.L.str.3
	bl	_printk
	mov	w0, #-8
	b	.LBB5_2
.Lfunc_end5:
	.size	pvi_wf_input, .Lfunc_end5-pvi_wf_input
	.section	.rodata,"a",@progbits
.LJTI5_0:
	.byte	(.LBB5_6-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_6-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_5-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_5-.LBB5_5)>>2
	.byte	(.LBB5_5-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_5-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_6-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_5-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_5-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_6-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_7-.LBB5_5)>>2
	.byte	(.LBB5_5-.LBB5_5)>>2

	.text
	.globl	pvi_wf_get_version
	.p2align	2
	.type	pvi_wf_get_version,@function
pvi_wf_get_version:
	adrp	x8, global_waveform
	ldr	x9, [x8, :lo12:global_waveform]
	cbz	x9, .LBB6_4
	adrp	x0, pvi_wf_get_version.spi_id_buffer
	mov	x8, xzr
	add	x9, x9, #65
	add	x0, x0, :lo12:pvi_wf_get_version.spi_id_buffer
.LBB6_2:
	ldrb	w10, [x9, x8]
	strb	w10, [x0, x8]
	add	x8, x8, #1
	cmp	x8, #31
	b.ne	.LBB6_2
	strb	wzr, [x0, #31]
	ret
.LBB6_4:
	mov	x0, xzr
	ret
.Lfunc_end6:
	.size	pvi_wf_get_version, .Lfunc_end6-pvi_wf_get_version

	.type	pvi_mode_table,@object
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

	.type	custom_mode_table,@object
	.bss
	.globl	custom_mode_table
	.p2align	2
custom_mode_table:
	.zero	16
	.size	custom_mode_table, 16

	.type	pvi_wf_get_lut.stype,@object
	.data
	.p2align	2
pvi_wf_get_lut.stype:
	.word	15
	.size	pvi_wf_get_lut.stype, 4

	.type	pvi_wf_get_lut.sftemp,@object
	.p2align	2
pvi_wf_get_lut.sftemp:
	.word	4294967295
	.size	pvi_wf_get_lut.sftemp, 4

	.type	pvi_wf_get_lut.fix,@object
	.local	pvi_wf_get_lut.fix
	.comm	pvi_wf_get_lut.fix,4,4
	.type	global_waveform,@object
	.local	global_waveform
	.comm	global_waveform,8,8
	.type	need_pic,@object
	.p2align	2
need_pic:
	.word	16
	.size	need_pic, 4

	.type	waveformdata,@object
	.local	waveformdata
	.comm	waveformdata,8,8
	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pvi waveform get frame number failed\n"
	.size	.L.str, 38

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"pvi : input waveform version 0x%x\n"
	.size	.L.str.2, 35

	.type	maxpic,@object
	.data
	.p2align	2
maxpic:
	.word	16
	.size	maxpic, 4

	.type	.L.str.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"pvi : Unknow waveform version 0x%x, 0x%x, may be wrong waveform file\n"
	.size	.L.str.3, 70

	.type	pvi_wf_get_version.spi_id_buffer,@object
	.local	pvi_wf_get_version.spi_id_buffer
	.comm	pvi_wf_get_version.spi_id_buffer,32,1
	.type	.L.str.4,@object
.L.str.4:
	.asciz	"pvi: unspport PVI waveform type"
	.size	.L.str.4, 32

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"pvi: %s %d check error\n"
	.size	.L.str.5, 24

	.type	.L__func__.get_wf_frm_num,@object
.L__func__.get_wf_frm_num:
	.asciz	"get_wf_frm_num"
	.size	.L__func__.get_wf_frm_num, 15

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"waveformdata is NULL\n"
	.size	.L.str.6, 22

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"pvi: decodec waveform error, framenum err\n"
	.size	.L.str.7, 43

	.type	.Lswitch.table.get_wf_mode_index,@object
	.section	.rodata,"a",@progbits
	.p2align	3
.Lswitch.table.get_wf_mode_index:
	.xword	3
	.xword	5
	.xword	6
	.xword	4
	.xword	3
	.size	.Lswitch.table.get_wf_mode_index, 40

	.ident	"Android (8508608, based on r450784e) clang version 14.0.7 (https://android.googlesource.com/toolchain/llvm-project 4c603efb0cca074e9238af8b4106c30add4418f6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pvi_wf_get_version.spi_id_buffer

// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"rkf_waveform.c"
	.globl	rkf_wf_input                    // -- Begin function rkf_wf_input
	.p2align	2
	.type	rkf_wf_input,@function
	.word	3228165220                      // 0xc069e464
rkf_wf_input:                           // @rkf_wf_input
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	adrp	x21, global_waveform
	mov	x29, sp
	ldr	x8, [x21, :lo12:global_waveform]
	str	x25, [sp, #16]                  // 8-byte Folded Spill
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	cbz	x8, .LBB0_3
// %bb.1:
	mov	w0, #-16                        // =0xfffffff0
.LBB0_2:
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldr	x25, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB0_3:
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	x22, x0
	add	x0, x0, #20
	mov	w2, #8                          // =0x8
	bl	strncmp
	cbz	w0, .LBB0_6
// %bb.4:
	mov	w19, w0
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	add	x0, x22, #20
	mov	w2, #8                          // =0x8
	bl	strncmp
	cbnz	w0, .LBB0_16
// %bb.5:
	mov	w2, #32                         // =0x20
	mov	w0, w19
	b	.LBB0_7
.LBB0_6:
	mov	w2, #16                         // =0x10
.LBB0_7:
	cmp	w0, #0
	adrp	x9, maxpic
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	cset	w8, ne
	add	x1, x22, #20
	strb	w8, [x9, :lo12:maxpic]
	bl	_printk
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	add	x0, x22, #4
	mov	w2, #12                         // =0xc
	bl	strncmp
	cbnz	w0, .LBB0_17
// %bb.8:
	ldr	w23, [x22]
	cmp	w23, #256, lsl #12              // =1048576
	b.gt	.LBB0_19
// %bb.9:
	adrp	x20, crc32_table
	add	x20, x20, :lo12:crc32_table
	ldr	w19, [x22, w23, sxtw]
	mov	w24, #7022                      // =0x1b6e
	mov	w25, #3511                      // =0xdb7
	mov	x0, x20
	mov	w1, wzr
	mov	w2, #1024                       // =0x400
	movk	w24, #2434, lsl #16
	movk	w25, #1217, lsl #16
	bl	memset
	mov	w12, #28088                     // =0x6db8
	mov	w13, #14044                     // =0x36dc
	mov	w8, wzr
	mov	w9, wzr
	mov	w10, wzr
	mov	x11, xzr
	movk	w12, #9736, lsl #16
	movk	w13, #4868, lsl #16
	mov	w14, #-2147483648               // =0x80000000
	mov	w15, #1073741824                // =0x40000000
	mov	w16, #268435456                 // =0x10000000
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	lsl	w17, w11, #24
	tst	w11, #0x40
	and	w17, w12, w17, asr #31
	eor	w0, w17, w13
	csel	w17, w17, w0, eq
	tst	w11, #0x20
	eor	w0, w17, w24
	csel	w17, w17, w0, eq
	tst	w11, #0x10
	eor	w0, w17, w25
	csel	w17, w17, w0, eq
	lsl	w0, w17, #2
	eor	w17, w17, w8
	add	w8, w8, w16
	cmp	w17, #0
	eor	w1, w0, w24
	csel	w17, w1, w0, lt
	tst	w11, #0x4
	eor	w0, w17, w25
	csel	w17, w17, w0, eq
	lsl	w0, w17, #1
	eor	w17, w17, w9
	add	w9, w9, w15
	cmp	w17, #0
	eor	w1, w0, w25
	csel	w17, w1, w0, lt
	lsl	w0, w17, #1
	eor	w17, w17, w10
	add	w10, w10, w14
	cmp	w17, #0
	eor	w1, w0, w25
	csel	w17, w1, w0, lt
	str	w17, [x20, x11, lsl #2]
	add	x11, x11, #1
	cmp	x11, #256
	b.ne	.LBB0_10
// %bb.11:
	mov	w2, wzr
	cbz	w23, .LBB0_14
// %bb.12:
	mov	x8, x22
.LBB0_13:                               // =>This Inner Loop Header: Depth=1
	ldrb	w9, [x8], #1
	subs	w23, w23, #1
	eor	w9, w9, w2, lsr #24
	ldr	w9, [x20, w9, uxtw #2]
	eor	w2, w9, w2, lsl #8
	b.ne	.LBB0_13
.LBB0_14:
	cmp	w19, w2
	b.ne	.LBB0_18
// %bb.15:
	mov	w0, wzr
	str	x22, [x21, :lo12:global_waveform]
	b	.LBB0_2
.LBB0_16:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_20
.LBB0_17:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	_printk
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	b	.LBB0_20
.LBB0_18:
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	mov	w1, w19
	bl	_printk
.LBB0_19:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
.LBB0_20:
	bl	_printk
	mov	w0, #-1                         // =0xffffffff
	b	.LBB0_2
.Lfunc_end0:
	.size	rkf_wf_input, .Lfunc_end0-rkf_wf_input
                                        // -- End function
	.globl	rkf_wf_get_version              // -- Begin function rkf_wf_get_version
	.p2align	2
	.type	rkf_wf_get_version,@function
	.word	1371061343                      // 0x51b8bc5f
rkf_wf_get_version:                     // @rkf_wf_get_version
// %bb.0:
	adrp	x8, global_waveform
	ldr	x8, [x8, :lo12:global_waveform]
	add	x9, x8, #84
	cmp	x8, #0
	csel	x0, xzr, x9, eq
	ret
.Lfunc_end1:
	.size	rkf_wf_get_version, .Lfunc_end1-rkf_wf_get_version
                                        // -- End function
	.globl	rkf_wf_get_wf_bit               // -- Begin function rkf_wf_get_wf_bit
	.p2align	2
	.type	rkf_wf_get_wf_bit,@function
	.word	1874538549                      // 0x6fbb3035
rkf_wf_get_wf_bit:                      // @rkf_wf_get_wf_bit
// %bb.0:
	adrp	x8, maxpic
	adrp	x9, global_waveform
	mov	w10, #32                        // =0x20
	ldrb	w8, [x8, :lo12:maxpic]
	ldr	x9, [x9, :lo12:global_waveform]
	cmp	w8, #0
	mov	w8, #16                         // =0x10
	csel	w8, w10, w8, ne
	cmp	x9, #0
	csel	w0, wzr, w8, eq
	ret
.Lfunc_end2:
	.size	rkf_wf_get_wf_bit, .Lfunc_end2-rkf_wf_get_wf_bit
                                        // -- End function
	.globl	rkf_wf_get_lut                  // -- Begin function rkf_wf_get_lut
	.p2align	2
	.type	rkf_wf_get_lut,@function
	.word	4161009509                      // 0xf803f765
rkf_wf_get_lut:                         // @rkf_wf_get_lut
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	adrp	x8, global_waveform
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_waveform]
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
                                        // kill: def $w2 killed $w2 def $x2
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	cbz	x8, .LBB3_6
// %bb.1:
	cbz	x0, .LBB3_7
// %bb.2:
	ldr	w8, [x3]
	adrp	x9, need_pic
	cmp	w1, #10
	str	w8, [x9, :lo12:need_pic]
	b.ne	.LBB3_8
// %bb.3:
	ldr	x8, [x0, #32]
	cbz	x8, .LBB3_25
// %bb.4:
	adrp	x22, rkf_wf_get_lut.sftemp
	mov	w9, #26215                      // =0x6667
	and	w23, w2, #0xffff
	ldr	w8, [x22, :lo12:rkf_wf_get_lut.sftemp]
	movk	w9, #26214, lsl #16
	asr	w8, w8, #8
	smull	x8, w8, w9
	mov	w9, #52429                      // =0xcccd
	mul	w9, w23, w9
	lsr	x10, x8, #63
	asr	x8, x8, #33
	add	w8, w8, w10
	cmp	w8, w9, lsr #26
	b.ne	.LBB3_13
// %bb.5:
	mov	w8, wzr
	b	.LBB3_25
.LBB3_6:
	mov	w8, #-19                        // =0xffffffed
	b	.LBB3_25
.LBB3_7:
	mov	w8, #-22                        // =0xffffffea
	b	.LBB3_25
.LBB3_8:
	cmp	w1, #16
	mov	w8, wzr
	b.ne	.LBB3_25
// %bb.9:
	adrp	x9, rkf_wf_get_lut.sftemp
	mov	w11, #13108                     // =0x3334
	and	x10, x2, #0xff
	ldrb	w9, [x9, :lo12:rkf_wf_get_lut.sftemp]
	movk	w11, #13107, lsl #16
	umull	x10, w10, w11
	umull	x9, w9, w11
	lsr	x10, x10, #32
	lsr	x9, x9, #32
	cmp	w10, w9
	b.ne	.LBB3_25
// %bb.10:
	ldr	w8, [x3, #8]
	cbz	w8, .LBB3_25
// %bb.11:
	ldr	x8, [x0, #16]
	cbz	x8, .LBB3_26
// %bb.12:
	mov	x19, x0
	mov	x0, x8
	bl	kfree
	str	xzr, [x19, #16]
	b	.LBB3_26
.LBB3_13:
	mov	x19, x0
	ldr	x0, [x0, #16]
	ubfx	w20, w2, #8, #8
	cbz	x0, .LBB3_15
// %bb.14:
	bl	kfree
	str	xzr, [x19, #16]
.LBB3_15:
	bl	epd_overlay_lut
	mov	w21, w0
	mov	x0, x19
	mov	w2, w20
	mov	w1, w21
	bl	parse_wf_data
	tbnz	w0, #31, .LBB3_26
// %bb.16:
	mov	w20, w0
	ldr	x1, [x19, #32]
	mov	x0, x19
	mov	w2, w20
	bl	rkf_lut_wf_table
	cmp	w21, #1
	b.ne	.LBB3_24
// %bb.17:
	ldr	x21, [x19, #32]
	cbz	w20, .LBB3_22
// %bb.18:
	mov	w8, wzr
	mov	x9, xzr
	mov	w10, w20
	add	x11, x21, #31
	add	x12, x21, #992
.LBB3_19:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB3_20 Depth 2
	sxtw	x14, w8
	mov	x15, #-16                       // =0xfffffffffffffff0
	add	x13, x11, x14
	add	x14, x12, x14
.LBB3_20:                               //   Parent Loop BB3_19 Depth=1
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
	b.lo	.LBB3_20
// %bb.21:                              //   in Loop: Header=BB3_19 Depth=1
	add	x9, x9, #1
	add	w8, w8, #1024
	cmp	x9, x10
	b.ne	.LBB3_19
.LBB3_22:
	mov	x0, x21
	mov	w1, w20
	bl	epd_overlay_gray2_repair
	cbnz	w0, .LBB3_24
// %bb.23:
	lsl	w8, w20, #10
	mov	w9, #2                          // =0x2
	sub	w8, w8, #2048
	add	x8, x21, w8, sxtw
	strb	w9, [x8, #991]
	strb	w9, [x8, #959]
	strb	w9, [x8, #1023]
.LBB3_24:
	ldrb	w8, [x22, :lo12:rkf_wf_get_lut.sftemp]
	and	w9, w23, #0xff00
	str	w20, [x19, #4]
	orr	w8, w8, w9
	str	w8, [x22, :lo12:rkf_wf_get_lut.sftemp]
	mov	w8, #2                          // =0x2
.LBB3_25:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	mov	w0, w8
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB3_26:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	_printk
	mov	w8, #-5                         // =0xfffffffb
	b	.LBB3_25
.Lfunc_end3:
	.size	rkf_wf_get_lut, .Lfunc_end3-rkf_wf_get_lut
                                        // -- End function
	.p2align	2                               // -- Begin function parse_wf_data
	.type	parse_wf_data,@function
parse_wf_data:                          // @parse_wf_data
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	cmp	w1, #15
	mov	w20, #-1                        // =0xffffffff
	stp	x24, x23, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	b.hi	.LBB4_81
// %bb.1:
	mov	w8, w1
	adrp	x9, .LJTI4_0
	add	x9, x9, :lo12:.LJTI4_0
	adr	x10, .LBB4_2
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	mov	x19, x0
	br	x10
.LBB4_2:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #212]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.hi	.LBB4_23
// %bb.3:
	mov	x10, xzr
	mov	x11, x8
.LBB4_4:                                // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #213]
	cmp	w12, w9
	b.hi	.LBB4_57
// %bb.5:                               //   in Loop: Header=BB4_4 Depth=1
	ldrb	w13, [x11, #212]
	cmp	w12, w13
	b.lo	.LBB4_57
// %bb.6:                               //   in Loop: Header=BB4_4 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_4
	b	.LBB4_56
.LBB4_7:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #340]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_13
// %bb.8:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_37
.LBB4_9:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #276]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_26
// %bb.10:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_39
.LBB4_11:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #404]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_31
// %bb.12:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_41
.LBB4_13:
	mov	x10, xzr
	mov	x11, x8
.LBB4_14:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #341]
	cmp	w12, w9
	b.hi	.LBB4_36
// %bb.15:                              //   in Loop: Header=BB4_14 Depth=1
	ldrb	w13, [x11, #340]
	cmp	w12, w13
	b.lo	.LBB4_36
// %bb.16:                              //   in Loop: Header=BB4_14 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_14
// %bb.17:
	mov	x9, xzr
	b	.LBB4_37
.LBB4_18:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #148]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_42
// %bb.19:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_65
.LBB4_20:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #532]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_47
// %bb.21:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_74
.LBB4_22:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #212]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_52
.LBB4_23:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_58
.LBB4_24:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #468]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_59
// %bb.25:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_76
.LBB4_26:
	mov	x10, xzr
	mov	x11, x8
.LBB4_27:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #277]
	cmp	w12, w9
	b.hi	.LBB4_38
// %bb.28:                              //   in Loop: Header=BB4_27 Depth=1
	ldrb	w13, [x11, #276]
	cmp	w12, w13
	b.lo	.LBB4_38
// %bb.29:                              //   in Loop: Header=BB4_27 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_27
// %bb.30:
	mov	x9, xzr
	b	.LBB4_39
.LBB4_31:
	mov	x10, xzr
	mov	x11, x8
.LBB4_32:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #405]
	cmp	w12, w9
	b.hi	.LBB4_40
// %bb.33:                              //   in Loop: Header=BB4_32 Depth=1
	ldrb	w13, [x11, #404]
	cmp	w12, w13
	b.lo	.LBB4_40
// %bb.34:                              //   in Loop: Header=BB4_32 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_32
// %bb.35:
	mov	x9, xzr
	b	.LBB4_41
.LBB4_36:
	neg	x9, x10
.LBB4_37:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1364]
	b	.LBB4_77
.LBB4_38:
	neg	x9, x10
.LBB4_39:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1108]
	b	.LBB4_77
.LBB4_40:
	neg	x9, x10
.LBB4_41:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1620]
	b	.LBB4_77
.LBB4_42:
	mov	x10, xzr
	mov	x11, x8
.LBB4_43:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #149]
	cmp	w12, w9
	b.hi	.LBB4_64
// %bb.44:                              //   in Loop: Header=BB4_43 Depth=1
	ldrb	w13, [x11, #148]
	cmp	w12, w13
	b.lo	.LBB4_64
// %bb.45:                              //   in Loop: Header=BB4_43 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_43
// %bb.46:
	mov	x9, xzr
	b	.LBB4_65
.LBB4_47:
	mov	x10, xzr
	mov	x11, x8
.LBB4_48:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #533]
	cmp	w12, w9
	b.hi	.LBB4_73
// %bb.49:                              //   in Loop: Header=BB4_48 Depth=1
	ldrb	w13, [x11, #532]
	cmp	w12, w13
	b.lo	.LBB4_73
// %bb.50:                              //   in Loop: Header=BB4_48 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_48
// %bb.51:
	mov	x9, xzr
	b	.LBB4_74
.LBB4_52:
	mov	x10, xzr
	mov	x11, x8
.LBB4_53:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #213]
	cmp	w12, w9
	b.hi	.LBB4_57
// %bb.54:                              //   in Loop: Header=BB4_53 Depth=1
	ldrb	w13, [x11, #212]
	cmp	w12, w13
	b.lo	.LBB4_57
// %bb.55:                              //   in Loop: Header=BB4_53 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_53
.LBB4_56:
	mov	x9, xzr
	b	.LBB4_58
.LBB4_57:
	neg	x9, x10
.LBB4_58:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #852]
	b	.LBB4_77
.LBB4_59:
	mov	x10, xzr
	mov	x11, x8
.LBB4_60:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #469]
	cmp	w12, w9
	b.hi	.LBB4_75
// %bb.61:                              //   in Loop: Header=BB4_60 Depth=1
	ldrb	w13, [x11, #468]
	cmp	w12, w13
	b.lo	.LBB4_75
// %bb.62:                              //   in Loop: Header=BB4_60 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_60
// %bb.63:
	mov	x9, xzr
	b	.LBB4_76
.LBB4_64:
	neg	x9, x10
.LBB4_65:
	add	x9, x8, x9, lsl #2
	mov	w1, #3520                       // =0xdc0
	ldr	w9, [x9, #596]
	add	x23, x8, x9
	ldrb	w20, [x23]
	add	x22, x20, #15
	lsr	x24, x22, #2
	and	x0, x24, #0x7c
	bl	__kmalloc_noprof
	cbz	x0, .LBB4_80
// %bb.66:
	add	x1, x23, #4
	and	x2, x24, #0x7c
	mov	x21, x0
	bl	memcpy
	lsr	w23, w22, #4
	mov	w1, #3520                       // =0xdc0
	lsl	w0, w23, #10
	bl	__kmalloc_noprof
	mov	x22, x0
	cbz	w20, .LBB4_72
// %bb.67:
	cbz	x22, .LBB4_72
// %bb.68:
	mov	w10, #16385                     // =0x4001
	mov	w11, #5460                      // =0x1554
	mov	w8, wzr
	mov	w9, wzr
	movk	w10, #85, lsl #16
	movk	w11, #21760, lsl #16
	mov	x12, x21
.LBB4_69:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB4_70 Depth 2
	ldr	w15, [x12]
	mov	w14, wzr
	mov	w13, wzr
.LBB4_70:                               //   Parent Loop BB4_69 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	asr	w16, w15, w14
	add	w0, w9, w13
	add	w13, w13, #16
	add	w1, w0, #1
	cmp	w13, #256
	add	w14, w14, #2
	and	w16, w16, #0x3
	mul	w17, w16, w10
	mul	w16, w16, w11
	orr	w16, w16, w17
	add	w17, w0, #2
	str	w16, [x22, w1, sxtw #2]
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #3
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #4
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #5
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #6
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #7
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #8
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #9
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #10
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #11
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #12
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #13
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #14
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #15
	str	w16, [x22, w0, sxtw #2]
	str	w16, [x22, w17, sxtw #2]
	b.ne	.LBB4_70
// %bb.71:                              //   in Loop: Header=BB4_69 Depth=1
	add	w8, w8, #1
	add	x12, x12, #4
	add	w9, w9, w13
	cmp	w8, w23
	b.ne	.LBB4_69
.LBB4_72:
	mov	x0, x21
	str	x22, [x19, #16]
	bl	kfree
	cbnz	x22, .LBB4_81
	b	.LBB4_80
.LBB4_73:
	neg	x9, x10
.LBB4_74:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #2132]
	b	.LBB4_77
.LBB4_75:
	neg	x9, x10
.LBB4_76:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1876]
.LBB4_77:
	adrp	x10, maxpic
	add	x22, x8, x9
	mov	w8, #4                          // =0x4
	ldrb	w10, [x10, :lo12:maxpic]
	ldrb	w20, [x22]
	mov	w1, #3520                       // =0xdc0
	cmp	w10, #0
	cinc	w8, w8, ne
	lsl	w9, w20, w8
	lsl	w8, w9, w8
	lsr	w21, w8, #2
	mov	x0, x21
	bl	__kmalloc_noprof
	cbz	x0, .LBB4_79
// %bb.78:
	add	x1, x22, #4
	mov	x2, x21
	mov	x22, x0
	bl	memcpy
	str	x22, [x19, #16]
	b	.LBB4_81
.LBB4_79:
	str	xzr, [x19, #16]
.LBB4_80:
	mov	w20, #-1                        // =0xffffffff
.LBB4_81:
	mov	w0, w20
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end4:
	.size	parse_wf_data, .Lfunc_end4-parse_wf_data
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
.LJTI4_0:
	.hword	(.LBB4_18-.LBB4_2)>>2
	.hword	(.LBB4_24-.LBB4_2)>>2
	.hword	(.LBB4_22-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_9-.LBB4_2)>>2
	.hword	(.LBB4_7-.LBB4_2)>>2
	.hword	(.LBB4_11-.LBB4_2)>>2
	.hword	(.LBB4_20-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_81-.LBB4_2)>>2
	.hword	(.LBB4_81-.LBB4_2)>>2
	.hword	(.LBB4_7-.LBB4_2)>>2
	.hword	(.LBB4_11-.LBB4_2)>>2
	.hword	(.LBB4_9-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_7-.LBB4_2)>>2
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function rkf_lut_wf_table
	.type	rkf_lut_wf_table,@function
rkf_lut_wf_table:                       // @rkf_lut_wf_table
// %bb.0:
	cmp	w2, #1
	b.lt	.LBB5_14
// %bb.1:
	adrp	x8, maxpic
	mov	w11, #32                        // =0x20
	mov	x9, xzr
	ldrb	w10, [x8, :lo12:maxpic]
	mov	w8, #16                         // =0x10
	cmp	w10, #0
	csel	w11, w11, w8, ne
	mov	w8, #4                          // =0x4
	lsr	w12, w11, #4
	cinc	w13, w8, ne
	mov	w8, w2
.LBB5_2:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB5_3 Depth 2
                                        //       Child Loop BB5_4 Depth 3
	lsl	w14, w9, w13
	ldr	x15, [x0, #16]
	lsl	w16, w14, w10
	and	x14, x9, #0x3fffff
	add	x14, x1, x14, lsl #10
	add	x15, x15, w16, sxtw #2
	mov	x16, xzr
.LBB5_3:                                //   Parent Loop BB5_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB5_4 Depth 3
	mul	x3, x16, x12
	mov	w17, wzr
	mov	x4, xzr
	add	x3, x15, x3, lsl #2
.LBB5_4:                                //   Parent Loop BB5_2 Depth=1
                                        //     Parent Loop BB5_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ubfx	x5, x4, #4, #28
	and	w6, w17, #0x1e
	add	w17, w17, #2
	ldr	w5, [x3, x5, lsl #2]
	lsr	w5, w5, w6
	and	w5, w5, #0x3
	strb	w5, [x14, x4]
	add	x4, x4, #1
	cmp	x11, x4
	b.ne	.LBB5_4
// %bb.5:                               //   in Loop: Header=BB5_3 Depth=2
	add	x16, x16, #1
	add	x14, x14, #32
	cmp	x16, x11
	b.ne	.LBB5_3
// %bb.6:                               //   in Loop: Header=BB5_2 Depth=1
	add	x9, x9, #1
	cmp	x9, x8
	b.ne	.LBB5_2
// %bb.7:
	cbz	w10, .LBB5_14
// %bb.8:
	adrp	x9, need_pic
	ldr	w9, [x9, :lo12:need_pic]
	cmp	w9, #16
	b.ne	.LBB5_14
// %bb.9:
	cmp	w2, #1
	b.lt	.LBB5_14
// %bb.10:
	mov	w9, wzr
	mov	x10, xzr
	add	x11, x1, #7
	add	x12, x1, #16
.LBB5_11:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB5_12 Depth 2
	and	x13, x10, #0x3fffff
	and	x14, x9, #0x3ffffff
	mov	x15, #-2                        // =0xfffffffffffffffe
	add	x13, x11, x13, lsl #10
	add	x14, x12, x14, lsl #6
.LBB5_12:                               //   Parent Loop BB5_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldurb	w16, [x14, #-16]
	add	x15, x15, #2
	cmp	x15, #30
	sturb	w16, [x13, #-7]
	ldurb	w16, [x14, #-14]
	sturb	w16, [x13, #-6]
	ldurb	w16, [x14, #-12]
	sturb	w16, [x13, #-5]
	ldurb	w16, [x14, #-10]
	sturb	w16, [x13, #-4]
	ldurb	w16, [x14, #-8]
	sturb	w16, [x13, #-3]
	ldurb	w16, [x14, #-6]
	sturb	w16, [x13, #-2]
	ldurb	w16, [x14, #-4]
	sturb	w16, [x13, #-1]
	ldurb	w16, [x14, #-2]
	strb	w16, [x13]
	ldrb	w16, [x14]
	strb	w16, [x13, #1]
	ldrb	w16, [x14, #2]
	strb	w16, [x13, #2]
	ldrb	w16, [x14, #4]
	strb	w16, [x13, #3]
	ldrb	w16, [x14, #6]
	strb	w16, [x13, #4]
	ldrb	w16, [x14, #8]
	strb	w16, [x13, #5]
	ldrb	w16, [x14, #10]
	strb	w16, [x13, #6]
	ldrb	w16, [x14, #12]
	strb	w16, [x13, #7]
	ldrb	w16, [x14, #14]
	add	x14, x14, #64
	strb	w16, [x13, #8]
	add	x13, x13, #32
	b.lo	.LBB5_12
// %bb.13:                              //   in Loop: Header=BB5_11 Depth=1
	add	x10, x10, #1
	add	w9, w9, #16
	cmp	x10, x8
	b.ne	.LBB5_11
.LBB5_14:
	ret
.Lfunc_end5:
	.size	rkf_lut_wf_table, .Lfunc_end5-rkf_lut_wf_table
                                        // -- End function
	.type	global_waveform,@object         // @global_waveform
	.local	global_waveform
	.comm	global_waveform,8,8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rkf: failed to check RKF file version\n"
	.size	.L.str, 39

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"rkf: failed to check RKF file format\n"
	.size	.L.str.1, 38

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"rkf: failed to check crc RKF waveform\n"
	.size	.L.str.2, 39

	.type	maxpic,@object                  // @maxpic
	.local	maxpic
	.comm	maxpic,1,4
	.type	rkf_wf_get_lut.sftemp,@object   // @rkf_wf_get_lut.sftemp
	.data
	.p2align	2, 0x0
rkf_wf_get_lut.sftemp:
	.word	4294967295                      // 0xffffffff
	.size	rkf_wf_get_lut.sftemp, 4

	.type	need_pic,@object                // @need_pic
	.p2align	2, 0x0
need_pic:
	.word	16                              // 0x10
	.size	need_pic, 4

	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"rkf waveform get frame number failed\n"
	.size	.L.str.3, 38

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"rkf:v1.0"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"rkf:v2.0"
	.size	.L.str.5, 9

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"rkf: input waveform version: %s, gray level: %d\n"
	.size	.L.str.6, 49

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"rkf waveform"
	.size	.L.str.7, 13

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"rkf: check format failed\n"
	.size	.L.str.8, 26

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"[EBOOK]: waveform crc err readcrc = %x crccheck = %x\n"
	.size	.L.str.9, 54

	.type	crc32_table,@object             // @crc32_table
	.local	crc32_table
	.comm	crc32_table,1024,4
	.ident	"Android (13290119, +pgo, +bolt, +lto, +mlgo, based on r547379) clang version 20.0.0 (https://android.googlesource.com/toolchain/llvm-project b718bcaf8c198c82f3021447d943401e3ab5bd54)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

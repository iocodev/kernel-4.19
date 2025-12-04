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
	.word	2314953021                      // 0x89fb613d
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
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	mov	x22, x0
	add	x0, x0, #20
	mov	w2, #8                          // =0x8
	bl	strncmp
	cbz	w0, .LBB0_6
// %bb.4:
	mov	w19, w0
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
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
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	cset	w8, ne
	add	x1, x22, #20
	strb	w8, [x9, :lo12:maxpic]
	bl	_printk
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
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
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	bl	_printk
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	b	.LBB0_20
.LBB0_18:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
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
	.word	2603798321                      // 0x9b32cf31
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
	.word	917620134                       // 0x36b1c5a6
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
	.word	84236660                        // 0x5055974
rkf_wf_get_lut:                         // @rkf_wf_get_lut
// %bb.0:
	adrp	x8, global_waveform
	ldr	x8, [x8, :lo12:global_waveform]
	cbz	x8, .LBB3_9
// %bb.1:
	str	x30, [x18], #8
	sub	sp, sp, #144
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	mov	x19, x0
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stp	x28, x27, [sp, #64]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	cbz	x0, .LBB3_10
// %bb.2:
	adrp	x23, rkf_wf_get_lut.sftemp
	mov	w8, #26215                      // =0x6667
	adrp	x12, rkf_wf_get_lut.stype
	ldrsw	x9, [x23, :lo12:rkf_wf_get_lut.sftemp]
	movk	w8, #26214, lsl #16
	adrp	x27, need_pic
	smull	x10, w2, w8
	str	w3, [x27, :lo12:need_pic]
	smull	x8, w9, w8
	lsr	x9, x10, #63
	asr	x10, x10, #33
	lsr	x11, x8, #63
	asr	x8, x8, #33
	add	w24, w10, w9
	ldr	w9, [x12, :lo12:rkf_wf_get_lut.stype]
	add	w8, w8, w11
	cmp	w24, w8
	ccmp	w9, w1, #0, eq
	b.eq	.LBB3_59
// %bb.3:
	cmp	w1, #10
	b.eq	.LBB3_58
// %bb.4:
	ldr	x0, [x19, #8]
	mov	w21, w4
	mov	w22, w5
	mov	w20, w1
	cbz	x0, .LBB3_6
// %bb.5:
	mov	w23, w2
	bl	kfree
	mov	w1, w20
	mov	w2, w23
	str	xzr, [x19, #8]
.LBB3_6:
	mov	x0, x19
	stur	w2, [x29, #-8]                  // 4-byte Folded Spill
	bl	parse_wf_data
	tbnz	w0, #31, .LBB3_73
// %bb.7:
	ldr	x1, [x19, #16]
	mov	w26, w0
	cbz	w20, .LBB3_11
// %bb.8:
	mov	x0, x19
	mov	w2, w26
	bl	rkf_lut_wf_table
	mov	w8, w20
	mov	w2, w22
	mov	w9, w21
	b	.LBB3_16
.LBB3_9:
	mov	w0, #-19                        // =0xffffffed
	ret
.LBB3_10:
	mov	w0, #-22                        // =0xffffffea
	b	.LBB3_72
.LBB3_11:
	mov	w8, w20
	mov	w2, w22
	mov	w9, w21
	cbz	w26, .LBB3_16
// %bb.12:
	mov	w10, wzr
	mov	x11, xzr
	mov	w12, w26
	add	x13, x1, #7
.LBB3_13:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB3_14 Depth 2
	ldr	x15, [x19, #8]
	and	x14, x11, #0x3fffff
	mov	x16, xzr
	add	x14, x13, x14, lsl #10
	add	x15, x15, w10, sxtw #2
.LBB3_14:                               //   Parent Loop BB3_13 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x17, x15, x16
	add	x16, x16, #4
	ldrb	w0, [x17]
	cmp	x16, #64
	and	w0, w0, #0x3
	sturb	w0, [x14, #-7]
	ldrb	w0, [x17]
	ubfx	w0, w0, #2, #2
	sturb	w0, [x14, #-6]
	ldrb	w0, [x17]
	ubfx	w0, w0, #4, #2
	sturb	w0, [x14, #-5]
	ldrb	w0, [x17]
	lsr	w0, w0, #6
	sturb	w0, [x14, #-4]
	ldrb	w0, [x17, #1]
	and	w0, w0, #0x3
	sturb	w0, [x14, #-3]
	ldr	w0, [x17]
	ubfx	w0, w0, #10, #2
	sturb	w0, [x14, #-2]
	ldr	w0, [x17]
	ubfx	w0, w0, #12, #2
	sturb	w0, [x14, #-1]
	ldr	w0, [x17]
	ubfx	w0, w0, #14, #2
	strb	w0, [x14]
	ldrb	w0, [x17, #2]
	and	w0, w0, #0x3
	strb	w0, [x14, #1]
	ldr	w0, [x17]
	ubfx	w0, w0, #18, #2
	strb	w0, [x14, #2]
	ldr	w0, [x17]
	ubfx	w0, w0, #20, #2
	strb	w0, [x14, #3]
	ldr	w0, [x17]
	ubfx	w0, w0, #22, #2
	strb	w0, [x14, #4]
	ldrb	w0, [x17, #3]
	and	w0, w0, #0x3
	strb	w0, [x14, #5]
	ldr	w0, [x17]
	ubfx	w0, w0, #26, #2
	strb	w0, [x14, #6]
	ldr	w0, [x17]
	ubfx	w0, w0, #28, #2
	strb	w0, [x14, #7]
	ldr	w17, [x17]
	lsr	w17, w17, #30
	strb	w17, [x14, #8]
	add	x14, x14, #32
	b.ne	.LBB3_14
// %bb.15:                              //   in Loop: Header=BB3_13 Depth=1
	add	x11, x11, #1
	add	w10, w10, #16
	cmp	x11, x12
	b.ne	.LBB3_13
.LBB3_16:
	cbz	w9, .LBB3_48
// %bb.17:
	cmp	w8, #7
	b.eq	.LBB3_19
// %bb.18:
	cmp	w8, #1
	b.ne	.LBB3_28
.LBB3_19:
	ldr	x21, [x19, #16]
	mov	w9, #62368                      // =0xf3a0
	mov	w10, #52128                     // =0xcba0
	mov	w12, #31648                     // =0x7ba0
	mov	w11, #41888                     // =0xa3a0
	mov	w13, #21408                     // =0x53a0
	add	x14, x21, #17, lsl #12          // =69632
	add	x22, x21, x9
	add	x9, x21, x10
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	add	x9, x14, #2976
	mov	x8, xzr
	stur	x9, [x29, #-16]                 // 8-byte Folded Spill
	add	x9, x21, x12
	add	x28, x21, x11
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	mov	w9, #11168                      // =0x2ba0
	add	x23, x21, x13
	add	x25, x21, x9
	mov	w9, w26
	mov	x10, x21
	b	.LBB3_21
.LBB3_20:                               //   in Loop: Header=BB3_21 Depth=1
	add	x8, x8, #1
	add	x10, x10, #1024
	cmp	x8, #72
	b.eq	.LBB3_23
.LBB3_21:                               // =>This Inner Loop Header: Depth=1
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
	b.lo	.LBB3_20
// %bb.22:                              //   in Loop: Header=BB3_21 Depth=1
	strb	wzr, [x10, #30]
	strb	wzr, [x10, #960]
	b	.LBB3_20
.LBB3_23:
	cbz	w26, .LBB3_26
// %bb.24:
	lsl	x8, x9, #10
	mov	x9, xzr
.LBB3_25:                               // =>This Inner Loop Header: Depth=1
	add	x10, x21, w9, sxtw
	add	x9, x9, #1024
	cmp	x8, x9
	ldrb	w11, [x10, #960]
	ldrb	w12, [x10, #30]
	strb	w11, [x10]
	strb	w12, [x10, #990]
	b.ne	.LBB3_25
.LBB3_26:
	mov	x0, x21
	bl	epd_gray2_last_repair
	cbnz	w0, .LBB3_48
// %bb.27:
	ldp	x11, x10, [sp, #8]              // 16-byte Folded Reload
	mov	w8, #1                          // =0x1
	mov	w9, #2                          // =0x2
	strb	w8, [x21, #928]
	strb	w9, [x21, #958]
	strb	w8, [x10]
	strb	w9, [x10, #30]
	ldur	x10, [x29, #-16]                // 8-byte Folded Reload
	strb	w8, [x25]
	strb	w9, [x25, #30]
	strb	w8, [x23]
	strb	w9, [x23, #30]
	strb	w8, [x11]
	strb	w9, [x11, #30]
	strb	w8, [x28]
	strb	w9, [x28, #30]
	strb	w8, [x22]
	strb	w9, [x22, #30]
	strb	w8, [x10]
	strb	w9, [x10, #30]
	strb	w9, [x21, #1022]
	strb	w8, [x21, #992]
	strb	w9, [x23, #94]
	strb	w8, [x23, #64]
	strb	w9, [x28, #94]
	strb	w8, [x28, #64]
	strb	w9, [x22, #94]
	strb	w8, [x22, #64]
	b	.LBB3_48
.LBB3_28:
	sub	w9, w8, #13
	cmp	w9, #1
	b.hi	.LBB3_30
// %bb.29:
	ldr	x0, [x19, #16]
	mov	w1, w26
	bl	rkf_wf_normal_fix
	b	.LBB3_48
.LBB3_30:
	sub	w9, w8, #5
	cmp	w9, #1
	b.hi	.LBB3_32
// %bb.31:
	ldr	x0, [x19, #16]
	mov	w1, w26
	bl	rkf_wf_regal_fix
	b	.LBB3_48
.LBB3_32:
	cmp	w8, #15
	b.ne	.LBB3_48
// %bb.33:
	cbz	w26, .LBB3_48
// %bb.34:
	ldr	x8, [x19, #16]
	cmp	w26, #1
	mov	w9, w26
	b.ne	.LBB3_36
// %bb.35:
	mov	x10, xzr
	b	.LBB3_46
.LBB3_36:
	sub	x11, x9, #1
	add	x10, x8, #958
	lsl	x12, x11, #10
	add	x13, x10, x12
	cmp	x13, x10
	mov	x10, xzr
	b.lo	.LBB3_46
// %bb.37:
	add	x13, x8, #990
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB3_46
// %bb.38:
	add	x13, x8, #1022
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB3_46
// %bb.39:
	add	x13, x8, #991
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB3_46
// %bb.40:
	add	x13, x8, #1023
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB3_46
// %bb.41:
	add	x13, x8, #957
	add	x12, x13, x12
	cmp	x12, x13
	b.lo	.LBB3_46
// %bb.42:
	lsr	x11, x11, #21
	cbnz	x11, .LBB3_46
// %bb.43:
	and	x10, x9, #0x7ffffffe
	mov	w11, #1024                      // =0x400
	mov	x12, x10
.LBB3_44:                               // =>This Inner Loop Header: Depth=1
	sub	w14, w11, #1024
	add	x13, x8, w11, sxtw
	subs	x12, x12, #2
	add	x14, x8, w14, sxtw
	add	w11, w11, #2048
	ldrb	w15, [x13, #957]
	ldrb	w16, [x14, #957]
	strb	w15, [x13, #958]
	strb	w15, [x13, #990]
	strb	w15, [x13, #1022]
	strb	w16, [x14, #958]
	strb	w16, [x14, #990]
	strb	w16, [x14, #1022]
	strb	w16, [x14, #991]
	strb	w15, [x13, #991]
	strb	w16, [x14, #1023]
	strb	w15, [x13, #1023]
	b.ne	.LBB3_44
// %bb.45:
	cmp	x10, x9
	b.eq	.LBB3_48
.LBB3_46:
	lsl	w11, w10, #10
	sub	x9, x9, x10
.LBB3_47:                               // =>This Inner Loop Header: Depth=1
	add	x10, x8, w11, sxtw
	subs	x9, x9, #1
	add	w11, w11, #1024
	ldrb	w12, [x10, #957]
	strb	w12, [x10, #958]
	strb	w12, [x10, #990]
	strb	w12, [x10, #1022]
	strb	w12, [x10, #991]
	strb	w12, [x10, #1023]
	b.ne	.LBB3_47
.LBB3_48:
	ldr	x0, [x19, #8]
	cbz	x0, .LBB3_50
// %bb.49:
	bl	kfree
	str	xzr, [x19, #8]
.LBB3_50:
	add	w8, w26, #15
	add	w9, w26, #30
	mov	w1, #3520                       // =0xdc0
	cmp	w8, #0
	csel	w8, w9, w8, lt
	lsl	w8, w8, #6
	and	w8, w8, #0xfffffc00
	sxtw	x22, w8
	mov	x0, x22
	bl	__kmalloc_noprof
	str	x0, [x19, #8]
	cbz	x0, .LBB3_74
// %bb.51:
	ldr	x28, [x19, #16]
	stp	w20, w24, [x29, #-20]           // 8-byte Folded Spill
	stur	w26, [x29, #-4]                 // 4-byte Folded Spill
	cbz	x28, .LBB3_75
// %bb.52:
	ldr	w23, [x27, :lo12:need_pic]
	mov	w1, wzr
	mov	x2, x22
	mov	x21, x0
	bl	memset
	ldur	w2, [x29, #-8]                  // 4-byte Folded Reload
	cbz	w26, .LBB3_57
// %bb.53:
	cmp	w23, #16
	mov	w20, #15                        // =0xf
	mov	w11, #1                         // =0x1
	cset	w10, ne
	mov	w12, #2                         // =0x2
	mov	w13, #3                         // =0x3
	mov	w14, #4                         // =0x4
	mov	w15, #5                         // =0x5
	mov	w16, #6                         // =0x6
	mov	w17, #7                         // =0x7
	mov	w0, #8                          // =0x8
	mov	w1, #9                          // =0x9
	mov	w3, #10                         // =0xa
	mov	w4, #11                         // =0xb
	mov	w5, #12                         // =0xc
	mov	w6, #13                         // =0xd
	mov	w7, #14                         // =0xe
	lsl	x22, x20, x10
	ldur	w20, [x29, #-4]                 // 4-byte Folded Reload
	lsl	x11, x11, x10
	lsl	x12, x12, x10
	lsl	x13, x13, x10
	lsl	x14, x14, x10
	lsl	x15, x15, x10
	lsl	x16, x16, x10
	lsl	x17, x17, x10
	lsl	x0, x0, x10
	lsl	x1, x1, x10
	lsl	x3, x3, x10
	lsl	x4, x4, x10
	lsl	x5, x5, x10
	lsl	x6, x6, x10
	lsl	x7, x7, x10
	mov	w8, wzr
	mov	x9, xzr
	mov	w27, w20
.LBB3_54:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB3_55 Depth 2
	sbfx	x20, x8, #0, #27
	lsl	w25, w9, #10
	mov	x30, xzr
	add	x23, x21, x20, lsl #2
	add	x25, x28, w25, sxtw
.LBB3_55:                               //   Parent Loop BB3_54 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	lsl	w20, w30, w10
	ldr	w24, [x23, x30, lsl #2]
	add	x20, x25, x20, lsl #5
	ldrb	w26, [x20]
	and	w26, w26, #0x3
	orr	w24, w24, w26
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x11]
	ubfiz	w26, w26, #2, #2
	orr	w24, w24, w26
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x12]
	ubfiz	w26, w26, #4, #2
	orr	w24, w24, w26
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x13]
	ubfiz	w26, w26, #6, #2
	orr	w24, w24, w26
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x14]
	and	w26, w26, #0x3
	orr	w24, w24, w26, lsl #8
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x15]
	and	w26, w26, #0x3
	orr	w24, w24, w26, lsl #10
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x16]
	and	w26, w26, #0x3
	orr	w24, w24, w26, lsl #12
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x17]
	and	w26, w26, #0x3
	orr	w24, w24, w26, lsl #14
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x0]
	and	w26, w26, #0x3
	orr	w24, w24, w26, lsl #16
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x1]
	and	w26, w26, #0x3
	orr	w24, w24, w26, lsl #18
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x3]
	and	w26, w26, #0x3
	orr	w24, w24, w26, lsl #20
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x4]
	and	w26, w26, #0x3
	orr	w24, w24, w26, lsl #22
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x5]
	and	w26, w26, #0x3
	orr	w24, w24, w26, lsl #24
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x6]
	and	w26, w26, #0x3
	orr	w24, w24, w26, lsl #26
	str	w24, [x23, x30, lsl #2]
	ldrb	w26, [x20, x7]
	and	w26, w26, #0x3
	orr	w24, w24, w26, lsl #28
	str	w24, [x23, x30, lsl #2]
	ldrb	w20, [x20, x22]
	orr	w20, w24, w20, lsl #30
	str	w20, [x23, x30, lsl #2]
	add	x30, x30, #1
	cmp	x30, #16
	b.ne	.LBB3_55
// %bb.56:                              //   in Loop: Header=BB3_54 Depth=1
	add	x9, x9, #1
	add	w8, w8, #16
	cmp	x9, x27
	b.ne	.LBB3_54
.LBB3_57:
	ldrb	w8, [x19, #1]
	ldur	w9, [x29, #-4]                  // 4-byte Folded Reload
	adrp	x23, rkf_wf_get_lut.sftemp
	ldp	w11, w24, [x29, #-20]           // 8-byte Folded Reload
	orr	w8, w9, w8, lsl #8
	mov	w9, #26215                      // =0x6667
	adrp	x10, rkf_wf_get_lut.stype
	movk	w9, #26214, lsl #16
	str	w8, [x19]
	ldrsw	x8, [x23, :lo12:rkf_wf_get_lut.sftemp]
	str	w11, [x10, :lo12:rkf_wf_get_lut.stype]
	smull	x8, w8, w9
	lsr	x9, x8, #63
	asr	x8, x8, #33
	add	w8, w8, w9
.LBB3_58:
	cmp	w24, w8
	b.ne	.LBB3_60
.LBB3_59:
	mov	w0, wzr
	b	.LBB3_72
.LBB3_60:
	ldr	x0, [x19, #8]
	mov	w20, w2
	cbz	x0, .LBB3_62
// %bb.61:
	bl	kfree
	str	xzr, [x19, #8]
.LBB3_62:
	bl	epd_overlay_lut
	mov	w22, w0
	mov	x0, x19
	mov	w2, w20
	mov	w1, w22
	bl	parse_wf_data
	tbnz	w0, #31, .LBB3_73
// %bb.63:
	mov	w21, w0
	ldr	x1, [x19, #24]
	mov	x0, x19
	mov	w2, w21
	bl	rkf_lut_wf_table
	cmp	w22, #1
	b.ne	.LBB3_71
// %bb.64:
	ldr	x22, [x19, #24]
	cbz	w21, .LBB3_69
// %bb.65:
	mov	w8, wzr
	mov	x9, xzr
	mov	w10, w21
	add	x11, x22, #31
	add	x12, x22, #992
.LBB3_66:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB3_67 Depth 2
	sxtw	x14, w8
	mov	x15, #-16                       // =0xfffffffffffffff0
	add	x13, x11, x14
	add	x14, x12, x14
.LBB3_67:                               //   Parent Loop BB3_66 Depth=1
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
	b.lo	.LBB3_67
// %bb.68:                              //   in Loop: Header=BB3_66 Depth=1
	add	x9, x9, #1
	add	w8, w8, #1024
	cmp	x9, x10
	b.ne	.LBB3_66
.LBB3_69:
	mov	x0, x22
	mov	w1, w21
	bl	epd_overlay_gray2_repair
	cbnz	w0, .LBB3_71
// %bb.70:
	lsl	w8, w21, #10
	mov	w9, #-6144                      // =0xffffe800
	mov	w10, #1                         // =0x1
	add	w9, w8, w9
	sub	w11, w8, #1, lsl #12            // =4096
	add	x9, x22, w9, sxtw
	add	x11, x22, w11, sxtw
	strb	w10, [x9, #991]
	strb	w10, [x9, #959]
	strb	w10, [x9, #1023]
	mov	w9, #-5120                      // =0xffffec00
	add	w9, w8, w9
	strb	w10, [x11, #991]
	strb	w10, [x11, #959]
	add	x9, x22, w9, sxtw
	strb	w10, [x11, #1023]
	sub	w11, w8, #3072
	sub	w8, w8, #2048
	add	x11, x22, w11, sxtw
	add	x8, x22, w8, sxtw
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
.LBB3_71:
	ldrb	w8, [x19]
	mov	w0, wzr
	orr	w8, w8, w21, lsl #8
	str	w8, [x19]
	str	w20, [x23, :lo12:rkf_wf_get_lut.sftemp]
.LBB3_72:
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #144
	ldr	x30, [x18, #-8]!
	ret
.LBB3_73:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	_printk
	mov	w0, #-5                         // =0xfffffffb
	b	.LBB3_72
.LBB3_74:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	_printk
	mov	w0, #-12                        // =0xfffffff4
	b	.LBB3_72
.LBB3_75:
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	bl	_printk
	ldur	w2, [x29, #-8]                  // 4-byte Folded Reload
	b	.LBB3_57
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
	b.hi	.LBB4_66
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
	csel	w10, w9, w10, lt
	cmp	w11, w10
	b.hi	.LBB4_22
// %bb.3:
	mov	x9, xzr
.LBB4_4:                                // =>This Inner Loop Header: Depth=1
	add	x11, x8, x9
	ldrb	w12, [x11, #213]
	ldrb	w11, [x11, #212]
	cmp	w12, w10
	ccmp	w12, w11, #0, ls
	b.lo	.LBB4_56
// %bb.5:                               //   in Loop: Header=BB4_4 Depth=1
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB4_4
	b	.LBB4_55
.LBB4_6:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #340]
	csel	w10, w9, w10, lt
	cmp	w11, w10
	b.ls	.LBB4_12
// %bb.7:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_16
.LBB4_8:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #276]
	csel	w10, w9, w10, lt
	cmp	w11, w10
	b.ls	.LBB4_25
// %bb.9:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_29
.LBB4_10:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #404]
	csel	w10, w9, w10, lt
	cmp	w11, w10
	b.ls	.LBB4_30
// %bb.11:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_34
.LBB4_12:
	mov	x9, xzr
.LBB4_13:                               // =>This Inner Loop Header: Depth=1
	add	x11, x8, x9
	ldrb	w12, [x11, #341]
	ldrb	w11, [x11, #340]
	cmp	w12, w10
	ccmp	w12, w11, #0, ls
	b.lo	.LBB4_16
// %bb.14:                              //   in Loop: Header=BB4_13 Depth=1
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB4_13
// %bb.15:
	mov	x9, xzr
.LBB4_16:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1364]
	b	.LBB4_62
.LBB4_17:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #148]
	csel	w10, w9, w10, lt
	cmp	w11, w10
	b.ls	.LBB4_35
// %bb.18:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_39
.LBB4_19:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #532]
	csel	w10, w9, w10, lt
	cmp	w11, w10
	b.ls	.LBB4_47
// %bb.20:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_51
.LBB4_21:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #212]
	csel	w10, w9, w10, lt
	cmp	w11, w10
	b.ls	.LBB4_52
.LBB4_22:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_56
.LBB4_23:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #468]
	csel	w10, w9, w10, lt
	cmp	w11, w10
	b.ls	.LBB4_57
// %bb.24:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_61
.LBB4_25:
	mov	x9, xzr
.LBB4_26:                               // =>This Inner Loop Header: Depth=1
	add	x11, x8, x9
	ldrb	w12, [x11, #277]
	ldrb	w11, [x11, #276]
	cmp	w12, w10
	ccmp	w12, w11, #0, ls
	b.lo	.LBB4_29
// %bb.27:                              //   in Loop: Header=BB4_26 Depth=1
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB4_26
// %bb.28:
	mov	x9, xzr
.LBB4_29:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1108]
	b	.LBB4_62
.LBB4_30:
	mov	x9, xzr
.LBB4_31:                               // =>This Inner Loop Header: Depth=1
	add	x11, x8, x9
	ldrb	w12, [x11, #405]
	ldrb	w11, [x11, #404]
	cmp	w12, w10
	ccmp	w12, w11, #0, ls
	b.lo	.LBB4_34
// %bb.32:                              //   in Loop: Header=BB4_31 Depth=1
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB4_31
// %bb.33:
	mov	x9, xzr
.LBB4_34:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1620]
	b	.LBB4_62
.LBB4_35:
	mov	x9, xzr
.LBB4_36:                               // =>This Inner Loop Header: Depth=1
	add	x11, x8, x9
	ldrb	w12, [x11, #149]
	ldrb	w11, [x11, #148]
	cmp	w12, w10
	ccmp	w12, w11, #0, ls
	b.lo	.LBB4_39
// %bb.37:                              //   in Loop: Header=BB4_36 Depth=1
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB4_36
// %bb.38:
	mov	x9, xzr
.LBB4_39:
	add	x9, x8, x9, lsl #2
	mov	w1, #3520                       // =0xdc0
	ldr	w9, [x9, #596]
	add	x22, x8, x9
	ldrb	w20, [x22]
	add	x23, x20, #15
	lsr	x24, x23, #2
	and	x0, x24, #0x7c
	bl	__kmalloc_noprof
	cbz	x0, .LBB4_65
// %bb.40:
	add	x1, x22, #4
	and	x2, x24, #0x7c
	mov	x21, x0
	bl	memcpy
	lsl	w8, w23, #6
	mov	w1, #3520                       // =0xdc0
	and	w0, w8, #0x7c00
	bl	__kmalloc_noprof
	mov	x22, x0
	cbz	w20, .LBB4_46
// %bb.41:
	cbz	x22, .LBB4_46
// %bb.42:
	lsr	w10, w23, #4
	mov	w11, #16385                     // =0x4001
	mov	w12, #5460                      // =0x1554
	mov	w8, wzr
	mov	w9, wzr
	movk	w11, #85, lsl #16
	movk	w12, #21760, lsl #16
	mov	x13, x21
.LBB4_43:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB4_44 Depth 2
	ldr	w16, [x13]
	mov	w15, wzr
	mov	w14, wzr
.LBB4_44:                               //   Parent Loop BB4_43 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	asr	w17, w16, w15
	add	w1, w8, w14
	add	w14, w14, #16
	add	w2, w1, #1
	cmp	w14, #256
	add	w15, w15, #2
	and	w17, w17, #0x3
	mul	w0, w17, w11
	mul	w17, w17, w12
	orr	w17, w17, w0
	add	w0, w1, #2
	str	w17, [x22, w2, sxtw #2]
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #3
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #4
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #5
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #6
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #7
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #8
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #9
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #10
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #11
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #12
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #13
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #14
	str	w17, [x22, w0, sxtw #2]
	add	w0, w1, #15
	str	w17, [x22, w1, sxtw #2]
	str	w17, [x22, w0, sxtw #2]
	b.ne	.LBB4_44
// %bb.45:                              //   in Loop: Header=BB4_43 Depth=1
	add	w9, w9, #1
	add	x13, x13, #4
	add	w8, w8, w14
	cmp	w9, w10
	b.ne	.LBB4_43
.LBB4_46:
	mov	x0, x21
	str	x22, [x19, #8]
	bl	kfree
	cbnz	x22, .LBB4_66
	b	.LBB4_65
.LBB4_47:
	mov	x9, xzr
.LBB4_48:                               // =>This Inner Loop Header: Depth=1
	add	x11, x8, x9
	ldrb	w12, [x11, #533]
	ldrb	w11, [x11, #532]
	cmp	w12, w10
	ccmp	w12, w11, #0, ls
	b.lo	.LBB4_51
// %bb.49:                              //   in Loop: Header=BB4_48 Depth=1
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB4_48
// %bb.50:
	mov	x9, xzr
.LBB4_51:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #2132]
	b	.LBB4_62
.LBB4_52:
	mov	x9, xzr
.LBB4_53:                               // =>This Inner Loop Header: Depth=1
	add	x11, x8, x9
	ldrb	w12, [x11, #213]
	ldrb	w11, [x11, #212]
	cmp	w12, w10
	ccmp	w12, w11, #0, ls
	b.lo	.LBB4_56
// %bb.54:                              //   in Loop: Header=BB4_53 Depth=1
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB4_53
.LBB4_55:
	mov	x9, xzr
.LBB4_56:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #852]
	b	.LBB4_62
.LBB4_57:
	mov	x9, xzr
.LBB4_58:                               // =>This Inner Loop Header: Depth=1
	add	x11, x8, x9
	ldrb	w12, [x11, #469]
	ldrb	w11, [x11, #468]
	cmp	w12, w10
	ccmp	w12, w11, #0, ls
	b.lo	.LBB4_61
// %bb.59:                              //   in Loop: Header=BB4_58 Depth=1
	add	x9, x9, #1
	cmp	x9, #50
	b.ne	.LBB4_58
// %bb.60:
	mov	x9, xzr
.LBB4_61:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1876]
.LBB4_62:
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
	cbz	x0, .LBB4_64
// %bb.63:
	add	x1, x22, #4
	mov	x2, x21
	mov	x22, x0
	bl	memcpy
	str	x22, [x19, #8]
	b	.LBB4_66
.LBB4_64:
	str	xzr, [x19, #8]
.LBB4_65:
	mov	w20, #-1                        // =0xffffffff
.LBB4_66:
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
	.hword	(.LBB4_17-.LBB4_2)>>2
	.hword	(.LBB4_23-.LBB4_2)>>2
	.hword	(.LBB4_21-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_8-.LBB4_2)>>2
	.hword	(.LBB4_6-.LBB4_2)>>2
	.hword	(.LBB4_10-.LBB4_2)>>2
	.hword	(.LBB4_19-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_66-.LBB4_2)>>2
	.hword	(.LBB4_66-.LBB4_2)>>2
	.hword	(.LBB4_6-.LBB4_2)>>2
	.hword	(.LBB4_10-.LBB4_2)>>2
	.hword	(.LBB4_8-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_6-.LBB4_2)>>2
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function rkf_lut_wf_table
	.type	rkf_lut_wf_table,@function
rkf_lut_wf_table:                       // @rkf_lut_wf_table
// %bb.0:
	cmp	w2, #1
	b.lt	.LBB5_15
// %bb.1:
	stp	x22, x21, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, maxpic
	mov	w11, #32                        // =0x20
	mov	x9, xzr
	ldrb	w10, [x8, :lo12:maxpic]
	mov	w8, #16                         // =0x10
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
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
	ldr	x15, [x0, #8]
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
	mov	w10, wzr
	mov	w11, wzr
	mov	w12, wzr
	mov	w13, wzr
	mov	w14, wzr
	mov	x15, xzr
	add	x16, x1, #8
	add	x17, x1, #12
	add	x0, x1, #10
	add	x2, x1, #7
	add	x3, x1, #16
.LBB5_11:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB5_12 Depth 2
	and	x4, x14, #0x7ffffff
	and	x5, x13, #0x1fffffff
	and	x6, x12, #0x3fffffff
	and	x7, x11, #0x7fffffff
	and	x20, x9, #0x3ffffff
	add	x4, x1, x4, lsl #5
	add	x5, x16, x5, lsl #3
	add	x6, x17, x6, lsl #2
	add	x7, x0, x7, lsl #1
	add	x19, x2, w10, uxtw
	add	x20, x3, x20, lsl #6
	mov	x21, #-2                        // =0xfffffffffffffffe
.LBB5_12:                               //   Parent Loop BB5_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldurb	w22, [x20, #-16]
	add	x21, x21, #2
	cmp	x21, #30
	strb	w22, [x4], #32
	ldurb	w22, [x20, #-14]
	sturb	w22, [x19, #-6]
	ldurb	w22, [x20, #-12]
	sturb	w22, [x7, #-8]
	ldurb	w22, [x20, #-10]
	sturb	w22, [x19, #-4]
	ldurb	w22, [x20, #-8]
	sturb	w22, [x6, #-8]
	ldurb	w22, [x20, #-6]
	sturb	w22, [x19, #-2]
	ldurb	w22, [x20, #-4]
	sturb	w22, [x7, #-4]
	ldurb	w22, [x20, #-2]
	strb	w22, [x19]
	ldrb	w22, [x20]
	strb	w22, [x5], #32
	ldrb	w22, [x20, #2]
	strb	w22, [x19, #2]
	ldrb	w22, [x20, #4]
	strb	w22, [x7]
	ldrb	w22, [x20, #6]
	strb	w22, [x19, #4]
	ldrb	w22, [x20, #8]
	strb	w22, [x6], #32
	ldrb	w22, [x20, #10]
	strb	w22, [x19, #6]
	ldrb	w22, [x20, #12]
	strb	w22, [x7, #4]
	add	x7, x7, #32
	ldrb	w22, [x20, #14]
	add	x20, x20, #64
	strb	w22, [x19, #8]
	add	x19, x19, #32
	b.lo	.LBB5_12
// %bb.13:                              //   in Loop: Header=BB5_11 Depth=1
	add	x15, x15, #1
	add	w14, w14, #32
	add	w13, w13, #128
	add	w12, w12, #256
	cmp	x15, x8
	add	w11, w11, #512
	add	w10, w10, #1024
	add	w9, w9, #16
	b.ne	.LBB5_11
.LBB5_14:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x22, x21, [sp], #32             // 16-byte Folded Reload
.LBB5_15:
	ret
.Lfunc_end5:
	.size	rkf_lut_wf_table, .Lfunc_end5-rkf_lut_wf_table
                                        // -- End function
	.p2align	2                               // -- Begin function rkf_wf_normal_fix
	.type	rkf_wf_normal_fix,@function
rkf_wf_normal_fix:                      // @rkf_wf_normal_fix
// %bb.0:
                                        // kill: def $w1 killed $w1 def $x1
	cmp	w1, #1
	b.lt	.LBB6_5
// %bb.1:
	ubfiz	x8, x1, #10, #32
	mov	x9, xzr
	b	.LBB6_3
.LBB6_2:                                //   in Loop: Header=BB6_3 Depth=1
	ldrb	w11, [x10, #30]
	add	x9, x9, #1024
	strb	wzr, [x10, #958]
	cmp	x8, x9
	strb	wzr, [x10, #1022]
	strb	w11, [x10, #31]
	strb	w11, [x10, #29]
	strb	w11, [x10, #61]
	b.eq	.LBB6_5
.LBB6_3:                                // =>This Inner Loop Header: Depth=1
	add	x10, x0, w9, sxtw
	cbz	w2, .LBB6_2
// %bb.4:                               //   in Loop: Header=BB6_3 Depth=1
	ldrb	w11, [x10, #990]
	strb	wzr, [x10, #990]
	strb	w11, [x10, #989]
	strb	w11, [x10, #1021]
	strb	w11, [x10, #957]
	b	.LBB6_2
.LBB6_5:
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
.Lfunc_end6:
	.size	rkf_wf_normal_fix, .Lfunc_end6-rkf_wf_normal_fix
                                        // -- End function
	.p2align	2                               // -- Begin function rkf_wf_regal_fix
	.type	rkf_wf_regal_fix,@function
rkf_wf_regal_fix:                       // @rkf_wf_regal_fix
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	mov	w19, w1
	mov	x20, x0
	bl	epd_regal_repair
	cbnz	w0, .LBB7_4
// %bb.1:
	cmp	w19, #1
	b.lt	.LBB7_4
// %bb.2:
	ubfiz	x8, x19, #10, #32
	mov	x9, xzr
.LBB7_3:                                // =>This Inner Loop Header: Depth=1
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
	b.ne	.LBB7_3
.LBB7_4:
	mov	w0, w19
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end7:
	.size	rkf_wf_regal_fix, .Lfunc_end7-rkf_wf_regal_fix
                                        // -- End function
	.type	__gendwarfksyms_rule_188,@object // @__gendwarfksyms_rule_188
	.section	.discard.gendwarfksyms.kabi_rules,"a",@progbits
__gendwarfksyms_rule_188:
	.asciz	"1\000type_string\000s#sched_dl_entity\000structure_type sched_dl_entity { member s#rb_node rb_node data_member_location(0) , member t#u64 dl_runtime data_member_location(24) , member t#u64 dl_deadline data_member_location(32) , member t#u64 dl_period data_member_location(40) , member t#u64 dl_bw data_member_location(48) , member t#u64 dl_density data_member_location(56) , member t#s64 runtime data_member_location(64) , member t#u64 deadline data_member_location(72) , member base_type unsigned int byte_size(4) encoding(7) flags data_member_location(80) , member base_type unsigned int byte_size(4) encoding(7) dl_throttled bit_size(1) data_bit_offset(672) , member base_type unsigned int byte_size(4) encoding(7) dl_yielded bit_size(1) data_bit_offset(673) , member base_type unsigned int byte_size(4) encoding(7) dl_non_contending bit_size(1) data_bit_offset(674) , member base_type unsigned int byte_size(4) encoding(7) dl_overrun bit_size(1) data_bit_offset(675) , member base_type unsigned int byte_size(4) encoding(7) dl_server bit_size(1) data_bit_offset(676) , member base_type unsigned int byte_size(4) encoding(7) dl_server_active bit_size(1) data_bit_offset(677) , member base_type unsigned int byte_size(4) encoding(7) dl_defer bit_size(1) data_bit_offset(678) , member base_type unsigned int byte_size(4) encoding(7) dl_defer_armed bit_size(1) data_bit_offset(679) , member base_type unsigned int byte_size(4) encoding(7) dl_defer_running bit_size(1) data_bit_offset(680) , member s#hrtimer dl_timer data_member_location(88) , member s#hrtimer inactive_timer data_member_location(152) , member pointer_type { s#rq } rq data_member_location(216) , member t#dl_server_has_tasks_f server_has_tasks data_member_location(224) , member t#dl_server_pick_f server_pick_task data_member_location(232) , member pointer_type { s#sched_dl_entity } pi_se data_member_location(240) } byte_size(248)"
	.size	__gendwarfksyms_rule_188, 1893

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
	.type	rkf_wf_get_lut.stype,@object    // @rkf_wf_get_lut.stype
	.data
	.p2align	2, 0x0
rkf_wf_get_lut.stype:
	.word	16                              // 0x10
	.size	rkf_wf_get_lut.stype, 4

	.type	rkf_wf_get_lut.sftemp,@object   // @rkf_wf_get_lut.sftemp
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
	.asciz	"kzalloc output->data failed\n"
	.size	.L.str.4, 29

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"rkf:v1.0"
	.size	.L.str.5, 9

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"rkf:v2.0"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"rkf: input waveform version: %s, gray level: %d\n"
	.size	.L.str.7, 49

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"rkf waveform"
	.size	.L.str.8, 13

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"rkf: check format failed\n"
	.size	.L.str.9, 26

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"[EINK]: waveform crc err readcrc = %x crccheck = %x\n"
	.size	.L.str.10, 53

	.type	crc32_table,@object             // @crc32_table
	.local	crc32_table
	.comm	crc32_table,1024,4
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"wf_table or lut_data is NULL\n"
	.size	.L.str.11, 30

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gendwarfksyms_rule_188

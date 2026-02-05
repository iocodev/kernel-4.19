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
__initcall__kmod_rkebc__639_5430_ebc_init6s:
.Ltmp0:
	.word	ebc_init-.Ltmp0
	.text


                                        // End of file scope inline assembly
	.globl	refresh_new_image               // -- Begin function refresh_new_image
	.p2align	2
	.type	refresh_new_image,@function
	.word	2927989597                      // 0xae85935d
refresh_new_image:                      // @refresh_new_image
// %bb.0:
	ldr	w8, [x6, #1140]
	ldr	w9, [x6, #1136]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w11, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB0_179
// %bb.1:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	asr	w6, w11, #3
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	mov	w10, wzr
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	mov	w12, #-268435456                // =0xf0000000
	mov	x13, #1030792151040             // =0xf000000000
	sub	w11, w6, #1
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	mov	x14, #263882790666240           // =0xf00000000000
	ubfiz	x11, x11, #3, #32
	mov	x15, #67553994410557440         // =0xf0000000000000
	mov	x16, #-1152921504606846976      // =0xf000000000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	mov	x25, #63050394783186944         // =0xe0000000000000
	mov	x26, #246290604621824           // =0xe00000000000
	mov	x27, #962072674304              // =0xe000000000
	add	x24, x11, #8
	mov	w28, #15204352                  // =0xe80000
	mov	w29, #232                       // =0xe8
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	b	.LBB0_4
.LBB0_2:                                //   in Loop: Header=BB0_4 Depth=1
	add	x1, x1, x24
	add	x0, x0, x30
	add	x2, x2, x30
	add	x3, x3, x30
	add	x4, x4, x30
	add	x5, x5, x30
.LBB0_3:                                //   in Loop: Header=BB0_4 Depth=1
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB0_178
.LBB0_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_8 Depth 2
	cmp	w8, #8
	b.lt	.LBB0_3
// %bb.5:                               //   in Loop: Header=BB0_4 Depth=1
	mov	x30, xzr
	mov	w11, w6
	b	.LBB0_8
.LBB0_6:                                //   in Loop: Header=BB0_8 Depth=2
	mov	x23, xzr
.LBB0_7:                                //   in Loop: Header=BB0_8 Depth=2
	bic	x19, x19, x21
	and	x7, x21, x7
	str	x20, [x5, x30]
	subs	w11, w11, #1
	orr	x7, x19, x7
	str	x7, [x0, x30]
	str	x23, [x4, x30]
	add	x30, x30, #8
	b.eq	.LBB0_2
.LBB0_8:                                //   Parent Loop BB0_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x23, [x4, x30]
	ldr	x22, [x2, x30]
	ldr	x19, [x0, x30]
	ldr	x7, [x3, x30]
	cbnz	x23, .LBB0_29
// %bb.9:                               //   in Loop: Header=BB0_8 Depth=2
	and	x23, x22, #0xf0
	cmp	w23, #240
	b.ne	.LBB0_76
// %bb.10:                              //   in Loop: Header=BB0_8 Depth=2
	mvn	w20, w7
	mov	w21, #255                       // =0xff
	tst	x20, #0xf0
	cset	w20, eq
	tst	x7, #0xf8
	csinc	w20, w20, wzr, ne
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=2
	and	x23, x22, #0xf000
	cmp	w23, #15, lsl #12               // =61440
	b.ne	.LBB0_78
// %bb.12:                              //   in Loop: Header=BB0_8 Depth=2
	mvn	w23, w7
	tst	x7, #0xf800
	orr	x21, x21, #0xff00
	and	x23, x23, #0xf000
	ccmp	x23, #0, #4, ne
	orr	x23, x20, #0x100
	csel	x20, x23, x20, eq
.LBB0_13:                               //   in Loop: Header=BB0_8 Depth=2
	and	x23, x22, #0xf00000
	cmp	x23, #3840, lsl #12             // =15728640
	b.ne	.LBB0_80
// %bb.14:                              //   in Loop: Header=BB0_8 Depth=2
	mvn	w23, w7
	tst	x7, #0xf80000
	orr	x21, x21, #0xff0000
	and	x23, x23, #0xf00000
	ccmp	x23, #0, #4, ne
	orr	x23, x20, #0x10000
	csel	x20, x23, x20, eq
.LBB0_15:                               //   in Loop: Header=BB0_8 Depth=2
	and	x23, x22, #0xf0000000
	cmp	w23, w12
	b.ne	.LBB0_82
// %bb.16:                              //   in Loop: Header=BB0_8 Depth=2
	mvn	w23, w7
	tst	x7, #0xf8000000
	orr	x21, x21, #0xff000000
	and	x23, x23, #0xf0000000
	ccmp	x23, #0, #4, ne
	orr	x23, x20, #0x1000000
	csel	x20, x23, x20, eq
.LBB0_17:                               //   in Loop: Header=BB0_8 Depth=2
	and	x23, x22, #0xf000000000
	cmp	x23, x13
	b.ne	.LBB0_84
// %bb.18:                              //   in Loop: Header=BB0_8 Depth=2
	bic	x23, x13, x7
	tst	x7, #0xf800000000
	orr	x21, x21, #0xff00000000
	ccmp	x23, #0, #4, ne
	orr	x23, x20, #0x100000000
	csel	x20, x23, x20, eq
.LBB0_19:                               //   in Loop: Header=BB0_8 Depth=2
	and	x23, x22, #0xf00000000000
	cmp	x23, x14
	b.ne	.LBB0_86
// %bb.20:                              //   in Loop: Header=BB0_8 Depth=2
	bic	x23, x14, x7
	tst	x7, #0xf80000000000
	orr	x21, x21, #0xff0000000000
	ccmp	x23, #0, #4, ne
	orr	x23, x20, #0x10000000000
	csel	x20, x23, x20, eq
.LBB0_21:                               //   in Loop: Header=BB0_8 Depth=2
	and	x23, x22, #0xf0000000000000
	cmp	x23, x15
	b.ne	.LBB0_88
// %bb.22:                              //   in Loop: Header=BB0_8 Depth=2
	bic	x23, x15, x7
	tst	x7, #0xf8000000000000
	orr	x21, x21, #0xff000000000000
	ccmp	x23, #0, #4, ne
	orr	x23, x20, #0x1000000000000
	csel	x20, x23, x20, eq
.LBB0_23:                               //   in Loop: Header=BB0_8 Depth=2
	lsr	x23, x22, #60
	cmp	x23, #15
	b.lo	.LBB0_90
// %bb.24:                              //   in Loop: Header=BB0_8 Depth=2
	lsr	x22, x7, #59
	orr	x21, x21, #0xff00000000000000
	cmp	x22, #30
	b.hi	.LBB0_27
// %bb.25:                              //   in Loop: Header=BB0_8 Depth=2
	ands	x22, x7, #0xf800000000000000
	b.eq	.LBB0_27
// %bb.26:                              //   in Loop: Header=BB0_8 Depth=2
	cmp	x22, x16
	b.ne	.LBB0_6
.LBB0_27:                               //   in Loop: Header=BB0_8 Depth=2
	mov	x23, xzr
.LBB0_28:                               //   in Loop: Header=BB0_8 Depth=2
	orr	x20, x20, #0x100000000000000
	b	.LBB0_7
.LBB0_29:                               //   in Loop: Header=BB0_8 Depth=2
	ldr	x20, [x5, x30]
	ldr	x25, [x1, x30]
	tst	x23, #0xff
	b.eq	.LBB0_33
// %bb.30:                              //   in Loop: Header=BB0_8 Depth=2
	mvn	w21, w25
	and	x26, x21, #0xf0
	tst	x21, x29
	mov	x21, xzr
	ccmp	x26, #0, #4, ne
	b.ne	.LBB0_35
// %bb.31:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x19, #0xf0
	cmp	x26, #240
	b.ne	.LBB0_35
// %bb.32:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xff
	cbnz	x26, .LBB0_35
.LBB0_33:                               //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xf0
	and	x20, x20, #0xffffffffffffff00
	and	x23, x23, #0xffffffffffffff00
	cmp	w26, #240
	b.ne	.LBB0_122
// %bb.34:                              //   in Loop: Header=BB0_8 Depth=2
	mvn	w21, w7
	tst	x21, #0xf0
	cset	w21, eq
	tst	x7, #0xf8
	csinc	w21, w21, wzr, ne
	orr	x20, x20, x21
	mov	w21, #255                       // =0xff
.LBB0_35:                               //   in Loop: Header=BB0_8 Depth=2
	tst	x23, #0xff00
	b.eq	.LBB0_39
.LBB0_36:                               //   in Loop: Header=BB0_8 Depth=2
	mvn	w26, w25
	mov	w29, #59392                     // =0xe800
	and	x27, x26, #0xf000
	tst	x26, x29
	ccmp	x27, #0, #4, ne
	b.ne	.LBB0_116
// %bb.37:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x19, #0xf000
	cmp	x26, #15, lsl #12               // =61440
	b.ne	.LBB0_116
// %bb.38:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xff00
	mov	x27, #962072674304              // =0xe000000000
	mov	w29, #232                       // =0xe8
	cbnz	x26, .LBB0_41
.LBB0_39:                               //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xf000
	and	x20, x20, #0xffffffffffff00ff
	and	x23, x23, #0xffffffffffff00ff
	cmp	w26, #15, lsl #12               // =61440
	b.ne	.LBB0_124
// %bb.40:                              //   in Loop: Header=BB0_8 Depth=2
	mvn	w26, w7
	tst	x7, #0xf800
	orr	x21, x21, #0xff00
	and	x26, x26, #0xf000
	ccmp	x26, #0, #4, ne
	orr	x26, x20, #0x100
	csel	x20, x26, x20, eq
.LBB0_41:                               //   in Loop: Header=BB0_8 Depth=2
	tst	x23, #0xff0000
	b.eq	.LBB0_45
.LBB0_42:                               //   in Loop: Header=BB0_8 Depth=2
	mvn	w26, w25
	and	x27, x26, #0xf00000
	tst	x26, x28
	ccmp	x27, #0, #4, ne
	b.ne	.LBB0_118
// %bb.43:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x19, #0xf00000
	cmp	x26, #3840, lsl #12             // =15728640
	b.ne	.LBB0_118
// %bb.44:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xff0000
	mov	x27, #962072674304              // =0xe000000000
	cbnz	x26, .LBB0_47
.LBB0_45:                               //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xf00000
	and	x20, x20, #0xffffffffff00ffff
	and	x23, x23, #0xffffffffff00ffff
	cmp	x26, #3840, lsl #12             // =15728640
	b.ne	.LBB0_128
// %bb.46:                              //   in Loop: Header=BB0_8 Depth=2
	mvn	w26, w7
	tst	x7, #0xf80000
	orr	x21, x21, #0xff0000
	and	x26, x26, #0xf00000
	ccmp	x26, #0, #4, ne
	orr	x26, x20, #0x10000
	csel	x20, x26, x20, eq
.LBB0_47:                               //   in Loop: Header=BB0_8 Depth=2
	tst	x23, #0xff000000
	b.eq	.LBB0_51
// %bb.48:                              //   in Loop: Header=BB0_8 Depth=2
	mvn	w26, w25
	mov	w28, #-402653184                // =0xe8000000
	and	x27, x26, #0xf0000000
	tst	x26, x28
	ccmp	x27, #0, #4, ne
	b.ne	.LBB0_119
// %bb.49:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x19, #0xf0000000
	cmp	x26, x12
	b.ne	.LBB0_119
// %bb.50:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xff000000
	mov	x27, #962072674304              // =0xe000000000
	mov	w28, #15204352                  // =0xe80000
	cbnz	x26, .LBB0_53
.LBB0_51:                               //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xf0000000
	and	x20, x20, #0xffffffff00ffffff
	and	x23, x23, #0xffffffff00ffffff
	cmp	w26, w12
	b.ne	.LBB0_132
// %bb.52:                              //   in Loop: Header=BB0_8 Depth=2
	mvn	w26, w7
	tst	x7, #0xf8000000
	orr	x21, x21, #0xff000000
	and	x26, x26, #0xf0000000
	ccmp	x26, #0, #4, ne
	orr	x26, x20, #0x1000000
	csel	x20, x26, x20, eq
.LBB0_53:                               //   in Loop: Header=BB0_8 Depth=2
	tst	x23, #0xff00000000
	b.eq	.LBB0_57
// %bb.54:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x17, #996432412672              // =0xe800000000
	bic	x26, x13, x25
	bics	xzr, x17, x25
	ccmp	x26, #0, #4, ne
	b.ne	.LBB0_121
// %bb.55:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x19, #0xf000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	cmp	x26, x13
	b.ne	.LBB0_59
// %bb.56:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xff00000000
	cbnz	x26, .LBB0_59
.LBB0_57:                               //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xf000000000
	and	x20, x20, #0xffffff00ffffffff
	and	x23, x23, #0xffffff00ffffffff
	cmp	x26, x13
	b.ne	.LBB0_134
// %bb.58:                              //   in Loop: Header=BB0_8 Depth=2
	bic	x26, x13, x7
	tst	x7, #0xf800000000
	orr	x21, x21, #0xff00000000
	ccmp	x26, #0, #4, ne
	orr	x26, x20, #0x100000000
	csel	x20, x26, x20, eq
.LBB0_59:                               //   in Loop: Header=BB0_8 Depth=2
	tst	x23, #0xff0000000000
	b.eq	.LBB0_63
// %bb.60:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x28, #255086697644032           // =0xe80000000000
	bic	x26, x14, x25
	bics	xzr, x28, x25
	ccmp	x26, #0, #4, ne
	b.ne	.LBB0_120
// %bb.61:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x19, #0xf00000000000
	cmp	x26, x14
	b.ne	.LBB0_120
// %bb.62:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xff0000000000
	mov	w28, #15204352                  // =0xe80000
	cbnz	x26, .LBB0_65
.LBB0_63:                               //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xf00000000000
	and	x20, x20, #0xffff00ffffffffff
	and	x23, x23, #0xffff00ffffffffff
	cmp	x26, x14
	b.ne	.LBB0_138
// %bb.64:                              //   in Loop: Header=BB0_8 Depth=2
	bic	x26, x14, x7
	tst	x7, #0xf80000000000
	orr	x21, x21, #0xff0000000000
	ccmp	x26, #0, #4, ne
	orr	x26, x20, #0x10000000000
	csel	x20, x26, x20, eq
.LBB0_65:                               //   in Loop: Header=BB0_8 Depth=2
	tst	x23, #0xff000000000000
	b.eq	.LBB0_69
// %bb.66:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x29, #65302194596872192         // =0xe8000000000000
	bic	x26, x15, x25
	bics	xzr, x29, x25
	ccmp	x26, #0, #4, ne
	b.ne	.LBB0_164
// %bb.67:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x19, #0xf0000000000000
	mov	w29, #232                       // =0xe8
	cmp	x26, x15
	b.ne	.LBB0_71
// %bb.68:                              //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xff000000000000
	cbnz	x26, .LBB0_71
.LBB0_69:                               //   in Loop: Header=BB0_8 Depth=2
	and	x26, x22, #0xf0000000000000
	and	x20, x20, #0xff00ffffffffffff
	and	x23, x23, #0xff00ffffffffffff
	cmp	x26, x15
	b.ne	.LBB0_140
// %bb.70:                              //   in Loop: Header=BB0_8 Depth=2
	bic	x26, x15, x7
	tst	x7, #0xf8000000000000
	orr	x21, x21, #0xff000000000000
	ccmp	x26, #0, #4, ne
	orr	x26, x20, #0x1000000000000
	csel	x20, x26, x20, eq
.LBB0_71:                               //   in Loop: Header=BB0_8 Depth=2
	lsr	x26, x23, #56
	cbnz	x26, .LBB0_165
.LBB0_72:                               //   in Loop: Header=BB0_8 Depth=2
	lsr	x25, x22, #60
	and	x20, x20, #0xffffffffffffff
	cmp	x25, #15
	b.lo	.LBB0_172
// %bb.73:                              //   in Loop: Header=BB0_8 Depth=2
	lsr	x22, x7, #59
	orr	x21, x21, #0xff00000000000000
	mov	x25, #63050394783186944         // =0xe0000000000000
	mov	x26, #246290604621824           // =0xe00000000000
	cmp	x22, #30
	b.hi	.LBB0_28
// %bb.74:                              //   in Loop: Header=BB0_8 Depth=2
	ands	x22, x7, #0xf800000000000000
	b.eq	.LBB0_28
// %bb.75:                              //   in Loop: Header=BB0_8 Depth=2
	cmp	x22, x16
	b.eq	.LBB0_28
	b	.LBB0_7
.LBB0_76:                               //   in Loop: Header=BB0_8 Depth=2
	cbnz	w23, .LBB0_93
// %bb.77:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x21, xzr
	and	x19, x19, #0xffffffffffffff00
	mov	w20, #1                         // =0x1
	b	.LBB0_11
.LBB0_78:                               //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffffffff00ff
	cbnz	w23, .LBB0_95
// %bb.79:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x20, x20, #0x100
	b	.LBB0_13
.LBB0_80:                               //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffffff00ffff
	cbnz	x23, .LBB0_97
// %bb.81:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x20, x20, #0x10000
	b	.LBB0_15
.LBB0_82:                               //   in Loop: Header=BB0_8 Depth=2
	cbnz	w23, .LBB0_99
// %bb.83:                              //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffff00ffffff
	orr	x20, x20, #0x1000000
	b	.LBB0_17
.LBB0_84:                               //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffff00ffffffff
	cbnz	x23, .LBB0_101
// %bb.85:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x20, x20, #0x100000000
	b	.LBB0_19
.LBB0_86:                               //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffff00ffffffffff
	cbnz	x23, .LBB0_103
// %bb.87:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x20, x20, #0x10000000000
	b	.LBB0_21
.LBB0_88:                               //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xff00ffffffffffff
	cbnz	x23, .LBB0_105
// %bb.89:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x20, x20, #0x1000000000000
	b	.LBB0_23
.LBB0_90:                               //   in Loop: Header=BB0_8 Depth=2
	and	x22, x22, #0xf000000000000000
	and	x19, x19, #0xffffffffffffff
	cmp	x22, x17
	b.eq	.LBB0_107
// %bb.91:                              //   in Loop: Header=BB0_8 Depth=2
	cbz	x22, .LBB0_27
// %bb.92:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x23, xzr
	orr	x19, x19, x22
	b	.LBB0_7
.LBB0_93:                               //   in Loop: Header=BB0_8 Depth=2
	cmp	w23, #224
	b.ne	.LBB0_108
// %bb.94:                              //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffffffffff00
	mov	x21, xzr
	mov	w20, #1                         // =0x1
	orr	x19, x19, #0xf0
	b	.LBB0_11
.LBB0_95:                               //   in Loop: Header=BB0_8 Depth=2
	cmp	w23, #14, lsl #12               // =57344
	b.ne	.LBB0_109
// %bb.96:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf000
	orr	x20, x20, #0x100
	b	.LBB0_13
.LBB0_97:                               //   in Loop: Header=BB0_8 Depth=2
	cmp	x23, #3584, lsl #12             // =14680064
	b.ne	.LBB0_110
// %bb.98:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf00000
	orr	x20, x20, #0x10000
	b	.LBB0_15
.LBB0_99:                               //   in Loop: Header=BB0_8 Depth=2
	mov	w28, #-536870912                // =0xe0000000
	and	x19, x19, #0xffffffff00ffffff
	cmp	w23, w28
	b.ne	.LBB0_111
// %bb.100:                             //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf0000000
	orr	x20, x20, #0x1000000
	b	.LBB0_112
.LBB0_101:                              //   in Loop: Header=BB0_8 Depth=2
	cmp	x23, x27
	b.ne	.LBB0_113
// %bb.102:                             //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf000000000
	orr	x20, x20, #0x100000000
	b	.LBB0_19
.LBB0_103:                              //   in Loop: Header=BB0_8 Depth=2
	cmp	x23, x26
	b.ne	.LBB0_114
// %bb.104:                             //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf00000000000
	orr	x20, x20, #0x10000000000
	b	.LBB0_21
.LBB0_105:                              //   in Loop: Header=BB0_8 Depth=2
	cmp	x23, x25
	b.ne	.LBB0_115
// %bb.106:                             //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf0000000000000
	orr	x20, x20, #0x1000000000000
	b	.LBB0_23
.LBB0_107:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x23, xzr
	orr	x19, x19, #0xf000000000000000
	b	.LBB0_28
.LBB0_108:                              //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffffffffff00
	mov	x21, xzr
	mov	x20, xzr
	orr	x19, x19, x23
	b	.LBB0_11
.LBB0_109:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x23
	b	.LBB0_13
.LBB0_110:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x23
	b	.LBB0_15
.LBB0_111:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x23
.LBB0_112:                              //   in Loop: Header=BB0_8 Depth=2
	mov	w28, #15204352                  // =0xe80000
	b	.LBB0_17
.LBB0_113:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x23
	b	.LBB0_19
.LBB0_114:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x23
	b	.LBB0_21
.LBB0_115:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x23
	b	.LBB0_23
.LBB0_116:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #962072674304              // =0xe000000000
.LBB0_117:                              //   in Loop: Header=BB0_8 Depth=2
	mov	w29, #232                       // =0xe8
	tst	x23, #0xff0000
	b.ne	.LBB0_42
	b	.LBB0_45
.LBB0_118:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #962072674304              // =0xe000000000
	b	.LBB0_47
.LBB0_119:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #962072674304              // =0xe000000000
	mov	w28, #15204352                  // =0xe80000
	b	.LBB0_53
.LBB0_120:                              //   in Loop: Header=BB0_8 Depth=2
	mov	w28, #15204352                  // =0xe80000
	b	.LBB0_65
.LBB0_121:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	b	.LBB0_59
.LBB0_122:                              //   in Loop: Header=BB0_8 Depth=2
	cbnz	w26, .LBB0_142
// %bb.123:                             //   in Loop: Header=BB0_8 Depth=2
	mov	x21, xzr
	and	x19, x19, #0xffffffffffffff00
	orr	x20, x20, #0x1
	b	.LBB0_157
.LBB0_124:                              //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffffffff00ff
	cbz	w26, .LBB0_127
// %bb.125:                             //   in Loop: Header=BB0_8 Depth=2
	cmp	w26, #14, lsl #12               // =57344
	b.ne	.LBB0_150
// %bb.126:                             //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf000
.LBB0_127:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x20, x20, #0x100
	b	.LBB0_151
.LBB0_128:                              //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffffff00ffff
	cbz	x26, .LBB0_131
// %bb.129:                             //   in Loop: Header=BB0_8 Depth=2
	cmp	x26, #3584, lsl #12             // =14680064
	b.ne	.LBB0_152
// %bb.130:                             //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf00000
.LBB0_131:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x20, x20, #0x10000
	b	.LBB0_153
.LBB0_132:                              //   in Loop: Header=BB0_8 Depth=2
	cbnz	w26, .LBB0_144
// %bb.133:                             //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffff00ffffff
	orr	x20, x20, #0x1000000
	b	.LBB0_159
.LBB0_134:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #962072674304              // =0xe000000000
	and	x19, x19, #0xffffff00ffffffff
	cbz	x26, .LBB0_137
// %bb.135:                             //   in Loop: Header=BB0_8 Depth=2
	cmp	x26, x27
	b.ne	.LBB0_154
// %bb.136:                             //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf000000000
.LBB0_137:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x20, x20, #0x100000000
	b	.LBB0_155
.LBB0_138:                              //   in Loop: Header=BB0_8 Depth=2
	cbnz	x26, .LBB0_146
// %bb.139:                             //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffff00ffffffffff
	orr	x20, x20, #0x10000000000
	b	.LBB0_161
.LBB0_140:                              //   in Loop: Header=BB0_8 Depth=2
	cbnz	x26, .LBB0_148
// %bb.141:                             //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xff00ffffffffffff
	orr	x20, x20, #0x1000000000000
	b	.LBB0_163
.LBB0_142:                              //   in Loop: Header=BB0_8 Depth=2
	cmp	w26, #224
	b.ne	.LBB0_156
// %bb.143:                             //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffffffffff00
	mov	x21, xzr
	orr	x20, x20, #0x1
	orr	x19, x19, #0xf0
	b	.LBB0_157
.LBB0_144:                              //   in Loop: Header=BB0_8 Depth=2
	mov	w27, #-536870912                // =0xe0000000
	and	x19, x19, #0xffffffff00ffffff
	cmp	w26, w27
	b.ne	.LBB0_158
// %bb.145:                             //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf0000000
	orr	x20, x20, #0x1000000
	b	.LBB0_159
.LBB0_146:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #246290604621824           // =0xe00000000000
	and	x19, x19, #0xffff00ffffffffff
	cmp	x26, x27
	b.ne	.LBB0_160
// %bb.147:                             //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf00000000000
	orr	x20, x20, #0x10000000000
	b	.LBB0_161
.LBB0_148:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #63050394783186944         // =0xe0000000000000
	and	x19, x19, #0xff00ffffffffffff
	cmp	x26, x27
	b.ne	.LBB0_162
// %bb.149:                             //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, #0xf0000000000000
	orr	x20, x20, #0x1000000000000
	b	.LBB0_163
.LBB0_150:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x26
.LBB0_151:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #962072674304              // =0xe000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	mov	w28, #15204352                  // =0xe80000
	b	.LBB0_117
.LBB0_152:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x26
.LBB0_153:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #962072674304              // =0xe000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	mov	w28, #15204352                  // =0xe80000
	mov	w29, #232                       // =0xe8
	b	.LBB0_47
.LBB0_154:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x26
.LBB0_155:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	mov	w28, #15204352                  // =0xe80000
	mov	w29, #232                       // =0xe8
	b	.LBB0_59
.LBB0_156:                              //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffffffffff00
	mov	x21, xzr
	orr	x19, x19, x26
.LBB0_157:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #962072674304              // =0xe000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	mov	w28, #15204352                  // =0xe80000
	mov	w29, #232                       // =0xe8
	tst	x23, #0xff00
	b.ne	.LBB0_36
	b	.LBB0_39
.LBB0_158:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x26
.LBB0_159:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #962072674304              // =0xe000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	mov	w28, #15204352                  // =0xe80000
	mov	w29, #232                       // =0xe8
	b	.LBB0_53
.LBB0_160:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x26
.LBB0_161:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #962072674304              // =0xe000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	mov	w28, #15204352                  // =0xe80000
	mov	w29, #232                       // =0xe8
	b	.LBB0_65
.LBB0_162:                              //   in Loop: Header=BB0_8 Depth=2
	orr	x19, x19, x26
.LBB0_163:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x27, #962072674304              // =0xe000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	mov	w28, #15204352                  // =0xe80000
.LBB0_164:                              //   in Loop: Header=BB0_8 Depth=2
	mov	w29, #232                       // =0xe8
	lsr	x26, x23, #56
	cbz	x26, .LBB0_72
.LBB0_165:                              //   in Loop: Header=BB0_8 Depth=2
	lsr	x26, x25, #60
	mov	x17, #-1729382256910270464      // =0xe800000000000000
	bics	xzr, x17, x25
	ccmp	x26, #15, #2, ne
	b.lo	.LBB0_170
// %bb.166:                             //   in Loop: Header=BB0_8 Depth=2
	lsr	x25, x19, #60
	mov	x26, #246290604621824           // =0xe00000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	cmp	x25, #15
	b.lo	.LBB0_171
// %bb.167:                             //   in Loop: Header=BB0_8 Depth=2
	lsr	x22, x22, #56
	mov	x25, #63050394783186944         // =0xe0000000000000
	cbnz	x22, .LBB0_7
// %bb.168:                             //   in Loop: Header=BB0_8 Depth=2
	and	x20, x20, #0xffffffffffffff
	and	x23, x23, #0xffffffffffffff
.LBB0_169:                              //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffffffffff
	b	.LBB0_28
.LBB0_170:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x25, #63050394783186944         // =0xe0000000000000
	mov	x26, #246290604621824           // =0xe00000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	b	.LBB0_7
.LBB0_171:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x25, #63050394783186944         // =0xe0000000000000
	b	.LBB0_7
.LBB0_172:                              //   in Loop: Header=BB0_8 Depth=2
	and	x22, x22, #0xf000000000000000
	cmp	x22, x17
	b.eq	.LBB0_175
// %bb.173:                             //   in Loop: Header=BB0_8 Depth=2
	cbnz	x22, .LBB0_176
// %bb.174:                             //   in Loop: Header=BB0_8 Depth=2
	mov	x25, #63050394783186944         // =0xe0000000000000
	mov	x26, #246290604621824           // =0xe00000000000
	mov	x27, #962072674304              // =0xe000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	mov	w28, #15204352                  // =0xe80000
	mov	w29, #232                       // =0xe8
	b	.LBB0_169
.LBB0_175:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x22, #-1152921504606846976      // =0xf000000000000000
	orr	x20, x20, #0x100000000000000
	bfxil	x22, x19, #0, #56
	mov	x19, x22
	b	.LBB0_177
.LBB0_176:                              //   in Loop: Header=BB0_8 Depth=2
	and	x19, x19, #0xffffffffffffff
	orr	x19, x19, x22
.LBB0_177:                              //   in Loop: Header=BB0_8 Depth=2
	mov	x25, #63050394783186944         // =0xe0000000000000
	mov	x26, #246290604621824           // =0xe00000000000
	mov	x27, #962072674304              // =0xe000000000
	mov	x17, #-2305843009213693952      // =0xe000000000000000
	mov	w28, #15204352                  // =0xe80000
	mov	w29, #232                       // =0xe8
	b	.LBB0_7
.LBB0_178:
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
.LBB0_179:
	ret
.Lfunc_end0:
	.size	refresh_new_image, .Lfunc_end0-refresh_new_image
                                        // -- End function
	.globl	refresh_new_image_auto          // -- Begin function refresh_new_image_auto
	.p2align	2
	.type	refresh_new_image_auto,@function
	.word	2870776468                      // 0xab1c9294
refresh_new_image_auto:                 // @refresh_new_image_auto
// %bb.0:
	ldr	w8, [x3, #1140]
	ldr	w9, [x3, #1136]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w11, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB1_8
// %bb.1:
	asr	w11, w11, #3
	mov	w10, wzr
	mov	w12, #255                       // =0xff
	b	.LBB1_3
.LBB1_2:                                //   in Loop: Header=BB1_3 Depth=1
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB1_8
.LBB1_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_6 Depth 2
	cmp	w8, #8
	b.lt	.LBB1_2
// %bb.4:                               //   in Loop: Header=BB1_3 Depth=1
	mov	w13, w11
	b	.LBB1_6
.LBB1_5:                                //   in Loop: Header=BB1_6 Depth=2
	subs	w13, w13, #1
	add	x2, x2, #8
	add	x0, x0, #8
	b.eq	.LBB1_2
.LBB1_6:                                //   Parent Loop BB1_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x14, [x1], #8
	ldr	x15, [x0]
	cmp	x14, x15
	b.eq	.LBB1_5
// %bb.7:                               //   in Loop: Header=BB1_6 Depth=2
	ldr	x16, [x2]
	tst	x16, #0xff
	csel	x17, x12, xzr, eq
	tst	x16, #0xff00
	orr	x3, x17, #0xff00
	csel	x17, x3, x17, eq
	tst	x16, #0xff0000
	orr	x3, x17, #0xff0000
	csel	x17, x3, x17, eq
	tst	x16, #0xff000000
	orr	x3, x17, #0xff000000
	csel	x17, x3, x17, eq
	tst	x16, #0xff00000000
	orr	x3, x17, #0xff00000000
	csel	x17, x3, x17, eq
	tst	x16, #0xff0000000000
	orr	x3, x17, #0xff0000000000
	csel	x17, x3, x17, eq
	tst	x16, #0xff000000000000
	lsr	x16, x16, #56
	orr	x3, x17, #0xff000000000000
	csel	x17, x3, x17, eq
	cmp	x16, #0
	orr	x3, x17, #0xff00000000000000
	csel	x16, x3, x17, eq
	bic	x15, x15, x16
	and	x14, x16, x14
	orr	x14, x15, x14
	str	x14, [x0]
	b	.LBB1_5
.LBB1_8:
	ret
.Lfunc_end1:
	.size	refresh_new_image_auto, .Lfunc_end1-refresh_new_image_auto
                                        // -- End function
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
.Lfunc_end2:
	.size	ebc_exit, .Lfunc_end2-ebc_exit
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
.Lfunc_end3:
	.size	ebc_init, .Lfunc_end3-ebc_init
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
	mov	w1, #2296                       // =0x8f8
	mov	w2, #3520                       // =0xdc0
	bl	devm_kmalloc
	cbz	x0, .LBB4_6
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
	cbnz	w0, .LBB4_8
// %bb.2:
	ldr	x0, [sp, #32]
	cbz	x0, .LBB4_8
// %bb.3:
	bl	of_find_device_by_node
	cbz	x0, .LBB4_5
// %bb.4:
	ldr	x8, [x0, #168]
	str	x8, [x21, #8]
	cbnz	x8, .LBB4_10
.LBB4_5:
	mov	w0, #-517                       // =0xfffffdfb
	b	.LBB4_7
.LBB4_6:
	mov	w0, #-12                        // =0xfffffff4
.LBB4_7:
	ldp	x20, x19, [sp, #192]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #208
	ldr	x30, [x18, #-8]!
	ret
.LBB4_8:
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
.LBB4_9:
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-19                        // =0xffffffed
	b	.LBB4_7
.LBB4_10:
	adrp	x9, frame_done_callback
	add	x9, x9, :lo12:frame_done_callback
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	mov	x0, x19
	str	x9, [x8, #232]
	bl	nvmem_cell_get
	cmn	x0, #4095
	b.lo	.LBB4_12
// %bb.11:
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	b	.LBB4_25
.LBB4_12:
	add	x1, sp, #8
	mov	x22, x0
	bl	nvmem_cell_read
	mov	x23, x0
	mov	x0, x22
	bl	nvmem_cell_put
	cmn	x23, #4095
	b.lo	.LBB4_14
// %bb.13:
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	b	.LBB4_25
.LBB4_14:
	ldrb	w8, [x23]
	cmp	w8, #51
	b.eq	.LBB4_19
// %bb.15:
	cmp	w8, #53
	b.ne	.LBB4_24
// %bb.16:
	ldrb	w8, [x23, #1]
	mov	w22, #3566                      // =0xdee
	cmp	w8, #103
	b.gt	.LBB4_21
// %bb.17:
	cmp	w8, #6
	b.eq	.LBB4_28
// %bb.18:
	cmp	w8, #102
	b.eq	.LBB4_29
	b	.LBB4_24
.LBB4_19:
	ldrb	w8, [x23, #1]
	mov	w22, #3326                      // =0xcfe
	cmp	w8, #38
	b.eq	.LBB4_29
// %bb.20:
	cmp	w8, #48
	b.eq	.LBB4_29
	b	.LBB4_24
.LBB4_21:
	cmp	w8, #104
	b.eq	.LBB4_29
// %bb.22:
	cmp	w8, #118
	b.ne	.LBB4_24
// %bb.23:
	mov	w22, #3576                      // =0xdf8
	b	.LBB4_29
.LBB4_24:
	mov	x0, x23
	bl	kfree
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
.LBB4_25:
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
	b.hs	.LBB4_27
// %bb.26:
	adrp	x8, .Lswitch.table.ebc_probe.236
	add	x8, x8, :lo12:.Lswitch.table.ebc_probe.236
	ldr	w22, [x8, w0, uxtw #2]
	b	.LBB4_30
.LBB4_27:
	mov	w22, #-1                        // =0xffffffff
	b	.LBB4_30
.LBB4_28:
	mov	w22, #3506                      // =0xdb2
.LBB4_29:
	mov	x0, x23
	bl	kfree
.LBB4_30:
	ldr	x0, [x20, #712]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	add	x2, sp, #20
	bl	of_get_property
	ldr	w9, [sp, #20]
	asr	w8, w9, #2
	cmp	w9, #4
	str	w8, [sp, #20]
	b.hs	.LBB4_32
// %bb.31:
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-22                        // =0xffffffea
	b	.LBB4_7
.LBB4_32:
	cmp	w8, #1
	b.lt	.LBB4_84
// %bb.33:
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
	b	.LBB4_37
.LBB4_34:                               //   in Loop: Header=BB4_37 Depth=1
	mov	x0, x19
	mov	x1, x26
.LBB4_35:                               //   in Loop: Header=BB4_37 Depth=1
	bl	_dev_warn
.LBB4_36:                               //   in Loop: Header=BB4_37 Depth=1
	ldr	w8, [sp, #20]
	add	x24, x24, #1
	cmp	w24, w8
	b.ge	.LBB4_49
.LBB4_37:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [x23, x24, lsl #2]
	rev	w0, w8
	bl	of_find_node_by_phandle
	cbz	x0, .LBB4_46
// %bb.38:                              //   in Loop: Header=BB4_37 Depth=1
	add	x0, x0, #24
	bl	i2c_find_device_by_fwnode
	cbz	x0, .LBB4_47
// %bb.39:                              //   in Loop: Header=BB4_37 Depth=1
	ldr	x8, [x0, #184]
	mov	x22, x0
	str	x8, [x21, #16]
	cbnz	x8, .LBB4_48
// %bb.40:                              //   in Loop: Header=BB4_37 Depth=1
	add	x0, x22, #32
	mov	x1, x25
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #24]
	b.hs	.LBB4_34
// %bb.41:                              //   in Loop: Header=BB4_37 Depth=1
	add	x0, x22, #32
	add	x2, sp, #24
	mov	x1, x27
	bl	device_property_read_string
	cbnz	w0, .LBB4_44
// %bb.42:                              //   in Loop: Header=BB4_37 Depth=1
	ldr	x0, [sp, #24]
	bl	thermal_zone_get_zone_by_name
	cmn	x0, #4095
	str	x0, [x21, #104]
	b.hs	.LBB4_45
// %bb.43:                              //   in Loop: Header=BB4_37 Depth=1
	mov	w28, #1                         // =0x1
	b	.LBB4_36
.LBB4_44:                               //   in Loop: Header=BB4_37 Depth=1
	mov	x0, x19
	adrp	x1, .L.str.18
	add	x1, x1, :lo12:.L.str.18
	b	.LBB4_35
.LBB4_45:                               //   in Loop: Header=BB4_37 Depth=1
	mov	x0, x19
	adrp	x1, .L.str.19
	add	x1, x1, :lo12:.L.str.19
	bl	_dev_err
	b	.LBB4_36
.LBB4_46:
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	b	.LBB4_9
.LBB4_47:
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	b	.LBB4_9
.LBB4_48:
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	mov	x0, x19
	mov	w2, w24
	bl	_dev_info
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	b	.LBB4_50
.LBB4_49:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w28, #0, .LBB4_84
.LBB4_50:
	cmp	w8, #3326
	str	x19, [x21, #1456]
	str	w8, [x21, #1996]
	str	wzr, [x21, #2288]
	b.eq	.LBB4_53
// %bb.51:
	cmp	w8, #3506
	b.eq	.LBB4_53
// %bb.52:
	adrp	x1, .L.str.21
	add	x1, x1, :lo12:.L.str.21
	mov	x0, x19
	bl	device_property_present
	tbz	w0, #0, .LBB4_54
.LBB4_53:
	mov	w8, #1                          // =0x1
	str	w8, [x21, #2288]
.LBB4_54:
	mov	x23, x21
	adrp	x1, .L.str.22
	add	x1, x1, :lo12:.L.str.22
	str	x19, [x23, #112]!
	mov	x0, x19
	ldp	x8, x9, [x23, #-104]
	stp	x8, x9, [x23, #8]
	bl	device_property_present
	tbz	w0, #0, .LBB4_56
// %bb.55:
	mov	w8, #3576                       // =0xdf8
	str	w8, [x21, #2000]
.LBB4_56:
	adrp	x1, .L.str.23
	add	x1, x1, :lo12:.L.str.23
	mov	x0, x19
	bl	device_property_present
	tbz	w0, #0, .LBB4_58
// %bb.57:
	mov	w8, #1                          // =0x1
	str	w8, [x21, #1944]
.LBB4_58:
	mov	x0, x21
	bl	ebc_panel_probe
	cbnz	w0, .LBB4_85
// %bb.59:
	ldp	w9, w8, [x21, #188]
	ldr	w10, [x21, #2288]
	str	w8, [x21, #1440]
	str	w9, [x21, #1444]
	cbnz	w10, .LBB4_86
.LBB4_60:
	ldr	w8, [x21, #264]
	cmp	w8, #230
	b.ne	.LBB4_80
// %bb.61:
	ldr	w8, [x21, #276]
	cbnz	w8, .LBB4_89
// %bb.62:
	ldr	w8, [x21, #284]
	cbnz	w8, .LBB4_89
// %bb.63:
	adrp	x1, .L.str.27
	add	x1, x1, :lo12:.L.str.27
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #32]
	b.lo	.LBB4_65
// %bb.64:
	adrp	x1, .L.str.28
	add	x1, x1, :lo12:.L.str.28
	mov	x0, x19
	bl	_dev_warn
.LBB4_65:
	adrp	x1, .L.str.29
	add	x1, x1, :lo12:.L.str.29
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #40]
	b.lo	.LBB4_67
// %bb.66:
	adrp	x1, .L.str.30
	add	x1, x1, :lo12:.L.str.30
	mov	x0, x19
	bl	_dev_warn
.LBB4_67:
	adrp	x1, .L.str.31
	add	x1, x1, :lo12:.L.str.31
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #48]
	b.lo	.LBB4_69
// %bb.68:
	adrp	x1, .L.str.32
	add	x1, x1, :lo12:.L.str.32
	mov	x0, x19
	bl	_dev_warn
.LBB4_69:
	adrp	x1, .L.str.33
	add	x1, x1, :lo12:.L.str.33
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #56]
	b.lo	.LBB4_71
// %bb.70:
	adrp	x1, .L.str.34
	add	x1, x1, :lo12:.L.str.34
	mov	x0, x19
	bl	_dev_warn
.LBB4_71:
	adrp	x1, .L.str.35
	add	x1, x1, :lo12:.L.str.35
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #64]
	b.lo	.LBB4_73
// %bb.72:
	adrp	x1, .L.str.36
	add	x1, x1, :lo12:.L.str.36
	mov	x0, x19
	bl	_dev_warn
.LBB4_73:
	adrp	x1, .L.str.37
	add	x1, x1, :lo12:.L.str.37
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #72]
	b.lo	.LBB4_75
// %bb.74:
	adrp	x1, .L.str.38
	add	x1, x1, :lo12:.L.str.38
	mov	x0, x19
	bl	_dev_warn
.LBB4_75:
	adrp	x1, .L.str.39
	add	x1, x1, :lo12:.L.str.39
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #80]
	b.lo	.LBB4_77
// %bb.76:
	adrp	x1, .L.str.40
	add	x1, x1, :lo12:.L.str.40
	mov	x0, x19
	bl	_dev_warn
.LBB4_77:
	adrp	x1, .L.str.41
	add	x1, x1, :lo12:.L.str.41
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #88]
	b.lo	.LBB4_79
// %bb.78:
	adrp	x1, .L.str.42
	add	x1, x1, :lo12:.L.str.42
	mov	x0, x19
	bl	_dev_warn
.LBB4_79:
	ldr	x8, [x21, #24]
	str	x8, [x21, #96]
.LBB4_80:
	add	x0, x21, #304
	bl	ebc_lut_table_init
	cbnz	w0, .LBB4_92
// %bb.81:
	mov	x0, x21
	bl	ebc_ability_init
	mov	x0, x21
	bl	ebc_buffer_manage_init
	cbnz	w0, .LBB4_93
// %bb.82:
	adrp	x8, __cpu_possible_mask
	ldrb	w0, [x8, :lo12:__cpu_possible_mask]
	bl	__sw_hweight64
	str	w0, [x21, #1940]
	add	x0, x21, #304
	bl	ebc_task_init
	cbnz	w0, .LBB4_94
// %bb.83:
	add	x0, x21, #304
	bl	ebc_other_init
	mov	x0, x21
	mov	x1, x23
	bl	ebc_logo_init
	add	x0, x21, #304
	str	x21, [x20, #168]
	bl	ebc_sysfs_init
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.46
	add	x1, x1, :lo12:.L.str.46
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	bl	_dev_info
	b	.LBB4_91
.LBB4_84:
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	mov	x0, x19
	bl	_dev_err
	b	.LBB4_5
.LBB4_85:
	mov	w20, w0
	adrp	x1, .L.str.24
	add	x1, x1, :lo12:.L.str.24
	mov	x0, x19
	mov	w2, w20
	bl	_dev_err
	mov	w0, w20
	b	.LBB4_7
.LBB4_86:
	ldr	w8, [x21, #276]
	cbnz	w8, .LBB4_88
// %bb.87:
	ldr	w8, [x21, #284]
	cbz	w8, .LBB4_60
.LBB4_88:
	adrp	x1, .L.str.25
	add	x1, x1, :lo12:.L.str.25
	b	.LBB4_90
.LBB4_89:
	adrp	x1, .L.str.26
	add	x1, x1, :lo12:.L.str.26
.LBB4_90:
	mov	x0, x19
	bl	_dev_err
.LBB4_91:
	mov	w0, wzr
	b	.LBB4_7
.LBB4_92:
	adrp	x1, .L.str.43
	add	x1, x1, :lo12:.L.str.43
	mov	w20, w0
	mov	x0, x19
	bl	_dev_err
	mov	w0, w20
	b	.LBB4_7
.LBB4_93:
	mov	w22, w0
	adrp	x1, .L.str.44
	add	x1, x1, :lo12:.L.str.44
	mov	x0, x19
	bl	_dev_err
	mov	w0, w22
	b	.LBB4_7
.LBB4_94:
	adrp	x1, .L.str.45
	add	x1, x1, :lo12:.L.str.45
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB4_7
.Lfunc_end4:
	.size	ebc_probe, .Lfunc_end4-ebc_probe
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
.Lfunc_end5:
	.size	ebc_remove, .Lfunc_end5-ebc_remove
                                        // -- End function
	.p2align	2                               // -- Begin function frame_done_callback
	.type	frame_done_callback,@function
	.word	2772461324                      // 0xa540670c
frame_done_callback:                    // @frame_done_callback
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	adrp	x20, global_ebc
	mov	x29, sp
	ldr	x19, [x20, :lo12:global_ebc]
	ldr	w8, [x19, #1560]
	cmp	w8, #3
	b.gt	.LBB6_7
// %bb.1:
	cmp	w8, #1
	b.eq	.LBB6_18
// %bb.2:
	cmp	w8, #3
	b.ne	.LBB6_14
// %bb.3:
	ldr	w8, [x19, #1452]
	cbz	w8, .LBB6_29
// %bb.4:
	ldr	w8, [x19, #1948]
	cmp	w8, #1
	mov	x8, x19
	b.ge	.LBB6_46
.LBB6_5:
	ldr	x0, [x8, #8]
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
.LBB6_6:
	adrp	x8, jiffies
	mov	w9, #335544320                  // =0x14000000
	add	x0, x19, #1856
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, x9
	bl	mod_timer
	str	wzr, [x19, #1412]
	b	.LBB6_40
.LBB6_7:
	cmp	w8, #5
	b.eq	.LBB6_27
// %bb.8:
	cmp	w8, #4
	b.ne	.LBB6_14
// %bb.9:
	ldr	w8, [x19, #1420]
	mov	w9, #1                          // =0x1
	str	w9, [x19, #1436]
	cbnz	w8, .LBB6_31
// %bb.10:
	ldr	w8, [x19, #1424]
	cbnz	w8, .LBB6_31
// %bb.11:
	ldr	w8, [x19, #1428]
	cbz	w8, .LBB6_31
// %bb.12:
	ldr	w8, [x19, #1948]
	cmp	w8, #1
	mov	x8, x19
	b.ge	.LBB6_48
.LBB6_13:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #240]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp3
	brk	#0x8228
.Ltmp3:
	blr	x8
	ldr	w8, [x19, #1444]
	ldr	w9, [x19, #1440]
	mov	w1, wzr
	ldr	x0, [x19, #1248]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	ldr	w8, [x19, #1444]
	ldr	w9, [x19, #1440]
	mov	w1, wzr
	ldr	x0, [x19, #1320]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	adrp	x8, jiffies
	mov	w9, #335544320                  // =0x14000000
	add	x0, x19, #1856
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, x9
	bl	mod_timer
	str	wzr, [x19, #1412]
	str	wzr, [x19, #1436]
	b	.LBB6_40
.LBB6_14:
	ldr	w8, [x19, #1432]
	cbnz	w8, .LBB6_28
// %bb.15:
	ldr	w8, [x19, #1988]
	cbz	w8, .LBB6_28
// %bb.16:
	ldr	x0, [x19, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #240]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp4
	brk	#0x8228
.Ltmp4:
	blr	x8
	ldr	w8, [x19, #1948]
	str	wzr, [x19, #1412]
	cmp	w8, #1
	b.lt	.LBB6_40
// %bb.17:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.51
	add	x1, x1, :lo12:.L.str.51
	bl	_dev_info
	b	.LBB6_40
.LBB6_18:
	ldr	w8, [x19, #1432]
	cbz	w8, .LBB6_32
.LBB6_19:
	ldr	w9, [x19, #1452]
	cbz	w9, .LBB6_21
// %bb.20:
	ldr	w9, [x19, #1896]
	cbz	w9, .LBB6_24
.LBB6_21:
	ldr	w9, [x19, #1924]
	cbz	w9, .LBB6_28
// %bb.22:
	ldr	x9, [x19, #1536]
	ldr	w9, [x9, #32]
	sub	w9, w9, #12
	cmp	w9, #2
	b.hi	.LBB6_28
// %bb.23:
	ldr	w9, [x19, #1448]
	cbz	w9, .LBB6_28
.LBB6_24:
	mov	x9, x19
	cbz	w8, .LBB6_33
// %bb.25:
	ldr	w8, [x19, #1948]
	mov	x9, x19
	cmp	w8, #1
	b.lt	.LBB6_33
// %bb.26:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.50
	add	x1, x1, :lo12:.L.str.50
	bl	_dev_info
	ldr	x9, [x20, :lo12:global_ebc]
	b	.LBB6_33
.LBB6_27:
	ldr	w8, [x19, #1432]
	cbz	w8, .LBB6_34
.LBB6_28:
	adrp	x8, ebc_auto_task
	mov	w9, #1                          // =0x1
	ldr	x0, [x8, :lo12:ebc_auto_task]
	str	w9, [x19, #1412]
	bl	wake_up_process
	b	.LBB6_41
.LBB6_29:
	ldr	w8, [x19, #1420]
	cbnz	w8, .LBB6_31
// %bb.30:
	ldr	w8, [x19, #1424]
	cbz	w8, .LBB6_43
.LBB6_31:
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	b	.LBB6_41
.LBB6_32:
	ldr	w10, [x19, #1988]
	mov	x9, x19
	cbz	w10, .LBB6_19
.LBB6_33:
	ldr	x0, [x9, #8]
	b	.LBB6_35
.LBB6_34:
	ldr	x0, [x19, #8]
.LBB6_35:
	ldr	x8, [x0, #240]
	mov	w1, wzr
	mov	w2, wzr
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp5
	brk	#0x8228
.Ltmp5:
	blr	x8
	ldr	w8, [x19, #1948]
	str	wzr, [x19, #1412]
	cmp	w8, #1
	b.ge	.LBB6_42
// %bb.36:
	ldr	w3, [x19, #2024]
	tbnz	w3, #31, .LBB6_40
.LBB6_37:
	ldr	w8, [x19, #1440]
	cmp	w3, w8
	b.ge	.LBB6_40
// %bb.38:
	ldr	w2, [x19, #2020]
	tbnz	w2, #31, .LBB6_40
// %bb.39:
	ldr	w8, [x19, #1444]
	cmp	w2, w8
	b.lt	.LBB6_47
.LBB6_40:
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1                          // =0x1
	bl	__wake_up_sync
.LBB6_41:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB6_42:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.51
	add	x1, x1, :lo12:.L.str.51
	bl	_dev_info
	ldr	w3, [x19, #2024]
	tbz	w3, #31, .LBB6_37
	b	.LBB6_40
.LBB6_43:
	ldr	w8, [x19, #1428]
	cbz	w8, .LBB6_31
// %bb.44:
	ldr	w8, [x19, #1948]
	cmp	w8, #1
	mov	x8, x19
	b.ge	.LBB6_49
.LBB6_45:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #240]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp6
	brk	#0x8228
.Ltmp6:
	blr	x8
	ldr	w8, [x19, #1444]
	ldr	w9, [x19, #1440]
	mov	w1, wzr
	ldr	x0, [x19, #1248]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	b	.LBB6_6
.LBB6_46:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.48
	add	x1, x1, :lo12:.L.str.48
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_5
.LBB6_47:
	ldrb	w8, [x19, #2028]
	ldr	x0, [x19, #1456]
	add	x4, x19, #2029
	adrp	x1, .L.str.53
	add	x1, x1, :lo12:.L.str.53
	strb	wzr, [x4, x8]
	bl	_dev_info
	b	.LBB6_40
.LBB6_48:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.47
	add	x1, x1, :lo12:.L.str.47
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_13
.LBB6_49:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.49
	add	x1, x1, :lo12:.L.str.49
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_45
.Lfunc_end6:
	.size	frame_done_callback, .Lfunc_end6-frame_done_callback
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_panel_probe
	.type	ebc_panel_probe,@function
ebc_panel_probe:                        // @ebc_panel_probe
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	mov	x2, x0
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	adrp	x1, .L.str.54
	add	x1, x1, :lo12:.L.str.54
	ldr	x21, [x2], #188
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x0
	mov	w3, #1                          // =0x1
	ldr	x0, [x21, #696]
	mov	x4, xzr
	mov	x29, sp
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.1:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.55
	add	x1, x1, :lo12:.L.str.55
	add	x2, x19, #192
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.2:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.56
	add	x1, x1, :lo12:.L.str.56
	add	x2, x19, #196
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.3:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.57
	add	x1, x1, :lo12:.L.str.57
	add	x2, x19, #200
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.4:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.58
	add	x1, x1, :lo12:.L.str.58
	add	x2, x19, #216
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.5:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.59
	add	x1, x1, :lo12:.L.str.59
	add	x2, x19, #220
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.6:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.60
	add	x1, x1, :lo12:.L.str.60
	add	x2, x19, #224
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.7:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.61
	add	x1, x1, :lo12:.L.str.61
	add	x2, x19, #228
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.8:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.62
	add	x1, x1, :lo12:.L.str.62
	add	x2, x19, #232
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.9:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.63
	add	x1, x1, :lo12:.L.str.63
	add	x2, x19, #236
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.10:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.64
	add	x1, x1, :lo12:.L.str.64
	add	x2, x19, #240
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.11:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.65
	add	x1, x1, :lo12:.L.str.65
	add	x2, x19, #244
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.12:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.66
	add	x1, x1, :lo12:.L.str.66
	add	x2, x19, #248
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.13:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.67
	add	x1, x1, :lo12:.L.str.67
	add	x2, x19, #252
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.14:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.68
	add	x1, x1, :lo12:.L.str.68
	add	x2, x19, #256
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_39
// %bb.15:
	ldr	x0, [x21, #696]
	add	x20, x19, #260
	adrp	x1, .L.str.69
	add	x1, x1, :lo12:.L.str.69
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_17
// %bb.16:
	str	wzr, [x20]
.LBB7_17:
	ldr	x0, [x21, #696]
	add	x20, x19, #264
	adrp	x1, .L.str.70
	add	x1, x1, :lo12:.L.str.70
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_19
// %bb.18:
	str	wzr, [x20]
.LBB7_19:
	ldr	x0, [x21, #696]
	add	x20, x19, #268
	adrp	x1, .L.str.71
	add	x1, x1, :lo12:.L.str.71
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_21
// %bb.20:
	str	wzr, [x20]
.LBB7_21:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.72
	add	x1, x1, :lo12:.L.str.72
	add	x2, x19, #204
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_23
// %bb.22:
	stur	wzr, [x19, #204]
.LBB7_23:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.73
	add	x1, x1, :lo12:.L.str.73
	add	x2, x19, #208
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_25
// %bb.24:
	stur	wzr, [x19, #208]
.LBB7_25:
	ldr	x0, [x21, #696]
	add	x20, x19, #272
	adrp	x1, .L.str.74
	add	x1, x1, :lo12:.L.str.74
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_27
// %bb.26:
	str	wzr, [x20]
.LBB7_27:
	ldr	x0, [x21, #696]
	add	x20, x19, #276
	adrp	x1, .L.str.75
	add	x1, x1, :lo12:.L.str.75
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_29
// %bb.28:
	str	wzr, [x20]
.LBB7_29:
	ldr	x0, [x21, #696]
	add	x20, x19, #288
	adrp	x1, .L.str.76
	add	x1, x1, :lo12:.L.str.76
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_31
// %bb.30:
	str	wzr, [x20]
.LBB7_31:
	ldr	x0, [x21, #696]
	add	x20, x19, #292
	adrp	x1, .L.str.77
	add	x1, x1, :lo12:.L.str.77
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_33
// %bb.32:
	str	wzr, [x20]
.LBB7_33:
	ldr	x0, [x21, #696]
	add	x20, x19, #280
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_35
// %bb.34:
	str	wzr, [x20]
.LBB7_35:
	ldr	x0, [x21, #696]
	add	x20, x19, #284
	adrp	x1, .L.str.79
	add	x1, x1, :lo12:.L.str.79
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	mov	w22, #1                         // =0x1
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_37
// %bb.36:
	str	wzr, [x20]
.LBB7_37:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.80
	add	x1, x1, :lo12:.L.str.80
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
	ldr	w8, [x19, #2288]
	cbz	w8, .LBB7_41
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
	b	.LBB7_40
.LBB7_39:
	mov	w0, #-22                        // =0xffffffea
.LBB7_40:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB7_41:
	mov	w0, wzr
	b	.LBB7_40
.Lfunc_end7:
	.size	ebc_panel_probe, .Lfunc_end7-ebc_panel_probe
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_lut_table_init
	.type	ebc_lut_table_init,@function
ebc_lut_table_init:                     // @ebc_lut_table_init
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #240
	stp	x20, x19, [sp, #224]            // 16-byte Folded Spill
	ldr	x20, [x0, #1152]
	mov	x19, x0
	stp	x22, x21, [sp, #208]            // 16-byte Folded Spill
	adrp	x1, .L.str.81
	add	x1, x1, :lo12:.L.str.81
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
	cbnz	w8, .LBB8_9
// %bb.1:
	ldur	x21, [x29, #-80]
	cbz	x21, .LBB8_9
// %bb.2:
	adrp	x1, .L.str.82
	add	x1, x1, :lo12:.L.str.82
	add	x2, sp, #12
	mov	x0, x22
	bl	of_get_property
	ldr	w1, [sp, #12]
	cmp	w1, #1
	b.lt	.LBB8_5
// %bb.3:
	bl	pvi_wf_add_custom_mode_table
	cbz	w0, .LBB8_5
// %bb.4:
	mov	w0, #-19                        // =0xffffffed
	b	.LBB8_9
.LBB8_5:
	add	x2, sp, #16
	mov	x0, x21
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB8_9
// %bb.6:
	ldp	x1, x8, [sp, #16]
	mov	x0, x20
	mov	w3, #1                          // =0x1
	sub	x8, x8, x1
	str	x1, [x19, #1096]
	add	x21, x8, #1
	sxtw	x2, w21
	str	w21, [x19, #1104]
	bl	devm_memremap
	str	x0, [x19, #1216]
	cbz	x0, .LBB8_10
// %bb.7:
	bl	epd_lut_from_mem_init
	tbnz	w0, #31, .LBB8_11
.LBB8_8:
	mov	w0, wzr
.LBB8_9:
	ldp	x20, x19, [sp, #224]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #208]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #240
	ldr	x30, [x18, #-8]!
	ret
.LBB8_10:
	ldr	x0, [x19, #1152]
	adrp	x1, .L.str.83
	add	x1, x1, :lo12:.L.str.83
	adrp	x2, .L__func__.ebc_lut_table_init
	add	x2, x2, :lo12:.L__func__.ebc_lut_table_init
	mov	w3, #4568                       // =0x11d8
	bl	_dev_err
	mov	w0, #-12                        // =0xfffffff4
	b	.LBB8_9
.LBB8_11:
	ldr	x0, [x19, #1152]
	adrp	x1, .L.str.84
	add	x1, x1, :lo12:.L.str.84
	bl	_dev_err
	ldr	x0, [x19, #1152]
	ldr	x1, [x19, #1216]
	mov	w2, w21
	bl	epd_lut_from_file_init
	tbz	w0, #31, .LBB8_8
// %bb.12:
	ldr	x0, [x19, #1152]
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB8_9
.Lfunc_end8:
	.size	ebc_lut_table_init, .Lfunc_end8-ebc_lut_table_init
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
	ldr	w8, [x19, #1996]
	cmp	w0, #32
	cset	w9, eq
	cmp	w8, #3576
	strb	w9, [x19, #1766]
	b.ne	.LBB9_2
// %bb.1:
	mov	w8, #1                          // =0x1
	b	.LBB9_3
.LBB9_2:
	ldr	w9, [x19, #2000]
	cmp	w8, #3572
	mov	w8, #3576                       // =0xdf8
	ccmp	w9, w8, #4, ne
	cset	w8, eq
.LBB9_3:
	ldr	w9, [x19, #2288]
	strb	w8, [x19, #1764]
	strb	w8, [x19, #1765]
	cbnz	w9, .LBB9_5
// %bb.4:
	ldr	w8, [x19, #264]
	cmp	w8, #230
	b.ne	.LBB9_10
.LBB9_5:
	mov	w8, wzr
.LBB9_6:
	ldr	w9, [x19, #2288]
	strb	w8, [x19, #1768]
	cbz	w9, .LBB9_8
// %bb.7:
	mov	w8, wzr
	b	.LBB9_9
.LBB9_8:
	ldr	w8, [x19, #264]
	cmp	w8, #230
	cset	w8, ne
.LBB9_9:
	strb	w8, [x19, #1767]
	adrp	x1, .L.str.87
	add	x1, x1, :lo12:.L.str.87
	ldr	x0, [x20, #696]
	mov	x2, xzr
	bl	of_find_property
	cmp	x0, #0
	cset	w8, eq
	strb	w8, [x19, #1769]
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB9_10:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.86
	add	x1, x1, :lo12:.L.str.86
	mov	x2, xzr
	bl	of_find_property
	cmp	x0, #0
	cset	w8, eq
	b	.LBB9_6
.Lfunc_end9:
	.size	ebc_ability_init, .Lfunc_end9-ebc_ability_init
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
	ldr	w9, [x0, #2288]
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	str	w8, [x0, #1388]
	cbz	w9, .LBB10_2
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
	b	.LBB10_5
.LBB10_2:
	ldr	w9, [x19, #264]
	cmp	w9, #230
	b.ne	.LBB10_4
// %bb.3:
	mov	w21, wzr
	lsr	w8, w8, #1
	b	.LBB10_5
.LBB10_4:
	lsr	w8, w8, #2
	mov	w21, wzr
.LBB10_5:
	sxtw	x2, w8
	add	x1, x19, #304
	mov	x0, x20
	str	w8, [x19, #1392]
	bl	ebc_alloc_dma_cma_buf
	cbnz	w0, .LBB10_79
// %bb.6:
	ldp	x8, x9, [x19, #304]
	add	x1, x19, #376
	ldr	x10, [x19, #320]
	ldrsw	x2, [x19, #1392]
	mov	x0, x20
	stp	x9, x8, [x19, #136]
	str	x10, [x19, #152]
	bl	ebc_alloc_dma_cma_buf
	cbnz	w0, .LBB10_80
// %bb.7:
	ldp	x8, x0, [x19, #376]
	ldr	x9, [x19, #392]
	ldr	w10, [x19, #2288]
	str	x9, [x19, #176]
	stp	x0, x8, [x19, #160]
	cbz	w10, .LBB10_43
// %bb.8:
	ldr	x11, [x19, #120]
	ldr	w8, [x11, #112]
	cbz	w8, .LBB10_40
// %bb.9:
	ldr	w12, [x19, #288]
	ldr	w11, [x11, #108]
	mov	x9, xzr
	mov	w10, wzr
	mov	w15, wzr
	mov	w14, wzr
	cmp	w12, #0
	mov	w12, #1                         // =0x1
	cset	w13, ne
	b	.LBB10_11
.LBB10_10:                              //   in Loop: Header=BB10_11 Depth=1
	add	w10, w10, #1
	add	x9, x9, x11
	cmp	w10, w8
	b.eq	.LBB10_39
.LBB10_11:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB10_15 Depth 2
	cbz	w11, .LBB10_10
// %bb.12:                              //   in Loop: Header=BB10_11 Depth=1
	mov	x16, xzr
	b	.LBB10_15
.LBB10_13:                              //   in Loop: Header=BB10_15 Depth=2
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
.LBB10_14:                              //   in Loop: Header=BB10_15 Depth=2
	add	x16, x16, #1
	cmp	x11, x16
	b.eq	.LBB10_10
.LBB10_15:                              //   Parent Loop BB10_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldp	w0, w17, [x19, #244]
	add	w17, w17, w0
	cmp	w10, w17
	b.hs	.LBB10_19
// %bb.16:                              //   in Loop: Header=BB10_15 Depth=2
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
	b.lo	.LBB10_21
// %bb.17:                              //   in Loop: Header=BB10_15 Depth=2
	ldr	w2, [x19, #228]
	add	w0, w2, w0
	cmp	x16, x0
	b.hs	.LBB10_21
// %bb.18:                              //   in Loop: Header=BB10_15 Depth=2
	mov	w0, wzr
	b	.LBB10_22
.LBB10_19:                              //   in Loop: Header=BB10_15 Depth=2
	ldr	w14, [x19, #252]
	add	w14, w14, w17
	cmp	w10, w14
	b.ls	.LBB10_23
// %bb.20:                              //   in Loop: Header=BB10_15 Depth=2
	ldr	w15, [x19, #288]
	mov	w14, wzr
	cmp	w15, #0
	csel	w13, wzr, w13, eq
	b	.LBB10_24
.LBB10_21:                              //   in Loop: Header=BB10_15 Depth=2
	mov	w0, #1                          // =0x1
.LBB10_22:                              //   in Loop: Header=BB10_15 Depth=2
	tst	w15, #0xff
	mov	w15, w1
	cset	w2, eq
	tst	w2, w1
	csinc	w14, w14, wzr, eq
	b	.LBB10_34
.LBB10_23:                              //   in Loop: Header=BB10_15 Depth=2
	mov	w13, #1                         // =0x1
	mov	w14, #1                         // =0x1
.LBB10_24:                              //   in Loop: Header=BB10_15 Depth=2
	ldr	w17, [x19, #220]
	ldr	w15, [x19, #236]
	add	w15, w15, w17
	cmp	x16, x15
	b.lo	.LBB10_27
// %bb.25:                              //   in Loop: Header=BB10_15 Depth=2
	ldr	w0, [x19, #240]
	add	w15, w0, w15
	cmp	x16, x15
	b.hs	.LBB10_27
// %bb.26:                              //   in Loop: Header=BB10_15 Depth=2
	mov	w15, #1                         // =0x1
	b	.LBB10_28
.LBB10_27:                              //   in Loop: Header=BB10_15 Depth=2
	mov	w15, wzr
.LBB10_28:                              //   in Loop: Header=BB10_15 Depth=2
	ldr	w0, [x19, #224]
	add	w0, w0, w17
	cmp	x16, x0
	b.lo	.LBB10_33
// %bb.29:                              //   in Loop: Header=BB10_15 Depth=2
	ldr	w1, [x19, #292]
	cbnz	w1, .LBB10_31
// %bb.30:                              //   in Loop: Header=BB10_15 Depth=2
	ldr	w1, [x19, #228]
.LBB10_31:                              //   in Loop: Header=BB10_15 Depth=2
	add	w0, w1, w0
	cmp	x16, x0
	b.hs	.LBB10_33
// %bb.32:                              //   in Loop: Header=BB10_15 Depth=2
	mov	w0, wzr
	b	.LBB10_34
.LBB10_33:                              //   in Loop: Header=BB10_15 Depth=2
	mov	w0, #1                          // =0x1
.LBB10_34:                              //   in Loop: Header=BB10_15 Depth=2
	ldr	x1, [x19, #120]
	mov	w17, w17
	ldr	w1, [x1, #116]
	cmp	w1, #2
	b.eq	.LBB10_13
// %bb.35:                              //   in Loop: Header=BB10_15 Depth=2
	ldr	w4, [x19, #260]
	ldr	x1, [x19, #136]
	and	w3, w14, #0xff
	add	w2, w9, w16
	cbz	w4, .LBB10_37
// %bb.36:                              //   in Loop: Header=BB10_15 Depth=2
	and	w4, w13, #0xff
	cmp	x16, x17
	lsl	w4, w4, #23
	orr	w0, w4, w0, lsl #16
	and	w4, w12, #0xff
	orr	w0, w0, w4, lsl #22
	orr	w0, w0, w15, lsl #18
	orr	w17, w0, w3, lsl #21
	cset	w0, lo
	orr	w17, w17, w0, lsl #19
	b	.LBB10_38
.LBB10_37:                              //   in Loop: Header=BB10_15 Depth=2
	lsl	w0, w0, #11
	and	w4, w12, #0xff
	cmp	x16, x17
	bfi	w0, w13, #12, #8
	orr	w0, w0, w4, lsl #15
	orr	w0, w0, w15, lsl #14
	orr	w17, w0, w3, lsl #13
	cset	w0, lo
	orr	w17, w17, w0, lsl #10
.LBB10_38:                              //   in Loop: Header=BB10_15 Depth=2
	orr	w17, w17, #0xff000000
	str	w17, [x1, w2, uxtw #2]
	b	.LBB10_14
.LBB10_39:
	ldr	x0, [x19, #160]
.LBB10_40:
	ldr	x1, [x19, #136]
	ldr	x2, [x19, #152]
	bl	memcpy
	ldr	w8, [x19, #2288]
	cbz	w8, .LBB10_43
// %bb.41:
	ldr	x8, [x19, #120]
	ldr	x10, [x19, #136]
	ldr	x11, [x19, #160]
	ldr	w9, [x8, #116]
	mul	w9, w9, w21
	add	x9, x10, x9
	str	x9, [x19, #1496]
	ldr	w9, [x8, #116]
	mul	w9, w9, w21
	add	x9, x11, x9
	str	x9, [x19, #1504]
	ldr	w9, [x8, #116]
	mul	w9, w9, w21
	add	x9, x10, x9
	str	x9, [x19, #1496]
	ldr	w8, [x8, #116]
	mul	w8, w8, w21
	add	x8, x11, x8
	str	x8, [x19, #1504]
	bl	ebc_buf_list_init
	cbz	w0, .LBB10_44
.LBB10_42:
	adrp	x1, .L.str.89
	add	x1, x1, :lo12:.L.str.89
	b	.LBB10_92
.LBB10_43:
	ldr	x8, [x19, #136]
	ldr	x9, [x19, #160]
	str	x8, [x19, #1496]
	str	x9, [x19, #1504]
	bl	ebc_buf_list_init
	cbnz	w0, .LBB10_42
.LBB10_44:
	ldr	x0, [x20, #696]
	add	x22, x19, #1384
	adrp	x1, .L.str.90
	add	x1, x1, :lo12:.L.str.90
	mov	x2, x22
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB10_46
// %bb.45:
	ldr	w8, [x22]
	cmp	w8, #2
	b.gt	.LBB10_47
.LBB10_46:
	mov	w8, #4                          // =0x4
	str	w8, [x22]
.LBB10_47:
	mov	x21, xzr
	add	x23, x19, #448
.LBB10_48:                              // =>This Inner Loop Header: Depth=1
	ldrsw	x2, [x19, #1388]
	mov	x0, x20
	mov	x1, x23
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB10_82
// %bb.49:                              //   in Loop: Header=BB10_48 Depth=1
	ldp	x1, x2, [x23, #8]
	mov	w0, w21
	str	w21, [x23, #24]
	bl	ebc_dsp_buf_init
	cbnz	w0, .LBB10_77
// %bb.50:                              //   in Loop: Header=BB10_48 Depth=1
	ldrsw	x8, [x22]
	add	x21, x21, #1
	add	x23, x23, #72
	cmp	x21, x8
	b.lt	.LBB10_48
// %bb.51:
	ldrb	w8, [x19, #1768]
	cmp	w8, #1
	b.ne	.LBB10_54
// %bb.52:
	ldrsw	x2, [x19, #1388]
	add	x1, x19, #880
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB10_87
// %bb.53:
	ldr	w0, [x19, #1384]
	ldr	x1, [x19, #888]
	ldr	x2, [x19, #896]
	str	w0, [x19, #904]
	bl	ebc_osd_buf_init
	cbnz	w0, .LBB10_77
.LBB10_54:
	add	x1, x19, #736
	mov	x0, x20
	mov	w2, #1048576                    // =0x100000
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB10_78
// %bb.55:
	ldr	x9, [x19, #744]
	ldrb	w8, [x19, #1768]
	str	x9, [x19, #1480]
	tbz	w8, #0, .LBB10_58
// %bb.56:
	add	x1, x19, #808
	mov	x0, x20
	mov	w2, #1048576                    // =0x100000
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB10_78
// %bb.57:
	ldrb	w8, [x19, #1768]
	ldr	x9, [x19, #816]
	cmp	w8, #1
	str	x9, [x19, #1488]
	b.eq	.LBB10_59
.LBB10_58:
	str	xzr, [x19, #1488]
.LBB10_59:
	ldrb	w9, [x19, #1769]
	cmp	w9, #1
	b.ne	.LBB10_62
// %bb.60:
	ldrsw	x2, [x19, #1388]
	add	x1, x19, #952
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB10_90
// %bb.61:
	ldrb	w8, [x19, #1768]
.LBB10_62:
	tbnz	w8, #0, .LBB10_65
// %bb.63:
	ldrb	w8, [x19, #1764]
	tbnz	w8, #0, .LBB10_65
// %bb.64:
	ldrb	w9, [x19, #1767]
	cmp	w9, #1
	b.ne	.LBB10_76
.LBB10_65:
	ldrsw	x2, [x19, #1388]
	add	x1, x19, #1240
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB10_83
// %bb.66:
	ldr	x0, [x19, #1248]
	ldrsw	x2, [x19, #1388]
	mov	w1, wzr
	bl	memset
	ldrsw	x2, [x19, #1388]
	add	x1, x19, #1024
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB10_84
// %bb.67:
	ldrsw	x2, [x19, #1388]
	add	x1, x19, #1096
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB10_85
// %bb.68:
	ldrb	w8, [x19, #1764]
	tbz	w8, #0, .LBB10_71
.LBB10_69:
	ldrsw	x2, [x19, #1388]
	add	x1, x19, #1168
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB10_91
// %bb.70:
	ldr	x0, [x19, #1176]
	ldrsw	x2, [x19, #1388]
	mov	w1, #240                        // =0xf0
	bl	memset
.LBB10_71:
	ldrb	w8, [x19, #1768]
	tbnz	w8, #0, .LBB10_73
// %bb.72:
	ldrb	w8, [x19, #1767]
	cmp	w8, #1
	b.ne	.LBB10_75
.LBB10_73:
	ldrsw	x2, [x19, #1388]
	add	x1, x19, #1312
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB10_86
// %bb.74:
	ldr	x0, [x19, #1320]
	ldrsw	x2, [x19, #1388]
	mov	w1, wzr
	bl	memset
.LBB10_75:
	mov	w0, wzr
	b	.LBB10_95
.LBB10_76:
	cbnz	w8, .LBB10_69
	b	.LBB10_71
.LBB10_77:
	adrp	x1, .L.str.92
	add	x1, x1, :lo12:.L.str.92
	b	.LBB10_88
.LBB10_78:
	mov	w21, w0
	adrp	x1, .L.str.94
	add	x1, x1, :lo12:.L.str.94
	mov	x0, x20
	mov	w2, w21
	b	.LBB10_93
.LBB10_79:
	mov	w21, w0
	mov	w2, wzr
	b	.LBB10_81
.LBB10_80:
	mov	w21, w0
	mov	w2, #1                          // =0x1
.LBB10_81:
	adrp	x1, .L.str.88
	add	x1, x1, :lo12:.L.str.88
	mov	x0, x20
	mov	w3, w21
	b	.LBB10_89
.LBB10_82:
	adrp	x1, .L.str.91
	add	x1, x1, :lo12:.L.str.91
	b	.LBB10_88
.LBB10_83:
	adrp	x1, .L.str.96
	add	x1, x1, :lo12:.L.str.96
	b	.LBB10_92
.LBB10_84:
	adrp	x1, .L.str.97
	add	x1, x1, :lo12:.L.str.97
	b	.LBB10_92
.LBB10_85:
	adrp	x1, .L.str.98
	add	x1, x1, :lo12:.L.str.98
	b	.LBB10_92
.LBB10_86:
	adrp	x1, .L.str.100
	add	x1, x1, :lo12:.L.str.100
	b	.LBB10_92
.LBB10_87:
	adrp	x1, .L.str.93
	add	x1, x1, :lo12:.L.str.93
.LBB10_88:
	mov	w3, w0
	mov	x0, x20
	mov	w2, w21
	mov	w21, w3
.LBB10_89:
	bl	_dev_err
	b	.LBB10_94
.LBB10_90:
	adrp	x1, .L.str.95
	add	x1, x1, :lo12:.L.str.95
	b	.LBB10_92
.LBB10_91:
	adrp	x1, .L.str.99
	add	x1, x1, :lo12:.L.str.99
.LBB10_92:
	mov	w2, w0
	mov	x0, x20
	mov	w21, w2
.LBB10_93:
	bl	_dev_err
.LBB10_94:
	mov	x0, x19
	bl	ebc_buffer_manage_uninit
	mov	w0, w21
.LBB10_95:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end10:
	.size	ebc_buffer_manage_init, .Lfunc_end10-ebc_buffer_manage_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_task_init
	.type	ebc_task_init,@function
ebc_task_init:                          // @ebc_task_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x0
	mov	x29, sp
	mov	w8, #99                         // =0x63
	adrp	x0, ebc_auto_task_function
	add	x0, x0, :lo12:ebc_auto_task_function
	adrp	x3, .L.str.101
	add	x3, x3, :lo12:.L.str.101
	mov	x1, x19
	mov	w2, #-1                         // =0xffffffff
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	str	w8, [x29, #28]
	bl	kthread_create_on_node
	adrp	x20, ebc_auto_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_auto_task]
	b.hs	.LBB11_20
// %bb.1:
	add	x2, x29, #28
	mov	w1, #1                          // =0x1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #1636]
	cmp	w8, #8
	b.lt	.LBB11_3
// %bb.2:
	ldr	x0, [x20, :lo12:ebc_auto_task]
	adrp	x1, cpu_bit_bitmap+56
	add	x1, x1, :lo12:cpu_bit_bitmap+56
	bl	set_cpus_allowed_ptr
.LBB11_3:
	ldr	x8, [x20, :lo12:ebc_auto_task]
	add	x0, x8, #64
	//APP
.Ltmp7:
	b	.LBB11_27
.Ltmp8:
	.section	.altinstructions,"a",@progbits
.Ltmp9:
	.word	.Ltmp7-.Ltmp9
.Ltmp10:
	.word	alt_cb_patch_nops-.Ltmp10
	.hword	32805
	.byte	.Ltmp8-.Ltmp7
	.byte	.Ltmp11-.Ltmp12
	.text

.Ltmp12:
.Ltmp11:

	//NO_APP
// %bb.4:
	mov	w8, #1                          // =0x1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB11_28
.LBB11_5:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB11_24
.LBB11_6:
	adrp	x0, ebc_auto_assist_task_function
	add	x0, x0, :lo12:ebc_auto_assist_task_function
	adrp	x3, .L.str.103
	add	x3, x3, :lo12:.L.str.103
	mov	x1, x19
	mov	w2, #-1                         // =0xffffffff
	bl	kthread_create_on_node
	adrp	x20, ebc_auto_assist_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_auto_assist_task]
	b.hs	.LBB11_21
// %bb.7:
	add	x2, x29, #28
	mov	w1, #1                          // =0x1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #1636]
	cmp	w8, #8
	b.lt	.LBB11_9
// %bb.8:
	ldr	x0, [x20, :lo12:ebc_auto_assist_task]
	adrp	x1, cpu_bit_bitmap+64
	add	x1, x1, :lo12:cpu_bit_bitmap+64
	bl	set_cpus_allowed_ptr
.LBB11_9:
	ldr	x8, [x20, :lo12:ebc_auto_assist_task]
	add	x0, x8, #64
	//APP
.Ltmp13:
	b	.LBB11_30
.Ltmp14:
	.section	.altinstructions,"a",@progbits
.Ltmp15:
	.word	.Ltmp13-.Ltmp15
.Ltmp16:
	.word	alt_cb_patch_nops-.Ltmp16
	.hword	32805
	.byte	.Ltmp14-.Ltmp13
	.byte	.Ltmp17-.Ltmp18
	.text

.Ltmp18:
.Ltmp17:

	//NO_APP
// %bb.10:
	mov	w8, #1                          // =0x1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB11_31
.LBB11_11:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB11_25
.LBB11_12:
	mov	w8, #99                         // =0x63
	adrp	x0, ebc_thread
	add	x0, x0, :lo12:ebc_thread
	adrp	x3, .L.str.105
	add	x3, x3, :lo12:.L.str.105
	mov	x1, x19
	mov	w2, #-1                         // =0xffffffff
	str	w8, [x29, #28]
	bl	kthread_create_on_node
	cmn	x0, #4095
	b.hs	.LBB11_22
// %bb.13:
	mov	x20, x0
	bl	wake_up_process
	adrp	x21, ebc_task
	add	x2, x29, #28
	mov	x0, x20
	mov	w1, #1                          // =0x1
	str	x20, [x21, :lo12:ebc_task]
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #1636]
	cmp	w8, #8
	b.lt	.LBB11_15
// %bb.14:
	ldr	x0, [x21, :lo12:ebc_task]
	adrp	x1, cpu_bit_bitmap+48
	add	x1, x1, :lo12:cpu_bit_bitmap+48
	bl	set_cpus_allowed_ptr
.LBB11_15:
	ldr	x8, [x21, :lo12:ebc_task]
	add	x0, x8, #64
	//APP
.Ltmp19:
	b	.LBB11_33
.Ltmp20:
	.section	.altinstructions,"a",@progbits
.Ltmp21:
	.word	.Ltmp19-.Ltmp21
.Ltmp22:
	.word	alt_cb_patch_nops-.Ltmp22
	.hword	32805
	.byte	.Ltmp20-.Ltmp19
	.byte	.Ltmp23-.Ltmp24
	.text

.Ltmp24:
.Ltmp23:

	//NO_APP
// %bb.16:
	mov	w8, #1                          // =0x1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB11_34
.LBB11_17:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB11_26
.LBB11_18:
	mov	w0, wzr
.LBB11_19:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB11_20:
	ldr	x0, [x19, #1152]
	adrp	x1, .L.str.102
	add	x1, x1, :lo12:.L.str.102
	b	.LBB11_23
.LBB11_21:
	ldr	x0, [x19, #1152]
	adrp	x1, .L.str.104
	add	x1, x1, :lo12:.L.str.104
	b	.LBB11_23
.LBB11_22:
	ldr	x8, [x19, #1152]
	adrp	x9, ebc_task
	adrp	x1, .L.str.106
	add	x1, x1, :lo12:.L.str.106
	str	x0, [x9, :lo12:ebc_task]
	mov	x0, x8
.LBB11_23:
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB11_19
.LBB11_24:
	mov	w1, #1                          // =0x1
	b	.LBB11_29
.LBB11_25:
	mov	w1, #1                          // =0x1
	b	.LBB11_32
.LBB11_26:
	mov	w1, #1                          // =0x1
	b	.LBB11_35
.LBB11_27:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp25:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp25

	//NO_APP
	cbnz	w8, .LBB11_5
.LBB11_28:
	mov	w1, #2                          // =0x2
.LBB11_29:
	bl	refcount_warn_saturate
	b	.LBB11_6
.LBB11_30:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp26:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp26

	//NO_APP
	cbnz	w8, .LBB11_11
.LBB11_31:
	mov	w1, #2                          // =0x2
.LBB11_32:
	bl	refcount_warn_saturate
	b	.LBB11_12
.LBB11_33:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp27:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp27

	//NO_APP
	cbnz	w8, .LBB11_17
.LBB11_34:
	mov	w1, #2                          // =0x2
.LBB11_35:
	bl	refcount_warn_saturate
	b	.LBB11_18
.Lfunc_end11:
	.size	ebc_task_init, .Lfunc_end11-ebc_task_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_other_init
	.type	ebc_other_init,@function
ebc_other_init:                         // @ebc_other_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	add	x8, x0, #1604
	mov	x9, #4294967297                 // =0x100000001
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	w20, #1                         // =0x1
	str	x9, [x8]
	add	x8, x0, #1612
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	mov	x19, x0
	str	wzr, [x0, #1208]
	str	xzr, [x0, #1592]
	str	xzr, [x0, #1144]
	str	wzr, [x0, #1108]
	str	wzr, [x0, #1124]
	str	w20, [x0, #1256]
	str	xzr, [x8]
	str	wzr, [x0, #1628]
	bl	ebc_get_init_log_level
	ldrb	w8, [x19, #1460]
	str	w0, [x19, #1644]
	add	x0, x19, #1264
	strb	w20, [x19, #1704]
	str	w8, [x19, #1620]
	ldr	w8, [x19, #1140]
	str	w20, [x19, #1632]
	str	w8, [x19, #1668]
	mov	w8, #-1                         // =0xffffffff
	str	w8, [x19, #1700]
	str	w8, [x19, #1720]
	mov	x8, #-65486                     // =0xffffffffffff0032
	movk	x8, #0, lsl #16
	strh	wzr, [x19, #1660]
	str	x8, [x19, #1712]
	adrp	x8, .L.str.147
	add	x8, x8, :lo12:.L.str.147
	str	wzr, [x19, #1672]
	str	w20, [x19, #1684]
	str	xzr, [x19, #1272]
	str	xzr, [x19, #1280]
	str	xzr, [x19, #1288]
	str	xzr, [x19, #1296]
	str	xzr, [x19, #1304]
	str	xzr, [x19, #1312]
	str	xzr, [x19, #1320]
	str	xzr, [x19, #1328]
	str	xzr, [x19, #1336]
	str	xzr, [x19, #1344]
	str	xzr, [x19, #1352]
	str	xzr, [x19, #1360]
	str	xzr, [x19, #1368]
	str	xzr, [x19, #1376]
	str	xzr, [x19, #1384]
	str	xzr, [x19, #1392]
	str	xzr, [x19, #1400]
	str	xzr, [x19, #1408]
	str	xzr, [x19, #1416]
	str	xzr, [x19, #1424]
	str	xzr, [x19, #1432]
	str	xzr, [x19, #1440]
	str	xzr, [x19, #1448]
	str	x8, [x19, #1264]
	bl	wakeup_source_add
	adrp	x1, ebc_frame_control_timeout
	add	x1, x1, :lo12:ebc_frame_control_timeout
	add	x0, x19, #1472
	mov	w2, wzr
	mov	x3, xzr
	mov	x4, xzr
	str	wzr, [x19, #1456]
	bl	init_timer_key
	adrp	x20, jiffies
	mov	w21, #268435455                 // =0xfffffff
	add	x0, x19, #1472
	ldr	x8, [x20, :lo12:jiffies]
	add	x1, x8, x21
	bl	mod_timer
	adrp	x1, ebc_overlay_enable_timeout
	add	x1, x1, :lo12:ebc_overlay_enable_timeout
	add	x0, x19, #1512
	mov	w2, wzr
	mov	x3, xzr
	mov	x4, xzr
	bl	init_timer_key
	ldr	x8, [x20, :lo12:jiffies]
	add	x0, x19, #1512
	add	x1, x8, x21
	bl	mod_timer
	adrp	x1, ebc_frame_timeout
	add	x1, x1, :lo12:ebc_frame_timeout
	add	x0, x19, #1552
	mov	w2, wzr
	mov	x3, xzr
	mov	x4, xzr
	bl	init_timer_key
	ldr	x8, [x20, :lo12:jiffies]
	add	x0, x19, #1552
	add	x1, x8, x21
	bl	mod_timer
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end12:
	.size	ebc_other_init, .Lfunc_end12-ebc_other_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_logo_init
	.type	ebc_logo_init,@function
ebc_logo_init:                          // @ebc_logo_init
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #288
	adrp	x8, saved_command_line
	stp	x22, x21, [sp, #256]            // 16-byte Folded Spill
	mov	x21, x1
	ldr	x22, [x8, :lo12:saved_command_line]
	stp	x29, x30, [sp, #192]            // 16-byte Folded Spill
	add	x29, sp, #192
	stp	x20, x19, [sp, #272]            // 16-byte Folded Spill
	mov	x20, x0
	ldr	x19, [x0]
	adrp	x1, .L.str.150
	add	x1, x1, :lo12:.L.str.150
	mov	x0, x22
	stp	x28, x27, [sp, #208]            // 16-byte Folded Spill
	stp	x26, x25, [sp, #224]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #240]            // 16-byte Folded Spill
	stur	wzr, [x29, #-92]
	str	wzr, [sp, #96]
	bl	strstr
	mov	x25, x0
	adrp	x1, .L.str.151
	add	x1, x1, :lo12:.L.str.151
	mov	x0, x22
	bl	strstr
	mov	x26, x0
	ldr	x0, [x19, #696]
	adrp	x1, .L.str.152
	add	x1, x1, :lo12:.L.str.152
	sub	x5, x29, #88
	mov	x2, xzr
	ldp	w22, w23, [x21, #76]
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
	cbnz	w0, .LBB13_55
// %bb.1:
	ldur	x0, [x29, #-88]
	cbz	x0, .LBB13_55
// %bb.2:
	mov	x2, sp
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB13_51
// %bb.3:
	mul	w8, w23, w22
	ldp	x22, x9, [sp]
	lsr	w2, w8, #1
	sub	x8, x9, x22
	add	x8, x8, #1
	cmp	w2, w8
	b.gt	.LBB13_52
// %bb.4:
	mov	w23, w8
	mov	x0, x19
	mov	x1, x22
	mov	x2, x23
	mov	w3, #1                          // =0x1
	bl	devm_memremap
	cbz	x0, .LBB13_53
// %bb.5:
	mov	x24, x0
	cbz	x25, .LBB13_8
// %bb.6:
	adrp	x1, .L.str.156
	add	x1, x1, :lo12:.L.str.156
	sub	x2, x29, #92
	mov	x0, x25
	bl	sscanf
	ldur	w2, [x29, #-92]
	cmp	x22, x2
	b.ls	.LBB13_56
// %bb.7:
	mov	x25, xzr
.LBB13_8:
	mov	w27, #1                         // =0x1
	cbz	x26, .LBB13_58
.LBB13_9:
	adrp	x1, .L.str.159
	add	x1, x1, :lo12:.L.str.159
	add	x2, sp, #96
	mov	x0, x26
	bl	sscanf
	ldr	w2, [sp, #96]
	cmp	x22, x2
	b.ls	.LBB13_61
// %bb.10:
	mov	x26, xzr
	mov	w28, #1                         // =0x1
	cbnz	w27, .LBB13_59
.LBB13_11:
	adrp	x0, .L.str.163
	add	x0, x0, :lo12:.L.str.163
	bl	ebc_empty_buf_get
	cbz	x0, .LBB13_17
// %bb.12:
	ldp	w8, w9, [x21, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB13_15
// %bb.13:
	lsr	w8, w8, #1
	ldr	x10, [x0, #8]
	mov	x9, x25
.LBB13_14:                              // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x9], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w11, [x10, #1]
	strb	w12, [x10]
	add	x12, x10, #2
	mov	x10, x12
	b.ne	.LBB13_14
.LBB13_15:
	mov	w8, #7                          // =0x7
	str	xzr, [x0, #40]
	mov	w9, #1                          // =0x1
	str	w8, [x0, #32]
	ldr	w8, [x21, #76]
	str	w8, [x0, #48]
	ldr	w8, [x21, #80]
	stp	w8, w9, [x0, #52]
.LBB13_16:
	bl	ebc_add_to_dsp_buf_list
.LBB13_17:
	tbnz	w28, #0, .LBB13_23
// %bb.18:
	adrp	x0, .L.str.163
	add	x0, x0, :lo12:.L.str.163
	bl	ebc_empty_buf_get
	cbz	x0, .LBB13_23
// %bb.19:
	ldp	w8, w9, [x21, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB13_22
// %bb.20:
	lsr	w8, w8, #1
	ldr	x10, [x0, #8]
	mov	x9, x26
.LBB13_21:                              // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x9], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w11, [x10, #1]
	strb	w12, [x10]
	add	x12, x10, #2
	mov	x10, x12
	b.ne	.LBB13_21
.LBB13_22:
	mov	w8, #7                          // =0x7
	str	xzr, [x0, #40]
	mov	w9, #1                          // =0x1
	str	w8, [x0, #32]
	ldr	w8, [x21, #76]
	str	w8, [x0, #48]
	ldr	w8, [x21, #80]
	stp	w8, w9, [x0, #52]
	bl	ebc_add_to_dsp_buf_list
.LBB13_23:
	ldr	w8, [x20, #1448]
	cbnz	w8, .LBB13_25
// %bb.24:
	mov	w8, #1                          // =0x1
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1                          // =0x1
	str	w8, [x20, #1448]
	bl	__wake_up_sync
.LBB13_25:
	cbz	x25, .LBB13_27
.LBB13_26:
	mov	x0, x25
	bl	kfree
.LBB13_27:
	cbz	x26, .LBB13_29
// %bb.28:
	mov	x0, x26
	bl	kfree
.LBB13_29:
	mov	x0, x19
	mov	x1, x24
	bl	devm_memunmap
	add	x8, x22, x23
	and	x19, x22, #0xfffffffffffff000
	add	x8, x8, #4095
	and	x20, x8, #0xfffffffffffff000
	cmp	x19, x20
	b.hs	.LBB13_55
// %bb.30:
	lsr	x8, x22, #12
	mov	x9, #-8589934592                // =0xfffffffe00000000
	adrp	x22, memstart_addr
	movk	x9, #49152, lsl #16
	mov	x23, #281474976706560           // =0xfffffffff000
	adrp	x24, mem_section
	add	x21, x9, x8, lsl #6
	//APP
	mrs	x25, SP_EL0
	//NO_APP
	b	.LBB13_34
.LBB13_31:                              //   in Loop: Header=BB13_34 Depth=1
	//APP
	//NO_APP
	ldr	x8, [x25, #16]
	subs	x8, x8, #1
	str	w8, [x25, #16]
	b.eq	.LBB13_49
// %bb.32:                              //   in Loop: Header=BB13_34 Depth=1
	ldr	x8, [x25, #16]
	cbz	x8, .LBB13_49
.LBB13_33:                              //   in Loop: Header=BB13_34 Depth=1
	add	x19, x19, #1, lsl #12           // =4096
	add	x21, x21, #64
	cmp	x19, x20
	b.hs	.LBB13_55
.LBB13_34:                              // =>This Inner Loop Header: Depth=1
	cmp	x19, x23
	b.hi	.LBB13_33
// %bb.35:                              //   in Loop: Header=BB13_34 Depth=1
	ldr	x8, [x24, :lo12:mem_section]
	cbz	x8, .LBB13_38
// %bb.36:                              //   in Loop: Header=BB13_34 Depth=1
	lsr	x9, x19, #32
	and	x9, x9, #0xfffffff8
	ldr	x8, [x8, x9]
	cbz	x8, .LBB13_38
// %bb.37:                              //   in Loop: Header=BB13_34 Depth=1
	lsr	x9, x19, #27
	add	x8, x8, w9, uxtb #4
.LBB13_38:                              //   in Loop: Header=BB13_34 Depth=1
	ldr	x26, [x22, :lo12:memstart_addr]
	ldr	w9, [x25, #16]
	add	w9, w9, #1
	str	w9, [x25, #16]
	//APP
	//NO_APP
	cbz	x8, .LBB13_31
// %bb.39:                              //   in Loop: Header=BB13_34 Depth=1
	ldr	x9, [x8]
	tbz	w9, #1, .LBB13_31
// %bb.40:                              //   in Loop: Header=BB13_34 Depth=1
	tbnz	w9, #3, .LBB13_43
// %bb.41:                              //   in Loop: Header=BB13_34 Depth=1
	ldr	x8, [x8, #8]
	cbz	x8, .LBB13_44
// %bb.42:                              //   in Loop: Header=BB13_34 Depth=1
	lsr	x9, x19, #21
	ldr	x8, [x8, #16]
	lsr	x8, x8, x9
	and	w27, w8, #0x1
	b	.LBB13_45
.LBB13_43:                              //   in Loop: Header=BB13_34 Depth=1
	mov	w27, #1                         // =0x1
	b	.LBB13_45
.LBB13_44:                              //   in Loop: Header=BB13_34 Depth=1
	mov	w27, wzr
.LBB13_45:                              //   in Loop: Header=BB13_34 Depth=1
	//APP
	//NO_APP
	ldr	x8, [x25, #16]
	subs	x8, x8, #1
	str	w8, [x25, #16]
	b.eq	.LBB13_50
// %bb.46:                              //   in Loop: Header=BB13_34 Depth=1
	ldr	x8, [x25, #16]
	cbz	x8, .LBB13_50
// %bb.47:                              //   in Loop: Header=BB13_34 Depth=1
	cbz	w27, .LBB13_33
.LBB13_48:                              //   in Loop: Header=BB13_34 Depth=1
	asr	x8, x26, #12
	sub	x0, x21, x8, lsl #6
	bl	free_reserved_page
	b	.LBB13_33
.LBB13_49:                              //   in Loop: Header=BB13_34 Depth=1
	mov	w27, wzr
.LBB13_50:                              //   in Loop: Header=BB13_34 Depth=1
	bl	preempt_schedule
	cbnz	w27, .LBB13_48
	b	.LBB13_33
.LBB13_51:
	adrp	x1, .L.str.153
	add	x1, x1, :lo12:.L.str.153
	b	.LBB13_54
.LBB13_52:
	adrp	x1, .L.str.154
	add	x1, x1, :lo12:.L.str.154
	mov	x0, x19
	bl	_dev_err
	b	.LBB13_55
.LBB13_53:
	adrp	x1, .L.str.155
	add	x1, x1, :lo12:.L.str.155
.LBB13_54:
	mov	x0, x19
	bl	_dev_err
.LBB13_55:
	ldp	x20, x19, [sp, #272]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #256]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #240]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #224]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #208]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #288
	ldr	x30, [x18, #-8]!
	ret
.LBB13_56:
	ldr	x0, [x20, #1456]
	adrp	x1, .L.str.157
	add	x1, x1, :lo12:.L.str.157
                                        // kill: def $w2 killed $w2 killed $x2
	bl	_dev_info
	ldp	w9, w8, [x21, #76]
	mov	w1, #3520                       // =0xdc0
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc_noprof
	cbz	x0, .LBB13_65
// %bb.57:
	ldp	w8, w9, [x21, #76]
	mov	x25, x0
	mul	w8, w9, w8
	ldur	w9, [x29, #-92]
	lsr	w2, w8, #1
	sub	x8, x24, x22
	add	x1, x8, x9
	bl	memcpy
	mov	w27, wzr
	cbnz	x26, .LBB13_9
.LBB13_58:
	mov	w28, #1                         // =0x1
	cbz	w27, .LBB13_11
.LBB13_59:
	ldr	x0, [x20, #1456]
	adrp	x1, .L.str.162
	add	x1, x1, :lo12:.L.str.162
	bl	_dev_info
	ldr	x0, [x20, #16]
	cbz	x0, .LBB13_63
// %bb.60:
	bl	ebc_pmic_verity_vcom
	b	.LBB13_64
.LBB13_61:
	ldr	x0, [x20, #1456]
	adrp	x1, .L.str.160
	add	x1, x1, :lo12:.L.str.160
                                        // kill: def $w2 killed $w2 killed $x2
	bl	_dev_info
	ldp	w9, w8, [x21, #76]
	mov	w1, #3520                       // =0xdc0
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc_noprof
	mov	x26, x0
	cbz	x0, .LBB13_66
// %bb.62:
	ldp	w8, w9, [x21, #76]
	mov	x0, x26
	mul	w8, w9, w8
	ldr	w9, [sp, #96]
	lsr	w2, w8, #1
	sub	x8, x24, x22
	add	x1, x8, x9
	bl	memcpy
	mov	w28, wzr
	cbz	w27, .LBB13_11
	b	.LBB13_59
.LBB13_63:
	ldr	x0, [x20, #24]
	bl	ebc_regulator_verity_vcom
.LBB13_64:
	adrp	x0, .L.str.164
	add	x0, x0, :lo12:.L.str.164
	bl	ebc_empty_buf_get
	ldp	w8, w9, [x21, #76]
	mov	x27, x0
	ldr	x0, [x0, #8]
	mov	w1, #240                        // =0xf0
	mul	w2, w9, w8
	bl	memset
	mov	w8, #17                         // =0x11
	str	xzr, [x27, #40]
	mov	w9, #1                          // =0x1
	str	w8, [x27, #32]
	mov	x0, x27
	ldr	w8, [x21, #76]
	str	w8, [x27, #48]
	ldr	w8, [x21, #80]
	stp	w8, w9, [x27, #52]
	b	.LBB13_16
.LBB13_65:
	ldr	x0, [x20, #1456]
	adrp	x1, .L.str.158
	add	x1, x1, :lo12:.L.str.158
	bl	_dev_err
	b	.LBB13_29
.LBB13_66:
	ldr	x0, [x20, #1456]
	adrp	x1, .L.str.161
	add	x1, x1, :lo12:.L.str.161
	bl	_dev_err
	cbnz	x25, .LBB13_26
	b	.LBB13_27
.Lfunc_end13:
	.size	ebc_logo_init, .Lfunc_end13-ebc_logo_init
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
	ldrb	w8, [x19, #1465]
	cmp	w8, #1
	b.ne	.LBB14_2
// %bb.1:
	adrp	x0, transition_lut_misc
	add	x0, x0, :lo12:transition_lut_misc
	bl	misc_register
.LBB14_2:
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_waveform_version
	add	x1, x1, :lo12:dev_attr_waveform_version
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_pmic_name
	add	x1, x1, :lo12:dev_attr_pmic_name
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_pmic_temp
	add	x1, x1, :lo12:dev_attr_pmic_temp
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_pmic_vcom
	add	x1, x1, :lo12:dev_attr_pmic_vcom
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_ebc_version
	add	x1, x1, :lo12:dev_attr_ebc_version
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_ebc_state
	add	x1, x1, :lo12:dev_attr_ebc_state
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_ebc_buf_state
	add	x1, x1, :lo12:dev_attr_ebc_buf_state
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_auto_frame_state
	add	x1, x1, :lo12:dev_attr_auto_frame_state
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_ebc_debug_level
	add	x1, x1, :lo12:dev_attr_ebc_debug_level
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_wf_data
	add	x1, x1, :lo12:dev_attr_wf_data
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_overlay_wf_data
	add	x1, x1, :lo12:dev_attr_overlay_wf_data
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_ori_wf_data
	add	x1, x1, :lo12:dev_attr_ori_wf_data
	bl	device_create_file
	ldr	x0, [x19, #1152]
	adrp	x1, dev_attr_record_pix_wf
	add	x1, x1, :lo12:dev_attr_record_pix_wf
	bl	device_create_file
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end14:
	.size	ebc_sysfs_init, .Lfunc_end14-ebc_sysfs_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_buffer_manage_uninit
	.type	ebc_buffer_manage_uninit,@function
ebc_buffer_manage_uninit:               // @ebc_buffer_manage_uninit
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	ldr	x8, [x0, #1320]
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x0
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	cbz	x8, .LBB15_2
// %bb.1:
	add	x0, x19, #1312
	bl	ebc_free_dma_buf
.LBB15_2:
	ldr	x8, [x19, #1176]
	cbz	x8, .LBB15_4
// %bb.3:
	add	x0, x19, #1168
	bl	ebc_free_dma_buf
.LBB15_4:
	ldr	x8, [x19, #1104]
	cbz	x8, .LBB15_6
// %bb.5:
	add	x0, x19, #1096
	bl	ebc_free_dma_buf
.LBB15_6:
	ldr	x8, [x19, #1032]
	cbz	x8, .LBB15_8
// %bb.7:
	add	x0, x19, #1024
	bl	ebc_free_dma_buf
.LBB15_8:
	ldr	x8, [x19, #1248]
	cbz	x8, .LBB15_10
// %bb.9:
	add	x0, x19, #1240
	bl	ebc_free_dma_buf
.LBB15_10:
	ldr	x8, [x19, #960]
	cbz	x8, .LBB15_12
// %bb.11:
	add	x0, x19, #952
	bl	ebc_free_dma_buf
.LBB15_12:
	ldr	x8, [x19, #744]
	cbz	x8, .LBB15_14
// %bb.13:
	add	x0, x19, #736
	bl	ebc_free_dma_buf
.LBB15_14:
	ldr	x8, [x19, #816]
	cbz	x8, .LBB15_16
// %bb.15:
	add	x0, x19, #808
	bl	ebc_free_dma_buf
.LBB15_16:
	ldr	x8, [x19, #888]
	cbz	x8, .LBB15_18
// %bb.17:
	add	x0, x19, #880
	bl	ebc_free_dma_buf
.LBB15_18:
	ldr	w8, [x19, #1384]
	cmp	w8, #1
	b.lt	.LBB15_23
// %bb.19:
	mov	x21, xzr
	add	x20, x19, #448
	b	.LBB15_21
.LBB15_20:                              //   in Loop: Header=BB15_21 Depth=1
	add	x21, x21, #1
	add	x20, x20, #72
	cmp	x21, w8, sxtw
	b.ge	.LBB15_23
.LBB15_21:                              // =>This Inner Loop Header: Depth=1
	ldr	x9, [x20, #8]
	cbz	x9, .LBB15_20
// %bb.22:                              //   in Loop: Header=BB15_21 Depth=1
	mov	x0, x20
	bl	ebc_free_dma_buf
	ldr	w8, [x19, #1384]
	b	.LBB15_20
.LBB15_23:
	bl	ebc_buf_uninit
	ldr	x8, [x19, #312]
	cbz	x8, .LBB15_25
// %bb.24:
	add	x0, x19, #304
	bl	ebc_free_dma_buf
.LBB15_25:
	ldr	x8, [x19, #384]
	cbz	x8, .LBB15_27
// %bb.26:
	add	x0, x19, #376
	bl	ebc_free_dma_buf
.LBB15_27:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end15:
	.size	ebc_buffer_manage_uninit, .Lfunc_end15-ebc_buffer_manage_uninit
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_auto_task_function
	.type	ebc_auto_task_function,@function
	.word	2314953021                      // 0x89fb613d
ebc_auto_task_function:                 // @ebc_auto_task_function
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #112
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	ldr	x22, [x8, :lo12:global_ebc]
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	mov	w28, #255                       // =0xff
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	mov	w25, #1                         // =0x1
	adrp	x26, ebc_auto_assist_task
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	mov	w24, #2                         // =0x2
	add	x27, x22, #1496
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	adrp	x19, ebc_auto_thread_sem
	add	x19, x19, :lo12:ebc_auto_thread_sem
	adrp	x20, ebc_assist_finished_flag_sem
	add	x20, x20, :lo12:ebc_assist_finished_flag_sem
	add	x8, x22, #136
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	//APP
	mrs	x23, SP_EL0
	//NO_APP
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB16_3
.LBB16_1:                               //   in Loop: Header=BB16_3 Depth=1
	add	x0, x22, #112
	add	x1, x22, #304
	bl	flip
	ldr	x0, [x26, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrsw	x8, [x22, #184]
	ldr	x1, [x22, #1032]
	add	x4, x22, #304
	ldr	x2, [x22, #1104]
	ldr	x3, [x22, #1248]
	mov	w5, #2                          // =0x2
	ldr	x0, [x27, x8, lsl #3]
	bl	get_auto_data
.LBB16_2:                               //   in Loop: Header=BB16_3 Depth=1
	mov	x0, x19
	bl	up
	bl	schedule
.LBB16_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB16_86 Depth 2
                                        //       Child Loop BB16_89 Depth 3
	mov	x0, x19
	bl	down
	mov	x0, x20
	bl	down
	str	w24, [x23, #48]
	//APP
	dmb	ish
	//NO_APP
	ldr	w8, [x22, #1560]
	cmp	w8, #3
	b.gt	.LBB16_10
// %bb.4:                               //   in Loop: Header=BB16_3 Depth=1
	cmp	w8, #1
	b.eq	.LBB16_20
// %bb.5:                               //   in Loop: Header=BB16_3 Depth=1
	cmp	w8, #3
	b.ne	.LBB16_16
// %bb.6:                               //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1420]
	str	wzr, [x22, #1428]
	cbnz	w8, .LBB16_1
// %bb.7:                               //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1424]
	cbnz	w8, .LBB16_1
// %bb.8:                               //   in Loop: Header=BB16_3 Depth=1
	mov	x0, x20
	bl	up
	ldr	w8, [x22, #1916]
	cbz	w8, .LBB16_83
.LBB16_9:                               //   in Loop: Header=BB16_3 Depth=1
	ldrsw	x8, [x22, #184]
	ldr	x1, [x22, #1032]
	add	x4, x22, #304
	ldr	x2, [x22, #1104]
	ldr	x3, [x22, #1248]
	mov	w5, #1                          // =0x1
	ldr	x0, [x27, x8, lsl #3]
	bl	get_auto_data
	b	.LBB16_82
.LBB16_10:                              //   in Loop: Header=BB16_3 Depth=1
	cmp	w8, #5
	b.eq	.LBB16_24
// %bb.11:                              //   in Loop: Header=BB16_3 Depth=1
	cmp	w8, #4
	b.ne	.LBB16_16
// %bb.12:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1436]
	cbz	w8, .LBB16_41
// %bb.13:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1420]
	str	wzr, [x22, #1436]
	str	wzr, [x22, #1428]
	cbnz	w8, .LBB16_15
// %bb.14:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1424]
	cbz	w8, .LBB16_79
.LBB16_15:                              //   in Loop: Header=BB16_3 Depth=1
	add	x0, x22, #112
	add	x1, x22, #304
	bl	flip
	ldr	x0, [x26, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrsw	x8, [x22, #184]
	ldr	x1, [x22, #1032]
	add	x5, x22, #304
	ldr	x2, [x22, #1104]
	ldr	x3, [x22, #1248]
	mov	w6, #2                          // =0x2
	ldr	x0, [x27, x8, lsl #3]
	ldr	x4, [x22, #1320]
	bl	get_overlay_data
	b	.LBB16_2
.LBB16_16:                              //   in Loop: Header=BB16_3 Depth=1
	ldrb	w8, [x22, #1952]
	cmp	w8, #1
	b.ne	.LBB16_28
// %bb.17:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w9, [x22, #1980]
	cmp	w9, #1
	b.ne	.LBB16_37
// %bb.18:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w9, [x22, #1984]
	cmp	w9, #1
	b.ne	.LBB16_37
// %bb.19:                              //   in Loop: Header=BB16_3 Depth=1
	str	w25, [x22, #1988]
	b	.LBB16_55
.LBB16_20:                              //   in Loop: Header=BB16_3 Depth=1
	ldrb	w8, [x22, #1952]
	cmp	w8, #1
	b.ne	.LBB16_31
// %bb.21:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w9, [x22, #1980]
	cmp	w9, #1
	b.ne	.LBB16_43
// %bb.22:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w9, [x22, #1984]
	cmp	w9, #1
	b.ne	.LBB16_43
// %bb.23:                              //   in Loop: Header=BB16_3 Depth=1
	str	w25, [x22, #1988]
	b	.LBB16_65
.LBB16_24:                              //   in Loop: Header=BB16_3 Depth=1
	ldrb	w8, [x22, #1952]
	cmp	w8, #1
	b.ne	.LBB16_34
// %bb.25:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w9, [x22, #1980]
	cmp	w9, #1
	b.ne	.LBB16_47
// %bb.26:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w9, [x22, #1984]
	cmp	w9, #1
	b.ne	.LBB16_47
// %bb.27:                              //   in Loop: Header=BB16_3 Depth=1
	str	w25, [x22, #1988]
	b	.LBB16_77
.LBB16_28:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1432]
	cbz	w8, .LBB16_55
// %bb.29:                              //   in Loop: Header=BB16_3 Depth=1
	ldrb	w9, [x22, #1769]
	tbz	w9, #0, .LBB16_51
// %bb.30:                              //   in Loop: Header=BB16_3 Depth=1
	subs	w8, w8, #1
	b.ge	.LBB16_53
	b	.LBB16_54
.LBB16_31:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1432]
	cbz	w8, .LBB16_65
// %bb.32:                              //   in Loop: Header=BB16_3 Depth=1
	ldrb	w9, [x22, #1769]
	tbz	w9, #0, .LBB16_61
// %bb.33:                              //   in Loop: Header=BB16_3 Depth=1
	subs	w8, w8, #1
	b.ge	.LBB16_63
	b	.LBB16_64
.LBB16_34:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1432]
	cbz	w8, .LBB16_77
// %bb.35:                              //   in Loop: Header=BB16_3 Depth=1
	ldrb	w9, [x22, #1769]
	tbz	w9, #0, .LBB16_73
// %bb.36:                              //   in Loop: Header=BB16_3 Depth=1
	subs	w8, w8, #1
	b.ge	.LBB16_75
	b	.LBB16_76
.LBB16_37:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w9, [x22, #1988]
	cbnz	w9, .LBB16_55
// %bb.38:                              //   in Loop: Header=BB16_3 Depth=1
	ldrb	w9, [x22, #1769]
	tbz	w9, #0, .LBB16_51
// %bb.39:                              //   in Loop: Header=BB16_3 Depth=1
	cbz	w8, .LBB16_52
// %bb.40:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1968]
	add	w8, w8, #1
	str	w8, [x22, #1968]
	b	.LBB16_54
.LBB16_41:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w21, [x22, #184]
	mov	x0, x20
	bl	up
	ldrsw	x8, [x22, #184]
	ldr	x1, [x22, #1032]
	add	x5, x22, #304
	ldr	x2, [x22, #1104]
	ldr	x3, [x22, #1248]
	ldr	x4, [x22, #1320]
	ldr	x0, [x27, x8, lsl #3]
	bl	get_roi_overlay_data
	ldrsw	x8, [x22, #184]
	ldrsw	x2, [x22, #1392]
	sub	w9, w25, w8
	ldr	x1, [x27, x8, lsl #3]
	ldr	x0, [x27, w9, sxtw #3]
	bl	memcpy
	ldr	x0, [x22, #112]
	ldrb	w8, [x0, #796]
	tbnz	w8, #6, .LBB16_2
// %bb.42:                              //   in Loop: Header=BB16_3 Depth=1
	sub	w8, w25, w21
	mov	w10, #24                        // =0x18
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	smaddl	x8, w8, w10, x9
	ldrsw	x2, [x22, #1392]
	mov	w3, #1                          // =0x1
	ldr	x1, [x8, #8]
	bl	__dma_sync_single_for_device
	b	.LBB16_2
.LBB16_43:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w9, [x22, #1988]
	cbnz	w9, .LBB16_65
// %bb.44:                              //   in Loop: Header=BB16_3 Depth=1
	ldrb	w9, [x22, #1769]
	tbz	w9, #0, .LBB16_61
// %bb.45:                              //   in Loop: Header=BB16_3 Depth=1
	cbz	w8, .LBB16_62
// %bb.46:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1968]
	add	w8, w8, #1
	str	w8, [x22, #1968]
	b	.LBB16_64
.LBB16_47:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w9, [x22, #1988]
	cbnz	w9, .LBB16_77
// %bb.48:                              //   in Loop: Header=BB16_3 Depth=1
	ldrb	w9, [x22, #1769]
	tbz	w9, #0, .LBB16_73
// %bb.49:                              //   in Loop: Header=BB16_3 Depth=1
	cbz	w8, .LBB16_74
// %bb.50:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1968]
	add	w8, w8, #1
	str	w8, [x22, #1968]
	b	.LBB16_76
.LBB16_51:                              //   in Loop: Header=BB16_3 Depth=1
	strb	wzr, [x22, #1952]
.LBB16_52:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1432]
	subs	w8, w8, #1
	b.lt	.LBB16_54
.LBB16_53:                              //   in Loop: Header=BB16_3 Depth=1
	str	w8, [x22, #1432]
.LBB16_54:                              //   in Loop: Header=BB16_3 Depth=1
	add	x0, x22, #112
	add	x1, x22, #304
	bl	flip
.LBB16_55:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	x0, [x26, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrb	w8, [x22, #1952]
	cmp	w8, #1
	b.ne	.LBB16_59
// %bb.56:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1980]
	cmp	w8, #1
	b.ne	.LBB16_58
// %bb.57:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1984]
	cmp	w8, #1
	b.eq	.LBB16_68
.LBB16_58:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1988]
	cbnz	w8, .LBB16_2
	b	.LBB16_60
.LBB16_59:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1432]
	cbz	w8, .LBB16_2
.LBB16_60:                              //   in Loop: Header=BB16_3 Depth=1
	ldrsw	x8, [x22, #184]
	ldr	x9, [x22, #1536]
	add	x3, x22, #304
	ldr	x10, [x22, #1528]
	mov	w4, #2                          // =0x2
	ldr	x0, [x27, x8, lsl #3]
	ldr	x1, [x9, #8]
	ldr	x2, [x10, #8]
	bl	get_full_data
	b	.LBB16_2
.LBB16_61:                              //   in Loop: Header=BB16_3 Depth=1
	strb	wzr, [x22, #1952]
.LBB16_62:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1432]
	subs	w8, w8, #1
	b.lt	.LBB16_64
.LBB16_63:                              //   in Loop: Header=BB16_3 Depth=1
	str	w8, [x22, #1432]
.LBB16_64:                              //   in Loop: Header=BB16_3 Depth=1
	add	x0, x22, #112
	add	x1, x22, #304
	bl	flip
.LBB16_65:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	x0, [x26, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrb	w5, [x22, #1952]
	cmp	w5, #1
	b.ne	.LBB16_69
// %bb.66:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1980]
	cmp	w8, #1
	b.ne	.LBB16_70
// %bb.67:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1984]
	cmp	w8, #1
	b.ne	.LBB16_70
.LBB16_68:                              //   in Loop: Header=BB16_3 Depth=1
	str	w25, [x22, #1988]
	b	.LBB16_2
.LBB16_69:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1432]
	cbnz	w8, .LBB16_71
	b	.LBB16_2
.LBB16_70:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1988]
	cbnz	w8, .LBB16_2
.LBB16_71:                              //   in Loop: Header=BB16_3 Depth=1
	adrp	x8, global_ebc
	ldrsw	x9, [x22, #184]
	ldr	x10, [x22, #1536]
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x11, [x22, #1528]
	add	x3, x22, #304
	ldr	x0, [x27, x9, lsl #3]
	ldr	x1, [x10, #8]
	mov	w4, #2                          // =0x2
	ldr	w8, [x8, #276]
	ldr	x2, [x11, #8]
	cbz	w8, .LBB16_78
// %bb.72:                              //   in Loop: Header=BB16_3 Depth=1
	bl	get_rearrange_panel_data
	b	.LBB16_2
.LBB16_73:                              //   in Loop: Header=BB16_3 Depth=1
	strb	wzr, [x22, #1952]
.LBB16_74:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1432]
	subs	w8, w8, #1
	b.lt	.LBB16_76
.LBB16_75:                              //   in Loop: Header=BB16_3 Depth=1
	str	w8, [x22, #1432]
.LBB16_76:                              //   in Loop: Header=BB16_3 Depth=1
	add	x0, x22, #112
	add	x1, x22, #304
	bl	flip
.LBB16_77:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	x0, [x26, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	b	.LBB16_2
.LBB16_78:                              //   in Loop: Header=BB16_3 Depth=1
	bl	get_normal_panel_data
	b	.LBB16_2
.LBB16_79:                              //   in Loop: Header=BB16_3 Depth=1
	mov	x0, x20
	bl	up
	ldr	w8, [x22, #1916]
	cbnz	w8, .LBB16_81
// %bb.80:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	x8, [x22, #1536]
	ldr	x0, [x22, #1032]
	add	x6, x22, #304
	ldr	x1, [x22, #1104]
	ldr	x2, [x22, #888]
	ldr	x4, [x22, #1248]
	ldr	x3, [x8, #8]
	ldr	x5, [x22, #1320]
	bl	refresh_new_image
.LBB16_81:                              //   in Loop: Header=BB16_3 Depth=1
	ldrsw	x8, [x22, #184]
	ldr	x1, [x22, #1032]
	add	x5, x22, #304
	ldr	x2, [x22, #1104]
	ldr	x3, [x22, #1248]
	mov	w6, #1                          // =0x1
	ldr	x0, [x27, x8, lsl #3]
	ldr	x4, [x22, #1320]
	bl	get_overlay_data
.LBB16_82:                              //   in Loop: Header=BB16_3 Depth=1
	str	w25, [x22, #1428]
	adrp	x8, jiffies
	add	x0, x22, #1856
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, #1
	bl	mod_timer
	b	.LBB16_2
.LBB16_83:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	w8, [x22, #1444]
	ldr	w9, [x22, #1440]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w10, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB16_9
// %bb.84:                              //   in Loop: Header=BB16_3 Depth=1
	ldr	x12, [x22, #1536]
	asr	w10, w10, #3
	ldr	x11, [x22, #1248]
	ldr	x13, [x22, #1032]
	mov	w14, wzr
	ldr	x12, [x12, #8]
	b	.LBB16_86
.LBB16_85:                              //   in Loop: Header=BB16_86 Depth=2
	add	w14, w14, #1
	cmp	w14, w9
	b.eq	.LBB16_9
.LBB16_86:                              //   Parent Loop BB16_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB16_89 Depth 3
	cmp	w8, #8
	b.lt	.LBB16_85
// %bb.87:                              //   in Loop: Header=BB16_86 Depth=2
	mov	w15, w10
	b	.LBB16_89
.LBB16_88:                              //   in Loop: Header=BB16_89 Depth=3
	subs	w15, w15, #1
	add	x11, x11, #8
	add	x13, x13, #8
	b.eq	.LBB16_85
.LBB16_89:                              //   Parent Loop BB16_3 Depth=1
                                        //     Parent Loop BB16_86 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x16, [x12], #8
	ldr	x17, [x13]
	cmp	x16, x17
	b.eq	.LBB16_88
// %bb.90:                              //   in Loop: Header=BB16_89 Depth=3
	ldr	x0, [x11]
	tst	x0, #0xff
	csel	x1, x28, xzr, eq
	tst	x0, #0xff00
	orr	x2, x1, #0xff00
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000
	orr	x2, x1, #0xff0000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000
	orr	x2, x1, #0xff000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff00000000
	orr	x2, x1, #0xff00000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000000000
	orr	x2, x1, #0xff0000000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000000000
	lsr	x0, x0, #56
	orr	x2, x1, #0xff000000000000
	csel	x1, x2, x1, eq
	cmp	x0, #0
	orr	x2, x1, #0xff00000000000000
	csel	x0, x2, x1, eq
	bic	x17, x17, x0
	and	x16, x0, x16
	orr	x16, x17, x16
	str	x16, [x13]
	b	.LBB16_88
.Lfunc_end16:
	.size	ebc_auto_task_function, .Lfunc_end16-ebc_auto_task_function
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_auto_assist_task_function
	.type	ebc_auto_assist_task_function,@function
	.word	2314953021                      // 0x89fb613d
ebc_auto_assist_task_function:          // @ebc_auto_assist_task_function
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	adrp	x21, global_ebc
	mov	x29, sp
	ldr	x22, [x21, :lo12:global_ebc]
	stp	x26, x25, [sp, #16]             // 16-byte Folded Spill
	mov	w26, #1                         // =0x1
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	mov	w24, #2                         // =0x2
	//APP
	mrs	x23, SP_EL0
	//NO_APP
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	adrp	x19, ebc_auto_assist_thread_sem
	add	x19, x19, :lo12:ebc_auto_assist_thread_sem
	add	x25, x22, #1496
	adrp	x20, ebc_assist_finished_flag_sem
	add	x20, x20, :lo12:ebc_assist_finished_flag_sem
	b	.LBB17_3
.LBB17_1:                               //   in Loop: Header=BB17_3 Depth=1
	ldrsw	x8, [x22, #184]
	ldr	x1, [x22, #1032]
	add	x4, x22, #304
	ldr	x2, [x22, #1104]
	ldr	x3, [x22, #1248]
	mov	w5, #3                          // =0x3
	ldr	x0, [x25, x8, lsl #3]
	bl	get_auto_data
.LBB17_2:                               //   in Loop: Header=BB17_3 Depth=1
	mov	x0, x20
	bl	up
	mov	x0, x19
	bl	up
	bl	schedule
.LBB17_3:                               // =>This Inner Loop Header: Depth=1
	mov	x0, x19
	bl	down
	str	w24, [x23, #48]
	//APP
	dmb	ish
	//NO_APP
	ldr	w8, [x22, #1560]
	cmp	w8, #3
	b.gt	.LBB17_6
// %bb.4:                               //   in Loop: Header=BB17_3 Depth=1
	cmp	w8, #1
	b.eq	.LBB17_13
// %bb.5:                               //   in Loop: Header=BB17_3 Depth=1
	cmp	w8, #3
	b.eq	.LBB17_1
	b	.LBB17_9
.LBB17_6:                               //   in Loop: Header=BB17_3 Depth=1
	cmp	w8, #5
	b.eq	.LBB17_2
// %bb.7:                               //   in Loop: Header=BB17_3 Depth=1
	cmp	w8, #4
	b.ne	.LBB17_9
// %bb.8:                               //   in Loop: Header=BB17_3 Depth=1
	ldrsw	x8, [x22, #184]
	ldr	x1, [x22, #1032]
	add	x5, x22, #304
	ldr	x2, [x22, #1104]
	ldr	x3, [x22, #1248]
	mov	w6, #3                          // =0x3
	ldr	x0, [x25, x8, lsl #3]
	ldr	x4, [x22, #1320]
	bl	get_overlay_data
	b	.LBB17_2
.LBB17_9:                               //   in Loop: Header=BB17_3 Depth=1
	ldrb	w8, [x22, #1952]
	cmp	w8, #1
	b.ne	.LBB17_17
// %bb.10:                              //   in Loop: Header=BB17_3 Depth=1
	ldr	w8, [x22, #1980]
	cmp	w8, #1
	b.ne	.LBB17_12
// %bb.11:                              //   in Loop: Header=BB17_3 Depth=1
	ldr	w8, [x22, #1984]
	cmp	w8, #1
	b.eq	.LBB17_16
.LBB17_12:                              //   in Loop: Header=BB17_3 Depth=1
	ldr	w8, [x22, #1988]
	cbnz	w8, .LBB17_2
	b	.LBB17_18
.LBB17_13:                              //   in Loop: Header=BB17_3 Depth=1
	ldrb	w5, [x22, #1952]
	cmp	w5, #1
	b.ne	.LBB17_19
// %bb.14:                              //   in Loop: Header=BB17_3 Depth=1
	ldr	w8, [x22, #1980]
	cmp	w8, #1
	b.ne	.LBB17_20
// %bb.15:                              //   in Loop: Header=BB17_3 Depth=1
	ldr	w8, [x22, #1984]
	cmp	w8, #1
	b.ne	.LBB17_20
.LBB17_16:                              //   in Loop: Header=BB17_3 Depth=1
	str	w26, [x22, #1988]
	b	.LBB17_2
.LBB17_17:                              //   in Loop: Header=BB17_3 Depth=1
	ldr	w8, [x22, #1432]
	cbz	w8, .LBB17_2
.LBB17_18:                              //   in Loop: Header=BB17_3 Depth=1
	ldrsw	x8, [x22, #184]
	ldr	x9, [x22, #1536]
	add	x3, x22, #304
	ldr	x10, [x22, #1528]
	mov	w4, #3                          // =0x3
	ldr	x0, [x25, x8, lsl #3]
	ldr	x1, [x9, #8]
	ldr	x2, [x10, #8]
	bl	get_full_data
	b	.LBB17_2
.LBB17_19:                              //   in Loop: Header=BB17_3 Depth=1
	ldr	w8, [x22, #1432]
	cbnz	w8, .LBB17_21
	b	.LBB17_2
.LBB17_20:                              //   in Loop: Header=BB17_3 Depth=1
	ldr	w8, [x22, #1988]
	cbnz	w8, .LBB17_2
.LBB17_21:                              //   in Loop: Header=BB17_3 Depth=1
	ldr	x8, [x21, :lo12:global_ebc]
	ldrsw	x9, [x22, #184]
	add	x3, x22, #304
	ldr	x10, [x22, #1536]
	ldr	x11, [x22, #1528]
	mov	w4, #3                          // =0x3
	ldr	w8, [x8, #276]
	ldr	x0, [x25, x9, lsl #3]
	ldr	x1, [x10, #8]
	ldr	x2, [x11, #8]
	cbz	w8, .LBB17_23
// %bb.22:                              //   in Loop: Header=BB17_3 Depth=1
	bl	get_rearrange_panel_data
	b	.LBB17_2
.LBB17_23:                              //   in Loop: Header=BB17_3 Depth=1
	bl	get_normal_panel_data
	b	.LBB17_2
.Lfunc_end17:
	.size	ebc_auto_assist_task_function, .Lfunc_end17-ebc_auto_assist_task_function
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_thread
	.type	ebc_thread,@function
	.word	2314953021                      // 0x89fb613d
ebc_thread:                             // @ebc_thread
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #160
	adrp	x8, global_ebc
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	ldr	x24, [x8, :lo12:global_ebc]
	stp	x28, x27, [sp, #80]             // 16-byte Folded Spill
	mov	x27, #67553994410557440         // =0xf0000000000000
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	mov	x26, #1030792151040             // =0xf000000000
	mov	x25, #263882790666240           // =0xf00000000000
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	mov	w21, #1                         // =0x1
	mov	w28, #232                       // =0xe8
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	mov	w20, #-268435456                // =0xf0000000
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	b	.LBB18_2
.LBB18_1:                               //   in Loop: Header=BB18_2 Depth=1
	bl	ebc_buf_release
.LBB18_2:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_189 Depth 2
                                        //     Child Loop BB18_63 Depth 2
                                        //       Child Loop BB18_68 Depth 3
                                        //     Child Loop BB18_223 Depth 2
                                        //     Child Loop BB18_472 Depth 2
                                        //     Child Loop BB18_478 Depth 2
                                        //     Child Loop BB18_444 Depth 2
                                        //       Child Loop BB18_447 Depth 3
                                        //     Child Loop BB18_280 Depth 2
                                        //     Child Loop BB18_173 Depth 2
                                        //     Child Loop BB18_297 Depth 2
                                        //     Child Loop BB18_246 Depth 2
                                        //     Child Loop BB18_329 Depth 2
                                        //     Child Loop BB18_333 Depth 2
                                        //       Child Loop BB18_341 Depth 3
                                        //         Child Loop BB18_345 Depth 4
                                        //       Child Loop BB18_368 Depth 3
                                        //       Child Loop BB18_386 Depth 3
                                        //     Child Loop BB18_400 Depth 2
                                        //     Child Loop BB18_406 Depth 2
                                        //     Child Loop BB18_416 Depth 2
                                        //       Child Loop BB18_418 Depth 3
                                        //     Child Loop BB18_456 Depth 2
                                        //     Child Loop BB18_42 Depth 2
                                        //     Child Loop BB18_212 Depth 2
                                        //     Child Loop BB18_12 Depth 2
                                        //     Child Loop BB18_19 Depth 2
                                        //     Child Loop BB18_201 Depth 2
	bl	ebc_osd_buf_get
	cbnz	x0, .LBB18_23
// %bb.3:                               //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1912]
	str	wzr, [x24, #1452]
	cbz	w8, .LBB18_6
// %bb.4:                               //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1908]
	cbnz	w8, .LBB18_6
// %bb.5:                               //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1916]
	cbz	w8, .LBB18_7
.LBB18_6:                               //   in Loop: Header=BB18_2 Depth=1
	bl	ebc_dsp_buf_get
	cbnz	x0, .LBB18_34
.LBB18_7:                               //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1448]
	cbnz	w8, .LBB18_303
// %bb.8:                               //   in Loop: Header=BB18_2 Depth=1
	bl	ebc_get_power_off_delay
	bl	__msecs_to_jiffies
	ldr	w8, [x24, #1448]
	cbnz	w8, .LBB18_16
// %bb.9:                               //   in Loop: Header=BB18_2 Depth=1
	cbz	x0, .LBB18_16
// %bb.10:                              //   in Loop: Header=BB18_2 Depth=1
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	ebc_get_power_off_delay
	bl	__msecs_to_jiffies
	mov	x19, x0
	add	x0, sp, #24
	mov	w1, wzr
	bl	init_wait_entry
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w9, [x24, #1448]
	cmp	x19, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x19, xzr, eq
	cbnz	w9, .LBB18_15
// %bb.11:                              //   in Loop: Header=BB18_2 Depth=1
	cbz	x8, .LBB18_15
.LBB18_12:                              //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	cbnz	x0, .LBB18_226
// %bb.13:                              //   in Loop: Header=BB18_12 Depth=2
	mov	x0, x8
	bl	schedule_timeout
	mov	x19, x0
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w9, [x24, #1448]
	cmp	x19, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x19, xzr, eq
	cbnz	w9, .LBB18_15
// %bb.14:                              //   in Loop: Header=BB18_12 Depth=2
	cbnz	x8, .LBB18_12
.LBB18_15:                              //   in Loop: Header=BB18_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	ldr	w8, [x24, #1448]
.LBB18_16:                              //   in Loop: Header=BB18_2 Depth=1
	cbnz	w8, .LBB18_2
.LBB18_17:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1412]
	cmp	w8, #1
	b.ne	.LBB18_176
// %bb.18:                              //   in Loop: Header=BB18_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB18_19:                              //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_194
// %bb.20:                              //   in Loop: Header=BB18_19 Depth=2
	ldr	w8, [x24, #1448]
	cbnz	w8, .LBB18_194
// %bb.21:                              //   in Loop: Header=BB18_19 Depth=2
	cbnz	x0, .LBB18_195
// %bb.22:                              //   in Loop: Header=BB18_19 Depth=2
	bl	schedule
	b	.LBB18_19
.LBB18_23:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1896]
	cbnz	w8, .LBB18_32
// %bb.24:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1900]
	cbnz	w8, .LBB18_32
// %bb.25:                              //   in Loop: Header=BB18_2 Depth=1
	ldp	w8, w9, [x0, #40]
	orr	w8, w9, w8
	cbnz	w8, .LBB18_45
// %bb.26:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x0, #48]
	ldr	w9, [x24, #1444]
	cmp	w8, w9
	b.ne	.LBB18_45
// %bb.27:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x0, #52]
	ldr	w9, [x24, #1440]
	cmp	w8, w9
	b.ne	.LBB18_45
// %bb.28:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1560]
	cmp	w8, #4
	b.eq	.LBB18_46
// %bb.29:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_31
// %bb.30:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1456]
	mov	x19, x0
	adrp	x1, .L.str.109
	add	x1, x1, :lo12:.L.str.109
	mov	x0, x8
	bl	_dev_info
	mov	x0, x19
.LBB18_31:                              //   in Loop: Header=BB18_2 Depth=1
	bl	ebc_buf_release
	b	.LBB18_2
.LBB18_32:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_1
// %bb.33:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1456]
	mov	x19, x0
	adrp	x1, .L.str.108
	add	x1, x1, :lo12:.L.str.108
	mov	x0, x8
	bl	_dev_info
	mov	x0, x19
	b	.LBB18_1
.LBB18_34:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x0, #32]
	mov	w3, #255                        // =0xff
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	cmp	w8, #21
	b.ne	.LBB18_54
.LBB18_35:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1772]
	cbnz	w8, .LBB18_37
// %bb.36:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [x24, #1528]
.LBB18_37:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #264]
	cmp	w8, #230
	b.ne	.LBB18_57
// %bb.38:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_207
// %bb.39:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_41
// %bb.40:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.117
	add	x1, x1, :lo12:.L.str.117
	bl	_dev_info
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_205
.LBB18_41:                              //   in Loop: Header=BB18_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB18_42:                              //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_204
// %bb.43:                              //   in Loop: Header=BB18_42 Depth=2
	cbnz	x0, .LBB18_205
// %bb.44:                              //   in Loop: Header=BB18_42 Depth=2
	bl	schedule
	b	.LBB18_42
.LBB18_45:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1560]
	cmp	w8, #2
	b.eq	.LBB18_47
.LBB18_46:                              //   in Loop: Header=BB18_2 Depth=1
	ldrb	w9, [x24, #1965]
	cmp	w9, #1
	b.ne	.LBB18_181
.LBB18_47:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	x9, [x24, #1528]
	ldr	x8, [x24, #1104]
	mov	x19, x0
	ldrsw	x2, [x24, #1388]
	ldr	x1, [x9, #8]
	mov	x0, x8
	bl	memcpy
	ldr	x8, [x24, #1536]
	ldr	x0, [x24, #1032]
	ldrsw	x2, [x24, #1388]
	ldr	x1, [x8, #8]
	bl	memcpy
.LBB18_48:                              //   in Loop: Header=BB18_2 Depth=1
	mov	x0, x19
.LBB18_49:                              //   in Loop: Header=BB18_2 Depth=1
	mov	w8, #4                          // =0x4
	str	x0, [x24, #1552]
	ldr	w10, [x24, #1440]
	str	w8, [x24, #1560]
	ldr	w9, [x0, #52]
	ldr	w8, [x0, #44]
	sub	w11, w10, #1
	cmp	w9, w10
	csel	w9, w9, w11, lt
	cmp	w8, w9
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	b.le	.LBB18_61
.LBB18_50:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1412]
	cbnz	w8, .LBB18_158
// %bb.51:                              //   in Loop: Header=BB18_2 Depth=1
	mov	x0, x24
	mov	w1, #1                          // =0x1
	mov	w2, wzr
	str	w21, [x24, #1412]
	bl	ebc_lut_update
	ldr	w8, [x24, #1464]
	ldr	w9, [x24, #1948]
	lsr	w10, w8, #8
	and	w2, w8, #0xff
	cmp	w9, #1
	strh	w2, [x24, #1416]
	strb	w10, [x24, #1418]
	b.lt	.LBB18_53
// %bb.52:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	ubfx	w3, w8, #8, #8
	adrp	x1, .L.str.113
	add	x1, x1, :lo12:.L.str.113
	bl	_dev_info
.LBB18_53:                              //   in Loop: Header=BB18_2 Depth=1
	mov	x0, x24
	bl	ebc_frame_start
	bl	ebc_overlay_enable_control
	cbnz	w0, .LBB18_159
	b	.LBB18_160
.LBB18_54:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w9, [x24, #1904]
	ldr	w8, [x24, #1560]
	cbnz	w9, .LBB18_163
// %bb.55:                              //   in Loop: Header=BB18_2 Depth=1
	cmp	w8, #4
	b.ne	.LBB18_35
// %bb.56:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w9, [x24, #1412]
	cbz	w9, .LBB18_35
	b	.LBB18_164
.LBB18_57:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [x8, #32]
	cmp	w2, #23
	b.hi	.LBB18_311
// %bb.58:                              //   in Loop: Header=BB18_2 Depth=1
	lsl	w8, w21, w2
	tst	w8, #0x1ff80
	b.ne	.LBB18_169
// %bb.59:                              //   in Loop: Header=BB18_2 Depth=1
	mov	w9, #124                        // =0x7c
	movk	w9, #34, lsl #16
	tst	w8, w9
	b.eq	.LBB18_269
// %bb.60:                              //   in Loop: Header=BB18_2 Depth=1
	mov	w19, #2                         // =0x2
	ldr	w8, [x24, #1412]
	cbnz	w8, .LBB18_170
	b	.LBB18_230
.LBB18_61:                              //   in Loop: Header=BB18_2 Depth=1
	ldr	w10, [x0, #48]
	ldr	w11, [x24, #1444]
	ldr	x17, [x24, #1536]
	ldr	x1, [x24, #1104]
	ldr	x15, [x24, #1320]
	ldr	x3, [x24, #1248]
	add	w12, w10, #7
	cmp	w10, #0
	add	w13, w11, #7
	csel	w10, w12, w10, lt
	cmp	w11, #0
	ldr	x17, [x17, #8]
	asr	w10, w10, #3
	csel	w11, w13, w11, lt
	ldr	x5, [x24, #1032]
	asr	w12, w11, #3
	ldr	w11, [x0, #40]
	ldr	x0, [x0, #8]
	add	w13, w10, #1
	sub	w14, w12, #1
	cmp	w13, w12
	add	w13, w11, #7
	csinc	w10, w14, w10, ge
	cmp	w11, #0
	mul	w16, w12, w8
	csel	w13, w13, w11, lt
	sxtw	x14, w10
	sbfiz	x12, x12, #3, #32
	asr	w11, w13, #3
	sbfx	x13, x13, #3, #29
	sbfiz	x2, x11, #3, #32
	cmp	x14, x13
	csel	x14, x14, x13, gt
	add	x4, x2, w16, sxtw #3
	sub	x13, x14, x13
	add	x13, x13, #1
	add	x14, x15, x4
	add	x15, x3, x4
	add	x16, x17, x4
	add	x17, x0, x4
	add	x0, x1, x2
	add	x1, x5, x4
	b	.LBB18_63
.LBB18_62:                              //   in Loop: Header=BB18_63 Depth=2
	ldr	w9, [sp, #16]                   // 4-byte Folded Reload
	add	w8, w8, #1
	add	x14, x14, x12
	add	x15, x15, x12
	add	x16, x16, x12
	add	x17, x17, x12
	cmp	w8, w9
	add	x1, x1, x12
	b.gt	.LBB18_50
.LBB18_63:                              //   Parent Loop BB18_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB18_68 Depth 3
	cmp	w11, w10
	b.gt	.LBB18_62
// %bb.64:                              //   in Loop: Header=BB18_63 Depth=2
	mov	x2, xzr
	b	.LBB18_68
.LBB18_65:                              //   in Loop: Header=BB18_68 Depth=3
	and	x6, x6, #0xffffffffffffff
.LBB18_66:                              //   in Loop: Header=BB18_68 Depth=3
	orr	x4, x4, #0x100000000000000
.LBB18_67:                              //   in Loop: Header=BB18_68 Depth=3
	bic	x9, x6, x7
	and	x5, x7, x5
	str	x4, [x14, x2, lsl #3]
	orr	x9, x9, x5
	str	x9, [x1, x2, lsl #3]
	str	x3, [x15, x2, lsl #3]
	add	x2, x2, #1
	cmp	x13, x2
	b.eq	.LBB18_62
.LBB18_68:                              //   Parent Loop BB18_2 Depth=1
                                        //     Parent Loop BB18_63 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x3, [x15, x2, lsl #3]
	ldr	x6, [x1, x2, lsl #3]
	ldr	x22, [x0, x2, lsl #3]
	ldr	x19, [x17, x2, lsl #3]
	ldr	x5, [x16, x2, lsl #3]
	ldr	x4, [x14, x2, lsl #3]
	tst	x3, #0xff
	b.eq	.LBB18_72
// %bb.69:                              //   in Loop: Header=BB18_68 Depth=3
	mvn	w7, w22
	and	x30, x7, #0xf0
	tst	x7, x28
	mov	x7, xzr
	ccmp	x30, #0, #4, ne
	b.ne	.LBB18_74
// %bb.70:                              //   in Loop: Header=BB18_68 Depth=3
	and	x30, x6, #0xf0
	cmp	x30, #240
	b.ne	.LBB18_74
// %bb.71:                              //   in Loop: Header=BB18_68 Depth=3
	and	x30, x19, #0xff
	cbnz	x30, .LBB18_74
.LBB18_72:                              //   in Loop: Header=BB18_68 Depth=3
	and	x30, x19, #0xf0
	and	x4, x4, #0xffffffffffffff00
	and	x3, x3, #0xffffffffffffff00
	cmp	w30, #240
	b.ne	.LBB18_119
// %bb.73:                              //   in Loop: Header=BB18_68 Depth=3
	mvn	w7, w5
	tst	x7, #0xf0
	cset	w7, eq
	tst	x5, #0xf8
	csinc	w7, w7, wzr, ne
	orr	x4, x4, x7
	mov	w7, #255                        // =0xff
.LBB18_74:                              //   in Loop: Header=BB18_68 Depth=3
	tst	x3, #0xff00
	b.eq	.LBB18_78
// %bb.75:                              //   in Loop: Header=BB18_68 Depth=3
	mvn	w30, w22
	mov	w23, #59392                     // =0xe800
	and	x9, x30, #0xf000
	tst	x30, x23
	ccmp	x9, #0, #4, ne
	b.ne	.LBB18_80
// %bb.76:                              //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xf000
	cmp	x9, #15, lsl #12                // =61440
	b.ne	.LBB18_80
// %bb.77:                              //   in Loop: Header=BB18_68 Depth=3
	and	x9, x19, #0xff00
	cbnz	x9, .LBB18_80
.LBB18_78:                              //   in Loop: Header=BB18_68 Depth=3
	and	x30, x19, #0xf000
	and	x4, x4, #0xffffffffffff00ff
	and	x3, x3, #0xffffffffffff00ff
	cmp	w30, #15, lsl #12               // =61440
	b.ne	.LBB18_121
// %bb.79:                              //   in Loop: Header=BB18_68 Depth=3
	mvn	w9, w5
	tst	x5, #0xf800
	orr	x7, x7, #0xff00
	and	x9, x9, #0xf000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x100
	csel	x4, x9, x4, eq
.LBB18_80:                              //   in Loop: Header=BB18_68 Depth=3
	tst	x3, #0xff0000
	b.eq	.LBB18_84
// %bb.81:                              //   in Loop: Header=BB18_68 Depth=3
	mvn	w9, w22
	mov	w23, #15204352                  // =0xe80000
	and	x30, x9, #0xf00000
	tst	x9, x23
	ccmp	x30, #0, #4, ne
	b.ne	.LBB18_86
// %bb.82:                              //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xf00000
	cmp	x9, #3840, lsl #12              // =15728640
	b.ne	.LBB18_86
// %bb.83:                              //   in Loop: Header=BB18_68 Depth=3
	and	x9, x19, #0xff0000
	cbnz	x9, .LBB18_86
.LBB18_84:                              //   in Loop: Header=BB18_68 Depth=3
	and	x30, x19, #0xf00000
	and	x4, x4, #0xffffffffff00ffff
	and	x3, x3, #0xffffffffff00ffff
	cmp	x30, #3840, lsl #12             // =15728640
	b.ne	.LBB18_123
// %bb.85:                              //   in Loop: Header=BB18_68 Depth=3
	mvn	w9, w5
	tst	x5, #0xf80000
	orr	x7, x7, #0xff0000
	and	x9, x9, #0xf00000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x10000
	csel	x4, x9, x4, eq
.LBB18_86:                              //   in Loop: Header=BB18_68 Depth=3
	tst	x3, #0xff000000
	b.eq	.LBB18_90
// %bb.87:                              //   in Loop: Header=BB18_68 Depth=3
	mvn	w9, w22
	mov	w23, #-402653184                // =0xe8000000
	and	x30, x9, #0xf0000000
	tst	x9, x23
	ccmp	x30, #0, #4, ne
	b.ne	.LBB18_92
// %bb.88:                              //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xf0000000
	cmp	x9, x20
	b.ne	.LBB18_92
// %bb.89:                              //   in Loop: Header=BB18_68 Depth=3
	and	x9, x19, #0xff000000
	cbnz	x9, .LBB18_92
.LBB18_90:                              //   in Loop: Header=BB18_68 Depth=3
	and	x30, x19, #0xf0000000
	and	x4, x4, #0xffffffff00ffffff
	and	x3, x3, #0xffffffff00ffffff
	cmp	w30, w20
	b.ne	.LBB18_125
// %bb.91:                              //   in Loop: Header=BB18_68 Depth=3
	mvn	w9, w5
	tst	x5, #0xf8000000
	orr	x7, x7, #0xff000000
	and	x9, x9, #0xf0000000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x1000000
	csel	x4, x9, x4, eq
.LBB18_92:                              //   in Loop: Header=BB18_68 Depth=3
	tst	x3, #0xff00000000
	b.eq	.LBB18_96
// %bb.93:                              //   in Loop: Header=BB18_68 Depth=3
	mov	x23, #996432412672              // =0xe800000000
	bic	x9, x26, x22
	bics	xzr, x23, x22
	ccmp	x9, #0, #4, ne
	b.ne	.LBB18_98
// %bb.94:                              //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xf000000000
	cmp	x9, x26
	b.ne	.LBB18_98
// %bb.95:                              //   in Loop: Header=BB18_68 Depth=3
	and	x9, x19, #0xff00000000
	cbnz	x9, .LBB18_98
.LBB18_96:                              //   in Loop: Header=BB18_68 Depth=3
	and	x30, x19, #0xf000000000
	and	x4, x4, #0xffffff00ffffffff
	and	x3, x3, #0xffffff00ffffffff
	cmp	x30, x26
	b.ne	.LBB18_127
// %bb.97:                              //   in Loop: Header=BB18_68 Depth=3
	bic	x9, x26, x5
	tst	x5, #0xf800000000
	orr	x7, x7, #0xff00000000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x100000000
	csel	x4, x9, x4, eq
.LBB18_98:                              //   in Loop: Header=BB18_68 Depth=3
	tst	x3, #0xff0000000000
	b.eq	.LBB18_102
// %bb.99:                              //   in Loop: Header=BB18_68 Depth=3
	mov	x23, #255086697644032           // =0xe80000000000
	bic	x9, x25, x22
	bics	xzr, x23, x22
	ccmp	x9, #0, #4, ne
	b.ne	.LBB18_104
// %bb.100:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xf00000000000
	cmp	x9, x25
	b.ne	.LBB18_104
// %bb.101:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x19, #0xff0000000000
	cbnz	x9, .LBB18_104
.LBB18_102:                             //   in Loop: Header=BB18_68 Depth=3
	and	x30, x19, #0xf00000000000
	and	x4, x4, #0xffff00ffffffffff
	and	x3, x3, #0xffff00ffffffffff
	cmp	x30, x25
	b.ne	.LBB18_129
// %bb.103:                             //   in Loop: Header=BB18_68 Depth=3
	bic	x9, x25, x5
	tst	x5, #0xf80000000000
	orr	x7, x7, #0xff0000000000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x10000000000
	csel	x4, x9, x4, eq
.LBB18_104:                             //   in Loop: Header=BB18_68 Depth=3
	tst	x3, #0xff000000000000
	b.eq	.LBB18_108
// %bb.105:                             //   in Loop: Header=BB18_68 Depth=3
	mov	x23, #65302194596872192         // =0xe8000000000000
	bic	x9, x27, x22
	bics	xzr, x23, x22
	ccmp	x9, #0, #4, ne
	b.ne	.LBB18_110
// %bb.106:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xf0000000000000
	cmp	x9, x27
	b.ne	.LBB18_110
// %bb.107:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x19, #0xff000000000000
	cbnz	x9, .LBB18_110
.LBB18_108:                             //   in Loop: Header=BB18_68 Depth=3
	and	x30, x19, #0xf0000000000000
	and	x4, x4, #0xff00ffffffffffff
	and	x3, x3, #0xff00ffffffffffff
	cmp	x30, x27
	b.ne	.LBB18_131
// %bb.109:                             //   in Loop: Header=BB18_68 Depth=3
	bic	x9, x27, x5
	tst	x5, #0xf8000000000000
	orr	x7, x7, #0xff000000000000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x1000000000000
	csel	x4, x9, x4, eq
.LBB18_110:                             //   in Loop: Header=BB18_68 Depth=3
	lsr	x9, x3, #56
	cbnz	x9, .LBB18_115
// %bb.111:                             //   in Loop: Header=BB18_68 Depth=3
	lsr	x9, x19, #60
	and	x4, x4, #0xffffffffffffff
	cmp	x9, #15
	b.lo	.LBB18_154
// %bb.112:                             //   in Loop: Header=BB18_68 Depth=3
	lsr	x9, x5, #59
	orr	x7, x7, #0xff00000000000000
	cmp	x9, #30
	b.hi	.LBB18_66
// %bb.113:                             //   in Loop: Header=BB18_68 Depth=3
	ands	x19, x5, #0xf800000000000000
	b.eq	.LBB18_66
// %bb.114:                             //   in Loop: Header=BB18_68 Depth=3
	mov	x9, #-1152921504606846976       // =0xf000000000000000
	cmp	x19, x9
	b.eq	.LBB18_66
	b	.LBB18_67
.LBB18_115:                             //   in Loop: Header=BB18_68 Depth=3
	lsr	x9, x22, #60
	mov	x23, #-1729382256910270464      // =0xe800000000000000
	bics	xzr, x23, x22
	ccmp	x9, #15, #2, ne
	b.lo	.LBB18_67
// %bb.116:                             //   in Loop: Header=BB18_68 Depth=3
	lsr	x9, x6, #60
	cmp	x9, #15
	b.lo	.LBB18_67
// %bb.117:                             //   in Loop: Header=BB18_68 Depth=3
	lsr	x9, x19, #56
	cbnz	x9, .LBB18_67
// %bb.118:                             //   in Loop: Header=BB18_68 Depth=3
	and	x4, x4, #0xffffffffffffff
	and	x3, x3, #0xffffffffffffff
	b	.LBB18_65
.LBB18_119:                             //   in Loop: Header=BB18_68 Depth=3
	cbnz	w30, .LBB18_133
// %bb.120:                             //   in Loop: Header=BB18_68 Depth=3
	mov	x7, xzr
	and	x6, x6, #0xffffffffffffff00
	orr	x4, x4, #0x1
	b	.LBB18_74
.LBB18_121:                             //   in Loop: Header=BB18_68 Depth=3
	cbnz	w30, .LBB18_135
// %bb.122:                             //   in Loop: Header=BB18_68 Depth=3
	and	x6, x6, #0xffffffffffff00ff
	orr	x4, x4, #0x100
	b	.LBB18_80
.LBB18_123:                             //   in Loop: Header=BB18_68 Depth=3
	cbnz	x30, .LBB18_137
// %bb.124:                             //   in Loop: Header=BB18_68 Depth=3
	and	x6, x6, #0xffffffffff00ffff
	orr	x4, x4, #0x10000
	b	.LBB18_86
.LBB18_125:                             //   in Loop: Header=BB18_68 Depth=3
	cbnz	w30, .LBB18_139
// %bb.126:                             //   in Loop: Header=BB18_68 Depth=3
	and	x6, x6, #0xffffffff00ffffff
	orr	x4, x4, #0x1000000
	b	.LBB18_92
.LBB18_127:                             //   in Loop: Header=BB18_68 Depth=3
	cbnz	x30, .LBB18_141
// %bb.128:                             //   in Loop: Header=BB18_68 Depth=3
	and	x6, x6, #0xffffff00ffffffff
	orr	x4, x4, #0x100000000
	b	.LBB18_98
.LBB18_129:                             //   in Loop: Header=BB18_68 Depth=3
	cbnz	x30, .LBB18_143
// %bb.130:                             //   in Loop: Header=BB18_68 Depth=3
	and	x6, x6, #0xffff00ffffffffff
	orr	x4, x4, #0x10000000000
	b	.LBB18_104
.LBB18_131:                             //   in Loop: Header=BB18_68 Depth=3
	cbnz	x30, .LBB18_145
// %bb.132:                             //   in Loop: Header=BB18_68 Depth=3
	and	x6, x6, #0xff00ffffffffffff
	orr	x4, x4, #0x1000000000000
	b	.LBB18_110
.LBB18_133:                             //   in Loop: Header=BB18_68 Depth=3
	cmp	w30, #224
	b.ne	.LBB18_147
// %bb.134:                             //   in Loop: Header=BB18_68 Depth=3
	and	x6, x6, #0xffffffffffffff00
	mov	x7, xzr
	orr	x4, x4, #0x1
	orr	x6, x6, #0xf0
	b	.LBB18_74
.LBB18_135:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xffffffffffff00ff
	cmp	w30, #14, lsl #12               // =57344
	b.ne	.LBB18_148
// %bb.136:                             //   in Loop: Header=BB18_68 Depth=3
	orr	x6, x9, #0xf000
	orr	x4, x4, #0x100
	b	.LBB18_80
.LBB18_137:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xffffffffff00ffff
	cmp	x30, #3584, lsl #12             // =14680064
	b.ne	.LBB18_149
// %bb.138:                             //   in Loop: Header=BB18_68 Depth=3
	orr	x6, x9, #0xf00000
	orr	x4, x4, #0x10000
	b	.LBB18_86
.LBB18_139:                             //   in Loop: Header=BB18_68 Depth=3
	mov	w9, #-536870912                 // =0xe0000000
	cmp	w30, w9
	b.ne	.LBB18_150
// %bb.140:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xffffffff00ffffff
	orr	x4, x4, #0x1000000
	orr	x6, x9, #0xf0000000
	b	.LBB18_92
.LBB18_141:                             //   in Loop: Header=BB18_68 Depth=3
	mov	x9, #962072674304               // =0xe000000000
	cmp	x30, x9
	b.ne	.LBB18_151
// %bb.142:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xffffff00ffffffff
	orr	x4, x4, #0x100000000
	orr	x6, x9, #0xf000000000
	b	.LBB18_98
.LBB18_143:                             //   in Loop: Header=BB18_68 Depth=3
	mov	x9, #246290604621824            // =0xe00000000000
	cmp	x30, x9
	b.ne	.LBB18_152
// %bb.144:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xffff00ffffffffff
	orr	x4, x4, #0x10000000000
	orr	x6, x9, #0xf00000000000
	b	.LBB18_104
.LBB18_145:                             //   in Loop: Header=BB18_68 Depth=3
	mov	x9, #63050394783186944          // =0xe0000000000000
	cmp	x30, x9
	b.ne	.LBB18_153
// %bb.146:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xff00ffffffffffff
	orr	x4, x4, #0x1000000000000
	orr	x6, x9, #0xf0000000000000
	b	.LBB18_110
.LBB18_147:                             //   in Loop: Header=BB18_68 Depth=3
	and	x6, x6, #0xffffffffffffff00
	mov	x7, xzr
	orr	x6, x30, x6
	b	.LBB18_74
.LBB18_148:                             //   in Loop: Header=BB18_68 Depth=3
	orr	x6, x9, x30
	b	.LBB18_80
.LBB18_149:                             //   in Loop: Header=BB18_68 Depth=3
	orr	x6, x9, x30
	b	.LBB18_86
.LBB18_150:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xffffffff00ffffff
	orr	x6, x9, x30
	b	.LBB18_92
.LBB18_151:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xffffff00ffffffff
	orr	x6, x9, x30
	b	.LBB18_98
.LBB18_152:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xffff00ffffffffff
	orr	x6, x9, x30
	b	.LBB18_104
.LBB18_153:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xff00ffffffffffff
	orr	x6, x9, x30
	b	.LBB18_110
.LBB18_154:                             //   in Loop: Header=BB18_68 Depth=3
	and	x19, x19, #0xf000000000000000
	mov	x9, #-2305843009213693952       // =0xe000000000000000
	cmp	x19, x9
	b.eq	.LBB18_157
// %bb.155:                             //   in Loop: Header=BB18_68 Depth=3
	cbz	x19, .LBB18_65
// %bb.156:                             //   in Loop: Header=BB18_68 Depth=3
	and	x9, x6, #0xffffffffffffff
	orr	x6, x9, x19
	b	.LBB18_67
.LBB18_157:                             //   in Loop: Header=BB18_68 Depth=3
	mov	x9, #-1152921504606846976       // =0xf000000000000000
	orr	x4, x4, #0x100000000000000
	bfxil	x9, x6, #0, #56
	mov	x6, x9
	b	.LBB18_67
.LBB18_158:                             //   in Loop: Header=BB18_2 Depth=1
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	bl	ebc_overlay_enable_control
	cbz	w0, .LBB18_160
.LBB18_159:                             //   in Loop: Header=BB18_2 Depth=1
	str	w21, [x24, #1904]
	adrp	x8, jiffies
	ldr	x19, [x8, :lo12:jiffies]
	bl	ebc_overlay_enable_timeout_ms
	bl	__msecs_to_jiffies
	mov	x8, x0
	add	x0, x24, #1816
	add	x1, x8, x19
	bl	mod_timer
.LBB18_160:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1544]
	cbz	x0, .LBB18_162
// %bb.161:                             //   in Loop: Header=BB18_2 Depth=1
	bl	ebc_buf_release
.LBB18_162:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1552]
	str	x8, [x24, #1544]
	b	.LBB18_2
.LBB18_163:                             //   in Loop: Header=BB18_2 Depth=1
	cmp	w8, #2
	b.eq	.LBB18_165
.LBB18_164:                             //   in Loop: Header=BB18_2 Depth=1
	ldrb	w9, [x24, #1965]
	cmp	w9, #1
	b.ne	.LBB18_215
.LBB18_165:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1528]
	ldr	x0, [x24, #1104]
	ldrsw	x2, [x24, #1388]
	ldr	x1, [x8, #8]
	bl	memcpy
	ldr	x8, [x24, #1536]
	ldr	x0, [x24, #1032]
	ldrsw	x2, [x24, #1388]
	ldr	x1, [x8, #8]
	bl	memcpy
.LBB18_166:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w8, #4                          // =0x4
	ldr	x0, [x24, #1032]
	str	w8, [x24, #1560]
	ldr	x1, [x24, #1104]
	add	x6, x24, #304
	str	x19, [x24, #1536]
	ldr	x2, [x24, #888]
	ldr	x4, [x24, #1248]
	ldr	x3, [x19, #8]
	ldr	x5, [x24, #1320]
	bl	refresh_new_image
	ldr	w8, [x24, #1412]
	cbnz	w8, .LBB18_178
// %bb.167:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1432]
	str	w21, [x24, #1412]
	cbnz	w8, .LBB18_250
// %bb.168:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x24
	mov	w2, wzr
	ldr	w1, [x8, #32]
	bl	ebc_lut_update
	b	.LBB18_251
.LBB18_169:                             //   in Loop: Header=BB18_2 Depth=1
	mov	w19, #1                         // =0x1
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_230
.LBB18_170:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_172
// %bb.171:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.117
	add	x1, x1, :lo12:.L.str.117
	bl	_dev_info
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_228
.LBB18_172:                             //   in Loop: Header=BB18_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB18_173:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_227
// %bb.174:                             //   in Loop: Header=BB18_173 Depth=2
	cbnz	x0, .LBB18_228
// %bb.175:                             //   in Loop: Header=BB18_173 Depth=2
	bl	schedule
	b	.LBB18_173
.LBB18_176:                             //   in Loop: Header=BB18_2 Depth=1
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB18_2
// %bb.177:                             //   in Loop: Header=BB18_2 Depth=1
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB18_2
	b	.LBB18_198
.LBB18_178:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1528]
	ldr	w1, [x19, #32]
	ldr	w8, [x8, #32]
	cmp	w1, w8
	b.ne	.LBB18_256
// %bb.179:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_260
// %bb.180:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1536]
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.116
	add	x1, x1, :lo12:.L.str.116
	ldrh	w3, [x24, #1416]
	b	.LBB18_258
.LBB18_181:                             //   in Loop: Header=BB18_2 Depth=1
	orr	w8, w8, #0x4
	cmp	w8, #5
	b.ne	.LBB18_49
// %bb.182:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w2, [x24, #1432]
	cbnz	w2, .LBB18_283
// %bb.183:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1924]
	cbz	w8, .LBB18_47
// %bb.184:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1920]
	cbz	w8, .LBB18_47
// %bb.185:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_187
// %bb.186:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1456]
	mov	x19, x0
	adrp	x1, .L.str.112
	add	x1, x1, :lo12:.L.str.112
	mov	x0, x8
	bl	_dev_info
	mov	x0, x19
.LBB18_187:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1388]
	ldr	x1, [x24, #1176]
	cmp	w8, #1
	b.lt	.LBB18_191
// %bb.188:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x9, [x24, #1536]
	mov	w13, #240                       // =0xf0
	ldr	x9, [x9, #8]
.LBB18_189:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	bic	w12, w13, w10
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB18_189
// %bb.190:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x1, [x24, #1176]
	ldr	w8, [x24, #1388]
.LBB18_191:                             //   in Loop: Header=BB18_2 Depth=1
	mov	x19, x0
                                        // kill: def $w8 killed $w8 killed $x8 def $x8
	ldr	x0, [x24, #1104]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x24, #1536]
	ldr	x0, [x24, #1032]
	ldrsw	x2, [x24, #1388]
	ldr	x1, [x8, #8]
	bl	memcpy
	ldr	w8, [x24, #1948]
	str	wzr, [x24, #1932]
	str	wzr, [x24, #1920]
	cmp	w8, #1
	str	wzr, [x24, #1908]
	b.lt	.LBB18_193
// %bb.192:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.111
	add	x1, x1, :lo12:.L.str.111
	bl	_dev_info
.LBB18_193:                             //   in Loop: Header=BB18_2 Depth=1
	adrp	x8, jiffies
	ldr	x22, [x8, :lo12:jiffies]
	ldrb	w8, [x24, #1464]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	mov	x8, x0
	add	x0, x24, #1776
	add	x1, x8, x22
	bl	mod_timer
	b	.LBB18_48
.LBB18_194:                             //   in Loop: Header=BB18_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB18_195:                             //   in Loop: Header=BB18_2 Depth=1
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB18_2
// %bb.196:                             //   in Loop: Header=BB18_2 Depth=1
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB18_2
// %bb.197:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1412]
	cbnz	w8, .LBB18_199
.LBB18_198:                             //   in Loop: Header=BB18_2 Depth=1
	mov	x0, x24
	mov	w1, wzr
	bl	ebc_power_set
.LBB18_199:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1448]
	cbnz	w8, .LBB18_303
// %bb.200:                             //   in Loop: Header=BB18_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB18_201:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x24, #1448]
	cbnz	w8, .LBB18_302
// %bb.202:                             //   in Loop: Header=BB18_201 Depth=2
	cbnz	x0, .LBB18_303
// %bb.203:                             //   in Loop: Header=BB18_201 Depth=2
	bl	schedule
	b	.LBB18_201
.LBB18_204:                             //   in Loop: Header=BB18_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB18_205:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_207
// %bb.206:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.118
	add	x1, x1, :lo12:.L.str.118
	bl	_dev_info
.LBB18_207:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldr	x1, [x24, #1528]
	add	x2, x24, #304
	mov	x0, x19
	bl	check_part_mode
	cbz	w0, .LBB18_237
// %bb.208:                             //   in Loop: Header=BB18_2 Depth=1
	str	x19, [x24, #1536]
	mov	x0, x24
	mov	w2, #1                          // =0x1
	ldr	w1, [x19, #32]
	bl	ebc_lut_update
	ldr	w9, [x24, #1948]
	ldr	w8, [x24, #1464]
	cmp	w9, #1
	strh	w8, [x24, #1416]
	b.lt	.LBB18_210
// %bb.209:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x9, [x24, #1536]
	ldr	x0, [x24, #1456]
	and	w3, w8, #0xffff
	adrp	x1, .L.str.120
	add	x1, x1, :lo12:.L.str.120
	ldr	w2, [x9, #32]
	bl	_dev_info
.LBB18_210:                             //   in Loop: Header=BB18_2 Depth=1
	mov	w8, #2                          // =0x2
	mov	x0, x24
	str	w21, [x24, #1412]
	str	w8, [x24, #1560]
	bl	ebc_frame_start
	adrp	x8, jiffies
	add	x0, x24, #1856
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_465
// %bb.211:                             //   in Loop: Header=BB18_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB18_212:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_268
// %bb.213:                             //   in Loop: Header=BB18_212 Depth=2
	cbnz	x0, .LBB18_465
// %bb.214:                             //   in Loop: Header=BB18_212 Depth=2
	bl	schedule
	b	.LBB18_212
.LBB18_215:                             //   in Loop: Header=BB18_2 Depth=1
	orr	w8, w8, #0x4
	cmp	w8, #5
	b.ne	.LBB18_166
// %bb.216:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w2, [x24, #1432]
	cbnz	w2, .LBB18_300
// %bb.217:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1924]
	cbz	w8, .LBB18_165
// %bb.218:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1920]
	cbz	w8, .LBB18_165
// %bb.219:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_221
// %bb.220:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.112
	add	x1, x1, :lo12:.L.str.112
	bl	_dev_info
.LBB18_221:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1388]
	ldr	x1, [x24, #1176]
	cmp	w8, #1
	b.lt	.LBB18_225
// %bb.222:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x9, [x24, #1536]
	mov	w13, #240                       // =0xf0
	ldr	x9, [x9, #8]
.LBB18_223:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	bic	w12, w13, w10
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB18_223
// %bb.224:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x1, [x24, #1176]
	ldr	w8, [x24, #1388]
.LBB18_225:                             //   in Loop: Header=BB18_2 Depth=1
                                        // kill: def $w8 killed $w8 killed $x8 def $x8
	ldr	x0, [x24, #1104]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x24, #1536]
	ldr	x0, [x24, #1032]
	ldrsw	x2, [x24, #1388]
	ldr	x1, [x8, #8]
	bl	memcpy
	str	wzr, [x24, #1932]
	str	wzr, [x24, #1920]
	b	.LBB18_166
.LBB18_226:                             //   in Loop: Header=BB18_2 Depth=1
	mov	w8, wzr
	cbnz	w8, .LBB18_2
	b	.LBB18_17
.LBB18_227:                             //   in Loop: Header=BB18_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB18_228:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_230
// %bb.229:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.118
	add	x1, x1, :lo12:.L.str.118
	bl	_dev_info
.LBB18_230:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1560]
	sub	w9, w8, #3
	cmp	w9, #2
	b.hs	.LBB18_232
// %bb.231:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1528]
	str	wzr, [x24, #1920]
	ldr	x1, [x24, #1104]
	str	wzr, [x24, #1932]
	ldrsw	x2, [x24, #1388]
	ldr	x0, [x8, #8]
	bl	memcpy
	b	.LBB18_234
.LBB18_232:                             //   in Loop: Header=BB18_2 Depth=1
	cmp	w8, #1
	b.ne	.LBB18_234
// %bb.233:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w2, [x24, #1432]
	cbnz	w2, .LBB18_286
.LBB18_234:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w22, [x8, #32]
	sub	w8, w22, #6
	cmp	w8, #6
	b.lo	.LBB18_236
// %bb.235:                             //   in Loop: Header=BB18_2 Depth=1
	sub	w8, w22, #2
	cmp	w8, #1
	b.hi	.LBB18_240
.LBB18_236:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x1, [x24, #1528]
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	add	x2, x24, #304
	bl	check_part_mode
	cbnz	w0, .LBB18_240
.LBB18_237:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_239
// %bb.238:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.119
	add	x1, x1, :lo12:.L.str.119
	bl	_dev_info
.LBB18_239:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [x24, #1536]
	ldr	w8, [x24, #1772]
	cbz	w8, .LBB18_263
	b	.LBB18_467
.LBB18_240:                             //   in Loop: Header=BB18_2 Depth=1
	sub	w9, w22, #12
	ldr	w8, [x24, #1924]
	mov	w13, #240                       // =0xf0
	cmp	w9, #2
	b.hi	.LBB18_289
// %bb.241:                             //   in Loop: Header=BB18_2 Depth=1
	cbz	w8, .LBB18_289
// %bb.242:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1920]
	cbnz	w8, .LBB18_299
// %bb.243:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1932]
	cbnz	w8, .LBB18_306
// %bb.244:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1388]
	add	w9, w8, #7
	cmp	w8, #0
	csel	w9, w9, w8, lt
	cmp	w8, #8
	b.lt	.LBB18_248
// %bb.245:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x10, [x24, #1528]
	asr	w9, w9, #3
	mov	x11, xzr
	ldr	x1, [x10, #8]
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	ldr	x10, [x10, #8]
.LBB18_246:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x12, [x10, x11, lsl #3]
	ldr	x13, [x1, x11, lsl #3]
	cmp	x12, x13
	b.ne	.LBB18_307
// %bb.247:                             //   in Loop: Header=BB18_246 Depth=2
	add	x11, x11, #1
	cmp	w9, w11
	b.ne	.LBB18_246
.LBB18_248:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_312
// %bb.249:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.123
	add	x1, x1, :lo12:.L.str.123
	bl	_dev_info
	b	.LBB18_312
.LBB18_250:                             //   in Loop: Header=BB18_2 Depth=1
	str	wzr, [x24, #1432]
.LBB18_251:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1464]
	ldr	w9, [x24, #1948]
	and	w3, w8, #0xff
	lsr	w8, w8, #8
	cmp	w9, #1
	strh	w3, [x24, #1416]
	strb	w8, [x24, #1418]
	b.lt	.LBB18_253
// %bb.252:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1536]
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.114
	add	x1, x1, :lo12:.L.str.114
	ldr	w2, [x8, #32]
	bl	_dev_info
.LBB18_253:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1496]
	ldr	x1, [x24, #1032]
	add	x5, x24, #304
	ldr	x2, [x24, #1104]
	ldr	x3, [x24, #1248]
	mov	w6, #1                          // =0x1
	ldr	x4, [x24, #1320]
	bl	get_overlay_data
	ldr	w8, [x24, #1420]
	cbnz	w8, .LBB18_259
// %bb.254:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	str	wzr, [x24, #1412]
	str	w21, [x24, #1908]
	cmp	w8, #1
	b.lt	.LBB18_260
// %bb.255:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.144
	add	x1, x1, :lo12:.L.str.144
	adrp	x2, .L__func__.ebc_overlay_bg_frame_start
	add	x2, x2, :lo12:.L__func__.ebc_overlay_bg_frame_start
	bl	_dev_info
	b	.LBB18_260
.LBB18_256:                             //   in Loop: Header=BB18_2 Depth=1
	mov	x0, x24
	mov	w2, wzr
	bl	ebc_lut_update
	ldr	w8, [x24, #1464]
	ldr	w9, [x24, #1948]
	and	w3, w8, #0xff
	cmp	w9, #1
	strh	w3, [x24, #1416]
	b.lt	.LBB18_260
// %bb.257:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1536]
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.115
	add	x1, x1, :lo12:.L.str.115
.LBB18_258:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w2, [x8, #32]
	bl	_dev_info
	b	.LBB18_260
.LBB18_259:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1504]
	ldr	x1, [x24, #1032]
	add	x5, x24, #304
	ldr	x2, [x24, #1104]
	ldr	x3, [x24, #1248]
	mov	w6, #1                          // =0x1
	ldr	x4, [x24, #1320]
	bl	get_overlay_data
	add	x0, x24, #112
	add	x1, x24, #304
	str	wzr, [x24, #184]
	bl	flip
.LBB18_260:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1536]
	ldr	w8, [x8, #32]
	cmp	w8, #23
	b.hi	.LBB18_264
// %bb.261:                             //   in Loop: Header=BB18_2 Depth=1
	lsl	w8, w21, w8
	mov	w9, #1                          // =0x1
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.eq	.LBB18_264
.LBB18_262:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1772]
	cbnz	w8, .LBB18_467
.LBB18_263:                             //   in Loop: Header=BB18_2 Depth=1
	str	w21, [x24, #1772]
	b	.LBB18_468
.LBB18_264:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_262
// %bb.265:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	str	wzr, [x24, #1908]
	cmp	w8, #1
	b.lt	.LBB18_267
// %bb.266:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.111
	add	x1, x1, :lo12:.L.str.111
	bl	_dev_info
.LBB18_267:                             //   in Loop: Header=BB18_2 Depth=1
	adrp	x8, jiffies
	ldr	x19, [x8, :lo12:jiffies]
	ldrh	w8, [x24, #1416]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	mov	x8, x0
	add	x0, x24, #1776
	add	x1, x8, x19
	b	.LBB18_466
.LBB18_268:                             //   in Loop: Header=BB18_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	b	.LBB18_465
.LBB18_269:                             //   in Loop: Header=BB18_2 Depth=1
	mov	w9, #1                          // =0x1
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.eq	.LBB18_311
// %bb.270:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1560]
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	cmp	w8, #5
	str	x9, [x24, #1536]
	b.eq	.LBB18_273
// %bb.271:                             //   in Loop: Header=BB18_2 Depth=1
	cmp	w8, #2
	b.eq	.LBB18_431
// %bb.272:                             //   in Loop: Header=BB18_2 Depth=1
	cmp	w8, #1
	b.ne	.LBB18_430
.LBB18_273:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w2, [x24, #1432]
	cbnz	w2, .LBB18_427
// %bb.274:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1924]
	cbz	w8, .LBB18_431
// %bb.275:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1920]
	cbz	w8, .LBB18_431
// %bb.276:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	cmp	w8, #1
	b.lt	.LBB18_278
// %bb.277:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.112
	add	x1, x1, :lo12:.L.str.112
	bl	_dev_info
	ldr	x9, [x24, #1536]
.LBB18_278:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1388]
	ldr	x1, [x24, #1176]
	cmp	w8, #1
	b.lt	.LBB18_282
// %bb.279:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x9, [x9, #8]
	mov	w13, #240                       // =0xf0
.LBB18_280:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	bic	w12, w13, w10
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB18_280
// %bb.281:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x1, [x24, #1176]
	ldr	w8, [x24, #1388]
.LBB18_282:                             //   in Loop: Header=BB18_2 Depth=1
                                        // kill: def $w8 killed $w8 killed $x8 def $x8
	ldr	x0, [x24, #1104]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x24, #1536]
	ldr	x0, [x24, #1032]
	ldrsw	x2, [x24, #1388]
	ldr	x1, [x8, #8]
	bl	memcpy
	str	wzr, [x24, #1932]
	str	wzr, [x24, #1920]
	b	.LBB18_433
.LBB18_283:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	mov	x19, x0
	cmp	w8, #0
	b.le	.LBB18_304
// %bb.284:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.110
	add	x1, x1, :lo12:.L.str.110
	bl	_dev_info
	ldr	w8, [x24, #1948]
	str	wzr, [x24, #1908]
	cmp	w8, #1
	b.lt	.LBB18_305
// %bb.285:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.111
	add	x1, x1, :lo12:.L.str.111
	bl	_dev_info
	b	.LBB18_305
.LBB18_286:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_288
// %bb.287:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.122
	add	x1, x1, :lo12:.L.str.122
	bl	_dev_info
.LBB18_288:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	mov	w22, #21                        // =0x15
	str	wzr, [x24, #1432]
	mov	w19, #2                         // =0x2
	mov	w13, #240                       // =0xf0
	str	w22, [x8, #32]
	ldr	w8, [x24, #1924]
.LBB18_289:                             //   in Loop: Header=BB18_2 Depth=1
	cbz	w8, .LBB18_314
// %bb.290:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1920]
	cbz	w8, .LBB18_314
// %bb.291:                             //   in Loop: Header=BB18_2 Depth=1
	cmp	w22, #21
	b.eq	.LBB18_314
// %bb.292:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_294
// %bb.293:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.124
	add	x1, x1, :lo12:.L.str.124
	bl	_dev_info
	mov	w13, #240                       // =0xf0
.LBB18_294:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1388]
	cmp	w8, #1
	b.lt	.LBB18_313
// %bb.295:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x10, [x24, #1536]
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	ldr	x9, [x24, #1176]
	ldr	x10, [x10, #8]
	ldr	x11, [x11, #8]
	b	.LBB18_297
.LBB18_296:                             //   in Loop: Header=BB18_297 Depth=2
	subs	x8, x8, #1
	add	x10, x10, #1
	add	x11, x11, #1
	b.eq	.LBB18_313
.LBB18_297:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w12, [x9], #1
	cbz	w12, .LBB18_296
// %bb.298:                             //   in Loop: Header=BB18_297 Depth=2
	ldrb	w12, [x11]
	bic	w12, w13, w12
	strb	w12, [x10]
	b	.LBB18_296
.LBB18_299:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1528]
	ldr	x1, [x24, #1104]
	ldrsw	x2, [x24, #1388]
	ldr	x0, [x8, #8]
	b	.LBB18_308
.LBB18_300:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_166
// %bb.301:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.110
	add	x1, x1, :lo12:.L.str.110
	bl	_dev_info
	b	.LBB18_166
.LBB18_302:                             //   in Loop: Header=BB18_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB18_303:                             //   in Loop: Header=BB18_2 Depth=1
	str	wzr, [x24, #1448]
	b	.LBB18_2
.LBB18_304:                             //   in Loop: Header=BB18_2 Depth=1
	str	wzr, [x24, #1908]
.LBB18_305:                             //   in Loop: Header=BB18_2 Depth=1
	adrp	x8, jiffies
	ldr	x22, [x8, :lo12:jiffies]
	ldr	w8, [x24, #1432]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	mov	x8, x0
	add	x0, x24, #1776
	add	x1, x8, x22
	bl	mod_timer
	str	wzr, [x24, #1432]
	b	.LBB18_48
.LBB18_306:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1528]
	ldr	x1, [x8, #8]
	ldr	w8, [x24, #1388]
.LBB18_307:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1104]
	sxtw	x2, w8
.LBB18_308:                             //   in Loop: Header=BB18_2 Depth=1
	bl	memcpy
	ldr	w8, [x24, #1932]
	cbnz	w8, .LBB18_310
// %bb.309:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1176]
	ldrsw	x2, [x24, #1388]
	mov	w1, wzr
	bl	memset
.LBB18_310:                             //   in Loop: Header=BB18_2 Depth=1
	str	w21, [x24, #1932]
	mov	w19, #5                         // =0x5
	b	.LBB18_315
.LBB18_311:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.134
	add	x1, x1, :lo12:.L.str.134
	bl	_dev_err
.LBB18_312:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	ebc_buf_release
	b	.LBB18_2
.LBB18_313:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	w8, #9                          // =0x9
	str	w8, [x9, #32]
.LBB18_314:                             //   in Loop: Header=BB18_2 Depth=1
	str	wzr, [x24, #1932]
	str	wzr, [x24, #1920]
.LBB18_315:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	cmp	w19, #2
	mov	x0, x24
	cset	w2, eq
	str	w19, [sp, #12]                  // 4-byte Folded Spill
	str	x8, [x24, #1536]
	mov	x19, x8
	ldr	w1, [x8, #32]
	bl	ebc_lut_update
	ldr	w9, [x19, #32]
	ldr	w8, [x24, #1924]
	cmp	w9, #12
	b.eq	.LBB18_320
// %bb.316:                             //   in Loop: Header=BB18_2 Depth=1
	cmp	w9, #14
	b.eq	.LBB18_320
// %bb.317:                             //   in Loop: Header=BB18_2 Depth=1
	cmp	w9, #13
	b.ne	.LBB18_321
// %bb.318:                             //   in Loop: Header=BB18_2 Depth=1
	cbz	w8, .LBB18_321
// %bb.319:                             //   in Loop: Header=BB18_2 Depth=1
	ldrb	w8, [x24, #1464]
	mov	w9, #2                          // =0x2
	strh	w9, [x24, #1416]
	lsr	w8, w8, #1
	b	.LBB18_323
.LBB18_320:                             //   in Loop: Header=BB18_2 Depth=1
	cbnz	w8, .LBB18_322
.LBB18_321:                             //   in Loop: Header=BB18_2 Depth=1
	ldrb	w9, [x24, #1464]
	strh	w9, [x24, #1416]
	cbnz	w8, .LBB18_324
	b	.LBB18_333
.LBB18_322:                             //   in Loop: Header=BB18_2 Depth=1
	ldrh	w8, [x24, #1464]
	ubfx	w8, w8, #1, #7
	strh	w8, [x24, #1416]
	mov	w8, #2                          // =0x2
.LBB18_323:                             //   in Loop: Header=BB18_2 Depth=1
	strb	w8, [x24, #1992]
	mov	w8, #1                          // =0x1
	cbz	w8, .LBB18_333
.LBB18_324:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #32]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB18_333
// %bb.325:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1920]
	cbnz	w8, .LBB18_333
// %bb.326:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1032]
	ldrsw	x2, [x24, #1388]
	mov	w1, wzr
	bl	memset
	ldr	w8, [x24, #1388]
	cmp	w8, #1
	b.lt	.LBB18_333
// %bb.327:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x9, [x24, #1528]
	ldr	x10, [x24, #1032]
	ldrb	w11, [x24, #1992]
	ldr	x9, [x9, #8]
	b	.LBB18_329
.LBB18_328:                             //   in Loop: Header=BB18_329 Depth=2
	subs	x8, x8, #1
	add	x10, x10, #1
	b.eq	.LBB18_333
.LBB18_329:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w12, [x9], #1
	cmp	w12, #240
	b.ne	.LBB18_328
// %bb.330:                             //   in Loop: Header=BB18_329 Depth=2
	strb	w11, [x10]
	b	.LBB18_328
.LBB18_331:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.ge	.LBB18_392
.LBB18_332:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	x8, [x24, #1528]
	ldr	x1, [x24, #1104]
	ldrsw	x2, [x24, #1388]
	ldr	x0, [x8, #8]
	bl	memcpy
.LBB18_333:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB18_341 Depth 3
                                        //         Child Loop BB18_345 Depth 4
                                        //       Child Loop BB18_368 Depth 3
                                        //       Child Loop BB18_386 Depth 3
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	b.ge	.LBB18_389
.LBB18_334:                             //   in Loop: Header=BB18_333 Depth=2
	mov	x0, x24
	str	w21, [x24, #1412]
	str	w8, [x24, #1560]
	bl	ebc_frame_start
	adrp	x8, jiffies
	add	x0, x24, #1856
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x24, #1924]
	cbz	w8, .LBB18_365
// %bb.335:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #32]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB18_365
// %bb.336:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	w8, [x24, #1932]
	cbz	w8, .LBB18_365
// %bb.337:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.ge	.LBB18_394
.LBB18_338:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	w8, [x24, #1440]
	cmp	w8, #1
	b.lt	.LBB18_363
// %bb.339:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	x15, [x24, #1536]
	ldr	w12, [x24, #1928]
	mov	w9, wzr
	ldrsb	w14, [x24, #1992]
	ldr	w11, [x24, #1444]
	mov	w0, wzr
	ldr	x13, [x24, #1104]
	ldr	x15, [x15, #8]
	cmp	w12, #0
	ldr	x16, [x24, #1176]
	ldr	x17, [x24, #1032]
	mov	w10, wzr
	cset	w1, ne
	csetm	w2, ne
	neg	w3, w14
	b	.LBB18_341
.LBB18_340:                             //   in Loop: Header=BB18_341 Depth=3
	add	w10, w10, #1
	add	w9, w9, w11
	cmp	w10, w8
	b.eq	.LBB18_364
.LBB18_341:                             //   Parent Loop BB18_2 Depth=1
                                        //     Parent Loop BB18_333 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB18_345 Depth 4
	cmp	w11, #1
	b.lt	.LBB18_340
// %bb.342:                             //   in Loop: Header=BB18_341 Depth=3
	mov	w5, w9
	mov	x4, x11
	b	.LBB18_345
.LBB18_343:                             //   in Loop: Header=BB18_345 Depth=4
	strb	w6, [x13, x5]
	strb	w30, [x16, x5]
.LBB18_344:                             //   in Loop: Header=BB18_345 Depth=4
	subs	x4, x4, #1
	add	w5, w5, #1
	b.eq	.LBB18_340
.LBB18_345:                             //   Parent Loop BB18_2 Depth=1
                                        //     Parent Loop BB18_333 Depth=2
                                        //       Parent Loop BB18_341 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	sxtw	x5, w5
	ldrb	w6, [x15, x5]
	ldrb	w22, [x13, x5]
	cmp	w22, w6
	b.eq	.LBB18_344
// %bb.346:                             //   in Loop: Header=BB18_345 Depth=4
	cbz	w12, .LBB18_348
// %bb.347:                             //   in Loop: Header=BB18_345 Depth=4
	ldrb	w7, [x17, x5]
	b	.LBB18_349
.LBB18_348:                             //   in Loop: Header=BB18_345 Depth=4
	mov	w7, wzr
.LBB18_349:                             //   in Loop: Header=BB18_345 Depth=4
	ldrsb	w30, [x16, x5]
	cmp	w6, #240
	and	w19, w22, #0xf
	b.ne	.LBB18_354
// %bb.350:                             //   in Loop: Header=BB18_345 Depth=4
	cmp	w30, #0
	add	w7, w7, w1
	csinc	w30, w21, w30, lt
	sxtb	w7, w7
	sxtb	w30, w30
	cbz	w12, .LBB18_352
// %bb.351:                             //   in Loop: Header=BB18_345 Depth=4
	cmp	w7, w14
	b.ge	.LBB18_356
.LBB18_352:                             //   in Loop: Header=BB18_345 Depth=4
	cbnz	w12, .LBB18_359
// %bb.353:                             //   in Loop: Header=BB18_345 Depth=4
	cmp	w30, w14
	b.ge	.LBB18_343
	b	.LBB18_359
.LBB18_354:                             //   in Loop: Header=BB18_345 Depth=4
	add	w7, w7, w2
	sub	w23, w30, #1
	cmp	w30, #0
	sxtb	w7, w7
	csinv	w30, w23, wzr, le
	cbz	w12, .LBB18_357
// %bb.355:                             //   in Loop: Header=BB18_345 Depth=4
	cmp	w7, #1
	b.ge	.LBB18_357
.LBB18_356:                             //   in Loop: Header=BB18_345 Depth=4
	strb	w6, [x13, x5]
	strb	w30, [x16, x5]
	b	.LBB18_362
.LBB18_357:                             //   in Loop: Header=BB18_345 Depth=4
	cbnz	w12, .LBB18_359
// %bb.358:                             //   in Loop: Header=BB18_345 Depth=4
	sxtb	w23, w30
	cmp	w23, w3
	b.le	.LBB18_343
.LBB18_359:                             //   in Loop: Header=BB18_345 Depth=4
	cbnz	w19, .LBB18_361
// %bb.360:                             //   in Loop: Header=BB18_345 Depth=4
	orr	w0, w22, #0x1
	strb	w0, [x13, x5]
.LBB18_361:                             //   in Loop: Header=BB18_345 Depth=4
	mov	w0, #1                          // =0x1
	strb	w30, [x16, x5]
	cbz	w12, .LBB18_344
.LBB18_362:                             //   in Loop: Header=BB18_345 Depth=4
	strb	w7, [x17, x5]
	b	.LBB18_344
.LBB18_363:                             //   in Loop: Header=BB18_333 Depth=2
	mov	w0, wzr
.LBB18_364:                             //   in Loop: Header=BB18_333 Depth=2
	str	w0, [x24, #1920]
.LBB18_365:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	w9, [x24, #1412]
	ldr	w8, [x24, #1948]
	cbz	w9, .LBB18_372
// %bb.366:                             //   in Loop: Header=BB18_333 Depth=2
	cmp	w8, #1
	b.ge	.LBB18_390
.LBB18_367:                             //   in Loop: Header=BB18_333 Depth=2
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB18_368:                             //   Parent Loop BB18_2 Depth=1
                                        //     Parent Loop BB18_333 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_371
// %bb.369:                             //   in Loop: Header=BB18_368 Depth=3
	cbnz	x0, .LBB18_373
// %bb.370:                             //   in Loop: Header=BB18_368 Depth=3
	bl	schedule
	b	.LBB18_368
.LBB18_371:                             //   in Loop: Header=BB18_333 Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	b	.LBB18_373
.LBB18_372:                             //   in Loop: Header=BB18_333 Depth=2
	tbz	w8, #31, .LBB18_391
.LBB18_373:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	w8, [x24, #1432]
	cbnz	w8, .LBB18_395
// %bb.374:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	w8, [x24, #1924]
	cbz	w8, .LBB18_465
// %bb.375:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #32]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB18_465
// %bb.376:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	w8, [x24, #1920]
	cbz	w8, .LBB18_402
// %bb.377:                             //   in Loop: Header=BB18_333 Depth=2
	bl	ebc_get_dsp_list_enum_num
	cbz	w0, .LBB18_381
// %bb.378:                             //   in Loop: Header=BB18_333 Depth=2
	bl	ebc_dsp_buf_next_mode
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #32]
	cmp	w0, w8
	b.eq	.LBB18_465
// %bb.379:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	w8, [x24, #1948]
	cmp	w8, #0
	b.le	.LBB18_332
// %bb.380:                             //   in Loop: Header=BB18_333 Depth=2
	adrp	x1, .L.str.131
	add	x1, x1, :lo12:.L.str.131
	b	.LBB18_393
.LBB18_381:                             //   in Loop: Header=BB18_333 Depth=2
	add	x0, sp, #24
	mov	w1, wzr
	str	wzr, [x24, #1448]
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x24, #1448]
	cbz	w8, .LBB18_385
.LBB18_382:                             //   in Loop: Header=BB18_333 Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB18_383:                             //   in Loop: Header=BB18_333 Depth=2
	bl	ebc_get_dsp_list_enum_num
	cbz	w0, .LBB18_331
// %bb.384:                             //   in Loop: Header=BB18_333 Depth=2
	bl	ebc_dsp_buf_next_mode
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #32]
	cmp	w0, w8
	b.ne	.LBB18_331
	b	.LBB18_465
.LBB18_385:                             //   in Loop: Header=BB18_333 Depth=2
	mov	w8, #3                          // =0x3
.LBB18_386:                             //   Parent Loop BB18_2 Depth=1
                                        //     Parent Loop BB18_333 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	cbnz	x0, .LBB18_383
// %bb.387:                             //   in Loop: Header=BB18_386 Depth=3
	mov	x0, x8
	bl	schedule_timeout
	mov	x22, x0
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w9, [x24, #1448]
	cmp	x22, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x22, xzr, eq
	cbnz	w9, .LBB18_382
// %bb.388:                             //   in Loop: Header=BB18_386 Depth=3
	cbnz	x8, .LBB18_386
	b	.LBB18_382
.LBB18_389:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	x8, [x24, #1536]
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.125
	add	x1, x1, :lo12:.L.str.125
	ldrh	w3, [x24, #1416]
	ldrb	w4, [x24, #1464]
	ldr	w2, [x8, #32]
	bl	_dev_info
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	b	.LBB18_334
.LBB18_390:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.127
	add	x1, x1, :lo12:.L.str.127
	bl	_dev_info
	ldr	w8, [x24, #1412]
	cbnz	w8, .LBB18_367
	b	.LBB18_373
.LBB18_391:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.128
	add	x1, x1, :lo12:.L.str.128
	bl	_dev_info
	b	.LBB18_373
.LBB18_392:                             //   in Loop: Header=BB18_333 Depth=2
	adrp	x1, .L.str.130
	add	x1, x1, :lo12:.L.str.130
.LBB18_393:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	x0, [x24, #1456]
	bl	_dev_info
	b	.LBB18_332
.LBB18_394:                             //   in Loop: Header=BB18_333 Depth=2
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.126
	add	x1, x1, :lo12:.L.str.126
	bl	_dev_info
	b	.LBB18_338
.LBB18_395:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_397
// %bb.396:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.129
	add	x1, x1, :lo12:.L.str.129
	bl	_dev_info
.LBB18_397:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1528]
	ldr	x0, [x24, #1104]
	ldrsw	x2, [x24, #1388]
	ldr	x1, [x8, #8]
	bl	memcpy
	ldr	x8, [x24, #1536]
	ldr	x0, [x24, #1032]
	ldrsw	x2, [x24, #1388]
	ldr	x1, [x8, #8]
	bl	memcpy
	ldr	x0, [x24, #1248]
	ldrsw	x2, [x24, #1388]
	mov	w1, wzr
	bl	memset
	ldr	x0, [x24, #1320]
	ldrsw	x2, [x24, #1388]
	mov	w1, wzr
	bl	memset
	ldr	w8, [x24, #1388]
	cmp	w8, #1
	b.lt	.LBB18_465
// %bb.398:                             //   in Loop: Header=BB18_2 Depth=1
	ldrh	w12, [x24, #1416]
	ldr	w13, [x24, #1432]
	ldr	x9, [x24, #1248]
	ldr	x10, [x24, #1104]
	ldr	x11, [x24, #1032]
	sub	w12, w12, w13
	b	.LBB18_400
.LBB18_399:                             //   in Loop: Header=BB18_400 Depth=2
	subs	w8, w8, #1
	add	x9, x9, #1
	add	x10, x10, #1
	add	x11, x11, #1
	b.eq	.LBB18_465
.LBB18_400:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w13, [x10]
	ldrb	w14, [x11]
	cmp	w13, w14
	b.eq	.LBB18_399
// %bb.401:                             //   in Loop: Header=BB18_400 Depth=2
	strb	w12, [x9]
	b	.LBB18_399
.LBB18_402:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1932]
	cbz	w8, .LBB18_465
// %bb.403:                             //   in Loop: Header=BB18_2 Depth=1
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB18_465
// %bb.404:                             //   in Loop: Header=BB18_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	str	wzr, [x24, #1448]
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x24, #1448]
	cbnz	w8, .LBB18_409
// %bb.405:                             //   in Loop: Header=BB18_2 Depth=1
	mov	w8, #3                          // =0x3
.LBB18_406:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	cbnz	x0, .LBB18_410
// %bb.407:                             //   in Loop: Header=BB18_406 Depth=2
	mov	x0, x8
	bl	schedule_timeout
	mov	x19, x0
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w9, [x24, #1448]
	cmp	x19, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x19, xzr, eq
	cbnz	w9, .LBB18_409
// %bb.408:                             //   in Loop: Header=BB18_406 Depth=2
	cbnz	x8, .LBB18_406
.LBB18_409:                             //   in Loop: Header=BB18_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB18_410:                             //   in Loop: Header=BB18_2 Depth=1
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB18_465
// %bb.411:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_413
// %bb.412:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.132
	add	x1, x1, :lo12:.L.str.132
	bl	_dev_info
.LBB18_413:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1440]
	ldr	x1, [x24, #1104]
	sub	w8, w8, #1
	cmp	w8, #1
	b.le	.LBB18_450
// %bb.414:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w10, [x24, #1444]
	ldr	x12, [x24, #1176]
	mov	x9, xzr
	mov	w15, #1                         // =0x1
	lsl	w14, w10, #1
	sub	w11, w10, #1
	mov	x16, x10
	sub	x13, x11, #1
	orr	x14, x14, #0x1
	b	.LBB18_416
.LBB18_415:                             //   in Loop: Header=BB18_416 Depth=2
	add	w15, w15, #1
	add	x16, x16, x10
	add	x14, x14, x10
	cmp	w15, w8
	add	x9, x9, x10
	b.eq	.LBB18_449
.LBB18_416:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB18_418 Depth 3
	cmp	w11, #2
	b.lt	.LBB18_415
// %bb.417:                             //   in Loop: Header=BB18_416 Depth=2
	mov	x17, xzr
.LBB18_418:                             //   Parent Loop BB18_2 Depth=1
                                        //     Parent Loop BB18_416 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	add	w0, w16, w17
	add	w0, w0, #1
	ldrb	w2, [x12, w0, sxtw]
	cbz	w2, .LBB18_420
// %bb.419:                             //   in Loop: Header=BB18_418 Depth=3
	mov	w2, #248                        // =0xf8
	b	.LBB18_425
.LBB18_420:                             //   in Loop: Header=BB18_418 Depth=3
	add	w2, w9, w17
	add	w2, w2, #1
	ldrb	w2, [x12, w2, sxtw]
	cbnz	w2, .LBB18_424
// %bb.421:                             //   in Loop: Header=BB18_418 Depth=3
	add	w2, w14, w17
	ldrb	w2, [x12, w2, sxtw]
	cbnz	w2, .LBB18_424
// %bb.422:                             //   in Loop: Header=BB18_418 Depth=3
	add	w2, w16, w17
	ldrb	w2, [x12, w2, sxtw]
	cbnz	w2, .LBB18_424
// %bb.423:                             //   in Loop: Header=BB18_418 Depth=3
	add	w2, w16, w17
	add	w2, w2, #2
	ldrb	w2, [x12, w2, sxtw]
	cbz	w2, .LBB18_426
.LBB18_424:                             //   in Loop: Header=BB18_418 Depth=3
	mov	w2, #232                        // =0xe8
.LBB18_425:                             //   in Loop: Header=BB18_418 Depth=3
	strb	w2, [x1, w0, sxtw]
.LBB18_426:                             //   in Loop: Header=BB18_418 Depth=3
	add	x17, x17, #1
	cmp	x13, x17
	b.ne	.LBB18_418
	b	.LBB18_415
.LBB18_427:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_429
// %bb.428:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.110
	add	x1, x1, :lo12:.L.str.110
	bl	_dev_info
.LBB18_429:                             //   in Loop: Header=BB18_2 Depth=1
	str	wzr, [x24, #1432]
	b	.LBB18_433
.LBB18_430:                             //   in Loop: Header=BB18_2 Depth=1
	ldrb	w9, [x24, #1965]
	cmp	w9, #1
	b.ne	.LBB18_437
.LBB18_431:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1528]
	ldr	x0, [x24, #1104]
	ldrsw	x2, [x24, #1388]
	ldr	x1, [x8, #8]
	bl	memcpy
.LBB18_432:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1536]
	ldr	x0, [x24, #1032]
	ldrsw	x2, [x24, #1388]
	ldr	x1, [x8, #8]
	bl	memcpy
.LBB18_433:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1412]
	mov	w9, #3                          // =0x3
	str	w9, [x24, #1560]
	cbnz	w8, .LBB18_262
// %bb.434:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	w21, [x24, #1412]
	mov	x0, x24
	mov	w2, wzr
	ldr	w1, [x8, #32]
	bl	ebc_lut_update
	ldr	w8, [x24, #1464]
	ldr	w9, [x24, #1948]
	and	w2, w8, #0xff
	lsr	w8, w8, #8
	cmp	w9, #1
	strh	w2, [x24, #1416]
	strb	w8, [x24, #1418]
	b.lt	.LBB18_436
// %bb.435:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.121
	add	x1, x1, :lo12:.L.str.121
	bl	_dev_info
.LBB18_436:                             //   in Loop: Header=BB18_2 Depth=1
	mov	x0, x24
	bl	ebc_frame_start
	b	.LBB18_262
.LBB18_437:                             //   in Loop: Header=BB18_2 Depth=1
	cmp	w8, #4
	b.ne	.LBB18_439
// %bb.438:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1412]
	cbnz	w8, .LBB18_469
.LBB18_439:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1528]
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w9, [x9, #32]
	ldr	w8, [x8, #32]
	cmp	w9, w8
	b.eq	.LBB18_441
// %bb.440:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1412]
	cbnz	w8, .LBB18_475
.LBB18_441:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1444]
	ldr	w9, [x24, #1440]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w10, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB18_433
// %bb.442:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x12, [sp, #16]                  // 8-byte Folded Reload
	asr	w10, w10, #3
	ldr	x11, [x24, #1248]
	ldr	x13, [x24, #1032]
	mov	w14, wzr
	ldr	x12, [x12, #8]
	b	.LBB18_444
.LBB18_443:                             //   in Loop: Header=BB18_444 Depth=2
	add	w14, w14, #1
	cmp	w14, w9
	b.eq	.LBB18_433
.LBB18_444:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB18_447 Depth 3
	cmp	w8, #8
	b.lt	.LBB18_443
// %bb.445:                             //   in Loop: Header=BB18_444 Depth=2
	mov	w15, w10
	b	.LBB18_447
.LBB18_446:                             //   in Loop: Header=BB18_447 Depth=3
	subs	w15, w15, #1
	add	x11, x11, #8
	add	x13, x13, #8
	b.eq	.LBB18_443
.LBB18_447:                             //   Parent Loop BB18_2 Depth=1
                                        //     Parent Loop BB18_444 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x16, [x12], #8
	ldr	x17, [x13]
	cmp	x16, x17
	b.eq	.LBB18_446
// %bb.448:                             //   in Loop: Header=BB18_447 Depth=3
	ldr	x0, [x11]
	tst	x0, #0xff
	csel	x1, x3, xzr, eq
	tst	x0, #0xff00
	orr	x2, x1, #0xff00
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000
	orr	x2, x1, #0xff0000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000
	orr	x2, x1, #0xff000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff00000000
	orr	x2, x1, #0xff00000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000000000
	orr	x2, x1, #0xff0000000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000000000
	lsr	x0, x0, #56
	orr	x2, x1, #0xff000000000000
	csel	x1, x2, x1, eq
	cmp	x0, #0
	orr	x2, x1, #0xff00000000000000
	csel	x0, x2, x1, eq
	bic	x17, x17, x0
	and	x16, x0, x16
	orr	x16, x17, x16
	str	x16, [x13]
	b	.LBB18_446
.LBB18_449:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x1, [x24, #1104]
.LBB18_450:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1528]
	ldrsw	x2, [x24, #1388]
	ldr	x0, [x8, #8]
	bl	memcpy
	ldr	w8, [x24, #1924]
	mov	w9, #2                          // =0x2
	mov	w10, #10                        // =0xa
	mov	w11, #1                         // =0x1
	mov	w21, #1                         // =0x1
	madd	w9, w8, w10, w9
	ldr	w10, [x24, #1948]
	cmp	w8, #7
	mov	w8, #72                         // =0x48
	str	w11, [x24, #1412]
	str	w11, [x24, #1560]
	csel	w8, w8, w9, gt
	cmp	w10, #1
	strh	w8, [x24, #1416]
	b.lt	.LBB18_452
// %bb.451:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x9, [x24, #1536]
	ldr	x0, [x24, #1456]
	and	w3, w8, #0xffff
	adrp	x1, .L.str.120
	add	x1, x1, :lo12:.L.str.120
	ldr	w2, [x9, #32]
	bl	_dev_info
.LBB18_452:                             //   in Loop: Header=BB18_2 Depth=1
	mov	x0, x24
	bl	ebc_frame_start
	adrp	x8, jiffies
	add	x0, x24, #1856
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_454
// %bb.453:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.127
	add	x1, x1, :lo12:.L.str.127
	bl	_dev_info
.LBB18_454:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_460
// %bb.455:                             //   in Loop: Header=BB18_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB18_456:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_459
// %bb.457:                             //   in Loop: Header=BB18_456 Depth=2
	cbnz	x0, .LBB18_460
// %bb.458:                             //   in Loop: Header=BB18_456 Depth=2
	bl	schedule
	b	.LBB18_456
.LBB18_459:                             //   in Loop: Header=BB18_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB18_460:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w2, [x24, #1432]
	cmp	w2, #10
	b.gt	.LBB18_462
// %bb.461:                             //   in Loop: Header=BB18_2 Depth=1
	str	wzr, [x24, #1932]
	b	.LBB18_464
.LBB18_462:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_464
// %bb.463:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.133
	add	x1, x1, :lo12:.L.str.133
	bl	_dev_info
.LBB18_464:                             //   in Loop: Header=BB18_2 Depth=1
	str	wzr, [x24, #1432]
.LBB18_465:                             //   in Loop: Header=BB18_2 Depth=1
	adrp	x8, jiffies
	mov	w9, #335544320                  // =0x14000000
	add	x0, x24, #1856
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, x9
.LBB18_466:                             //   in Loop: Header=BB18_2 Depth=1
	bl	mod_timer
	ldr	w8, [x24, #1772]
	cbz	w8, .LBB18_263
.LBB18_467:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1528]
	bl	ebc_buf_release
.LBB18_468:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x8, [x24, #1536]
	str	x8, [x24, #1528]
	b	.LBB18_2
.LBB18_469:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_471
// %bb.470:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.117
	add	x1, x1, :lo12:.L.str.117
	bl	_dev_info
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_482
.LBB18_471:                             //   in Loop: Header=BB18_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB18_472:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_481
// %bb.473:                             //   in Loop: Header=BB18_472 Depth=2
	cbnz	x0, .LBB18_482
// %bb.474:                             //   in Loop: Header=BB18_472 Depth=2
	bl	schedule
	b	.LBB18_472
.LBB18_475:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_477
// %bb.476:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.117
	add	x1, x1, :lo12:.L.str.117
	bl	_dev_info
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_482
.LBB18_477:                             //   in Loop: Header=BB18_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB18_478:                             //   Parent Loop BB18_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x24, #1412]
	cbz	w8, .LBB18_481
// %bb.479:                             //   in Loop: Header=BB18_478 Depth=2
	cbnz	x0, .LBB18_482
// %bb.480:                             //   in Loop: Header=BB18_478 Depth=2
	bl	schedule
	b	.LBB18_478
.LBB18_481:                             //   in Loop: Header=BB18_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB18_482:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	w8, [x24, #1948]
	cmp	w8, #1
	b.lt	.LBB18_432
// %bb.483:                             //   in Loop: Header=BB18_2 Depth=1
	ldr	x0, [x24, #1456]
	adrp	x1, .L.str.118
	add	x1, x1, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB18_432
.Lfunc_end18:
	.size	ebc_thread, .Lfunc_end18-ebc_thread
                                        // -- End function
	.p2align	2                               // -- Begin function flip
	.type	flip,@function
flip:                                   // @flip
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	ldrsw	x9, [x0, #72]
	mov	w8, #24                         // =0x18
	stp	x26, x25, [sp, #16]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	smaddl	x23, w9, w8, x0
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	ldr	w8, [x0, #172]
	ldp	w24, w25, [x0, #132]
	ldr	w22, [x0, #140]
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	mov	x19, x0
	mov	x20, x1
	cbz	w8, .LBB19_2
// %bb.1:
	ldp	w9, w10, [x19, #76]
	ldr	w11, [x19, #168]
	mul	w12, w9, w8
	add	w8, w11, w8
	sub	w10, w10, w11
	mul	w13, w11, w9
	mul	w8, w8, w9
	mul	w10, w10, w9
	ldur	x9, [x23, #24]
	lsr	w21, w12, #2
	lsr	w26, w13, #2
	lsr	w8, w8, #2
	lsr	w2, w10, #2
	add	x1, x9, x26
	add	x0, x9, x8
	bl	memmove
	ldur	x8, [x23, #24]
	mov	w1, wzr
	mov	x2, x21
	add	x0, x8, x26
	bl	memset
.LBB19_2:
	ldr	w8, [x20, #1720]
	tbnz	w8, #31, .LBB19_7
// %bb.3:
	ldr	w9, [x20, #1136]
	cmp	w8, w9
	b.ge	.LBB19_7
// %bb.4:
	ldr	w9, [x20, #1716]
	tbnz	w9, #31, .LBB19_7
// %bb.5:
	ldr	w10, [x20, #1140]
	cmp	w9, w10
	b.ge	.LBB19_7
// %bb.6:
	mul	w8, w10, w8
	ldur	x10, [x23, #24]
	lsr	w8, w8, #2
	add	x8, x8, x9, lsr #2
	ubfiz	w9, w9, #1, #2
	ldrb	w8, [x10, x8]
	mov	w10, #48                        // =0x30
	lsr	w8, w8, w9
	ldrb	w9, [x20, #1724]
	bfxil	w10, w8, #0, #2
	add	w8, w9, #1
	add	x9, x20, x9
	strb	w8, [x20, #1724]
	strb	w10, [x9, #1725]
.LBB19_7:
	ldr	x0, [x19]
	ldrb	w8, [x0, #796]
	tbnz	w8, #6, .LBB19_9
// %bb.8:
	ldrsw	x2, [x20, #1088]
	ldur	x1, [x23, #32]
	mov	w3, #1                          // =0x1
	bl	__dma_sync_single_for_device
.LBB19_9:
	ldr	x0, [x19, #8]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	add	w20, w25, w24
	ldr	x8, [x0, #184]
	ldur	w16, [x8, #-4]
	movk	w17, #25337
	movk	w17, #33182, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp28
	brk	#0x8228
.Ltmp28:
	blr	x8
	ldr	x0, [x19, #8]
	ldur	w1, [x23, #32]
	mov	w2, wzr
	ldr	x8, [x0, #192]
	ldur	w16, [x8, #-4]
	movk	w17, #4825
	movk	w17, #3196, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp29
	brk	#0x8228
.Ltmp29:
	blr	x8
	ldr	x0, [x19, #8]
	add	w1, w20, w22
	mov	w2, wzr
	ldr	x8, [x0, #240]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp30
	brk	#0x8228
.Ltmp30:
	blr	x8
	ldr	x0, [x19, #8]
	mov	w1, #1                          // =0x1
	mov	w20, #1                         // =0x1
	ldr	x8, [x0, #224]
	ldur	w16, [x8, #-4]
	movk	w17, #41130
	movk	w17, #9946, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp31
	brk	#0x8228
.Ltmp31:
	blr	x8
	ldr	w8, [x19, #72]
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	sub	w8, w20, w8
	ldp	x26, x25, [sp, #16]             // 16-byte Folded Reload
	str	w8, [x19, #72]
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end19:
	.size	flip, .Lfunc_end19-flip
                                        // -- End function
	.p2align	2                               // -- Begin function get_overlay_data
	.type	get_overlay_data,@function
get_overlay_data:                       // @get_overlay_data
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #128
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	mov	x19, x5
	ldr	x20, [x8, :lo12:global_ebc]
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	add	x9, x5, #1116
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	ldp	w12, w8, [x20, #188]
	ldr	w11, [x20, #276]
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stp	x28, x27, [sp, #48]             // 16-byte Folded Spill
	add	w10, w8, w8, lsr #31
	lsr	x23, x12, #3
	lsr	w21, w12, #2
	stp	x26, x25, [sp, #64]             // 16-byte Folded Spill
	asr	w10, w10, #1
	stur	x12, [x29, #-8]                 // 8-byte Folded Spill
	cbz	w11, .LBB20_101
// %bb.1:
	ldur	x12, [x29, #-8]                 // 8-byte Folded Reload
	mul	w11, w10, w23
	cmp	w6, #2
	add	x13, x19, #1120
	csel	w14, w8, w10, ne
	cmp	w6, #3
	mul	w12, w10, w12
	csel	x9, x13, x9, eq
	mov	w15, wzr
	stp	x9, x0, [sp, #8]                // 16-byte Folded Spill
	sbfiz	x9, x11, #3, #32
	csel	w20, w8, w14, eq
	csel	w24, w10, w15, eq
	add	x8, x4, x12
	add	x10, x3, x12
	mul	w26, w24, w21
	csel	x25, x8, x4, eq
	add	x8, x2, x9
	add	x9, x1, x9
	csel	x27, x10, x3, eq
	csel	x28, x8, x2, eq
	csel	x22, x9, x1, eq
	subs	w8, w20, w24
	add	x0, x0, w26, sxtw
	mov	w1, wzr
	mul	w8, w8, w21
	sxtw	x2, w8
	bl	memset
	ldur	x11, [x29, #-8]                 // 8-byte Folded Reload
	cmp	w20, w24
	mov	w2, wzr
	b.le	.LBB20_100
// %bb.2:
	lsl	x8, x23, #3
	lsl	w9, w21, #1
	mov	w2, wzr
	add	x10, x19, #1176
	b	.LBB20_5
.LBB20_3:                               //   in Loop: Header=BB20_5 Depth=1
	add	x12, x22, x11
	add	x14, x28, x11
	add	x15, x27, x11
	add	x11, x25, x11
	add	x22, x12, x13
	add	x28, x14, x13
	add	x25, x11, x13
	ldur	x11, [x29, #-8]                 // 8-byte Folded Reload
	add	x27, x15, x13
.LBB20_4:                               //   in Loop: Header=BB20_5 Depth=1
	add	w24, w24, #2
	add	w26, w26, w9
	cmp	w24, w20
	b.ge	.LBB20_100
.LBB20_5:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB20_9 Depth 2
                                        //     Child Loop BB20_56 Depth 2
	cmp	w11, #8
	b.lo	.LBB20_4
// %bb.6:                               //   in Loop: Header=BB20_5 Depth=1
	ldr	x12, [sp, #16]                  // 8-byte Folded Reload
	mov	x11, xzr
	add	x12, x12, w26, sxtw
	mov	x13, x12
	b	.LBB20_9
.LBB20_7:                               //   in Loop: Header=BB20_9 Depth=2
	mov	w2, #1                          // =0x1
	str	w16, [x13]
.LBB20_8:                               //   in Loop: Header=BB20_9 Depth=2
	add	x11, x11, #8
	add	x13, x13, #4
	cmp	x8, x11
	b.eq	.LBB20_53
.LBB20_9:                               //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x15, [x22, x11]
	ldr	x14, [x28, x11]
	cmp	x14, x15
	b.eq	.LBB20_8
// %bb.10:                              //   in Loop: Header=BB20_9 Depth=2
	eor	x0, x14, x15
	tst	x0, #0xff
	b.eq	.LBB20_13
// %bb.11:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w17, [x25, x11]
	cbz	x17, .LBB20_14
// %bb.12:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w16, [x19, #1114]
	b	.LBB20_15
.LBB20_13:                              //   in Loop: Header=BB20_9 Depth=2
	mov	w16, wzr
	mov	w17, wzr
	b	.LBB20_16
.LBB20_14:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w16, [x19, #1112]
.LBB20_15:                              //   in Loop: Header=BB20_9 Depth=2
	lsl	x1, x14, #2
	ldrb	w2, [x27, x11]
	ldr	x17, [x10, x17, lsl #3]
	mov	x3, x14
	and	w16, w16, #0xff
	and	x1, x1, #0x3e0
	add	x17, x17, x2, lsl #10
	add	w2, w2, #1
	bfxil	x1, x15, #3, #5
	bfxil	x3, x15, #0, #8
	cmp	w16, w2, uxtb
	ldrb	w16, [x17, x1]
	cset	w17, eq
	csel	x14, x3, x14, eq
	csel	w1, wzr, w2, eq
	strb	w1, [x27, x11]
.LBB20_16:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x0, #0xff00
	add	x1, x27, x11
	b.eq	.LBB20_21
// %bb.17:                              //   in Loop: Header=BB20_9 Depth=2
	add	x2, x25, x11
	ldrb	w3, [x2, #1]
	cbz	x3, .LBB20_19
// %bb.18:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_20
.LBB20_19:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_20:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x4, x14, #6
	ldrb	w5, [x1, #1]
	ldr	x3, [x10, x3, lsl #3]
	lsr	x6, x15, #8
	and	w2, w2, #0xff
	and	x4, x4, #0x3e0
	add	x3, x3, x5, lsl #10
	bfxil	x4, x15, #11, #5
	ldrb	w3, [x3, x4]
	add	w4, w5, #1
	mov	x5, x14
	cmp	w2, w4, uxtb
	bfi	x5, x6, #8, #8
	orr	w16, w16, w3, lsl #4
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w17, w2, w17
	csel	x14, x5, x14, eq
	strb	w3, [x1, #1]
.LBB20_21:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x0, #0xff0000
	b.eq	.LBB20_26
// %bb.22:                              //   in Loop: Header=BB20_9 Depth=2
	add	x2, x25, x11
	ldrb	w3, [x2, #2]
	cbz	x3, .LBB20_24
// %bb.23:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_25
.LBB20_24:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_25:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x4, x14, #14
	ldrb	w5, [x1, #2]
	ldr	x3, [x10, x3, lsl #3]
	lsr	x6, x15, #16
	and	w2, w2, #0xff
	and	x4, x4, #0x3e0
	add	x3, x3, x5, lsl #10
	bfxil	x4, x15, #19, #5
	ldrb	w3, [x3, x4]
	add	w4, w5, #1
	mov	x5, x14
	cmp	w2, w4, uxtb
	bfi	x5, x6, #16, #8
	orr	w16, w16, w3, lsl #8
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w17, w2, w17
	csel	x14, x5, x14, eq
	strb	w3, [x1, #2]
.LBB20_26:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x0, #0xff000000
	add	x1, x27, x11
	b.eq	.LBB20_31
// %bb.27:                              //   in Loop: Header=BB20_9 Depth=2
	add	x2, x25, x11
	ldrb	w3, [x2, #3]
	cbz	x3, .LBB20_29
// %bb.28:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_30
.LBB20_29:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_30:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x4, x14, #22
	ldrb	w5, [x1, #3]
	ldr	x3, [x10, x3, lsl #3]
	lsr	x6, x15, #24
	and	w2, w2, #0xff
	and	x4, x4, #0x3e0
	add	x3, x3, x5, lsl #10
	bfxil	x4, x15, #27, #5
	ldrb	w3, [x3, x4]
	add	w4, w5, #1
	mov	x5, x14
	cmp	w2, w4, uxtb
	bfi	x5, x6, #24, #8
	orr	w16, w16, w3, lsl #12
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w17, w2, w17
	csel	x14, x5, x14, eq
	strb	w3, [x1, #3]
.LBB20_31:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x0, #0xff00000000
	b.eq	.LBB20_36
// %bb.32:                              //   in Loop: Header=BB20_9 Depth=2
	add	x2, x25, x11
	ldrb	w3, [x2, #4]
	cbz	x3, .LBB20_34
// %bb.33:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_35
.LBB20_34:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_35:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x4, x14, #30
	ldrb	w5, [x1, #4]
	ldr	x3, [x10, x3, lsl #3]
	lsr	x6, x15, #32
	and	w2, w2, #0xff
	and	x4, x4, #0x3e0
	add	x3, x3, x5, lsl #10
	bfxil	x4, x15, #35, #5
	ldrb	w3, [x3, x4]
	add	w4, w5, #1
	mov	x5, x14
	cmp	w2, w4, uxtb
	bfi	x5, x6, #32, #8
	orr	w16, w16, w3, lsl #16
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w17, w2, w17
	csel	x14, x5, x14, eq
	strb	w3, [x1, #4]
.LBB20_36:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x0, #0xff0000000000
	add	x1, x27, x11
	b.eq	.LBB20_41
// %bb.37:                              //   in Loop: Header=BB20_9 Depth=2
	add	x2, x25, x11
	ldrb	w3, [x2, #5]
	cbz	x3, .LBB20_39
// %bb.38:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_40
.LBB20_39:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_40:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x4, x14, #38
	ldrb	w5, [x1, #5]
	ldr	x3, [x10, x3, lsl #3]
	lsr	x6, x15, #40
	and	w2, w2, #0xff
	and	x4, x4, #0x3e0
	add	x3, x3, x5, lsl #10
	bfxil	x4, x15, #43, #5
	ldrb	w3, [x3, x4]
	add	w4, w5, #1
	mov	x5, x14
	cmp	w2, w4, uxtb
	bfi	x5, x6, #40, #8
	orr	w16, w16, w3, lsl #20
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w17, w2, w17
	csel	x14, x5, x14, eq
	strb	w3, [x1, #5]
.LBB20_41:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x0, #0xff000000000000
	b.eq	.LBB20_46
// %bb.42:                              //   in Loop: Header=BB20_9 Depth=2
	add	x2, x25, x11
	ldrb	w3, [x2, #6]
	cbz	x3, .LBB20_44
// %bb.43:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_45
.LBB20_44:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_45:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x4, x14, #46
	ldrb	w5, [x1, #6]
	ldr	x3, [x10, x3, lsl #3]
	lsr	x6, x15, #48
	and	w2, w2, #0xff
	and	x4, x4, #0x3e0
	add	x3, x3, x5, lsl #10
	bfxil	x4, x15, #51, #5
	ldrb	w3, [x3, x4]
	add	w4, w5, #1
	mov	x5, x14
	cmp	w2, w4, uxtb
	bfi	x5, x6, #48, #8
	orr	w16, w16, w3, lsl #24
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w17, w2, w17
	csel	x14, x5, x14, eq
	strb	w3, [x1, #6]
.LBB20_46:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x0, x0, #56
	cbz	x0, .LBB20_51
// %bb.47:                              //   in Loop: Header=BB20_9 Depth=2
	add	x0, x25, x11
	ldrb	w1, [x0, #7]
	cbz	x1, .LBB20_49
// %bb.48:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w0, [x19, #1114]
	b	.LBB20_50
.LBB20_49:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w0, [x19, #1112]
.LBB20_50:                              //   in Loop: Header=BB20_9 Depth=2
	add	x2, x27, x11
	lsr	x3, x14, #54
	ldr	x1, [x10, x1, lsl #3]
	ldrb	w4, [x2, #7]
	and	w0, w0, #0xff
	and	x3, x3, #0x3e0
	add	x1, x1, x4, lsl #10
	bfxil	x3, x15, #59, #5
	add	w4, w4, #1
	cmp	w0, w4, uxtb
	bfxil	x15, x14, #0, #56
	ldrb	w1, [x1, x3]
	cset	w0, eq
	orr	w17, w0, w17
	csel	x14, x15, x14, eq
	orr	w16, w16, w1, lsl #28
	csel	w1, wzr, w4, eq
	strb	w1, [x2, #7]
.LBB20_51:                              //   in Loop: Header=BB20_9 Depth=2
	tbz	w17, #0, .LBB20_7
// %bb.52:                              //   in Loop: Header=BB20_9 Depth=2
	str	x14, [x28, x11]
	b	.LBB20_7
.LBB20_53:                              //   in Loop: Header=BB20_5 Depth=1
	mov	x13, xzr
	add	x14, x22, x11
	add	x15, x28, x11
	add	x16, x25, x11
	add	x17, x27, x11
	b	.LBB20_56
.LBB20_54:                              //   in Loop: Header=BB20_56 Depth=2
	ldr	w0, [x12]
	orr	w0, w0, w2
	mov	w2, #1                          // =0x1
	str	w0, [x12]
.LBB20_55:                              //   in Loop: Header=BB20_56 Depth=2
	add	x13, x13, #8
	add	x12, x12, #4
	cmp	x8, x13
	b.eq	.LBB20_3
.LBB20_56:                              //   Parent Loop BB20_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x1, [x14, x13]
	ldr	x0, [x15, x13]
	cmp	x0, x1
	b.eq	.LBB20_55
// %bb.57:                              //   in Loop: Header=BB20_56 Depth=2
	eor	x4, x0, x1
	tst	x4, #0xff
	b.eq	.LBB20_60
// %bb.58:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w3, [x16, x13]
	cbz	x3, .LBB20_61
// %bb.59:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_62
.LBB20_60:                              //   in Loop: Header=BB20_56 Depth=2
	mov	w3, wzr
	mov	w2, wzr
	b	.LBB20_63
.LBB20_61:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_62:                              //   in Loop: Header=BB20_56 Depth=2
	lsl	x5, x0, #2
	ldrb	w6, [x17, x13]
	ldr	x3, [x10, x3, lsl #3]
	and	w2, w2, #0xff
	and	x5, x5, #0x3e0
	add	x3, x3, x6, lsl #10
	bfxil	x5, x1, #3, #5
	ldrb	w3, [x3, x5]
	add	w5, w6, #1
	mov	x6, x0
	bfxil	x6, x1, #0, #8
	cmp	w2, w5, uxtb
	lsl	w2, w3, #2
	cset	w3, eq
	csel	w5, wzr, w5, eq
	csel	x0, x6, x0, eq
	strb	w5, [x17, x13]
.LBB20_63:                              //   in Loop: Header=BB20_56 Depth=2
	tst	x4, #0xff00
	add	x5, x17, x13
	b.eq	.LBB20_68
// %bb.64:                              //   in Loop: Header=BB20_56 Depth=2
	add	x6, x16, x13
	ldrb	w7, [x6, #1]
	cbz	x7, .LBB20_66
// %bb.65:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1114]
	b	.LBB20_67
.LBB20_66:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1112]
.LBB20_67:                              //   in Loop: Header=BB20_56 Depth=2
	lsr	x21, x0, #6
	ldrb	w23, [x5, #1]
	ldr	x7, [x10, x7, lsl #3]
	lsr	x30, x1, #8
	and	w6, w6, #0xff
	and	x21, x21, #0x3e0
	add	x7, x7, x23, lsl #10
	bfxil	x21, x1, #11, #5
	ldrb	w7, [x7, x21]
	add	w21, w23, #1
	mov	x23, x0
	cmp	w6, w21, uxtb
	bfi	x23, x30, #8, #8
	orr	w2, w2, w7, lsl #6
	cset	w6, eq
	csel	w7, wzr, w21, eq
	csel	x0, x23, x0, eq
	orr	w3, w6, w3
	strb	w7, [x5, #1]
.LBB20_68:                              //   in Loop: Header=BB20_56 Depth=2
	tst	x4, #0xff0000
	b.eq	.LBB20_73
// %bb.69:                              //   in Loop: Header=BB20_56 Depth=2
	add	x6, x16, x13
	ldrb	w7, [x6, #2]
	cbz	x7, .LBB20_71
// %bb.70:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1114]
	b	.LBB20_72
.LBB20_71:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1112]
.LBB20_72:                              //   in Loop: Header=BB20_56 Depth=2
	lsr	x21, x0, #14
	ldrb	w23, [x5, #2]
	ldr	x7, [x10, x7, lsl #3]
	lsr	x30, x1, #16
	and	w6, w6, #0xff
	and	x21, x21, #0x3e0
	add	x7, x7, x23, lsl #10
	bfxil	x21, x1, #19, #5
	ldrb	w7, [x7, x21]
	add	w21, w23, #1
	mov	x23, x0
	cmp	w6, w21, uxtb
	bfi	x23, x30, #16, #8
	orr	w2, w2, w7, lsl #10
	cset	w6, eq
	csel	w7, wzr, w21, eq
	csel	x0, x23, x0, eq
	orr	w3, w6, w3
	strb	w7, [x5, #2]
.LBB20_73:                              //   in Loop: Header=BB20_56 Depth=2
	tst	x4, #0xff000000
	add	x5, x17, x13
	b.eq	.LBB20_78
// %bb.74:                              //   in Loop: Header=BB20_56 Depth=2
	add	x6, x16, x13
	ldrb	w7, [x6, #3]
	cbz	x7, .LBB20_76
// %bb.75:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1114]
	b	.LBB20_77
.LBB20_76:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1112]
.LBB20_77:                              //   in Loop: Header=BB20_56 Depth=2
	lsr	x21, x0, #22
	ldrb	w23, [x5, #3]
	ldr	x7, [x10, x7, lsl #3]
	lsr	x30, x1, #24
	and	w6, w6, #0xff
	and	x21, x21, #0x3e0
	add	x7, x7, x23, lsl #10
	bfxil	x21, x1, #27, #5
	ldrb	w7, [x7, x21]
	add	w21, w23, #1
	mov	x23, x0
	cmp	w6, w21, uxtb
	bfi	x23, x30, #24, #8
	orr	w2, w2, w7, lsl #14
	cset	w6, eq
	csel	w7, wzr, w21, eq
	csel	x0, x23, x0, eq
	orr	w3, w6, w3
	strb	w7, [x5, #3]
.LBB20_78:                              //   in Loop: Header=BB20_56 Depth=2
	tst	x4, #0xff00000000
	b.eq	.LBB20_83
// %bb.79:                              //   in Loop: Header=BB20_56 Depth=2
	add	x6, x16, x13
	ldrb	w7, [x6, #4]
	cbz	x7, .LBB20_81
// %bb.80:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1114]
	b	.LBB20_82
.LBB20_81:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1112]
.LBB20_82:                              //   in Loop: Header=BB20_56 Depth=2
	lsr	x21, x0, #30
	ldrb	w23, [x5, #4]
	ldr	x7, [x10, x7, lsl #3]
	lsr	x30, x1, #32
	and	w6, w6, #0xff
	and	x21, x21, #0x3e0
	add	x7, x7, x23, lsl #10
	bfxil	x21, x1, #35, #5
	ldrb	w7, [x7, x21]
	add	w21, w23, #1
	mov	x23, x0
	cmp	w6, w21, uxtb
	bfi	x23, x30, #32, #8
	orr	w2, w2, w7, lsl #18
	cset	w6, eq
	csel	w7, wzr, w21, eq
	csel	x0, x23, x0, eq
	orr	w3, w6, w3
	strb	w7, [x5, #4]
.LBB20_83:                              //   in Loop: Header=BB20_56 Depth=2
	tst	x4, #0xff0000000000
	add	x5, x17, x13
	b.eq	.LBB20_88
// %bb.84:                              //   in Loop: Header=BB20_56 Depth=2
	add	x6, x16, x13
	ldrb	w7, [x6, #5]
	cbz	x7, .LBB20_86
// %bb.85:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1114]
	b	.LBB20_87
.LBB20_86:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1112]
.LBB20_87:                              //   in Loop: Header=BB20_56 Depth=2
	lsr	x21, x0, #38
	ldrb	w23, [x5, #5]
	ldr	x7, [x10, x7, lsl #3]
	lsr	x30, x1, #40
	and	w6, w6, #0xff
	and	x21, x21, #0x3e0
	add	x7, x7, x23, lsl #10
	bfxil	x21, x1, #43, #5
	ldrb	w7, [x7, x21]
	add	w21, w23, #1
	mov	x23, x0
	cmp	w6, w21, uxtb
	bfi	x23, x30, #40, #8
	orr	w2, w2, w7, lsl #22
	cset	w6, eq
	csel	w7, wzr, w21, eq
	csel	x0, x23, x0, eq
	orr	w3, w6, w3
	strb	w7, [x5, #5]
.LBB20_88:                              //   in Loop: Header=BB20_56 Depth=2
	tst	x4, #0xff000000000000
	b.eq	.LBB20_93
// %bb.89:                              //   in Loop: Header=BB20_56 Depth=2
	add	x6, x16, x13
	ldrb	w7, [x6, #6]
	cbz	x7, .LBB20_91
// %bb.90:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1114]
	b	.LBB20_92
.LBB20_91:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w6, [x19, #1112]
.LBB20_92:                              //   in Loop: Header=BB20_56 Depth=2
	lsr	x21, x0, #46
	ldrb	w23, [x5, #6]
	ldr	x7, [x10, x7, lsl #3]
	lsr	x30, x1, #48
	and	w6, w6, #0xff
	and	x21, x21, #0x3e0
	add	x7, x7, x23, lsl #10
	bfxil	x21, x1, #51, #5
	ldrb	w7, [x7, x21]
	add	w21, w23, #1
	mov	x23, x0
	cmp	w6, w21, uxtb
	bfi	x23, x30, #48, #8
	orr	w2, w2, w7, lsl #26
	cset	w6, eq
	csel	w7, wzr, w21, eq
	csel	x0, x23, x0, eq
	orr	w3, w6, w3
	strb	w7, [x5, #6]
.LBB20_93:                              //   in Loop: Header=BB20_56 Depth=2
	lsr	x4, x4, #56
	cbz	x4, .LBB20_98
// %bb.94:                              //   in Loop: Header=BB20_56 Depth=2
	add	x4, x16, x13
	ldrb	w5, [x4, #7]
	cbz	x5, .LBB20_96
// %bb.95:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w4, [x19, #1114]
	b	.LBB20_97
.LBB20_96:                              //   in Loop: Header=BB20_56 Depth=2
	ldrb	w4, [x19, #1112]
.LBB20_97:                              //   in Loop: Header=BB20_56 Depth=2
	add	x6, x17, x13
	lsr	x7, x0, #54
	ldr	x5, [x10, x5, lsl #3]
	ldrb	w21, [x6, #7]
	and	w4, w4, #0xff
	and	x7, x7, #0x3e0
	add	x5, x5, x21, lsl #10
	bfxil	x7, x1, #59, #5
	add	w21, w21, #1
	cmp	w4, w21, uxtb
	bfxil	x1, x0, #0, #56
	ldrb	w5, [x5, x7]
	cset	w4, eq
	orr	w3, w4, w3
	csel	w4, wzr, w21, eq
	csel	x0, x1, x0, eq
	orr	w2, w2, w5, lsl #30
	strb	w4, [x6, #7]
.LBB20_98:                              //   in Loop: Header=BB20_56 Depth=2
	tbz	w3, #0, .LBB20_54
// %bb.99:                              //   in Loop: Header=BB20_56 Depth=2
	str	x0, [x15, x13]
	b	.LBB20_54
.LBB20_100:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	w2, [x8]
	b	.LBB20_158
.LBB20_101:
	mul	w11, w10, w23
	cmp	w6, #2
	add	x13, x19, #1120
	mul	w12, w10, w12
	csel	w15, w8, w10, ne
	cmp	w6, #3
	csel	x9, x13, x9, eq
	mov	w14, wzr
	ldr	w16, [x20, #268]
	sbfiz	x11, x11, #3, #32
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	csel	w22, w8, w15, eq
	add	x9, x3, x12
	add	x12, x4, x12
	csel	w24, w10, w14, eq
	add	x13, x1, x11
	add	x11, x2, x11
	csel	x25, x12, x4, eq
	csel	x26, x9, x3, eq
	csel	x27, x11, x2, eq
	csel	x28, x13, x1, eq
	cbz	w16, .LBB20_103
// %bb.102:
	sub	w9, w22, w24
	sub	w8, w8, w22
	str	w22, [sp, #8]                   // 4-byte Folded Spill
	mul	w9, w9, w21
	mov	x22, x0
	mov	w1, wzr
	mul	w8, w8, w21
	sxtw	x2, w9
	add	x0, x0, x8
	bl	memset
	ldr	w8, [x20, #192]
	mvn	w9, w24
	add	w8, w8, w9
	mul	w8, w8, w21
	neg	w21, w21
	add	x20, x22, x8
	ldr	w22, [sp, #8]                   // 4-byte Folded Reload
	b	.LBB20_104
.LBB20_103:
	mul	w8, w24, w21
	sub	w9, w22, w24
	mov	w1, wzr
	mul	w9, w9, w21
	add	x20, x0, w8, sxtw
	sxtw	x2, w9
	mov	x0, x20
	bl	memset
.LBB20_104:
	ldur	x12, [x29, #-8]                 // 8-byte Folded Reload
	cmp	w22, w24
	mov	w16, wzr
	b.le	.LBB20_157
// %bb.105:
                                        // kill: def $w23 killed $w23 killed $x23 def $x23
	sxtw	x8, w21
	ubfiz	x9, x23, #3, #32
	add	x10, x19, #1176
	add	x11, x20, #1
	b	.LBB20_108
.LBB20_106:                             //   in Loop: Header=BB20_108 Depth=1
	add	x28, x28, x12
	add	x27, x27, x12
	add	x26, x26, x12
	add	x25, x25, x12
	ldur	x12, [x29, #-8]                 // 8-byte Folded Reload
.LBB20_107:                             //   in Loop: Header=BB20_108 Depth=1
	add	w24, w24, #1
	add	x11, x11, x8
	cmp	w24, w22
	b.eq	.LBB20_157
.LBB20_108:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB20_112 Depth 2
	cmp	w12, #8
	b.lo	.LBB20_107
// %bb.109:                             //   in Loop: Header=BB20_108 Depth=1
	mov	x12, xzr
	mov	x13, x11
	b	.LBB20_112
.LBB20_110:                             //   in Loop: Header=BB20_112 Depth=2
	mov	w16, #1                         // =0x1
	strb	w0, [x13]
.LBB20_111:                             //   in Loop: Header=BB20_112 Depth=2
	add	x12, x12, #8
	add	x13, x13, #2
	cmp	x9, x12
	b.eq	.LBB20_106
.LBB20_112:                             //   Parent Loop BB20_108 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x15, [x28, x12]
	ldr	x14, [x27, x12]
	cmp	x14, x15
	b.eq	.LBB20_111
// %bb.113:                             //   in Loop: Header=BB20_112 Depth=2
	eor	x17, x14, x15
	tst	x17, #0xff
	b.eq	.LBB20_116
// %bb.114:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w0, [x25, x12]
	cbz	x0, .LBB20_117
// %bb.115:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w16, [x19, #1114]
	b	.LBB20_118
.LBB20_116:                             //   in Loop: Header=BB20_112 Depth=2
	mov	w0, wzr
	mov	w16, wzr
	b	.LBB20_119
.LBB20_117:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w16, [x19, #1112]
.LBB20_118:                             //   in Loop: Header=BB20_112 Depth=2
	lsl	x1, x14, #2
	ldrb	w2, [x26, x12]
	ldr	x0, [x10, x0, lsl #3]
	mov	x3, x14
	and	w16, w16, #0xff
	and	x1, x1, #0x3e0
	add	x0, x0, x2, lsl #10
	add	w2, w2, #1
	bfxil	x1, x15, #3, #5
	bfxil	x3, x15, #0, #8
	cmp	w16, w2, uxtb
	cset	w16, eq
	ldrb	w0, [x0, x1]
	csel	x14, x3, x14, eq
	csel	w1, wzr, w2, eq
	strb	w1, [x26, x12]
.LBB20_119:                             //   in Loop: Header=BB20_112 Depth=2
	tst	x17, #0xff00
	add	x1, x26, x12
	b.eq	.LBB20_124
// %bb.120:                             //   in Loop: Header=BB20_112 Depth=2
	add	x2, x25, x12
	ldrb	w3, [x2, #1]
	cbz	x3, .LBB20_122
// %bb.121:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_123
.LBB20_122:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_123:                             //   in Loop: Header=BB20_112 Depth=2
	lsr	x4, x14, #6
	ldrb	w5, [x1, #1]
	ldr	x3, [x10, x3, lsl #3]
	lsr	x6, x15, #8
	and	w2, w2, #0xff
	and	x4, x4, #0x3e0
	add	x3, x3, x5, lsl #10
	bfxil	x4, x15, #11, #5
	ldrb	w3, [x3, x4]
	add	w4, w5, #1
	mov	x5, x14
	cmp	w2, w4, uxtb
	bfi	x5, x6, #8, #8
	orr	w0, w0, w3, lsl #2
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w16, w2, w16
	csel	x14, x5, x14, eq
	strb	w3, [x1, #1]
.LBB20_124:                             //   in Loop: Header=BB20_112 Depth=2
	tst	x17, #0xff0000
	b.eq	.LBB20_129
// %bb.125:                             //   in Loop: Header=BB20_112 Depth=2
	add	x2, x25, x12
	ldrb	w3, [x2, #2]
	cbz	x3, .LBB20_127
// %bb.126:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_128
.LBB20_127:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_128:                             //   in Loop: Header=BB20_112 Depth=2
	lsr	x4, x14, #14
	ldrb	w5, [x1, #2]
	ldr	x3, [x10, x3, lsl #3]
	lsr	x6, x15, #16
	and	w2, w2, #0xff
	and	x4, x4, #0x3e0
	add	x3, x3, x5, lsl #10
	bfxil	x4, x15, #19, #5
	ldrb	w3, [x3, x4]
	add	w4, w5, #1
	mov	x5, x14
	cmp	w2, w4, uxtb
	bfi	x5, x6, #16, #8
	orr	w0, w0, w3, lsl #4
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w16, w2, w16
	csel	x14, x5, x14, eq
	strb	w3, [x1, #2]
.LBB20_129:                             //   in Loop: Header=BB20_112 Depth=2
	tst	x17, #0xff000000
	add	x1, x26, x12
	b.eq	.LBB20_134
// %bb.130:                             //   in Loop: Header=BB20_112 Depth=2
	add	x2, x25, x12
	ldrb	w3, [x2, #3]
	cbz	x3, .LBB20_132
// %bb.131:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_133
.LBB20_132:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_133:                             //   in Loop: Header=BB20_112 Depth=2
	lsr	x4, x14, #22
	ldrb	w5, [x1, #3]
	ldr	x3, [x10, x3, lsl #3]
	lsr	x6, x15, #24
	and	w2, w2, #0xff
	and	x4, x4, #0x3e0
	add	x3, x3, x5, lsl #10
	bfxil	x4, x15, #27, #5
	ldrb	w3, [x3, x4]
	add	w4, w5, #1
	mov	x5, x14
	cmp	w2, w4, uxtb
	bfi	x5, x6, #24, #8
	orr	w0, w0, w3, lsl #6
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w16, w2, w16
	csel	x14, x5, x14, eq
	strb	w3, [x1, #3]
.LBB20_134:                             //   in Loop: Header=BB20_112 Depth=2
	tst	x17, #0xff00000000
	sturb	w0, [x13, #-1]
	b.eq	.LBB20_137
// %bb.135:                             //   in Loop: Header=BB20_112 Depth=2
	add	x0, x25, x12
	ldrb	w2, [x0, #4]
	cbz	x2, .LBB20_138
// %bb.136:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w0, [x19, #1114]
	b	.LBB20_139
.LBB20_137:                             //   in Loop: Header=BB20_112 Depth=2
	mov	w0, wzr
	b	.LBB20_140
.LBB20_138:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w0, [x19, #1112]
.LBB20_139:                             //   in Loop: Header=BB20_112 Depth=2
	lsr	x3, x14, #30
	ldrb	w4, [x1, #4]
	ldr	x2, [x10, x2, lsl #3]
	lsr	x5, x15, #32
	and	w0, w0, #0xff
	mov	x6, x14
	and	x3, x3, #0x3e0
	add	x2, x2, x4, lsl #10
	add	w4, w4, #1
	bfxil	x3, x15, #35, #5
	cmp	w0, w4, uxtb
	bfi	x6, x5, #32, #8
	ldrb	w0, [x2, x3]
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w16, w2, w16
	csel	x14, x6, x14, eq
	strb	w3, [x1, #4]
.LBB20_140:                             //   in Loop: Header=BB20_112 Depth=2
	tst	x17, #0xff0000000000
	add	x1, x26, x12
	b.eq	.LBB20_145
// %bb.141:                             //   in Loop: Header=BB20_112 Depth=2
	add	x2, x25, x12
	ldrb	w3, [x2, #5]
	cbz	x3, .LBB20_143
// %bb.142:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_144
.LBB20_143:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_144:                             //   in Loop: Header=BB20_112 Depth=2
	lsr	x4, x14, #38
	ldrb	w5, [x1, #5]
	ldr	x3, [x10, x3, lsl #3]
	lsr	x6, x15, #40
	and	w2, w2, #0xff
	and	x4, x4, #0x3e0
	add	x3, x3, x5, lsl #10
	bfxil	x4, x15, #43, #5
	ldrb	w3, [x3, x4]
	add	w4, w5, #1
	mov	x5, x14
	cmp	w2, w4, uxtb
	bfi	x5, x6, #40, #8
	orr	w0, w0, w3, lsl #2
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w16, w2, w16
	csel	x14, x5, x14, eq
	strb	w3, [x1, #5]
.LBB20_145:                             //   in Loop: Header=BB20_112 Depth=2
	tst	x17, #0xff000000000000
	b.eq	.LBB20_150
// %bb.146:                             //   in Loop: Header=BB20_112 Depth=2
	add	x2, x25, x12
	ldrb	w3, [x2, #6]
	cbz	x3, .LBB20_148
// %bb.147:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w2, [x19, #1114]
	b	.LBB20_149
.LBB20_148:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w2, [x19, #1112]
.LBB20_149:                             //   in Loop: Header=BB20_112 Depth=2
	lsr	x4, x14, #46
	ldrb	w5, [x1, #6]
	ldr	x3, [x10, x3, lsl #3]
	lsr	x6, x15, #48
	and	w2, w2, #0xff
	and	x4, x4, #0x3e0
	add	x3, x3, x5, lsl #10
	bfxil	x4, x15, #51, #5
	ldrb	w3, [x3, x4]
	add	w4, w5, #1
	mov	x5, x14
	cmp	w2, w4, uxtb
	bfi	x5, x6, #48, #8
	orr	w0, w0, w3, lsl #4
	cset	w2, eq
	csel	w3, wzr, w4, eq
	orr	w16, w2, w16
	csel	x14, x5, x14, eq
	strb	w3, [x1, #6]
.LBB20_150:                             //   in Loop: Header=BB20_112 Depth=2
	lsr	x17, x17, #56
	cbz	x17, .LBB20_155
// %bb.151:                             //   in Loop: Header=BB20_112 Depth=2
	add	x17, x25, x12
	ldrb	w1, [x17, #7]
	cbz	x1, .LBB20_153
// %bb.152:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w17, [x19, #1114]
	b	.LBB20_154
.LBB20_153:                             //   in Loop: Header=BB20_112 Depth=2
	ldrb	w17, [x19, #1112]
.LBB20_154:                             //   in Loop: Header=BB20_112 Depth=2
	add	x2, x26, x12
	lsr	x3, x14, #54
	ldr	x1, [x10, x1, lsl #3]
	ldrb	w4, [x2, #7]
	and	w17, w17, #0xff
	and	x3, x3, #0x3e0
	add	x1, x1, x4, lsl #10
	bfxil	x3, x15, #59, #5
	add	w4, w4, #1
	cmp	w17, w4, uxtb
	bfxil	x15, x14, #0, #56
	ldrb	w1, [x1, x3]
	cset	w17, eq
	orr	w16, w17, w16
	csel	w17, wzr, w4, eq
	csel	x14, x15, x14, eq
	orr	w0, w0, w1, lsl #6
	strb	w17, [x2, #7]
.LBB20_155:                             //   in Loop: Header=BB20_112 Depth=2
	tbz	w16, #0, .LBB20_110
// %bb.156:                             //   in Loop: Header=BB20_112 Depth=2
	str	x14, [x27, x12]
	b	.LBB20_110
.LBB20_157:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	w16, [x8]
.LBB20_158:
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #128
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end20:
	.size	get_overlay_data, .Lfunc_end20-get_overlay_data
                                        // -- End function
	.p2align	2                               // -- Begin function get_roi_overlay_data
	.type	get_roi_overlay_data,@function
get_roi_overlay_data:                   // @get_roi_overlay_data
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #160
	adrp	x8, global_ebc
	ldr	x11, [x5, #1248]
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	ldr	x12, [x8, :lo12:global_ebc]
	stp	x28, x27, [sp, #80]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	ldr	w8, [x12, #276]
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	cbz	w8, .LBB21_111
// %bb.1:
	ldr	w9, [x5, #1140]
	ldr	w13, [x11, #52]
	ldr	w14, [x5, #1136]
	ldr	w8, [x11, #44]
	add	w10, w9, #7
	cmp	w9, #0
	csel	w10, w10, w9, lt
	sub	w9, w14, #1
	cmp	w13, w14
	csel	w9, w13, w9, lt
	cmp	w8, w9
	b.gt	.LBB21_114
// %bb.2:
	ldr	w13, [x11, #48]
	asr	w10, w10, #3
	ldr	w12, [x12, #188]
	add	w14, w13, #7
	cmp	w13, #0
	lsr	w0, w12, #2
	csel	w13, w14, w13, lt
	ldr	w14, [x11, #40]
	sub	w12, w10, #1
	asr	w13, w13, #3
	mul	w16, w0, w8
	ldr	x11, [sp, #56]                  // 8-byte Folded Reload
	add	w15, w13, #1
	cmp	w15, w10
	add	w15, w14, #7
	add	x16, x11, w16, sxtw
	csinc	w12, w12, w13, ge
	cmp	w14, #0
	add	x13, x5, #1176
	csel	w15, w15, w14, lt
	sxtw	x17, w12
	asr	w14, w15, #3
	sbfx	x6, x15, #3, #29
	and	w7, w15, #0xfffffff8
	sxtw	x7, w7
	mul	w15, w8, w10
	sbfiz	x19, x14, #3, #32
	sbfiz	x11, x14, #2, #32
	cmp	x17, x6
	csel	x17, x17, x6, gt
	str	x11, [sp, #48]                  // 8-byte Folded Spill
	add	x11, x1, x19
	sub	x17, x17, x6
	str	x11, [sp, #40]                  // 8-byte Folded Spill
	add	x11, x2, x19
	add	x6, x7, x3
	str	x11, [sp, #32]                  // 8-byte Folded Spill
	add	x11, x17, #1
	str	x11, [sp, #24]                  // 8-byte Folded Spill
	add	x11, x4, x7
	mov	w7, #1                          // =0x1
	str	x11, [sp, #16]                  // 8-byte Folded Spill
	add	x11, x6, #3
	str	x11, [sp, #8]                   // 8-byte Folded Spill
	b	.LBB21_4
.LBB21_3:                               //   in Loop: Header=BB21_4 Depth=1
	add	w8, w8, #1
	add	w15, w15, w10
	cmp	w8, w9
	b.gt	.LBB21_114
.LBB21_4:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB21_9 Depth 2
	mul	w17, w8, w0
	ldr	x11, [sp, #56]                  // 8-byte Folded Reload
	tst	w8, #0x1
	add	x17, x11, w17, sxtw
	csel	x16, x17, x16, eq
	cmp	w14, w12
	b.gt	.LBB21_3
// %bb.5:                               //   in Loop: Header=BB21_4 Depth=1
	sbfiz	x1, x15, #3, #32
	ldr	x11, [sp, #40]                  // 8-byte Folded Reload
	ldr	w17, [x5, #1140]
	mov	x19, xzr
	add	x20, x11, x1
	ldp	x25, x11, [sp, #24]             // 16-byte Folded Reload
	mul	w17, w17, w8
	add	x21, x11, x1
	ldr	x11, [sp, #48]                  // 8-byte Folded Reload
	sxtw	x17, w17
	add	x22, x16, x11
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	add	x23, x11, x17
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	add	x24, x11, x17
	b	.LBB21_9
.LBB21_6:                               //   in Loop: Header=BB21_9 Depth=2
	str	x26, [x21, x19]
.LBB21_7:                               //   in Loop: Header=BB21_9 Depth=2
	ldr	w11, [x22]
	orr	w11, w11, w28
	str	w11, [x22]
.LBB21_8:                               //   in Loop: Header=BB21_9 Depth=2
	subs	x25, x25, #1
	add	x22, x22, #4
	add	x19, x19, #8
	b.eq	.LBB21_3
.LBB21_9:                               //   Parent Loop BB21_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x27, [x20, x19]
	ldr	x26, [x21, x19]
	cmp	x26, x27
	b.eq	.LBB21_8
// %bb.10:                              //   in Loop: Header=BB21_9 Depth=2
	eor	x17, x26, x27
	add	x1, x24, x19
	str	w7, [x5, #1116]
	lsr	x30, x17, #56
	and	x2, x17, #0xff
	tbnz	w8, #0, .LBB21_14
// %bb.11:                              //   in Loop: Header=BB21_9 Depth=2
	cbz	x2, .LBB21_13
// %bb.12:                              //   in Loop: Header=BB21_9 Depth=2
	ldurb	w11, [x1, #-3]
	cbz	w11, .LBB21_17
.LBB21_13:                              //   in Loop: Header=BB21_9 Depth=2
	mov	w28, wzr
	mov	w29, wzr
	b	.LBB21_23
.LBB21_14:                              //   in Loop: Header=BB21_9 Depth=2
	cbz	x2, .LBB21_16
// %bb.15:                              //   in Loop: Header=BB21_9 Depth=2
	ldurb	w2, [x1, #-3]
	cbz	w2, .LBB21_19
.LBB21_16:                              //   in Loop: Header=BB21_9 Depth=2
	mov	w28, wzr
	mov	w29, wzr
	b	.LBB21_33
.LBB21_17:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x23, x19]
	cbz	x4, .LBB21_21
// %bb.18:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1114]
	b	.LBB21_22
.LBB21_19:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x23, x19]
	cbz	x4, .LBB21_31
// %bb.20:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1114]
	b	.LBB21_32
.LBB21_21:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1112]
.LBB21_22:                              //   in Loop: Header=BB21_9 Depth=2
	lsl	x11, x26, #2
	ldr	x3, [x13, x4, lsl #3]
	mov	x4, x26
	bfxil	x4, x27, #0, #8
	cmp	w2, #1
	and	x11, x11, #0x3e0
	cset	w29, eq
	bfxil	x11, x27, #3, #5
	csel	x26, x4, x26, eq
	ldrb	w28, [x3, x11]
	cset	w11, ne
	sturb	w11, [x1, #-3]
.LBB21_23:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff00
	add	x1, x24, x19
	add	x2, x23, x19
	b.eq	.LBB21_25
// %bb.24:                              //   in Loop: Header=BB21_9 Depth=2
	ldurb	w11, [x1, #-2]
	cbz	w11, .LBB21_29
.LBB21_25:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff0000
	b.eq	.LBB21_45
.LBB21_26:                              //   in Loop: Header=BB21_9 Depth=2
	ldurb	w11, [x1, #-1]
	cbnz	w11, .LBB21_45
// %bb.27:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x2, #2]
	cbz	x4, .LBB21_41
// %bb.28:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1114]
	b	.LBB21_42
.LBB21_29:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w6, [x2, #1]
	cbz	x6, .LBB21_43
// %bb.30:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x5, #1114]
	b	.LBB21_44
.LBB21_31:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1112]
.LBB21_32:                              //   in Loop: Header=BB21_9 Depth=2
	lsl	x6, x26, #2
	ldr	x4, [x13, x4, lsl #3]
	cmp	w2, #1
	cset	w2, ne
	cset	w29, eq
	and	x6, x6, #0x3e0
	bfxil	x6, x27, #3, #5
	ldrb	w4, [x4, x6]
	mov	x6, x26
	sturb	w2, [x1, #-3]
	bfxil	x6, x27, #0, #8
	lsl	w28, w4, #2
	csel	x26, x6, x26, eq
.LBB21_33:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff00
	add	x1, x24, x19
	add	x2, x23, x19
	b.eq	.LBB21_35
// %bb.34:                              //   in Loop: Header=BB21_9 Depth=2
	ldurb	w4, [x1, #-2]
	cbz	w4, .LBB21_39
.LBB21_35:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff0000
	b.eq	.LBB21_53
.LBB21_36:                              //   in Loop: Header=BB21_9 Depth=2
	ldurb	w11, [x1, #-1]
	cbnz	w11, .LBB21_53
// %bb.37:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x2, #2]
	cbz	x4, .LBB21_49
// %bb.38:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1114]
	b	.LBB21_50
.LBB21_39:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w6, [x2, #1]
	cbz	x6, .LBB21_51
// %bb.40:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x5, #1114]
	b	.LBB21_52
.LBB21_41:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1112]
.LBB21_42:                              //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #14
	ldr	x3, [x13, x4, lsl #3]
	lsr	x4, x27, #16
	cmp	w2, #1
	and	x11, x11, #0x3e0
	cset	w2, eq
	bfxil	x11, x27, #19, #5
	orr	w29, w2, w29
	ldrb	w11, [x3, x11]
	mov	x3, x26
	bfi	x3, x4, #16, #8
	orr	w28, w28, w11, lsl #8
	cset	w11, ne
	csel	x26, x3, x26, eq
	sturb	w11, [x1, #-1]
	b	.LBB21_45
.LBB21_43:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x5, #1112]
.LBB21_44:                              //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #6
	ldr	x3, [x13, x6, lsl #3]
	lsr	x6, x27, #8
	cmp	w4, #1
	and	x11, x11, #0x3e0
	cset	w4, eq
	bfxil	x11, x27, #11, #5
	orr	w29, w4, w29
	ldrb	w11, [x3, x11]
	mov	x3, x26
	bfi	x3, x6, #8, #8
	orr	w28, w28, w11, lsl #4
	cset	w11, ne
	csel	x26, x3, x26, eq
	sturb	w11, [x1, #-2]
	tst	x17, #0xff0000
	b.ne	.LBB21_26
.LBB21_45:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff000000
	add	x2, x23, x19
	b.eq	.LBB21_59
// %bb.46:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w11, [x24, x19]
	cbnz	w11, .LBB21_59
// %bb.47:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x2, #3]
	cbz	x4, .LBB21_57
// %bb.48:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w1, [x5, #1114]
	b	.LBB21_58
.LBB21_49:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1112]
.LBB21_50:                              //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #14
	ldr	x3, [x13, x4, lsl #3]
	lsr	x4, x27, #16
	cmp	w2, #1
	and	x11, x11, #0x3e0
	cset	w2, eq
	bfxil	x11, x27, #19, #5
	orr	w29, w2, w29
	ldrb	w11, [x3, x11]
	mov	x3, x26
	bfi	x3, x4, #16, #8
	orr	w28, w28, w11, lsl #10
	cset	w11, ne
	csel	x26, x3, x26, eq
	sturb	w11, [x1, #-1]
	b	.LBB21_53
.LBB21_51:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x5, #1112]
.LBB21_52:                              //   in Loop: Header=BB21_9 Depth=2
	lsr	x3, x26, #6
	ldr	x6, [x13, x6, lsl #3]
	lsr	x11, x27, #8
	cmp	w4, #1
	and	x3, x3, #0x3e0
	bfxil	x3, x27, #11, #5
	ldrb	w3, [x6, x3]
	mov	x6, x26
	bfi	x6, x11, #8, #8
	cset	w11, ne
	orr	w28, w28, w3, lsl #6
	cset	w3, eq
	sturb	w11, [x1, #-2]
	orr	w29, w3, w29
	csel	x26, x6, x26, eq
	tst	x17, #0xff0000
	b.ne	.LBB21_36
.LBB21_53:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff000000
	add	x2, x23, x19
	b.eq	.LBB21_65
// %bb.54:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w11, [x24, x19]
	cbnz	w11, .LBB21_65
// %bb.55:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x2, #3]
	cbz	x4, .LBB21_63
// %bb.56:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w1, [x5, #1114]
	b	.LBB21_64
.LBB21_57:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w1, [x5, #1112]
.LBB21_58:                              //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #22
	ldr	x3, [x13, x4, lsl #3]
	lsr	x4, x27, #24
	cmp	w1, #1
	and	x11, x11, #0x3e0
	cset	w1, eq
	bfxil	x11, x27, #27, #5
	orr	w29, w1, w29
	ldrb	w11, [x3, x11]
	mov	x3, x26
	bfi	x3, x4, #24, #8
	orr	w28, w28, w11, lsl #12
	cset	w11, ne
	strb	w11, [x24, x19]
	csel	x26, x3, x26, eq
.LBB21_59:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff00000000
	add	x1, x24, x19
	b.eq	.LBB21_71
// %bb.60:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w11, [x1, #1]
	cbnz	w11, .LBB21_71
// %bb.61:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x2, #4]
	cbz	x4, .LBB21_69
// %bb.62:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1114]
	b	.LBB21_70
.LBB21_63:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w1, [x5, #1112]
.LBB21_64:                              //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #22
	ldr	x3, [x13, x4, lsl #3]
	lsr	x4, x27, #24
	cmp	w1, #1
	and	x11, x11, #0x3e0
	cset	w1, eq
	bfxil	x11, x27, #27, #5
	orr	w29, w1, w29
	ldrb	w11, [x3, x11]
	mov	x3, x26
	bfi	x3, x4, #24, #8
	orr	w28, w28, w11, lsl #14
	cset	w11, ne
	strb	w11, [x24, x19]
	csel	x26, x3, x26, eq
.LBB21_65:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff00000000
	add	x1, x24, x19
	b.eq	.LBB21_77
// %bb.66:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w11, [x1, #1]
	cbnz	w11, .LBB21_77
// %bb.67:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x2, #4]
	cbz	x4, .LBB21_75
// %bb.68:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1114]
	b	.LBB21_76
.LBB21_69:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1112]
.LBB21_70:                              //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #30
	ldr	x3, [x13, x4, lsl #3]
	lsr	x4, x27, #32
	cmp	w2, #1
	and	x11, x11, #0x3e0
	cset	w2, eq
	bfxil	x11, x27, #35, #5
	orr	w29, w2, w29
	ldrb	w11, [x3, x11]
	mov	x3, x26
	bfi	x3, x4, #32, #8
	orr	w28, w28, w11, lsl #16
	cset	w11, ne
	csel	x26, x3, x26, eq
	strb	w11, [x1, #1]
.LBB21_71:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff0000000000
	add	x2, x23, x19
	b.eq	.LBB21_83
// %bb.72:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w11, [x1, #2]
	cbnz	w11, .LBB21_83
// %bb.73:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w6, [x2, #5]
	cbz	x6, .LBB21_81
// %bb.74:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x5, #1114]
	b	.LBB21_82
.LBB21_75:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1112]
.LBB21_76:                              //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #30
	ldr	x3, [x13, x4, lsl #3]
	lsr	x4, x27, #32
	cmp	w2, #1
	and	x11, x11, #0x3e0
	cset	w2, eq
	bfxil	x11, x27, #35, #5
	orr	w29, w2, w29
	ldrb	w11, [x3, x11]
	mov	x3, x26
	bfi	x3, x4, #32, #8
	orr	w28, w28, w11, lsl #18
	cset	w11, ne
	csel	x26, x3, x26, eq
	strb	w11, [x1, #1]
.LBB21_77:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff0000000000
	add	x2, x23, x19
	b.eq	.LBB21_93
// %bb.78:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w11, [x1, #2]
	cbnz	w11, .LBB21_93
// %bb.79:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w6, [x2, #5]
	cbz	x6, .LBB21_91
// %bb.80:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x5, #1114]
	b	.LBB21_92
.LBB21_81:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x5, #1112]
.LBB21_82:                              //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #38
	ldr	x3, [x13, x6, lsl #3]
	lsr	x6, x27, #40
	cmp	w4, #1
	and	x11, x11, #0x3e0
	cset	w4, eq
	bfxil	x11, x27, #43, #5
	orr	w29, w4, w29
	ldrb	w11, [x3, x11]
	mov	x3, x26
	bfi	x3, x6, #40, #8
	orr	w28, w28, w11, lsl #20
	cset	w11, ne
	csel	x26, x3, x26, eq
	strb	w11, [x1, #2]
.LBB21_83:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff000000000000
	add	x17, x24, x19
	b.eq	.LBB21_85
// %bb.84:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w11, [x17, #3]
	cbz	w11, .LBB21_89
.LBB21_85:                              //   in Loop: Header=BB21_9 Depth=2
	cbz	x30, .LBB21_105
.LBB21_86:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w11, [x17, #4]
	cbnz	w11, .LBB21_105
// %bb.87:                              //   in Loop: Header=BB21_9 Depth=2
	add	x11, x23, x19
	ldrb	w1, [x11, #7]
	cbz	x1, .LBB21_106
// %bb.88:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1114]
	b	.LBB21_107
.LBB21_89:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x2, #6]
	cbz	x2, .LBB21_101
// %bb.90:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w1, [x5, #1114]
	b	.LBB21_102
.LBB21_91:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w4, [x5, #1112]
.LBB21_92:                              //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #38
	ldr	x3, [x13, x6, lsl #3]
	lsr	x6, x27, #40
	cmp	w4, #1
	and	x11, x11, #0x3e0
	cset	w4, eq
	bfxil	x11, x27, #43, #5
	orr	w29, w4, w29
	ldrb	w11, [x3, x11]
	mov	x3, x26
	bfi	x3, x6, #40, #8
	orr	w28, w28, w11, lsl #22
	cset	w11, ne
	csel	x26, x3, x26, eq
	strb	w11, [x1, #2]
.LBB21_93:                              //   in Loop: Header=BB21_9 Depth=2
	tst	x17, #0xff000000000000
	add	x17, x24, x19
	b.eq	.LBB21_95
// %bb.94:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w11, [x17, #3]
	cbz	w11, .LBB21_99
.LBB21_95:                              //   in Loop: Header=BB21_9 Depth=2
	cbz	x30, .LBB21_105
.LBB21_96:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w11, [x17, #4]
	cbnz	w11, .LBB21_105
// %bb.97:                              //   in Loop: Header=BB21_9 Depth=2
	add	x11, x23, x19
	ldrb	w1, [x11, #7]
	cbz	x1, .LBB21_108
// %bb.98:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1114]
	b	.LBB21_109
.LBB21_99:                              //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x2, #6]
	cbz	x2, .LBB21_103
// %bb.100:                             //   in Loop: Header=BB21_9 Depth=2
	ldrb	w1, [x5, #1114]
	b	.LBB21_104
.LBB21_101:                             //   in Loop: Header=BB21_9 Depth=2
	ldrb	w1, [x5, #1112]
.LBB21_102:                             //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #46
	ldr	x2, [x13, x2, lsl #3]
	lsr	x3, x27, #48
	cmp	w1, #1
	and	x11, x11, #0x3e0
	cset	w1, eq
	bfxil	x11, x27, #51, #5
	orr	w29, w1, w29
	ldrb	w11, [x2, x11]
	mov	x2, x26
	bfi	x2, x3, #48, #8
	orr	w28, w28, w11, lsl #24
	cset	w11, ne
	csel	x26, x2, x26, eq
	strb	w11, [x17, #3]
	cbnz	x30, .LBB21_86
	b	.LBB21_105
.LBB21_103:                             //   in Loop: Header=BB21_9 Depth=2
	ldrb	w1, [x5, #1112]
.LBB21_104:                             //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #46
	ldr	x2, [x13, x2, lsl #3]
	lsr	x3, x27, #48
	cmp	w1, #1
	and	x11, x11, #0x3e0
	cset	w1, eq
	bfxil	x11, x27, #51, #5
	orr	w29, w1, w29
	ldrb	w11, [x2, x11]
	mov	x2, x26
	bfi	x2, x3, #48, #8
	orr	w28, w28, w11, lsl #26
	cset	w11, ne
	csel	x26, x2, x26, eq
	strb	w11, [x17, #3]
	cbnz	x30, .LBB21_96
.LBB21_105:                             //   in Loop: Header=BB21_9 Depth=2
	tbnz	w29, #0, .LBB21_6
	b	.LBB21_7
.LBB21_106:                             //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1112]
.LBB21_107:                             //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #54
	ldr	x1, [x13, x1, lsl #3]
	cmp	w2, #1
	and	x11, x11, #0x3e0
	bfxil	x11, x27, #59, #5
	bfxil	x27, x26, #0, #56
	ldrb	w11, [x1, x11]
	cset	w1, eq
	orr	w28, w28, w11, lsl #28
	b	.LBB21_110
.LBB21_108:                             //   in Loop: Header=BB21_9 Depth=2
	ldrb	w2, [x5, #1112]
.LBB21_109:                             //   in Loop: Header=BB21_9 Depth=2
	lsr	x11, x26, #54
	ldr	x1, [x13, x1, lsl #3]
	cmp	w2, #1
	and	x11, x11, #0x3e0
	bfxil	x11, x27, #59, #5
	bfxil	x27, x26, #0, #56
	ldrb	w11, [x1, x11]
	cset	w1, eq
	orr	w28, w28, w11, lsl #30
.LBB21_110:                             //   in Loop: Header=BB21_9 Depth=2
	cset	w11, ne
	orr	w1, w1, w29
	csel	x26, x27, x26, eq
	strb	w11, [x17, #4]
	tbnz	w1, #0, .LBB21_6
	b	.LBB21_7
.LBB21_111:
	ldp	w9, w8, [x11, #40]
	ldp	w10, w11, [x11, #48]
	ldr	w14, [x5, #1140]
	ldr	w16, [x12, #188]
	add	w13, w9, #7
	cmp	w9, #0
	add	w15, w10, #7
	csel	w13, w13, w9, lt
	cmp	w10, #0
	add	w9, w14, #7
	csel	w10, w15, w10, lt
	cmp	w14, #0
	asr	w10, w10, #3
	csel	w9, w9, w14, lt
	ldr	w14, [x5, #1136]
	asr	w9, w9, #3
	lsr	w16, w16, #2
	add	w15, w10, #1
	cmp	w15, w9
	sub	w15, w9, #1
	csinc	w10, w15, w10, ge
	ldr	w15, [x12, #268]
	cmp	w11, w14
	sub	w14, w14, #1
	csel	w11, w11, w14, lt
	cbz	w15, .LBB21_113
// %bb.112:
	ldr	w12, [x12, #192]
	mvn	w14, w8
	add	w12, w12, w14
	mul	w17, w12, w16
	neg	w16, w16
	cmp	w8, w11
	b.le	.LBB21_115
	b	.LBB21_114
.LBB21_113:
	mul	w12, w16, w8
	sxtw	x17, w12
	cmp	w8, w11
	b.le	.LBB21_115
.LBB21_114:
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #160
	ldr	x30, [x18, #-8]!
	ret
.LBB21_115:
	asr	w12, w13, #3
	sxtw	x0, w10
	sxtw	x16, w16
	sbfiz	x14, x12, #3, #32
	lsl	w15, w12, #3
	sxtw	x6, w12
	add	x17, x17, w12, sxtw #1
	add	x13, x1, x14
	sxtw	x1, w15
	add	x14, x2, x14
	cmp	x0, x6
	add	x15, x5, #1176
	orr	x2, x1, #0x3
	ldr	x1, [sp, #56]                   // 8-byte Folded Reload
	csel	x0, x0, x6, gt
	sub	x0, x0, x6
	add	x1, x17, x1
	add	x17, x0, #1
	add	x0, x4, x2
	add	x1, x1, #1
	add	x2, x3, x2
	mov	w3, #1                          // =0x1
	b	.LBB21_117
.LBB21_116:                             //   in Loop: Header=BB21_117 Depth=1
	add	w8, w8, #1
	add	x1, x1, x16
	cmp	w8, w11
	b.gt	.LBB21_114
.LBB21_117:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB21_121 Depth 2
	cmp	w12, w10
	b.gt	.LBB21_116
// %bb.118:                             //   in Loop: Header=BB21_117 Depth=1
	ldr	w4, [x5, #1140]
	mul	w6, w8, w9
	mov	x20, x1
	mov	x21, x17
	mul	w4, w4, w8
	sbfiz	x6, x6, #3, #32
	sxtw	x19, w4
	add	x4, x14, x6
	add	x6, x13, x6
	add	x7, x0, x19
	add	x19, x2, x19
	b	.LBB21_121
.LBB21_119:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w22, [x20]
	orr	w22, w22, w26
	strb	w22, [x20]
.LBB21_120:                             //   in Loop: Header=BB21_121 Depth=2
	add	x4, x4, #8
	add	x6, x6, #8
	subs	x21, x21, #1
	add	x7, x7, #8
	add	x20, x20, #2
	add	x19, x19, #8
	b.eq	.LBB21_116
.LBB21_121:                             //   Parent Loop BB21_117 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x23, [x6]
	ldr	x22, [x4]
	cmp	x22, x23
	b.eq	.LBB21_120
// %bb.122:                             //   in Loop: Header=BB21_121 Depth=2
	eor	x24, x22, x23
	str	w3, [x5, #1116]
	tst	x24, #0xff
	b.eq	.LBB21_124
// %bb.123:                             //   in Loop: Header=BB21_121 Depth=2
	ldurb	w25, [x19, #-3]
	cbz	w25, .LBB21_125
.LBB21_124:                             //   in Loop: Header=BB21_121 Depth=2
	mov	w26, wzr
	mov	w25, wzr
	tst	x24, #0xff00
	b.ne	.LBB21_129
	b	.LBB21_130
.LBB21_125:                             //   in Loop: Header=BB21_121 Depth=2
	ldurb	w26, [x7, #-3]
	cbz	x26, .LBB21_127
// %bb.126:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w25, [x5, #1114]
	b	.LBB21_128
.LBB21_127:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w25, [x5, #1112]
.LBB21_128:                             //   in Loop: Header=BB21_121 Depth=2
	lsl	x27, x22, #2
	ldr	x26, [x15, x26, lsl #3]
	mov	x28, x22
	bfxil	x28, x23, #0, #8
	cmp	w25, #1
	and	x27, x27, #0x3e0
	cset	w25, eq
	bfxil	x27, x23, #3, #5
	csel	x22, x28, x22, eq
	ldrb	w26, [x26, x27]
	cset	w27, ne
	sturb	w27, [x19, #-3]
	tst	x24, #0xff00
	b.eq	.LBB21_130
.LBB21_129:                             //   in Loop: Header=BB21_121 Depth=2
	ldurb	w27, [x19, #-2]
	cbz	w27, .LBB21_134
.LBB21_130:                             //   in Loop: Header=BB21_121 Depth=2
	tst	x24, #0xff0000
	b.eq	.LBB21_140
.LBB21_131:                             //   in Loop: Header=BB21_121 Depth=2
	ldurb	w27, [x19, #-1]
	cbnz	w27, .LBB21_140
// %bb.132:                             //   in Loop: Header=BB21_121 Depth=2
	ldurb	w28, [x7, #-1]
	cbz	x28, .LBB21_136
// %bb.133:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1114]
	b	.LBB21_137
.LBB21_134:                             //   in Loop: Header=BB21_121 Depth=2
	ldurb	w28, [x7, #-2]
	cbz	x28, .LBB21_138
// %bb.135:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1114]
	b	.LBB21_139
.LBB21_136:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1112]
.LBB21_137:                             //   in Loop: Header=BB21_121 Depth=2
	lsr	x29, x22, #14
	ldr	x28, [x15, x28, lsl #3]
	lsr	x30, x23, #16
	cmp	w27, #1
	and	x29, x29, #0x3e0
	cset	w27, ne
	bfxil	x29, x23, #19, #5
	ldrb	w28, [x28, x29]
	mov	x29, x22
	sturb	w27, [x19, #-1]
	bfi	x29, x30, #16, #8
	orr	w26, w26, w28, lsl #4
	cset	w28, eq
	orr	w25, w28, w25
	csel	x22, x29, x22, eq
	b	.LBB21_140
.LBB21_138:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1112]
.LBB21_139:                             //   in Loop: Header=BB21_121 Depth=2
	lsr	x29, x22, #6
	ldr	x28, [x15, x28, lsl #3]
	lsr	x30, x23, #8
	cmp	w27, #1
	and	x29, x29, #0x3e0
	cset	w27, ne
	bfxil	x29, x23, #11, #5
	ldrb	w28, [x28, x29]
	mov	x29, x22
	sturb	w27, [x19, #-2]
	bfi	x29, x30, #8, #8
	orr	w26, w26, w28, lsl #2
	cset	w28, eq
	orr	w25, w28, w25
	csel	x22, x29, x22, eq
	tst	x24, #0xff0000
	b.ne	.LBB21_131
.LBB21_140:                             //   in Loop: Header=BB21_121 Depth=2
	tst	x24, #0xff000000
	b.eq	.LBB21_146
// %bb.141:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x19]
	cbnz	w27, .LBB21_146
// %bb.142:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w28, [x7]
	cbz	x28, .LBB21_144
// %bb.143:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1114]
	b	.LBB21_145
.LBB21_144:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1112]
.LBB21_145:                             //   in Loop: Header=BB21_121 Depth=2
	lsr	x29, x22, #22
	ldr	x28, [x15, x28, lsl #3]
	lsr	x30, x23, #24
	cmp	w27, #1
	and	x29, x29, #0x3e0
	cset	w27, ne
	bfxil	x29, x23, #27, #5
	ldrb	w28, [x28, x29]
	mov	x29, x22
	strb	w27, [x19]
	bfi	x29, x30, #24, #8
	orr	w26, w26, w28, lsl #6
	cset	w28, eq
	orr	w25, w28, w25
	csel	x22, x29, x22, eq
.LBB21_146:                             //   in Loop: Header=BB21_121 Depth=2
	ldurb	w27, [x20, #-1]
	tst	x24, #0xff00000000
	orr	w26, w27, w26
	sturb	w26, [x20, #-1]
	b.eq	.LBB21_148
// %bb.147:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w26, [x19, #1]
	cbz	w26, .LBB21_149
.LBB21_148:                             //   in Loop: Header=BB21_121 Depth=2
	mov	w26, wzr
	tst	x24, #0xff0000000000
	b.ne	.LBB21_153
	b	.LBB21_154
.LBB21_149:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w26, [x7, #1]
	cbz	x26, .LBB21_151
// %bb.150:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1114]
	b	.LBB21_152
.LBB21_151:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1112]
.LBB21_152:                             //   in Loop: Header=BB21_121 Depth=2
	lsr	x28, x22, #30
	lsr	x29, x23, #32
	ldr	x26, [x15, x26, lsl #3]
	mov	x30, x22
	cmp	w27, #1
	and	x28, x28, #0x3e0
	bfi	x30, x29, #32, #8
	cset	w27, ne
	bfxil	x28, x23, #35, #5
	csel	x22, x30, x22, eq
	ldrb	w26, [x26, x28]
	cset	w28, eq
	strb	w27, [x19, #1]
	orr	w25, w28, w25
	tst	x24, #0xff0000000000
	b.eq	.LBB21_154
.LBB21_153:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x19, #2]
	cbz	w27, .LBB21_158
.LBB21_154:                             //   in Loop: Header=BB21_121 Depth=2
	tst	x24, #0xff000000000000
	b.eq	.LBB21_164
.LBB21_155:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x19, #3]
	cbnz	w27, .LBB21_164
// %bb.156:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w28, [x7, #3]
	cbz	x28, .LBB21_160
// %bb.157:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1114]
	b	.LBB21_161
.LBB21_158:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w28, [x7, #2]
	cbz	x28, .LBB21_162
// %bb.159:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1114]
	b	.LBB21_163
.LBB21_160:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1112]
.LBB21_161:                             //   in Loop: Header=BB21_121 Depth=2
	lsr	x29, x22, #46
	ldr	x28, [x15, x28, lsl #3]
	lsr	x30, x23, #48
	cmp	w27, #1
	and	x29, x29, #0x3e0
	cset	w27, ne
	bfxil	x29, x23, #51, #5
	ldrb	w28, [x28, x29]
	mov	x29, x22
	strb	w27, [x19, #3]
	bfi	x29, x30, #48, #8
	orr	w26, w26, w28, lsl #4
	cset	w28, eq
	orr	w25, w28, w25
	csel	x22, x29, x22, eq
	b	.LBB21_164
.LBB21_162:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1112]
.LBB21_163:                             //   in Loop: Header=BB21_121 Depth=2
	lsr	x29, x22, #38
	ldr	x28, [x15, x28, lsl #3]
	lsr	x30, x23, #40
	cmp	w27, #1
	and	x29, x29, #0x3e0
	cset	w27, ne
	bfxil	x29, x23, #43, #5
	ldrb	w28, [x28, x29]
	mov	x29, x22
	strb	w27, [x19, #2]
	bfi	x29, x30, #40, #8
	orr	w26, w26, w28, lsl #2
	cset	w28, eq
	orr	w25, w28, w25
	csel	x22, x29, x22, eq
	tst	x24, #0xff000000000000
	b.ne	.LBB21_155
.LBB21_164:                             //   in Loop: Header=BB21_121 Depth=2
	lsr	x24, x24, #56
	cbz	x24, .LBB21_166
// %bb.165:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w24, [x19, #4]
	cbz	w24, .LBB21_168
.LBB21_166:                             //   in Loop: Header=BB21_121 Depth=2
	tbz	w25, #0, .LBB21_119
.LBB21_167:                             //   in Loop: Header=BB21_121 Depth=2
	str	x22, [x4]
	b	.LBB21_119
.LBB21_168:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w24, [x7, #4]
	cbz	x24, .LBB21_170
// %bb.169:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1114]
	b	.LBB21_171
.LBB21_170:                             //   in Loop: Header=BB21_121 Depth=2
	ldrb	w27, [x5, #1112]
.LBB21_171:                             //   in Loop: Header=BB21_121 Depth=2
	lsr	x28, x22, #54
	ldr	x24, [x15, x24, lsl #3]
	cmp	w27, #1
	cset	w27, eq
	and	x28, x28, #0x3e0
	orr	w25, w27, w25
	bfxil	x28, x23, #59, #5
	bfxil	x23, x22, #0, #56
	ldrb	w24, [x24, x28]
	csel	x22, x23, x22, eq
	orr	w26, w26, w24, lsl #6
	cset	w24, ne
	strb	w24, [x19, #4]
	tbz	w25, #0, .LBB21_119
	b	.LBB21_167
.Lfunc_end21:
	.size	get_roi_overlay_data, .Lfunc_end21-get_roi_overlay_data
                                        // -- End function
	.p2align	2                               // -- Begin function get_auto_data
	.type	get_auto_data,@function
get_auto_data:                          // @get_auto_data
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #144
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	ldr	x26, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	mov	x19, x4
	mov	x20, x0
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	ldr	w8, [x26, #276]
	stp	x28, x27, [sp, #64]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	cbz	w8, .LBB22_15
// %bb.1:
	ldp	w25, w8, [x26, #188]
	cmp	w5, #2
	add	x11, x19, #1116
	mov	w12, wzr
	add	x15, x19, #1120
	add	w9, w8, w8, lsr #31
	lsr	x10, x25, #3
	asr	w9, w9, #1
	stur	x10, [x29, #-16]                // 8-byte Folded Spill
	mul	w10, w9, w10
	csel	w14, w8, w9, ne
	cmp	w5, #3
	mul	w13, w9, w25
	csel	w28, w8, w14, eq
	csel	w27, w9, w12, eq
	sbfiz	x10, x10, #3, #32
	add	x8, x3, x13
	add	x9, x1, x10
	add	x10, x2, x10
	csel	x21, x8, x3, eq
	csel	x8, x15, x11, eq
	csel	x22, x10, x2, eq
	csel	x23, x9, x1, eq
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	mul	w8, w27, w25
	subs	w9, w28, w27
	mul	w9, w9, w25
	mov	w1, wzr
	lsr	w8, w8, #2
	lsr	w2, w9, #2
	add	x0, x20, x8
	bl	memset
	cmp	w28, w27
	mov	w8, wzr
	b.le	.LBB22_14
// %bb.2:
	ldur	x8, [x29, #-16]                 // 8-byte Folded Reload
	stur	x20, [x29, #-8]                 // 8-byte Folded Spill
	str	x25, [sp, #24]                  // 8-byte Folded Spill
	lsl	x24, x8, #3
	mov	w8, wzr
	str	w28, [sp, #20]                  // 4-byte Folded Spill
	b	.LBB22_5
.LBB22_3:                               //   in Loop: Header=BB22_5 Depth=1
	add	x23, x23, x20
	add	x22, x22, x20
	add	x21, x21, x20
	ldur	x20, [x29, #-8]                 // 8-byte Folded Reload
	ldr	x25, [sp, #24]                  // 8-byte Folded Reload
.LBB22_4:                               //   in Loop: Header=BB22_5 Depth=1
	add	w27, w27, #2
	cmp	w27, w28
	b.ge	.LBB22_14
.LBB22_5:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB22_8 Depth 2
                                        //     Child Loop BB22_12 Depth 2
	cmp	w25, #8
	b.lo	.LBB22_4
// %bb.6:                               //   in Loop: Header=BB22_5 Depth=1
	ldr	w9, [x26, #188]
	mov	x28, x26
	ldur	x25, [x29, #-16]                // 8-byte Folded Reload
	mul	w26, w9, w27
	add	x20, x20, x26, lsr #2
	b	.LBB22_8
.LBB22_7:                               //   in Loop: Header=BB22_8 Depth=2
	add	x22, x22, #8
	subs	x25, x25, #1
	add	x23, x23, #8
	add	x21, x21, #8
	add	x20, x20, #4
	b.eq	.LBB22_10
.LBB22_8:                               //   Parent Loop BB22_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [x23]
	ldr	x10, [x22]
	cmp	x9, x10
	b.eq	.LBB22_7
// %bb.9:                               //   in Loop: Header=BB22_8 Depth=2
	mov	x0, x23
	mov	x1, x22
	mov	x2, x21
	mov	x3, x19
	mov	w4, wzr
	bl	get_rearrange_panel_one_auto_data
	mov	w8, #1                          // =0x1
	str	w0, [x20]
	b	.LBB22_7
.LBB22_10:                              //   in Loop: Header=BB22_5 Depth=1
	ldur	x9, [x29, #-8]                  // 8-byte Folded Reload
	mov	x20, xzr
	add	x25, x9, x26, lsr #2
	mov	x26, x28
	ldr	w28, [sp, #20]                  // 4-byte Folded Reload
	b	.LBB22_12
.LBB22_11:                              //   in Loop: Header=BB22_12 Depth=2
	add	x20, x20, #8
	add	x25, x25, #4
	cmp	x24, x20
	b.eq	.LBB22_3
.LBB22_12:                              //   Parent Loop BB22_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [x23, x20]
	ldr	x10, [x22, x20]
	cmp	x9, x10
	b.eq	.LBB22_11
// %bb.13:                              //   in Loop: Header=BB22_12 Depth=2
	add	x0, x23, x20
	add	x1, x22, x20
	add	x2, x21, x20
	mov	x3, x19
	mov	w4, #2                          // =0x2
	bl	get_rearrange_panel_one_auto_data
	ldr	w8, [x25]
	orr	w8, w8, w0
	str	w8, [x25]
	mov	w8, #1                          // =0x1
	b	.LBB22_11
.LBB22_14:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	w8, [x9]
	b	.LBB22_45
.LBB22_15:
	ldp	w8, w11, [x26, #188]
	cmp	w5, #2
	mov	w13, wzr
	add	x17, x19, #1116
	add	x0, x19, #1120
	add	w10, w11, w11, lsr #31
	lsr	w9, w8, #3
	asr	w10, w10, #1
	mul	w12, w10, w9
	csel	w15, w11, w10, ne
	cmp	w5, #3
	mul	w14, w10, w8
	csel	w10, w10, w13, eq
	sbfiz	x16, x12, #3, #32
	csel	w12, w11, w15, eq
	add	x11, x3, x14
	add	x14, x2, x16
	csel	x13, x11, x3, eq
	add	x11, x1, x16
	csel	x14, x14, x2, eq
	csel	x15, x11, x1, eq
	csel	x11, x0, x17, eq
	cmp	w10, w12
	b.ge	.LBB22_43
// %bb.16:
	ldrh	w16, [x19, #1112]
	ldr	w17, [x26, #268]
	mov	w6, wzr
	add	x0, x20, #1
	b	.LBB22_19
.LBB22_17:                              //   in Loop: Header=BB22_19 Depth=1
	add	x15, x15, x1
	add	x14, x14, x1
	add	x13, x13, x1
.LBB22_18:                              //   in Loop: Header=BB22_19 Depth=1
	add	w10, w10, #1
	cmp	w10, w12
	b.eq	.LBB22_44
.LBB22_19:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB22_25 Depth 2
	cbz	w17, .LBB22_21
// %bb.20:                              //   in Loop: Header=BB22_19 Depth=1
	ldp	w3, w1, [x26, #188]
	mvn	w2, w10
	add	w1, w1, w2
	mul	w2, w1, w3
	cmp	w8, #8
	b.lo	.LBB22_18
	b	.LBB22_22
.LBB22_21:                              //   in Loop: Header=BB22_19 Depth=1
	ldr	w1, [x26, #188]
	mul	w2, w1, w10
	cmp	w8, #8
	b.lo	.LBB22_18
.LBB22_22:                              //   in Loop: Header=BB22_19 Depth=1
	lsr	w2, w2, #2
	mov	x1, xzr
	mov	w3, w9
	add	x2, x0, x2
	b	.LBB22_25
.LBB22_23:                              //   in Loop: Header=BB22_25 Depth=2
	sturh	wzr, [x2, #-1]
.LBB22_24:                              //   in Loop: Header=BB22_25 Depth=2
	subs	w3, w3, #1
	add	x1, x1, #8
	add	x2, x2, #2
	b.eq	.LBB22_17
.LBB22_25:                              //   Parent Loop BB22_19 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x5, [x15, x1]
	ldr	x4, [x14, x1]
	cmp	x5, x4
	b.eq	.LBB22_23
// %bb.26:                              //   in Loop: Header=BB22_25 Depth=2
	eor	x6, x4, x5
	tst	x6, #0xff
	b.eq	.LBB22_41
// %bb.27:                              //   in Loop: Header=BB22_25 Depth=2
	lsl	x21, x4, #2
	ldrb	w20, [x13, x1]
	ldr	x7, [x19, #1176]
	mov	x23, x4
	and	x21, x21, #0x3e0
	add	x7, x7, x20, lsl #10
	add	w22, w20, #1
	bfxil	x21, x5, #3, #5
	and	w22, w22, #0xff
	bfxil	x23, x5, #0, #8
	cmp	w22, w16, uxtb
	ldrb	w7, [x7, x21]
	csel	x4, x23, x4, eq
	csinc	w20, wzr, w20, eq
	strb	w20, [x13, x1]
	tst	x6, #0xff00
	b.eq	.LBB22_29
.LBB22_28:                              //   in Loop: Header=BB22_25 Depth=2
	add	x20, x13, x1
	lsr	x21, x4, #6
	ldr	x23, [x19, #1176]
	ldrb	w22, [x20, #1]
	lsr	x25, x5, #8
	and	x21, x21, #0x3e0
	add	x23, x23, x22, lsl #10
	bfxil	x21, x5, #11, #5
	add	w24, w22, #1
	ldrb	w21, [x23, x21]
	and	w23, w24, #0xff
	mov	x24, x4
	bfi	x24, x25, #8, #8
	cmp	w23, w16, uxtb
	orr	w7, w7, w21, lsl #2
	csinc	w21, wzr, w22, eq
	csel	x4, x24, x4, eq
	strb	w21, [x20, #1]
.LBB22_29:                              //   in Loop: Header=BB22_25 Depth=2
	tst	x6, #0xff0000
	b.eq	.LBB22_31
// %bb.30:                              //   in Loop: Header=BB22_25 Depth=2
	add	x20, x13, x1
	lsr	x21, x4, #14
	ldr	x23, [x19, #1176]
	ldrb	w22, [x20, #2]
	lsr	x25, x5, #16
	and	x21, x21, #0x3e0
	add	x23, x23, x22, lsl #10
	bfxil	x21, x5, #19, #5
	add	w24, w22, #1
	ldrb	w21, [x23, x21]
	and	w23, w24, #0xff
	mov	x24, x4
	bfi	x24, x25, #16, #8
	cmp	w23, w16, uxtb
	orr	w7, w7, w21, lsl #4
	csinc	w21, wzr, w22, eq
	csel	x4, x24, x4, eq
	strb	w21, [x20, #2]
.LBB22_31:                              //   in Loop: Header=BB22_25 Depth=2
	tst	x6, #0xff000000
	b.eq	.LBB22_33
// %bb.32:                              //   in Loop: Header=BB22_25 Depth=2
	add	x20, x13, x1
	lsr	x21, x4, #22
	ldr	x23, [x19, #1176]
	ldrb	w22, [x20, #3]
	lsr	x25, x5, #24
	and	x21, x21, #0x3e0
	add	x23, x23, x22, lsl #10
	bfxil	x21, x5, #27, #5
	add	w24, w22, #1
	ldrb	w21, [x23, x21]
	and	w23, w24, #0xff
	mov	x24, x4
	bfi	x24, x25, #24, #8
	cmp	w23, w16, uxtb
	orr	w7, w7, w21, lsl #6
	csinc	w21, wzr, w22, eq
	csel	x4, x24, x4, eq
	strb	w21, [x20, #3]
.LBB22_33:                              //   in Loop: Header=BB22_25 Depth=2
	tst	x6, #0xff00000000
	sturb	w7, [x2, #-1]
	b.eq	.LBB22_42
// %bb.34:                              //   in Loop: Header=BB22_25 Depth=2
	add	x20, x13, x1
	lsr	x22, x4, #30
	ldr	x7, [x19, #1176]
	ldrb	w21, [x20, #4]
	lsr	x24, x5, #32
	mov	x25, x4
	and	x22, x22, #0x3e0
	add	x7, x7, x21, lsl #10
	add	w23, w21, #1
	bfxil	x22, x5, #35, #5
	and	w23, w23, #0xff
	bfi	x25, x24, #32, #8
	cmp	w23, w16, uxtb
	ldrb	w7, [x7, x22]
	csinc	w21, wzr, w21, eq
	csel	x4, x25, x4, eq
	strb	w21, [x20, #4]
	tst	x6, #0xff0000000000
	b.eq	.LBB22_36
.LBB22_35:                              //   in Loop: Header=BB22_25 Depth=2
	add	x20, x13, x1
	lsr	x21, x4, #38
	ldr	x23, [x19, #1176]
	ldrb	w22, [x20, #5]
	lsr	x25, x5, #40
	and	x21, x21, #0x3e0
	add	x23, x23, x22, lsl #10
	bfxil	x21, x5, #43, #5
	add	w24, w22, #1
	ldrb	w21, [x23, x21]
	and	w23, w24, #0xff
	mov	x24, x4
	bfi	x24, x25, #40, #8
	cmp	w23, w16, uxtb
	orr	w7, w7, w21, lsl #2
	csinc	w21, wzr, w22, eq
	csel	x4, x24, x4, eq
	strb	w21, [x20, #5]
.LBB22_36:                              //   in Loop: Header=BB22_25 Depth=2
	tst	x6, #0xff000000000000
	b.eq	.LBB22_38
// %bb.37:                              //   in Loop: Header=BB22_25 Depth=2
	add	x20, x13, x1
	lsr	x21, x4, #46
	ldr	x23, [x19, #1176]
	ldrb	w22, [x20, #6]
	lsr	x25, x5, #48
	and	x21, x21, #0x3e0
	add	x23, x23, x22, lsl #10
	bfxil	x21, x5, #51, #5
	add	w24, w22, #1
	ldrb	w21, [x23, x21]
	and	w23, w24, #0xff
	mov	x24, x4
	bfi	x24, x25, #48, #8
	cmp	w23, w16, uxtb
	orr	w7, w7, w21, lsl #4
	csinc	w21, wzr, w22, eq
	csel	x4, x24, x4, eq
	strb	w21, [x20, #6]
.LBB22_38:                              //   in Loop: Header=BB22_25 Depth=2
	lsr	x6, x6, #56
	cbz	x6, .LBB22_40
// %bb.39:                              //   in Loop: Header=BB22_25 Depth=2
	add	x6, x13, x1
	lsr	x20, x4, #54
	ldr	x22, [x19, #1176]
	ldrb	w21, [x6, #7]
	and	x20, x20, #0x3e0
	add	x22, x22, x21, lsl #10
	bfxil	x20, x5, #59, #5
	add	w23, w21, #1
	bfxil	x5, x4, #0, #56
	ldrb	w20, [x22, x20]
	and	w22, w23, #0xff
	cmp	w22, w16, uxtb
	orr	w7, w7, w20, lsl #6
	csinc	w20, wzr, w21, eq
	csel	x4, x5, x4, eq
	strb	w20, [x6, #7]
.LBB22_40:                              //   in Loop: Header=BB22_25 Depth=2
	str	x4, [x14, x1]
	mov	w6, #1                          // =0x1
	strb	w7, [x2]
	b	.LBB22_24
.LBB22_41:                              //   in Loop: Header=BB22_25 Depth=2
	mov	w7, wzr
	tst	x6, #0xff00
	b.ne	.LBB22_28
	b	.LBB22_29
.LBB22_42:                              //   in Loop: Header=BB22_25 Depth=2
	mov	w7, wzr
	tst	x6, #0xff0000000000
	b.ne	.LBB22_35
	b	.LBB22_36
.LBB22_43:
	mov	w6, wzr
.LBB22_44:
	str	w6, [x11]
.LBB22_45:
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #144
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end22:
	.size	get_auto_data, .Lfunc_end22-get_auto_data
                                        // -- End function
	.p2align	2                               // -- Begin function update_frame_left
	.type	update_frame_left,@function
update_frame_left:                      // @update_frame_left
// %bb.0:
	tbz	w1, #0, .LBB23_2
// %bb.1:
	ldrb	w8, [x0, #1661]
	strb	w8, [x0, #1648]
.LBB23_2:
	ldrb	w8, [x0, #1465]
	tbz	w8, #0, .LBB23_40
// %bb.3:
	ldrb	w8, [x0, #1648]
	tbz	w8, #0, .LBB23_41
// %bb.4:
	tbz	w1, #0, .LBB23_46
// %bb.5:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	ldr	x21, [x0, #656]
	add	x8, x0, #1676
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	ldr	w19, [x0, #1672]
	ldr	w20, [x0, #1668]
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	str	wzr, [x0, #1664]
	str	w19, [x0, #1656]
	str	w20, [x0, #1652]
	str	xzr, [x8]
	str	wzr, [x0, #1684]
	cbz	x21, .LBB23_48
// %bb.6:
	ldr	w22, [x0, #1140]
	cmp	w22, #1
	b.lt	.LBB23_48
// %bb.7:
	ldr	w23, [x0, #1136]
	cmp	w23, #1
	b.lt	.LBB23_48
// %bb.8:
	cmp	w20, #1
	b.lt	.LBB23_48
// %bb.9:
	ldr	w8, [x0, #1644]
	tbz	w8, #31, .LBB23_47
// %bb.10:
	cmp	w19, #10
	b.eq	.LBB23_48
.LBB23_11:
	and	x8, x23, #0xffff
	cbz	w8, .LBB23_48
// %bb.12:
	mul	w10, w20, w20
	ubfx	w11, w22, #1, #16
	ubfx	x12, x23, #1, #16
	mov	x9, xzr
	mov	w14, #1                         // =0x1
	mov	w15, #65535                     // =0xffff
	lsl	w13, w10, #2
	b	.LBB23_14
.LBB23_13:                              //   in Loop: Header=BB23_14 Depth=1
	add	x9, x9, #1
	cmp	x9, x8
	b.eq	.LBB23_48
.LBB23_14:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB23_18 Depth 2
	cbz	w11, .LBB23_13
// %bb.15:                              //   in Loop: Header=BB23_14 Depth=1
	sub	w17, w23, w9
	subs	x3, x9, x12
	mov	w16, wzr
	sdiv	w17, w17, w20
	mul	x0, x3, x3
	asr	x2, x3, #63
	cinc	w1, w14, lt
	cmp	w3, #0
	and	w2, w2, #0x3
	cneg	w3, w3, mi
	b	.LBB23_18
.LBB23_16:                              //   in Loop: Header=BB23_18 Depth=2
	sub	w4, w22, w4, uxth
	sdiv	w4, w4, w20
	cmp	w4, w15
	csel	w4, w4, w15, lt
.LBB23_17:                              //   in Loop: Header=BB23_18 Depth=2
	add	w16, w16, #1
	strh	w4, [x21], #2
	cmp	w11, w16
	b.eq	.LBB23_13
.LBB23_18:                              //   Parent Loop BB23_14 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	lsl	w4, w16, #1
	cmp	w19, #4
	b.gt	.LBB23_23
// %bb.19:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w19, #2
	b.gt	.LBB23_27
// %bb.20:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w19, #1
	b.eq	.LBB23_33
// %bb.21:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w19, #2
	b.ne	.LBB23_38
// %bb.22:                              //   in Loop: Header=BB23_18 Depth=2
	and	w4, w4, #0xffff
	subs	w4, w4, w11
	cneg	w4, w4, mi
	add	w4, w4, w3
	b	.LBB23_36
.LBB23_23:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w19, #7
	b.gt	.LBB23_30
// %bb.24:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w19, #5
	b.eq	.LBB23_34
// %bb.25:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w19, #7
	b.ne	.LBB23_38
// %bb.26:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w17, w15
	csel	w4, w17, w15, lt
	b	.LBB23_17
.LBB23_27:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w19, #3
	b.eq	.LBB23_35
// %bb.28:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w19, #4
	b.ne	.LBB23_38
// %bb.29:                              //   in Loop: Header=BB23_18 Depth=2
	and	w4, w4, #0xffff
	subs	w4, w4, w11
	cneg	w4, w4, mi
	cmp	w4, w3
	csel	w4, w4, w3, lo
	b	.LBB23_39
.LBB23_30:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w19, #8
	b.eq	.LBB23_16
// %bb.31:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w19, #9
	b.ne	.LBB23_38
// %bb.32:                              //   in Loop: Header=BB23_18 Depth=2
	udiv	w4, w9, w20
	b	.LBB23_17
.LBB23_33:                              //   in Loop: Header=BB23_18 Depth=2
	and	w4, w4, #0xffff
	sub	w4, w4, w11
	smaddl	x4, w4, w4, x0
	udiv	x4, x4, x10
	cmp	x4, x15
	csel	x4, x4, x15, lo
	b	.LBB23_17
.LBB23_34:                              //   in Loop: Header=BB23_18 Depth=2
	and	w4, w4, #0xffff
	subs	w4, w4, w11
	smaddl	x4, w4, w4, x0
	csel	w5, w1, w2, lt
	orr	w5, w5, #0x4
	udiv	x4, x4, x13
	mul	w4, w5, w4
	b	.LBB23_37
.LBB23_35:                              //   in Loop: Header=BB23_18 Depth=2
	and	w4, w4, #0xffff
	subs	w4, w4, w11
	cneg	w4, w4, mi
	cmp	w4, w3
	csel	w4, w4, w3, hi
.LBB23_36:                              //   in Loop: Header=BB23_18 Depth=2
	udiv	w4, w4, w20
.LBB23_37:                              //   in Loop: Header=BB23_18 Depth=2
	cmp	w4, w15
	csel	w4, w4, w15, lo
	b	.LBB23_17
.LBB23_38:                              //   in Loop: Header=BB23_18 Depth=2
	and	w4, w4, #0xffff
.LBB23_39:                              //   in Loop: Header=BB23_18 Depth=2
	udiv	w4, w4, w20
	b	.LBB23_17
.LBB23_40:
	strb	wzr, [x0, #1648]
.LBB23_41:
	tbz	w1, #0, .LBB23_43
// %bb.42:
	ldrh	w8, [x0, #1112]
	b	.LBB23_44
.LBB23_43:
	ldr	w8, [x0, #1128]
	subs	w8, w8, #1
	b.lt	.LBB23_45
.LBB23_44:
	str	w8, [x0, #1128]
.LBB23_45:
	ret
.LBB23_46:
	ldr	w8, [x0, #1664]
	add	w8, w8, #1
	str	w8, [x0, #1664]
	ret
.LBB23_47:
	ldr	x0, [x0, #1152]
	adrp	x1, .L.str.107
	add	x1, x1, :lo12:.L.str.107
	mov	w2, w19
	bl	_dev_info
	cmp	w19, #10
	b.ne	.LBB23_11
.LBB23_48:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end23:
	.size	update_frame_left, .Lfunc_end23-update_frame_left
                                        // -- End function
	.p2align	2                               // -- Begin function get_full_data
	.type	get_full_data,@function
get_full_data:                          // @get_full_data
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	ldr	w9, [x8, #276]
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	cbz	w9, .LBB24_2
// %bb.1:
	ldrb	w5, [x3, #1648]
	bl	get_rearrange_panel_data
	b	.LBB24_46
.LBB24_2:
	ldr	w9, [x8, #264]
	ldrb	w5, [x3, #1648]
	cmp	w9, #230
	b.ne	.LBB24_36
// %bb.3:
	ldp	w9, w11, [x8, #188]
	cmp	w4, #2
	lsr	w10, w9, #2
	b.ne	.LBB24_37
// %bb.4:
	add	w11, w11, w11, lsr #31
	mov	w12, wzr
	asr	w11, w11, #1
	cmp	w12, w11
	b.ge	.LBB24_40
.LBB24_5:
	ldrh	w13, [x3, #1112]
	ldr	w14, [x3, #1128]
	mov	w6, #255                        // =0xff
	ldr	x16, [x8, #120]
	sub	w13, w13, w14
	ldr	x14, [x3, #1176]
	lsl	w13, w13, #10
	ldp	w16, w15, [x16, #116]
	add	x17, x14, w13, sxtw
	ldr	w14, [x8, #260]
	mov	w13, #1                         // =0x1
	b	.LBB24_7
.LBB24_6:                               //   in Loop: Header=BB24_7 Depth=1
	add	w12, w12, #1
	cmp	w12, w11
	b.eq	.LBB24_41
.LBB24_7:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB24_13 Depth 2
	ldr	w7, [x8, #268]
	mov	w19, w12
	cbz	w7, .LBB24_9
// %bb.8:                               //   in Loop: Header=BB24_7 Depth=1
	ldr	w7, [x8, #192]
	mvn	w19, w12
	add	w19, w7, w19
.LBB24_9:                               //   in Loop: Header=BB24_7 Depth=1
	cmp	w9, #4
	b.lo	.LBB24_6
// %bb.10:                              //   in Loop: Header=BB24_7 Depth=1
	ldr	x20, [x8, #120]
	mul	w19, w19, w15
	mov	w7, wzr
	ldr	w20, [x20, #104]
	add	x19, x0, x19
	mul	w20, w20, w16
	add	x19, x19, x20
	mov	w20, w10
	b	.LBB24_13
.LBB24_11:                              //   in Loop: Header=BB24_13 Depth=2
	lsr	x24, x22, #6
	lsr	x25, x22, #14
	lsr	x22, x22, #22
	and	x24, x24, #0x3e0
	and	x25, x25, #0x3e0
	and	x22, x22, #0x3e0
	bfxil	x24, x21, #11, #5
	bfxil	x25, x21, #19, #5
	orr	x21, x22, x21, lsr #27
	ldrb	w24, [x17, x24]
	ldrb	w25, [x17, x25]
	ldrb	w21, [x17, x21]
	lsl	w24, w24, #8
	orr	w23, w24, w23, lsl #12
	lsl	w24, w25, #4
	orr	w22, w23, w24
	orr	w21, w21, w24
	lsr	w22, w22, #8
	strb	w21, [x19, #2]
	mov	w21, #4                         // =0x4
	strb	w22, [x19]
.LBB24_12:                              //   in Loop: Header=BB24_13 Depth=2
	subs	w20, w20, #1
	add	x19, x19, x21
	add	w7, w7, #4
	b.eq	.LBB24_6
.LBB24_13:                              //   Parent Loop BB24_7 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w21, [x1], #4
	ldr	w22, [x2], #4
	cbz	w5, .LBB24_20
// %bb.14:                              //   in Loop: Header=BB24_13 Depth=2
	ldr	x23, [x3, #656]
	cbz	x23, .LBB24_25
// %bb.15:                              //   in Loop: Header=BB24_13 Depth=2
	ldr	w24, [x3, #1140]
	ldr	w25, [x3, #1656]
	asr	w24, w24, #1
	cmp	w25, #10
	mul	w24, w24, w12
	add	x23, x23, w24, sxtw #1
	asr	w24, w7, #1
	ldrh	w23, [x23, w24, sxtw #1]
	b.ne	.LBB24_17
// %bb.16:                              //   in Loop: Header=BB24_13 Depth=2
	ldr	w24, [x3, #1652]
	sdiv	w23, w23, w24
.LBB24_17:                              //   in Loop: Header=BB24_13 Depth=2
	ldr	w24, [x3, #1664]
	subs	w23, w24, w23
	ldrh	w24, [x3, #1112]
	b.mi	.LBB24_26
// %bb.18:                              //   in Loop: Header=BB24_13 Depth=2
	cmp	w23, w24
	b.hs	.LBB24_26
// %bb.19:                              //   in Loop: Header=BB24_13 Depth=2
	ldr	x17, [x3, #1176]
	lsl	w23, w23, #10
	mov	w13, wzr
	add	x17, x17, x23
.LBB24_20:                              //   in Loop: Header=BB24_13 Depth=2
	lsl	x23, x22, #2
	cmp	w16, #4
	and	x23, x23, #0x3e0
	bfxil	x23, x21, #3, #5
	ldrb	w23, [x17, x23]
	b.eq	.LBB24_23
// %bb.21:                              //   in Loop: Header=BB24_13 Depth=2
	cmp	w16, #2
	b.eq	.LBB24_11
// %bb.22:                              //   in Loop: Header=BB24_13 Depth=2
	ubfx	x24, x22, #6, #26
	ubfx	x25, x22, #14, #18
	ubfx	x22, x22, #22, #10
	and	w24, w24, #0x3e0
	and	w25, w25, #0x3e0
	and	w22, w22, #0x3e0
	bfxil	w24, w21, #11, #5
	bfxil	w25, w21, #19, #5
	orr	w21, w22, w21, lsr #27
	ldrb	w24, [x17, w24, uxtw]
	ldrb	w21, [x17, w21, uxtw]
	orr	w23, w23, w24, lsl #4
	ldrb	w24, [x17, w25, uxtw]
	orr	w22, w23, w24, lsl #8
	orr	w21, w22, w21, lsl #12
	strh	w21, [x19]
	b	.LBB24_33
.LBB24_23:                              //   in Loop: Header=BB24_13 Depth=2
	lsr	x24, x22, #6
	ubfx	x25, x22, #14, #18
	ubfx	x22, x22, #22, #10
	lsl	w23, w23, #12
	and	x24, x24, #0x3e0
	and	w25, w25, #0x3e0
	and	w22, w22, #0x3e0
	bfxil	x24, x21, #11, #5
	bfxil	w25, w21, #19, #5
	orr	w22, w22, w21, lsr #27
	ldrb	w24, [x17, x24]
	ldrb	w25, [x17, w25, uxtw]
	ldrb	w22, [x17, w22, uxtw]
	lsl	w24, w24, #8
	lsl	w21, w25, #4
	cbz	w14, .LBB24_34
// %bb.24:                              //   in Loop: Header=BB24_13 Depth=2
	ldr	x25, [x8, #120]
	ldr	w26, [x19]
	orr	w24, w21, w24
	orr	w23, w24, w23
	orr	w21, w22, w21
	ldr	w25, [x25, #100]
	and	w23, w23, #0xff00
	and	w21, w21, #0xff
	lsl	w25, w6, w25
	bic	w25, w26, w25
	str	w25, [x19]
	ldr	x26, [x8, #120]
	ldr	w26, [x26, #100]
	sub	w24, w26, #8
	lsl	w23, w23, w24
	orr	w23, w23, w25
	str	w23, [x19]
	ldr	x24, [x8, #120]
	ldr	w24, [x24, #96]
	lsl	w24, w6, w24
	bic	w23, w23, w24
	str	w23, [x19]
	ldr	x24, [x8, #120]
	ldr	w22, [x24, #96]
	lsl	w21, w21, w22
	orr	w21, w21, w23
	b	.LBB24_31
.LBB24_25:                              //   in Loop: Header=BB24_13 Depth=2
	ldrh	w24, [x3, #1112]
	mov	w23, #-1                        // =0xffffffff
.LBB24_26:                              //   in Loop: Header=BB24_13 Depth=2
	cmp	w23, w24
	csel	w13, wzr, w13, lt
	cmp	w16, #4
	b.eq	.LBB24_29
// %bb.27:                              //   in Loop: Header=BB24_13 Depth=2
	cmp	w16, #2
	b.ne	.LBB24_32
// %bb.28:                              //   in Loop: Header=BB24_13 Depth=2
	ldrb	w21, [x19, #1]
	ldrb	w22, [x19, #3]
	lsl	w21, w21, #8
	lsl	w22, w22, #8
	strh	w21, [x19]
	mov	w21, #4                         // =0x4
	strh	w22, [x19, #2]
	b	.LBB24_12
.LBB24_29:                              //   in Loop: Header=BB24_13 Depth=2
	cbz	w14, .LBB24_35
// %bb.30:                              //   in Loop: Header=BB24_13 Depth=2
	ldr	x21, [x8, #120]
	ldr	w23, [x19]
	ldp	w21, w22, [x21, #96]
	lsl	w22, w6, w22
	lsl	w21, w6, w21
	orr	w21, w21, w22
	bic	w21, w23, w21
.LBB24_31:                              //   in Loop: Header=BB24_13 Depth=2
	str	w21, [x19]
	mov	w21, #4                         // =0x4
	b	.LBB24_12
.LBB24_32:                              //   in Loop: Header=BB24_13 Depth=2
	strh	wzr, [x19]
.LBB24_33:                              //   in Loop: Header=BB24_13 Depth=2
	mov	w21, #2                         // =0x2
	b	.LBB24_12
.LBB24_34:                              //   in Loop: Header=BB24_13 Depth=2
	and	w23, w23, #0xf000
	orr	w24, w24, w21
	orr	w21, w22, w21
	orr	w23, w24, w23
	strb	w21, [x19, #4]
	mov	w21, #8                         // =0x8
	lsr	w23, w23, #8
	strb	w23, [x19]
	b	.LBB24_12
.LBB24_35:                              //   in Loop: Header=BB24_13 Depth=2
	ldp	w21, w22, [x19]
	and	w21, w21, #0xffffff00
	and	w22, w22, #0xffffff00
	stp	w21, w22, [x19]
	mov	w21, #8                         // =0x8
	b	.LBB24_12
.LBB24_36:
	bl	get_normal_panel_data
	b	.LBB24_46
.LBB24_37:
	cmp	w4, #3
	b.ne	.LBB24_39
// %bb.38:
	add	w12, w11, w11, lsr #31
	asr	w12, w12, #1
	mul	w13, w12, w10
	sbfiz	x13, x13, #2, #32
	add	x1, x1, x13
	add	x2, x2, x13
	cmp	w12, w11
	b.lt	.LBB24_5
	b	.LBB24_40
.LBB24_39:
	mov	w12, wzr
	cmp	w12, w11
	b.lt	.LBB24_5
.LBB24_40:
	mov	w13, #1                         // =0x1
.LBB24_41:
	cmp	w4, #2
	b.ne	.LBB24_43
// %bb.42:
	str	w13, [x3, #1680]
	b	.LBB24_46
.LBB24_43:
	cmp	w4, #3
	b.eq	.LBB24_45
// %bb.44:
	str	w13, [x3, #1680]
.LBB24_45:
	str	w13, [x3, #1676]
.LBB24_46:
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end24:
	.size	get_full_data, .Lfunc_end24-get_full_data
                                        // -- End function
	.p2align	2                               // -- Begin function get_rearrange_panel_one_auto_data
	.type	get_rearrange_panel_one_auto_data,@function
get_rearrange_panel_one_auto_data:      // @get_rearrange_panel_one_auto_data
// %bb.0:
	ldr	x8, [x1]
	ldr	x9, [x0]
	ldrh	w10, [x3, #1112]
	eor	x11, x8, x9
	tst	x11, #0xff
	b.eq	.LBB25_16
// %bb.1:
	lsl	x12, x8, #2
	ldrb	w13, [x2]
	ldr	x14, [x3, #1176]
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	add	w15, w13, #1
	bfxil	x12, x9, #3, #5
	ldrb	w12, [x14, x12]
	and	w14, w15, #0xff
	mov	x15, x8
	bfxil	x15, x9, #0, #8
	cmp	w14, w10, uxtb
	lsl	w0, w12, w4
	csinc	w12, wzr, w13, eq
	csel	x8, x15, x8, eq
	strb	w12, [x2]
	tst	x11, #0xff00
	b.eq	.LBB25_3
.LBB25_2:
	lsr	x12, x8, #6
	ldrb	w13, [x2, #1]
	ldr	x14, [x3, #1176]
	lsr	x15, x9, #8
	add	w16, w4, #4
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	bfxil	x12, x9, #11, #5
	bfi	x17, x15, #8, #8
	ldrb	w12, [x14, x12]
	add	w14, w13, #1
	and	w14, w14, #0xff
	lsl	w12, w12, w16
	cmp	w14, w10, uxtb
	csinc	w13, wzr, w13, eq
	csel	x8, x17, x8, eq
	orr	w0, w12, w0
	strb	w13, [x2, #1]
.LBB25_3:
	tst	x11, #0xff0000
	b.eq	.LBB25_5
// %bb.4:
	lsr	x12, x8, #14
	ldrb	w13, [x2, #2]
	ldr	x14, [x3, #1176]
	lsr	x15, x9, #16
	add	w16, w4, #8
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	bfxil	x12, x9, #19, #5
	bfi	x17, x15, #16, #8
	ldrb	w12, [x14, x12]
	add	w14, w13, #1
	and	w14, w14, #0xff
	lsl	w12, w12, w16
	cmp	w14, w10, uxtb
	csinc	w13, wzr, w13, eq
	csel	x8, x17, x8, eq
	orr	w0, w12, w0
	strb	w13, [x2, #2]
.LBB25_5:
	tst	x11, #0xff000000
	b.eq	.LBB25_7
// %bb.6:
	lsr	x12, x8, #22
	ldrb	w13, [x2, #3]
	ldr	x14, [x3, #1176]
	lsr	x15, x9, #24
	add	w16, w4, #12
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	bfxil	x12, x9, #27, #5
	bfi	x17, x15, #24, #8
	ldrb	w12, [x14, x12]
	add	w14, w13, #1
	and	w14, w14, #0xff
	lsl	w12, w12, w16
	cmp	w14, w10, uxtb
	csinc	w13, wzr, w13, eq
	csel	x8, x17, x8, eq
	orr	w0, w12, w0
	strb	w13, [x2, #3]
.LBB25_7:
	tst	x11, #0xff00000000
	b.eq	.LBB25_9
// %bb.8:
	lsr	x12, x8, #30
	ldrb	w13, [x2, #4]
	ldr	x14, [x3, #1176]
	lsr	x15, x9, #32
	add	w16, w4, #16
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	bfxil	x12, x9, #35, #5
	bfi	x17, x15, #32, #8
	ldrb	w12, [x14, x12]
	add	w14, w13, #1
	and	w14, w14, #0xff
	lsl	w12, w12, w16
	cmp	w14, w10, uxtb
	csinc	w13, wzr, w13, eq
	csel	x8, x17, x8, eq
	orr	w0, w12, w0
	strb	w13, [x2, #4]
.LBB25_9:
	tst	x11, #0xff0000000000
	b.eq	.LBB25_11
// %bb.10:
	lsr	x12, x8, #38
	ldrb	w13, [x2, #5]
	ldr	x14, [x3, #1176]
	lsr	x15, x9, #40
	add	w16, w4, #20
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	bfxil	x12, x9, #43, #5
	bfi	x17, x15, #40, #8
	ldrb	w12, [x14, x12]
	add	w14, w13, #1
	and	w14, w14, #0xff
	lsl	w12, w12, w16
	cmp	w14, w10, uxtb
	csinc	w13, wzr, w13, eq
	csel	x8, x17, x8, eq
	orr	w0, w12, w0
	strb	w13, [x2, #5]
.LBB25_11:
	tst	x11, #0xff000000000000
	b.eq	.LBB25_13
// %bb.12:
	lsr	x12, x8, #46
	ldrb	w13, [x2, #6]
	ldr	x14, [x3, #1176]
	lsr	x15, x9, #48
	add	w16, w4, #24
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	bfxil	x12, x9, #51, #5
	bfi	x17, x15, #48, #8
	ldrb	w12, [x14, x12]
	add	w14, w13, #1
	and	w14, w14, #0xff
	lsl	w12, w12, w16
	cmp	w14, w10, uxtb
	csinc	w13, wzr, w13, eq
	csel	x8, x17, x8, eq
	orr	w0, w12, w0
	strb	w13, [x2, #6]
.LBB25_13:
	lsr	x11, x11, #56
	cbz	x11, .LBB25_15
// %bb.14:
	lsr	x11, x8, #54
	ldrb	w12, [x2, #7]
	ldr	x13, [x3, #1176]
	add	w14, w4, #28
	and	x11, x11, #0x3e0
	add	x13, x13, x12, lsl #10
	bfxil	x11, x9, #59, #5
	bfxil	x9, x8, #0, #56
	ldrb	w11, [x13, x11]
	add	w13, w12, #1
	and	w13, w13, #0xff
	lsl	w11, w11, w14
	cmp	w13, w10, uxtb
	csinc	w10, wzr, w12, eq
	csel	x8, x9, x8, eq
	orr	w0, w11, w0
	strb	w10, [x2, #7]
.LBB25_15:
	str	x8, [x1]
	ret
.LBB25_16:
	mov	w0, wzr
	tst	x11, #0xff00
	b.ne	.LBB25_2
	b	.LBB25_3
.Lfunc_end25:
	.size	get_rearrange_panel_one_auto_data, .Lfunc_end25-get_rearrange_panel_one_auto_data
                                        // -- End function
	.p2align	2                               // -- Begin function get_rearrange_panel_data
	.type	get_rearrange_panel_data,@function
get_rearrange_panel_data:               // @get_rearrange_panel_data
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #176
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #112]            // 16-byte Folded Spill
	ldr	w10, [x3, #1256]
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x28, x27, [sp, #96]             // 16-byte Folded Spill
	adrp	x12, ebc_get_8pix_wf_full
	add	x12, x12, :lo12:ebc_get_8pix_wf_full
	sub	w10, w10, #1
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	ldp	w26, w9, [x8, #188]
	tst	w10, #0xfffffffb
	add	x29, sp, #80
	stp	x24, x23, [sp, #128]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #160]            // 16-byte Folded Spill
	ldr	w25, [x3, #1128]
	mov	x19, x3
	add	w8, w9, w9, lsr #31
	lsr	x28, x26, #3
	lsr	w20, w26, #2
	stp	x22, x21, [sp, #144]            // 16-byte Folded Spill
	mov	w21, w5
	asr	w8, w8, #1
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	str	w4, [sp]                        // 4-byte Folded Spill
	mul	w11, w8, w28
	sbfiz	x10, x11, #3, #32
	adrp	x11, ebc_get_8pix_wf_part
	add	x11, x11, :lo12:ebc_get_8pix_wf_part
	csel	x11, x11, x12, eq
	cmp	w4, #3
	stur	x11, [x29, #-24]                // 8-byte Folded Spill
	add	x11, x1, x10
	add	x10, x2, x10
	csel	x10, x2, x10, ne
	csel	x11, x1, x11, ne
	csel	w12, wzr, w8, ne
	cmp	w4, #2
	csel	w23, w9, w8, ne
	ldrh	w9, [x3, #1112]
	csel	w24, w12, wzr, ne
	csel	x27, x10, x2, ne
	csel	x22, x11, x1, ne
	subs	w8, w23, w24
	stur	w9, [x29, #-32]                 // 4-byte Folded Spill
	mov	x9, #1024                       // =0x400
	mul	w10, w24, w20
	movk	x9, #3080, lsl #16
	mul	w8, w8, w20
	ldr	x11, [x3, #1176]
	movk	x9, #5136, lsl #32
	mov	w1, wzr
	movk	x9, #7192, lsl #48
	add	x0, x0, w10, sxtw
	str	x11, [sp, #8]                   // 8-byte Folded Spill
	stur	x9, [x29, #-8]
	mov	x9, #1538                       // =0x602
	sxtw	x2, w8
	movk	x9, #3594, lsl #16
	str	w10, [sp, #40]                  // 4-byte Folded Spill
	movk	x9, #5650, lsl #32
	movk	x9, #7706, lsl #48
	stur	x9, [x29, #-16]
	bl	memset
	cmp	w23, w24
	str	w23, [sp, #36]                  // 4-byte Folded Spill
	stur	w24, [x29, #-36]                // 4-byte Folded Spill
	b.le	.LBB26_39
// %bb.1:
	ldur	w8, [x29, #-32]                 // 4-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	lsl	w11, w20, #1
	ldr	w10, [sp, #40]                  // 4-byte Folded Reload
	str	x28, [sp, #8]                   // 8-byte Folded Spill
	sub	w8, w8, w25
	str	x26, [sp, #16]                  // 8-byte Folded Spill
	lsl	w8, w8, #10
	str	w11, [sp, #4]                   // 4-byte Folded Spill
	add	x23, x9, w8, sxtw
	lsl	x8, x28, #3
	mov	w28, #1                         // =0x1
	stur	x8, [x29, #-32]                 // 8-byte Folded Spill
	b	.LBB26_5
.LBB26_2:                               //   in Loop: Header=BB26_5 Depth=1
	add	x22, x22, x24
	add	x27, x27, x24
.LBB26_3:                               //   in Loop: Header=BB26_5 Depth=1
	ldr	w10, [sp, #40]                  // 4-byte Folded Reload
	ldr	w11, [sp, #4]                   // 4-byte Folded Reload
.LBB26_4:                               //   in Loop: Header=BB26_5 Depth=1
	ldur	w9, [x29, #-36]                 // 4-byte Folded Reload
	ldr	w8, [sp, #36]                   // 4-byte Folded Reload
	add	w10, w10, w11
	add	w9, w9, #2
	cmp	w9, w8
	stur	w9, [x29, #-36]                 // 4-byte Folded Spill
	b.ge	.LBB26_40
.LBB26_5:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB26_9 Depth 2
                                        //     Child Loop BB26_26 Depth 2
	cmp	w26, #8
	b.lo	.LBB26_4
// %bb.6:                               //   in Loop: Header=BB26_5 Depth=1
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	x26, [sp, #8]                   // 8-byte Folded Reload
	mov	w24, wzr
	str	w10, [sp, #40]                  // 4-byte Folded Spill
	add	x20, x8, w10, sxtw
	mov	x25, x20
	b	.LBB26_9
.LBB26_7:                               //   in Loop: Header=BB26_9 Depth=2
	ldr	x8, [x19, #1232]
	sub	x3, x29, #8
	mov	x0, x23
	ldr	w4, [x8, #32]
	ldur	x8, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w16, [x8, #-4]
	movk	w17, #53975
	movk	w17, #59954, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp32
	brk	#0x8228
.Ltmp32:
	blr	x8
	str	w0, [x25]
.LBB26_8:                               //   in Loop: Header=BB26_9 Depth=2
	subs	x26, x26, #1
	add	w24, w24, #8
	add	x25, x25, #4
	b.eq	.LBB26_22
.LBB26_9:                               //   Parent Loop BB26_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	tbz	w21, #0, .LBB26_16
// %bb.10:                              //   in Loop: Header=BB26_9 Depth=2
	ldr	x8, [x19, #656]
	cbz	x8, .LBB26_17
// %bb.11:                              //   in Loop: Header=BB26_9 Depth=2
	ldr	w9, [x19, #1140]
	ldur	w10, [x29, #-36]                // 4-byte Folded Reload
	asr	w9, w9, #1
	mul	w9, w9, w10
	ldr	w10, [x19, #1656]
	cmp	w10, #10
	add	x8, x8, w9, sxtw #1
	asr	w9, w24, #1
	ldrh	w8, [x8, w9, sxtw #1]
	b.ne	.LBB26_13
// %bb.12:                              //   in Loop: Header=BB26_9 Depth=2
	ldr	w9, [x19, #1652]
	sdiv	w8, w8, w9
.LBB26_13:                              //   in Loop: Header=BB26_9 Depth=2
	ldr	w9, [x19, #1664]
	subs	w10, w9, w8
	ldrh	w9, [x19, #1112]
	mov	w8, wzr
	b.mi	.LBB26_18
// %bb.14:                              //   in Loop: Header=BB26_9 Depth=2
	cmp	w10, w9
	b.hs	.LBB26_18
// %bb.15:                              //   in Loop: Header=BB26_9 Depth=2
	ldr	x8, [x19, #1176]
	lsl	w11, w10, #10
	add	x23, x8, x11
	mov	w8, #1                          // =0x1
	b	.LBB26_18
.LBB26_16:                              //   in Loop: Header=BB26_9 Depth=2
	mov	w8, #1                          // =0x1
	b	.LBB26_19
.LBB26_17:                              //   in Loop: Header=BB26_9 Depth=2
	ldrh	w9, [x19, #1112]
	mov	w10, #-1                        // =0xffffffff
.LBB26_18:                              //   in Loop: Header=BB26_9 Depth=2
	cmp	w10, w9
	csel	w28, wzr, w28, lt
.LBB26_19:                              //   in Loop: Header=BB26_9 Depth=2
	ldr	w9, [x19, #1256]
	ldr	x2, [x22], #8
	ldr	x1, [x27], #8
	orr	w9, w9, #0x4
	cmp	w9, #5
	b.ne	.LBB26_21
// %bb.20:                              //   in Loop: Header=BB26_9 Depth=2
	cmp	x2, x1
	csel	w8, wzr, w8, eq
	tbnz	w8, #0, .LBB26_7
	b	.LBB26_8
.LBB26_21:                              //   in Loop: Header=BB26_9 Depth=2
	cbnz	w8, .LBB26_7
	b	.LBB26_8
.LBB26_22:                              //   in Loop: Header=BB26_5 Depth=1
	ldr	x26, [sp, #16]                  // 8-byte Folded Reload
	cmp	w26, #8
	b.lo	.LBB26_3
// %bb.23:                              //   in Loop: Header=BB26_5 Depth=1
	ldur	w8, [x29, #-36]                 // 4-byte Folded Reload
	mov	x24, xzr
	add	w25, w8, #1
	b	.LBB26_26
.LBB26_24:                              //   in Loop: Header=BB26_26 Depth=2
	ldr	x8, [x19, #1232]
	sub	x3, x29, #16
	mov	x0, x23
	ldr	w4, [x8, #32]
	ldur	x8, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w16, [x8, #-4]
	movk	w17, #53975
	movk	w17, #59954, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp33
	brk	#0x8228
.Ltmp33:
	blr	x8
	ldr	w8, [x20]
	orr	w8, w8, w0
	str	w8, [x20]
.LBB26_25:                              //   in Loop: Header=BB26_26 Depth=2
	ldur	x8, [x29, #-32]                 // 8-byte Folded Reload
	add	x24, x24, #8
	add	x20, x20, #4
	cmp	x8, x24
	b.eq	.LBB26_2
.LBB26_26:                              //   Parent Loop BB26_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	tbz	w21, #0, .LBB26_33
// %bb.27:                              //   in Loop: Header=BB26_26 Depth=2
	ldr	x8, [x19, #656]
	cbz	x8, .LBB26_34
// %bb.28:                              //   in Loop: Header=BB26_26 Depth=2
	ldr	w9, [x19, #1140]
	ldr	w10, [x19, #1656]
	asr	w9, w9, #1
	cmp	w10, #10
	mul	w9, w9, w25
	add	x8, x8, w9, sxtw #1
	asr	w9, w24, #1
	ldrh	w8, [x8, w9, sxtw #1]
	b.ne	.LBB26_30
// %bb.29:                              //   in Loop: Header=BB26_26 Depth=2
	ldr	w9, [x19, #1652]
	sdiv	w8, w8, w9
.LBB26_30:                              //   in Loop: Header=BB26_26 Depth=2
	ldr	w9, [x19, #1664]
	subs	w10, w9, w8
	ldrh	w9, [x19, #1112]
	mov	w8, wzr
	b.mi	.LBB26_35
// %bb.31:                              //   in Loop: Header=BB26_26 Depth=2
	cmp	w10, w9
	b.hs	.LBB26_35
// %bb.32:                              //   in Loop: Header=BB26_26 Depth=2
	ldr	x8, [x19, #1176]
	lsl	w11, w10, #10
	add	x23, x8, x11
	mov	w8, #1                          // =0x1
	b	.LBB26_35
.LBB26_33:                              //   in Loop: Header=BB26_26 Depth=2
	mov	w8, #1                          // =0x1
	b	.LBB26_36
.LBB26_34:                              //   in Loop: Header=BB26_26 Depth=2
	ldrh	w9, [x19, #1112]
	mov	w10, #-1                        // =0xffffffff
.LBB26_35:                              //   in Loop: Header=BB26_26 Depth=2
	cmp	w10, w9
	csel	w28, wzr, w28, lt
.LBB26_36:                              //   in Loop: Header=BB26_26 Depth=2
	ldr	w9, [x19, #1256]
	ldr	x2, [x22, x24]
	ldr	x1, [x27, x24]
	orr	w9, w9, #0x4
	cmp	w9, #5
	b.ne	.LBB26_38
// %bb.37:                              //   in Loop: Header=BB26_26 Depth=2
	cmp	x2, x1
	csel	w8, wzr, w8, eq
	tbnz	w8, #0, .LBB26_24
	b	.LBB26_25
.LBB26_38:                              //   in Loop: Header=BB26_26 Depth=2
	cbnz	w8, .LBB26_24
	b	.LBB26_25
.LBB26_39:
	mov	w28, #1                         // =0x1
.LBB26_40:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	cmp	w8, #2
	b.ne	.LBB26_42
// %bb.41:
	str	w28, [x19, #1680]
	b	.LBB26_45
.LBB26_42:
	cmp	w8, #3
	b.eq	.LBB26_44
// %bb.43:
	str	w28, [x19, #1680]
.LBB26_44:
	str	w28, [x19, #1676]
.LBB26_45:
	ldp	x20, x19, [sp, #160]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #144]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #96]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #176
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end26:
	.size	get_rearrange_panel_data, .Lfunc_end26-get_rearrange_panel_data
                                        // -- End function
	.p2align	2                               // -- Begin function get_normal_panel_data
	.type	get_normal_panel_data,@function
get_normal_panel_data:                  // @get_normal_panel_data
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #176
	mov	x11, #512                       // =0x200
	adrp	x8, global_ebc
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	movk	x11, #1540, lsl #16
	ldr	x14, [x8, :lo12:global_ebc]
	add	x29, sp, #80
	movk	x11, #2568, lsl #32
	stp	x20, x19, [sp, #160]            // 16-byte Folded Spill
	ldrh	w8, [x3, #1112]
	movk	x11, #3596, lsl #48
	ldr	x12, [x14, #120]
	ldr	w13, [x14, #260]
	stur	x11, [x29, #-8]
	ldr	w11, [x3, #1256]
	ldr	w9, [x3, #1128]
	stur	w13, [x29, #-36]                // 4-byte Folded Spill
	ldr	x10, [x3, #1176]
	mov	x19, x3
	ldp	w20, w13, [x12, #116]
	sub	w11, w11, #1
	adrp	x12, ebc_get_8pix_wf_full
	add	x12, x12, :lo12:ebc_get_8pix_wf_full
	tst	w11, #0xfffffffb
	adrp	x11, ebc_get_8pix_wf_part
	add	x11, x11, :lo12:ebc_get_8pix_wf_part
	csel	x11, x11, x12, eq
	str	w13, [sp, #4]                   // 4-byte Folded Spill
	mov	x13, #3086                      // =0xc0e
	ldp	w15, w12, [x14, #188]
	movk	x13, #2058, lsl #16
	stur	x11, [x29, #-32]                // 8-byte Folded Spill
	cmp	w4, #2
	movk	x13, #1030, lsl #32
	stp	x24, x23, [sp, #128]            // 16-byte Folded Spill
	mov	x23, x1
	lsr	w11, w15, #3
	stp	x22, x21, [sp, #144]            // 16-byte Folded Spill
	mov	w21, w5
	mov	x22, x2
	movk	x13, #2, lsl #48
	stp	x28, x27, [sp, #96]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #112]            // 16-byte Folded Spill
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	str	w15, [sp, #28]                  // 4-byte Folded Spill
	str	w11, [sp, #20]                  // 4-byte Folded Spill
	stur	x13, [x29, #-16]
	str	w4, [sp]                        // 4-byte Folded Spill
	b.ne	.LBB27_2
// %bb.1:
	add	w11, w12, w12, lsr #31
	mov	w24, wzr
	asr	w12, w11, #1
	cmp	w24, w12
	b.ge	.LBB27_4
	b	.LBB27_12
.LBB27_2:
	cmp	w4, #3
	b.ne	.LBB27_11
// %bb.3:
	add	w11, w12, w12, lsr #31
	asr	w24, w11, #1
	ldr	w11, [sp, #20]                  // 4-byte Folded Reload
	mul	w11, w24, w11
	sbfiz	x11, x11, #3, #32
	add	x23, x23, x11
	add	x22, x22, x11
	cmp	w24, w12
	b.lt	.LBB27_12
.LBB27_4:
	mov	w27, #1                         // =0x1
.LBB27_5:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	cmp	w8, #2
	b.ne	.LBB27_7
// %bb.6:
	str	w27, [x19, #1680]
	b	.LBB27_10
.LBB27_7:
	cmp	w8, #3
	b.eq	.LBB27_9
// %bb.8:
	str	w27, [x19, #1680]
.LBB27_9:
	str	w27, [x19, #1676]
.LBB27_10:
	ldp	x20, x19, [sp, #160]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #144]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #96]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #176
	ldr	x30, [x18, #-8]!
	ret
.LBB27_11:
	mov	w24, wzr
	cmp	w24, w12
	b.ge	.LBB27_4
.LBB27_12:
	sub	w8, w8, w9
	mov	w27, #1                         // =0x1
	str	x14, [sp, #32]                  // 8-byte Folded Spill
	lsl	w8, w8, #10
	str	w12, [sp, #24]                  // 4-byte Folded Spill
	add	x8, x10, w8, sxtw
	stur	x8, [x29, #-24]                 // 8-byte Folded Spill
	b	.LBB27_14
.LBB27_13:                              //   in Loop: Header=BB27_14 Depth=1
	ldr	w12, [sp, #24]                  // 4-byte Folded Reload
	add	w24, w24, #1
	ldr	x14, [sp, #32]                  // 8-byte Folded Reload
	cmp	w24, w12
	b.eq	.LBB27_5
.LBB27_14:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB27_20 Depth 2
	ldr	w9, [x14, #268]
	mov	w8, w24
	cbz	w9, .LBB27_16
// %bb.15:                              //   in Loop: Header=BB27_14 Depth=1
	ldr	w8, [x14, #192]
	mvn	w9, w24
	add	w8, w8, w9
.LBB27_16:                              //   in Loop: Header=BB27_14 Depth=1
	ldr	w9, [sp, #28]                   // 4-byte Folded Reload
	cmp	w9, #8
	b.lo	.LBB27_13
// %bb.17:                              //   in Loop: Header=BB27_14 Depth=1
	ldr	x9, [x14, #120]
	ldr	w10, [sp, #4]                   // 4-byte Folded Reload
	mov	w28, wzr
	ldr	w25, [sp, #20]                  // 4-byte Folded Reload
	ldr	w9, [x9, #104]
	mul	w8, w8, w10
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	mul	w9, w9, w20
	add	x8, x10, x8
	add	x26, x8, x9
	b	.LBB27_20
.LBB27_18:                              //   in Loop: Header=BB27_20 Depth=2
	mov	w8, #2                          // =0x2
	strh	wzr, [x26]
.LBB27_19:                              //   in Loop: Header=BB27_20 Depth=2
	subs	w25, w25, #1
	add	x26, x26, x8
	add	w28, w28, #8
	b.eq	.LBB27_13
.LBB27_20:                              //   Parent Loop BB27_14 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	tbz	w21, #0, .LBB27_27
// %bb.21:                              //   in Loop: Header=BB27_20 Depth=2
	ldr	x8, [x19, #656]
	cbz	x8, .LBB27_28
// %bb.22:                              //   in Loop: Header=BB27_20 Depth=2
	ldr	w9, [x19, #1140]
	ldr	w10, [x19, #1656]
	asr	w9, w9, #1
	cmp	w10, #10
	mul	w9, w9, w24
	add	x8, x8, w9, sxtw #1
	asr	w9, w28, #1
	ldrh	w8, [x8, w9, sxtw #1]
	b.ne	.LBB27_24
// %bb.23:                              //   in Loop: Header=BB27_20 Depth=2
	ldr	w9, [x19, #1652]
	sdiv	w8, w8, w9
.LBB27_24:                              //   in Loop: Header=BB27_20 Depth=2
	ldr	w9, [x19, #1664]
	subs	w10, w9, w8
	ldrh	w9, [x19, #1112]
	mov	w8, wzr
	b.mi	.LBB27_29
// %bb.25:                              //   in Loop: Header=BB27_20 Depth=2
	cmp	w10, w9
	b.hs	.LBB27_29
// %bb.26:                              //   in Loop: Header=BB27_20 Depth=2
	ldr	x8, [x19, #1176]
	lsl	w11, w10, #10
	add	x8, x8, x11
	stur	x8, [x29, #-24]                 // 8-byte Folded Spill
	mov	w8, #1                          // =0x1
	b	.LBB27_29
.LBB27_27:                              //   in Loop: Header=BB27_20 Depth=2
	mov	w8, #1                          // =0x1
	b	.LBB27_30
.LBB27_28:                              //   in Loop: Header=BB27_20 Depth=2
	ldrh	w9, [x19, #1112]
	mov	w10, #-1                        // =0xffffffff
.LBB27_29:                              //   in Loop: Header=BB27_20 Depth=2
	cmp	w10, w9
	csel	w27, wzr, w27, lt
.LBB27_30:                              //   in Loop: Header=BB27_20 Depth=2
	ldr	w9, [x19, #1256]
	ldr	x2, [x23], #8
	ldr	x1, [x22], #8
	orr	w9, w9, #0x4
	cmp	w9, #5
	b.ne	.LBB27_35
// %bb.31:                              //   in Loop: Header=BB27_20 Depth=2
	cmp	x2, x1
	csel	w8, wzr, w8, eq
	tbz	w8, #0, .LBB27_36
.LBB27_32:                              //   in Loop: Header=BB27_20 Depth=2
	ldr	x8, [x19, #1232]
	cmp	w20, #4
	ldr	w4, [x8, #32]
	b.eq	.LBB27_39
// %bb.33:                              //   in Loop: Header=BB27_20 Depth=2
	cmp	w20, #2
	b.ne	.LBB27_44
// %bb.34:                              //   in Loop: Header=BB27_20 Depth=2
	ldp	x8, x0, [x29, #-32]             // 16-byte Folded Reload
	sub	x3, x29, #16
	ldur	w16, [x8, #-4]
	movk	w17, #53975
	movk	w17, #59954, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp34
	brk	#0x8228
.Ltmp34:
	blr	x8
	lsr	w9, w0, #8
	mov	w8, #4                          // =0x4
	strb	w0, [x26, #2]
	strb	w9, [x26]
	b	.LBB27_19
.LBB27_35:                              //   in Loop: Header=BB27_20 Depth=2
	cbnz	w8, .LBB27_32
.LBB27_36:                              //   in Loop: Header=BB27_20 Depth=2
	cmp	w20, #4
	b.eq	.LBB27_41
// %bb.37:                              //   in Loop: Header=BB27_20 Depth=2
	cmp	w20, #2
	b.ne	.LBB27_18
// %bb.38:                              //   in Loop: Header=BB27_20 Depth=2
	ldrb	w8, [x26, #1]
	ldrb	w9, [x26, #3]
	lsl	w8, w8, #8
	lsl	w9, w9, #8
	strh	w8, [x26]
	mov	w8, #4                          // =0x4
	strh	w9, [x26, #2]
	b	.LBB27_19
.LBB27_39:                              //   in Loop: Header=BB27_20 Depth=2
	ldp	x8, x0, [x29, #-32]             // 16-byte Folded Reload
	sub	x3, x29, #16
	ldur	w16, [x8, #-4]
	movk	w17, #53975
	movk	w17, #59954, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp35
	brk	#0x8228
.Ltmp35:
	blr	x8
	ldur	w8, [x29, #-36]                 // 4-byte Folded Reload
	cbz	w8, .LBB27_45
// %bb.40:                              //   in Loop: Header=BB27_20 Depth=2
	ldr	x11, [sp, #32]                  // 8-byte Folded Reload
	mov	w12, #255                       // =0xff
	ldr	w9, [x26]
	and	w10, w0, #0xff00
	ldr	x8, [x11, #120]
	ldr	w8, [x8, #100]
	lsl	w8, w12, w8
	bic	w8, w9, w8
	str	w8, [x26]
	ldr	x9, [x11, #120]
	ldr	w9, [x9, #100]
	sub	w9, w9, #8
	lsl	w9, w10, w9
	and	w10, w0, #0xff
	orr	w8, w9, w8
	str	w8, [x26]
	ldr	x9, [x11, #120]
	ldr	w9, [x9, #96]
	lsl	w9, w12, w9
	bic	w8, w8, w9
	str	w8, [x26]
	ldr	x9, [x11, #120]
	ldr	w9, [x9, #96]
	lsl	w9, w10, w9
	orr	w8, w9, w8
	b	.LBB27_43
.LBB27_41:                              //   in Loop: Header=BB27_20 Depth=2
	ldur	w8, [x29, #-36]                 // 4-byte Folded Reload
	cbz	w8, .LBB27_46
// %bb.42:                              //   in Loop: Header=BB27_20 Depth=2
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	mov	w10, #255                       // =0xff
	ldr	x8, [x8, #120]
	ldp	w8, w9, [x8, #96]
	lsl	w9, w10, w9
	lsl	w8, w10, w8
	ldr	w10, [x26]
	orr	w8, w8, w9
	bic	w8, w10, w8
.LBB27_43:                              //   in Loop: Header=BB27_20 Depth=2
	str	w8, [x26]
	mov	w8, #4                          // =0x4
	b	.LBB27_19
.LBB27_44:                              //   in Loop: Header=BB27_20 Depth=2
	ldp	x8, x0, [x29, #-32]             // 16-byte Folded Reload
	sub	x3, x29, #8
	ldur	w16, [x8, #-4]
	movk	w17, #53975
	movk	w17, #59954, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp36
	brk	#0x8228
.Ltmp36:
	blr	x8
	mov	w8, #2                          // =0x2
	strh	w0, [x26]
	b	.LBB27_19
.LBB27_45:                              //   in Loop: Header=BB27_20 Depth=2
	lsr	w8, w0, #8
	strb	w0, [x26, #4]
	strb	w8, [x26]
	mov	w8, #8                          // =0x8
	b	.LBB27_19
.LBB27_46:                              //   in Loop: Header=BB27_20 Depth=2
	ldp	w8, w9, [x26]
	and	w8, w8, #0xffffff00
	and	w9, w9, #0xffffff00
	stp	w8, w9, [x26]
	mov	w8, #8                          // =0x8
	b	.LBB27_19
.Lfunc_end27:
	.size	get_normal_panel_data, .Lfunc_end27-get_normal_panel_data
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_get_8pix_wf_part
	.type	ebc_get_8pix_wf_part,@function
	.word	3929199319                      // 0xea32d2d7
ebc_get_8pix_wf_part:                   // @ebc_get_8pix_wf_part
// %bb.0:
	sub	w8, w4, #2
	and	x9, x1, #0xf8f8f8f8f8f8f8f8
	cmp	w8, #10
	csel	x9, x9, x1, lo
	cmp	x9, x2
	b.ne	.LBB28_2
// %bb.1:
	mov	w0, wzr
	ret
.LBB28_2:
	eor	x10, x9, x2
	tst	x10, #0xff
	b.eq	.LBB28_16
// %bb.3:
	ldrb	w8, [x3]
	mov	w11, #3                         // =0x3
	lsl	w8, w11, w8
	tst	x10, #0xff00
	b.eq	.LBB28_5
.LBB28_4:
	ldrb	w11, [x3, #1]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB28_5:
	tst	x10, #0xff0000
	b.eq	.LBB28_7
// %bb.6:
	ldrb	w11, [x3, #2]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB28_7:
	tst	x10, #0xff000000
	b.eq	.LBB28_9
// %bb.8:
	ldrb	w11, [x3, #3]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB28_9:
	tst	x10, #0xff00000000
	b.eq	.LBB28_11
// %bb.10:
	ldrb	w11, [x3, #4]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB28_11:
	tst	x10, #0xff0000000000
	b.eq	.LBB28_13
// %bb.12:
	ldrb	w11, [x3, #5]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB28_13:
	tst	x10, #0xff000000000000
	b.eq	.LBB28_15
// %bb.14:
	ldrb	w11, [x3, #6]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB28_15:
	lsl	x11, x9, #2
	lsr	x12, x9, #6
	lsr	x15, x9, #14
	lsr	x10, x10, #56
	ldrb	w13, [x3]
	ldrb	w14, [x3, #1]
	and	x11, x11, #0x3e0
	and	x12, x12, #0x3e0
	and	x15, x15, #0x3e0
	bfxil	x11, x2, #3, #5
	bfxil	x12, x2, #11, #5
	bfxil	x15, x2, #19, #5
	lsr	x16, x9, #22
	ldrb	w17, [x3, #2]
	cmp	x10, #0
	ldrb	w11, [x0, x11]
	ldrb	w12, [x0, x12]
	ldrb	w15, [x0, x15]
	and	x10, x16, #0x3e0
	ldrb	w16, [x3, #3]
	ldrb	w1, [x3, #6]
	lsl	w11, w11, w13
	lsr	x13, x9, #30
	lsl	w12, w12, w14
	lsr	x14, x9, #38
	bfxil	x10, x2, #27, #5
	lsl	w15, w15, w17
	lsr	x17, x9, #46
	and	x13, x13, #0x3e0
	orr	w11, w12, w11
	and	x12, x14, #0x3e0
	ldrb	w10, [x0, x10]
	bfxil	x13, x2, #35, #5
	bfxil	x12, x2, #43, #5
	and	x14, x17, #0x3e0
	lsr	x9, x9, #54
	bfxil	x14, x2, #51, #5
	lsl	w10, w10, w16
	ldrb	w13, [x0, x13]
	ldrb	w16, [x3, #4]
	ldrb	w12, [x0, x12]
	ldrb	w17, [x3, #5]
	and	x9, x9, #0x3e0
	ldrb	w14, [x0, x14]
	orr	w10, w15, w10
	bfxil	x9, x2, #59, #5
	lsl	w13, w13, w16
	lsl	w12, w12, w17
	ldrb	w16, [x3, #7]
	lsl	w14, w14, w1
	mov	w17, #3                         // =0x3
	ldrb	w9, [x0, x9]
	orr	w12, w13, w12
	orr	w10, w11, w10
	lsl	w17, w17, w16
	orr	w11, w12, w14
	lsl	w9, w9, w16
	orr	w10, w10, w11
	csel	w12, wzr, w17, eq
	orr	w8, w8, w12
	orr	w9, w10, w9
	and	w0, w9, w8
	ret
.LBB28_16:
	mov	w8, wzr
	tst	x10, #0xff00
	b.ne	.LBB28_4
	b	.LBB28_5
.Lfunc_end28:
	.size	ebc_get_8pix_wf_part, .Lfunc_end28-ebc_get_8pix_wf_part
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_get_8pix_wf_full
	.type	ebc_get_8pix_wf_full,@function
	.word	3929199319                      // 0xea32d2d7
ebc_get_8pix_wf_full:                   // @ebc_get_8pix_wf_full
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #160
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	lsr	x7, x1, #8
	lsr	x5, x1, #16
	stp	x28, x27, [sp, #80]             // 16-byte Folded Spill
	lsr	x17, x1, #24
	lsr	x8, x1, #32
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	lsr	x29, x1, #40
	lsr	x27, x1, #48
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	lsr	x6, x2, #8
	lsr	x4, x2, #16
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	lsr	x19, x1, #56
	lsr	x15, x2, #24
	lsr	x25, x2, #32
	lsr	x22, x2, #40
	lsr	x20, x2, #48
	lsr	x21, x2, #56
	tst	x2, #0x404040404040404
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	b.eq	.LBB29_3
// %bb.1:
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	and	x21, x1, #0xff000000000000
	mov	x22, #67553994410557440         // =0xf0000000000000
	mov	x16, x15
	mov	x15, x25
	mov	w25, #244                       // =0xf4
	mov	w26, #224                       // =0xe0
	cmp	x21, x22
	str	x20, [sp, #32]                  // 8-byte Folded Spill
	and	x20, x2, #0xff000000000000
	csel	x10, x26, x25, eq
	cmp	x21, x22
	mov	x9, #68679894317400064          // =0xf4000000000000
	and	x23, x1, #0xff0000000000
	mov	x24, #263882790666240           // =0xf00000000000
	ccmp	x20, x9, #0, eq
	and	x22, x2, #0xff0000000000
	mov	x28, #1030792151040             // =0xf000000000
	csel	x27, x26, x27, eq
	cmp	x23, x24
	mov	x24, #268280837177344           // =0xf40000000000
	str	x27, [sp, #40]                  // 8-byte Folded Spill
	csel	x23, x26, x25, eq
	ccmp	x22, x24, #0, eq
	and	x27, x1, #0xff00000000
	csel	x29, x26, x29, eq
	and	x30, x1, #0xff000000
	cmp	x27, x28
	and	x27, x2, #0xff00000000
	mov	x28, #1047972020224             // =0xf400000000
	stp	x10, x29, [sp]                  // 16-byte Folded Spill
	csel	x29, x26, x25, eq
	ccmp	x27, x28, #0, eq
	mov	w21, #-268435456                // =0xf0000000
	csel	x8, x26, x8, eq
	and	x11, x1, #0xff0000
	cmp	x30, x21
	and	x21, x2, #0xff000000
	mov	w30, #-201326592                // =0xf4000000
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	csel	x8, x26, x25, eq
	ccmp	x21, x30, #0, eq
	csel	x17, x26, x17, eq
	cmp	x11, #3840, lsl #12             // =15728640
	and	x11, x2, #0xff0000
	mov	w9, #15990784                   // =0xf40000
	csel	x10, x26, x25, eq
	mov	w12, #62464                     // =0xf400
	ccmp	x11, x9, #0, eq
	and	x9, x1, #0xff00
	str	x19, [sp, #48]                  // 8-byte Folded Spill
	csel	x5, x26, x5, eq
	cmp	x9, #15, lsl #12                // =61440
	and	x9, x2, #0xff00
	csel	x13, x26, x25, eq
	and	x19, x1, #0xff
	ccmp	x9, x12, #0, eq
	csel	x7, x26, x7, eq
	cmp	x19, #240
	and	x19, x2, #0xff
	csel	x14, x26, x25, eq
	ccmp	x19, x25, #0, eq
	mov	x25, x15
	csel	x1, x26, x1, eq
	cmp	x19, #244
	csel	x2, x14, x2, eq
	cmp	x9, x12
	csel	x6, x13, x6, eq
	cmp	x11, #3904, lsl #12             // =15990784
	csel	x4, x10, x4, eq
	cmp	x21, x30
	csel	x15, x8, x16, eq
	cmp	x27, x28
	mov	x8, #68679894317400064          // =0xf4000000000000
	csel	x25, x29, x25, eq
	cmp	x22, x24
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	csel	x22, x23, x22, eq
	cmp	x20, x8
	ldr	x20, [sp, #32]                  // 8-byte Folded Reload
	ldr	x8, [sp]                        // 8-byte Folded Reload
	csel	x20, x8, x20, eq
	cmp	x21, #244
	b.ne	.LBB29_4
// %bb.2:
	ldr	x19, [sp, #48]                  // 8-byte Folded Reload
	mov	w8, #224                        // =0xe0
	mov	w9, #244                        // =0xf4
	cmp	x19, #240
	csel	x19, x8, x19, eq
	csel	x21, x8, x9, eq
	b	.LBB29_5
.LBB29_3:
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	b	.LBB29_6
.LBB29_4:
	ldr	x19, [sp, #48]                  // 8-byte Folded Reload
.LBB29_5:
	ldr	x27, [sp, #40]                  // 8-byte Folded Reload
	ldr	x29, [sp, #8]                   // 8-byte Folded Reload
.LBB29_6:
	lsl	x8, x1, #2
	lsl	x9, x7, #2
	lsl	x14, x17, #2
	ldr	x16, [sp, #56]                  // 8-byte Folded Reload
	lsl	x10, x5, #2
	ldrb	w11, [x3]
	and	x8, x8, #0x3e0
	and	x9, x9, #0x3e0
	and	x14, x14, #0x3e0
	bfxil	x8, x2, #3, #5
	bfxil	x9, x6, #3, #5
	lsl	x16, x16, #2
	and	x10, x10, #0x3e0
	ldrb	w12, [x3, #1]
	lsl	x17, x29, #2
	ldrb	w8, [x0, x8]
	ldrb	w9, [x0, x9]
	bfxil	x14, x15, #3, #5
	bfxil	x10, x4, #3, #5
	and	x16, x16, #0x3e0
	ldrb	w13, [x3, #2]
	lsl	w8, w8, w11
	lsl	x11, x27, #2
	lsl	w9, w9, w12
	bfxil	x16, x25, #3, #5
	ldrb	w12, [x0, x14]
	and	x14, x17, #0x3e0
	ldrb	w10, [x0, x10]
	bfxil	x14, x22, #3, #5
	and	x11, x11, #0x3e0
	ldrb	w15, [x0, x16]
	bfxil	x11, x20, #3, #5
	lsr	x16, x19, #3
	lsr	x17, x21, #3
	lsl	w10, w10, w13
	ldrb	w13, [x3, #3]
	ldrb	w1, [x3, #4]
	ldrb	w14, [x0, x14]
	ldrb	w2, [x3, #5]
	ldrb	w11, [x0, x11]
	ldrb	w4, [x3, #6]
	bfi	x17, x16, #5, #5
	lsl	w12, w12, w13
	lsl	w13, w15, w1
	lsl	w14, w14, w2
	lsl	w11, w11, w4
	ldrb	w15, [x0, x17]
	ldrb	w16, [x3, #7]
	orr	w8, w9, w8
	orr	w9, w10, w12
	orr	w10, w13, w14
	orr	w8, w8, w9
	orr	w9, w10, w11
	lsl	w10, w15, w16
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	orr	w8, w8, w9
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	orr	w0, w8, w10
	ldp	x24, x23, [sp, #112]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #160
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end29:
	.size	ebc_get_8pix_wf_full, .Lfunc_end29-ebc_get_8pix_wf_full
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_lut_update
	.type	ebc_lut_update,@function
ebc_lut_update:                         // @ebc_lut_update
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	mov	w21, w1
	mov	w8, #25                         // =0x19
	mov	w1, #1                          // =0x1
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	w20, w2
	mov	x19, x0
	str	w8, [x29, #28]
	bl	ebc_power_set
	ldr	w22, [x19, #2004]
	tbnz	w22, #31, .LBB30_6
// %bb.1:
	ldr	w8, [x19, #1948]
	str	w22, [x29, #28]
	cmp	w8, #1
	b.ge	.LBB30_33
// %bb.2:
	mov	w2, w22
.LBB30_3:
	cmp	w2, #51
	b.lo	.LBB30_16
// %bb.4:
	ldr	w8, [x19, #1948]
	tbz	w8, #31, .LBB30_40
.LBB30_5:
	mov	w8, #50                         // =0x32
	str	w8, [x29, #28]
	b	.LBB30_16
.LBB30_6:
	ldr	x0, [x19, #16]
	cbz	x0, .LBB30_8
// %bb.7:
	ldr	x8, [x0, #56]
	add	x1, x29, #28
	ldur	w16, [x8, #-4]
	movk	w17, #46199
	movk	w17, #3090, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp37
	brk	#0x8228
.Ltmp37:
	blr	x8
	mov	w23, w0
	b	.LBB30_9
.LBB30_8:
	ldr	x0, [x19, #104]
	add	x1, x29, #28
	bl	thermal_zone_get_temp
	ldrsw	x8, [x29, #28]
	mov	w9, #19923                      // =0x4dd3
	mov	w23, w0
	movk	w9, #4194, lsl #16
	smull	x8, w8, w9
	lsr	x9, x8, #63
	asr	x8, x8, #38
	add	w8, w8, w9
	str	w8, [x29, #28]
.LBB30_9:
	ldr	w1, [x29, #28]
	cmp	w21, #1
	b.ne	.LBB30_14
// %bb.10:
	mov	w0, w1
	bl	ebc_overlay_temp_fix
	mov	w22, w0
	cbnz	w23, .LBB30_15
.LBB30_11:
	ldr	w2, [x29, #28]
	tbz	w2, #31, .LBB30_3
.LBB30_12:
	ldr	w8, [x19, #1948]
	tbz	w8, #31, .LBB30_42
.LBB30_13:
	str	wzr, [x29, #28]
	b	.LBB30_16
.LBB30_14:
	mov	w0, w21
	bl	ebc_normal_temp_fix
	mov	w22, w0
	cbz	w23, .LBB30_11
.LBB30_15:
	ldr	w8, [x19, #1948]
	mov	w9, #25                         // =0x19
	str	w9, [x29, #28]
	tbz	w8, #31, .LBB30_41
.LBB30_16:
	ldr	w8, [x19, #1948]
	cmp	w22, #50
	b.hi	.LBB30_19
// %bb.17:
	cmp	w8, #1
	b.ge	.LBB30_34
.LBB30_18:
	str	w22, [x29, #28]
	cmp	w21, #23
	b.ls	.LBB30_21
	b	.LBB30_36
.LBB30_19:
	cmp	w8, #1
	b.ge	.LBB30_35
// %bb.20:
	cmp	w21, #23
	b.hi	.LBB30_36
.LBB30_21:
	mov	w8, w21
	adrp	x9, .LJTI30_0
	add	x9, x9, :lo12:.LJTI30_0
	adr	x10, .LBB30_22
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	mov	w1, wzr
	br	x10
.LBB30_22:
	mov	w1, #1                          // =0x1
	b	.LBB30_37
.LBB30_23:
	mov	w1, #7                          // =0x7
	b	.LBB30_37
.LBB30_24:
	mov	w1, #8                          // =0x8
	b	.LBB30_37
.LBB30_25:
	mov	w1, #2                          // =0x2
	b	.LBB30_37
.LBB30_26:
	mov	w1, #6                          // =0x6
	b	.LBB30_37
.LBB30_27:
	mov	w1, #5                          // =0x5
	b	.LBB30_37
.LBB30_28:
	ldr	w8, [x19, #1936]
	mov	w9, #4                          // =0x4
	cmp	w8, #0
	mov	w8, #13                         // =0xd
	csel	w1, w9, w8, eq
	b	.LBB30_37
.LBB30_29:
	ldr	w8, [x19, #1936]
	mov	w1, #14                         // =0xe
	cmp	w8, #0
	cset	w20, ne
	b	.LBB30_37
.LBB30_30:
	mov	w1, #4                          // =0x4
	b	.LBB30_37
.LBB30_31:
	mov	w1, #10                         // =0xa
	b	.LBB30_37
.LBB30_32:
	ldrb	w8, [x19, #2009]
	mov	w9, #15                         // =0xf
	cmp	w8, #0
	mov	w8, #3                          // =0x3
	csel	w1, w9, w8, ne
	b	.LBB30_37
.LBB30_33:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.135
	add	x1, x1, :lo12:.L.str.135
	mov	w2, w22
	bl	_dev_info
	ldr	w2, [x29, #28]
	tbz	w2, #31, .LBB30_3
	b	.LBB30_12
.LBB30_34:
	ldr	x0, [x19, #1456]
	ldr	w3, [x29, #28]
	adrp	x1, .L.str.139
	add	x1, x1, :lo12:.L.str.139
	mov	w2, w22
	bl	_dev_info
	b	.LBB30_18
.LBB30_35:
	ldr	x0, [x19, #1456]
	ldr	w2, [x29, #28]
	adrp	x1, .L.str.140
	add	x1, x1, :lo12:.L.str.140
	mov	w3, w22
	bl	_dev_info
	cmp	w21, #23
	b.ls	.LBB30_21
.LBB30_36:
	mov	w1, #3                          // =0x3
.LBB30_37:
	ldr	w8, [x19, #2288]
	ldrb	w9, [x19, #2008]
	mov	w11, #32                        // =0x20
	ldr	w2, [x29, #28]
	add	x0, x19, #1464
	cmp	w8, #0
	mov	w8, w20
	orr	x3, x11, x9, lsl #32
	cset	w10, eq
	orr	x4, x8, x10, lsl #32
	bl	epd_lut_get
	cbnz	w0, .LBB30_39
.LBB30_38:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB30_39:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.141
	add	x1, x1, :lo12:.L.str.141
	bl	_dev_err
	b	.LBB30_38
.LBB30_40:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.137
	add	x1, x1, :lo12:.L.str.137
	bl	_dev_info
	b	.LBB30_5
.LBB30_41:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.138
	add	x1, x1, :lo12:.L.str.138
	mov	w2, w23
	bl	_dev_info
	b	.LBB30_16
.LBB30_42:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.136
	add	x1, x1, :lo12:.L.str.136
	bl	_dev_info
	b	.LBB30_13
.Lfunc_end30:
	.size	ebc_lut_update, .Lfunc_end30-ebc_lut_update
	.section	.rodata,"a",@progbits
.LJTI30_0:
	.byte	(.LBB30_36-.LBB30_22)>>2
	.byte	(.LBB30_31-.LBB30_22)>>2
	.byte	(.LBB30_36-.LBB30_22)>>2
	.byte	(.LBB30_30-.LBB30_22)>>2
	.byte	(.LBB30_27-.LBB30_22)>>2
	.byte	(.LBB30_26-.LBB30_22)>>2
	.byte	(.LBB30_24-.LBB30_22)>>2
	.byte	(.LBB30_29-.LBB30_22)>>2
	.byte	(.LBB30_28-.LBB30_22)>>2
	.byte	(.LBB30_27-.LBB30_22)>>2
	.byte	(.LBB30_26-.LBB30_22)>>2
	.byte	(.LBB30_24-.LBB30_22)>>2
	.byte	(.LBB30_23-.LBB30_22)>>2
	.byte	(.LBB30_23-.LBB30_22)>>2
	.byte	(.LBB30_22-.LBB30_22)>>2
	.byte	(.LBB30_25-.LBB30_22)>>2
	.byte	(.LBB30_22-.LBB30_22)>>2
	.byte	(.LBB30_37-.LBB30_22)>>2
	.byte	(.LBB30_36-.LBB30_22)>>2
	.byte	(.LBB30_36-.LBB30_22)>>2
	.byte	(.LBB30_36-.LBB30_22)>>2
	.byte	(.LBB30_32-.LBB30_22)>>2
	.byte	(.LBB30_22-.LBB30_22)>>2
	.byte	(.LBB30_25-.LBB30_22)>>2
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_frame_start
	.type	ebc_frame_start,@function
ebc_frame_start:                        // @ebc_frame_start
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	ldr	w8, [x0, #1560]
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x19, x0
	mov	x29, sp
	cmp	w8, #3
	b.gt	.LBB31_5
// %bb.1:
	cmp	w8, #1
	b.eq	.LBB31_12
// %bb.2:
	cmp	w8, #3
	b.ne	.LBB31_9
// %bb.3:
	ldr	x0, [x19, #1496]
	ldr	x1, [x19, #1032]
	add	x4, x19, #304
	ldr	x2, [x19, #1104]
	ldr	x3, [x19, #1248]
	mov	w5, #1                          // =0x1
	bl	get_auto_data
	ldr	w8, [x19, #1420]
	cbz	w8, .LBB31_24
// %bb.4:
	ldr	x0, [x19, #1504]
	ldr	x1, [x19, #1032]
	add	x4, x19, #304
	ldr	x2, [x19, #1104]
	ldr	x3, [x19, #1248]
	mov	w5, #1                          // =0x1
	bl	get_auto_data
	b	.LBB31_40
.LBB31_5:
	cmp	w8, #5
	b.eq	.LBB31_16
// %bb.6:
	cmp	w8, #4
	b.ne	.LBB31_9
// %bb.7:
	ldr	x0, [x19, #1496]
	ldrsw	x2, [x19, #1392]
	mov	w1, wzr
	bl	memset
	ldr	x0, [x19, #1496]
	ldr	x1, [x19, #1032]
	add	x5, x19, #304
	ldr	x2, [x19, #1104]
	ldr	x3, [x19, #1248]
	ldr	x4, [x19, #1320]
	bl	get_roi_overlay_data
	ldr	w8, [x19, #1420]
	cbz	w8, .LBB31_26
// %bb.8:
	add	x0, x19, #112
	add	x1, x19, #304
	str	wzr, [x19, #184]
	bl	flip
	ldr	x0, [x19, #1504]
	ldrsw	x2, [x19, #1392]
	mov	w1, wzr
	bl	memset
	ldr	x0, [x19, #1504]
	ldr	x1, [x19, #1032]
	add	x5, x19, #304
	ldr	x2, [x19, #1104]
	ldr	x3, [x19, #1248]
	ldr	x4, [x19, #1320]
	bl	get_roi_overlay_data
	b	.LBB31_41
.LBB31_9:
	add	x0, x19, #304
	mov	w1, #1                          // =0x1
	bl	update_frame_left
	ldr	x8, [x19, #1536]
	ldr	x9, [x19, #1528]
	add	x3, x19, #304
	ldr	x0, [x19, #1496]
	mov	w4, #1                          // =0x1
	ldr	x1, [x8, #8]
	ldr	x2, [x9, #8]
	bl	get_full_data
	ldrb	w8, [x19, #1769]
	tbz	w8, #0, .LBB31_20
// %bb.10:
	ldrb	w8, [x19, #1952]
	tbz	w8, #0, .LBB31_21
// %bb.11:
	ldr	w8, [x19, #1968]
	add	w8, w8, #1
	str	w8, [x19, #1968]
	b	.LBB31_23
.LBB31_12:
	add	x0, x19, #304
	mov	w1, #1                          // =0x1
	bl	update_frame_left
	adrp	x20, global_ebc
	ldr	x9, [x19, #1536]
	ldr	x10, [x19, #1528]
	ldr	x8, [x20, :lo12:global_ebc]
	ldr	x0, [x19, #1496]
	add	x3, x19, #304
	ldr	x1, [x9, #8]
	ldr	x2, [x10, #8]
	mov	w4, #1                          // =0x1
	ldr	w8, [x8, #276]
	ldrb	w5, [x19, #1952]
	cbz	w8, .LBB31_28
// %bb.13:
	bl	get_rearrange_panel_data
	ldrb	w8, [x19, #1769]
	tbz	w8, #0, .LBB31_29
.LBB31_14:
	ldrb	w8, [x19, #1952]
	tbz	w8, #0, .LBB31_30
// %bb.15:
	ldr	w9, [x19, #1968]
	add	w9, w9, #1
	str	w9, [x19, #1968]
	b	.LBB31_32
.LBB31_16:
	add	x0, x19, #304
	mov	w1, #1                          // =0x1
	bl	update_frame_left
	adrp	x8, global_ebc
	ldr	x9, [x19, #1536]
	ldr	x10, [x19, #1528]
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x0, [x19, #1496]
	add	x3, x19, #304
	ldr	x1, [x9, #8]
	ldr	x2, [x10, #8]
	mov	w4, #1                          // =0x1
	ldr	w8, [x8, #276]
	mov	w5, wzr
	cbz	w8, .LBB31_34
// %bb.17:
	bl	get_rearrange_panel_data
	ldrb	w8, [x19, #1769]
	tbz	w8, #0, .LBB31_35
.LBB31_18:
	ldrb	w8, [x19, #1952]
	tbz	w8, #0, .LBB31_36
// %bb.19:
	ldr	w8, [x19, #1968]
	add	w8, w8, #1
	str	w8, [x19, #1968]
	b	.LBB31_38
.LBB31_20:
	strb	wzr, [x19, #1952]
.LBB31_21:
	ldr	w8, [x19, #1432]
	subs	w8, w8, #1
	b.lt	.LBB31_23
// %bb.22:
	str	w8, [x19, #1432]
.LBB31_23:
	ldr	x8, [x19, #1536]
	ldr	x9, [x19, #1528]
	add	x3, x19, #304
	ldr	x0, [x19, #1504]
	mov	w4, #1                          // =0x1
	ldr	x1, [x8, #8]
	ldr	x2, [x9, #8]
	bl	get_full_data
	b	.LBB31_40
.LBB31_24:
	ldr	w8, [x19, #1948]
	cmp	w8, #1
	b.lt	.LBB31_27
// %bb.25:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.143
	add	x1, x1, :lo12:.L.str.143
	b	.LBB31_43
.LBB31_26:
	ldr	w8, [x19, #1948]
	cmp	w8, #1
	b.ge	.LBB31_42
.LBB31_27:
	str	wzr, [x19, #1412]
	b	.LBB31_41
.LBB31_28:
	bl	get_normal_panel_data
	ldrb	w8, [x19, #1769]
	tbnz	w8, #0, .LBB31_14
.LBB31_29:
	mov	w8, wzr
	strb	wzr, [x19, #1952]
.LBB31_30:
	ldr	w9, [x19, #1432]
	subs	w9, w9, #1
	b.lt	.LBB31_32
// %bb.31:
	str	w9, [x19, #1432]
.LBB31_32:
	ldr	x9, [x20, :lo12:global_ebc]
	ldr	x10, [x19, #1536]
	add	x3, x19, #304
	ldr	x11, [x19, #1528]
	ldr	x0, [x19, #1504]
	and	w5, w8, #0x1
	ldr	w9, [x9, #276]
	ldr	x1, [x10, #8]
	mov	w4, #1                          // =0x1
	ldr	x2, [x11, #8]
	cbz	w9, .LBB31_39
// %bb.33:
	bl	get_rearrange_panel_data
	b	.LBB31_40
.LBB31_34:
	bl	get_normal_panel_data
	ldrb	w8, [x19, #1769]
	tbnz	w8, #0, .LBB31_18
.LBB31_35:
	strb	wzr, [x19, #1952]
.LBB31_36:
	ldr	w8, [x19, #1432]
	subs	w8, w8, #1
	b.lt	.LBB31_38
// %bb.37:
	str	w8, [x19, #1432]
.LBB31_38:
	ldr	x0, [x19, #1504]
	ldr	x1, [x19, #1496]
	ldrsw	x2, [x19, #1392]
	bl	memcpy
	b	.LBB31_40
.LBB31_39:
	bl	get_normal_panel_data
.LBB31_40:
	add	x0, x19, #112
	add	x1, x19, #304
	str	wzr, [x19, #184]
	bl	flip
.LBB31_41:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB31_42:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.142
	add	x1, x1, :lo12:.L.str.142
.LBB31_43:
	adrp	x2, .L__func__.ebc_frame_start
	add	x2, x2, :lo12:.L__func__.ebc_frame_start
	bl	_dev_info
	b	.LBB31_27
.Lfunc_end31:
	.size	ebc_frame_start, .Lfunc_end31-ebc_frame_start
                                        // -- End function
	.p2align	2                               // -- Begin function check_part_mode
	.type	check_part_mode,@function
check_part_mode:                        // @check_part_mode
// %bb.0:
	ldr	w9, [x2, #1084]
	add	w8, w9, #7
	cmp	w9, #0
	csel	w8, w8, w9, lt
	cmp	w9, #8
	b.lt	.LBB32_13
// %bb.1:
	asr	w8, w8, #3
	ldr	x9, [x1, #8]
	ldr	x10, [x0, #8]
	b	.LBB32_3
.LBB32_2:                               //   in Loop: Header=BB32_3 Depth=1
	subs	w8, w8, #1
	b.eq	.LBB32_13
.LBB32_3:                               // =>This Inner Loop Header: Depth=1
	ldr	x11, [x10], #8
	ldr	x12, [x9], #8
	eor	x13, x12, x11
	tst	x13, #0xf8f8f8f8f8f8f8f8
	b.eq	.LBB32_2
// %bb.4:                               //   in Loop: Header=BB32_3 Depth=1
	and	w13, w11, #0xf8
	and	w14, w12, #0xf8
	subs	w13, w13, w14
	cneg	w13, w13, mi
	cmp	w13, #8
	b.hi	.LBB32_12
// %bb.5:                               //   in Loop: Header=BB32_3 Depth=1
	ubfx	x13, x11, #8, #24
	ubfx	x14, x12, #8, #24
	and	w13, w13, #0xf8
	and	w14, w14, #0xf8
	subs	w13, w13, w14
	cneg	w13, w13, mi
	cmp	w13, #8
	b.hi	.LBB32_12
// %bb.6:                               //   in Loop: Header=BB32_3 Depth=1
	ubfx	x13, x11, #16, #16
	ubfx	x14, x12, #16, #16
	and	w13, w13, #0xf8
	and	w14, w14, #0xf8
	subs	w13, w13, w14
	cneg	w13, w13, mi
	cmp	w13, #8
	b.hi	.LBB32_12
// %bb.7:                               //   in Loop: Header=BB32_3 Depth=1
	and	x13, x11, #0xf8f8f8f8f8f8f8f8
	and	x14, x12, #0xf8f8f8f8f8f8f8f8
	ubfx	x15, x13, #24, #8
	ubfx	x16, x14, #24, #8
	subs	w15, w15, w16
	cneg	w15, w15, mi
	cmp	w15, #8
	b.hi	.LBB32_12
// %bb.8:                               //   in Loop: Header=BB32_3 Depth=1
	lsr	x15, x11, #32
	lsr	x16, x12, #32
	and	w15, w15, #0xf8
	and	w16, w16, #0xf8
	subs	w15, w15, w16
	cneg	w15, w15, mi
	cmp	w15, #8
	b.hi	.LBB32_12
// %bb.9:                               //   in Loop: Header=BB32_3 Depth=1
	lsr	x15, x11, #40
	lsr	x16, x12, #40
	and	w15, w15, #0xf8
	and	w16, w16, #0xf8
	subs	w15, w15, w16
	cneg	w15, w15, mi
	cmp	w15, #8
	b.hi	.LBB32_12
// %bb.10:                              //   in Loop: Header=BB32_3 Depth=1
	lsr	x11, x11, #48
	lsr	x12, x12, #48
	and	w11, w11, #0xf8
	and	w12, w12, #0xf8
	subs	w11, w11, w12
	cneg	w11, w11, mi
	cmp	w11, #8
	b.hi	.LBB32_12
// %bb.11:                              //   in Loop: Header=BB32_3 Depth=1
	lsr	x11, x13, #56
	lsr	x12, x14, #56
	subs	w11, w11, w12
	cneg	w11, w11, mi
	cmp	w11, #8
	b.ls	.LBB32_2
.LBB32_12:
	mov	w0, #1                          // =0x1
	ret
.LBB32_13:
	mov	w0, wzr
	ret
.Lfunc_end32:
	.size	check_part_mode, .Lfunc_end32-check_part_mode
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_power_set
	.type	ebc_power_set,@function
ebc_power_set:                          // @ebc_power_set
// %bb.0:
	ldr	w8, [x0, #1512]
	cmp	w1, w8
	b.eq	.LBB33_22
// %bb.1:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	ldr	w8, [x0, #1944]
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x19, x0
	cmp	w1, #1
	mov	x29, sp
	b.ne	.LBB33_8
// %bb.2:
	cbz	w8, .LBB33_4
// %bb.3:
	mov	w0, #1                          // =0x1
	bl	ebc_notify
.LBB33_4:
	ldr	w8, [x19, #1760]
	cbnz	w8, .LBB33_6
// %bb.5:
	mov	w8, #1                          // =0x1
	add	x0, x19, #1568
	str	w8, [x19, #1760]
	bl	__pm_stay_awake
.LBB33_6:
	ldr	x0, [x19, #16]
	mov	w8, #1                          // =0x1
	str	w8, [x19, #1512]
	cbz	x0, .LBB33_17
// %bb.7:
	ldr	x8, [x0, #32]
	mov	w1, #1                          // =0x1
	ldur	w16, [x8, #-4]
	movk	w17, #39905
	movk	w17, #26023, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp38
	brk	#0x8228
.Ltmp38:
	blr	x8
	mov	w20, wzr
	b	.LBB33_18
.LBB33_8:
	cbz	w8, .LBB33_10
// %bb.9:
	mov	x0, xzr
	bl	ebc_notify
.LBB33_10:
	ldr	x0, [x19, #8]
	str	wzr, [x19, #1512]
	ldr	x8, [x0, #176]
	ldur	w16, [x8, #-4]
	movk	w17, #15803
	movk	w17, #24474, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp39
	brk	#0x8228
.Ltmp39:
	blr	x8
	ldrb	w8, [x19, #296]
	cmp	w8, #1
	b.ne	.LBB33_12
// %bb.11:
	mov	w0, #10                         // =0xa
	bl	msleep
.LBB33_12:
	ldr	x0, [x19, #16]
	cbz	x0, .LBB33_23
// %bb.13:
	ldr	x8, [x0, #32]
	mov	w1, wzr
	ldur	w16, [x8, #-4]
	movk	w17, #39905
	movk	w17, #26023, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp40
	brk	#0x8228
.Ltmp40:
	blr	x8
	mov	w20, wzr
	ldr	w8, [x19, #1760]
	cbz	w8, .LBB33_15
.LBB33_14:
	add	x0, x19, #1568
	str	wzr, [x19, #1760]
	bl	__pm_relax
.LBB33_15:
	ldr	w8, [x19, #1948]
	cmp	w8, #1
	b.lt	.LBB33_21
// %bb.16:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.146
	add	x1, x1, :lo12:.L.str.146
	b	.LBB33_25
.LBB33_17:
	ldr	x0, [x19, #24]
	bl	regulator_enable
	mov	w20, w0
.LBB33_18:
	ldrb	w8, [x19, #296]
	cmp	w8, #1
	b.ne	.LBB33_20
// %bb.19:
	mov	w0, #50                         // =0x32
	bl	msleep
.LBB33_20:
	ldr	x0, [x19, #8]
	add	x1, x19, #112
	ldr	x8, [x0, #168]
	ldur	w16, [x8, #-4]
	movk	w17, #64249
	movk	w17, #27985, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp41
	brk	#0x8228
.Ltmp41:
	blr	x8
	ldr	w8, [x19, #1948]
	cmp	w8, #1
	b.ge	.LBB33_24
.LBB33_21:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
.LBB33_22:
	ret
.LBB33_23:
	ldr	x0, [x19, #24]
	bl	regulator_disable
	mov	w20, w0
	ldr	w8, [x19, #1760]
	cbnz	w8, .LBB33_14
	b	.LBB33_15
.LBB33_24:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.145
	add	x1, x1, :lo12:.L.str.145
.LBB33_25:
	mov	w2, w20
	bl	_dev_info
	b	.LBB33_21
.Lfunc_end33:
	.size	ebc_power_set, .Lfunc_end33-ebc_power_set
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_frame_control_timeout
	.type	ebc_frame_control_timeout,@function
	.word	2444535866                      // 0x91b4a83a
ebc_frame_control_timeout:              // @ebc_frame_control_timeout
// %bb.0:
	adrp	x8, global_ebc
	mov	w10, #1                         // =0x1
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w9, [x8, #1948]
	str	w10, [x8, #1908]
	cmp	w9, #1
	b.ge	.LBB34_2
// %bb.1:
	ret
.LBB34_2:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	ldr	x0, [x8, #1456]
	adrp	x1, .L.str.148
	add	x1, x1, :lo12:.L.str.148
	mov	x29, sp
	bl	_dev_info
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end34:
	.size	ebc_frame_control_timeout, .Lfunc_end34-ebc_frame_control_timeout
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_overlay_enable_timeout
	.type	ebc_overlay_enable_timeout,@function
	.word	2444535866                      // 0x91b4a83a
ebc_overlay_enable_timeout:             // @ebc_overlay_enable_timeout
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w9, [x8, #1948]
	str	wzr, [x8, #1904]
	cmp	w9, #1
	b.ge	.LBB35_2
// %bb.1:
	ret
.LBB35_2:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	ldr	x0, [x8, #1456]
	adrp	x1, .L.str.149
	add	x1, x1, :lo12:.L.str.149
	mov	x29, sp
	bl	_dev_info
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end35:
	.size	ebc_overlay_enable_timeout, .Lfunc_end35-ebc_overlay_enable_timeout
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_frame_timeout
	.type	ebc_frame_timeout,@function
	.word	2444535866                      // 0x91b4a83a
ebc_frame_timeout:                      // @ebc_frame_timeout
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	frame_done_callback
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end36:
	.size	ebc_frame_timeout, .Lfunc_end36-ebc_frame_timeout
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_io_ctl
	.type	ebc_io_ctl,@function
	.word	3759409357                      // 0xe01408cd
ebc_io_ctl:                             // @ebc_io_ctl
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #128
	adrp	x9, global_ebc
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	ldr	x22, [x0, #32]
	sub	w8, w1, #7, lsl #12             // =28672
	ldr	x21, [x9, :lo12:global_ebc]
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	cmp	w8, #33
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #80
	str	wzr, [sp, #72]
	stp	xzr, xzr, [sp, #56]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	stp	xzr, xzr, [sp, #8]
	b.hi	.LBB37_98
// %bb.1:
	adrp	x9, .LJTI37_0
	add	x9, x9, :lo12:.LJTI37_0
	mov	x0, xzr
	adr	x10, .LBB37_2
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB37_2:
	cbz	x2, .LBB37_24
// %bb.3:
	cmp	w8, #33
	b.hi	.LBB37_98
// %bb.4:
	adrp	x9, .LJTI37_1
	add	x9, x9, :lo12:.LJTI37_1
	mov	x0, xzr
	adr	x10, .LBB37_5
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB37_5:
	add	x0, sp, #8
	mov	x19, x2
	mov	x1, x2
	mov	w2, #68                         // =0x44
	add	x20, sp, #8
	bl	_inline_copy_from_user
	cbnz	w0, .LBB37_88
// %bb.6:
	add	x0, x20, #48
	bl	ebc_empty_buf_get
	cbz	x0, .LBB37_90
// %bb.7:
	ldp	w10, w9, [x21, #188]
	ldrsw	x8, [x0, #4]
	ldr	w11, [x21, #264]
	mov	x20, x0
	str	wzr, [sp, #52]
	add	x1, sp, #8
	mov	x0, x19
	str	w8, [sp, #8]
	mov	w2, #68                         // =0x44
	stp	w9, w10, [sp, #16]
	str	w11, [sp, #24]
	ldr	w8, [x22, x8, lsl #2]
	str	w8, [sp, #72]
	bl	_inline_copy_to_user
	cbz	w0, .LBB37_23
// %bb.8:
	mov	x0, x20
	bl	ebc_buf_release
	b	.LBB37_88
.LBB37_9:
	ldr	w8, [x21, #1948]
	str	wzr, [x21, #1912]
	tbnz	w8, #31, .LBB37_23
// %bb.10:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.169
	add	x1, x1, :lo12:.L.str.169
	bl	_dev_info
	b	.LBB37_23
.LBB37_11:
	ldr	w8, [x21, #1948]
	tbz	w8, #31, .LBB37_99
// %bb.12:
	ldr	w8, [x21, #1896]
	cbz	w8, .LBB37_14
.LBB37_13:
	mov	w0, #3                          // =0x3
	bl	ebc_notify
.LBB37_14:
	mov	x0, xzr
	str	wzr, [x21, #1896]
	str	wzr, [x21, #1916]
	b	.LBB37_86
.LBB37_15:
	ldr	w8, [x21, #1948]
	mov	w9, #1                          // =0x1
	str	w9, [x21, #1904]
	tbnz	w8, #31, .LBB37_23
// %bb.16:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.170
	add	x1, x1, :lo12:.L.str.170
	bl	_dev_info
	b	.LBB37_23
.LBB37_17:
	ldr	w8, [x21, #1948]
	tbz	w8, #31, .LBB37_100
.LBB37_18:
	mov	w0, #2                          // =0x2
	bl	ebc_notify
	mov	w8, #1                          // =0x1
	mov	x0, xzr
	str	w8, [x21, #1896]
	str	w8, [x21, #1916]
	b	.LBB37_86
.LBB37_19:
	bl	ebc_drop_one_dsp_buf
	cbnz	w0, .LBB37_88
	b	.LBB37_23
.LBB37_20:
	ldr	w8, [x21, #1948]
	str	wzr, [x21, #1904]
	tbnz	w8, #31, .LBB37_23
// %bb.21:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.171
	add	x1, x1, :lo12:.L.str.171
	bl	_dev_info
	b	.LBB37_23
.LBB37_22:
	ldr	w8, [x21, #1948]
	mov	w9, #1                          // =0x1
	str	w9, [x21, #1912]
	tbz	w8, #31, .LBB37_101
.LBB37_23:
	mov	x0, xzr
	b	.LBB37_86
.LBB37_24:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.167
	add	x1, x1, :lo12:.L.str.167
	adrp	x2, .L__func__.ebc_io_ctl
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
	b	.LBB37_88
.LBB37_25:
	add	x0, sp, #8
	mov	x19, x2
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	w0, .LBB37_88
// %bb.26:
	ldr	x8, [x21, #1536]
	cbz	x8, .LBB37_90
// %bb.27:
	ldp	w10, w9, [x21, #188]
	ldrsw	x8, [x8, #4]
	ldr	w11, [x21, #264]
	add	x1, sp, #8
	str	wzr, [sp, #52]
	mov	x0, x19
	mov	w2, #68                         // =0x44
	str	w8, [sp, #8]
	stp	w9, w10, [sp, #16]
	str	w11, [sp, #24]
	ldr	w8, [x22, x8, lsl #2]
	str	w8, [sp, #72]
	bl	_inline_copy_to_user
	cbnz	w0, .LBB37_88
	b	.LBB37_23
.LBB37_28:
	mov	x19, x2
	bl	ebc_empty_osd_buf_get
	cbz	x0, .LBB37_90
// %bb.29:
	ldp	w10, w9, [x21, #188]
	ldrsw	x8, [x0, #4]
	ldr	w11, [x21, #264]
	add	x1, sp, #8
	str	wzr, [sp, #52]
	mov	x0, x19
	mov	w2, #68                         // =0x44
	str	w8, [sp, #8]
	stp	w9, w10, [sp, #16]
	str	w11, [sp, #24]
	ldr	w8, [x22, x8, lsl #2]
	str	w8, [sp, #72]
	b	.LBB37_85
.LBB37_30:
	add	x0, sp, #4
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp, #4]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB37_88
// %bb.31:
	ldr	w8, [sp, #4]
	ldr	w9, [x21, #1948]
	cmp	w8, #0
	cset	w10, ne
	strb	w10, [x21, #2009]
	tbnz	w9, #31, .LBB37_23
// %bb.32:
	cmp	w8, #0
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.183
	add	x1, x1, :lo12:.L.str.183
	b	.LBB37_75
.LBB37_33:
	ldrb	w8, [x21, #1765]
	mov	w9, #1                          // =0x1
	str	w9, [sp, #4]
	cmp	w8, #1
	b.ne	.LBB37_23
// %bb.34:
	add	x0, sp, #4
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB37_88
// %bb.35:
	ldr	w8, [sp, #4]
	str	w8, [x21, #1936]
	b	.LBB37_23
.LBB37_36:
	mov	w8, #-1                         // =0xffffffff
	add	x0, sp, #4
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	w8, [sp, #4]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB37_88
// %bb.37:
	ldr	w2, [sp, #4]
	ldr	w8, [x21, #1948]
	str	w2, [x21, #2016]
	tbnz	w8, #31, .LBB37_23
// %bb.38:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.173
	add	x1, x1, :lo12:.L.str.173
	bl	_dev_info
	b	.LBB37_23
.LBB37_39:
	add	x1, x21, #1760
	b	.LBB37_83
.LBB37_40:
	add	x0, sp, #4
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp, #4]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB37_88
// %bb.41:
	ldr	w8, [x21, #1948]
	tbz	w8, #31, .LBB37_108
.LBB37_42:
	ldr	w8, [sp, #4]
	mov	x0, xzr
	str	w8, [x21, #1928]
	b	.LBB37_86
.LBB37_43:
	ldp	w8, w9, [x21, #188]
	ldr	w10, [x21, #264]
	add	x1, sp, #8
	mov	x0, x2
	mov	w2, #68                         // =0x44
	str	wzr, [sp, #52]
	stp	w9, w8, [sp, #16]
	ldp	w8, w9, [x21, #204]
	str	w10, [sp, #24]
	stp	w8, w9, [sp, #44]
	bl	_inline_copy_to_user
	cbz	x0, .LBB37_86
// %bb.44:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.172
	add	x1, x1, :lo12:.L.str.172
	bl	_dev_err
	b	.LBB37_88
.LBB37_45:
	ldrb	w8, [x21, #1768]
	cmp	w8, #1
	b.ne	.LBB37_88
// %bb.46:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	x0, .LBB37_88
// %bb.47:
	bl	ebc_osd_buf_clone
	cbz	x0, .LBB37_86
// %bb.48:
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #28]
	mov	x19, x0
	str	w8, [x0, #32]
	ldr	x8, [sp, #32]
	str	w9, [x0, #40]
	ldr	w9, [sp, #40]
	stur	x8, [x0, #44]
	str	w9, [x0, #52]
	bl	ebc_add_to_osd_buf_list
	ldp	w8, w9, [x19, #40]
	orr	w8, w9, w8
	cbnz	w8, .LBB37_51
// %bb.49:
	ldr	w8, [x19, #48]
	ldr	w9, [x21, #1444]
	cmp	w8, w9
	b.ne	.LBB37_51
// %bb.50:
	ldr	w8, [x19, #52]
	ldr	w9, [x21, #1440]
	cmp	w8, w9
	b.eq	.LBB37_106
.LBB37_51:
	ldr	w8, [x21, #1452]
	cbnz	w8, .LBB37_106
// %bb.52:
	mov	w8, #1                          // =0x1
	str	w8, [x21, #1452]
	b	.LBB37_106
.LBB37_53:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	x0, .LBB37_88
// %bb.54:
	ldr	w0, [sp, #8]
	bl	ebc_find_buf_by_id
	cbz	x0, .LBB37_86
// %bb.55:
	ldr	w8, [sp, #12]
	ldp	w9, w10, [sp, #28]
	str	w8, [x0, #32]
	ldr	w11, [sp, #52]
	stp	w9, w10, [x0, #40]
	ldp	w9, w12, [sp, #36]
	stp	w12, w11, [x0, #52]
	str	w9, [x0, #48]
	ldrb	w9, [x21, #1767]
	tbnz	w9, #0, .LBB37_105
// %bb.56:
	sub	w9, w8, #22
	cmp	w9, #2
	b.hs	.LBB37_102
// %bb.57:
	mov	w8, #14                         // =0xe
	b	.LBB37_104
.LBB37_58:
	ldrb	w8, [x21, #1764]
	str	wzr, [sp, #4]
	cmp	w8, #1
	b.ne	.LBB37_23
// %bb.59:
	add	x0, sp, #4
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB37_88
// %bb.60:
	ldr	w8, [x21, #1948]
	tbz	w8, #31, .LBB37_109
.LBB37_61:
	ldr	w8, [sp, #4]
	str	w8, [x21, #1924]
	b	.LBB37_23
.LBB37_62:
	add	x0, sp, #4
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp, #4]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB37_88
// %bb.63:
	ldr	w2, [sp, #4]
	ldr	w8, [x21, #1444]
	cmp	w2, #1
	b.lt	.LBB37_65
// %bb.64:
	cmp	w2, w8
	b.le	.LBB37_66
.LBB37_65:
	mov	w2, w8
	str	w8, [sp, #4]
.LBB37_66:
	ldr	w8, [x21, #1948]
	str	w2, [x21, #1972]
	tbnz	w8, #31, .LBB37_23
// %bb.67:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.178
	add	x1, x1, :lo12:.L.str.178
	bl	_dev_info
	b	.LBB37_23
.LBB37_68:
	mov	w8, #-1                         // =0xffffffff
	add	x0, sp, #4
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	w8, [sp, #4]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB37_88
// %bb.69:
	ldr	w2, [sp, #4]
	ldr	w8, [x21, #1948]
	str	w2, [x21, #2004]
	tbnz	w8, #31, .LBB37_23
// %bb.70:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.180
	add	x1, x1, :lo12:.L.str.180
	bl	_dev_info
	b	.LBB37_23
.LBB37_71:
	mov	x19, x2
	bl	epd_lut_get_wf_bit
	cmp	w0, #32
	add	x1, sp, #4
	mov	x0, x19
	cset	w8, eq
	str	w8, [sp, #4]
	b	.LBB37_84
.LBB37_72:
	add	x0, sp, #4
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp, #4]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB37_88
// %bb.73:
	ldr	w8, [sp, #4]
	ldr	w9, [x21, #1948]
	cmp	w8, #0
	cset	w10, ne
	strb	w10, [x21, #2008]
	tbnz	w9, #31, .LBB37_23
// %bb.74:
	cmp	w8, #0
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.181
	add	x1, x1, :lo12:.L.str.181
.LBB37_75:
	cset	w2, ne
	bl	_dev_info
	b	.LBB37_23
.LBB37_76:
	mov	w8, #1                          // =0x1
	b	.LBB37_82
.LBB37_77:
	add	x1, x21, #1904
	b	.LBB37_83
.LBB37_78:
	add	x0, sp, #4
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp, #4]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB37_88
// %bb.79:
	ldr	w2, [sp, #4]
	ldr	w8, [x21, #1948]
	str	w2, [x21, #2012]
	tbnz	w8, #31, .LBB37_23
// %bb.80:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.182
	add	x1, x1, :lo12:.L.str.182
	bl	_dev_info
	b	.LBB37_23
.LBB37_81:
	ldrb	w8, [x21, #1765]
.LBB37_82:
	str	w8, [sp, #4]
	add	x1, sp, #4
.LBB37_83:
	mov	x0, x2
.LBB37_84:
	mov	w2, #4                          // =0x4
.LBB37_85:
	bl	_inline_copy_to_user
.LBB37_86:
	sxtw	x0, w0
	b	.LBB37_89
.LBB37_87:
	add	x0, sp, #4
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp, #4]
	bl	_inline_copy_from_user
	cbz	w0, .LBB37_91
.LBB37_88:
	mov	x0, #-14                        // =0xfffffffffffffff2
.LBB37_89:
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #128
	ldr	x30, [x18, #-8]!
	ret
.LBB37_90:
	mov	x0, #-1                         // =0xffffffffffffffff
	b	.LBB37_89
.LBB37_91:
	ldr	w2, [sp, #4]
	cmp	w2, #11
	b.lo	.LBB37_93
// %bb.92:
	str	wzr, [sp, #4]
	b	.LBB37_95
.LBB37_93:
	cbz	w2, .LBB37_95
// %bb.94:
	mov	w8, #1                          // =0x1
	b	.LBB37_96
.LBB37_95:
	mov	w8, wzr
	mov	w2, wzr
.LBB37_96:
	ldr	w9, [x21, #1948]
	strb	w8, [x21, #1965]
	str	w2, [x21, #1976]
	tbnz	w9, #31, .LBB37_23
// %bb.97:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.179
	add	x1, x1, :lo12:.L.str.179
	bl	_dev_info
	b	.LBB37_23
.LBB37_98:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.184
	add	x1, x1, :lo12:.L.str.184
	adrp	x2, .L__func__.ebc_io_ctl
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
	b	.LBB37_23
.LBB37_99:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.175
	add	x1, x1, :lo12:.L.str.175
	bl	_dev_info
	ldr	w8, [x21, #1896]
	cbnz	w8, .LBB37_13
	b	.LBB37_14
.LBB37_100:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.174
	add	x1, x1, :lo12:.L.str.174
	bl	_dev_info
	b	.LBB37_18
.LBB37_101:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.168
	add	x1, x1, :lo12:.L.str.168
	bl	_dev_info
	b	.LBB37_23
.LBB37_102:
	cbnz	w8, .LBB37_105
// %bb.103:
	mov	w8, #7                          // =0x7
.LBB37_104:
	str	w8, [x0, #32]
.LBB37_105:
	bl	ebc_add_to_dsp_buf_list
.LBB37_106:
	ldr	w8, [x21, #1448]
	cbnz	w8, .LBB37_23
// %bb.107:
	mov	w8, #1                          // =0x1
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1                          // =0x1
	str	w8, [x21, #1448]
	bl	__wake_up_sync
	b	.LBB37_23
.LBB37_108:
	ldr	x0, [x21, #1456]
	ldr	w2, [sp, #4]
	adrp	x1, .L.str.177
	add	x1, x1, :lo12:.L.str.177
	bl	_dev_info
	b	.LBB37_42
.LBB37_109:
	ldr	x0, [x21, #1456]
	ldr	w2, [sp, #4]
	adrp	x1, .L.str.176
	add	x1, x1, :lo12:.L.str.176
	bl	_dev_info
	b	.LBB37_61
.Lfunc_end37:
	.size	ebc_io_ctl, .Lfunc_end37-ebc_io_ctl
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
.LJTI37_0:
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_15-.LBB37_2)>>2
	.hword	(.LBB37_20-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_86-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_22-.LBB37_2)>>2
	.hword	(.LBB37_9-.LBB37_2)>>2
	.hword	(.LBB37_86-.LBB37_2)>>2
	.hword	(.LBB37_86-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_19-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_17-.LBB37_2)>>2
	.hword	(.LBB37_11-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_98-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.hword	(.LBB37_2-.LBB37_2)>>2
	.p2align	1, 0x0
.LJTI37_1:
	.hword	(.LBB37_5-.LBB37_5)>>2
	.hword	(.LBB37_53-.LBB37_5)>>2
	.hword	(.LBB37_43-.LBB37_5)>>2
	.hword	(.LBB37_86-.LBB37_5)>>2
	.hword	(.LBB37_15-.LBB37_5)>>2
	.hword	(.LBB37_20-.LBB37_5)>>2
	.hword	(.LBB37_28-.LBB37_5)>>2
	.hword	(.LBB37_45-.LBB37_5)>>2
	.hword	(.LBB37_86-.LBB37_5)>>2
	.hword	(.LBB37_36-.LBB37_5)>>2
	.hword	(.LBB37_86-.LBB37_5)>>2
	.hword	(.LBB37_77-.LBB37_5)>>2
	.hword	(.LBB37_22-.LBB37_5)>>2
	.hword	(.LBB37_9-.LBB37_5)>>2
	.hword	(.LBB37_86-.LBB37_5)>>2
	.hword	(.LBB37_86-.LBB37_5)>>2
	.hword	(.LBB37_76-.LBB37_5)>>2
	.hword	(.LBB37_19-.LBB37_5)>>2
	.hword	(.LBB37_39-.LBB37_5)>>2
	.hword	(.LBB37_17-.LBB37_5)>>2
	.hword	(.LBB37_11-.LBB37_5)>>2
	.hword	(.LBB37_58-.LBB37_5)>>2
	.hword	(.LBB37_98-.LBB37_5)>>2
	.hword	(.LBB37_81-.LBB37_5)>>2
	.hword	(.LBB37_62-.LBB37_5)>>2
	.hword	(.LBB37_87-.LBB37_5)>>2
	.hword	(.LBB37_68-.LBB37_5)>>2
	.hword	(.LBB37_72-.LBB37_5)>>2
	.hword	(.LBB37_78-.LBB37_5)>>2
	.hword	(.LBB37_30-.LBB37_5)>>2
	.hword	(.LBB37_25-.LBB37_5)>>2
	.hword	(.LBB37_71-.LBB37_5)>>2
	.hword	(.LBB37_33-.LBB37_5)>>2
	.hword	(.LBB37_40-.LBB37_5)>>2
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_open
	.type	ebc_open,@function
	.word	2399652437                      // 0x8f07ca55
ebc_open:                               // @ebc_open
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	adrp	x9, kmalloc_caches+40
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	ldr	x0, [x9, :lo12:kmalloc_caches+40]
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	ldr	x22, [x8, :lo12:global_ebc]
	mov	x19, x1
	mov	w1, #3520                       // =0xdc0
	mov	w2, #20                         // =0x14
	str	x27, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	bl	__kmalloc_cache_noprof
	cbz	x0, .LBB38_15
// %bb.1:
	ldr	w8, [x22, #1384]
	mov	x20, x0
	adrp	x23, get_file.__already_done
	cmp	w8, #1
	b.lt	.LBB38_9
// %bb.2:
	mov	x24, xzr
	add	x25, x22, #480
	mov	w26, #1                         // =0x1
	adrp	x21, .L.str.185
	add	x21, x21, :lo12:.L.str.185
	b	.LBB38_4
.LBB38_3:                               //   in Loop: Header=BB38_4 Depth=1
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	str	w0, [x20, x24, lsl #2]
	add	x24, x24, #1
	add	x25, x25, #72
	ldrsw	x8, [x22, #1384]
	cmp	x24, x8
	b.ge	.LBB38_9
.LBB38_4:                               // =>This Inner Loop Header: Depth=1
	ldr	x0, [x25]
	ldr	x9, [x0, #8]
	//APP
.Ltmp42:
	b	.LBB38_8
.Ltmp43:
	.section	.altinstructions,"a",@progbits
.Ltmp44:
	.word	.Ltmp42-.Ltmp44
.Ltmp45:
	.word	alt_cb_patch_nops-.Ltmp45
	.hword	32805
	.byte	.Ltmp43-.Ltmp42
	.byte	.Ltmp46-.Ltmp47
	.text

.Ltmp47:
.Ltmp46:

	//NO_APP
// %bb.5:                               //   in Loop: Header=BB38_4 Depth=1
	//APP
	ldadd	x26, x8, [x9]
	//NO_APP
	cbnz	x8, .LBB38_3
.LBB38_6:                               //   in Loop: Header=BB38_4 Depth=1
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbnz	w8, #0, .LBB38_3
// %bb.7:                               //   in Loop: Header=BB38_4 Depth=1
	mov	x27, x0
	mov	x0, x21
	strb	w26, [x23, :lo12:get_file.__already_done]
	bl	__warn_printk
	mov	x0, x27
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp48:
.Ltmp50:
	.word	.Ltmp49-.Ltmp50
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp51:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp52:
	.word	.Ltmp51-.Ltmp52
	.hword	1087
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp49:
	brk	#0x800
	//NO_APP
	b	.LBB38_3
.LBB38_8:                               // Block address taken
                                        //   in Loop: Header=BB38_4 Depth=1
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x9]
.Ltmp53:
	ldxr	x8, [x9]
	add	x10, x8, #1
	stxr	w11, x10, [x9]
	cbnz	w11, .Ltmp53

	//NO_APP
	cbz	x8, .LBB38_6
	b	.LBB38_3
.LBB38_9:
	ldrb	w8, [x22, #1768]
	cmp	w8, #1
	b.ne	.LBB38_14
// %bb.10:
	ldr	x0, [x22, #912]
	ldr	x8, [x0, #8]
	//APP
.Ltmp54:
	b	.LBB38_18
.Ltmp55:
	.section	.altinstructions,"a",@progbits
.Ltmp56:
	.word	.Ltmp54-.Ltmp56
.Ltmp57:
	.word	alt_cb_patch_nops-.Ltmp57
	.hword	32805
	.byte	.Ltmp55-.Ltmp54
	.byte	.Ltmp58-.Ltmp59
	.text

.Ltmp59:
.Ltmp58:

	//NO_APP
// %bb.11:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB38_13
.LBB38_12:
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB38_17
.LBB38_13:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldrsw	x8, [x22, #1384]
	str	w0, [x20, x8, lsl #2]
.LBB38_14:
	mov	w0, wzr
	str	x20, [x19, #32]
	str	xzr, [x19, #112]
	b	.LBB38_16
.LBB38_15:
	mov	w0, #-12                        // =0xfffffff4
.LBB38_16:
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldr	x27, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB38_17:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x23, :lo12:get_file.__already_done]
	adrp	x8, .L.str.185
	add	x8, x8, :lo12:.L.str.185
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp60:
.Ltmp62:
	.word	.Ltmp61-.Ltmp62
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp63:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp64:
	.word	.Ltmp63-.Ltmp64
	.hword	1087
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp61:
	brk	#0x800
	//NO_APP
	b	.LBB38_13
.LBB38_18:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp65:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp65

	//NO_APP
	cbz	x9, .LBB38_12
	b	.LBB38_13
.Lfunc_end38:
	.size	ebc_open, .Lfunc_end38-ebc_open
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_release
	.type	ebc_release,@function
	.word	2399652437                      // 0x8f07ca55
ebc_release:                            // @ebc_release
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	ldr	x0, [x1, #32]
	mov	x29, sp
	bl	kfree
	mov	w0, wzr
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end39:
	.size	ebc_release, .Lfunc_end39-ebc_release
                                        // -- End function
	.p2align	2                               // -- Begin function _inline_copy_to_user
	.type	_inline_copy_to_user,@function
_inline_copy_to_user:                   // @_inline_copy_to_user
// %bb.0:
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	ldrb	w9, [x8, #70]
	tbnz	w9, #5, .LBB40_2
// %bb.1:
	ldr	x10, [x8]
	mov	x9, x0
	tbz	w10, #26, .LBB40_3
.LBB40_2:
	lsl	x9, x0, #8
	and	x9, x0, x9, asr #8
.LBB40_3:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x10, #549755813888              // =0x8000000000
	mov	x29, sp
	cmp	x2, x10
	b.hi	.LBB40_15
// %bb.4:
	sub	x10, x10, x2
	cmp	x10, x9
	b.lo	.LBB40_15
// %bb.5:
	//APP
.Ltmp66:
	nop
.Ltmp67:
	.section	.altinstructions,"a",@progbits
.Ltmp68:
	.word	.Ltmp66-.Ltmp68
.Ltmp70:
	.word	.Ltmp69-.Ltmp70
	.hword	40
	.byte	.Ltmp67-.Ltmp66
	.byte	.Ltmp71-.Ltmp69
	.text

	.text	1
.Ltmp69:
	b	.LBB40_10
.Ltmp71:
.Ltmp72:
.org (.Ltmp72-(.Ltmp71-.Ltmp69))+(.Ltmp67-.Ltmp66), 0
.Ltmp73:
.org (.Ltmp73-(.Ltmp67-.Ltmp66))+(.Ltmp71-.Ltmp69), 0
	.text


	//NO_APP
// %bb.6:
	//APP
.Ltmp74:
	nop
.Ltmp75:
	.section	.altinstructions,"a",@progbits
.Ltmp76:
	.word	.Ltmp74-.Ltmp76
.Ltmp78:
	.word	.Ltmp77-.Ltmp78
	.hword	31
	.byte	.Ltmp75-.Ltmp74
	.byte	.Ltmp79-.Ltmp77
	.text

	.text	1
.Ltmp77:
	b	.LBB40_16
.Ltmp79:
.Ltmp80:
.org (.Ltmp80-(.Ltmp79-.Ltmp77))+(.Ltmp75-.Ltmp74), 0
.Ltmp81:
.org (.Ltmp81-(.Ltmp75-.Ltmp74))+(.Ltmp79-.Ltmp77), 0
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
.LBB40_8:
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
.Ltmp82:
	nop
.Ltmp83:
	.section	.altinstructions,"a",@progbits
.Ltmp84:
	.word	.Ltmp82-.Ltmp84
.Ltmp86:
	.word	.Ltmp85-.Ltmp86
	.hword	31
	.byte	.Ltmp83-.Ltmp82
	.byte	.Ltmp87-.Ltmp85
	.text

	.text	1
.Ltmp85:
	b	.LBB40_18
.Ltmp87:
.Ltmp88:
.org (.Ltmp88-(.Ltmp87-.Ltmp85))+(.Ltmp83-.Ltmp82), 0
.Ltmp89:
.org (.Ltmp89-(.Ltmp83-.Ltmp82))+(.Ltmp87-.Ltmp85), 0
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
.LBB40_10:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	and	x0, x0, #0xff7fffffffffffff

	//NO_APP
	bl	__arch_copy_to_user
	mov	x2, x0
	//APP
.Ltmp90:
	nop
.Ltmp91:
	.section	.altinstructions,"a",@progbits
.Ltmp92:
	.word	.Ltmp90-.Ltmp92
.Ltmp94:
	.word	.Ltmp93-.Ltmp94
	.hword	40
	.byte	.Ltmp91-.Ltmp90
	.byte	.Ltmp95-.Ltmp93
	.text

	.text	1
.Ltmp93:
	b	.LBB40_15
.Ltmp95:
.Ltmp96:
.org (.Ltmp96-(.Ltmp95-.Ltmp93))+(.Ltmp91-.Ltmp90), 0
.Ltmp97:
.org (.Ltmp97-(.Ltmp91-.Ltmp90))+(.Ltmp95-.Ltmp93), 0
	.text


	//NO_APP
// %bb.11:
	//APP
.Ltmp98:
	nop
.Ltmp99:
	.section	.altinstructions,"a",@progbits
.Ltmp100:
	.word	.Ltmp98-.Ltmp100
.Ltmp102:
	.word	.Ltmp101-.Ltmp102
	.hword	31
	.byte	.Ltmp99-.Ltmp98
	.byte	.Ltmp103-.Ltmp101
	.text

	.text	1
.Ltmp101:
	b	.LBB40_19
.Ltmp103:
.Ltmp104:
.org (.Ltmp104-(.Ltmp103-.Ltmp101))+(.Ltmp99-.Ltmp98), 0
.Ltmp105:
.org (.Ltmp105-(.Ltmp99-.Ltmp98))+(.Ltmp103-.Ltmp101), 0
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
.LBB40_13:
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
.Ltmp106:
	nop
.Ltmp107:
	.section	.altinstructions,"a",@progbits
.Ltmp108:
	.word	.Ltmp106-.Ltmp108
.Ltmp110:
	.word	.Ltmp109-.Ltmp110
	.hword	31
	.byte	.Ltmp107-.Ltmp106
	.byte	.Ltmp111-.Ltmp109
	.text

	.text	1
.Ltmp109:
	b	.LBB40_21
.Ltmp111:
.Ltmp112:
.org (.Ltmp112-(.Ltmp111-.Ltmp109))+(.Ltmp107-.Ltmp106), 0
.Ltmp113:
.org (.Ltmp113-(.Ltmp107-.Ltmp106))+(.Ltmp111-.Ltmp109), 0
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
.LBB40_15:                              // Block address taken
                                        // Label of block must be emitted
	mov	x0, x2
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB40_16:                              // Block address taken
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
	b.ne	.LBB40_8
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
	b	.LBB40_8
.LBB40_18:                              // Block address taken
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
.Ltmp114:
	dsb	sy
.Ltmp115:
	.section	.altinstructions,"a",@progbits
.Ltmp116:
	.word	.Ltmp114-.Ltmp116
.Ltmp117:
	.word	alt_cb_patch_nops-.Ltmp117
	.hword	32800
	.byte	.Ltmp115-.Ltmp114
	.byte	.Ltmp118-.Ltmp119
	.text

.Ltmp119:
.Ltmp118:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB40_10
.LBB40_19:                              // Block address taken
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
	b.ne	.LBB40_13
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
	b	.LBB40_13
.LBB40_21:                              // Block address taken
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
.Ltmp120:
	dsb	sy
.Ltmp121:
	.section	.altinstructions,"a",@progbits
.Ltmp122:
	.word	.Ltmp120-.Ltmp122
.Ltmp123:
	.word	alt_cb_patch_nops-.Ltmp123
	.hword	32800
	.byte	.Ltmp121-.Ltmp120
	.byte	.Ltmp124-.Ltmp125
	.text

.Ltmp125:
.Ltmp124:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB40_15
.Lfunc_end40:
	.size	_inline_copy_to_user, .Lfunc_end40-_inline_copy_to_user
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
	tbnz	w9, #5, .LBB41_2
// %bb.1:
	ldr	x10, [x8]
	mov	x9, x1
	tbz	w10, #26, .LBB41_3
.LBB41_2:
	lsl	x9, x1, #8
	and	x9, x1, x9, asr #8
.LBB41_3:
	mov	x10, #549755813888              // =0x8000000000
	mov	x21, x19
	cmp	x19, x10
	b.hi	.LBB41_16
// %bb.4:
	sub	x10, x10, x19
	mov	x21, x19
	cmp	x10, x9
	b.lo	.LBB41_16
// %bb.5:
	//APP
.Ltmp126:
	nop
.Ltmp127:
	.section	.altinstructions,"a",@progbits
.Ltmp128:
	.word	.Ltmp126-.Ltmp128
.Ltmp130:
	.word	.Ltmp129-.Ltmp130
	.hword	40
	.byte	.Ltmp127-.Ltmp126
	.byte	.Ltmp131-.Ltmp129
	.text

	.text	1
.Ltmp129:
	b	.LBB41_10
.Ltmp131:
.Ltmp132:
.org (.Ltmp132-(.Ltmp131-.Ltmp129))+(.Ltmp127-.Ltmp126), 0
.Ltmp133:
.org (.Ltmp133-(.Ltmp127-.Ltmp126))+(.Ltmp131-.Ltmp129), 0
	.text


	//NO_APP
// %bb.6:
	//APP
.Ltmp134:
	nop
.Ltmp135:
	.section	.altinstructions,"a",@progbits
.Ltmp136:
	.word	.Ltmp134-.Ltmp136
.Ltmp138:
	.word	.Ltmp137-.Ltmp138
	.hword	31
	.byte	.Ltmp135-.Ltmp134
	.byte	.Ltmp139-.Ltmp137
	.text

	.text	1
.Ltmp137:
	b	.LBB41_18
.Ltmp139:
.Ltmp140:
.org (.Ltmp140-(.Ltmp139-.Ltmp137))+(.Ltmp135-.Ltmp134), 0
.Ltmp141:
.org (.Ltmp141-(.Ltmp135-.Ltmp134))+(.Ltmp139-.Ltmp137), 0
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
.LBB41_8:
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
.Ltmp142:
	nop
.Ltmp143:
	.section	.altinstructions,"a",@progbits
.Ltmp144:
	.word	.Ltmp142-.Ltmp144
.Ltmp146:
	.word	.Ltmp145-.Ltmp146
	.hword	31
	.byte	.Ltmp143-.Ltmp142
	.byte	.Ltmp147-.Ltmp145
	.text

	.text	1
.Ltmp145:
	b	.LBB41_20
.Ltmp147:
.Ltmp148:
.org (.Ltmp148-(.Ltmp147-.Ltmp145))+(.Ltmp143-.Ltmp142), 0
.Ltmp149:
.org (.Ltmp149-(.Ltmp143-.Ltmp142))+(.Ltmp147-.Ltmp145), 0
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
.LBB41_10:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	and	x1, x1, #0xff7fffffffffffff

	//NO_APP
	mov	x0, x20
	mov	x2, x19
	bl	__arch_copy_from_user
	mov	x21, x0
	//APP
.Ltmp150:
	nop
.Ltmp151:
	.section	.altinstructions,"a",@progbits
.Ltmp152:
	.word	.Ltmp150-.Ltmp152
.Ltmp154:
	.word	.Ltmp153-.Ltmp154
	.hword	40
	.byte	.Ltmp151-.Ltmp150
	.byte	.Ltmp155-.Ltmp153
	.text

	.text	1
.Ltmp153:
	b	.LBB41_15
.Ltmp155:
.Ltmp156:
.org (.Ltmp156-(.Ltmp155-.Ltmp153))+(.Ltmp151-.Ltmp150), 0
.Ltmp157:
.org (.Ltmp157-(.Ltmp151-.Ltmp150))+(.Ltmp155-.Ltmp153), 0
	.text


	//NO_APP
// %bb.11:
	//APP
.Ltmp158:
	nop
.Ltmp159:
	.section	.altinstructions,"a",@progbits
.Ltmp160:
	.word	.Ltmp158-.Ltmp160
.Ltmp162:
	.word	.Ltmp161-.Ltmp162
	.hword	31
	.byte	.Ltmp159-.Ltmp158
	.byte	.Ltmp163-.Ltmp161
	.text

	.text	1
.Ltmp161:
	b	.LBB41_21
.Ltmp163:
.Ltmp164:
.org (.Ltmp164-(.Ltmp163-.Ltmp161))+(.Ltmp159-.Ltmp158), 0
.Ltmp165:
.org (.Ltmp165-(.Ltmp159-.Ltmp158))+(.Ltmp163-.Ltmp161), 0
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
.LBB41_13:
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
.Ltmp166:
	nop
.Ltmp167:
	.section	.altinstructions,"a",@progbits
.Ltmp168:
	.word	.Ltmp166-.Ltmp168
.Ltmp170:
	.word	.Ltmp169-.Ltmp170
	.hword	31
	.byte	.Ltmp167-.Ltmp166
	.byte	.Ltmp171-.Ltmp169
	.text

	.text	1
.Ltmp169:
	b	.LBB41_23
.Ltmp171:
.Ltmp172:
.org (.Ltmp172-(.Ltmp171-.Ltmp169))+(.Ltmp167-.Ltmp166), 0
.Ltmp173:
.org (.Ltmp173-(.Ltmp167-.Ltmp166))+(.Ltmp171-.Ltmp169), 0
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
.LBB41_15:                              // Block address taken
                                        // Label of block must be emitted
	cbz	x21, .LBB41_17
.LBB41_16:
	sub	x8, x19, x21
	mov	w1, wzr
	mov	x2, x21
	add	x0, x20, x8
	bl	memset
.LBB41_17:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	mov	x0, x21
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB41_18:                              // Block address taken
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
	b.ne	.LBB41_8
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
	b	.LBB41_8
.LBB41_20:                              // Block address taken
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
.Ltmp174:
	dsb	sy
.Ltmp175:
	.section	.altinstructions,"a",@progbits
.Ltmp176:
	.word	.Ltmp174-.Ltmp176
.Ltmp177:
	.word	alt_cb_patch_nops-.Ltmp177
	.hword	32800
	.byte	.Ltmp175-.Ltmp174
	.byte	.Ltmp178-.Ltmp179
	.text

.Ltmp179:
.Ltmp178:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB41_10
.LBB41_21:                              // Block address taken
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
	b.ne	.LBB41_13
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
	b	.LBB41_13
.LBB41_23:                              // Block address taken
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
.Ltmp180:
	dsb	sy
.Ltmp181:
	.section	.altinstructions,"a",@progbits
.Ltmp182:
	.word	.Ltmp180-.Ltmp182
.Ltmp183:
	.word	alt_cb_patch_nops-.Ltmp183
	.hword	32800
	.byte	.Ltmp181-.Ltmp180
	.byte	.Ltmp184-.Ltmp185
	.text

.Ltmp185:
.Ltmp184:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB41_15
.Lfunc_end41:
	.size	_inline_copy_from_user, .Lfunc_end41-_inline_copy_from_user
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_llseek
	.type	waveform_llseek,@function
	.word	3860367326                      // 0xe61887de
waveform_llseek:                        // @waveform_llseek
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	cbz	w2, .LBB42_4
// %bb.1:
	cmp	w2, #2
	b.eq	.LBB42_5
// %bb.2:
	cmp	w2, #1
	b.ne	.LBB42_7
// %bb.3:
	ldr	x9, [x0, #112]
	add	x1, x9, x1
.LBB42_4:
	tbz	x1, #63, .LBB42_6
	b	.LBB42_7
.LBB42_5:
	ldrsw	x9, [x8, #1408]
	add	x1, x1, x9
	tbnz	x1, #63, .LBB42_7
.LBB42_6:
	ldrsw	x8, [x8, #1408]
	cmp	x1, x8
	b.le	.LBB42_8
.LBB42_7:
	mov	x0, #-22                        // =0xffffffffffffffea
	ret
.LBB42_8:
	str	x1, [x0, #112]
	mov	x0, x1
	ret
.Lfunc_end42:
	.size	waveform_llseek, .Lfunc_end42-waveform_llseek
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
	ldrsw	x9, [x8, #1408]
	subs	x10, x9, x21
	b.le	.LBB43_4
// %bb.1:
	add	x11, x21, x2
	cmp	x11, x9
	csel	x19, x10, x2, hi
	lsr	x9, x19, #31
	cbnz	x9, .LBB43_7
// %bb.2:
	ldr	x23, [x8, #1520]
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
	cbz	x0, .LBB43_5
// %bb.3:
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB43_6
.LBB43_4:
	mov	x19, xzr
	b	.LBB43_6
.LBB43_5:
	ldr	x8, [x22]
	add	x8, x8, x19
	str	x8, [x22]
.LBB43_6:
	mov	x0, x19
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB43_7:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp186:
.Ltmp188:
	.word	.Ltmp187-.Ltmp188
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp189:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp190:
	.word	.Ltmp189-.Ltmp190
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp187:
	brk	#0x800
	//NO_APP
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB43_6
.Lfunc_end43:
	.size	waveform_read, .Lfunc_end43-waveform_read
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_write
	.type	waveform_write,@function
	.word	2590379680                      // 0x9a660ea0
waveform_write:                         // @waveform_write
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	mov	x29, sp
	ldr	x21, [x8, :lo12:global_ebc]
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	ldr	x23, [x3]
	str	x25, [sp, #16]                  // 8-byte Folded Spill
	ldr	w9, [x21, #2288]
	ldrsw	x8, [x21, #1408]
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	cmp	w9, #0
	cset	w22, eq
	subs	x9, x8, x23
	b.le	.LBB44_4
// %bb.1:
	add	x10, x23, x2
	cmp	x10, x8
	csel	x19, x9, x2, hi
	lsr	x8, x19, #31
	cbnz	x8, .LBB44_7
// %bb.2:
	ldr	x25, [x21, #1520]
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
	cbz	x0, .LBB44_5
// %bb.3:
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB44_6
.LBB44_4:
	mov	x19, #-28                       // =0xffffffffffffffe4
	b	.LBB44_6
.LBB44_5:
	ldr	x8, [x24]
	lsl	x20, x22, #32
	add	x8, x8, x19
	str	x8, [x24]
	ldr	x0, [x21, #1520]
	bl	epd_lut_from_mem_init
	mov	x3, #32                         // =0x20
	add	x0, x21, #1464
	mov	w1, #3                          // =0x3
	mov	w2, #30                         // =0x1e
	movk	x3, #1, lsl #32
	mov	x4, x20
	bl	epd_lut_get
.LBB44_6:
	mov	x0, x19
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldr	x25, [sp, #16]                  // 8-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB44_7:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp191:
.Ltmp193:
	.word	.Ltmp192-.Ltmp193
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp194:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp195:
	.word	.Ltmp194-.Ltmp195
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp192:
	brk	#0x800
	//NO_APP
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB44_6
.Lfunc_end44:
	.size	waveform_write, .Lfunc_end44-waveform_write
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
	ldr	x20, [x9, #1400]
	ldr	x9, [x8, #152]
	tbz	w9, #0, .LBB45_4
.LBB45_1:
	ldr	w1, [x8, #216]
	ldr	w8, [x19, #40]
	cmp	w8, w1
	b.eq	.LBB45_3
// %bb.2:
	mov	x0, x19
	bl	__vma_start_write
.LBB45_3:
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
.LBB45_4:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp196:
.Ltmp198:
	.word	.Ltmp197-.Ltmp198
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp199:
	.ascii	"include/linux/rwsem.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp200:
	.word	.Ltmp199-.Ltmp200
	.hword	88
	.hword	2305
	.p2align	2, 0x0
	.text
.Ltmp197:
	brk	#0x800
	//NO_APP
	ldr	x8, [x19, #16]
	b	.LBB45_1
.Lfunc_end45:
	.size	waveform_mmap, .Lfunc_end45-waveform_mmap
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_open
	.type	waveform_open,@function
	.word	2399652437                      // 0x8f07ca55
waveform_open:                          // @waveform_open
// %bb.0:
	mov	w0, wzr
	str	xzr, [x1, #112]
	ret
.Lfunc_end46:
	.size	waveform_open, .Lfunc_end46-waveform_open
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_llseek
	.type	transition_lut_llseek,@function
	.word	3860367326                      // 0xe61887de
transition_lut_llseek:                  // @transition_lut_llseek
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	cbz	w2, .LBB47_6
// %bb.1:
	cmp	w2, #2
	b.eq	.LBB47_4
// %bb.2:
	cmp	w2, #1
	b.ne	.LBB47_8
// %bb.3:
	add	x9, x0, #112
	b	.LBB47_5
.LBB47_4:
	add	x9, x8, #968
.LBB47_5:
	ldr	x9, [x9]
	add	x1, x9, x1
.LBB47_6:
	tbnz	x1, #63, .LBB47_8
// %bb.7:
	ldr	x8, [x8, #968]
	cmp	x1, x8
	b.ls	.LBB47_9
.LBB47_8:
	mov	x0, #-22                        // =0xffffffffffffffea
	ret
.LBB47_9:
	str	x1, [x0, #112]
	mov	x0, x1
	ret
.Lfunc_end47:
	.size	transition_lut_llseek, .Lfunc_end47-transition_lut_llseek
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
	add	x0, x9, #952
	bl	transition_copy_data
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end48:
	.size	transition_lut_read, .Lfunc_end48-transition_lut_read
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
	add	x0, x19, #952
	bl	transition_copy_data
	cmp	x0, #1
	b.lt	.LBB49_2
// %bb.1:
	mov	w8, #1                          // =0x1
	strb	w8, [x19, #1964]
.LBB49_2:
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end49:
	.size	transition_lut_write, .Lfunc_end49-transition_lut_write
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
	tbz	w9, #0, .LBB50_4
.LBB50_1:
	ldr	w1, [x8, #216]
	ldr	w8, [x19, #40]
	cmp	w8, w1
	b.eq	.LBB50_3
// %bb.2:
	mov	x0, x19
	bl	__vma_start_write
.LBB50_3:
	ldr	x8, [x19, #32]
	mov	w9, #335806464                  // =0x14040000
	mov	w0, wzr
	orr	x8, x8, x9
	add	x9, x20, #952
	str	x8, [x19, #32]
	str	x9, [x19, #96]
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB50_4:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp201:
.Ltmp203:
	.word	.Ltmp202-.Ltmp203
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp204:
	.ascii	"include/linux/rwsem.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp205:
	.word	.Ltmp204-.Ltmp205
	.hword	88
	.hword	2305
	.p2align	2, 0x0
	.text
.Ltmp202:
	brk	#0x800
	//NO_APP
	ldr	x8, [x19, #16]
	b	.LBB50_1
.Lfunc_end50:
	.size	transition_lut_mmap, .Lfunc_end50-transition_lut_mmap
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_open
	.type	transition_lut_open,@function
	.word	2399652437                      // 0x8f07ca55
transition_lut_open:                    // @transition_lut_open
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x8, [x8, #984]
	cmp	x8, #0
	mov	w8, #-19                        // =0xffffffed
	csel	w0, w8, wzr, eq
	ret
.Lfunc_end51:
	.size	transition_lut_open, .Lfunc_end51-transition_lut_open
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
	b.ls	.LBB52_15
// %bb.1:
	ldr	x20, [x0, #48]
	cmp	x3, x8
	csel	x27, x3, x8, lo
	cbz	x20, .LBB52_16
// %bb.2:
	ldr	w8, [x20, #8]
	str	x1, [sp]                        // 8-byte Folded Spill
	cbz	w8, .LBB52_17
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
	b	.LBB52_5
.LBB52_4:                               //   in Loop: Header=BB52_5 Depth=1
	add	w28, w28, #1
	bl	sg_next
	ldr	w8, [x20, #8]
	cmp	w28, w8
	mov	x8, x25
	b.hs	.LBB52_18
.LBB52_5:                               // =>This Inner Loop Header: Depth=1
	ldr	w9, [x0, #12]
	add	x25, x8, x9
	cmp	x23, x25
	ccmp	x27, x19, #0, lo
	b.ls	.LBB52_4
// %bb.6:                               //   in Loop: Header=BB52_5 Depth=1
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
	tbz	w21, #0, .LBB52_9
// %bb.7:                               //   in Loop: Header=BB52_5 Depth=1
	cbnz	x8, .LBB52_20
// %bb.8:                               //   in Loop: Header=BB52_5 Depth=1
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
	cbz	x0, .LBB52_11
	b	.LBB52_21
.LBB52_9:                               //   in Loop: Header=BB52_5 Depth=1
	cbnz	x8, .LBB52_23
// %bb.10:                              //   in Loop: Header=BB52_5 Depth=1
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
	cbnz	x0, .LBB52_24
.LBB52_11:                              //   in Loop: Header=BB52_5 Depth=1
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
	b.eq	.LBB52_14
// %bb.12:                              //   in Loop: Header=BB52_5 Depth=1
	ldr	x8, [x24, #16]
	cbz	x8, .LBB52_14
.LBB52_13:                              //   in Loop: Header=BB52_5 Depth=1
	add	x19, x22, x19
	ldur	w21, [x29, #-12]                // 4-byte Folded Reload
	ldr	x20, [sp, #8]                   // 8-byte Folded Reload
	cmp	x19, x27
	add	x23, x22, x23
	b.lo	.LBB52_4
	b	.LBB52_18
.LBB52_14:                              //   in Loop: Header=BB52_5 Depth=1
	mov	x20, x0
	bl	preempt_schedule
	mov	x0, x20
	b	.LBB52_13
.LBB52_15:
	tst	w21, #0x1
	mov	x8, #-28                        // =0xffffffffffffffe4
	csel	x19, xzr, x8, ne
	b	.LBB52_19
.LBB52_16:
	mov	x19, #-28                       // =0xffffffffffffffe4
	b	.LBB52_19
.LBB52_17:
	mov	x19, xzr
.LBB52_18:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x23, [x8]
.LBB52_19:
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
.LBB52_20:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp206:
.Ltmp208:
	.word	.Ltmp207-.Ltmp208
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp209:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp210:
	.word	.Ltmp209-.Ltmp210
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp207:
	brk	#0x800
	//NO_APP
.LBB52_21:
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
	b.eq	.LBB52_27
// %bb.22:
	ldr	x8, [x24, #16]
	cbnz	x8, .LBB52_26
	b	.LBB52_27
.LBB52_23:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp211:
.Ltmp213:
	.word	.Ltmp212-.Ltmp213
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp214:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp215:
	.word	.Ltmp214-.Ltmp215
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp212:
	brk	#0x800
	//NO_APP
.LBB52_24:
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
	b.eq	.LBB52_27
// %bb.25:
	ldr	x8, [x24, #16]
	cbz	x8, .LBB52_27
.LBB52_26:
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB52_19
.LBB52_27:
	bl	preempt_schedule
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB52_19
.Lfunc_end52:
	.size	transition_copy_data, .Lfunc_end52-transition_copy_data
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
	cbz	x20, .LBB53_9
// %bb.1:
	ldr	w8, [x20, #8]
	cbz	w8, .LBB53_9
// %bb.2:
	ldr	x9, [x0, #16]
	mov	x19, x0
	ldr	x0, [x20]
	mov	x8, xzr
	mov	w22, wzr
	lsl	x21, x9, #12
	b	.LBB53_4
.LBB53_3:                               //   in Loop: Header=BB53_4 Depth=1
	add	w22, w22, #1
	bl	sg_next
	ldr	w8, [x20, #8]
	cmp	w22, w8
	mov	x8, x23
	b.hs	.LBB53_9
.LBB53_4:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x0, #12]
	subs	x9, x21, x8
	add	x23, x8, x10
	b.lo	.LBB53_3
// %bb.5:                               //   in Loop: Header=BB53_4 Depth=1
	cmp	x21, x23
	b.hs	.LBB53_3
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
.Ltmp216:
	b	.LBB53_11
.Ltmp217:
	.section	.altinstructions,"a",@progbits
.Ltmp218:
	.word	.Ltmp216-.Ltmp218
.Ltmp219:
	.word	alt_cb_patch_nops-.Ltmp219
	.hword	32805
	.byte	.Ltmp217-.Ltmp216
	.byte	.Ltmp220-.Ltmp221
	.text

.Ltmp221:
.Ltmp220:

	//NO_APP
// %bb.7:
	add	x9, x9, #52
	mov	w10, #1                         // =0x1
	//APP
	stadd	w10, [x9]

	//NO_APP
.LBB53_8:
	mov	w0, wzr
	str	x8, [x19, #80]
	b	.LBB53_10
.LBB53_9:
	mov	w0, #2                          // =0x2
.LBB53_10:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB53_11:                              // Block address taken
                                        // Label of block must be emitted
	add	x9, x9, #52
	//APP
	// atomic_add
	prfm	pstl1strm, [x9]
.Ltmp222:
	ldxr	w10, [x9]
	add	w10, w10, #1
	stxr	w11, w10, [x9]
	cbnz	w11, .Ltmp222

	//NO_APP
	b	.LBB53_8
.Lfunc_end53:
	.size	transition_lut_vm_fault, .Lfunc_end53-transition_lut_vm_fault
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
	adrp	x1, .L.str.194
	add	x1, x1, :lo12:.L.str.194
	mov	x0, x19
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end54:
	.size	waveform_version_read, .Lfunc_end54-waveform_version_read
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
	adrp	x1, .L.str.194
	add	x1, x1, :lo12:.L.str.194
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
.Lfunc_end55:
	.size	pmic_name_read, .Lfunc_end55-pmic_name_read
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
	cbz	x0, .LBB56_2
// %bb.1:
	ldr	x8, [x0, #56]
	add	x1, x29, #28
	ldur	w16, [x8, #-4]
	movk	w17, #46199
	movk	w17, #3090, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp223
	brk	#0x8228
.Ltmp223:
	blr	x8
	b	.LBB56_3
.LBB56_2:
	ldr	x0, [x8, #104]
	add	x1, x29, #28
	bl	thermal_zone_get_temp
.LBB56_3:
	ldr	w2, [x29, #28]
	adrp	x1, .L.str.199
	add	x1, x1, :lo12:.L.str.199
	mov	x0, x19
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end56:
	.size	pmic_temp_read, .Lfunc_end56-pmic_temp_read
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
	cbz	x0, .LBB57_2
// %bb.1:
	ldr	x8, [x0, #64]
	ldur	w16, [x8, #-4]
	movk	w17, #30483
	movk	w17, #34500, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp224
	brk	#0x8228
.Ltmp224:
	blr	x8
	mov	w2, w0
	b	.LBB57_3
.LBB57_2:
	ldr	x0, [x8, #24]
	bl	regulator_get_voltage
	mov	w8, #19923                      // =0x4dd3
	movk	w8, #4194, lsl #16
	smull	x8, w0, w8
	lsr	x9, x8, #63
	asr	x8, x8, #38
	add	w2, w8, w9
.LBB57_3:
	adrp	x1, .L.str.199
	add	x1, x1, :lo12:.L.str.199
	mov	x0, x19
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end57:
	.size	pmic_vcom_read, .Lfunc_end57-pmic_vcom_read
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
	cbnz	w0, .LBB58_5
// %bb.1:
	ldr	x0, [x21, #16]
	cbz	x0, .LBB58_3
// %bb.2:
	ldr	w1, [x29, #28]
	bl	ebc_pmic_set_vcom
	cbz	w0, .LBB58_7
	b	.LBB58_4
.LBB58_3:
	ldr	x0, [x21, #24]
	ldr	w1, [x29, #28]
	bl	ebc_regulator_set_vcom
	cbz	w0, .LBB58_7
.LBB58_4:
	ldr	x0, [x21]
	adrp	x1, .L.str.203
	add	x1, x1, :lo12:.L.str.203
	bl	_dev_err
	b	.LBB58_6
.LBB58_5:
	ldr	x0, [x21]
	adrp	x1, .L.str.202
	add	x1, x1, :lo12:.L.str.202
	mov	x2, x20
	bl	_dev_err
.LBB58_6:
	mov	x19, #-1                        // =0xffffffffffffffff
.LBB58_7:
	mov	x0, x19
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end58:
	.size	pmic_vcom_write, .Lfunc_end58-pmic_vcom_write
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_version_read
	.type	ebc_version_read,@function
	.word	3745759836                      // 0xdf43c25c
ebc_version_read:                       // @ebc_version_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x0, x2
	adrp	x1, .L.str.194
	add	x1, x1, :lo12:.L.str.194
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	mov	x29, sp
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end59:
	.size	ebc_version_read, .Lfunc_end59-ebc_version_read
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
	adrp	x1, .L.str.199
	add	x1, x1, :lo12:.L.str.199
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	w8, [x8, #1760]
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end60:
	.size	ebc_state_read, .Lfunc_end60-ebc_state_read
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
.Lfunc_end61:
	.size	ebc_buf_state_read, .Lfunc_end61-ebc_buf_state_read
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
	cbz	w9, .LBB62_4
// %bb.1:
	ldr	x10, [x8, #1248]
	mov	w11, wzr
.LBB62_2:                               // =>This Inner Loop Header: Depth=1
	ldrb	w8, [x10, w11, sxtw]
	cbnz	w8, .LBB62_5
// %bb.3:                               //   in Loop: Header=BB62_2 Depth=1
	add	w11, w11, #1
	cmp	w9, w11
	b.ne	.LBB62_2
.LBB62_4:
	mov	w8, #2608                       // =0xa30
	mov	w0, #2                          // =0x2
	strb	wzr, [x2, #2]
	strh	w8, [x2]
	b	.LBB62_6
.LBB62_5:
	adrp	x1, .L.str.199
	add	x1, x1, :lo12:.L.str.199
	mov	x0, x2
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
.LBB62_6:
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end62:
	.size	auto_frame_state_read, .Lfunc_end62-auto_frame_state_read
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
	adrp	x1, .L.str.199
	add	x1, x1, :lo12:.L.str.199
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	w8, [x8, #1948]
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end63:
	.size	ebc_debug_level_read, .Lfunc_end63-ebc_debug_level_read
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
	cbnz	w0, .LBB64_3
// %bb.1:
	ldr	w8, [x29, #28]
	str	w8, [x21, #1948]
.LBB64_2:
	mov	x0, x19
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB64_3:
	ldr	x0, [x21, #1456]
	adrp	x1, .L.str.202
	add	x1, x1, :lo12:.L.str.202
	mov	x2, x20
	bl	_dev_err
	mov	x19, #-1                        // =0xffffffffffffffff
	b	.LBB64_2
.Lfunc_end64:
	.size	ebc_debug_level_write, .Lfunc_end64-ebc_debug_level_write
                                        // -- End function
	.p2align	2                               // -- Begin function wf_data_write
	.type	wf_data_write,@function
	.word	2510862855                      // 0x95a8ba07
wf_data_write:                          // @wf_data_write
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	mov	x0, x2
	ldr	x20, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	adrp	x1, .L.str.217
	add	x1, x1, :lo12:.L.str.217
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	ldr	x25, [x20, #1480]
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	mov	x19, x3
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	bl	strstr
	cbnz	x0, .LBB65_2
.LBB65_1:
	mov	x0, x19
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB65_2:
	ldrh	w20, [x20, #1464]
	adrp	x0, .L.str.218
	add	x0, x0, :lo12:.L.str.218
	mov	w1, w20
	bl	_printk
	mov	x21, xzr
	adrp	x22, .L.str.219
	add	x22, x22, :lo12:.L.str.219
	adrp	x23, .L.str.220
	add	x23, x23, :lo12:.L.str.220
.LBB65_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB65_4 Depth 2
                                        //       Child Loop BB65_6 Depth 3
	mov	x24, xzr
	mov	x26, x25
.LBB65_4:                               //   Parent Loop BB65_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB65_6 Depth 3
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cbz	w20, .LBB65_7
// %bb.5:                               //   in Loop: Header=BB65_4 Depth=2
	mov	x27, x20
	mov	x28, x26
.LBB65_6:                               //   Parent Loop BB65_3 Depth=1
                                        //     Parent Loop BB65_4 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x28]
	mov	x0, x23
	bl	_printk
	subs	x27, x27, #1
	add	x28, x28, #1024
	b.ne	.LBB65_6
.LBB65_7:                               //   in Loop: Header=BB65_4 Depth=2
	add	x24, x24, #1
	add	x26, x26, #32
	cmp	x24, #32
	b.ne	.LBB65_4
// %bb.8:                               //   in Loop: Header=BB65_3 Depth=1
	add	x21, x21, #1
	add	x25, x25, #1
	cmp	x21, #32
	b.ne	.LBB65_3
	b	.LBB65_1
.Lfunc_end65:
	.size	wf_data_write, .Lfunc_end65-wf_data_write
                                        // -- End function
	.p2align	2                               // -- Begin function overlay_wf_data_write
	.type	overlay_wf_data_write,@function
	.word	2510862855                      // 0x95a8ba07
overlay_wf_data_write:                  // @overlay_wf_data_write
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	mov	x0, x2
	ldr	x20, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	adrp	x1, .L.str.217
	add	x1, x1, :lo12:.L.str.217
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	ldr	x25, [x20, #1488]
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	mov	x19, x3
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	bl	strstr
	cbnz	x0, .LBB66_2
.LBB66_1:
	mov	x0, x19
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB66_2:
	ldrb	w20, [x20, #1465]
	adrp	x0, .L.str.218
	add	x0, x0, :lo12:.L.str.218
	mov	w1, w20
	bl	_printk
	mov	x21, xzr
	adrp	x22, .L.str.219
	add	x22, x22, :lo12:.L.str.219
	adrp	x23, .L.str.220
	add	x23, x23, :lo12:.L.str.220
.LBB66_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB66_4 Depth 2
                                        //       Child Loop BB66_6 Depth 3
	mov	x24, xzr
	mov	x26, x25
.LBB66_4:                               //   Parent Loop BB66_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB66_6 Depth 3
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cbz	w20, .LBB66_7
// %bb.5:                               //   in Loop: Header=BB66_4 Depth=2
	mov	x27, x20
	mov	x28, x26
.LBB66_6:                               //   Parent Loop BB66_3 Depth=1
                                        //     Parent Loop BB66_4 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x28]
	mov	x0, x23
	bl	_printk
	subs	x27, x27, #1
	add	x28, x28, #1024
	b.ne	.LBB66_6
.LBB66_7:                               //   in Loop: Header=BB66_4 Depth=2
	add	x24, x24, #1
	add	x26, x26, #32
	cmp	x24, #32
	b.ne	.LBB66_4
// %bb.8:                               //   in Loop: Header=BB66_3 Depth=1
	add	x21, x21, #1
	add	x25, x25, #1
	cmp	x21, #32
	b.ne	.LBB66_3
	b	.LBB66_1
.Lfunc_end66:
	.size	overlay_wf_data_write, .Lfunc_end66-overlay_wf_data_write
                                        // -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	2                               // -- Begin function ori_wf_data_write
	.type	ori_wf_data_write,@function
	.word	2510862855                      // 0x95a8ba07
ori_wf_data_write:                      // @ori_wf_data_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #144
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	mov	w8, #-1                         // =0xffffffff
	mov	w0, #262144                     // =0x40000
	mov	w1, #3520                       // =0xdc0
	stp	x28, x27, [sp, #64]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	mov	x21, x2
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	mov	x20, x3
	stp	w8, w8, [x29, #-8]
	stp	xzr, xzr, [sp, #24]
	stp	xzr, xzr, [sp, #8]
	bl	__kmalloc_large_noprof
	cbnz	x0, .LBB67_2
// %bb.1:
	adrp	x0, .L.str.225
	add	x0, x0, :lo12:.L.str.225
	bl	_printk
	b	.LBB67_16
.LBB67_2:
	mov	x19, x0
	str	x0, [sp, #24]
	adrp	x1, .L.str.217
	add	x1, x1, :lo12:.L.str.217
	mov	x0, x21
	bl	strstr
	cbnz	x0, .LBB67_4
// %bb.3:
	adrp	x0, .L.str.228
	add	x0, x0, :lo12:.L.str.228
	b	.LBB67_15
.LBB67_4:
	adrp	x1, .L.str.226
	add	x1, x1, :lo12:.L.str.226
	sub	x2, x29, #4
	sub	x3, x29, #8
	mov	x0, x21
	bl	sscanf
	ldp	w3, w2, [x29, #-8]
	adrp	x0, .L.str.227
	add	x0, x0, :lo12:.L.str.227
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
	ldur	w1, [x29, #-4]
	cmp	w1, #8
	b.hi	.LBB67_14
// %bb.5:
	ldur	w2, [x29, #-8]
	cmp	w2, #50
	b.hi	.LBB67_14
// %bb.6:
	add	x0, sp, #8
	mov	w3, #32                         // =0x20
	str	x20, [sp]                       // 8-byte Folded Spill
	bl	epd_lut_get_original
	ldrh	w21, [sp, #8]
	adrp	x0, .L.str.218
	add	x0, x0, :lo12:.L.str.218
	mov	w1, w21
	bl	_printk
	mov	x22, xzr
	adrp	x23, .L.str.219
	add	x23, x23, :lo12:.L.str.219
	adrp	x24, .L.str.220
	add	x24, x24, :lo12:.L.str.220
	mov	x20, x19
.LBB67_7:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB67_8 Depth 2
                                        //       Child Loop BB67_10 Depth 3
	mov	x25, xzr
	mov	x26, x20
.LBB67_8:                               //   Parent Loop BB67_7 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB67_10 Depth 3
	mov	x0, x23
	mov	w1, w25
	mov	w2, w22
	bl	_printk
	cbz	w21, .LBB67_11
// %bb.9:                               //   in Loop: Header=BB67_8 Depth=2
	mov	x28, x21
	mov	x27, x26
.LBB67_10:                              //   Parent Loop BB67_7 Depth=1
                                        //     Parent Loop BB67_8 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x27]
	mov	x0, x24
	bl	_printk
	subs	x28, x28, #1
	add	x27, x27, #1024
	b.ne	.LBB67_10
.LBB67_11:                              //   in Loop: Header=BB67_8 Depth=2
	add	x25, x25, #1
	add	x26, x26, #32
	cmp	x25, #32
	b.ne	.LBB67_8
// %bb.12:                              //   in Loop: Header=BB67_7 Depth=1
	add	x22, x22, #1
	add	x20, x20, #1
	cmp	x22, #32
	b.ne	.LBB67_7
// %bb.13:
	mov	x0, x19
	bl	kfree
	ldr	x20, [sp]                       // 8-byte Folded Reload
	b	.LBB67_16
.LBB67_14:
	adrp	x0, .L.str.229
	add	x0, x0, :lo12:.L.str.229
.LBB67_15:
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
.LBB67_16:
	mov	x0, x20
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #144
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end67:
	.size	ori_wf_data_write, .Lfunc_end67-ori_wf_data_write
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function record_pix_wf_write
	.type	record_pix_wf_write,@function
	.word	2510862855                      // 0x95a8ba07
record_pix_wf_write:                    // @record_pix_wf_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #48
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x3
	mov	x0, x2
	ldr	x20, [x8, :lo12:global_ebc]
	adrp	x1, .L.str.232
	add	x1, x1, :lo12:.L.str.232
	sub	x2, x29, #4
	add	x3, sp, #8
	add	x4, sp, #4
	stur	wzr, [x29, #-4]
	stp	wzr, wzr, [sp, #4]
	bl	sscanf
	cmp	w0, #2
	b.ne	.LBB68_2
// %bb.1:
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	str	w8, [x20, #2020]
	str	w9, [x20, #2024]
	b	.LBB68_3
.LBB68_2:
	mov	x19, #-22                       // =0xffffffffffffffea
.LBB68_3:
	mov	x0, x19
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #48
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end68:
	.size	record_pix_wf_write, .Lfunc_end68-record_pix_wf_write
                                        // -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	2                               // -- Begin function ebc_suspend
	.type	ebc_suspend,@function
	.word	1061512543                      // 0x3f45655f
ebc_suspend:                            // @ebc_suspend
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	ldr	x19, [x0, #152]
	mov	w1, wzr
	mov	x29, sp
	mov	x0, x19
	bl	ebc_power_set
	ldr	x0, [x19, #16]
	mov	w8, #1                          // =0x1
	str	w8, [x19, #1900]
	cbz	x0, .LBB69_2
// %bb.1:
	ldr	x8, [x0, #40]
	ldur	w16, [x8, #-4]
	movk	w17, #9139
	movk	w17, #22874, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp225
	brk	#0x8228
.Ltmp225:
	blr	x8
.LBB69_2:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.233
	add	x1, x1, :lo12:.L.str.233
	bl	_dev_info
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end69:
	.size	ebc_suspend, .Lfunc_end69-ebc_suspend
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
	cbz	x0, .LBB70_2
// %bb.1:
	ldr	x8, [x0, #48]
	ldur	w16, [x8, #-4]
	movk	w17, #9139
	movk	w17, #22874, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp226
	brk	#0x8228
.Ltmp226:
	blr	x8
.LBB70_2:
	ldr	x0, [x19, #1456]
	adrp	x1, .L.str.234
	add	x1, x1, :lo12:.L.str.234
	str	wzr, [x19, #1900]
	bl	_dev_info
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end70:
	.size	ebc_resume, .Lfunc_end70-ebc_resume
                                        // -- End function
	.type	__gendwarfksyms_rule_478,@object // @__gendwarfksyms_rule_478
	.section	.discard.gendwarfksyms.kabi_rules,"a",@progbits
__gendwarfksyms_rule_478:
	.asciz	"1\000declonly\000cgroup_kmi_ext_info\000"
	.size	__gendwarfksyms_rule_478, 32

	.type	__UNIQUE_ID___addressable_ebc_init640,@object // @__UNIQUE_ID___addressable_ebc_init640
	.section	.discard.addressable,"aw",@progbits
	.p2align	3, 0x0
__UNIQUE_ID___addressable_ebc_init640:
	.xword	ebc_init
	.size	__UNIQUE_ID___addressable_ebc_init640, 8

	.type	__exitcall_ebc_exit,@object     // @__exitcall_ebc_exit
	.section	.exitcall.exit,"aw",@progbits
	.p2align	3, 0x0
__exitcall_ebc_exit:
	.xword	ebc_exit
	.size	__exitcall_ebc_exit, 8

	.type	__UNIQUE_ID_author641,@object   // @__UNIQUE_ID_author641
	.section	.modinfo,"a",@progbits
__UNIQUE_ID_author641:
	.asciz	"rkebc.author=Zorro Liu <zorro.liu@rock-chips.com>"
	.size	__UNIQUE_ID_author641, 50

	.type	__UNIQUE_ID_description642,@object // @__UNIQUE_ID_description642
__UNIQUE_ID_description642:
	.asciz	"rkebc.description=ROCKCHIP EBC Driver"
	.size	__UNIQUE_ID_description642, 38

	.type	__UNIQUE_ID_file643,@object     // @__UNIQUE_ID_file643
__UNIQUE_ID_file643:
	.asciz	"rkebc.file=$EBC_DEV_PATH/rkebc"
	.size	__UNIQUE_ID_file643, 31

	.type	__UNIQUE_ID_license644,@object  // @__UNIQUE_ID_license644
__UNIQUE_ID_license644:
	.asciz	"rkebc.license=GPL v2"
	.size	__UNIQUE_ID_license644, 21

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
	.asciz	"9.04_y8"
	.size	.L.str.3, 8

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

	.type	ebc_auto_task,@object           // @ebc_auto_task
	.local	ebc_auto_task
	.comm	ebc_auto_task,8,8
	.type	.L.str.47,@object               // @.str.47
.L.str.47:
	.asciz	"overlay frame done\n"
	.size	.L.str.47, 20

	.type	.L.str.48,@object               // @.str.48
.L.str.48:
	.asciz	"auto task break\n"
	.size	.L.str.48, 17

	.type	.L.str.49,@object               // @.str.49
.L.str.49:
	.asciz	"auto frame done\n"
	.size	.L.str.49, 17

	.type	.L.str.50,@object               // @.str.50
.L.str.50:
	.asciz	"part task break\n"
	.size	.L.str.50, 17

	.type	.L.str.51,@object               // @.str.51
.L.str.51:
	.asciz	"frame done\n"
	.size	.L.str.51, 12

	.type	ebc_thread_wq,@object           // @ebc_thread_wq
	.data
	.p2align	3, 0x0
ebc_thread_wq:
	.zero	4
	.zero	4
	.xword	ebc_thread_wq+8
	.xword	ebc_thread_wq+8
	.size	ebc_thread_wq, 24

	.type	.L.str.53,@object               // @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"record pix pos wf: [%d, %d]: [%s]\n"
	.size	.L.str.53, 35

	.type	.L.str.54,@object               // @.str.54
.L.str.54:
	.asciz	"panel,width"
	.size	.L.str.54, 12

	.type	.L.str.55,@object               // @.str.55
.L.str.55:
	.asciz	"panel,height"
	.size	.L.str.55, 13

	.type	.L.str.56,@object               // @.str.56
.L.str.56:
	.asciz	"panel,vir_width"
	.size	.L.str.56, 16

	.type	.L.str.57,@object               // @.str.57
.L.str.57:
	.asciz	"panel,vir_height"
	.size	.L.str.57, 17

	.type	.L.str.58,@object               // @.str.58
.L.str.58:
	.asciz	"panel,sdck"
	.size	.L.str.58, 11

	.type	.L.str.59,@object               // @.str.59
.L.str.59:
	.asciz	"panel,lsl"
	.size	.L.str.59, 10

	.type	.L.str.60,@object               // @.str.60
.L.str.60:
	.asciz	"panel,lbl"
	.size	.L.str.60, 10

	.type	.L.str.61,@object               // @.str.61
.L.str.61:
	.asciz	"panel,ldl"
	.size	.L.str.61, 10

	.type	.L.str.62,@object               // @.str.62
.L.str.62:
	.asciz	"panel,lel"
	.size	.L.str.62, 10

	.type	.L.str.63,@object               // @.str.63
.L.str.63:
	.asciz	"panel,gdck-sta"
	.size	.L.str.63, 15

	.type	.L.str.64,@object               // @.str.64
.L.str.64:
	.asciz	"panel,lgonl"
	.size	.L.str.64, 12

	.type	.L.str.65,@object               // @.str.65
.L.str.65:
	.asciz	"panel,fsl"
	.size	.L.str.65, 10

	.type	.L.str.66,@object               // @.str.66
.L.str.66:
	.asciz	"panel,fbl"
	.size	.L.str.66, 10

	.type	.L.str.67,@object               // @.str.67
.L.str.67:
	.asciz	"panel,fdl"
	.size	.L.str.67, 10

	.type	.L.str.68,@object               // @.str.68
.L.str.68:
	.asciz	"panel,fel"
	.size	.L.str.68, 10

	.type	.L.str.69,@object               // @.str.69
.L.str.69:
	.asciz	"panel,panel_16bit"
	.size	.L.str.69, 18

	.type	.L.str.70,@object               // @.str.70
.L.str.70:
	.asciz	"panel,panel_color"
	.size	.L.str.70, 18

	.type	.L.str.71,@object               // @.str.71
.L.str.71:
	.asciz	"panel,mirror"
	.size	.L.str.71, 13

	.type	.L.str.72,@object               // @.str.72
.L.str.72:
	.asciz	"panel,width-mm"
	.size	.L.str.72, 15

	.type	.L.str.73,@object               // @.str.73
.L.str.73:
	.asciz	"panel,height-mm"
	.size	.L.str.73, 16

	.type	.L.str.74,@object               // @.str.74
.L.str.74:
	.asciz	"panel,disable_logo"
	.size	.L.str.74, 19

	.type	.L.str.75,@object               // @.str.75
.L.str.75:
	.asciz	"panel,rearrange"
	.size	.L.str.75, 16

	.type	.L.str.76,@object               // @.str.76
.L.str.76:
	.asciz	"panel,sdoe_mode"
	.size	.L.str.76, 16

	.type	.L.str.77,@object               // @.str.77
.L.str.77:
	.asciz	"panel,sdce_width"
	.size	.L.str.77, 17

	.type	.L.str.78,@object               // @.str.78
.L.str.78:
	.asciz	"panel,gds"
	.size	.L.str.78, 10

	.type	.L.str.79,@object               // @.str.79
.L.str.79:
	.asciz	"panel,gdl"
	.size	.L.str.79, 10

	.type	.L.str.80,@object               // @.str.80
.L.str.80:
	.asciz	"pmic-early-power-on"
	.size	.L.str.80, 20

	.type	.L.str.81,@object               // @.str.81
.L.str.81:
	.asciz	"waveform-region"
	.size	.L.str.81, 16

	.type	.L.str.82,@object               // @.str.82
.L.str.82:
	.asciz	"wf,mode_table"
	.size	.L.str.82, 14

	.type	.L.str.83,@object               // @.str.83
.L.str.83:
	.asciz	"%s:%d: failed to get mem from reserved\n"
	.size	.L.str.83, 40

	.type	.L__func__.ebc_lut_table_init,@object // @__func__.ebc_lut_table_init
.L__func__.ebc_lut_table_init:
	.asciz	"ebc_lut_table_init"
	.size	.L__func__.ebc_lut_table_init, 19

	.type	.L.str.84,@object               // @.str.84
.L.str.84:
	.asciz	"Failed to read waveform from mem, we use waveform file from kernel file instead\n"
	.size	.L.str.84, 81

	.type	.L.str.85,@object               // @.str.85
.L.str.85:
	.asciz	"Failed to read waveform file from kernel, no waveform!!!\n"
	.size	.L.str.85, 58

	.type	.L.str.86,@object               // @.str.86
.L.str.86:
	.asciz	"ebc-disable-osd"
	.size	.L.str.86, 16

	.type	.L.str.87,@object               // @.str.87
.L.str.87:
	.asciz	"ebc-disable-transition"
	.size	.L.str.87, 23

	.type	.L.str.88,@object               // @.str.88
.L.str.88:
	.asciz	"failed to alloc direct fb %d from cma, ret: %d\n"
	.size	.L.str.88, 48

	.type	.L.str.89,@object               // @.str.89
.L.str.89:
	.asciz	"failed to init ebc buf list, ret: %d\n"
	.size	.L.str.89, 38

	.type	.L.str.90,@object               // @.str.90
.L.str.90:
	.asciz	"ebc-max-dsp-fb-num"
	.size	.L.str.90, 19

	.type	.L.str.91,@object               // @.str.91
.L.str.91:
	.asciz	"failed to alloc ebc dsp buf %d from dma, ret: %d\n"
	.size	.L.str.91, 50

	.type	.L.str.92,@object               // @.str.92
.L.str.92:
	.asciz	"failed to init ebc dsp buf %d from dma, ret: %d\n"
	.size	.L.str.92, 49

	.type	.L.str.93,@object               // @.str.93
.L.str.93:
	.asciz	"failed to alloc ebc osd buf %d from dma, ret: %d\n"
	.size	.L.str.93, 50

	.type	.L.str.94,@object               // @.str.94
.L.str.94:
	.asciz	"failed to alloc wf_table_buf from dma, ret: %d\n"
	.size	.L.str.94, 48

	.type	.L.str.95,@object               // @.str.95
.L.str.95:
	.asciz	"failed to alloc trans_lut from dma, ret: %d\n"
	.size	.L.str.95, 45

	.type	.L.str.96,@object               // @.str.96
.L.str.96:
	.asciz	"failed to alloc auto_frame_count from dma, ret: %d\n"
	.size	.L.str.96, 52

	.type	.L.str.97,@object               // @.str.97
.L.str.97:
	.asciz	"failed to alloc auto_image_new from dma, ret: %d\n"
	.size	.L.str.97, 50

	.type	.L.str.98,@object               // @.str.98
.L.str.98:
	.asciz	"failed to alloc auto_image_old from dma, ret: %d\n"
	.size	.L.str.98, 50

	.type	.L.str.99,@object               // @.str.99
.L.str.99:
	.asciz	"failed to alloc auto_image_bg from dma, ret: %d\n"
	.size	.L.str.99, 49

	.type	.L.str.100,@object              // @.str.100
.L.str.100:
	.asciz	"failed to alloc auto_wf_index from dma, ret: %d\n"
	.size	.L.str.100, 49

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
	.asciz	"ebc_taskup"
	.size	.L.str.103, 11

	.type	ebc_auto_assist_task,@object    // @ebc_auto_assist_task
	.local	ebc_auto_assist_task
	.comm	ebc_auto_assist_task,8,8
	.type	.L.str.104,@object              // @.str.104
.L.str.104:
	.asciz	"failed to create ebc_taskup thread\n"
	.size	.L.str.104, 36

	.type	.L.str.105,@object              // @.str.105
.L.str.105:
	.asciz	"ebc_thread"
	.size	.L.str.105, 11

	.type	ebc_task,@object                // @ebc_task
	.local	ebc_task
	.comm	ebc_task,8,8
	.type	.L.str.106,@object              // @.str.106
.L.str.106:
	.asciz	"failed to run ebc thread\n"
	.size	.L.str.106, 26

	.type	ebc_auto_thread_sem,@object     // @ebc_auto_thread_sem
	.data
	.p2align	3, 0x0
ebc_auto_thread_sem:
	.zero	4
	.word	1                               // 0x1
	.xword	ebc_auto_thread_sem+8
	.xword	ebc_auto_thread_sem+8
	.size	ebc_auto_thread_sem, 24

	.type	ebc_assist_finished_flag_sem,@object // @ebc_assist_finished_flag_sem
	.p2align	3, 0x0
ebc_assist_finished_flag_sem:
	.zero	4
	.word	1                               // 0x1
	.xword	ebc_assist_finished_flag_sem+8
	.xword	ebc_assist_finished_flag_sem+8
	.size	ebc_assist_finished_flag_sem, 24

	.type	.L.str.107,@object              // @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"transition type = %d\n"
	.size	.L.str.107, 22

	.type	ebc_auto_assist_thread_sem,@object // @ebc_auto_assist_thread_sem
	.data
	.p2align	3, 0x0
ebc_auto_assist_thread_sem:
	.zero	4
	.word	1                               // 0x1
	.xword	ebc_auto_assist_thread_sem+8
	.xword	ebc_auto_assist_thread_sem+8
	.size	ebc_auto_assist_thread_sem, 24

	.type	.L.str.108,@object              // @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"ebc suspend, drop osd buf\n"
	.size	.L.str.108, 27

	.type	.L.str.109,@object              // @.str.109
.L.str.109:
	.asciz	"full win and prev mode not overlay, drop this osd buf\n"
	.size	.L.str.109, 55

	.type	.L.str.110,@object              // @.str.110
.L.str.110:
	.asciz	"break from part work, frame left = %d\n"
	.size	.L.str.110, 39

	.type	.L.str.111,@object              // @.str.111
.L.str.111:
	.asciz	"control bg update under overlay mode, overlay_bg_update=0\n"
	.size	.L.str.111, 59

	.type	.L.str.112,@object              // @.str.112
.L.str.112:
	.asciz	"break from fast mode, process it\n"
	.size	.L.str.112, 34

	.type	.L.str.113,@object              // @.str.113
.L.str.113:
	.asciz	"overlay mode start, frame_total=%d, bw_frame = %d\n"
	.size	.L.str.113, 51

	.type	.L.str.114,@object              // @.str.114
.L.str.114:
	.asciz	"frame start under overlay, mode = %d, framecount = %d\n"
	.size	.L.str.114, 55

	.type	.L.str.115,@object              // @.str.115
.L.str.115:
	.asciz	"mode change, force update lut, mode = %d, framecount = %d\n"
	.size	.L.str.115, 59

	.type	.L.str.116,@object              // @.str.116
.L.str.116:
	.asciz	"update frame under overlay, mode = %d, framecount = %d\n"
	.size	.L.str.116, 56

	.type	.L.str.117,@object              // @.str.117
.L.str.117:
	.asciz	"ebc is busy now, waiting prev mode end...\n"
	.size	.L.str.117, 43

	.type	.L.str.118,@object              // @.str.118
.L.str.118:
	.asciz	"prev refresh mode end\n"
	.size	.L.str.118, 23

	.type	.L.str.119,@object              // @.str.119
.L.str.119:
	.asciz	"check_part_mode==0, no need refresh\n"
	.size	.L.str.119, 37

	.type	.L.str.120,@object              // @.str.120
.L.str.120:
	.asciz	"frame start, mode = %d, framecount = %d\n"
	.size	.L.str.120, 41

	.type	.L.str.121,@object              // @.str.121
.L.str.121:
	.asciz	"auto mode start, frame_total=%d\n"
	.size	.L.str.121, 33

	.type	.L.str.122,@object              // @.str.122
.L.str.122:
	.asciz	"last frame not complete, left = %d, change to force full\n"
	.size	.L.str.122, 58

	.type	.L.str.123,@object              // @.str.123
.L.str.123:
	.asciz	"check difference is 0, no need refresh\n"
	.size	.L.str.123, 40

	.type	.L.str.124,@object              // @.str.124
.L.str.124:
	.asciz	"change from fast mode\n"
	.size	.L.str.124, 23

	.type	.L.str.125,@object              // @.str.125
.L.str.125:
	.asciz	"frame start, mode = %d, framecount = %d vs %d\n"
	.size	.L.str.125, 47

	.type	.L.str.126,@object              // @.str.126
.L.str.126:
	.asciz	"update repair buf\n"
	.size	.L.str.126, 19

	.type	.L.str.127,@object              // @.str.127
.L.str.127:
	.asciz	"waiting frame done\n"
	.size	.L.str.127, 20

	.type	.L.str.128,@object              // @.str.128
.L.str.128:
	.asciz	"----update repair buf timeout----\n"
	.size	.L.str.128, 35

	.type	.L.str.129,@object              // @.str.129
.L.str.129:
	.asciz	"break from part work, do something before turn to overlay work\n"
	.size	.L.str.129, 64

	.type	.L.str.130,@object              // @.str.130
.L.str.130:
	.asciz	"no buffer or next mode change, do repair..........\n"
	.size	.L.str.130, 52

	.type	.L.str.131,@object              // @.str.131
.L.str.131:
	.asciz	"next mode change, do repair..........\n"
	.size	.L.str.131, 39

	.type	.L.str.132,@object              // @.str.132
.L.str.132:
	.asciz	"no buffer, do last ghost remove..........\n"
	.size	.L.str.132, 43

	.type	.L.str.133,@object              // @.str.133
.L.str.133:
	.asciz	"ghost remove break, frame_left %d\n"
	.size	.L.str.133, 35

	.type	.L.str.134,@object              // @.str.134
.L.str.134:
	.asciz	"ebc buffer mode %d error!!!\n"
	.size	.L.str.134, 29

	.type	.L.str.135,@object              // @.str.135
.L.str.135:
	.asciz	"force temperature = %d\n"
	.size	.L.str.135, 24

	.type	.L.str.136,@object              // @.str.136
.L.str.136:
	.asciz	"temperature = %d, out of range0~50 ,use 0 \n"
	.size	.L.str.136, 44

	.type	.L.str.137,@object              // @.str.137
.L.str.137:
	.asciz	"temperature = %d, out of range0~50 ,use 50 \n"
	.size	.L.str.137, 45

	.type	.L.str.138,@object              // @.str.138
.L.str.138:
	.asciz	"ebc_pmic_read_temp failed, ret = %d, use 25 \n"
	.size	.L.str.138, 46

	.type	.L.str.139,@object              // @.str.139
.L.str.139:
	.asciz	"lut update use temperature_fix = %d, temperature = %d\n"
	.size	.L.str.139, 55

	.type	.L.str.140,@object              // @.str.140
.L.str.140:
	.asciz	"lut update use temperature = %d, temperature_fix = %d\n"
	.size	.L.str.140, 55

	.type	.L.str.141,@object              // @.str.141
.L.str.141:
	.asciz	"get lut data failed\n"
	.size	.L.str.141, 21

	.type	.L.str.142,@object              // @.str.142
.L.str.142:
	.asciz	"%s: overlay no need to update\n"
	.size	.L.str.142, 31

	.type	.L__func__.ebc_frame_start,@object // @__func__.ebc_frame_start
.L__func__.ebc_frame_start:
	.asciz	"ebc_frame_start"
	.size	.L__func__.ebc_frame_start, 16

	.type	.L.str.143,@object              // @.str.143
.L.str.143:
	.asciz	"%s: auto no need to update\n"
	.size	.L.str.143, 28

	.type	.L.str.144,@object              // @.str.144
.L.str.144:
	.asciz	"%s: overlay bg no need to update, overlay_bg_update=1\n"
	.size	.L.str.144, 55

	.type	.L__func__.ebc_overlay_bg_frame_start,@object // @__func__.ebc_overlay_bg_frame_start
.L__func__.ebc_overlay_bg_frame_start:
	.asciz	"ebc_overlay_bg_frame_start"
	.size	.L__func__.ebc_overlay_bg_frame_start, 27

	.type	.L.str.145,@object              // @.str.145
.L.str.145:
	.asciz	"ebc hw power on res:%d\n"
	.size	.L.str.145, 24

	.type	.L.str.146,@object              // @.str.146
.L.str.146:
	.asciz	"ebc hw power off res:%d\n"
	.size	.L.str.146, 25

	.type	.L.str.147,@object              // @.str.147
.L.str.147:
	.asciz	"ebc"
	.size	.L.str.147, 4

	.type	.L.str.148,@object              // @.str.148
.L.str.148:
	.asciz	"ebc_frame_control_timeout, overlay_bg_update=1\n"
	.size	.L.str.148, 48

	.type	.L.str.149,@object              // @.str.149
.L.str.149:
	.asciz	"ebc_overlay_enable_timeout\n"
	.size	.L.str.149, 28

	.type	.L.str.150,@object              // @.str.150
.L.str.150:
	.asciz	"ulogo_addr="
	.size	.L.str.150, 12

	.type	.L.str.151,@object              // @.str.151
.L.str.151:
	.asciz	"klogo_addr="
	.size	.L.str.151, 12

	.type	.L.str.152,@object              // @.str.152
.L.str.152:
	.asciz	"memory-region"
	.size	.L.str.152, 14

	.type	.L.str.153,@object              // @.str.153
.L.str.153:
	.asciz	"Couldn't address to resource for reserved memory\n"
	.size	.L.str.153, 50

	.type	.L.str.154,@object              // @.str.154
.L.str.154:
	.asciz	"reserved memory not enough, need 0x%x\n"
	.size	.L.str.154, 39

	.type	.L.str.155,@object              // @.str.155
.L.str.155:
	.asciz	"Couldn't remap for reserved memory\n"
	.size	.L.str.155, 36

	.type	.L.str.156,@object              // @.str.156
.L.str.156:
	.asciz	"ulogo_addr=0x%x"
	.size	.L.str.156, 16

	.type	.L.str.157,@object              // @.str.157
.L.str.157:
	.asciz	"have ulogo display, ulogo addr = 0x%x\n"
	.size	.L.str.157, 39

	.type	.L.str.158,@object              // @.str.158
.L.str.158:
	.asciz	"malloc ulogo buffer failed\n"
	.size	.L.str.158, 28

	.type	.L.str.159,@object              // @.str.159
.L.str.159:
	.asciz	"klogo_addr=0x%x"
	.size	.L.str.159, 16

	.type	.L.str.160,@object              // @.str.160
.L.str.160:
	.asciz	"need show klogo, klogo addr = 0x%x\n"
	.size	.L.str.160, 36

	.type	.L.str.161,@object              // @.str.161
.L.str.161:
	.asciz	"malloc klogo buffer failed\n"
	.size	.L.str.161, 28

	.type	.L.str.162,@object              // @.str.162
.L.str.162:
	.asciz	"no uboot logo, panel init\n"
	.size	.L.str.162, 27

	.type	.L.str.163,@object              // @.str.163
.L.str.163:
	.asciz	"ebc_dev_logo"
	.size	.L.str.163, 13

	.type	.L.str.164,@object              // @.str.164
.L.str.164:
	.asciz	"ebc_dev_reset"
	.size	.L.str.164, 14

	.type	ebc_misc,@object                // @ebc_misc
	.data
	.p2align	3, 0x0
ebc_misc:
	.word	243                             // 0xf3
	.zero	4
	.xword	.L.str.147
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

	.type	.L.str.167,@object              // @.str.167
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.167:
	.asciz	"%s: argp NULL\n"
	.size	.L.str.167, 15

	.type	.L__func__.ebc_io_ctl,@object   // @__func__.ebc_io_ctl
.L__func__.ebc_io_ctl:
	.asciz	"ebc_io_ctl"
	.size	.L__func__.ebc_io_ctl, 11

	.type	.L.str.168,@object              // @.str.168
.L.str.168:
	.asciz	"enable bg control\n"
	.size	.L.str.168, 19

	.type	.L.str.169,@object              // @.str.169
.L.str.169:
	.asciz	"disable bg control\n"
	.size	.L.str.169, 20

	.type	.L.str.170,@object              // @.str.170
.L.str.170:
	.asciz	"enable ebc overlay, you can use osd buf to show something over the system display\n"
	.size	.L.str.170, 83

	.type	.L.str.171,@object              // @.str.171
.L.str.171:
	.asciz	"disable ebc overlay\n"
	.size	.L.str.171, 21

	.type	.L.str.172,@object              // @.str.172
.L.str.172:
	.asciz	"EBC_GET_BUFFER_INFO failed\n"
	.size	.L.str.172, 28

	.type	.L.str.173,@object              // @.str.173
.L.str.173:
	.asciz	"EBC_SET_DIFF_PERCENT = %d\n"
	.size	.L.str.173, 27

	.type	.L.str.174,@object              // @.str.174
.L.str.174:
	.asciz	"EBC_FB_BLANK\n"
	.size	.L.str.174, 14

	.type	.L.str.175,@object              // @.str.175
.L.str.175:
	.asciz	"EBC_FB_UNBLANK\n"
	.size	.L.str.175, 16

	.type	.L.str.176,@object              // @.str.176
.L.str.176:
	.asciz	"EBC_ENABLE_REPAIR = %d\n"
	.size	.L.str.176, 24

	.type	.L.str.177,@object              // @.str.177
.L.str.177:
	.asciz	"EBC_BALANCE_CTL = %d\n"
	.size	.L.str.177, 22

	.type	.L.str.178,@object              // @.str.178
.L.str.178:
	.asciz	"EBC_SET_TRANSITION_WIDTH = %d\n"
	.size	.L.str.178, 31

	.type	.L.str.179,@object              // @.str.179
.L.str.179:
	.asciz	"EBC_SET_TRANSITION_TYPE = %d\n"
	.size	.L.str.179, 30

	.type	.L.str.180,@object              // @.str.180
.L.str.180:
	.asciz	"EBC_SET_FORCE_TEMPERATURE = %d\n"
	.size	.L.str.180, 32

	.type	.L.str.181,@object              // @.str.181
.L.str.181:
	.asciz	"EBC_ENABLE_WAVEFORM_FIX = %d\n"
	.size	.L.str.181, 30

	.type	.L.str.182,@object              // @.str.182
.L.str.182:
	.asciz	"EBC_SET_REGAL_TYPE = %d\n"
	.size	.L.str.182, 25

	.type	.L.str.183,@object              // @.str.183
.L.str.183:
	.asciz	"EBC_FORCE_FULL_USE_REGAL = %d\n"
	.size	.L.str.183, 31

	.type	.L.str.184,@object              // @.str.184
.L.str.184:
	.asciz	"%s: unknown cmd\n"
	.size	.L.str.184, 17

	.type	get_file.__already_done,@object // @get_file.__already_done
	.section	.data..once,"aw",@progbits
get_file.__already_done:
	.byte	0                               // 0x0
	.size	get_file.__already_done, 1

	.type	.L.str.185,@object              // @.str.185
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.185:
	.asciz	"struct file::f_count incremented from zero; use-after-free condition present!\n"
	.size	.L.str.185, 79

	.type	.L.str.186,@object              // @.str.186
.L.str.186:
	.asciz	"waveform"
	.size	.L.str.186, 9

	.type	waveform_misc,@object           // @waveform_misc
	.data
	.p2align	3, 0x0
waveform_misc:
	.word	244                             // 0xf4
	.zero	4
	.xword	.L.str.186
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

	.type	.L.str.189,@object              // @.str.189
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.189:
	.asciz	"transition_lut"
	.size	.L.str.189, 15

	.type	transition_lut_misc,@object     // @transition_lut_misc
	.data
	.p2align	3, 0x0
transition_lut_misc:
	.word	245                             // 0xf5
	.zero	4
	.xword	.L.str.189
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

	.type	.L.str.192,@object              // @.str.192
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.192:
	.asciz	"waveform_version"
	.size	.L.str.192, 17

	.type	dev_attr_waveform_version,@object // @dev_attr_waveform_version
	.data
	.p2align	3, 0x0
dev_attr_waveform_version:
	.xword	.L.str.192
	.hword	292                             // 0x124
	.zero	6
	.xword	waveform_version_read
	.xword	0
	.size	dev_attr_waveform_version, 32

	.type	.L.str.194,@object              // @.str.194
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.194:
	.asciz	"%s\n"
	.size	.L.str.194, 4

	.type	.L.str.195,@object              // @.str.195
.L.str.195:
	.asciz	"pmic_name"
	.size	.L.str.195, 10

	.type	dev_attr_pmic_name,@object      // @dev_attr_pmic_name
	.data
	.p2align	3, 0x0
dev_attr_pmic_name:
	.xword	.L.str.195
	.hword	292                             // 0x124
	.zero	6
	.xword	pmic_name_read
	.xword	0
	.size	dev_attr_pmic_name, 32

	.type	.L.str.197,@object              // @.str.197
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.197:
	.asciz	"pmic_temp"
	.size	.L.str.197, 10

	.type	dev_attr_pmic_temp,@object      // @dev_attr_pmic_temp
	.data
	.p2align	3, 0x0
dev_attr_pmic_temp:
	.xword	.L.str.197
	.hword	292                             // 0x124
	.zero	6
	.xword	pmic_temp_read
	.xword	0
	.size	dev_attr_pmic_temp, 32

	.type	.L.str.199,@object              // @.str.199
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.199:
	.asciz	"%d\n"
	.size	.L.str.199, 4

	.type	.L.str.200,@object              // @.str.200
.L.str.200:
	.asciz	"pmic_vcom"
	.size	.L.str.200, 10

	.type	dev_attr_pmic_vcom,@object      // @dev_attr_pmic_vcom
	.data
	.p2align	3, 0x0
dev_attr_pmic_vcom:
	.xword	.L.str.200
	.hword	420                             // 0x1a4
	.zero	6
	.xword	pmic_vcom_read
	.xword	pmic_vcom_write
	.size	dev_attr_pmic_vcom, 32

	.type	.L.str.202,@object              // @.str.202
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.202:
	.asciz	"invalid value = %s\n"
	.size	.L.str.202, 20

	.type	.L.str.203,@object              // @.str.203
.L.str.203:
	.asciz	"set vcom value failed\n"
	.size	.L.str.203, 23

	.type	.L.str.204,@object              // @.str.204
.L.str.204:
	.asciz	"ebc_version"
	.size	.L.str.204, 12

	.type	dev_attr_ebc_version,@object    // @dev_attr_ebc_version
	.data
	.p2align	3, 0x0
dev_attr_ebc_version:
	.xword	.L.str.204
	.hword	292                             // 0x124
	.zero	6
	.xword	ebc_version_read
	.xword	0
	.size	dev_attr_ebc_version, 32

	.type	.L.str.206,@object              // @.str.206
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.206:
	.asciz	"ebc_state"
	.size	.L.str.206, 10

	.type	dev_attr_ebc_state,@object      // @dev_attr_ebc_state
	.data
	.p2align	3, 0x0
dev_attr_ebc_state:
	.xword	.L.str.206
	.hword	292                             // 0x124
	.zero	6
	.xword	ebc_state_read
	.xword	0
	.size	dev_attr_ebc_state, 32

	.type	.L.str.208,@object              // @.str.208
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.208:
	.asciz	"ebc_buf_state"
	.size	.L.str.208, 14

	.type	dev_attr_ebc_buf_state,@object  // @dev_attr_ebc_buf_state
	.data
	.p2align	3, 0x0
dev_attr_ebc_buf_state:
	.xword	.L.str.208
	.hword	292                             // 0x124
	.zero	6
	.xword	ebc_buf_state_read
	.xword	0
	.size	dev_attr_ebc_buf_state, 32

	.type	.L.str.210,@object              // @.str.210
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.210:
	.asciz	"auto_frame_state"
	.size	.L.str.210, 17

	.type	dev_attr_auto_frame_state,@object // @dev_attr_auto_frame_state
	.data
	.p2align	3, 0x0
dev_attr_auto_frame_state:
	.xword	.L.str.210
	.hword	292                             // 0x124
	.zero	6
	.xword	auto_frame_state_read
	.xword	0
	.size	dev_attr_auto_frame_state, 32

	.type	.L.str.212,@object              // @.str.212
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.212:
	.asciz	"0\n"
	.size	.L.str.212, 3

	.type	.L.str.213,@object              // @.str.213
.L.str.213:
	.asciz	"ebc_debug_level"
	.size	.L.str.213, 16

	.type	dev_attr_ebc_debug_level,@object // @dev_attr_ebc_debug_level
	.data
	.p2align	3, 0x0
dev_attr_ebc_debug_level:
	.xword	.L.str.213
	.hword	420                             // 0x1a4
	.zero	6
	.xword	ebc_debug_level_read
	.xword	ebc_debug_level_write
	.size	dev_attr_ebc_debug_level, 32

	.type	.L.str.215,@object              // @.str.215
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.215:
	.asciz	"wf_data"
	.size	.L.str.215, 8

	.type	dev_attr_wf_data,@object        // @dev_attr_wf_data
	.data
	.p2align	3, 0x0
dev_attr_wf_data:
	.xword	.L.str.215
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	wf_data_write
	.size	dev_attr_wf_data, 32

	.type	.L.str.217,@object              // @.str.217
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.217:
	.asciz	"603893"
	.size	.L.str.217, 7

	.type	.L.str.218,@object              // @.str.218
.L.str.218:
	.asciz	"lutdata: %d frames\n"
	.size	.L.str.218, 20

	.type	.L.str.219,@object              // @.str.219
.L.str.219:
	.asciz	"[%d-->%d]: \n"
	.size	.L.str.219, 13

	.type	.L.str.220,@object              // @.str.220
.L.str.220:
	.asciz	"\001c\0017%d, "
	.size	.L.str.220, 9

	.type	.L.str.221,@object              // @.str.221
.L.str.221:
	.asciz	"overlay_wf_data"
	.size	.L.str.221, 16

	.type	dev_attr_overlay_wf_data,@object // @dev_attr_overlay_wf_data
	.data
	.p2align	3, 0x0
dev_attr_overlay_wf_data:
	.xword	.L.str.221
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	overlay_wf_data_write
	.size	dev_attr_overlay_wf_data, 32

	.type	.L.str.223,@object              // @.str.223
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.223:
	.asciz	"ori_wf_data"
	.size	.L.str.223, 12

	.type	dev_attr_ori_wf_data,@object    // @dev_attr_ori_wf_data
	.data
	.p2align	3, 0x0
dev_attr_ori_wf_data:
	.xword	.L.str.223
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	ori_wf_data_write
	.size	dev_attr_ori_wf_data, 32

	.type	.L.str.225,@object              // @.str.225
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.225:
	.asciz	"malloc wf_table buffer failed\n"
	.size	.L.str.225, 31

	.type	.L.str.226,@object              // @.str.226
.L.str.226:
	.asciz	"603893 %d %d"
	.size	.L.str.226, 13

	.type	.L.str.227,@object              // @.str.227
.L.str.227:
	.asciz	"%s: wf mode %d on temp %d\n"
	.size	.L.str.227, 27

	.type	.L__func__.ori_wf_data_write,@object // @__func__.ori_wf_data_write
.L__func__.ori_wf_data_write:
	.asciz	"ori_wf_data_write"
	.size	.L__func__.ori_wf_data_write, 18

	.type	.L.str.228,@object              // @.str.228
.L.str.228:
	.asciz	"%s: err code\n"
	.size	.L.str.228, 14

	.type	.L.str.229,@object              // @.str.229
.L.str.229:
	.asciz	"%s: err lut_type or temp\n"
	.size	.L.str.229, 26

	.type	.L.str.230,@object              // @.str.230
.L.str.230:
	.asciz	"record_pix_wf"
	.size	.L.str.230, 14

	.type	dev_attr_record_pix_wf,@object  // @dev_attr_record_pix_wf
	.data
	.p2align	3, 0x0
dev_attr_record_pix_wf:
	.xword	.L.str.230
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	record_pix_wf_write
	.size	dev_attr_record_pix_wf, 32

	.type	.L.str.232,@object              // @.str.232
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.232:
	.asciz	"%d,%d%n"
	.size	.L.str.232, 8

	.type	.L.str.233,@object              // @.str.233
.L.str.233:
	.asciz	"device suspend\n"
	.size	.L.str.233, 16

	.type	.L.str.234,@object              // @.str.234
.L.str.234:
	.asciz	"device resume\n"
	.size	.L.str.234, 15

	.type	.Lswitch.table.ebc_probe.236,@object // @switch.table.ebc_probe.236
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.ebc_probe.236:
	.word	3566                            // 0xdee
	.word	3576                            // 0xdf8
	.word	3572                            // 0xdf4
	.word	3506                            // 0xdb2
	.word	3326                            // 0xcfe
	.size	.Lswitch.table.ebc_probe.236, 20

	.ident	"Android (13290119, +pgo, +bolt, +lto, +mlgo, based on r547379) clang version 20.0.0 (https://android.googlesource.com/toolchain/llvm-project b718bcaf8c198c82f3021447d943401e3ab5bd54)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ebc_exit
	.addrsig_sym ebc_init
	.addrsig_sym ebc_probe
	.addrsig_sym ebc_remove
	.addrsig_sym frame_done_callback
	.addrsig_sym ebc_auto_task_function
	.addrsig_sym ebc_auto_assist_task_function
	.addrsig_sym ebc_thread
	.addrsig_sym ebc_frame_control_timeout
	.addrsig_sym ebc_overlay_enable_timeout
	.addrsig_sym ebc_frame_timeout
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
	.addrsig_sym record_pix_wf_write
	.addrsig_sym ebc_suspend
	.addrsig_sym ebc_resume
	.addrsig_sym __gendwarfksyms_rule_478
	.addrsig_sym __UNIQUE_ID___addressable_ebc_init640
	.addrsig_sym __exitcall_ebc_exit
	.addrsig_sym __UNIQUE_ID_author641
	.addrsig_sym __UNIQUE_ID_description642
	.addrsig_sym __UNIQUE_ID_file643
	.addrsig_sym __UNIQUE_ID_license644
	.addrsig_sym ebc_match
	.addrsig_sym ebc_pm
	.addrsig_sym ebc_driver
	.addrsig_sym jiffies
	.addrsig_sym ebc_thread_wq
	.addrsig_sym ebc_auto_thread_sem
	.addrsig_sym ebc_assist_finished_flag_sem
	.addrsig_sym cpu_bit_bitmap
	.addrsig_sym ebc_auto_assist_thread_sem
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
	.addrsig_sym dev_attr_record_pix_wf

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
__initcall__kmod_rkebc__603_4762_ebc_init6s:
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
	ldp	w9, w8, [x6, #80]
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
	add	x5, x5, x30
	add	x4, x4, x30
	add	x3, x3, x30
	add	x2, x2, x30
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
	mov	x20, xzr
	mov	x21, xzr
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
	ldp	w9, w8, [x3, #80]
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
	.text
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
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	x0, x19
	bl	nvmem_cell_get
	cmn	x0, #4095
	b.hs	.LBB4_10
// %bb.1:
	add	x1, sp, #8
	mov	x21, x0
	bl	nvmem_cell_read
	mov	x22, x0
	mov	x0, x21
	bl	nvmem_cell_put
	cmn	x22, #4095
	b.hs	.LBB4_11
// %bb.2:
	ldr	x8, [sp, #8]
	cmp	x8, #2
	b.ne	.LBB4_9
// %bb.3:
	ldrb	w8, [x22]
	cmp	w8, #53
	b.ne	.LBB4_9
// %bb.4:
	ldrb	w8, [x22, #1]
	cmp	w8, #102
	b.eq	.LBB4_7
// %bb.5:
	cmp	w8, #118
	b.ne	.LBB4_9
// %bb.6:
	mov	w25, #3576                      // =0xdf8
	b	.LBB4_8
.LBB4_7:
	mov	w25, #3566                      // =0xdee
.LBB4_8:
	mov	x0, x22
	bl	kfree
	b	.LBB4_13
.LBB4_9:
	mov	x0, x22
	bl	kfree
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	b	.LBB4_12
.LBB4_10:
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	b	.LBB4_12
.LBB4_11:
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
.LBB4_12:
	mov	x0, x19
	bl	_dev_err
	mov	w25, #3566                      // =0xdee
.LBB4_13:
	mov	x0, x19
	mov	w1, #1216                       // =0x4c0
	mov	w2, #3520                       // =0xdc0
	bl	devm_kmalloc
	cbz	x0, .LBB4_19
// %bb.14:
	adrp	x8, global_ebc
	mov	x21, x0
	str	x19, [x0]
	str	x0, [x8, :lo12:global_ebc]
	ldr	x0, [x20, #712]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
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
	cbnz	w0, .LBB4_21
// %bb.15:
	ldr	x0, [sp, #32]
	cbz	x0, .LBB4_21
// %bb.16:
	bl	of_find_device_by_node
	cbz	x0, .LBB4_18
// %bb.17:
	ldr	x8, [x0, #168]
	str	x8, [x21, #8]
	cbnz	x8, .LBB4_23
.LBB4_18:
	mov	w0, #-517                       // =0xfffffdfb
	b	.LBB4_20
.LBB4_19:
	mov	w0, #-12                        // =0xfffffff4
.LBB4_20:
	ldp	x20, x19, [sp, #192]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #208
	ldr	x30, [x18, #-8]!
	ret
.LBB4_21:
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
.LBB4_22:
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-19                        // =0xffffffed
	b	.LBB4_20
.LBB4_23:
	adrp	x9, frame_done_callback
	add	x9, x9, :lo12:frame_done_callback
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	str	x9, [x8, #136]
	add	x2, sp, #20
	ldr	x0, [x20, #712]
	bl	of_get_property
	ldr	w9, [sp, #20]
	asr	w8, w9, #2
	cmp	w9, #4
	str	w8, [sp, #20]
	b.hs	.LBB4_25
// %bb.24:
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-22                        // =0xffffffea
	b	.LBB4_20
.LBB4_25:
	cmp	w8, #1
	b.lt	.LBB4_52
// %bb.26:
	mov	x22, x0
	mov	w23, wzr
	mov	w27, wzr
	adrp	x24, .L.str.15
	add	x24, x24, :lo12:.L.str.15
	adrp	x26, .L.str.17
	add	x26, x26, :lo12:.L.str.17
	b	.LBB4_28
.LBB4_27:                               //   in Loop: Header=BB4_28 Depth=1
	ldr	w8, [sp, #20]
	add	w23, w23, #1
	mov	w27, #1                         // =0x1
	cmp	w23, w8
	b.ge	.LBB4_43
.LBB4_28:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB4_29 Depth 2
	add	x22, x22, #4
.LBB4_29:                               //   Parent Loop BB4_28 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x22, #-4]
	rev	w0, w8
	bl	of_find_node_by_phandle
	cbz	x0, .LBB4_39
// %bb.30:                              //   in Loop: Header=BB4_29 Depth=2
	add	x0, x0, #24
	bl	i2c_find_device_by_fwnode
	cbz	x0, .LBB4_40
// %bb.31:                              //   in Loop: Header=BB4_29 Depth=2
	ldr	x8, [x0, #184]
	mov	x28, x0
	str	x8, [x21, #16]
	cbnz	x8, .LBB4_41
// %bb.32:                              //   in Loop: Header=BB4_29 Depth=2
	add	x0, x28, #32
	mov	x1, x24
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #24]
	b.hs	.LBB4_37
// %bb.33:                              //   in Loop: Header=BB4_29 Depth=2
	add	x0, x28, #32
	add	x2, sp, #24
	mov	x1, x26
	bl	device_property_read_string
	cbnz	w0, .LBB4_38
// %bb.34:                              //   in Loop: Header=BB4_29 Depth=2
	ldr	x0, [sp, #24]
	bl	thermal_zone_get_zone_by_name
	cmn	x0, #4095
	str	x0, [x21, #32]
	b.lo	.LBB4_27
// %bb.35:                              //   in Loop: Header=BB4_29 Depth=2
	mov	x0, x19
	adrp	x1, .L.str.19
	add	x1, x1, :lo12:.L.str.19
	bl	_dev_err
.LBB4_36:                               //   in Loop: Header=BB4_29 Depth=2
	ldr	w8, [sp, #20]
	add	w23, w23, #1
	add	x22, x22, #4
	cmp	w23, w8
	b.lt	.LBB4_29
	b	.LBB4_42
.LBB4_37:                               //   in Loop: Header=BB4_29 Depth=2
	mov	x0, x19
	adrp	x1, .L.str.16
	add	x1, x1, :lo12:.L.str.16
	bl	_dev_warn
	b	.LBB4_36
.LBB4_38:                               //   in Loop: Header=BB4_29 Depth=2
	mov	x0, x19
	adrp	x1, .L.str.18
	add	x1, x1, :lo12:.L.str.18
	bl	_dev_warn
	b	.LBB4_36
.LBB4_39:
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	b	.LBB4_22
.LBB4_40:
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	b	.LBB4_22
.LBB4_41:
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	mov	x0, x19
	mov	w2, w23
	bl	_dev_info
	b	.LBB4_43
.LBB4_42:
	tbz	w27, #0, .LBB4_52
.LBB4_43:
	mov	x22, x21
	adrp	x1, .L.str.21
	add	x1, x1, :lo12:.L.str.21
	str	x19, [x22, #40]!
	mov	x0, x19
	ldp	x8, x9, [x22, #-32]
	str	x19, [x22, #288]
	str	w25, [x22, #884]
	stp	x8, x9, [x22, #8]
	bl	device_property_present
	tbz	w0, #0, .LBB4_45
// %bb.44:
	mov	w8, #3576                       // =0xdf8
	str	w8, [x21, #928]
.LBB4_45:
	adrp	x1, .L.str.22
	add	x1, x1, :lo12:.L.str.22
	mov	x0, x19
	bl	device_property_present
	tbz	w0, #0, .LBB4_47
// %bb.46:
	mov	w8, #1                          // =0x1
	str	w8, [x21, #848]
.LBB4_47:
	mov	x0, x22
	bl	ebc_panel_probe
	cbnz	w0, .LBB4_53
// %bb.48:
	ldp	w10, w9, [x21, #116]
	mov	w8, #1                          // =0x1
	mov	x0, x21
	str	w8, [x21, #912]
	strb	w8, [x21, #936]
	mul	w8, w10, w9
	str	w9, [x21, #312]
	mov	w9, #-1                         // =0xffffffff
	str	w10, [x21, #316]
	str	w8, [x21, #260]
	lsr	w8, w8, #2
	str	w10, [x21, #904]
	str	w8, [x21, #264]
	mov	x8, #-65486                     // =0xffffffffffff0032
	movk	x8, #0, lsl #16
	str	w9, [x21, #932]
	str	w9, [x21, #952]
	str	x8, [x21, #944]
	bl	ebc_buffer_manage_init
	cbnz	w0, .LBB4_54
// %bb.49:
	add	x0, x22, #192
	bl	ebc_lut_table_init
	cbnz	w0, .LBB4_55
// %bb.50:
	adrp	x8, __cpu_possible_mask
	ldrb	w0, [x8, :lo12:__cpu_possible_mask]
	bl	__sw_hweight64
	str	w0, [x21, #844]
	add	x0, x22, #192
	bl	ebc_task_init
	cbnz	w0, .LBB4_57
// %bb.51:
	add	x0, x22, #192
	bl	ebc_other_init
	mov	x0, x21
	mov	x1, x22
	bl	ebc_logo_init
	add	x0, x22, #192
	str	x21, [x20, #168]
	bl	ebc_sysfs_init
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.27
	add	x1, x1, :lo12:.L.str.27
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	bl	_dev_info
	mov	w0, wzr
	b	.LBB4_20
.LBB4_52:
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	mov	x0, x19
	bl	_dev_err
	b	.LBB4_18
.LBB4_53:
	mov	w20, w0
	adrp	x1, .L.str.23
	add	x1, x1, :lo12:.L.str.23
	mov	x0, x19
	mov	w2, w20
	bl	_dev_err
	mov	w0, w20
	b	.LBB4_20
.LBB4_54:
	adrp	x1, .L.str.24
	add	x1, x1, :lo12:.L.str.24
	b	.LBB4_56
.LBB4_55:
	adrp	x1, .L.str.25
	add	x1, x1, :lo12:.L.str.25
.LBB4_56:
	mov	w20, w0
	mov	x0, x19
	bl	_dev_err
	mov	w0, w20
	b	.LBB4_20
.LBB4_57:
	adrp	x1, .L.str.26
	add	x1, x1, :lo12:.L.str.26
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB4_20
.Lfunc_end4:
	.size	ebc_probe, .Lfunc_end4-ebc_probe
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_remove
	.type	ebc_remove,@function
	.word	2809065558                      // 0xa76ef056
ebc_remove:                             // @ebc_remove
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	ldr	x19, [x0, #168]
	mov	x29, sp
	ldr	x0, [x19, #856]
	cbz	x0, .LBB5_2
// %bb.1:
	bl	dma_buf_put
	str	xzr, [x19, #856]
.LBB5_2:
	ldr	x0, [x19, #864]
	cbz	x0, .LBB5_4
// %bb.3:
	bl	dma_buf_put
	str	xzr, [x19, #864]
.LBB5_4:
	ldr	x0, [x19, #872]
	cbz	x0, .LBB5_6
// %bb.5:
	bl	dma_buf_put
	str	xzr, [x19, #872]
.LBB5_6:
	ldr	x0, [x19, #880]
	cbz	x0, .LBB5_8
// %bb.7:
	bl	dma_buf_put
	str	xzr, [x19, #880]
.LBB5_8:
	ldr	x0, [x19, #888]
	cbz	x0, .LBB5_10
// %bb.9:
	bl	dma_buf_put
	str	xzr, [x19, #888]
.LBB5_10:
	adrp	x0, ebc_misc
	add	x0, x0, :lo12:ebc_misc
	bl	misc_deregister
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
	ldr	w8, [x19, #472]
	cmp	w8, #3
	b.gt	.LBB6_7
// %bb.1:
	cmp	w8, #1
	b.eq	.LBB6_18
// %bb.2:
	cmp	w8, #3
	b.ne	.LBB6_14
// %bb.3:
	ldr	w8, [x19, #324]
	cbz	w8, .LBB6_28
// %bb.4:
	ldr	w8, [x19, #852]
	cmp	w8, #1
	mov	x8, x19
	b.ge	.LBB6_43
.LBB6_5:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp1
	brk	#0x8228
.Ltmp1:
	blr	x8
.LBB6_6:
	adrp	x8, jiffies
	mov	w9, #335544320                  // =0x14000000
	add	x0, x19, #760
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, x9
	bl	mod_timer
	str	wzr, [x19, #284]
	b	.LBB6_37
.LBB6_7:
	cmp	w8, #5
	b.eq	.LBB6_26
// %bb.8:
	cmp	w8, #4
	b.ne	.LBB6_14
// %bb.9:
	ldr	w8, [x19, #292]
	mov	w9, #1                          // =0x1
	str	w9, [x19, #308]
	cbnz	w8, .LBB6_30
// %bb.10:
	ldr	w8, [x19, #296]
	cbnz	w8, .LBB6_30
// %bb.11:
	ldr	w8, [x19, #300]
	cbz	w8, .LBB6_30
// %bb.12:
	ldr	w8, [x19, #852]
	cmp	w8, #1
	mov	x8, x19
	b.ge	.LBB6_46
.LBB6_13:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp2
	brk	#0x8228
.Ltmp2:
	blr	x8
	ldr	w8, [x19, #316]
	ldr	w9, [x19, #312]
	mov	w1, wzr
	ldr	x0, [x19, #392]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	ldr	w8, [x19, #316]
	ldr	w9, [x19, #312]
	mov	w1, wzr
	ldr	x0, [x19, #400]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	adrp	x8, jiffies
	mov	w9, #335544320                  // =0x14000000
	add	x0, x19, #760
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, x9
	bl	mod_timer
	str	wzr, [x19, #284]
	str	wzr, [x19, #308]
	b	.LBB6_37
.LBB6_14:
	ldr	w8, [x19, #304]
	cbnz	w8, .LBB6_27
// %bb.15:
	ldr	w8, [x19, #912]
	cbz	w8, .LBB6_27
// %bb.16:
	ldr	x0, [x19, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp3
	brk	#0x8228
.Ltmp3:
	blr	x8
	ldr	w8, [x19, #852]
	str	wzr, [x19, #284]
	cmp	w8, #1
	b.lt	.LBB6_37
// %bb.17:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.32
	add	x1, x1, :lo12:.L.str.32
	bl	_dev_info
	b	.LBB6_37
.LBB6_18:
	ldr	w9, [x19, #304]
	mov	x8, x19
	cbz	w9, .LBB6_25
// %bb.19:
	ldr	w8, [x19, #324]
	cbz	w8, .LBB6_21
// %bb.20:
	ldr	w8, [x19, #800]
	cbz	w8, .LBB6_24
.LBB6_21:
	ldr	w8, [x19, #828]
	cbz	w8, .LBB6_27
// %bb.22:
	ldr	x8, [x19, #448]
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB6_27
// %bb.23:
	ldr	w8, [x19, #320]
	cbz	w8, .LBB6_27
.LBB6_24:
	ldr	w8, [x19, #852]
	cmp	w8, #1
	mov	x8, x19
	b.ge	.LBB6_44
.LBB6_25:
	ldr	x0, [x8, #8]
	b	.LBB6_32
.LBB6_26:
	ldr	w8, [x19, #304]
	cbz	w8, .LBB6_31
.LBB6_27:
	adrp	x8, ebc_auto_task
	mov	w9, #1                          // =0x1
	ldr	x0, [x8, :lo12:ebc_auto_task]
	str	w9, [x19, #284]
	bl	wake_up_process
	b	.LBB6_38
.LBB6_28:
	ldr	w8, [x19, #292]
	cbnz	w8, .LBB6_30
// %bb.29:
	ldr	w8, [x19, #296]
	cbz	w8, .LBB6_40
.LBB6_30:
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	b	.LBB6_38
.LBB6_31:
	ldr	x0, [x19, #8]
.LBB6_32:
	ldr	x8, [x0, #144]
	mov	w1, wzr
	mov	w2, wzr
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp4
	brk	#0x8228
.Ltmp4:
	blr	x8
	ldr	w8, [x19, #852]
	str	wzr, [x19, #284]
	cmp	w8, #1
	b.ge	.LBB6_39
// %bb.33:
	ldr	w3, [x19, #952]
	tbnz	w3, #31, .LBB6_37
.LBB6_34:
	ldr	w8, [x19, #312]
	cmp	w3, w8
	b.ge	.LBB6_37
// %bb.35:
	ldr	w2, [x19, #948]
	tbnz	w2, #31, .LBB6_37
// %bb.36:
	ldr	w8, [x19, #316]
	cmp	w2, w8
	b.lt	.LBB6_45
.LBB6_37:
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1                          // =0x1
	bl	__wake_up_sync
.LBB6_38:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB6_39:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.32
	add	x1, x1, :lo12:.L.str.32
	bl	_dev_info
	ldr	w3, [x19, #952]
	tbz	w3, #31, .LBB6_34
	b	.LBB6_37
.LBB6_40:
	ldr	w8, [x19, #300]
	cbz	w8, .LBB6_30
// %bb.41:
	ldr	w8, [x19, #852]
	cmp	w8, #1
	mov	x8, x19
	b.ge	.LBB6_47
.LBB6_42:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp5
	brk	#0x8228
.Ltmp5:
	blr	x8
	ldr	w8, [x19, #316]
	ldr	w9, [x19, #312]
	mov	w1, wzr
	ldr	x0, [x19, #392]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	b	.LBB6_6
.LBB6_43:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.29
	add	x1, x1, :lo12:.L.str.29
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_5
.LBB6_44:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.31
	add	x1, x1, :lo12:.L.str.31
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_25
.LBB6_45:
	ldrb	w8, [x19, #956]
	ldr	x0, [x19, #328]
	add	x4, x19, #957
	adrp	x1, .L.str.34
	add	x1, x1, :lo12:.L.str.34
	strb	wzr, [x4, x8]
	bl	_dev_info
	b	.LBB6_37
.LBB6_46:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.28
	add	x1, x1, :lo12:.L.str.28
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_13
.LBB6_47:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.30
	add	x1, x1, :lo12:.L.str.30
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_42
.Lfunc_end6:
	.size	frame_done_callback, .Lfunc_end6-frame_done_callback
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_panel_probe
	.type	ebc_panel_probe,@function
ebc_panel_probe:                        // @ebc_panel_probe
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	mov	x2, x0
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x19, x0
	ldr	x20, [x2], #76
	adrp	x1, .L.str.35
	add	x1, x1, :lo12:.L.str.35
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	ldr	x0, [x20, #696]
	mov	x29, sp
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.1:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.36
	add	x1, x1, :lo12:.L.str.36
	add	x2, x19, #80
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.2:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.37
	add	x1, x1, :lo12:.L.str.37
	add	x2, x19, #84
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.3:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.38
	add	x1, x1, :lo12:.L.str.38
	add	x2, x19, #88
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.4:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.39
	add	x1, x1, :lo12:.L.str.39
	add	x2, x19, #104
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.5:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.40
	add	x1, x1, :lo12:.L.str.40
	add	x2, x19, #108
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.6:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.41
	add	x1, x1, :lo12:.L.str.41
	add	x2, x19, #112
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.7:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.42
	add	x1, x1, :lo12:.L.str.42
	add	x2, x19, #116
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.8:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.43
	add	x1, x1, :lo12:.L.str.43
	add	x2, x19, #120
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.9:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.44
	add	x1, x1, :lo12:.L.str.44
	add	x2, x19, #124
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.10:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.45
	add	x1, x1, :lo12:.L.str.45
	add	x2, x19, #128
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.11:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.46
	add	x1, x1, :lo12:.L.str.46
	add	x2, x19, #132
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.12:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.47
	add	x1, x1, :lo12:.L.str.47
	add	x2, x19, #136
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.13:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.48
	add	x1, x1, :lo12:.L.str.48
	add	x2, x19, #140
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.14:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.49
	add	x1, x1, :lo12:.L.str.49
	add	x2, x19, #144
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
// %bb.15:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.50
	add	x1, x1, :lo12:.L.str.50
	add	x2, x19, #148
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_17
// %bb.16:
	stur	wzr, [x19, #148]
.LBB7_17:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.51
	add	x1, x1, :lo12:.L.str.51
	add	x2, x19, #152
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_19
// %bb.18:
	stur	wzr, [x19, #152]
.LBB7_19:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.52
	add	x1, x1, :lo12:.L.str.52
	add	x2, x19, #156
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_21
// %bb.20:
	stur	wzr, [x19, #156]
.LBB7_21:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.53
	add	x1, x1, :lo12:.L.str.53
	add	x2, x19, #92
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_23
// %bb.22:
	stur	wzr, [x19, #92]
.LBB7_23:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.54
	add	x1, x1, :lo12:.L.str.54
	add	x2, x19, #96
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_25
// %bb.24:
	stur	wzr, [x19, #96]
.LBB7_25:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.55
	add	x1, x1, :lo12:.L.str.55
	add	x2, x19, #160
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_27
// %bb.26:
	stur	wzr, [x19, #160]
.LBB7_27:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.56
	add	x1, x1, :lo12:.L.str.56
	add	x2, x19, #164
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_29
// %bb.28:
	stur	wzr, [x19, #164]
.LBB7_29:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.57
	add	x1, x1, :lo12:.L.str.57
	add	x2, x19, #176
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_31
// %bb.30:
	stur	wzr, [x19, #176]
.LBB7_31:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.58
	add	x1, x1, :lo12:.L.str.58
	add	x2, x19, #180
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_33
// %bb.32:
	stur	wzr, [x19, #180]
.LBB7_33:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.59
	add	x1, x1, :lo12:.L.str.59
	add	x2, x19, #168
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_35
// %bb.34:
	stur	wzr, [x19, #168]
.LBB7_35:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.60
	add	x1, x1, :lo12:.L.str.60
	add	x2, x19, #172
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_37
// %bb.36:
	stur	wzr, [x19, #172]
.LBB7_37:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.61
	add	x1, x1, :lo12:.L.str.61
	mov	x2, xzr
	bl	of_find_property
	mov	x8, x0
	mov	w0, wzr
	cmp	x8, #0
	cset	w8, ne
	strb	w8, [x19, #184]
	b	.LBB7_39
.LBB7_38:
	mov	w0, #-22                        // =0xffffffea
.LBB7_39:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end7:
	.size	ebc_panel_probe, .Lfunc_end7-ebc_panel_probe
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_buffer_manage_init
	.type	ebc_buffer_manage_init,@function
ebc_buffer_manage_init:                 // @ebc_buffer_manage_init
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #208
	ldr	w8, [x0, #260]
	stp	x20, x19, [sp, #192]            // 16-byte Folded Spill
	ldr	x20, [x0]
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	cmp	w8, #1280, lsl #12              // =5242880
	stp	xzr, xzr, [sp, #80]
	stp	xzr, xzr, [sp, #64]
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	stp	xzr, xzr, [sp, #16]
	stp	xzr, xzr, [sp]
	b.gt	.LBB8_22
// %bb.1:
	mov	x19, x0
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.63
	add	x1, x1, :lo12:.L.str.63
	sub	x5, x29, #80
	mov	x2, xzr
	mov	w3, wzr
	mov	w4, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stp	xzr, xzr, [x29, #-48]
	stp	xzr, xzr, [x29, #-64]
	stp	xzr, xzr, [x29, #-80]
	bl	__of_parse_phandle_with_args
	mov	w8, w0
	mov	w0, #-19                        // =0xffffffed
	cbnz	w8, .LBB8_27
// %bb.2:
	ldur	x8, [x29, #-80]
	cbz	x8, .LBB8_27
// %bb.3:
	mov	x2, sp
	mov	x0, x8
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB8_23
// %bb.4:
	ldp	x1, x8, [sp]
	mov	w9, #58720255                   // =0x37fffff
	sub	x8, x8, x1
	str	x1, [x19, #232]
	add	x8, x8, #1
	cmp	w8, w9
	str	w8, [x19, #256]
	b.le	.LBB8_24
// %bb.5:
	and	x2, x8, #0x7fffffff
	mov	x0, x20
	mov	w3, #1                          // =0x1
	bl	devm_memremap
	str	x0, [x19, #240]
	cbz	x0, .LBB8_25
// %bb.6:
	mov	x1, x0
	ldr	x0, [x19, #232]
	ldr	w2, [x19, #256]
	mov	w3, #5242880                    // =0x500000
	mov	w4, #4                          // =0x4
	bl	ebc_buf_init
	cbnz	w0, .LBB8_26
// %bb.7:
	ldr	x0, [x19, #232]
	mov	w1, #5242880                    // =0x500000
	str	xzr, [x19, #888]
	str	xzr, [x19, #880]
	str	xzr, [x19, #872]
	str	xzr, [x19, #864]
	str	xzr, [x19, #856]
	bl	ebc_get_dma_buf
	cmn	x0, #4095
	b.hs	.LBB8_12
// %bb.8:
	ldr	x8, [x19, #232]
	str	x0, [x19, #856]
	mov	w1, #5242880                    // =0x500000
	add	x0, x8, #1280, lsl #12          // =5242880
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12                 // =4096
	b.hi	.LBB8_12
// %bb.9:
	ldr	x8, [x19, #232]
	str	x0, [x19, #864]
	mov	w1, #5242880                    // =0x500000
	add	x0, x8, #2560, lsl #12          // =10485760
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12                 // =4096
	b.hi	.LBB8_12
// %bb.10:
	ldr	x8, [x19, #232]
	str	x0, [x19, #872]
	mov	w1, #5242880                    // =0x500000
	add	x0, x8, #3840, lsl #12          // =15728640
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12                 // =4096
	b.hi	.LBB8_12
// %bb.11:
	ldr	x8, [x19, #232]
	mov	w9, #20971520                   // =0x1400000
	str	x0, [x19, #880]
	mov	w1, #5242880                    // =0x500000
	add	x0, x8, x9
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12                 // =4096
	b.ls	.LBB8_28
.LBB8_12:
	add	x20, x19, #856
	ldr	x0, [x20]
	cbz	x0, .LBB8_14
// %bb.13:
	bl	dma_buf_put
	str	xzr, [x20]
.LBB8_14:
	ldr	x0, [x19, #864]
	cbz	x0, .LBB8_16
// %bb.15:
	bl	dma_buf_put
	str	xzr, [x19, #864]
.LBB8_16:
	ldr	x0, [x19, #872]
	cbz	x0, .LBB8_18
// %bb.17:
	bl	dma_buf_put
	str	xzr, [x19, #872]
.LBB8_18:
	ldr	x0, [x19, #880]
	cbz	x0, .LBB8_20
// %bb.19:
	bl	dma_buf_put
	str	xzr, [x19, #880]
.LBB8_20:
	ldr	x0, [x19, #888]
	cbz	x0, .LBB8_26
// %bb.21:
	bl	dma_buf_put
	str	xzr, [x19, #888]
	b	.LBB8_26
.LBB8_22:
	adrp	x1, .L.str.62
	add	x1, x1, :lo12:.L.str.62
	mov	x0, x20
	bl	_dev_err
	mov	w0, #-19                        // =0xffffffed
	b	.LBB8_27
.LBB8_23:
	adrp	x1, .L.str.64
	add	x1, x1, :lo12:.L.str.64
	mov	w19, w0
	mov	x0, x20
	bl	_dev_err
	mov	w0, w19
	b	.LBB8_27
.LBB8_24:
	adrp	x1, .L.str.65
	add	x1, x1, :lo12:.L.str.65
	mov	x0, x20
	mov	w2, #58720256                   // =0x3800000
	bl	_dev_err
	mov	w0, #-19                        // =0xffffffed
	b	.LBB8_27
.LBB8_25:
	adrp	x1, .L.str.66
	add	x1, x1, :lo12:.L.str.66
	mov	x0, x20
	bl	_dev_err
.LBB8_26:
	mov	w0, #-12                        // =0xfffffff4
.LBB8_27:
	ldp	x20, x19, [sp, #192]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #208
	ldr	x30, [x18, #-8]!
	ret
.LBB8_28:
	ldp	x11, x8, [x19, #232]
	mov	w9, #20971520                   // =0x1400000
	mov	w10, #26214400                  // =0x1900000
	str	x0, [x19, #888]
	mov	w1, wzr
	add	x9, x8, x9
	add	x12, x8, x10
	str	x9, [x19, #248]
	add	x9, x11, x10
	mov	w10, #2097152                   // =0x200000
	stp	x12, x9, [x19, #64]
	mov	w9, #28311552                   // =0x1b00000
	add	x13, x8, x9
	add	x9, x11, x9
	mov	w11, #40894464                  // =0x2700000
	stp	x10, x13, [x19, #80]
	stp	x9, x10, [x19, #96]
	mov	w9, #30408704                   // =0x1d00000
	mov	w10, #35651584                  // =0x2200000
	add	x9, x8, x9
	add	x10, x8, x10
	stp	x12, x13, [x19, #408]
	stp	x9, x10, [x19, #368]
	mov	w10, #46137344                  // =0x2c00000
	add	x9, x8, x11
	add	x10, x8, x10
	mov	w11, #51380224                  // =0x3100000
	stp	x9, x10, [x19, #384]
	add	x0, x8, x11
	mov	w11, #56623104                  // =0x3600000
	ldp	w9, w10, [x19, #116]
	add	x11, x8, x11
	str	x0, [x19, #400]
	mul	w2, w10, w9
	mov	w9, #57671680                   // =0x3700000
	add	x8, x8, x9
	stp	x11, x8, [x19, #352]
	bl	memset
	ldp	w8, w9, [x19, #116]
	ldr	x0, [x19, #392]
	mov	w1, wzr
	mul	w2, w9, w8
	bl	memset
	ldr	x0, [x19, #384]
	ldrsw	x2, [x19, #260]
	mov	w1, #240                        // =0xf0
	bl	memset
	mov	w0, wzr
	b	.LBB8_27
.Lfunc_end8:
	.size	ebc_buffer_manage_init, .Lfunc_end8-ebc_buffer_manage_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_lut_table_init
	.type	ebc_lut_table_init,@function
ebc_lut_table_init:                     // @ebc_lut_table_init
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #240
	stp	x20, x19, [sp, #224]            // 16-byte Folded Spill
	ldr	x20, [x0, #96]
	mov	x19, x0
	stp	x22, x21, [sp, #208]            // 16-byte Folded Spill
	adrp	x1, .L.str.67
	add	x1, x1, :lo12:.L.str.67
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
	cbnz	w8, .LBB9_9
// %bb.1:
	ldur	x21, [x29, #-80]
	cbz	x21, .LBB9_9
// %bb.2:
	adrp	x1, .L.str.68
	add	x1, x1, :lo12:.L.str.68
	add	x2, sp, #12
	mov	x0, x22
	bl	of_get_property
	ldr	w1, [sp, #12]
	cmp	w1, #1
	b.lt	.LBB9_5
// %bb.3:
	bl	pvi_wf_add_custom_mode_table
	cbz	w0, .LBB9_5
// %bb.4:
	mov	w0, #-19                        // =0xffffffed
	b	.LBB9_9
.LBB9_5:
	add	x2, sp, #16
	mov	x0, x21
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB9_9
// %bb.6:
	ldp	x1, x8, [sp, #16]
	mov	x0, x20
	mov	w3, #1                          // =0x1
	sub	x8, x8, x1
	str	x1, [x19, #40]
	add	x21, x8, #1
	sxtw	x2, w21
	str	w21, [x19, #48]
	bl	devm_memremap
	str	x0, [x19, #200]
	cbz	x0, .LBB9_10
// %bb.7:
	bl	epd_lut_from_mem_init
	tbnz	w0, #31, .LBB9_11
.LBB9_8:
	mov	w0, wzr
.LBB9_9:
	ldp	x20, x19, [sp, #224]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #208]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #240
	ldr	x30, [x18, #-8]!
	ret
.LBB9_10:
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.69
	add	x1, x1, :lo12:.L.str.69
	adrp	x2, .L__func__.ebc_lut_table_init
	add	x2, x2, :lo12:.L__func__.ebc_lut_table_init
	mov	w3, #4183                       // =0x1057
	bl	_dev_err
	mov	w0, #-12                        // =0xfffffff4
	b	.LBB9_9
.LBB9_11:
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.70
	add	x1, x1, :lo12:.L.str.70
	bl	_dev_err
	ldr	x0, [x19, #96]
	ldr	x1, [x19, #200]
	mov	w2, w21
	bl	epd_lut_from_file_init
	tbz	w0, #31, .LBB9_8
// %bb.12:
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.71
	add	x1, x1, :lo12:.L.str.71
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB9_9
.Lfunc_end9:
	.size	ebc_lut_table_init, .Lfunc_end9-ebc_lut_table_init
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
	adrp	x0, ebc_auto_tast_function
	add	x0, x0, :lo12:ebc_auto_tast_function
	adrp	x3, .L.str.72
	add	x3, x3, :lo12:.L.str.72
	mov	x1, x19
	mov	w2, #-1                         // =0xffffffff
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	str	w8, [x29, #28]
	bl	kthread_create_on_node
	adrp	x20, ebc_auto_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_auto_task]
	b.hs	.LBB10_20
// %bb.1:
	add	x2, x29, #28
	mov	w1, #1                          // =0x1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #612]
	cmp	w8, #8
	b.lt	.LBB10_3
// %bb.2:
	ldr	x0, [x20, :lo12:ebc_auto_task]
	adrp	x1, cpu_bit_bitmap+56
	add	x1, x1, :lo12:cpu_bit_bitmap+56
	bl	set_cpus_allowed_ptr
.LBB10_3:
	ldr	x8, [x20, :lo12:ebc_auto_task]
	add	x0, x8, #64
	//APP
.Ltmp6:
	b	.LBB10_27
.Ltmp7:
	.section	.altinstructions,"a",@progbits
.Ltmp8:
	.word	.Ltmp6-.Ltmp8
.Ltmp9:
	.word	alt_cb_patch_nops-.Ltmp9
	.hword	32805
	.byte	.Ltmp7-.Ltmp6
	.byte	.Ltmp10-.Ltmp11
	.text

.Ltmp11:
.Ltmp10:

	//NO_APP
// %bb.4:
	mov	w8, #1                          // =0x1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB10_28
.LBB10_5:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB10_24
.LBB10_6:
	adrp	x0, ebc_auto_assist_tast_function
	add	x0, x0, :lo12:ebc_auto_assist_tast_function
	adrp	x3, .L.str.74
	add	x3, x3, :lo12:.L.str.74
	mov	x1, x19
	mov	w2, #-1                         // =0xffffffff
	bl	kthread_create_on_node
	adrp	x20, ebc_auto_assist_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_auto_assist_task]
	b.hs	.LBB10_21
// %bb.7:
	add	x2, x29, #28
	mov	w1, #1                          // =0x1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #612]
	cmp	w8, #8
	b.lt	.LBB10_9
// %bb.8:
	ldr	x0, [x20, :lo12:ebc_auto_assist_task]
	adrp	x1, cpu_bit_bitmap+64
	add	x1, x1, :lo12:cpu_bit_bitmap+64
	bl	set_cpus_allowed_ptr
.LBB10_9:
	ldr	x8, [x20, :lo12:ebc_auto_assist_task]
	add	x0, x8, #64
	//APP
.Ltmp12:
	b	.LBB10_30
.Ltmp13:
	.section	.altinstructions,"a",@progbits
.Ltmp14:
	.word	.Ltmp12-.Ltmp14
.Ltmp15:
	.word	alt_cb_patch_nops-.Ltmp15
	.hword	32805
	.byte	.Ltmp13-.Ltmp12
	.byte	.Ltmp16-.Ltmp17
	.text

.Ltmp17:
.Ltmp16:

	//NO_APP
// %bb.10:
	mov	w8, #1                          // =0x1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB10_31
.LBB10_11:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB10_25
.LBB10_12:
	mov	w8, #99                         // =0x63
	adrp	x0, ebc_thread
	add	x0, x0, :lo12:ebc_thread
	adrp	x3, .L.str.76
	add	x3, x3, :lo12:.L.str.76
	mov	x1, x19
	mov	w2, #-1                         // =0xffffffff
	str	w8, [x29, #28]
	bl	kthread_create_on_node
	cmn	x0, #4095
	b.hs	.LBB10_22
// %bb.13:
	mov	x20, x0
	bl	wake_up_process
	adrp	x21, ebc_task
	add	x2, x29, #28
	mov	x0, x20
	mov	w1, #1                          // =0x1
	str	x20, [x21, :lo12:ebc_task]
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #612]
	cmp	w8, #8
	b.lt	.LBB10_15
// %bb.14:
	ldr	x0, [x21, :lo12:ebc_task]
	adrp	x1, cpu_bit_bitmap+48
	add	x1, x1, :lo12:cpu_bit_bitmap+48
	bl	set_cpus_allowed_ptr
.LBB10_15:
	ldr	x8, [x21, :lo12:ebc_task]
	add	x0, x8, #64
	//APP
.Ltmp18:
	b	.LBB10_33
.Ltmp19:
	.section	.altinstructions,"a",@progbits
.Ltmp20:
	.word	.Ltmp18-.Ltmp20
.Ltmp21:
	.word	alt_cb_patch_nops-.Ltmp21
	.hword	32805
	.byte	.Ltmp19-.Ltmp18
	.byte	.Ltmp22-.Ltmp23
	.text

.Ltmp23:
.Ltmp22:

	//NO_APP
// %bb.16:
	mov	w8, #1                          // =0x1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB10_34
.LBB10_17:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB10_26
.LBB10_18:
	mov	w0, wzr
.LBB10_19:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB10_20:
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.73
	add	x1, x1, :lo12:.L.str.73
	b	.LBB10_23
.LBB10_21:
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.75
	add	x1, x1, :lo12:.L.str.75
	b	.LBB10_23
.LBB10_22:
	ldr	x8, [x19, #96]
	adrp	x9, ebc_task
	adrp	x1, .L.str.77
	add	x1, x1, :lo12:.L.str.77
	str	x0, [x9, :lo12:ebc_task]
	mov	x0, x8
.LBB10_23:
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB10_19
.LBB10_24:
	mov	w1, #1                          // =0x1
	b	.LBB10_29
.LBB10_25:
	mov	w1, #1                          // =0x1
	b	.LBB10_32
.LBB10_26:
	mov	w1, #1                          // =0x1
	b	.LBB10_35
.LBB10_27:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp24:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp24

	//NO_APP
	cbnz	w8, .LBB10_5
.LBB10_28:
	mov	w1, #2                          // =0x2
.LBB10_29:
	bl	refcount_warn_saturate
	b	.LBB10_6
.LBB10_30:                              // Block address taken
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
	cbnz	w8, .LBB10_11
.LBB10_31:
	mov	w1, #2                          // =0x2
.LBB10_32:
	bl	refcount_warn_saturate
	b	.LBB10_12
.LBB10_33:                              // Block address taken
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
	cbnz	w8, .LBB10_17
.LBB10_34:
	mov	w1, #2                          // =0x2
.LBB10_35:
	bl	refcount_warn_saturate
	b	.LBB10_18
.Lfunc_end10:
	.size	ebc_task_init, .Lfunc_end10-ebc_task_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_other_init
	.type	ebc_other_init,@function
ebc_other_init:                         // @ebc_other_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	add	x8, x0, #580
	mov	x9, #4294967297                 // =0x100000001
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	w20, #1                         // =0x1
	str	x9, [x8]
	add	x8, x0, #588
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	mov	x19, x0
	str	wzr, [x0, #192]
	str	xzr, [x0, #568]
	str	xzr, [x0, #88]
	str	wzr, [x0, #52]
	str	wzr, [x0, #68]
	str	w20, [x0, #240]
	str	xzr, [x8]
	str	wzr, [x0, #604]
	bl	ebc_get_init_log_level
	ldr	w8, [x19, #692]
	str	w0, [x19, #620]
	cmp	w8, #3576
	mov	w8, #1                          // =0x1
	b.eq	.LBB11_2
// %bb.1:
	ldr	w8, [x19, #696]
	cmp	w8, #3576
	cset	w8, eq
.LBB11_2:
	str	w8, [x19, #596]
	adrp	x8, .L.str.118
	add	x8, x8, :lo12:.L.str.118
	str	w20, [x19, #608]
	stp	xzr, xzr, [x19, #256]
	stp	xzr, xzr, [x19, #272]
	stp	xzr, xzr, [x19, #288]
	stp	xzr, xzr, [x19, #304]
	stp	xzr, xzr, [x19, #320]
	stp	xzr, xzr, [x19, #336]
	stp	xzr, xzr, [x19, #352]
	stp	xzr, xzr, [x19, #368]
	stp	xzr, xzr, [x19, #384]
	stp	xzr, xzr, [x19, #400]
	stp	xzr, xzr, [x19, #416]
	str	xzr, [x19, #432]
	str	x8, [x19, #248]!
	mov	x0, x19
	bl	wakeup_source_add
	adrp	x1, ebc_frame_control_timeout
	add	x1, x1, :lo12:ebc_frame_control_timeout
	add	x0, x19, #200
	mov	w2, wzr
	mov	x3, xzr
	mov	x4, xzr
	str	wzr, [x19, #192]
	bl	init_timer_key
	adrp	x20, jiffies
	mov	w21, #268435455                 // =0xfffffff
	add	x0, x19, #200
	ldr	x8, [x20, :lo12:jiffies]
	add	x1, x8, x21
	bl	mod_timer
	adrp	x1, ebc_overlay_enable_timeout
	add	x1, x1, :lo12:ebc_overlay_enable_timeout
	add	x0, x19, #240
	mov	w2, wzr
	mov	x3, xzr
	mov	x4, xzr
	bl	init_timer_key
	ldr	x8, [x20, :lo12:jiffies]
	add	x0, x19, #240
	add	x1, x8, x21
	bl	mod_timer
	adrp	x1, ebc_frame_timeout
	add	x1, x1, :lo12:ebc_frame_timeout
	add	x0, x19, #280
	mov	w2, wzr
	mov	x3, xzr
	mov	x4, xzr
	bl	init_timer_key
	ldr	x8, [x20, :lo12:jiffies]
	add	x0, x19, #280
	add	x1, x8, x21
	bl	mod_timer
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end11:
	.size	ebc_other_init, .Lfunc_end11-ebc_other_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_logo_init
	.type	ebc_logo_init,@function
ebc_logo_init:                          // @ebc_logo_init
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #80
	adrp	x8, saved_command_line
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	ldr	x21, [x8, :lo12:saved_command_line]
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	mov	x20, x1
	mov	x19, x0
	adrp	x1, .L.str.121
	add	x1, x1, :lo12:.L.str.121
	mov	x0, x21
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stur	wzr, [x29, #-4]
	str	wzr, [sp, #8]
	bl	strstr
	mov	x23, x0
	adrp	x1, .L.str.122
	add	x1, x1, :lo12:.L.str.122
	mov	x0, x21
	bl	strstr
	mov	x22, x0
	cbz	x23, .LBB12_2
// %bb.1:
	adrp	x1, .L.str.123
	add	x1, x1, :lo12:.L.str.123
	sub	x2, x29, #4
	mov	x0, x23
	bl	sscanf
	ldur	w2, [x29, #-4]
	ldr	x8, [x19, #232]
	cmp	x8, x2
	b.ls	.LBB12_5
.LBB12_2:
	mov	x21, xzr
	mov	w23, #1                         // =0x1
	cbz	x22, .LBB12_7
.LBB12_3:
	adrp	x1, .L.str.126
	add	x1, x1, :lo12:.L.str.126
	add	x2, sp, #8
	mov	x0, x22
	bl	sscanf
	ldr	w2, [sp, #8]
	ldr	x8, [x19, #232]
	cmp	x8, x2
	b.ls	.LBB12_27
// %bb.4:
	mov	x22, xzr
	mov	w24, #1                         // =0x1
	cbz	w23, .LBB12_8
	b	.LBB12_29
.LBB12_5:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.124
	add	x1, x1, :lo12:.L.str.124
                                        // kill: def $w2 killed $w2 killed $x2
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520                       // =0xdc0
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc_noprof
	cbz	x0, .LBB12_33
// %bb.6:
	ldp	w8, w9, [x20, #76]
	ldur	w11, [x29, #-4]
	mov	x21, x0
	mul	w8, w9, w8
	ldp	x10, x9, [x19, #232]
	lsr	w2, w8, #1
	sub	x8, x9, x10
	add	x1, x8, x11
	bl	memcpy
	mov	w23, wzr
	cbnz	x22, .LBB12_3
.LBB12_7:
	mov	w24, #1                         // =0x1
	cbnz	w23, .LBB12_29
.LBB12_8:
	adrp	x0, .L.str.130
	add	x0, x0, :lo12:.L.str.130
	bl	ebc_empty_buf_get
	cbz	x0, .LBB12_14
// %bb.9:
	ldp	w8, w9, [x20, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB12_12
// %bb.10:
	lsr	w8, w8, #1
	ldr	x10, [x0, #16]
	mov	x9, x21
.LBB12_11:                              // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x9], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w11, [x10, #1]
	strb	w12, [x10]
	add	x12, x10, #2
	mov	x10, x12
	b.ne	.LBB12_11
.LBB12_12:
	mov	w8, #7                          // =0x7
	str	xzr, [x0, #48]
	mov	w9, #1                          // =0x1
	str	w8, [x0, #40]
	ldr	w8, [x20, #76]
	str	w8, [x0, #56]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x0, #60]
.LBB12_13:
	bl	ebc_add_to_dsp_buf_list
.LBB12_14:
	tbnz	w24, #0, .LBB12_20
// %bb.15:
	adrp	x0, .L.str.130
	add	x0, x0, :lo12:.L.str.130
	bl	ebc_empty_buf_get
	cbz	x0, .LBB12_20
// %bb.16:
	ldp	w8, w9, [x20, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB12_19
// %bb.17:
	lsr	w8, w8, #1
	ldr	x10, [x0, #16]
	mov	x9, x22
.LBB12_18:                              // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x9], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w11, [x10, #1]
	strb	w12, [x10]
	add	x12, x10, #2
	mov	x10, x12
	b.ne	.LBB12_18
.LBB12_19:
	mov	w8, #7                          // =0x7
	str	xzr, [x0, #48]
	mov	w9, #1                          // =0x1
	str	w8, [x0, #40]
	ldr	w8, [x20, #76]
	str	w8, [x0, #56]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x0, #60]
	bl	ebc_add_to_dsp_buf_list
.LBB12_20:
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB12_22
// %bb.21:
	mov	w8, #1                          // =0x1
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1                          // =0x1
	str	w8, [x19, #320]
	bl	__wake_up_sync
.LBB12_22:
	cbz	x21, .LBB12_24
// %bb.23:
	mov	x0, x21
	bl	kfree
.LBB12_24:
	cbz	x22, .LBB12_26
// %bb.25:
	mov	x0, x22
	bl	kfree
.LBB12_26:
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #80
	ldr	x30, [x18, #-8]!
	ret
.LBB12_27:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.127
	add	x1, x1, :lo12:.L.str.127
                                        // kill: def $w2 killed $w2 killed $x2
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520                       // =0xdc0
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc_noprof
	cbz	x0, .LBB12_34
// %bb.28:
	ldp	w8, w9, [x20, #76]
	ldr	w11, [sp, #8]
	mov	x22, x0
	mul	w8, w9, w8
	ldp	x10, x9, [x19, #232]
	lsr	w2, w8, #1
	sub	x8, x9, x10
	add	x1, x8, x11
	bl	memcpy
	mov	w24, wzr
	cbz	w23, .LBB12_8
.LBB12_29:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.129
	add	x1, x1, :lo12:.L.str.129
	bl	_dev_info
	ldr	x0, [x19, #16]
	cbz	x0, .LBB12_31
// %bb.30:
	bl	ebc_pmic_verity_vcom
	b	.LBB12_32
.LBB12_31:
	ldr	x0, [x19, #24]
	bl	ebc_regulator_verity_vcom
.LBB12_32:
	adrp	x0, .L.str.131
	add	x0, x0, :lo12:.L.str.131
	bl	ebc_empty_buf_get
	ldp	w8, w9, [x20, #76]
	mov	x23, x0
	ldr	x0, [x0, #16]
	mov	w1, #240                        // =0xf0
	mul	w2, w9, w8
	bl	memset
	mov	w8, #17                         // =0x11
	str	xzr, [x23, #48]
	mov	w9, #1                          // =0x1
	str	w8, [x23, #40]
	mov	x0, x23
	ldr	w8, [x20, #76]
	str	w8, [x23, #56]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x23, #60]
	b	.LBB12_13
.LBB12_33:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.125
	add	x1, x1, :lo12:.L.str.125
	bl	_dev_err
	b	.LBB12_26
.LBB12_34:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.128
	add	x1, x1, :lo12:.L.str.128
	bl	_dev_err
	b	.LBB12_26
.Lfunc_end12:
	.size	ebc_logo_init, .Lfunc_end12-ebc_logo_init
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
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_waveform_version
	add	x1, x1, :lo12:dev_attr_waveform_version
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_pmic_name
	add	x1, x1, :lo12:dev_attr_pmic_name
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_pmic_temp
	add	x1, x1, :lo12:dev_attr_pmic_temp
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_pmic_vcom
	add	x1, x1, :lo12:dev_attr_pmic_vcom
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_ebc_version
	add	x1, x1, :lo12:dev_attr_ebc_version
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_ebc_state
	add	x1, x1, :lo12:dev_attr_ebc_state
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_ebc_buf_state
	add	x1, x1, :lo12:dev_attr_ebc_buf_state
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_auto_frame_state
	add	x1, x1, :lo12:dev_attr_auto_frame_state
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_ebc_debug_level
	add	x1, x1, :lo12:dev_attr_ebc_debug_level
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_wf_data
	add	x1, x1, :lo12:dev_attr_wf_data
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_overlay_wf_data
	add	x1, x1, :lo12:dev_attr_overlay_wf_data
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_ori_wf_data
	add	x1, x1, :lo12:dev_attr_ori_wf_data
	bl	device_create_file
	ldr	x0, [x19, #96]
	adrp	x1, dev_attr_record_pix_wf
	add	x1, x1, :lo12:dev_attr_record_pix_wf
	bl	device_create_file
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end13:
	.size	ebc_sysfs_init, .Lfunc_end13-ebc_sysfs_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_auto_tast_function
	.type	ebc_auto_tast_function,@function
	.word	2314953021                      // 0x89fb613d
ebc_auto_tast_function:                 // @ebc_auto_tast_function
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #144
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	mov	w26, #2                         // =0x2
	ldr	x25, [x8, :lo12:global_ebc]
	stp	x28, x27, [sp, #64]             // 16-byte Folded Spill
	adrp	x27, ebc_auto_assist_task
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	adrp	x23, ebc_assist_finished_flag_sem
	add	x23, x23, :lo12:ebc_assist_finished_flag_sem
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	mov	w28, #255                       // =0xff
	add	x21, x25, #408
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	adrp	x20, ebc_auto_thread_sem
	add	x20, x20, :lo12:ebc_auto_thread_sem
	add	x8, x25, #64
	mov	w22, #1                         // =0x1
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	//APP
	mrs	x24, SP_EL0
	//NO_APP
	stp	x24, x8, [sp, #8]               // 16-byte Folded Spill
	str	x21, [sp, #24]                  // 8-byte Folded Spill
	b	.LBB14_3
.LBB14_1:                               //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #304]
	add	x0, x25, #40
	add	x1, x25, #232
	sub	w8, w8, #1
	str	w8, [x25, #304]
	bl	flip
	ldr	x0, [x27, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
.LBB14_2:                               //   in Loop: Header=BB14_3 Depth=1
	mov	x0, x20
	bl	up
	bl	schedule
.LBB14_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB14_42 Depth 2
                                        //       Child Loop BB14_44 Depth 3
                                        //     Child Loop BB14_55 Depth 2
                                        //       Child Loop BB14_58 Depth 3
	mov	x0, x20
	bl	down
	mov	x0, x23
	bl	down
	str	w26, [x24, #48]
	//APP
	dmb	ish
	//NO_APP
	ldr	w8, [x25, #472]
	cmp	w8, #3
	b.gt	.LBB14_10
// %bb.4:                               //   in Loop: Header=BB14_3 Depth=1
	cmp	w8, #1
	b.eq	.LBB14_20
// %bb.5:                               //   in Loop: Header=BB14_3 Depth=1
	cmp	w8, #3
	b.ne	.LBB14_17
// %bb.6:                               //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #292]
	str	wzr, [x25, #300]
	cbnz	w8, .LBB14_8
// %bb.7:                               //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #296]
	cbz	w8, .LBB14_33
.LBB14_8:                               //   in Loop: Header=BB14_3 Depth=1
	add	x0, x25, #40
	add	x1, x25, #232
	bl	flip
	ldr	x0, [x27, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrsw	x8, [x25, #112]
	ldp	x1, x2, [x25, #368]
	ldr	w9, [x25, #204]
	add	x4, x25, #232
	mov	w5, #2                          // =0x2
	ldr	x0, [x21, x8, lsl #3]
	ldr	x3, [x25, #392]
	cbz	w9, .LBB14_28
// %bb.9:                               //   in Loop: Header=BB14_3 Depth=1
	bl	get_auto_image2
	b	.LBB14_2
.LBB14_10:                              //   in Loop: Header=BB14_3 Depth=1
	cmp	w8, #5
	b.eq	.LBB14_1
// %bb.11:                              //   in Loop: Header=BB14_3 Depth=1
	cmp	w8, #4
	b.ne	.LBB14_17
// %bb.12:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #308]
	cbz	w8, .LBB14_26
// %bb.13:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #292]
	str	wzr, [x25, #308]
	str	wzr, [x25, #300]
	cbnz	w8, .LBB14_15
// %bb.14:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #296]
	cbz	w8, .LBB14_48
.LBB14_15:                              //   in Loop: Header=BB14_3 Depth=1
	add	x0, x25, #40
	add	x1, x25, #232
	bl	flip
	ldr	x0, [x27, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrsw	x8, [x25, #112]
	ldp	x1, x2, [x25, #368]
	ldp	x3, x4, [x25, #392]
	add	x5, x25, #232
	ldr	w9, [x25, #204]
	mov	w6, #2                          // =0x2
	ldr	x0, [x21, x8, lsl #3]
	cbz	w9, .LBB14_32
// %bb.16:                              //   in Loop: Header=BB14_3 Depth=1
	bl	get_overlay_image2
	b	.LBB14_2
.LBB14_17:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	x8, [x25, #448]
	ldr	w8, [x8, #40]
	cmp	w8, #21
	b.ne	.LBB14_23
// %bb.18:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #896]
	ldr	w9, [x25, #908]
	add	x0, x25, #40
	add	x1, x25, #232
	add	w8, w9, w8
	str	w8, [x25, #908]
	bl	flip
	ldr	x0, [x27, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	add	x0, x25, #232
	bl	is_full_refresh_done
	tbz	w0, #0, .LBB14_29
// %bb.19:                              //   in Loop: Header=BB14_3 Depth=1
	str	w22, [x25, #912]
	b	.LBB14_2
.LBB14_20:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #304]
	add	x0, x25, #40
	add	x1, x25, #232
	sub	w8, w8, #1
	str	w8, [x25, #304]
	bl	flip
	ldr	x0, [x27, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldr	w8, [x25, #304]
	cbz	w8, .LBB14_2
// %bb.21:                              //   in Loop: Header=BB14_3 Depth=1
	ldp	x10, x9, [x25, #440]
	add	x3, x25, #232
	ldrsw	x8, [x25, #112]
	ldr	w11, [x25, #204]
	mov	w4, #2                          // =0x2
	ldr	x0, [x21, x8, lsl #3]
	ldr	x1, [x9, #16]
	ldr	x2, [x10, #16]
	cbz	w11, .LBB14_31
// %bb.22:                              //   in Loop: Header=BB14_3 Depth=1
	bl	direct_mode_data_change_part2
	b	.LBB14_2
.LBB14_23:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #304]
	add	x0, x25, #40
	add	x1, x25, #232
	sub	w8, w8, #1
	str	w8, [x25, #304]
	bl	flip
	ldr	x0, [x27, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldr	w8, [x25, #304]
	cbz	w8, .LBB14_2
// %bb.24:                              //   in Loop: Header=BB14_3 Depth=1
	ldp	x11, x10, [x25, #440]
	ldrsw	x9, [x25, #112]
	ldr	w12, [x25, #204]
	ldr	x0, [x21, x9, lsl #3]
	ldr	x22, [x10, #16]
	ldr	x21, [x11, #16]
	cbz	w12, .LBB14_39
// %bb.25:                              //   in Loop: Header=BB14_3 Depth=1
	add	x3, x25, #232
	mov	x1, x22
	mov	x2, x21
	mov	w4, #2                          // =0x2
	bl	direct_mode_data_change2
	b	.LBB14_46
.LBB14_26:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w19, [x25, #112]
	mov	x0, x23
	bl	up
	ldrsw	x8, [x25, #112]
	ldp	x1, x2, [x25, #368]
	ldp	x3, x4, [x25, #392]
	add	x5, x25, #232
	ldr	w9, [x25, #204]
	ldr	x0, [x21, x8, lsl #3]
	cbz	w9, .LBB14_36
// %bb.27:                              //   in Loop: Header=BB14_3 Depth=1
	bl	get_overlay_image_area2
	b	.LBB14_37
.LBB14_28:                              //   in Loop: Header=BB14_3 Depth=1
	bl	get_auto_image
	b	.LBB14_2
.LBB14_29:                              //   in Loop: Header=BB14_3 Depth=1
	ldp	x10, x9, [x25, #440]
	add	x3, x25, #232
	ldrsw	x8, [x25, #112]
	ldr	w11, [x25, #204]
	mov	w4, #2                          // =0x2
	ldr	x0, [x21, x8, lsl #3]
	ldr	x1, [x9, #16]
	ldr	x2, [x10, #16]
	cbz	w11, .LBB14_47
// %bb.30:                              //   in Loop: Header=BB14_3 Depth=1
	bl	direct_mode_data_change_full2
	b	.LBB14_2
.LBB14_31:                              //   in Loop: Header=BB14_3 Depth=1
	bl	direct_mode_data_change_part
	b	.LBB14_2
.LBB14_32:                              //   in Loop: Header=BB14_3 Depth=1
	bl	get_overlay_image
	b	.LBB14_2
.LBB14_33:                              //   in Loop: Header=BB14_3 Depth=1
	mov	x0, x23
	bl	up
	ldr	w8, [x25, #820]
	cbz	w8, .LBB14_52
.LBB14_34:                              //   in Loop: Header=BB14_3 Depth=1
	ldrsw	x8, [x25, #112]
	ldp	x1, x2, [x25, #368]
	ldr	w9, [x25, #204]
	add	x4, x25, #232
	mov	w5, #1                          // =0x1
	ldr	x0, [x21, x8, lsl #3]
	ldr	x3, [x25, #392]
	cbz	w9, .LBB14_60
// %bb.35:                              //   in Loop: Header=BB14_3 Depth=1
	bl	get_auto_image2
	b	.LBB14_62
.LBB14_36:                              //   in Loop: Header=BB14_3 Depth=1
	bl	get_overlay_image_area
.LBB14_37:                              //   in Loop: Header=BB14_3 Depth=1
	ldrsw	x8, [x25, #112]
	ldrsw	x2, [x25, #264]
	sub	w9, w22, w8
	ldr	x1, [x21, x8, lsl #3]
	ldr	x0, [x21, w9, sxtw #3]
	bl	memcpy
	ldr	x0, [x25, #40]
	ldrb	w8, [x0, #796]
	tbnz	w8, #6, .LBB14_2
// %bb.38:                              //   in Loop: Header=BB14_3 Depth=1
	sub	w8, w22, w19
	mov	w10, #24                        // =0x18
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	sxtw	x8, w8
	ldrsw	x2, [x25, #264]
	mov	w3, #1                          // =0x1
	smaddl	x8, w8, w10, x9
	ldr	x1, [x8, #8]
	bl	__dma_sync_single_for_device
	b	.LBB14_2
.LBB14_39:                              //   in Loop: Header=BB14_3 Depth=1
	adrp	x9, global_ebc
	mov	x14, #512                       // =0x200
	ldrb	w11, [x25, #288]
	ldr	x13, [x9, :lo12:global_ebc]
	movk	x14, #1540, lsl #16
	ldr	x9, [x25, #352]
	movk	x14, #2568, lsl #32
	ldr	w12, [x13, #120]
	movk	x14, #3596, lsl #48
	stur	x14, [x29, #-8]
	cmp	w12, #0
	cinc	w10, w12, lt
	cmp	w12, #2
	b.lt	.LBB14_45
// %bb.40:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w14, [x13, #196]
	ldr	w13, [x13, #116]
	sub	w12, w12, #1
	sub	w8, w11, w8
	asr	w28, w10, #1
	mov	w27, wzr
	cmp	w14, #0
	ubfx	x11, x13, #2, #30
	lsl	w8, w8, #10
	csel	w12, wzr, w12, eq
	stur	x13, [x29, #-16]                // 8-byte Folded Spill
	mul	w12, w12, w13
	cneg	w11, w11, ne
	lsr	x13, x13, #2
	add	x23, x9, w8, sxtw
	sxtw	x24, w11
	and	x19, x13, #0x3ffffffe
	lsr	w12, w12, #2
	add	x26, x0, x12
	b	.LBB14_42
.LBB14_41:                              //   in Loop: Header=BB14_42 Depth=2
	add	w27, w27, #1
	add	x26, x26, x24
	cmp	w27, w28
	b.eq	.LBB14_45
.LBB14_42:                              //   Parent Loop BB14_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB14_44 Depth 3
	ldur	x8, [x29, #-16]                 // 8-byte Folded Reload
	cmp	w8, #8
	b.lo	.LBB14_41
// %bb.43:                              //   in Loop: Header=BB14_42 Depth=2
	mov	x20, xzr
.LBB14_44:                              //   Parent Loop BB14_3 Depth=1
                                        //     Parent Loop BB14_42 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x2, [x22], #8
	sub	x3, x29, #8
	ldr	x1, [x21], #8
	mov	x0, x23
	bl	ebc_get_8pix_wf_full
	strh	w0, [x26, x20]
	add	x20, x20, #2
	cmp	x19, x20
	b.ne	.LBB14_44
	b	.LBB14_41
.LBB14_45:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	x24, [sp, #8]                   // 8-byte Folded Reload
	adrp	x20, ebc_auto_thread_sem
	add	x20, x20, :lo12:ebc_auto_thread_sem
	adrp	x23, ebc_assist_finished_flag_sem
	add	x23, x23, :lo12:ebc_assist_finished_flag_sem
	mov	w26, #2                         // =0x2
	adrp	x27, ebc_auto_assist_task
	mov	w28, #255                       // =0xff
.LBB14_46:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	x21, [sp, #24]                  // 8-byte Folded Reload
	mov	w22, #1                         // =0x1
	b	.LBB14_2
.LBB14_47:                              //   in Loop: Header=BB14_3 Depth=1
	bl	direct_mode_data_change_full
	b	.LBB14_2
.LBB14_48:                              //   in Loop: Header=BB14_3 Depth=1
	mov	x0, x23
	bl	up
	ldr	w8, [x25, #820]
	cbnz	w8, .LBB14_50
// %bb.49:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	x8, [x25, #448]
	ldp	x0, x1, [x25, #368]
	ldp	x4, x5, [x25, #392]
	add	x6, x25, #232
	ldr	x2, [x25, #248]
	ldr	x3, [x8, #16]
	bl	refresh_new_image
.LBB14_50:                              //   in Loop: Header=BB14_3 Depth=1
	ldrsw	x8, [x25, #112]
	ldp	x1, x2, [x25, #368]
	ldp	x3, x4, [x25, #392]
	add	x5, x25, #232
	ldr	w9, [x25, #204]
	mov	w6, #1                          // =0x1
	ldr	x0, [x21, x8, lsl #3]
	cbz	w9, .LBB14_61
// %bb.51:                              //   in Loop: Header=BB14_3 Depth=1
	bl	get_overlay_image2
	b	.LBB14_62
.LBB14_52:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #316]
	ldr	w9, [x25, #312]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w10, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB14_34
// %bb.53:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	x12, [x25, #448]
	asr	w10, w10, #3
	ldr	x11, [x25, #392]
	ldr	x13, [x25, #368]
	mov	w14, wzr
	ldr	x12, [x12, #16]
	b	.LBB14_55
.LBB14_54:                              //   in Loop: Header=BB14_55 Depth=2
	add	w14, w14, #1
	cmp	w14, w9
	b.eq	.LBB14_34
.LBB14_55:                              //   Parent Loop BB14_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB14_58 Depth 3
	cmp	w8, #8
	b.lt	.LBB14_54
// %bb.56:                              //   in Loop: Header=BB14_55 Depth=2
	mov	w15, w10
	b	.LBB14_58
.LBB14_57:                              //   in Loop: Header=BB14_58 Depth=3
	subs	w15, w15, #1
	add	x11, x11, #8
	add	x13, x13, #8
	b.eq	.LBB14_54
.LBB14_58:                              //   Parent Loop BB14_3 Depth=1
                                        //     Parent Loop BB14_55 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x16, [x12], #8
	ldr	x17, [x13]
	cmp	x16, x17
	b.eq	.LBB14_57
// %bb.59:                              //   in Loop: Header=BB14_58 Depth=3
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
	b	.LBB14_57
.LBB14_60:                              //   in Loop: Header=BB14_3 Depth=1
	bl	get_auto_image
	b	.LBB14_62
.LBB14_61:                              //   in Loop: Header=BB14_3 Depth=1
	bl	get_overlay_image
.LBB14_62:                              //   in Loop: Header=BB14_3 Depth=1
	str	w22, [x25, #300]
	adrp	x8, jiffies
	add	x0, x25, #760
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, #1
	bl	mod_timer
	b	.LBB14_2
.Lfunc_end14:
	.size	ebc_auto_tast_function, .Lfunc_end14-ebc_auto_tast_function
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_auto_assist_tast_function
	.type	ebc_auto_assist_tast_function,@function
	.word	2314953021                      // 0x89fb613d
ebc_auto_assist_tast_function:          // @ebc_auto_assist_tast_function
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #128
	adrp	x8, global_ebc
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	adrp	x24, ebc_assist_finished_flag_sem
	add	x24, x24, :lo12:ebc_assist_finished_flag_sem
	ldr	x23, [x8, :lo12:global_ebc]
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	adrp	x19, ebc_auto_assist_thread_sem
	add	x19, x19, :lo12:ebc_auto_assist_thread_sem
	mov	w21, #2                         // =0x2
	add	x22, x23, #408
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	stp	x28, x27, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #32
	//APP
	mrs	x20, SP_EL0
	//NO_APP
	stp	x26, x25, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x20, [sp]                  // 16-byte Folded Spill
	b	.LBB15_3
.LBB15_1:                               //   in Loop: Header=BB15_3 Depth=1
	bl	get_auto_image2
.LBB15_2:                               //   in Loop: Header=BB15_3 Depth=1
	mov	x0, x24
	bl	up
	mov	x0, x19
	bl	up
	bl	schedule
.LBB15_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB15_30 Depth 2
                                        //       Child Loop BB15_32 Depth 3
	mov	x0, x19
	bl	down
	str	w21, [x20, #48]
	//APP
	dmb	ish
	//NO_APP
	ldr	w8, [x23, #472]
	cmp	w8, #3
	b.gt	.LBB15_8
// %bb.4:                               //   in Loop: Header=BB15_3 Depth=1
	cmp	w8, #1
	b.eq	.LBB15_16
// %bb.5:                               //   in Loop: Header=BB15_3 Depth=1
	cmp	w8, #3
	b.ne	.LBB15_12
// %bb.6:                               //   in Loop: Header=BB15_3 Depth=1
	ldrsw	x8, [x23, #112]
	ldp	x1, x2, [x23, #368]
	ldr	w9, [x23, #204]
	add	x4, x23, #232
	mov	w5, #3                          // =0x3
	ldr	x0, [x22, x8, lsl #3]
	ldr	x3, [x23, #392]
	cbnz	w9, .LBB15_1
// %bb.7:                               //   in Loop: Header=BB15_3 Depth=1
	bl	get_auto_image
	b	.LBB15_2
.LBB15_8:                               //   in Loop: Header=BB15_3 Depth=1
	cmp	w8, #5
	b.eq	.LBB15_2
// %bb.9:                               //   in Loop: Header=BB15_3 Depth=1
	cmp	w8, #4
	b.ne	.LBB15_12
// %bb.10:                              //   in Loop: Header=BB15_3 Depth=1
	ldrsw	x8, [x23, #112]
	ldp	x1, x2, [x23, #368]
	ldp	x3, x4, [x23, #392]
	add	x5, x23, #232
	ldr	w9, [x23, #204]
	mov	w6, #3                          // =0x3
	ldr	x0, [x22, x8, lsl #3]
	cbz	w9, .LBB15_22
// %bb.11:                              //   in Loop: Header=BB15_3 Depth=1
	bl	get_overlay_image2
	b	.LBB15_2
.LBB15_12:                              //   in Loop: Header=BB15_3 Depth=1
	ldr	x9, [x23, #448]
	ldr	w8, [x9, #40]
	cmp	w8, #21
	b.ne	.LBB15_19
// %bb.13:                              //   in Loop: Header=BB15_3 Depth=1
	add	x0, x23, #232
	bl	is_full_refresh_done
	tbnz	w0, #0, .LBB15_2
// %bb.14:                              //   in Loop: Header=BB15_3 Depth=1
	ldp	x10, x9, [x23, #440]
	add	x3, x23, #232
	ldrsw	x8, [x23, #112]
	ldr	w11, [x23, #204]
	mov	w4, #3                          // =0x3
	ldr	x0, [x22, x8, lsl #3]
	ldr	x1, [x9, #16]
	ldr	x2, [x10, #16]
	cbz	w11, .LBB15_26
// %bb.15:                              //   in Loop: Header=BB15_3 Depth=1
	bl	direct_mode_data_change_full2
	b	.LBB15_2
.LBB15_16:                              //   in Loop: Header=BB15_3 Depth=1
	ldr	w8, [x23, #304]
	cbz	w8, .LBB15_2
// %bb.17:                              //   in Loop: Header=BB15_3 Depth=1
	ldp	x10, x9, [x23, #440]
	add	x3, x23, #232
	ldrsw	x8, [x23, #112]
	ldr	w11, [x23, #204]
	mov	w4, #3                          // =0x3
	ldr	x0, [x22, x8, lsl #3]
	ldr	x1, [x9, #16]
	ldr	x2, [x10, #16]
	cbz	w11, .LBB15_23
// %bb.18:                              //   in Loop: Header=BB15_3 Depth=1
	bl	direct_mode_data_change_part2
	b	.LBB15_2
.LBB15_19:                              //   in Loop: Header=BB15_3 Depth=1
	ldr	w8, [x23, #304]
	cbz	w8, .LBB15_2
// %bb.20:                              //   in Loop: Header=BB15_3 Depth=1
	ldrsw	x10, [x23, #112]
	ldr	x11, [x23, #440]
	ldr	w12, [x23, #204]
	ldr	x1, [x9, #16]
	ldr	x0, [x22, x10, lsl #3]
	ldr	x2, [x11, #16]
	cbz	w12, .LBB15_24
// %bb.21:                              //   in Loop: Header=BB15_3 Depth=1
	add	x3, x23, #232
	mov	w4, #3                          // =0x3
	bl	direct_mode_data_change2
	b	.LBB15_2
.LBB15_22:                              //   in Loop: Header=BB15_3 Depth=1
	bl	get_overlay_image
	b	.LBB15_2
.LBB15_23:                              //   in Loop: Header=BB15_3 Depth=1
	bl	direct_mode_data_change_part
	b	.LBB15_2
.LBB15_24:                              //   in Loop: Header=BB15_3 Depth=1
	adrp	x9, global_ebc
	ldrb	w10, [x23, #288]
	ldr	x9, [x9, :lo12:global_ebc]
	ldp	w15, w25, [x9, #116]
	ldr	w12, [x9, #196]
	ldr	x9, [x23, #352]
	cmp	w25, #0
	cinc	w11, w25, lt
	asr	w27, w11, #1
	mov	x11, #512                       // =0x200
	movk	x11, #1540, lsl #16
	movk	x11, #2568, lsl #32
	movk	x11, #3596, lsl #48
	stur	x11, [x29, #-8]
	cbz	w12, .LBB15_27
// %bb.25:                              //   in Loop: Header=BB15_3 Depth=1
	mvn	w12, w27
	neg	w11, w15, lsr #2
	add	w12, w25, w12
	cmp	w25, #1
	b.ge	.LBB15_28
	b	.LBB15_33
.LBB15_26:                              //   in Loop: Header=BB15_3 Depth=1
	bl	direct_mode_data_change_full
	b	.LBB15_2
.LBB15_27:                              //   in Loop: Header=BB15_3 Depth=1
	lsr	w11, w15, #2
	mov	w12, w27
	cmp	w25, #1
	b.lt	.LBB15_33
.LBB15_28:                              //   in Loop: Header=BB15_3 Depth=1
	lsr	x13, x15, #3
	mul	w12, w12, w15
	sub	w8, w10, w8
	lsl	w8, w8, #10
	mul	w14, w27, w13
	lsl	x20, x13, #1
	lsr	w12, w12, #2
	add	x21, x9, w8, sxtw
	sxtw	x8, w11
	sbfiz	x10, x14, #3, #32
	add	x19, x0, x12
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	add	x26, x1, x10
	add	x24, x2, x10
	b	.LBB15_30
.LBB15_29:                              //   in Loop: Header=BB15_30 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	add	w27, w27, #1
	mov	x15, x28
	cmp	w27, w25
	add	x19, x19, x8
	b.eq	.LBB15_33
.LBB15_30:                              //   Parent Loop BB15_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_32 Depth 3
	mov	x28, x15
	cmp	w15, #8
	b.lo	.LBB15_29
// %bb.31:                              //   in Loop: Header=BB15_30 Depth=2
	mov	x22, xzr
.LBB15_32:                              //   Parent Loop BB15_3 Depth=1
                                        //     Parent Loop BB15_30 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x2, [x26], #8
	sub	x3, x29, #8
	ldr	x1, [x24], #8
	mov	x0, x21
	bl	ebc_get_8pix_wf_full
	strh	w0, [x19, x22]
	add	x22, x22, #2
	cmp	x20, x22
	b.ne	.LBB15_32
	b	.LBB15_29
.LBB15_33:                              //   in Loop: Header=BB15_3 Depth=1
	ldp	x22, x20, [sp]                  // 16-byte Folded Reload
	adrp	x19, ebc_auto_assist_thread_sem
	add	x19, x19, :lo12:ebc_auto_assist_thread_sem
	mov	w21, #2                         // =0x2
	adrp	x24, ebc_assist_finished_flag_sem
	add	x24, x24, :lo12:ebc_assist_finished_flag_sem
	b	.LBB15_2
.Lfunc_end15:
	.size	ebc_auto_assist_tast_function, .Lfunc_end15-ebc_auto_assist_tast_function
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_thread
	.type	ebc_thread,@function
	.word	2314953021                      // 0x89fb613d
ebc_thread:                             // @ebc_thread
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #160
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	mov	x22, #1030792151040             // =0xf000000000
	ldr	x21, [x8, :lo12:global_ebc]
	stp	x28, x27, [sp, #80]             // 16-byte Folded Spill
	mov	w28, #-268435456                // =0xf0000000
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	mov	w26, #1                         // =0x1
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	mov	x24, #67553994410557440         // =0xf0000000000000
	mov	w23, #232                       // =0xe8
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	mov	x20, #263882790666240           // =0xf00000000000
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	b	.LBB16_2
.LBB16_1:                               //   in Loop: Header=BB16_2 Depth=1
	bl	ebc_buf_release
.LBB16_2:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB16_258 Depth 2
                                        //     Child Loop BB16_142 Depth 2
                                        //       Child Loop BB16_147 Depth 3
                                        //     Child Loop BB16_402 Depth 2
                                        //     Child Loop BB16_437 Depth 2
                                        //     Child Loop BB16_443 Depth 2
                                        //     Child Loop BB16_393 Depth 2
                                        //       Child Loop BB16_396 Depth 3
                                        //     Child Loop BB16_453 Depth 2
                                        //     Child Loop BB16_51 Depth 2
                                        //     Child Loop BB16_75 Depth 2
                                        //     Child Loop BB16_130 Depth 2
                                        //     Child Loop BB16_90 Depth 2
                                        //     Child Loop BB16_286 Depth 2
                                        //     Child Loop BB16_290 Depth 2
                                        //       Child Loop BB16_298 Depth 3
                                        //         Child Loop BB16_302 Depth 4
                                        //       Child Loop BB16_325 Depth 3
                                        //       Child Loop BB16_343 Depth 3
                                        //     Child Loop BB16_357 Depth 2
                                        //     Child Loop BB16_363 Depth 2
                                        //     Child Loop BB16_373 Depth 2
                                        //       Child Loop BB16_375 Depth 3
                                        //     Child Loop BB16_467 Depth 2
                                        //     Child Loop BB16_12 Depth 2
                                        //     Child Loop BB16_19 Depth 2
                                        //     Child Loop BB16_104 Depth 2
	bl	ebc_osd_buf_get
	cbnz	x0, .LBB16_23
// %bb.3:                               //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #816]
	str	wzr, [x21, #324]
	cbz	w8, .LBB16_6
// %bb.4:                               //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #812]
	cbnz	w8, .LBB16_6
// %bb.5:                               //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #820]
	cbz	w8, .LBB16_7
.LBB16_6:                               //   in Loop: Header=BB16_2 Depth=1
	bl	ebc_dsp_buf_get
	cbnz	x0, .LBB16_34
.LBB16_7:                               //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #320]
	cbnz	w8, .LBB16_264
// %bb.8:                               //   in Loop: Header=BB16_2 Depth=1
	bl	ebc_get_power_off_delay
	bl	__msecs_to_jiffies
	ldr	w8, [x21, #320]
	cbnz	w8, .LBB16_16
// %bb.9:                               //   in Loop: Header=BB16_2 Depth=1
	cbz	x0, .LBB16_16
// %bb.10:                              //   in Loop: Header=BB16_2 Depth=1
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
	ldr	w9, [x21, #320]
	cmp	x19, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x19, xzr, eq
	cbnz	w9, .LBB16_15
// %bb.11:                              //   in Loop: Header=BB16_2 Depth=1
	cbz	x8, .LBB16_15
.LBB16_12:                              //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	cbnz	x0, .LBB16_118
// %bb.13:                              //   in Loop: Header=BB16_12 Depth=2
	mov	x0, x8
	bl	schedule_timeout
	mov	x19, x0
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w9, [x21, #320]
	cmp	x19, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x19, xzr, eq
	cbnz	w9, .LBB16_15
// %bb.14:                              //   in Loop: Header=BB16_12 Depth=2
	cbnz	x8, .LBB16_12
.LBB16_15:                              //   in Loop: Header=BB16_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	ldr	w8, [x21, #320]
.LBB16_16:                              //   in Loop: Header=BB16_2 Depth=1
	cbnz	w8, .LBB16_2
.LBB16_17:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #284]
	cmp	w8, #1
	b.ne	.LBB16_61
// %bb.18:                              //   in Loop: Header=BB16_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB16_19:                              //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_97
// %bb.20:                              //   in Loop: Header=BB16_19 Depth=2
	ldr	w8, [x21, #320]
	cbnz	w8, .LBB16_97
// %bb.21:                              //   in Loop: Header=BB16_19 Depth=2
	cbnz	x0, .LBB16_98
// %bb.22:                              //   in Loop: Header=BB16_19 Depth=2
	bl	schedule
	b	.LBB16_19
.LBB16_23:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #800]
	cbnz	w8, .LBB16_32
// %bb.24:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #804]
	cbnz	w8, .LBB16_32
// %bb.25:                              //   in Loop: Header=BB16_2 Depth=1
	ldp	w8, w9, [x0, #48]
	orr	w8, w9, w8
	cbnz	w8, .LBB16_41
// %bb.26:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x0, #56]
	ldr	w9, [x21, #316]
	cmp	w9, w8
	b.ne	.LBB16_41
// %bb.27:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x0, #60]
	ldr	w9, [x21, #312]
	cmp	w9, w8
	b.ne	.LBB16_41
// %bb.28:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #472]
	cmp	w8, #4
	b.eq	.LBB16_135
// %bb.29:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_31
// %bb.30:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #328]
	mov	x19, x0
	adrp	x1, .L.str.79
	add	x1, x1, :lo12:.L.str.79
	mov	x0, x8
	bl	_dev_info
	mov	x0, x19
.LBB16_31:                              //   in Loop: Header=BB16_2 Depth=1
	bl	ebc_buf_release
	b	.LBB16_2
.LBB16_32:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_1
// %bb.33:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #328]
	mov	x19, x0
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	mov	x0, x8
	bl	_dev_info
	mov	x0, x19
	b	.LBB16_1
.LBB16_34:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w2, [x0, #40]
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	cmp	w2, #21
	b.ne	.LBB16_44
.LBB16_35:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #676]
	cbnz	w8, .LBB16_37
// %bb.36:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [x21, #440]
	ldr	w2, [x8, #40]
.LBB16_37:                              //   in Loop: Header=BB16_2 Depth=1
	cmp	w2, #23
	b.hi	.LBB16_252
// %bb.38:                              //   in Loop: Header=BB16_2 Depth=1
	lsl	w8, w26, w2
	tst	w8, #0x1ff80
	b.ne	.LBB16_47
// %bb.39:                              //   in Loop: Header=BB16_2 Depth=1
	mov	w9, #124                        // =0x7c
	movk	w9, #34, lsl #16
	tst	w8, w9
	b.eq	.LBB16_114
// %bb.40:                              //   in Loop: Header=BB16_2 Depth=1
	mov	w19, #2                         // =0x2
	ldr	w8, [x21, #284]
	cbnz	w8, .LBB16_48
	b	.LBB16_66
.LBB16_41:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #472]
	cmp	w8, #1
	b.eq	.LBB16_54
// %bb.42:                              //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #5
	b.eq	.LBB16_54
// %bb.43:                              //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #2
	b.eq	.LBB16_57
	b	.LBB16_135
.LBB16_44:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w9, [x21, #808]
	ldr	w8, [x21, #472]
	cbnz	w9, .LBB16_58
// %bb.45:                              //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #4
	b.ne	.LBB16_35
// %bb.46:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_35
	b	.LBB16_405
.LBB16_47:                              //   in Loop: Header=BB16_2 Depth=1
	mov	w19, #1                         // =0x1
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_66
.LBB16_48:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_50
// %bb.49:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.87
	add	x1, x1, :lo12:.L.str.87
	bl	_dev_info
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_64
.LBB16_50:                              //   in Loop: Header=BB16_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB16_51:                              //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_63
// %bb.52:                              //   in Loop: Header=BB16_51 Depth=2
	cbnz	x0, .LBB16_64
// %bb.53:                              //   in Loop: Header=BB16_51 Depth=2
	bl	schedule
	b	.LBB16_51
.LBB16_54:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w2, [x21, #304]
	cbnz	w2, .LBB16_107
// %bb.55:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #828]
	cbz	w8, .LBB16_57
// %bb.56:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #824]
	cbnz	w8, .LBB16_254
.LBB16_57:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x9, [x21, #440]
	ldr	x8, [x21, #376]
	mov	x19, x0
	ldrsw	x2, [x21, #260]
	ldr	x1, [x9, #16]
	mov	x0, x8
	bl	memcpy
	ldr	x8, [x21, #448]
	ldr	x0, [x21, #368]
	ldrsw	x2, [x21, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	b	.LBB16_134
.LBB16_58:                              //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #1
	b.eq	.LBB16_110
// %bb.59:                              //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #5
	b.eq	.LBB16_110
// %bb.60:                              //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #2
	b.eq	.LBB16_113
	b	.LBB16_405
.LBB16_61:                              //   in Loop: Header=BB16_2 Depth=1
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_2
// %bb.62:                              //   in Loop: Header=BB16_2 Depth=1
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB16_2
	b	.LBB16_101
.LBB16_63:                              //   in Loop: Header=BB16_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_64:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_66
// %bb.65:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.88
	add	x1, x1, :lo12:.L.str.88
	bl	_dev_info
.LBB16_66:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #472]
	sub	w9, w8, #3
	cmp	w9, #2
	b.hs	.LBB16_68
// %bb.67:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #440]
	str	wzr, [x21, #824]
	ldr	x1, [x21, #376]
	str	wzr, [x21, #836]
	ldrsw	x2, [x21, #260]
	ldr	x0, [x8, #16]
	bl	memcpy
	b	.LBB16_70
.LBB16_68:                              //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #1
	b.ne	.LBB16_70
// %bb.69:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w2, [x21, #304]
	cbnz	w2, .LBB16_119
.LBB16_70:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #40]
	sub	w9, w8, #6
	cmp	w9, #6
	b.lo	.LBB16_72
// %bb.71:                              //   in Loop: Header=BB16_2 Depth=1
	sub	w9, w8, #2
	cmp	w9, #1
	b.hi	.LBB16_84
.LBB16_72:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w10, [x21, #260]
	add	w9, w10, #7
	cmp	w10, #0
	csel	w9, w9, w10, lt
	cmp	w10, #8
	b.lt	.LBB16_94
// %bb.73:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x10, [x21, #440]
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	asr	w9, w9, #3
	ldr	x10, [x10, #16]
	ldr	x11, [x11, #16]
	b	.LBB16_75
.LBB16_74:                              //   in Loop: Header=BB16_75 Depth=2
	subs	w9, w9, #1
	b.eq	.LBB16_94
.LBB16_75:                              //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x12, [x11], #8
	ldr	x13, [x10], #8
	eor	x14, x13, x12
	tst	x14, #0xf8f8f8f8f8f8f8f8
	b.eq	.LBB16_74
// %bb.76:                              //   in Loop: Header=BB16_75 Depth=2
	and	w14, w12, #0xf8
	and	w15, w13, #0xf8
	subs	w14, w14, w15
	cneg	w14, w14, mi
	cmp	w14, #8
	b.hi	.LBB16_84
// %bb.77:                              //   in Loop: Header=BB16_75 Depth=2
	ubfx	x14, x12, #8, #24
	ubfx	x15, x13, #8, #24
	and	w14, w14, #0xf8
	and	w15, w15, #0xf8
	subs	w14, w14, w15
	cneg	w14, w14, mi
	cmp	w14, #8
	b.hi	.LBB16_84
// %bb.78:                              //   in Loop: Header=BB16_75 Depth=2
	ubfx	x14, x12, #16, #16
	ubfx	x15, x13, #16, #16
	and	w14, w14, #0xf8
	and	w15, w15, #0xf8
	subs	w14, w14, w15
	cneg	w14, w14, mi
	cmp	w14, #8
	b.hi	.LBB16_84
// %bb.79:                              //   in Loop: Header=BB16_75 Depth=2
	and	x14, x12, #0xf8f8f8f8f8f8f8f8
	and	x15, x13, #0xf8f8f8f8f8f8f8f8
	ubfx	x16, x14, #24, #8
	ubfx	x17, x15, #24, #8
	subs	w16, w16, w17
	cneg	w16, w16, mi
	cmp	w16, #8
	b.hi	.LBB16_84
// %bb.80:                              //   in Loop: Header=BB16_75 Depth=2
	lsr	x16, x12, #32
	lsr	x17, x13, #32
	and	w16, w16, #0xf8
	and	w17, w17, #0xf8
	subs	w16, w16, w17
	cneg	w16, w16, mi
	cmp	w16, #8
	b.hi	.LBB16_84
// %bb.81:                              //   in Loop: Header=BB16_75 Depth=2
	lsr	x16, x12, #40
	lsr	x17, x13, #40
	and	w16, w16, #0xf8
	and	w17, w17, #0xf8
	subs	w16, w16, w17
	cneg	w16, w16, mi
	cmp	w16, #8
	b.hi	.LBB16_84
// %bb.82:                              //   in Loop: Header=BB16_75 Depth=2
	lsr	x12, x12, #48
	lsr	x13, x13, #48
	and	w12, w12, #0xf8
	and	w13, w13, #0xf8
	subs	w12, w12, w13
	cneg	w12, w12, mi
	cmp	w12, #8
	b.hi	.LBB16_84
// %bb.83:                              //   in Loop: Header=BB16_75 Depth=2
	lsr	x12, x14, #56
	lsr	x13, x15, #56
	subs	w12, w12, w13
	cneg	w12, w12, mi
	cmp	w12, #8
	b.ls	.LBB16_74
.LBB16_84:                              //   in Loop: Header=BB16_2 Depth=1
	sub	w10, w8, #12
	ldr	w9, [x21, #828]
	mov	w13, #240                       // =0xf0
	cmp	w10, #2
	b.hi	.LBB16_122
// %bb.85:                              //   in Loop: Header=BB16_2 Depth=1
	cbz	w9, .LBB16_122
// %bb.86:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #824]
	cbnz	w8, .LBB16_244
// %bb.87:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #836]
	cbnz	w8, .LBB16_265
// %bb.88:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #260]
	add	w9, w8, #7
	cmp	w8, #0
	csel	w9, w9, w8, lt
	cmp	w8, #8
	b.lt	.LBB16_92
// %bb.89:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x10, [x21, #440]
	asr	w9, w9, #3
	mov	x11, xzr
	ldr	x1, [x10, #16]
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	ldr	x10, [x10, #16]
.LBB16_90:                              //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x12, [x10, x11, lsl #3]
	ldr	x13, [x1, x11, lsl #3]
	cmp	x12, x13
	b.ne	.LBB16_266
// %bb.91:                              //   in Loop: Header=BB16_90 Depth=2
	add	x11, x11, #1
	cmp	w9, w11
	b.ne	.LBB16_90
.LBB16_92:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_253
// %bb.93:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.92
	add	x1, x1, :lo12:.L.str.92
	bl	_dev_info
	b	.LBB16_253
.LBB16_94:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_96
// %bb.95:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.91
	add	x1, x1, :lo12:.L.str.91
	bl	_dev_info
.LBB16_96:                              //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [x21, #448]
	ldr	w8, [x21, #676]
	cbz	w8, .LBB16_429
	b	.LBB16_478
.LBB16_97:                              //   in Loop: Header=BB16_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_98:                              //   in Loop: Header=BB16_2 Depth=1
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_2
// %bb.99:                              //   in Loop: Header=BB16_2 Depth=1
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB16_2
// %bb.100:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #284]
	cbnz	w8, .LBB16_102
.LBB16_101:                             //   in Loop: Header=BB16_2 Depth=1
	mov	x0, x21
	mov	w1, wzr
	bl	ebc_power_set
.LBB16_102:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #320]
	cbnz	w8, .LBB16_264
// %bb.103:                             //   in Loop: Header=BB16_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB16_104:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x21, #320]
	cbnz	w8, .LBB16_263
// %bb.105:                             //   in Loop: Header=BB16_104 Depth=2
	cbnz	x0, .LBB16_264
// %bb.106:                             //   in Loop: Header=BB16_104 Depth=2
	bl	schedule
	b	.LBB16_104
.LBB16_107:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	mov	x19, x0
	cmp	w8, #0
	b.le	.LBB16_132
// %bb.108:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.80
	add	x1, x1, :lo12:.L.str.80
	bl	_dev_info
	ldr	w8, [x21, #852]
	str	wzr, [x21, #812]
	cmp	w8, #1
	b.lt	.LBB16_133
// %bb.109:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.81
	add	x1, x1, :lo12:.L.str.81
	bl	_dev_info
	b	.LBB16_133
.LBB16_110:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w2, [x21, #304]
	cbnz	w2, .LBB16_242
// %bb.111:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #828]
	cbz	w8, .LBB16_113
// %bb.112:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #824]
	cbnz	w8, .LBB16_398
.LBB16_113:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #440]
	ldr	x0, [x21, #376]
	ldrsw	x2, [x21, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x21, #448]
	ldr	x0, [x21, #368]
	ldrsw	x2, [x21, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	b	.LBB16_405
.LBB16_114:                             //   in Loop: Header=BB16_2 Depth=1
	mov	w9, #1                          // =0x1
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.eq	.LBB16_252
// %bb.115:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #472]
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	cmp	w8, #3
	str	x9, [x21, #448]
	b.gt	.LBB16_245
// %bb.116:                             //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #1
	b.eq	.LBB16_247
// %bb.117:                             //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #2
	b.eq	.LBB16_250
	b	.LBB16_388
.LBB16_118:                             //   in Loop: Header=BB16_2 Depth=1
	mov	w8, wzr
	cbnz	w8, .LBB16_2
	b	.LBB16_17
.LBB16_119:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_121
// %bb.120:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.90
	add	x1, x1, :lo12:.L.str.90
	bl	_dev_info
.LBB16_121:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	w8, #21                         // =0x15
	str	wzr, [x21, #304]
	mov	w19, #2                         // =0x2
	mov	w13, #240                       // =0xf0
	str	w8, [x9, #40]
	ldr	w9, [x21, #828]
.LBB16_122:                             //   in Loop: Header=BB16_2 Depth=1
	cbz	w9, .LBB16_271
// %bb.123:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w9, [x21, #824]
	cbz	w9, .LBB16_271
// %bb.124:                             //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #21
	b.eq	.LBB16_271
// %bb.125:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_127
// %bb.126:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.93
	add	x1, x1, :lo12:.L.str.93
	bl	_dev_info
	mov	w13, #240                       // =0xf0
.LBB16_127:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #260]
	cmp	w8, #1
	b.lt	.LBB16_270
// %bb.128:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x10, [x21, #448]
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	ldr	x9, [x21, #384]
	ldr	x10, [x10, #16]
	ldr	x11, [x11, #16]
	b	.LBB16_130
.LBB16_129:                             //   in Loop: Header=BB16_130 Depth=2
	subs	x8, x8, #1
	add	x10, x10, #1
	add	x11, x11, #1
	b.eq	.LBB16_270
.LBB16_130:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w12, [x9], #1
	cbz	w12, .LBB16_129
// %bb.131:                             //   in Loop: Header=BB16_130 Depth=2
	ldrb	w12, [x11]
	bic	w12, w13, w12
	strb	w12, [x10]
	b	.LBB16_129
.LBB16_132:                             //   in Loop: Header=BB16_2 Depth=1
	str	wzr, [x21, #812]
.LBB16_133:                             //   in Loop: Header=BB16_2 Depth=1
	adrp	x8, jiffies
	ldr	x27, [x8, :lo12:jiffies]
	ldr	w8, [x21, #304]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	mov	x8, x0
	add	x0, x21, #680
	add	x1, x8, x27
	bl	mod_timer
	str	wzr, [x21, #304]
.LBB16_134:                             //   in Loop: Header=BB16_2 Depth=1
	mov	x0, x19
.LBB16_135:                             //   in Loop: Header=BB16_2 Depth=1
	mov	w8, #4                          // =0x4
	str	x0, [x21, #464]
	ldr	w10, [x21, #312]
	str	w8, [x21, #472]
	ldr	w9, [x0, #60]
	ldr	w8, [x0, #52]
	sub	w11, w10, #1
	cmp	w9, w10
	csel	w9, w9, w11, lt
	cmp	w8, w9
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	b.le	.LBB16_140
.LBB16_136:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #284]
	cbnz	w8, .LBB16_237
// %bb.137:                             //   in Loop: Header=BB16_2 Depth=1
	mov	x0, x21
	mov	w1, #1                          // =0x1
	mov	w2, wzr
	str	w26, [x21, #284]
	bl	ebc_lut_update
	ldr	w9, [x21, #852]
	ldr	w8, [x21, #336]
	cmp	w9, #1
	strh	w8, [x21, #288]
	b.lt	.LBB16_139
// %bb.138:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	ubfx	w3, w8, #8, #8
	and	w2, w8, #0xff
	adrp	x1, .L.str.83
	add	x1, x1, :lo12:.L.str.83
	bl	_dev_info
.LBB16_139:                             //   in Loop: Header=BB16_2 Depth=1
	mov	x0, x21
	bl	ebc_frame_start
	bl	ebc_overlay_enable_control
	cbnz	w0, .LBB16_238
	b	.LBB16_239
.LBB16_140:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w10, [x0, #56]
	ldr	w11, [x21, #316]
	ldr	x15, [x21, #448]
	ldp	x1, x17, [x21, #392]
	add	w12, w10, #7
	cmp	w10, #0
	add	w13, w11, #7
	csel	w10, w12, w10, lt
	cmp	w11, #0
	ldr	x3, [x15, #16]
	asr	w10, w10, #3
	csel	w11, w13, w11, lt
	asr	w12, w11, #3
	ldr	w11, [x0, #48]
	ldr	x0, [x0, #16]
	add	w13, w10, #1
	ldp	x6, x5, [x21, #368]
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
	add	x14, x17, x4
	add	x15, x1, x4
	add	x16, x3, x4
	add	x17, x0, x4
	add	x0, x5, x2
	add	x1, x6, x4
	b	.LBB16_142
.LBB16_141:                             //   in Loop: Header=BB16_142 Depth=2
	ldr	w9, [sp, #16]                   // 4-byte Folded Reload
	add	w8, w8, #1
	add	x14, x14, x12
	add	x15, x15, x12
	add	x16, x16, x12
	add	x17, x17, x12
	cmp	w8, w9
	add	x1, x1, x12
	b.gt	.LBB16_136
.LBB16_142:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB16_147 Depth 3
	cmp	w11, w10
	b.gt	.LBB16_141
// %bb.143:                             //   in Loop: Header=BB16_142 Depth=2
	mov	x2, xzr
	b	.LBB16_147
.LBB16_144:                             //   in Loop: Header=BB16_147 Depth=3
	and	x6, x6, #0xffffffffffffff
.LBB16_145:                             //   in Loop: Header=BB16_147 Depth=3
	orr	x4, x4, #0x100000000000000
.LBB16_146:                             //   in Loop: Header=BB16_147 Depth=3
	bic	x9, x6, x7
	and	x5, x7, x5
	str	x4, [x14, x2, lsl #3]
	orr	x9, x9, x5
	str	x9, [x1, x2, lsl #3]
	str	x3, [x15, x2, lsl #3]
	add	x2, x2, #1
	cmp	x13, x2
	b.eq	.LBB16_141
.LBB16_147:                             //   Parent Loop BB16_2 Depth=1
                                        //     Parent Loop BB16_142 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x3, [x15, x2, lsl #3]
	ldr	x6, [x1, x2, lsl #3]
	ldr	x30, [x0, x2, lsl #3]
	ldr	x19, [x17, x2, lsl #3]
	ldr	x5, [x16, x2, lsl #3]
	ldr	x4, [x14, x2, lsl #3]
	tst	x3, #0xff
	b.eq	.LBB16_151
// %bb.148:                             //   in Loop: Header=BB16_147 Depth=3
	mvn	w7, w30
	and	x27, x7, #0xf0
	tst	x7, x23
	mov	x7, xzr
	ccmp	x27, #0, #4, ne
	b.ne	.LBB16_153
// %bb.149:                             //   in Loop: Header=BB16_147 Depth=3
	and	x27, x6, #0xf0
	cmp	x27, #240
	b.ne	.LBB16_153
// %bb.150:                             //   in Loop: Header=BB16_147 Depth=3
	and	x27, x19, #0xff
	cbnz	x27, .LBB16_153
.LBB16_151:                             //   in Loop: Header=BB16_147 Depth=3
	and	x27, x19, #0xf0
	and	x4, x4, #0xffffffffffffff00
	and	x3, x3, #0xffffffffffffff00
	cmp	w27, #240
	b.ne	.LBB16_198
// %bb.152:                             //   in Loop: Header=BB16_147 Depth=3
	mvn	w7, w5
	tst	x7, #0xf0
	cset	w7, eq
	tst	x5, #0xf8
	csinc	w7, w7, wzr, ne
	orr	x4, x4, x7
	mov	w7, #255                        // =0xff
.LBB16_153:                             //   in Loop: Header=BB16_147 Depth=3
	tst	x3, #0xff00
	b.eq	.LBB16_157
// %bb.154:                             //   in Loop: Header=BB16_147 Depth=3
	mvn	w27, w30
	mov	w25, #59392                     // =0xe800
	and	x9, x27, #0xf000
	tst	x27, x25
	ccmp	x9, #0, #4, ne
	b.ne	.LBB16_159
// %bb.155:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xf000
	cmp	x9, #15, lsl #12                // =61440
	b.ne	.LBB16_159
// %bb.156:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x19, #0xff00
	cbnz	x9, .LBB16_159
.LBB16_157:                             //   in Loop: Header=BB16_147 Depth=3
	and	x27, x19, #0xf000
	and	x4, x4, #0xffffffffffff00ff
	and	x3, x3, #0xffffffffffff00ff
	cmp	w27, #15, lsl #12               // =61440
	b.ne	.LBB16_200
// %bb.158:                             //   in Loop: Header=BB16_147 Depth=3
	mvn	w9, w5
	tst	x5, #0xf800
	orr	x7, x7, #0xff00
	and	x9, x9, #0xf000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x100
	csel	x4, x9, x4, eq
.LBB16_159:                             //   in Loop: Header=BB16_147 Depth=3
	tst	x3, #0xff0000
	b.eq	.LBB16_163
// %bb.160:                             //   in Loop: Header=BB16_147 Depth=3
	mvn	w9, w30
	mov	w25, #15204352                  // =0xe80000
	and	x27, x9, #0xf00000
	tst	x9, x25
	ccmp	x27, #0, #4, ne
	b.ne	.LBB16_165
// %bb.161:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xf00000
	cmp	x9, #3840, lsl #12              // =15728640
	b.ne	.LBB16_165
// %bb.162:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x19, #0xff0000
	cbnz	x9, .LBB16_165
.LBB16_163:                             //   in Loop: Header=BB16_147 Depth=3
	and	x27, x19, #0xf00000
	and	x4, x4, #0xffffffffff00ffff
	and	x3, x3, #0xffffffffff00ffff
	cmp	x27, #3840, lsl #12             // =15728640
	b.ne	.LBB16_202
// %bb.164:                             //   in Loop: Header=BB16_147 Depth=3
	mvn	w9, w5
	tst	x5, #0xf80000
	orr	x7, x7, #0xff0000
	and	x9, x9, #0xf00000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x10000
	csel	x4, x9, x4, eq
.LBB16_165:                             //   in Loop: Header=BB16_147 Depth=3
	tst	x3, #0xff000000
	b.eq	.LBB16_169
// %bb.166:                             //   in Loop: Header=BB16_147 Depth=3
	mvn	w9, w30
	mov	w25, #-402653184                // =0xe8000000
	and	x27, x9, #0xf0000000
	tst	x9, x25
	ccmp	x27, #0, #4, ne
	b.ne	.LBB16_171
// %bb.167:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xf0000000
	cmp	x9, x28
	b.ne	.LBB16_171
// %bb.168:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x19, #0xff000000
	cbnz	x9, .LBB16_171
.LBB16_169:                             //   in Loop: Header=BB16_147 Depth=3
	and	x27, x19, #0xf0000000
	and	x4, x4, #0xffffffff00ffffff
	and	x3, x3, #0xffffffff00ffffff
	cmp	w27, w28
	b.ne	.LBB16_204
// %bb.170:                             //   in Loop: Header=BB16_147 Depth=3
	mvn	w9, w5
	tst	x5, #0xf8000000
	orr	x7, x7, #0xff000000
	and	x9, x9, #0xf0000000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x1000000
	csel	x4, x9, x4, eq
.LBB16_171:                             //   in Loop: Header=BB16_147 Depth=3
	tst	x3, #0xff00000000
	b.eq	.LBB16_175
// %bb.172:                             //   in Loop: Header=BB16_147 Depth=3
	mov	x25, #996432412672              // =0xe800000000
	bic	x9, x22, x30
	bics	xzr, x25, x30
	ccmp	x9, #0, #4, ne
	b.ne	.LBB16_177
// %bb.173:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xf000000000
	cmp	x9, x22
	b.ne	.LBB16_177
// %bb.174:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x19, #0xff00000000
	cbnz	x9, .LBB16_177
.LBB16_175:                             //   in Loop: Header=BB16_147 Depth=3
	and	x27, x19, #0xf000000000
	and	x4, x4, #0xffffff00ffffffff
	and	x3, x3, #0xffffff00ffffffff
	cmp	x27, x22
	b.ne	.LBB16_206
// %bb.176:                             //   in Loop: Header=BB16_147 Depth=3
	bic	x9, x22, x5
	tst	x5, #0xf800000000
	orr	x7, x7, #0xff00000000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x100000000
	csel	x4, x9, x4, eq
.LBB16_177:                             //   in Loop: Header=BB16_147 Depth=3
	tst	x3, #0xff0000000000
	b.eq	.LBB16_181
// %bb.178:                             //   in Loop: Header=BB16_147 Depth=3
	mov	x25, #255086697644032           // =0xe80000000000
	bic	x9, x20, x30
	bics	xzr, x25, x30
	ccmp	x9, #0, #4, ne
	b.ne	.LBB16_183
// %bb.179:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xf00000000000
	cmp	x9, x20
	b.ne	.LBB16_183
// %bb.180:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x19, #0xff0000000000
	cbnz	x9, .LBB16_183
.LBB16_181:                             //   in Loop: Header=BB16_147 Depth=3
	and	x27, x19, #0xf00000000000
	and	x4, x4, #0xffff00ffffffffff
	and	x3, x3, #0xffff00ffffffffff
	cmp	x27, x20
	b.ne	.LBB16_208
// %bb.182:                             //   in Loop: Header=BB16_147 Depth=3
	bic	x9, x20, x5
	tst	x5, #0xf80000000000
	orr	x7, x7, #0xff0000000000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x10000000000
	csel	x4, x9, x4, eq
.LBB16_183:                             //   in Loop: Header=BB16_147 Depth=3
	tst	x3, #0xff000000000000
	b.eq	.LBB16_187
// %bb.184:                             //   in Loop: Header=BB16_147 Depth=3
	mov	x25, #65302194596872192         // =0xe8000000000000
	bic	x9, x24, x30
	bics	xzr, x25, x30
	ccmp	x9, #0, #4, ne
	b.ne	.LBB16_189
// %bb.185:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xf0000000000000
	cmp	x9, x24
	b.ne	.LBB16_189
// %bb.186:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x19, #0xff000000000000
	cbnz	x9, .LBB16_189
.LBB16_187:                             //   in Loop: Header=BB16_147 Depth=3
	and	x27, x19, #0xf0000000000000
	and	x4, x4, #0xff00ffffffffffff
	and	x3, x3, #0xff00ffffffffffff
	cmp	x27, x24
	b.ne	.LBB16_210
// %bb.188:                             //   in Loop: Header=BB16_147 Depth=3
	bic	x9, x24, x5
	tst	x5, #0xf8000000000000
	orr	x7, x7, #0xff000000000000
	ccmp	x9, #0, #4, ne
	orr	x9, x4, #0x1000000000000
	csel	x4, x9, x4, eq
.LBB16_189:                             //   in Loop: Header=BB16_147 Depth=3
	lsr	x9, x3, #56
	cbnz	x9, .LBB16_194
// %bb.190:                             //   in Loop: Header=BB16_147 Depth=3
	lsr	x9, x19, #60
	and	x4, x4, #0xffffffffffffff
	cmp	x9, #15
	b.lo	.LBB16_233
// %bb.191:                             //   in Loop: Header=BB16_147 Depth=3
	lsr	x9, x5, #59
	orr	x7, x7, #0xff00000000000000
	cmp	x9, #30
	b.hi	.LBB16_145
// %bb.192:                             //   in Loop: Header=BB16_147 Depth=3
	ands	x19, x5, #0xf800000000000000
	b.eq	.LBB16_145
// %bb.193:                             //   in Loop: Header=BB16_147 Depth=3
	mov	x9, #-1152921504606846976       // =0xf000000000000000
	cmp	x19, x9
	b.eq	.LBB16_145
	b	.LBB16_146
.LBB16_194:                             //   in Loop: Header=BB16_147 Depth=3
	lsr	x9, x30, #60
	mov	x25, #-1729382256910270464      // =0xe800000000000000
	bics	xzr, x25, x30
	ccmp	x9, #15, #2, ne
	b.lo	.LBB16_146
// %bb.195:                             //   in Loop: Header=BB16_147 Depth=3
	lsr	x9, x6, #60
	cmp	x9, #15
	b.lo	.LBB16_146
// %bb.196:                             //   in Loop: Header=BB16_147 Depth=3
	lsr	x9, x19, #56
	cbnz	x9, .LBB16_146
// %bb.197:                             //   in Loop: Header=BB16_147 Depth=3
	and	x4, x4, #0xffffffffffffff
	and	x3, x3, #0xffffffffffffff
	b	.LBB16_144
.LBB16_198:                             //   in Loop: Header=BB16_147 Depth=3
	cbnz	w27, .LBB16_212
// %bb.199:                             //   in Loop: Header=BB16_147 Depth=3
	mov	x7, xzr
	and	x6, x6, #0xffffffffffffff00
	orr	x4, x4, #0x1
	b	.LBB16_153
.LBB16_200:                             //   in Loop: Header=BB16_147 Depth=3
	cbnz	w27, .LBB16_214
// %bb.201:                             //   in Loop: Header=BB16_147 Depth=3
	and	x6, x6, #0xffffffffffff00ff
	orr	x4, x4, #0x100
	b	.LBB16_159
.LBB16_202:                             //   in Loop: Header=BB16_147 Depth=3
	cbnz	x27, .LBB16_216
// %bb.203:                             //   in Loop: Header=BB16_147 Depth=3
	and	x6, x6, #0xffffffffff00ffff
	orr	x4, x4, #0x10000
	b	.LBB16_165
.LBB16_204:                             //   in Loop: Header=BB16_147 Depth=3
	cbnz	w27, .LBB16_218
// %bb.205:                             //   in Loop: Header=BB16_147 Depth=3
	and	x6, x6, #0xffffffff00ffffff
	orr	x4, x4, #0x1000000
	b	.LBB16_171
.LBB16_206:                             //   in Loop: Header=BB16_147 Depth=3
	cbnz	x27, .LBB16_220
// %bb.207:                             //   in Loop: Header=BB16_147 Depth=3
	and	x6, x6, #0xffffff00ffffffff
	orr	x4, x4, #0x100000000
	b	.LBB16_177
.LBB16_208:                             //   in Loop: Header=BB16_147 Depth=3
	cbnz	x27, .LBB16_222
// %bb.209:                             //   in Loop: Header=BB16_147 Depth=3
	and	x6, x6, #0xffff00ffffffffff
	orr	x4, x4, #0x10000000000
	b	.LBB16_183
.LBB16_210:                             //   in Loop: Header=BB16_147 Depth=3
	cbnz	x27, .LBB16_224
// %bb.211:                             //   in Loop: Header=BB16_147 Depth=3
	and	x6, x6, #0xff00ffffffffffff
	orr	x4, x4, #0x1000000000000
	b	.LBB16_189
.LBB16_212:                             //   in Loop: Header=BB16_147 Depth=3
	cmp	w27, #224
	b.ne	.LBB16_226
// %bb.213:                             //   in Loop: Header=BB16_147 Depth=3
	and	x6, x6, #0xffffffffffffff00
	mov	x7, xzr
	orr	x4, x4, #0x1
	orr	x6, x6, #0xf0
	b	.LBB16_153
.LBB16_214:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xffffffffffff00ff
	cmp	w27, #14, lsl #12               // =57344
	b.ne	.LBB16_227
// %bb.215:                             //   in Loop: Header=BB16_147 Depth=3
	orr	x6, x9, #0xf000
	orr	x4, x4, #0x100
	b	.LBB16_159
.LBB16_216:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xffffffffff00ffff
	cmp	x27, #3584, lsl #12             // =14680064
	b.ne	.LBB16_228
// %bb.217:                             //   in Loop: Header=BB16_147 Depth=3
	orr	x6, x9, #0xf00000
	orr	x4, x4, #0x10000
	b	.LBB16_165
.LBB16_218:                             //   in Loop: Header=BB16_147 Depth=3
	mov	w9, #-536870912                 // =0xe0000000
	cmp	w27, w9
	b.ne	.LBB16_229
// %bb.219:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xffffffff00ffffff
	orr	x4, x4, #0x1000000
	orr	x6, x9, #0xf0000000
	b	.LBB16_171
.LBB16_220:                             //   in Loop: Header=BB16_147 Depth=3
	mov	x9, #962072674304               // =0xe000000000
	cmp	x27, x9
	b.ne	.LBB16_230
// %bb.221:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xffffff00ffffffff
	orr	x4, x4, #0x100000000
	orr	x6, x9, #0xf000000000
	b	.LBB16_177
.LBB16_222:                             //   in Loop: Header=BB16_147 Depth=3
	mov	x9, #246290604621824            // =0xe00000000000
	cmp	x27, x9
	b.ne	.LBB16_231
// %bb.223:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xffff00ffffffffff
	orr	x4, x4, #0x10000000000
	orr	x6, x9, #0xf00000000000
	b	.LBB16_183
.LBB16_224:                             //   in Loop: Header=BB16_147 Depth=3
	mov	x9, #63050394783186944          // =0xe0000000000000
	cmp	x27, x9
	b.ne	.LBB16_232
// %bb.225:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xff00ffffffffffff
	orr	x4, x4, #0x1000000000000
	orr	x6, x9, #0xf0000000000000
	b	.LBB16_189
.LBB16_226:                             //   in Loop: Header=BB16_147 Depth=3
	and	x6, x6, #0xffffffffffffff00
	mov	x7, xzr
	orr	x6, x27, x6
	b	.LBB16_153
.LBB16_227:                             //   in Loop: Header=BB16_147 Depth=3
	orr	x6, x9, x27
	b	.LBB16_159
.LBB16_228:                             //   in Loop: Header=BB16_147 Depth=3
	orr	x6, x9, x27
	b	.LBB16_165
.LBB16_229:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xffffffff00ffffff
	orr	x6, x9, x27
	b	.LBB16_171
.LBB16_230:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xffffff00ffffffff
	orr	x6, x9, x27
	b	.LBB16_177
.LBB16_231:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xffff00ffffffffff
	orr	x6, x9, x27
	b	.LBB16_183
.LBB16_232:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xff00ffffffffffff
	orr	x6, x9, x27
	b	.LBB16_189
.LBB16_233:                             //   in Loop: Header=BB16_147 Depth=3
	and	x19, x19, #0xf000000000000000
	mov	x9, #-2305843009213693952       // =0xe000000000000000
	cmp	x19, x9
	b.eq	.LBB16_236
// %bb.234:                             //   in Loop: Header=BB16_147 Depth=3
	cbz	x19, .LBB16_144
// %bb.235:                             //   in Loop: Header=BB16_147 Depth=3
	and	x9, x6, #0xffffffffffffff
	orr	x6, x9, x19
	b	.LBB16_146
.LBB16_236:                             //   in Loop: Header=BB16_147 Depth=3
	mov	x9, #-1152921504606846976       // =0xf000000000000000
	orr	x4, x4, #0x100000000000000
	bfxil	x9, x6, #0, #56
	mov	x6, x9
	b	.LBB16_146
.LBB16_237:                             //   in Loop: Header=BB16_2 Depth=1
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	bl	ebc_overlay_enable_control
	cbz	w0, .LBB16_239
.LBB16_238:                             //   in Loop: Header=BB16_2 Depth=1
	str	w26, [x21, #808]
	adrp	x8, jiffies
	ldr	x19, [x8, :lo12:jiffies]
	bl	ebc_overlay_enable_timeout_ms
	bl	__msecs_to_jiffies
	mov	x8, x0
	add	x0, x21, #720
	add	x1, x8, x19
	bl	mod_timer
.LBB16_239:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #456]
	cbz	x0, .LBB16_241
// %bb.240:                             //   in Loop: Header=BB16_2 Depth=1
	bl	ebc_buf_release
.LBB16_241:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #464]
	str	x8, [x21, #456]
	b	.LBB16_2
.LBB16_242:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_405
// %bb.243:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.80
	add	x1, x1, :lo12:.L.str.80
	bl	_dev_info
	b	.LBB16_405
.LBB16_244:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #440]
	ldr	x1, [x21, #376]
	ldrsw	x2, [x21, #260]
	ldr	x0, [x8, #16]
	b	.LBB16_267
.LBB16_245:                             //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #4
	b.eq	.LBB16_387
// %bb.246:                             //   in Loop: Header=BB16_2 Depth=1
	cmp	w8, #5
	b.ne	.LBB16_388
.LBB16_247:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w2, [x21, #304]
	cbnz	w2, .LBB16_384
// %bb.248:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #828]
	cbz	w8, .LBB16_250
// %bb.249:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #824]
	cbnz	w8, .LBB16_449
.LBB16_250:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #440]
	ldr	x0, [x21, #376]
	ldrsw	x2, [x21, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
.LBB16_251:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #448]
	ldr	x0, [x21, #368]
	ldrsw	x2, [x21, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	b	.LBB16_456
.LBB16_252:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.104
	add	x1, x1, :lo12:.L.str.104
	bl	_dev_err
.LBB16_253:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	ebc_buf_release
	b	.LBB16_2
.LBB16_254:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_256
// %bb.255:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #328]
	mov	x19, x0
	adrp	x1, .L.str.82
	add	x1, x1, :lo12:.L.str.82
	mov	x0, x8
	bl	_dev_info
	mov	x0, x19
.LBB16_256:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #260]
	ldr	x1, [x21, #384]
	cmp	w8, #1
	b.lt	.LBB16_260
// %bb.257:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x9, [x21, #448]
	mov	w13, #240                       // =0xf0
	ldr	x9, [x9, #16]
.LBB16_258:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	bic	w12, w13, w10
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_258
// %bb.259:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x1, [x21, #384]
	ldr	w8, [x21, #260]
.LBB16_260:                             //   in Loop: Header=BB16_2 Depth=1
	mov	x19, x0
                                        // kill: def $w8 killed $w8 killed $x8 def $x8
	ldr	x0, [x21, #376]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x21, #448]
	ldr	x0, [x21, #368]
	ldrsw	x2, [x21, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	w8, [x21, #852]
	str	wzr, [x21, #836]
	str	wzr, [x21, #824]
	cmp	w8, #1
	str	wzr, [x21, #812]
	b.lt	.LBB16_262
// %bb.261:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.81
	add	x1, x1, :lo12:.L.str.81
	bl	_dev_info
.LBB16_262:                             //   in Loop: Header=BB16_2 Depth=1
	adrp	x8, jiffies
	ldr	x27, [x8, :lo12:jiffies]
	ldrb	w8, [x21, #336]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	mov	x8, x0
	add	x0, x21, #680
	add	x1, x8, x27
	bl	mod_timer
	b	.LBB16_134
.LBB16_263:                             //   in Loop: Header=BB16_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_264:                             //   in Loop: Header=BB16_2 Depth=1
	str	wzr, [x21, #320]
	b	.LBB16_2
.LBB16_265:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #440]
	ldr	x1, [x8, #16]
	ldr	w8, [x21, #260]
.LBB16_266:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #376]
	sxtw	x2, w8
.LBB16_267:                             //   in Loop: Header=BB16_2 Depth=1
	bl	memcpy
	ldr	w8, [x21, #836]
	cbnz	w8, .LBB16_269
// %bb.268:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #384]
	ldrsw	x2, [x21, #260]
	mov	w1, wzr
	bl	memset
.LBB16_269:                             //   in Loop: Header=BB16_2 Depth=1
	str	w26, [x21, #836]
	mov	w19, #5                         // =0x5
	b	.LBB16_272
.LBB16_270:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	w8, #9                          // =0x9
	str	w8, [x9, #40]
.LBB16_271:                             //   in Loop: Header=BB16_2 Depth=1
	str	wzr, [x21, #836]
	str	wzr, [x21, #824]
.LBB16_272:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	cmp	w19, #2
	mov	x0, x21
	cset	w2, eq
	str	w19, [sp, #12]                  // 4-byte Folded Spill
	str	x8, [x21, #448]
	mov	x19, x8
	ldr	w1, [x8, #40]
	bl	ebc_lut_update
	ldr	w9, [x19, #40]
	ldr	w8, [x21, #828]
	cmp	w9, #12
	b.eq	.LBB16_277
// %bb.273:                             //   in Loop: Header=BB16_2 Depth=1
	cmp	w9, #14
	b.eq	.LBB16_277
// %bb.274:                             //   in Loop: Header=BB16_2 Depth=1
	cmp	w9, #13
	b.ne	.LBB16_278
// %bb.275:                             //   in Loop: Header=BB16_2 Depth=1
	cbz	w8, .LBB16_278
// %bb.276:                             //   in Loop: Header=BB16_2 Depth=1
	ldrb	w8, [x21, #336]
	mov	w9, #2                          // =0x2
	strb	w9, [x21, #288]
	lsr	w8, w8, #1
	b	.LBB16_280
.LBB16_277:                             //   in Loop: Header=BB16_2 Depth=1
	cbnz	w8, .LBB16_279
.LBB16_278:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w9, [x21, #336]
	strb	w9, [x21, #288]
	cbnz	w8, .LBB16_281
	b	.LBB16_290
.LBB16_279:                             //   in Loop: Header=BB16_2 Depth=1
	ldrb	w8, [x21, #336]
	lsr	w8, w8, #1
	strb	w8, [x21, #288]
	mov	w8, #2                          // =0x2
.LBB16_280:                             //   in Loop: Header=BB16_2 Depth=1
	strb	w8, [x21, #920]
	mov	w8, #1                          // =0x1
	cbz	w8, .LBB16_290
.LBB16_281:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_290
// %bb.282:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #824]
	cbnz	w8, .LBB16_290
// %bb.283:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #368]
	ldrsw	x2, [x21, #260]
	mov	w1, wzr
	bl	memset
	ldr	w8, [x21, #260]
	cmp	w8, #1
	b.lt	.LBB16_290
// %bb.284:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x9, [x21, #440]
	ldr	x10, [x21, #368]
	ldrb	w11, [x21, #920]
	ldr	x9, [x9, #16]
	b	.LBB16_286
.LBB16_285:                             //   in Loop: Header=BB16_286 Depth=2
	subs	x8, x8, #1
	add	x10, x10, #1
	b.eq	.LBB16_290
.LBB16_286:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w12, [x9], #1
	cmp	w12, #240
	b.ne	.LBB16_285
// %bb.287:                             //   in Loop: Header=BB16_286 Depth=2
	strb	w11, [x10]
	b	.LBB16_285
.LBB16_288:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.ge	.LBB16_349
.LBB16_289:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	x8, [x21, #440]
	ldr	x1, [x21, #376]
	ldrsw	x2, [x21, #260]
	ldr	x0, [x8, #16]
	bl	memcpy
.LBB16_290:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB16_298 Depth 3
                                        //         Child Loop BB16_302 Depth 4
                                        //       Child Loop BB16_325 Depth 3
                                        //       Child Loop BB16_343 Depth 3
	ldr	w8, [x21, #852]
	cmp	w8, #1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	b.ge	.LBB16_346
.LBB16_291:                             //   in Loop: Header=BB16_290 Depth=2
	mov	x0, x21
	str	w26, [x21, #284]
	str	w8, [x21, #472]
	bl	ebc_frame_start
	adrp	x8, jiffies
	add	x0, x21, #760
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x21, #828]
	cbz	w8, .LBB16_322
// %bb.292:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_322
// %bb.293:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	w8, [x21, #836]
	cbz	w8, .LBB16_322
// %bb.294:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.ge	.LBB16_351
.LBB16_295:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	w8, [x21, #312]
	cmp	w8, #1
	b.lt	.LBB16_320
// %bb.296:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	x15, [x21, #448]
	ldr	w12, [x21, #832]
	mov	w9, wzr
	ldp	x16, x13, [x21, #376]
	mov	w10, wzr
	ldrsb	w14, [x21, #920]
	ldr	w11, [x21, #316]
	cmp	w12, #0
	ldr	x15, [x15, #16]
	ldr	x17, [x21, #368]
	mov	w0, wzr
	cset	w1, ne
	csetm	w2, ne
	neg	w3, w14
	b	.LBB16_298
.LBB16_297:                             //   in Loop: Header=BB16_298 Depth=3
	add	w10, w10, #1
	add	w9, w9, w11
	cmp	w10, w8
	b.eq	.LBB16_321
.LBB16_298:                             //   Parent Loop BB16_2 Depth=1
                                        //     Parent Loop BB16_290 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB16_302 Depth 4
	cmp	w11, #1
	b.lt	.LBB16_297
// %bb.299:                             //   in Loop: Header=BB16_298 Depth=3
	mov	w5, w9
	mov	x4, x11
	b	.LBB16_302
.LBB16_300:                             //   in Loop: Header=BB16_302 Depth=4
	strb	w6, [x16, x5]
	strb	w30, [x13, x5]
.LBB16_301:                             //   in Loop: Header=BB16_302 Depth=4
	subs	x4, x4, #1
	add	w5, w5, #1
	b.eq	.LBB16_297
.LBB16_302:                             //   Parent Loop BB16_2 Depth=1
                                        //     Parent Loop BB16_290 Depth=2
                                        //       Parent Loop BB16_298 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	sxtw	x5, w5
	ldrb	w6, [x15, x5]
	ldrb	w19, [x16, x5]
	cmp	w19, w6
	b.eq	.LBB16_301
// %bb.303:                             //   in Loop: Header=BB16_302 Depth=4
	cbz	w12, .LBB16_305
// %bb.304:                             //   in Loop: Header=BB16_302 Depth=4
	ldrb	w7, [x17, x5]
	b	.LBB16_306
.LBB16_305:                             //   in Loop: Header=BB16_302 Depth=4
	mov	w7, wzr
.LBB16_306:                             //   in Loop: Header=BB16_302 Depth=4
	ldrsb	w30, [x13, x5]
	cmp	w6, #240
	and	w27, w19, #0xf
	b.ne	.LBB16_311
// %bb.307:                             //   in Loop: Header=BB16_302 Depth=4
	cmp	w30, #0
	add	w7, w7, w1
	csinc	w30, w26, w30, lt
	sxtb	w7, w7
	sxtb	w30, w30
	cbz	w12, .LBB16_309
// %bb.308:                             //   in Loop: Header=BB16_302 Depth=4
	cmp	w7, w14
	b.ge	.LBB16_313
.LBB16_309:                             //   in Loop: Header=BB16_302 Depth=4
	cbnz	w12, .LBB16_316
// %bb.310:                             //   in Loop: Header=BB16_302 Depth=4
	cmp	w30, w14
	b.ge	.LBB16_300
	b	.LBB16_316
.LBB16_311:                             //   in Loop: Header=BB16_302 Depth=4
	add	w7, w7, w2
	sub	w25, w30, #1
	cmp	w30, #0
	sxtb	w7, w7
	csinv	w30, w25, wzr, le
	cbz	w12, .LBB16_314
// %bb.312:                             //   in Loop: Header=BB16_302 Depth=4
	cmp	w7, #1
	b.ge	.LBB16_314
.LBB16_313:                             //   in Loop: Header=BB16_302 Depth=4
	strb	w6, [x16, x5]
	strb	w30, [x13, x5]
	b	.LBB16_319
.LBB16_314:                             //   in Loop: Header=BB16_302 Depth=4
	cbnz	w12, .LBB16_316
// %bb.315:                             //   in Loop: Header=BB16_302 Depth=4
	sxtb	w25, w30
	cmp	w25, w3
	b.le	.LBB16_300
.LBB16_316:                             //   in Loop: Header=BB16_302 Depth=4
	cbnz	w27, .LBB16_318
// %bb.317:                             //   in Loop: Header=BB16_302 Depth=4
	orr	w0, w19, #0x1
	strb	w0, [x16, x5]
.LBB16_318:                             //   in Loop: Header=BB16_302 Depth=4
	mov	w0, #1                          // =0x1
	strb	w30, [x13, x5]
	cbz	w12, .LBB16_301
.LBB16_319:                             //   in Loop: Header=BB16_302 Depth=4
	strb	w7, [x17, x5]
	b	.LBB16_301
.LBB16_320:                             //   in Loop: Header=BB16_290 Depth=2
	mov	w0, wzr
.LBB16_321:                             //   in Loop: Header=BB16_290 Depth=2
	str	w0, [x21, #824]
.LBB16_322:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	w9, [x21, #284]
	ldr	w8, [x21, #852]
	cbz	w9, .LBB16_329
// %bb.323:                             //   in Loop: Header=BB16_290 Depth=2
	cmp	w8, #1
	b.ge	.LBB16_347
.LBB16_324:                             //   in Loop: Header=BB16_290 Depth=2
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB16_325:                             //   Parent Loop BB16_2 Depth=1
                                        //     Parent Loop BB16_290 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_328
// %bb.326:                             //   in Loop: Header=BB16_325 Depth=3
	cbnz	x0, .LBB16_330
// %bb.327:                             //   in Loop: Header=BB16_325 Depth=3
	bl	schedule
	b	.LBB16_325
.LBB16_328:                             //   in Loop: Header=BB16_290 Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	b	.LBB16_330
.LBB16_329:                             //   in Loop: Header=BB16_290 Depth=2
	tbz	w8, #31, .LBB16_348
.LBB16_330:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	w8, [x21, #304]
	cbnz	w8, .LBB16_352
// %bb.331:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	w8, [x21, #828]
	cbz	w8, .LBB16_476
// %bb.332:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_476
// %bb.333:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	w8, [x21, #824]
	cbz	w8, .LBB16_359
// %bb.334:                             //   in Loop: Header=BB16_290 Depth=2
	bl	ebc_get_dsp_list_enum_num
	cbz	w0, .LBB16_338
// %bb.335:                             //   in Loop: Header=BB16_290 Depth=2
	bl	ebc_dsp_buf_next_mode
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #40]
	cmp	w0, w8
	b.eq	.LBB16_476
// %bb.336:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	w8, [x21, #852]
	cmp	w8, #0
	b.le	.LBB16_289
// %bb.337:                             //   in Loop: Header=BB16_290 Depth=2
	adrp	x1, .L.str.100
	add	x1, x1, :lo12:.L.str.100
	b	.LBB16_350
.LBB16_338:                             //   in Loop: Header=BB16_290 Depth=2
	add	x0, sp, #24
	mov	w1, wzr
	str	wzr, [x21, #320]
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x21, #320]
	cbz	w8, .LBB16_342
.LBB16_339:                             //   in Loop: Header=BB16_290 Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_340:                             //   in Loop: Header=BB16_290 Depth=2
	bl	ebc_get_dsp_list_enum_num
	cbz	w0, .LBB16_288
// %bb.341:                             //   in Loop: Header=BB16_290 Depth=2
	bl	ebc_dsp_buf_next_mode
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8, #40]
	cmp	w0, w8
	b.ne	.LBB16_288
	b	.LBB16_476
.LBB16_342:                             //   in Loop: Header=BB16_290 Depth=2
	mov	w8, #3                          // =0x3
.LBB16_343:                             //   Parent Loop BB16_2 Depth=1
                                        //     Parent Loop BB16_290 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	cbnz	x0, .LBB16_340
// %bb.344:                             //   in Loop: Header=BB16_343 Depth=3
	mov	x0, x8
	bl	schedule_timeout
	mov	x19, x0
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w9, [x21, #320]
	cmp	x19, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x19, xzr, eq
	cbnz	w9, .LBB16_339
// %bb.345:                             //   in Loop: Header=BB16_343 Depth=3
	cbnz	x8, .LBB16_343
	b	.LBB16_339
.LBB16_346:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	x8, [x21, #448]
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.94
	add	x1, x1, :lo12:.L.str.94
	ldrb	w3, [x21, #288]
	ldrb	w4, [x21, #336]
	ldr	w2, [x8, #40]
	bl	_dev_info
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	b	.LBB16_291
.LBB16_347:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.96
	add	x1, x1, :lo12:.L.str.96
	bl	_dev_info
	ldr	w8, [x21, #284]
	cbnz	w8, .LBB16_324
	b	.LBB16_330
.LBB16_348:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.97
	add	x1, x1, :lo12:.L.str.97
	bl	_dev_info
	b	.LBB16_330
.LBB16_349:                             //   in Loop: Header=BB16_290 Depth=2
	adrp	x1, .L.str.99
	add	x1, x1, :lo12:.L.str.99
.LBB16_350:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	x0, [x21, #328]
	bl	_dev_info
	b	.LBB16_289
.LBB16_351:                             //   in Loop: Header=BB16_290 Depth=2
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.95
	add	x1, x1, :lo12:.L.str.95
	bl	_dev_info
	b	.LBB16_295
.LBB16_352:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_354
// %bb.353:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.98
	add	x1, x1, :lo12:.L.str.98
	bl	_dev_info
.LBB16_354:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #440]
	ldr	x0, [x21, #376]
	ldrsw	x2, [x21, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x21, #448]
	ldr	x0, [x21, #368]
	ldrsw	x2, [x21, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x0, [x21, #392]
	ldrsw	x2, [x21, #260]
	mov	w1, wzr
	bl	memset
	ldr	x0, [x21, #400]
	ldrsw	x2, [x21, #260]
	mov	w1, wzr
	bl	memset
	ldr	w8, [x21, #260]
	cmp	w8, #1
	b.lt	.LBB16_476
// %bb.355:                             //   in Loop: Header=BB16_2 Depth=1
	ldrb	w12, [x21, #288]
	ldrb	w13, [x21, #304]
	ldr	x9, [x21, #392]
	ldp	x11, x10, [x21, #368]
	sub	w12, w12, w13
	b	.LBB16_357
.LBB16_356:                             //   in Loop: Header=BB16_357 Depth=2
	subs	w8, w8, #1
	add	x9, x9, #1
	add	x10, x10, #1
	add	x11, x11, #1
	b.eq	.LBB16_476
.LBB16_357:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w13, [x10]
	ldrb	w14, [x11]
	cmp	w13, w14
	b.eq	.LBB16_356
// %bb.358:                             //   in Loop: Header=BB16_357 Depth=2
	strb	w12, [x9]
	b	.LBB16_356
.LBB16_359:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #836]
	cbz	w8, .LBB16_476
// %bb.360:                             //   in Loop: Header=BB16_2 Depth=1
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_476
// %bb.361:                             //   in Loop: Header=BB16_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	str	wzr, [x21, #320]
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x21, #320]
	cbnz	w8, .LBB16_366
// %bb.362:                             //   in Loop: Header=BB16_2 Depth=1
	mov	w8, #3                          // =0x3
.LBB16_363:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	cbnz	x0, .LBB16_367
// %bb.364:                             //   in Loop: Header=BB16_363 Depth=2
	mov	x0, x8
	bl	schedule_timeout
	mov	x19, x0
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w9, [x21, #320]
	cmp	x19, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x19, xzr, eq
	cbnz	w9, .LBB16_366
// %bb.365:                             //   in Loop: Header=BB16_363 Depth=2
	cbnz	x8, .LBB16_363
.LBB16_366:                             //   in Loop: Header=BB16_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_367:                             //   in Loop: Header=BB16_2 Depth=1
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_476
// %bb.368:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_370
// %bb.369:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.101
	add	x1, x1, :lo12:.L.str.101
	bl	_dev_info
.LBB16_370:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #312]
	ldr	x1, [x21, #376]
	sub	w8, w8, #1
	cmp	w8, #1
	b.le	.LBB16_461
// %bb.371:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w10, [x21, #316]
	ldr	x12, [x21, #384]
	mov	x9, xzr
	mov	w15, #1                         // =0x1
	lsl	w14, w10, #1
	sub	w11, w10, #1
	mov	x16, x10
	sub	x13, x11, #1
	orr	x14, x14, #0x1
	b	.LBB16_373
.LBB16_372:                             //   in Loop: Header=BB16_373 Depth=2
	add	w15, w15, #1
	add	x16, x16, x10
	add	x14, x14, x10
	cmp	w15, w8
	add	x9, x9, x10
	b.eq	.LBB16_460
.LBB16_373:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB16_375 Depth 3
	cmp	w11, #2
	b.lt	.LBB16_372
// %bb.374:                             //   in Loop: Header=BB16_373 Depth=2
	mov	x17, xzr
.LBB16_375:                             //   Parent Loop BB16_2 Depth=1
                                        //     Parent Loop BB16_373 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	add	w0, w16, w17
	add	w0, w0, #1
	ldrb	w2, [x12, w0, sxtw]
	cbz	w2, .LBB16_377
// %bb.376:                             //   in Loop: Header=BB16_375 Depth=3
	mov	w2, #248                        // =0xf8
	b	.LBB16_382
.LBB16_377:                             //   in Loop: Header=BB16_375 Depth=3
	add	w2, w9, w17
	add	w2, w2, #1
	ldrb	w2, [x12, w2, sxtw]
	cbnz	w2, .LBB16_381
// %bb.378:                             //   in Loop: Header=BB16_375 Depth=3
	add	w2, w14, w17
	ldrb	w2, [x12, w2, sxtw]
	cbnz	w2, .LBB16_381
// %bb.379:                             //   in Loop: Header=BB16_375 Depth=3
	add	w2, w16, w17
	ldrb	w2, [x12, w2, sxtw]
	cbnz	w2, .LBB16_381
// %bb.380:                             //   in Loop: Header=BB16_375 Depth=3
	add	w2, w16, w17
	add	w2, w2, #2
	ldrb	w2, [x12, w2, sxtw]
	cbz	w2, .LBB16_383
.LBB16_381:                             //   in Loop: Header=BB16_375 Depth=3
	mov	w2, #232                        // =0xe8
.LBB16_382:                             //   in Loop: Header=BB16_375 Depth=3
	strb	w2, [x1, w0, sxtw]
.LBB16_383:                             //   in Loop: Header=BB16_375 Depth=3
	add	x17, x17, #1
	cmp	x13, x17
	b.ne	.LBB16_375
	b	.LBB16_372
.LBB16_384:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_386
// %bb.385:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.80
	add	x1, x1, :lo12:.L.str.80
	bl	_dev_info
.LBB16_386:                             //   in Loop: Header=BB16_2 Depth=1
	str	wzr, [x21, #304]
	b	.LBB16_456
.LBB16_387:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #284]
	cbnz	w8, .LBB16_434
.LBB16_388:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #440]
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w9, [x9, #40]
	ldr	w8, [x8, #40]
	cmp	w9, w8
	b.eq	.LBB16_390
// %bb.389:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #284]
	cbnz	w8, .LBB16_440
.LBB16_390:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #316]
	ldr	w9, [x21, #312]
	mov	w3, #255                        // =0xff
	add	w10, w8, #7
	cmp	w8, #0
	csel	w10, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB16_456
// %bb.391:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x12, [sp, #16]                  // 8-byte Folded Reload
	asr	w10, w10, #3
	ldr	x11, [x21, #392]
	ldr	x13, [x21, #368]
	mov	w14, wzr
	ldr	x12, [x12, #16]
	b	.LBB16_393
.LBB16_392:                             //   in Loop: Header=BB16_393 Depth=2
	add	w14, w14, #1
	cmp	w14, w9
	b.eq	.LBB16_456
.LBB16_393:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB16_396 Depth 3
	cmp	w8, #8
	b.lt	.LBB16_392
// %bb.394:                             //   in Loop: Header=BB16_393 Depth=2
	mov	w15, w10
	b	.LBB16_396
.LBB16_395:                             //   in Loop: Header=BB16_396 Depth=3
	subs	w15, w15, #1
	add	x11, x11, #8
	add	x13, x13, #8
	b.eq	.LBB16_392
.LBB16_396:                             //   Parent Loop BB16_2 Depth=1
                                        //     Parent Loop BB16_393 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x16, [x12], #8
	ldr	x17, [x13]
	cmp	x16, x17
	b.eq	.LBB16_395
// %bb.397:                             //   in Loop: Header=BB16_396 Depth=3
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
	b	.LBB16_395
.LBB16_398:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_400
// %bb.399:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.82
	add	x1, x1, :lo12:.L.str.82
	bl	_dev_info
.LBB16_400:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #260]
	ldr	x1, [x21, #384]
	cmp	w8, #1
	b.lt	.LBB16_404
// %bb.401:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x9, [x21, #448]
	mov	w13, #240                       // =0xf0
	ldr	x9, [x9, #16]
.LBB16_402:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	bic	w12, w13, w10
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_402
// %bb.403:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x1, [x21, #384]
	ldr	w8, [x21, #260]
.LBB16_404:                             //   in Loop: Header=BB16_2 Depth=1
                                        // kill: def $w8 killed $w8 killed $x8 def $x8
	ldr	x0, [x21, #376]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x21, #448]
	ldr	x0, [x21, #368]
	ldrsw	x2, [x21, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	str	wzr, [x21, #836]
	str	wzr, [x21, #824]
.LBB16_405:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w8, #4                          // =0x4
	ldr	x2, [x21, #248]
	str	w8, [x21, #472]
	ldp	x0, x1, [x21, #368]
	str	x19, [x21, #448]
	add	x6, x21, #232
	ldp	x4, x5, [x21, #392]
	ldr	x3, [x19, #16]
	bl	refresh_new_image
	ldr	w8, [x21, #284]
	cbnz	w8, .LBB16_408
// %bb.406:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #304]
	str	w26, [x21, #284]
	cbnz	w8, .LBB16_411
// %bb.407:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x21
	mov	w2, wzr
	ldr	w1, [x8, #40]
	bl	ebc_lut_update
	b	.LBB16_412
.LBB16_408:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #440]
	ldr	w1, [x19, #40]
	ldr	w8, [x8, #40]
	cmp	w1, w8
	b.ne	.LBB16_418
// %bb.409:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_426
// %bb.410:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #448]
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.86
	add	x1, x1, :lo12:.L.str.86
	ldrb	w3, [x21, #288]
	ldr	w2, [x8, #40]
	b	.LBB16_420
.LBB16_411:                             //   in Loop: Header=BB16_2 Depth=1
	str	wzr, [x21, #304]
.LBB16_412:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w9, [x21, #852]
	ldr	w8, [x21, #336]
	cmp	w9, #1
	strh	w8, [x21, #288]
	b.lt	.LBB16_414
// %bb.413:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x9, [x21, #448]
	ldr	x0, [x21, #328]
	and	w3, w8, #0xff
	adrp	x1, .L.str.84
	add	x1, x1, :lo12:.L.str.84
	ldr	w2, [x9, #40]
	bl	_dev_info
.LBB16_414:                             //   in Loop: Header=BB16_2 Depth=1
	ldp	x4, x0, [x21, #400]
	add	x5, x21, #232
	ldp	x1, x2, [x21, #368]
	mov	w6, #1                          // =0x1
	ldr	w8, [x21, #204]
	ldr	x3, [x21, #392]
	cbnz	w8, .LBB16_421
// %bb.415:                             //   in Loop: Header=BB16_2 Depth=1
	bl	get_overlay_image
	ldr	w8, [x21, #292]
	cbz	w8, .LBB16_422
.LBB16_416:                             //   in Loop: Header=BB16_2 Depth=1
	ldp	x1, x2, [x21, #368]
	add	x5, x21, #232
	ldp	x3, x4, [x21, #392]
	mov	w6, #1                          // =0x1
	ldr	w8, [x21, #204]
	ldr	x0, [x21, #416]
	cbnz	w8, .LBB16_424
// %bb.417:                             //   in Loop: Header=BB16_2 Depth=1
	bl	get_overlay_image
	b	.LBB16_425
.LBB16_418:                             //   in Loop: Header=BB16_2 Depth=1
	mov	x0, x21
	mov	w2, wzr
	bl	ebc_lut_update
	ldr	w9, [x21, #852]
	ldr	w8, [x21, #336]
	cmp	w9, #1
	strb	w8, [x21, #288]
	b.lt	.LBB16_426
// %bb.419:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x9, [x21, #448]
	ldr	x0, [x21, #328]
	and	w3, w8, #0xff
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	ldr	w2, [x9, #40]
.LBB16_420:                             //   in Loop: Header=BB16_2 Depth=1
	bl	_dev_info
	b	.LBB16_426
.LBB16_421:                             //   in Loop: Header=BB16_2 Depth=1
	bl	get_overlay_image2
	ldr	w8, [x21, #292]
	cbnz	w8, .LBB16_416
.LBB16_422:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	str	wzr, [x21, #284]
	str	w26, [x21, #812]
	cmp	w8, #1
	b.lt	.LBB16_426
// %bb.423:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.115
	add	x1, x1, :lo12:.L.str.115
	adrp	x2, .L__func__.ebc_overlay_bg_frame_start
	add	x2, x2, :lo12:.L__func__.ebc_overlay_bg_frame_start
	bl	_dev_info
	b	.LBB16_426
.LBB16_424:                             //   in Loop: Header=BB16_2 Depth=1
	bl	get_overlay_image2
.LBB16_425:                             //   in Loop: Header=BB16_2 Depth=1
	add	x0, x21, #40
	add	x1, x21, #232
	str	wzr, [x21, #112]
	bl	flip
.LBB16_426:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #448]
	ldr	w8, [x8, #40]
	cmp	w8, #23
	b.hi	.LBB16_430
// %bb.427:                             //   in Loop: Header=BB16_2 Depth=1
	lsl	w8, w26, w8
	mov	w9, #1                          // =0x1
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.eq	.LBB16_430
.LBB16_428:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #676]
	cbnz	w8, .LBB16_478
.LBB16_429:                             //   in Loop: Header=BB16_2 Depth=1
	str	w26, [x21, #676]
	b	.LBB16_479
.LBB16_430:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_428
// %bb.431:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	str	wzr, [x21, #812]
	cmp	w8, #1
	b.lt	.LBB16_433
// %bb.432:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.81
	add	x1, x1, :lo12:.L.str.81
	bl	_dev_info
.LBB16_433:                             //   in Loop: Header=BB16_2 Depth=1
	adrp	x8, jiffies
	ldr	x19, [x8, :lo12:jiffies]
	ldrb	w8, [x21, #288]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	mov	x8, x0
	add	x0, x21, #680
	add	x1, x8, x19
	b	.LBB16_477
.LBB16_434:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_436
// %bb.435:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.87
	add	x1, x1, :lo12:.L.str.87
	bl	_dev_info
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_447
.LBB16_436:                             //   in Loop: Header=BB16_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB16_437:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_446
// %bb.438:                             //   in Loop: Header=BB16_437 Depth=2
	cbnz	x0, .LBB16_447
// %bb.439:                             //   in Loop: Header=BB16_437 Depth=2
	bl	schedule
	b	.LBB16_437
.LBB16_440:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_442
// %bb.441:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.87
	add	x1, x1, :lo12:.L.str.87
	bl	_dev_info
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_447
.LBB16_442:                             //   in Loop: Header=BB16_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB16_443:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_446
// %bb.444:                             //   in Loop: Header=BB16_443 Depth=2
	cbnz	x0, .LBB16_447
// %bb.445:                             //   in Loop: Header=BB16_443 Depth=2
	bl	schedule
	b	.LBB16_443
.LBB16_446:                             //   in Loop: Header=BB16_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_447:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_251
// %bb.448:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.88
	add	x1, x1, :lo12:.L.str.88
	bl	_dev_info
	b	.LBB16_251
.LBB16_449:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	cmp	w8, #1
	b.lt	.LBB16_451
// %bb.450:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.82
	add	x1, x1, :lo12:.L.str.82
	bl	_dev_info
	ldr	x9, [x21, #448]
.LBB16_451:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #260]
	ldr	x1, [x21, #384]
	cmp	w8, #1
	b.lt	.LBB16_455
// %bb.452:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x9, [x9, #16]
	mov	w13, #240                       // =0xf0
.LBB16_453:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	bic	w12, w13, w10
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_453
// %bb.454:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x1, [x21, #384]
	ldr	w8, [x21, #260]
.LBB16_455:                             //   in Loop: Header=BB16_2 Depth=1
                                        // kill: def $w8 killed $w8 killed $x8 def $x8
	ldr	x0, [x21, #376]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x21, #448]
	ldr	x0, [x21, #368]
	ldrsw	x2, [x21, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	str	wzr, [x21, #836]
	str	wzr, [x21, #824]
.LBB16_456:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #284]
	mov	w9, #3                          // =0x3
	str	w9, [x21, #472]
	cbnz	w8, .LBB16_428
// %bb.457:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	w26, [x21, #284]
	mov	x0, x21
	mov	w2, wzr
	ldr	w1, [x8, #40]
	bl	ebc_lut_update
	ldr	w9, [x21, #852]
	ldr	w8, [x21, #336]
	cmp	w9, #1
	strh	w8, [x21, #288]
	b.lt	.LBB16_459
// %bb.458:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	and	w2, w8, #0xff
	adrp	x1, .L.str.89
	add	x1, x1, :lo12:.L.str.89
	bl	_dev_info
.LBB16_459:                             //   in Loop: Header=BB16_2 Depth=1
	mov	x0, x21
	bl	ebc_frame_start
	b	.LBB16_428
.LBB16_460:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x1, [x21, #376]
.LBB16_461:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #440]
	ldrsw	x2, [x21, #260]
	ldr	x0, [x8, #16]
	bl	memcpy
	ldr	w8, [x21, #828]
	mov	w9, #2                          // =0x2
	mov	w10, #10                        // =0xa
	mov	w11, #1                         // =0x1
	mov	w26, #1                         // =0x1
	madd	w9, w8, w10, w9
	ldr	w10, [x21, #852]
	cmp	w8, #7
	mov	w8, #72                         // =0x48
	str	w11, [x21, #284]
	str	w11, [x21, #472]
	csel	w8, w8, w9, gt
	cmp	w10, #1
	strb	w8, [x21, #288]
	b.lt	.LBB16_463
// %bb.462:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x9, [x21, #448]
	ldr	x0, [x21, #328]
	and	w3, w8, #0xff
	adrp	x1, .L.str.102
	add	x1, x1, :lo12:.L.str.102
	ldr	w2, [x9, #40]
	bl	_dev_info
.LBB16_463:                             //   in Loop: Header=BB16_2 Depth=1
	mov	x0, x21
	bl	ebc_frame_start
	adrp	x8, jiffies
	add	x0, x21, #760
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_465
// %bb.464:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.96
	add	x1, x1, :lo12:.L.str.96
	bl	_dev_info
.LBB16_465:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_471
// %bb.466:                             //   in Loop: Header=BB16_2 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #24]
	bl	init_wait_entry
.LBB16_467:                             //   Parent Loop BB16_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldr	w8, [x21, #284]
	cbz	w8, .LBB16_470
// %bb.468:                             //   in Loop: Header=BB16_467 Depth=2
	cbnz	x0, .LBB16_471
// %bb.469:                             //   in Loop: Header=BB16_467 Depth=2
	bl	schedule
	b	.LBB16_467
.LBB16_470:                             //   in Loop: Header=BB16_2 Depth=1
	add	x1, sp, #24
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_471:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w2, [x21, #304]
	cmp	w2, #10
	b.gt	.LBB16_473
// %bb.472:                             //   in Loop: Header=BB16_2 Depth=1
	str	wzr, [x21, #836]
	b	.LBB16_475
.LBB16_473:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	w8, [x21, #852]
	cmp	w8, #1
	b.lt	.LBB16_475
// %bb.474:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.103
	add	x1, x1, :lo12:.L.str.103
	bl	_dev_info
.LBB16_475:                             //   in Loop: Header=BB16_2 Depth=1
	str	wzr, [x21, #304]
.LBB16_476:                             //   in Loop: Header=BB16_2 Depth=1
	adrp	x8, jiffies
	mov	w9, #335544320                  // =0x14000000
	add	x0, x21, #760
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, x9
.LBB16_477:                             //   in Loop: Header=BB16_2 Depth=1
	bl	mod_timer
	ldr	w8, [x21, #676]
	cbz	w8, .LBB16_429
.LBB16_478:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x0, [x21, #440]
	bl	ebc_buf_release
.LBB16_479:                             //   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x21, #448]
	str	x8, [x21, #440]
	b	.LBB16_2
.Lfunc_end16:
	.size	ebc_thread, .Lfunc_end16-ebc_thread
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
	cbz	w8, .LBB17_2
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
.LBB17_2:
	ldr	w8, [x20, #720]
	tbnz	w8, #31, .LBB17_7
// %bb.3:
	ldr	w9, [x20, #80]
	cmp	w8, w9
	b.ge	.LBB17_7
// %bb.4:
	ldr	w9, [x20, #716]
	tbnz	w9, #31, .LBB17_7
// %bb.5:
	ldr	w10, [x20, #84]
	cmp	w9, w10
	b.ge	.LBB17_7
// %bb.6:
	mul	w8, w10, w8
	ldur	x10, [x23, #24]
	lsr	w8, w8, #2
	add	x8, x8, x9, lsr #2
	ubfiz	w9, w9, #1, #2
	ldrb	w8, [x10, x8]
	mov	w10, #48                        // =0x30
	lsr	w8, w8, w9
	ldrb	w9, [x20, #724]
	bfxil	w10, w8, #0, #2
	add	w8, w9, #1
	add	x9, x20, x9
	strb	w8, [x20, #724]
	strb	w10, [x9, #725]
.LBB17_7:
	ldr	x0, [x19]
	ldrb	w8, [x0, #796]
	tbnz	w8, #6, .LBB17_9
// %bb.8:
	ldrsw	x2, [x20, #32]
	ldur	x1, [x23, #32]
	mov	w3, #1                          // =0x1
	bl	__dma_sync_single_for_device
.LBB17_9:
	ldr	x0, [x19, #8]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	add	w20, w25, w24
	ldr	x8, [x0, #88]
	ldur	w16, [x8, #-4]
	movk	w17, #25337
	movk	w17, #33182, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp27
	brk	#0x8228
.Ltmp27:
	blr	x8
	ldr	x0, [x19, #8]
	ldur	w1, [x23, #32]
	mov	w2, wzr
	ldr	x8, [x0, #96]
	ldur	w16, [x8, #-4]
	movk	w17, #4825
	movk	w17, #3196, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp28
	brk	#0x8228
.Ltmp28:
	blr	x8
	ldr	x0, [x19, #8]
	add	w1, w20, w22
	mov	w2, wzr
	ldr	x8, [x0, #144]
	ldur	w16, [x8, #-4]
	movk	w17, #8799
	movk	w17, #41445, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp29
	brk	#0x8228
.Ltmp29:
	blr	x8
	ldr	x0, [x19, #8]
	mov	w1, #1                          // =0x1
	mov	w20, #1                         // =0x1
	ldr	x8, [x0, #128]
	ldur	w16, [x8, #-4]
	movk	w17, #41130
	movk	w17, #9946, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp30
	brk	#0x8228
.Ltmp30:
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
.Lfunc_end17:
	.size	flip, .Lfunc_end17-flip
                                        // -- End function
	.p2align	2                               // -- Begin function get_overlay_image2
	.type	get_overlay_image2,@function
get_overlay_image2:                     // @get_overlay_image2
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #144
	adrp	x8, global_ebc
	add	x11, x5, #60
	add	x13, x5, #64
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	mov	x19, x5
	ldp	w16, w9, [x8, #116]
	stp	x28, x27, [sp, #64]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	cmp	w9, #0
	lsr	x12, x16, #3
	lsr	w23, w16, #2
	cinc	w8, w9, lt
	cmp	w9, #0
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	asr	w8, w8, #1
	cinc	w10, w9, lt
	str	x12, [sp, #8]                   // 8-byte Folded Spill
	asr	w10, w10, #1
	cmp	w6, #2
	mov	x21, x0
	mul	w12, w8, w12
	csel	w15, wzr, wzr, ne
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	mul	w14, w8, w16
	csel	w10, w9, w10, ne
	cmp	w6, #3
	csel	x11, x13, x11, eq
	csel	w20, w9, w10, eq
	csel	w24, w8, w15, eq
	str	x11, [sp, #16]                  // 8-byte Folded Spill
	sbfiz	x11, x12, #3, #32
	mul	w25, w24, w23
	add	x8, x4, x14
	add	x9, x3, x14
	add	x29, sp, #48
	csel	x26, x8, x4, eq
	add	x8, x2, x11
	csel	x27, x9, x3, eq
	add	x9, x1, x11
	csel	x28, x8, x2, eq
	add	x0, x0, w25, sxtw
	csel	x22, x9, x1, eq
	subs	w8, w20, w24
	mov	w1, wzr
	mul	w8, w8, w23
	stur	x16, [x29, #-8]                 // 8-byte Folded Spill
	sxtw	x2, w8
	bl	memset
	cmp	w20, w24
	mov	w3, wzr
	stur	w20, [x29, #-12]                // 4-byte Folded Spill
	b.le	.LBB18_52
// %bb.1:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	lsl	w12, w23, #1
	mov	w3, wzr
	add	x10, x19, #120
	mov	w11, #56                        // =0x38
	str	x21, [sp, #24]                  // 8-byte Folded Spill
	lsl	x9, x8, #3
	stur	w12, [x29, #-16]                // 4-byte Folded Spill
	b	.LBB18_5
.LBB18_2:                               //   in Loop: Header=BB18_5 Depth=1
	add	x8, x22, x12
	add	x13, x28, x12
	add	x14, x26, x12
	add	x12, x27, x12
	ldr	x21, [sp, #24]                  // 8-byte Folded Reload
	add	x22, x8, x0
	add	x28, x13, x0
	add	x26, x14, x0
	add	x27, x12, x0
.LBB18_3:                               //   in Loop: Header=BB18_5 Depth=1
	ldur	w12, [x29, #-16]                // 4-byte Folded Reload
.LBB18_4:                               //   in Loop: Header=BB18_5 Depth=1
	ldur	w8, [x29, #-12]                 // 4-byte Folded Reload
	add	w24, w24, #2
	add	w25, w25, w12
	cmp	w24, w8
	b.ge	.LBB18_52
.LBB18_5:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_10 Depth 2
                                        //     Child Loop BB18_34 Depth 2
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	cmp	w8, #8
	b.lo	.LBB18_4
// %bb.6:                               //   in Loop: Header=BB18_5 Depth=1
	add	x13, x21, w25, sxtw
	mov	x12, xzr
	mov	x14, x13
	b	.LBB18_10
.LBB18_7:                               //   in Loop: Header=BB18_10 Depth=2
	str	x15, [x28, x12]
.LBB18_8:                               //   in Loop: Header=BB18_10 Depth=2
	mov	w3, #1                          // =0x1
	str	w17, [x14]
.LBB18_9:                               //   in Loop: Header=BB18_10 Depth=2
	add	x12, x12, #8
	add	x14, x14, #4
	cmp	x9, x12
	b.eq	.LBB18_28
.LBB18_10:                              //   Parent Loop BB18_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x16, [x22, x12]
	ldr	x15, [x28, x12]
	eor	x0, x15, x16
	cbz	x0, .LBB18_9
// %bb.11:                              //   in Loop: Header=BB18_10 Depth=2
	tst	x0, #0xff
	b.eq	.LBB18_27
// %bb.12:                              //   in Loop: Header=BB18_10 Depth=2
	ldrb	w17, [x26, x12]
	lsl	w1, w15, #2
	ldrb	w2, [x27, x12]
	mov	x4, x15
	cmp	w17, #0
	ldr	x17, [x10, x17, lsl #3]
	and	x1, x1, #0x3e0
	cinc	x3, x11, ne
	bfxil	x1, x16, #3, #5
	add	w5, w2, #1
	ldrb	w3, [x19, x3]
	add	x17, x17, x2, lsl #10
	bfxil	x4, x16, #0, #8
	cmp	w3, w5, uxtb
	ldrb	w17, [x17, x1]
	cset	w1, eq
	csel	x15, x4, x15, eq
	csinc	w2, wzr, w2, eq
	strb	w2, [x27, x12]
	tst	x0, #0xff00
	b.eq	.LBB18_14
.LBB18_13:                              //   in Loop: Header=BB18_10 Depth=2
	add	x2, x26, x12
	add	x3, x27, x12
	lsr	x4, x15, #6
	ldrb	w2, [x2, #1]
	ldrb	w5, [x3, #1]
	lsr	x7, x16, #8
	and	x4, x4, #0x3e0
	mov	x20, x15
	ldr	x6, [x10, x2, lsl #3]
	cmp	w2, #0
	bfxil	x4, x16, #11, #5
	bfi	x20, x7, #8, #8
	add	x2, x6, x5, lsl #10
	cinc	x6, x11, ne
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	orr	w17, w17, w2, lsl #4
	csinc	w2, wzr, w5, eq
	csinc	w1, w1, wzr, ne
	csel	x15, x20, x15, eq
	strb	w2, [x3, #1]
.LBB18_14:                              //   in Loop: Header=BB18_10 Depth=2
	tst	x0, #0xff0000
	b.eq	.LBB18_16
// %bb.15:                              //   in Loop: Header=BB18_10 Depth=2
	add	x2, x26, x12
	add	x3, x27, x12
	lsr	x4, x15, #14
	ldrb	w2, [x2, #2]
	ldrb	w5, [x3, #2]
	lsr	x7, x16, #16
	and	x4, x4, #0x3e0
	mov	x20, x15
	ldr	x6, [x10, x2, lsl #3]
	cmp	w2, #0
	bfxil	x4, x16, #19, #5
	bfi	x20, x7, #16, #8
	add	x2, x6, x5, lsl #10
	cinc	x6, x11, ne
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	orr	w17, w17, w2, lsl #8
	csinc	w2, wzr, w5, eq
	csinc	w1, w1, wzr, ne
	csel	x15, x20, x15, eq
	strb	w2, [x3, #2]
.LBB18_16:                              //   in Loop: Header=BB18_10 Depth=2
	tst	x0, #0xff000000
	b.eq	.LBB18_18
// %bb.17:                              //   in Loop: Header=BB18_10 Depth=2
	add	x2, x26, x12
	add	x3, x27, x12
	lsr	x4, x15, #22
	ldrb	w2, [x2, #3]
	ldrb	w5, [x3, #3]
	lsr	x7, x16, #24
	and	x4, x4, #0x3e0
	mov	x20, x15
	ldr	x6, [x10, x2, lsl #3]
	cmp	w2, #0
	bfxil	x4, x16, #27, #5
	bfi	x20, x7, #24, #8
	add	x2, x6, x5, lsl #10
	cinc	x6, x11, ne
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	orr	w17, w17, w2, lsl #12
	csinc	w2, wzr, w5, eq
	csinc	w1, w1, wzr, ne
	csel	x15, x20, x15, eq
	strb	w2, [x3, #3]
.LBB18_18:                              //   in Loop: Header=BB18_10 Depth=2
	tst	x0, #0xff00000000
	b.eq	.LBB18_20
// %bb.19:                              //   in Loop: Header=BB18_10 Depth=2
	add	x2, x26, x12
	add	x3, x27, x12
	lsr	x4, x15, #30
	ldrb	w2, [x2, #4]
	ldrb	w5, [x3, #4]
	lsr	x7, x16, #32
	and	x4, x4, #0x3e0
	mov	x20, x15
	ldr	x6, [x10, x2, lsl #3]
	cmp	w2, #0
	bfxil	x4, x16, #35, #5
	bfi	x20, x7, #32, #8
	add	x2, x6, x5, lsl #10
	cinc	x6, x11, ne
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	orr	w17, w17, w2, lsl #16
	csinc	w2, wzr, w5, eq
	csinc	w1, w1, wzr, ne
	csel	x15, x20, x15, eq
	strb	w2, [x3, #4]
.LBB18_20:                              //   in Loop: Header=BB18_10 Depth=2
	tst	x0, #0xff0000000000
	b.eq	.LBB18_22
// %bb.21:                              //   in Loop: Header=BB18_10 Depth=2
	add	x2, x26, x12
	add	x3, x27, x12
	lsr	x4, x15, #38
	ldrb	w2, [x2, #5]
	ldrb	w5, [x3, #5]
	lsr	x7, x16, #40
	and	x4, x4, #0x3e0
	mov	x20, x15
	ldr	x6, [x10, x2, lsl #3]
	cmp	w2, #0
	bfxil	x4, x16, #43, #5
	bfi	x20, x7, #40, #8
	add	x2, x6, x5, lsl #10
	cinc	x6, x11, ne
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	orr	w17, w17, w2, lsl #20
	csinc	w2, wzr, w5, eq
	csinc	w1, w1, wzr, ne
	csel	x15, x20, x15, eq
	strb	w2, [x3, #5]
.LBB18_22:                              //   in Loop: Header=BB18_10 Depth=2
	tst	x0, #0xff000000000000
	b.eq	.LBB18_24
// %bb.23:                              //   in Loop: Header=BB18_10 Depth=2
	add	x2, x26, x12
	add	x3, x27, x12
	lsr	x4, x15, #46
	ldrb	w2, [x2, #6]
	ldrb	w5, [x3, #6]
	lsr	x7, x16, #48
	and	x4, x4, #0x3e0
	mov	x20, x15
	ldr	x6, [x10, x2, lsl #3]
	cmp	w2, #0
	bfxil	x4, x16, #51, #5
	bfi	x20, x7, #48, #8
	add	x2, x6, x5, lsl #10
	cinc	x6, x11, ne
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	orr	w17, w17, w2, lsl #24
	csinc	w2, wzr, w5, eq
	csinc	w1, w1, wzr, ne
	csel	x15, x20, x15, eq
	strb	w2, [x3, #6]
.LBB18_24:                              //   in Loop: Header=BB18_10 Depth=2
	lsr	x0, x0, #56
	cbnz	x0, .LBB18_26
// %bb.25:                              //   in Loop: Header=BB18_10 Depth=2
	cbnz	w1, .LBB18_7
	b	.LBB18_8
.LBB18_26:                              //   in Loop: Header=BB18_10 Depth=2
	add	x0, x26, x12
	add	x2, x27, x12
	lsr	x3, x15, #54
	ldrb	w0, [x0, #7]
	ldrb	w4, [x2, #7]
	and	x3, x3, #0x3e0
	ldr	x5, [x10, x0, lsl #3]
	cmp	w0, #0
	bfxil	x3, x16, #59, #5
	bfxil	x16, x15, #0, #56
	add	x0, x5, x4, lsl #10
	cinc	x5, x11, ne
	ldrb	w5, [x19, x5]
	ldrb	w0, [x0, x3]
	add	w3, w4, #1
	cmp	w5, w3, uxtb
	orr	w17, w17, w0, lsl #28
	csinc	w0, wzr, w4, eq
	csinc	w1, w1, wzr, ne
	csel	x15, x16, x15, eq
	strb	w0, [x2, #7]
	tbnz	w1, #0, .LBB18_7
	b	.LBB18_8
.LBB18_27:                              //   in Loop: Header=BB18_10 Depth=2
	mov	w17, wzr
	mov	w1, wzr
	tst	x0, #0xff00
	b.ne	.LBB18_13
	b	.LBB18_14
.LBB18_28:                              //   in Loop: Header=BB18_5 Depth=1
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	add	x14, x22, x12
	add	x15, x28, x12
	add	x16, x26, x12
	add	x17, x27, x12
	cmp	w8, #8
	b.hs	.LBB18_30
// %bb.29:                              //   in Loop: Header=BB18_5 Depth=1
	mov	x26, x16
	mov	x27, x17
	mov	x28, x15
	mov	x22, x14
	b	.LBB18_3
.LBB18_30:                              //   in Loop: Header=BB18_5 Depth=1
	mov	x0, xzr
	b	.LBB18_34
.LBB18_31:                              //   in Loop: Header=BB18_34 Depth=2
	str	x21, [x15, x0]
.LBB18_32:                              //   in Loop: Header=BB18_34 Depth=2
	ldr	w8, [x13]
	orr	w8, w8, w3
	mov	w3, #1                          // =0x1
	str	w8, [x13]
.LBB18_33:                              //   in Loop: Header=BB18_34 Depth=2
	add	x0, x0, #8
	add	x13, x13, #4
	cmp	x9, x0
	b.eq	.LBB18_2
.LBB18_34:                              //   Parent Loop BB18_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x2, [x14, x0]
	ldr	x21, [x15, x0]
	eor	x4, x21, x2
	cbz	x4, .LBB18_33
// %bb.35:                              //   in Loop: Header=BB18_34 Depth=2
	tst	x4, #0xff
	b.eq	.LBB18_51
// %bb.36:                              //   in Loop: Header=BB18_34 Depth=2
	ldrb	w3, [x16, x0]
	lsl	w5, w21, #2
	ldrb	w6, [x17, x0]
	mov	x20, x21
	ldr	x7, [x10, x3, lsl #3]
	and	x5, x5, #0x3e0
	cmp	w3, #0
	bfxil	x5, x2, #3, #5
	bfxil	x20, x2, #0, #8
	add	x3, x7, x6, lsl #10
	cinc	x7, x11, ne
	ldrb	w7, [x19, x7]
	ldrb	w3, [x3, x5]
	add	w5, w6, #1
	cmp	w7, w5, uxtb
	lsl	w3, w3, #2
	cset	w5, eq
	csel	x21, x20, x21, eq
	csinc	w6, wzr, w6, eq
	strb	w6, [x17, x0]
	tst	x4, #0xff00
	b.eq	.LBB18_38
.LBB18_37:                              //   in Loop: Header=BB18_34 Depth=2
	add	x6, x16, x0
	add	x7, x17, x0
	lsr	x20, x21, #6
	ldrb	w6, [x6, #1]
	ldrb	w23, [x7, #1]
	lsr	x8, x2, #8
	and	x20, x20, #0x3e0
	mov	x1, x21
	ldr	x30, [x10, x6, lsl #3]
	cmp	w6, #0
	bfxil	x20, x2, #11, #5
	bfi	x1, x8, #8, #8
	add	x6, x30, x23, lsl #10
	cinc	x30, x11, ne
	ldrb	w30, [x19, x30]
	ldrb	w6, [x6, x20]
	add	w20, w23, #1
	cmp	w30, w20, uxtb
	orr	w3, w3, w6, lsl #6
	csinc	w8, wzr, w23, eq
	csel	x21, x1, x21, eq
	csinc	w5, w5, wzr, ne
	strb	w8, [x7, #1]
.LBB18_38:                              //   in Loop: Header=BB18_34 Depth=2
	tst	x4, #0xff0000
	b.eq	.LBB18_40
// %bb.39:                              //   in Loop: Header=BB18_34 Depth=2
	add	x8, x16, x0
	add	x1, x17, x0
	lsr	x6, x21, #14
	ldrb	w8, [x8, #2]
	ldrb	w7, [x1, #2]
	lsr	x23, x2, #16
	and	x6, x6, #0x3e0
	mov	x30, x21
	ldr	x20, [x10, x8, lsl #3]
	cmp	w8, #0
	bfxil	x6, x2, #19, #5
	bfi	x30, x23, #16, #8
	add	x8, x20, x7, lsl #10
	cinc	x20, x11, ne
	ldrb	w20, [x19, x20]
	ldrb	w8, [x8, x6]
	add	w6, w7, #1
	cmp	w20, w6, uxtb
	orr	w3, w3, w8, lsl #10
	csinc	w8, wzr, w7, eq
	csel	x21, x30, x21, eq
	csinc	w5, w5, wzr, ne
	strb	w8, [x1, #2]
.LBB18_40:                              //   in Loop: Header=BB18_34 Depth=2
	tst	x4, #0xff000000
	b.eq	.LBB18_42
// %bb.41:                              //   in Loop: Header=BB18_34 Depth=2
	add	x8, x16, x0
	add	x1, x17, x0
	lsr	x6, x21, #22
	ldrb	w8, [x8, #3]
	ldrb	w7, [x1, #3]
	lsr	x23, x2, #24
	and	x6, x6, #0x3e0
	mov	x30, x21
	ldr	x20, [x10, x8, lsl #3]
	cmp	w8, #0
	bfxil	x6, x2, #27, #5
	bfi	x30, x23, #24, #8
	add	x8, x20, x7, lsl #10
	cinc	x20, x11, ne
	ldrb	w20, [x19, x20]
	ldrb	w8, [x8, x6]
	add	w6, w7, #1
	cmp	w20, w6, uxtb
	orr	w3, w3, w8, lsl #14
	csinc	w8, wzr, w7, eq
	csel	x21, x30, x21, eq
	csinc	w5, w5, wzr, ne
	strb	w8, [x1, #3]
.LBB18_42:                              //   in Loop: Header=BB18_34 Depth=2
	tst	x4, #0xff00000000
	b.eq	.LBB18_44
// %bb.43:                              //   in Loop: Header=BB18_34 Depth=2
	add	x8, x16, x0
	add	x1, x17, x0
	lsr	x6, x21, #30
	ldrb	w8, [x8, #4]
	ldrb	w7, [x1, #4]
	lsr	x23, x2, #32
	and	x6, x6, #0x3e0
	mov	x30, x21
	ldr	x20, [x10, x8, lsl #3]
	cmp	w8, #0
	bfxil	x6, x2, #35, #5
	bfi	x30, x23, #32, #8
	add	x8, x20, x7, lsl #10
	cinc	x20, x11, ne
	ldrb	w20, [x19, x20]
	ldrb	w8, [x8, x6]
	add	w6, w7, #1
	cmp	w20, w6, uxtb
	orr	w3, w3, w8, lsl #18
	csinc	w8, wzr, w7, eq
	csel	x21, x30, x21, eq
	csinc	w5, w5, wzr, ne
	strb	w8, [x1, #4]
.LBB18_44:                              //   in Loop: Header=BB18_34 Depth=2
	tst	x4, #0xff0000000000
	b.eq	.LBB18_46
// %bb.45:                              //   in Loop: Header=BB18_34 Depth=2
	add	x8, x16, x0
	add	x1, x17, x0
	lsr	x6, x21, #38
	ldrb	w8, [x8, #5]
	ldrb	w7, [x1, #5]
	lsr	x23, x2, #40
	and	x6, x6, #0x3e0
	mov	x30, x21
	ldr	x20, [x10, x8, lsl #3]
	cmp	w8, #0
	bfxil	x6, x2, #43, #5
	bfi	x30, x23, #40, #8
	add	x8, x20, x7, lsl #10
	cinc	x20, x11, ne
	ldrb	w20, [x19, x20]
	ldrb	w8, [x8, x6]
	add	w6, w7, #1
	cmp	w20, w6, uxtb
	orr	w3, w3, w8, lsl #22
	csinc	w8, wzr, w7, eq
	csel	x21, x30, x21, eq
	csinc	w5, w5, wzr, ne
	strb	w8, [x1, #5]
.LBB18_46:                              //   in Loop: Header=BB18_34 Depth=2
	tst	x4, #0xff000000000000
	b.eq	.LBB18_48
// %bb.47:                              //   in Loop: Header=BB18_34 Depth=2
	add	x8, x16, x0
	add	x1, x17, x0
	lsr	x6, x21, #46
	ldrb	w8, [x8, #6]
	ldrb	w7, [x1, #6]
	lsr	x23, x2, #48
	and	x6, x6, #0x3e0
	mov	x30, x21
	ldr	x20, [x10, x8, lsl #3]
	cmp	w8, #0
	bfxil	x6, x2, #51, #5
	bfi	x30, x23, #48, #8
	add	x8, x20, x7, lsl #10
	cinc	x20, x11, ne
	ldrb	w20, [x19, x20]
	ldrb	w8, [x8, x6]
	add	w6, w7, #1
	cmp	w20, w6, uxtb
	orr	w3, w3, w8, lsl #26
	csinc	w8, wzr, w7, eq
	csel	x21, x30, x21, eq
	csinc	w5, w5, wzr, ne
	strb	w8, [x1, #6]
.LBB18_48:                              //   in Loop: Header=BB18_34 Depth=2
	lsr	x8, x4, #56
	cbnz	x8, .LBB18_50
// %bb.49:                              //   in Loop: Header=BB18_34 Depth=2
	cbnz	w5, .LBB18_31
	b	.LBB18_32
.LBB18_50:                              //   in Loop: Header=BB18_34 Depth=2
	add	x8, x16, x0
	add	x1, x17, x0
	lsr	x4, x21, #54
	ldrb	w8, [x8, #7]
	ldrb	w6, [x1, #7]
	and	x4, x4, #0x3e0
	ldr	x7, [x10, x8, lsl #3]
	cmp	w8, #0
	bfxil	x4, x2, #59, #5
	bfxil	x2, x21, #0, #56
	add	x8, x7, x6, lsl #10
	cinc	x7, x11, ne
	ldrb	w7, [x19, x7]
	ldrb	w8, [x8, x4]
	add	w4, w6, #1
	cmp	w7, w4, uxtb
	orr	w3, w3, w8, lsl #30
	csinc	w8, w5, wzr, ne
	csinc	w4, wzr, w6, eq
	csel	x21, x2, x21, eq
	strb	w4, [x1, #7]
	tbnz	w8, #0, .LBB18_31
	b	.LBB18_32
.LBB18_51:                              //   in Loop: Header=BB18_34 Depth=2
	mov	w5, wzr
	mov	w3, wzr
	tst	x4, #0xff00
	b.ne	.LBB18_37
	b	.LBB18_38
.LBB18_52:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	str	w3, [x8]
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #144
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end18:
	.size	get_overlay_image2, .Lfunc_end18-get_overlay_image2
                                        // -- End function
	.p2align	2                               // -- Begin function get_overlay_image
	.type	get_overlay_image,@function
get_overlay_image:                      // @get_overlay_image
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #128
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	add	x10, x5, #60
	ldr	x20, [x8, :lo12:global_ebc]
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	add	x14, x5, #64
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	x19, x5
	ldp	w17, w8, [x20, #116]
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	ldr	w15, [x20, #196]
	stp	x28, x27, [sp, #48]             // 16-byte Folded Spill
	cmp	w8, #0
	lsr	x21, x17, #3
	lsr	w22, w17, #2
	cinc	w9, w8, lt
	cmp	w8, #0
	stp	x26, x25, [sp, #64]             // 16-byte Folded Spill
	asr	w9, w9, #1
	cinc	w11, w8, lt
	cmp	w6, #2
	asr	w11, w11, #1
	csel	w16, wzr, wzr, ne
	str	x17, [sp, #16]                  // 8-byte Folded Spill
	mul	w12, w9, w21
	mul	w13, w9, w17
	csel	w11, w8, w11, ne
	cmp	w6, #3
	csel	x10, x14, x10, eq
	csel	w23, w8, w11, eq
	csel	w24, w9, w16, eq
	sbfiz	x12, x12, #3, #32
	stur	x10, [x29, #-8]                 // 8-byte Folded Spill
	add	x10, x3, x13
	add	x11, x4, x13
	add	x13, x1, x12
	add	x12, x2, x12
	csel	x25, x11, x4, eq
	csel	x26, x10, x3, eq
	csel	x27, x12, x2, eq
	csel	x28, x13, x1, eq
	cbz	w15, .LBB19_28
// %bb.1:
	sub	w9, w23, w24
	sub	w8, w8, w23
	str	w23, [sp, #12]                  // 4-byte Folded Spill
	mul	w9, w9, w22
	mov	x23, x21
	mov	x21, x0
	mul	w8, w8, w22
	mov	w1, wzr
	sxtw	x2, w9
	add	x0, x0, x8
	bl	memset
	ldr	w8, [x20, #120]
	mvn	w9, w24
	add	w8, w8, w9
	mul	w8, w8, w22
	neg	w22, w22
	add	x20, x21, x8
	mov	x21, x23
	ldr	w23, [sp, #12]                  // 4-byte Folded Reload
	cmp	w23, w24
	b.le	.LBB19_29
.LBB19_2:
	sxtw	x8, w22
	lsl	x9, x21, #3
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	add	x10, x19, #120
	add	x11, x20, #1
	mov	w12, #56                        // =0x38
	b	.LBB19_5
.LBB19_3:                               //   in Loop: Header=BB19_5 Depth=1
	add	x25, x25, x13
	add	x28, x28, x13
	add	x27, x27, x13
	add	x26, x26, x13
.LBB19_4:                               //   in Loop: Header=BB19_5 Depth=1
	add	w24, w24, #1
	add	x11, x11, x8
	cmp	w24, w23
	b.eq	.LBB19_30
.LBB19_5:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB19_10 Depth 2
	cmp	w21, #8
	b.lo	.LBB19_4
// %bb.6:                               //   in Loop: Header=BB19_5 Depth=1
	mov	x13, xzr
	mov	x14, x11
	b	.LBB19_10
.LBB19_7:                               //   in Loop: Header=BB19_10 Depth=2
	str	x15, [x27, x13]
.LBB19_8:                               //   in Loop: Header=BB19_10 Depth=2
	mov	w0, #1                          // =0x1
	strb	w1, [x14]
.LBB19_9:                               //   in Loop: Header=BB19_10 Depth=2
	add	x13, x13, #8
	add	x14, x14, #2
	cmp	x9, x13
	b.eq	.LBB19_3
.LBB19_10:                              //   Parent Loop BB19_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x16, [x28, x13]
	ldr	x15, [x27, x13]
	eor	x17, x15, x16
	cbz	x17, .LBB19_9
// %bb.11:                              //   in Loop: Header=BB19_10 Depth=2
	tst	x17, #0xff
	b.eq	.LBB19_26
// %bb.12:                              //   in Loop: Header=BB19_10 Depth=2
	ldrb	w0, [x25, x13]
	lsl	w1, w15, #2
	ldrb	w2, [x26, x13]
	mov	x4, x15
	cmp	w0, #0
	ldr	x0, [x10, x0, lsl #3]
	and	x1, x1, #0x3e0
	cinc	x3, x12, ne
	bfxil	x1, x16, #3, #5
	add	w5, w2, #1
	ldrb	w3, [x19, x3]
	add	x0, x0, x2, lsl #10
	bfxil	x4, x16, #0, #8
	cmp	w3, w5, uxtb
	ldrb	w1, [x0, x1]
	cset	w0, eq
	csel	x15, x4, x15, eq
	csinc	w2, wzr, w2, eq
	strb	w2, [x26, x13]
	tst	x17, #0xff00
	b.eq	.LBB19_14
.LBB19_13:                              //   in Loop: Header=BB19_10 Depth=2
	add	x2, x25, x13
	add	x3, x26, x13
	lsr	x4, x15, #6
	ldrb	w2, [x2, #1]
	ldrb	w5, [x3, #1]
	lsr	x7, x16, #8
	and	x4, x4, #0x3e0
	mov	x20, x15
	ldr	x6, [x10, x2, lsl #3]
	cmp	w2, #0
	bfxil	x4, x16, #11, #5
	bfi	x20, x7, #8, #8
	add	x2, x6, x5, lsl #10
	cinc	x6, x12, ne
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	orr	w1, w1, w2, lsl #2
	csinc	w2, wzr, w5, eq
	csinc	w0, w0, wzr, ne
	csel	x15, x20, x15, eq
	strb	w2, [x3, #1]
.LBB19_14:                              //   in Loop: Header=BB19_10 Depth=2
	tst	x17, #0xff0000
	b.eq	.LBB19_16
// %bb.15:                              //   in Loop: Header=BB19_10 Depth=2
	add	x2, x25, x13
	add	x3, x26, x13
	lsr	x4, x15, #14
	ldrb	w2, [x2, #2]
	ldrb	w5, [x3, #2]
	lsr	x7, x16, #16
	and	x4, x4, #0x3e0
	mov	x20, x15
	ldr	x6, [x10, x2, lsl #3]
	cmp	w2, #0
	bfxil	x4, x16, #19, #5
	bfi	x20, x7, #16, #8
	add	x2, x6, x5, lsl #10
	cinc	x6, x12, ne
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	orr	w1, w1, w2, lsl #4
	csinc	w2, wzr, w5, eq
	csinc	w0, w0, wzr, ne
	csel	x15, x20, x15, eq
	strb	w2, [x3, #2]
.LBB19_16:                              //   in Loop: Header=BB19_10 Depth=2
	tst	x17, #0xff000000
	b.eq	.LBB19_18
// %bb.17:                              //   in Loop: Header=BB19_10 Depth=2
	add	x2, x25, x13
	add	x3, x26, x13
	lsr	x4, x15, #22
	ldrb	w2, [x2, #3]
	ldrb	w5, [x3, #3]
	lsr	x7, x16, #24
	and	x4, x4, #0x3e0
	mov	x20, x15
	ldr	x6, [x10, x2, lsl #3]
	cmp	w2, #0
	bfxil	x4, x16, #27, #5
	bfi	x20, x7, #24, #8
	add	x2, x6, x5, lsl #10
	cinc	x6, x12, ne
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	orr	w1, w1, w2, lsl #6
	csinc	w2, wzr, w5, eq
	csinc	w0, w0, wzr, ne
	csel	x15, x20, x15, eq
	strb	w2, [x3, #3]
.LBB19_18:                              //   in Loop: Header=BB19_10 Depth=2
	tst	x17, #0xff00000000
	sturb	w1, [x14, #-1]
	b.eq	.LBB19_27
// %bb.19:                              //   in Loop: Header=BB19_10 Depth=2
	add	x1, x25, x13
	add	x2, x26, x13
	lsr	x5, x15, #30
	ldrb	w1, [x1, #4]
	ldrb	w3, [x2, #4]
	lsr	x6, x16, #32
	and	x5, x5, #0x3e0
	mov	x20, x15
	ldr	x4, [x10, x1, lsl #3]
	cmp	w1, #0
	bfxil	x5, x16, #35, #5
	cinc	x1, x12, ne
	add	w7, w3, #1
	bfi	x20, x6, #32, #8
	add	x4, x4, x3, lsl #10
	ldrb	w1, [x19, x1]
	cmp	w1, w7, uxtb
	ldrb	w1, [x4, x5]
	csinc	w3, wzr, w3, eq
	csinc	w0, w0, wzr, ne
	csel	x15, x20, x15, eq
	strb	w3, [x2, #4]
	tst	x17, #0xff0000000000
	b.eq	.LBB19_21
.LBB19_20:                              //   in Loop: Header=BB19_10 Depth=2
	add	x2, x25, x13
	add	x3, x26, x13
	lsr	x4, x15, #38
	ldrb	w2, [x2, #5]
	ldrb	w5, [x3, #5]
	lsr	x7, x16, #40
	and	x4, x4, #0x3e0
	mov	x20, x15
	ldr	x6, [x10, x2, lsl #3]
	cmp	w2, #0
	bfxil	x4, x16, #43, #5
	bfi	x20, x7, #40, #8
	add	x2, x6, x5, lsl #10
	cinc	x6, x12, ne
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	orr	w1, w1, w2, lsl #2
	csinc	w2, wzr, w5, eq
	csinc	w0, w0, wzr, ne
	csel	x15, x20, x15, eq
	strb	w2, [x3, #5]
.LBB19_21:                              //   in Loop: Header=BB19_10 Depth=2
	tst	x17, #0xff000000000000
	b.eq	.LBB19_23
// %bb.22:                              //   in Loop: Header=BB19_10 Depth=2
	add	x2, x25, x13
	add	x3, x26, x13
	lsr	x4, x15, #46
	ldrb	w2, [x2, #6]
	ldrb	w5, [x3, #6]
	lsr	x7, x16, #48
	and	x4, x4, #0x3e0
	mov	x20, x15
	ldr	x6, [x10, x2, lsl #3]
	cmp	w2, #0
	bfxil	x4, x16, #51, #5
	bfi	x20, x7, #48, #8
	add	x2, x6, x5, lsl #10
	cinc	x6, x12, ne
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	orr	w1, w1, w2, lsl #4
	csinc	w2, wzr, w5, eq
	csinc	w0, w0, wzr, ne
	csel	x15, x20, x15, eq
	strb	w2, [x3, #6]
.LBB19_23:                              //   in Loop: Header=BB19_10 Depth=2
	lsr	x17, x17, #56
	cbnz	x17, .LBB19_25
// %bb.24:                              //   in Loop: Header=BB19_10 Depth=2
	cbnz	w0, .LBB19_7
	b	.LBB19_8
.LBB19_25:                              //   in Loop: Header=BB19_10 Depth=2
	add	x17, x25, x13
	add	x2, x26, x13
	lsr	x3, x15, #54
	ldrb	w17, [x17, #7]
	ldrb	w4, [x2, #7]
	and	x3, x3, #0x3e0
	ldr	x5, [x10, x17, lsl #3]
	cmp	w17, #0
	bfxil	x3, x16, #59, #5
	bfxil	x16, x15, #0, #56
	add	x17, x5, x4, lsl #10
	cinc	x5, x12, ne
	ldrb	w5, [x19, x5]
	ldrb	w17, [x17, x3]
	add	w3, w4, #1
	cmp	w5, w3, uxtb
	orr	w1, w1, w17, lsl #6
	csinc	w17, w0, wzr, ne
	csinc	w0, wzr, w4, eq
	csel	x15, x16, x15, eq
	strb	w0, [x2, #7]
	tbnz	w17, #0, .LBB19_7
	b	.LBB19_8
.LBB19_26:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w1, wzr
	mov	w0, wzr
	tst	x17, #0xff00
	b.ne	.LBB19_13
	b	.LBB19_14
.LBB19_27:                              //   in Loop: Header=BB19_10 Depth=2
	mov	w1, wzr
	tst	x17, #0xff0000000000
	b.ne	.LBB19_20
	b	.LBB19_21
.LBB19_28:
	mul	w8, w24, w22
	sub	w9, w23, w24
	mov	w1, wzr
	mul	w9, w9, w22
	add	x20, x0, w8, sxtw
	sxtw	x2, w9
	mov	x0, x20
	bl	memset
	cmp	w23, w24
	b.gt	.LBB19_2
.LBB19_29:
	mov	w0, wzr
.LBB19_30:
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	str	w0, [x8]
	ldp	x26, x25, [sp, #64]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #128
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end19:
	.size	get_overlay_image, .Lfunc_end19-get_overlay_image
                                        // -- End function
	.p2align	2                               // -- Begin function get_overlay_image_area2
	.type	get_overlay_image_area2,@function
get_overlay_image_area2:                // @get_overlay_image_area2
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #160
	ldr	x11, [x5, #232]
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	ldp	w13, w9, [x5, #80]
	ldr	w12, [x11, #60]
	ldr	w8, [x11, #52]
	stp	x28, x27, [sp, #80]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	add	w10, w9, #7
	cmp	w9, #0
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	csel	w10, w10, w9, lt
	sub	w9, w13, #1
	cmp	w12, w13
	csel	w9, w12, w9, lt
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	cmp	w8, w9
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	b.le	.LBB20_2
.LBB20_1:
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #160
	ldr	x30, [x18, #-8]!
	ret
.LBB20_2:
	ldr	w12, [x11, #56]
	adrp	x13, global_ebc
	asr	w10, w10, #3
	ldr	x13, [x13, :lo12:global_ebc]
	add	w14, w12, #7
	cmp	w12, #0
	sub	w16, w10, #1
	csel	w12, w14, w12, lt
	ldr	w13, [x13, #116]
	ldr	w14, [x11, #48]
	asr	w12, w12, #3
	lsr	w11, w13, #2
	add	w13, w14, #7
	add	w15, w12, #1
	cmp	w15, w10
	str	w11, [sp, #60]                  // 4-byte Folded Spill
	csinc	w12, w16, w12, ge
	cmp	w14, #0
	mul	w16, w11, w8
	csel	w14, w13, w14, lt
	sxtw	x17, w12
	add	x13, x5, #120
	and	w15, w14, #0xfffffff8
	sbfx	x6, x14, #3, #29
	asr	w14, w14, #3
	sxtw	x7, w15
	mul	w15, w8, w10
	add	x16, x0, w16, sxtw
	sbfiz	x19, x14, #3, #32
	cmp	x17, x6
	add	x11, x4, x7
	csel	x17, x17, x6, gt
	add	x3, x7, x3
	stp	x11, x12, [sp, #40]             // 16-byte Folded Spill
	sbfiz	x11, x14, #2, #32
	sub	x17, x17, x6
	mov	w7, #1                          // =0x1
	str	x11, [sp, #32]                  // 8-byte Folded Spill
	add	x11, x1, x19
	str	x11, [sp, #24]                  // 8-byte Folded Spill
	add	x11, x2, x19
	mov	w19, #56                        // =0x38
	str	x11, [sp, #16]                  // 8-byte Folded Spill
	add	x11, x17, #1
	str	x11, [sp, #8]                   // 8-byte Folded Spill
	add	x11, x3, #3
	str	x11, [sp]                       // 8-byte Folded Spill
	b	.LBB20_4
.LBB20_3:                               //   in Loop: Header=BB20_4 Depth=1
	add	w8, w8, #1
	add	w15, w15, w10
	cmp	w8, w9
	b.gt	.LBB20_1
.LBB20_4:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB20_9 Depth 2
	ldr	w11, [sp, #60]                  // 4-byte Folded Reload
	tst	w8, #0x1
	mul	w17, w8, w11
	ldr	x11, [sp, #48]                  // 8-byte Folded Reload
	add	x17, x0, w17, sxtw
	csel	x16, x17, x16, eq
	cmp	w14, w11
	b.gt	.LBB20_3
// %bb.5:                               //   in Loop: Header=BB20_4 Depth=1
	sbfiz	x1, x15, #3, #32
	ldr	x11, [sp, #24]                  // 8-byte Folded Reload
	ldr	w17, [x5, #84]
	mov	x20, xzr
	add	x21, x11, x1
	ldp	x26, x11, [sp, #8]              // 16-byte Folded Reload
	mul	w17, w17, w8
	add	x22, x11, x1
	ldr	x11, [sp, #32]                  // 8-byte Folded Reload
	sxtw	x17, w17
	add	x23, x16, x11
	ldr	x11, [sp, #40]                  // 8-byte Folded Reload
	add	x24, x11, x17
	ldr	x11, [sp]                       // 8-byte Folded Reload
	add	x25, x11, x17
	b	.LBB20_9
.LBB20_6:                               //   in Loop: Header=BB20_9 Depth=2
	str	x27, [x22, x20]
.LBB20_7:                               //   in Loop: Header=BB20_9 Depth=2
	ldr	w11, [x23]
	orr	w11, w11, w29
	str	w11, [x23]
.LBB20_8:                               //   in Loop: Header=BB20_9 Depth=2
	subs	x26, x26, #1
	add	x23, x23, #4
	add	x20, x20, #8
	b.eq	.LBB20_3
.LBB20_9:                               //   Parent Loop BB20_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x28, [x21, x20]
	ldr	x27, [x22, x20]
	eor	x3, x27, x28
	cbz	x3, .LBB20_8
// %bb.10:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x30, x3, #56
	add	x1, x25, x20
	and	x17, x3, #0xff
	str	w7, [x5, #60]
	tbnz	w8, #0, .LBB20_14
// %bb.11:                              //   in Loop: Header=BB20_9 Depth=2
	cbz	x17, .LBB20_17
// %bb.12:                              //   in Loop: Header=BB20_9 Depth=2
	ldurb	w11, [x1, #-3]
	cbz	w11, .LBB20_19
// %bb.13:                              //   in Loop: Header=BB20_9 Depth=2
	mov	w29, wzr
	mov	w17, wzr
	b	.LBB20_20
.LBB20_14:                              //   in Loop: Header=BB20_9 Depth=2
	cbz	x17, .LBB20_18
// %bb.15:                              //   in Loop: Header=BB20_9 Depth=2
	ldurb	w17, [x1, #-3]
	cbz	w17, .LBB20_25
// %bb.16:                              //   in Loop: Header=BB20_9 Depth=2
	mov	w29, wzr
	mov	w17, wzr
	b	.LBB20_26
.LBB20_17:                              //   in Loop: Header=BB20_9 Depth=2
	mov	w29, wzr
	b	.LBB20_20
.LBB20_18:                              //   in Loop: Header=BB20_9 Depth=2
	mov	w29, wzr
	b	.LBB20_26
.LBB20_19:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w11, [x24, x20]
	lsl	w12, w27, #2
	mov	x2, x27
	bfxil	x2, x28, #0, #8
	cmp	w11, #0
	and	x12, x12, #0x3e0
	ldr	x11, [x13, x11, lsl #3]
	cinc	x17, x19, ne
	bfxil	x12, x28, #3, #5
	ldrb	w17, [x5, x17]
	ldrb	w29, [x11, x12]
	cmp	w17, #1
	cset	w11, ne
	cset	w17, eq
	csel	x27, x2, x27, eq
	sturb	w11, [x1, #-3]
.LBB20_20:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff00
	add	x1, x25, x20
	add	x2, x24, x20
	b.eq	.LBB20_22
// %bb.21:                              //   in Loop: Header=BB20_9 Depth=2
	ldurb	w11, [x1, #-2]
	cbz	w11, .LBB20_31
.LBB20_22:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff0000
	b.eq	.LBB20_32
.LBB20_23:                              //   in Loop: Header=BB20_9 Depth=2
	ldurb	w11, [x1, #-1]
	cbnz	w11, .LBB20_32
// %bb.24:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x12, x27, #14
	ldrb	w11, [x2, #2]
	lsr	x4, x28, #16
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #19, #5
	cinc	x2, x19, ne
	ldrb	w2, [x5, x2]
	ldrb	w11, [x11, x12]
	mov	x12, x27
	bfi	x12, x4, #16, #8
	cmp	w2, #1
	orr	w29, w29, w11, lsl #8
	cset	w11, ne
	csinc	w17, w17, wzr, ne
	csel	x27, x12, x27, eq
	sturb	w11, [x1, #-1]
	b	.LBB20_32
.LBB20_25:                              //   in Loop: Header=BB20_9 Depth=2
	lsl	w2, w27, #2
	ldrb	w17, [x24, x20]
	and	x2, x2, #0x3e0
	cmp	w17, #0
	ldr	x17, [x13, x17, lsl #3]
	bfxil	x2, x28, #3, #5
	cinc	x29, x19, ne
	ldrb	w29, [x5, x29]
	ldrb	w17, [x17, x2]
	mov	x2, x27
	bfxil	x2, x28, #0, #8
	cmp	w29, #1
	lsl	w29, w17, #2
	cset	w6, ne
	cset	w17, eq
	csel	x27, x2, x27, eq
	sturb	w6, [x1, #-3]
.LBB20_26:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff00
	add	x1, x25, x20
	add	x2, x24, x20
	b.eq	.LBB20_28
// %bb.27:                              //   in Loop: Header=BB20_9 Depth=2
	ldurb	w6, [x1, #-2]
	cbz	w6, .LBB20_46
.LBB20_28:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff0000
	b.eq	.LBB20_47
.LBB20_29:                              //   in Loop: Header=BB20_9 Depth=2
	ldurb	w11, [x1, #-1]
	cbnz	w11, .LBB20_47
// %bb.30:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x12, x27, #14
	ldrb	w11, [x2, #2]
	lsr	x4, x28, #16
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #19, #5
	cinc	x2, x19, ne
	ldrb	w2, [x5, x2]
	ldrb	w11, [x11, x12]
	mov	x12, x27
	bfi	x12, x4, #16, #8
	cmp	w2, #1
	orr	w29, w29, w11, lsl #10
	cset	w11, ne
	csinc	w17, w17, wzr, ne
	csel	x27, x12, x27, eq
	sturb	w11, [x1, #-1]
	b	.LBB20_47
.LBB20_31:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x12, x27, #6
	ldrb	w11, [x2, #1]
	lsr	x6, x28, #8
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #11, #5
	cinc	x4, x19, ne
	ldrb	w4, [x5, x4]
	ldrb	w11, [x11, x12]
	mov	x12, x27
	bfi	x12, x6, #8, #8
	cmp	w4, #1
	orr	w29, w29, w11, lsl #4
	cset	w11, ne
	csinc	w17, w17, wzr, ne
	csel	x27, x12, x27, eq
	sturb	w11, [x1, #-2]
	tst	x3, #0xff0000
	b.ne	.LBB20_23
.LBB20_32:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff000000
	add	x2, x24, x20
	b.eq	.LBB20_35
// %bb.33:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w11, [x25, x20]
	cbnz	w11, .LBB20_35
// %bb.34:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x12, x27, #22
	ldrb	w11, [x2, #3]
	lsr	x4, x28, #24
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #27, #5
	cinc	x1, x19, ne
	ldrb	w1, [x5, x1]
	ldrb	w11, [x11, x12]
	mov	x12, x27
	bfi	x12, x4, #24, #8
	cmp	w1, #1
	orr	w29, w29, w11, lsl #12
	csinc	w17, w17, wzr, ne
	cset	w11, ne
	csel	x27, x12, x27, eq
	strb	w11, [x25, x20]
.LBB20_35:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff00000000
	add	x1, x25, x20
	b.eq	.LBB20_38
// %bb.36:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w11, [x1, #1]
	cbnz	w11, .LBB20_38
// %bb.37:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x12, x27, #30
	ldrb	w11, [x2, #4]
	lsr	x4, x28, #32
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #35, #5
	cinc	x2, x19, ne
	ldrb	w2, [x5, x2]
	ldrb	w11, [x11, x12]
	mov	x12, x27
	bfi	x12, x4, #32, #8
	cmp	w2, #1
	orr	w29, w29, w11, lsl #16
	cset	w11, ne
	csinc	w17, w17, wzr, ne
	csel	x27, x12, x27, eq
	strb	w11, [x1, #1]
.LBB20_38:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff0000000000
	add	x2, x24, x20
	b.eq	.LBB20_41
// %bb.39:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w11, [x1, #2]
	cbnz	w11, .LBB20_41
// %bb.40:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x12, x27, #38
	ldrb	w11, [x2, #5]
	lsr	x6, x28, #40
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #43, #5
	cinc	x4, x19, ne
	ldrb	w4, [x5, x4]
	ldrb	w11, [x11, x12]
	mov	x12, x27
	bfi	x12, x6, #40, #8
	cmp	w4, #1
	orr	w29, w29, w11, lsl #20
	cset	w11, ne
	csinc	w17, w17, wzr, ne
	csel	x27, x12, x27, eq
	strb	w11, [x1, #2]
.LBB20_41:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff000000000000
	add	x1, x25, x20
	b.eq	.LBB20_43
// %bb.42:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w11, [x1, #3]
	cbz	w11, .LBB20_62
.LBB20_43:                              //   in Loop: Header=BB20_9 Depth=2
	cbz	x30, .LBB20_64
.LBB20_44:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w11, [x1, #4]
	cbnz	w11, .LBB20_64
// %bb.45:                              //   in Loop: Header=BB20_9 Depth=2
	add	x11, x24, x20
	lsr	x12, x27, #54
	ldrb	w11, [x11, #7]
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #59, #5
	cinc	x2, x19, ne
	bfxil	x28, x27, #0, #56
	ldrb	w2, [x5, x2]
	ldrb	w11, [x11, x12]
	cmp	w2, #1
	orr	w29, w29, w11, lsl #28
	b	.LBB20_61
.LBB20_46:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x4, x27, #6
	ldrb	w6, [x2, #1]
	lsr	x12, x28, #8
	and	x4, x4, #0x3e0
	cmp	w6, #0
	ldr	x6, [x13, x6, lsl #3]
	bfxil	x4, x28, #11, #5
	cinc	x11, x19, ne
	ldrb	w11, [x5, x11]
	ldrb	w4, [x6, x4]
	mov	x6, x27
	bfi	x6, x12, #8, #8
	cmp	w11, #1
	orr	w29, w29, w4, lsl #6
	cset	w11, ne
	csinc	w17, w17, wzr, ne
	csel	x27, x6, x27, eq
	sturb	w11, [x1, #-2]
	tst	x3, #0xff0000
	b.ne	.LBB20_29
.LBB20_47:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff000000
	add	x2, x24, x20
	b.eq	.LBB20_50
// %bb.48:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w11, [x25, x20]
	cbnz	w11, .LBB20_50
// %bb.49:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x12, x27, #22
	ldrb	w11, [x2, #3]
	lsr	x4, x28, #24
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #27, #5
	cinc	x1, x19, ne
	ldrb	w1, [x5, x1]
	ldrb	w11, [x11, x12]
	mov	x12, x27
	bfi	x12, x4, #24, #8
	cmp	w1, #1
	orr	w29, w29, w11, lsl #14
	csinc	w17, w17, wzr, ne
	cset	w11, ne
	csel	x27, x12, x27, eq
	strb	w11, [x25, x20]
.LBB20_50:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff00000000
	add	x1, x25, x20
	b.eq	.LBB20_53
// %bb.51:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w11, [x1, #1]
	cbnz	w11, .LBB20_53
// %bb.52:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x12, x27, #30
	ldrb	w11, [x2, #4]
	lsr	x4, x28, #32
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #35, #5
	cinc	x2, x19, ne
	ldrb	w2, [x5, x2]
	ldrb	w11, [x11, x12]
	mov	x12, x27
	bfi	x12, x4, #32, #8
	cmp	w2, #1
	orr	w29, w29, w11, lsl #18
	cset	w11, ne
	csinc	w17, w17, wzr, ne
	csel	x27, x12, x27, eq
	strb	w11, [x1, #1]
.LBB20_53:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff0000000000
	add	x2, x24, x20
	b.eq	.LBB20_56
// %bb.54:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w11, [x1, #2]
	cbnz	w11, .LBB20_56
// %bb.55:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x12, x27, #38
	ldrb	w11, [x2, #5]
	lsr	x6, x28, #40
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #43, #5
	cinc	x4, x19, ne
	ldrb	w4, [x5, x4]
	ldrb	w11, [x11, x12]
	mov	x12, x27
	bfi	x12, x6, #40, #8
	cmp	w4, #1
	orr	w29, w29, w11, lsl #22
	cset	w11, ne
	csinc	w17, w17, wzr, ne
	csel	x27, x12, x27, eq
	strb	w11, [x1, #2]
.LBB20_56:                              //   in Loop: Header=BB20_9 Depth=2
	tst	x3, #0xff000000000000
	add	x1, x25, x20
	b.eq	.LBB20_58
// %bb.57:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w11, [x1, #3]
	cbz	w11, .LBB20_63
.LBB20_58:                              //   in Loop: Header=BB20_9 Depth=2
	cbz	x30, .LBB20_64
.LBB20_59:                              //   in Loop: Header=BB20_9 Depth=2
	ldrb	w11, [x1, #4]
	cbnz	w11, .LBB20_64
// %bb.60:                              //   in Loop: Header=BB20_9 Depth=2
	add	x11, x24, x20
	lsr	x12, x27, #54
	ldrb	w11, [x11, #7]
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #59, #5
	cinc	x2, x19, ne
	bfxil	x28, x27, #0, #56
	ldrb	w11, [x11, x12]
	ldrb	w2, [x5, x2]
	orr	w29, w29, w11, lsl #30
	cmp	w2, #1
.LBB20_61:                              //   in Loop: Header=BB20_9 Depth=2
	cset	w11, ne
	csinc	w12, w17, wzr, ne
	csel	x27, x28, x27, eq
	strb	w11, [x1, #4]
	tbnz	w12, #0, .LBB20_6
	b	.LBB20_7
.LBB20_62:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x12, x27, #46
	ldrb	w11, [x2, #6]
	lsr	x3, x28, #48
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #51, #5
	cinc	x2, x19, ne
	ldrb	w2, [x5, x2]
	ldrb	w11, [x11, x12]
	mov	x12, x27
	bfi	x12, x3, #48, #8
	cmp	w2, #1
	orr	w29, w29, w11, lsl #24
	cset	w11, ne
	csinc	w17, w17, wzr, ne
	csel	x27, x12, x27, eq
	strb	w11, [x1, #3]
	cbnz	x30, .LBB20_44
	b	.LBB20_64
.LBB20_63:                              //   in Loop: Header=BB20_9 Depth=2
	lsr	x12, x27, #46
	ldrb	w11, [x2, #6]
	lsr	x3, x28, #48
	and	x12, x12, #0x3e0
	cmp	w11, #0
	ldr	x11, [x13, x11, lsl #3]
	bfxil	x12, x28, #51, #5
	cinc	x2, x19, ne
	ldrb	w2, [x5, x2]
	ldrb	w11, [x11, x12]
	mov	x12, x27
	bfi	x12, x3, #48, #8
	cmp	w2, #1
	orr	w29, w29, w11, lsl #26
	cset	w11, ne
	csinc	w17, w17, wzr, ne
	csel	x27, x12, x27, eq
	strb	w11, [x1, #3]
	cbnz	x30, .LBB20_59
.LBB20_64:                              //   in Loop: Header=BB20_9 Depth=2
	cbnz	w17, .LBB20_6
	b	.LBB20_7
.Lfunc_end20:
	.size	get_overlay_image_area2, .Lfunc_end20-get_overlay_image_area2
                                        // -- End function
	.p2align	2                               // -- Begin function get_overlay_image_area
	.type	get_overlay_image_area,@function
get_overlay_image_area:                 // @get_overlay_image_area
// %bb.0:
	ldr	x9, [x5, #232]
	ldp	w14, w11, [x5, #80]
	ldp	w10, w8, [x9, #48]
	ldp	w13, w15, [x9, #56]
	add	w9, w10, #7
	cmp	w10, #0
	add	w16, w13, #7
	csel	w12, w9, w10, lt
	cmp	w13, #0
	add	w9, w11, #7
	csel	w10, w16, w13, lt
	cmp	w11, #0
	adrp	x13, global_ebc
	asr	w10, w10, #3
	csel	w9, w9, w11, lt
	ldr	x13, [x13, :lo12:global_ebc]
	asr	w9, w9, #3
	add	w11, w10, #1
	ldr	w16, [x13, #116]
	cmp	w11, w9
	sub	w11, w9, #1
	csinc	w10, w11, w10, ge
	ldr	w17, [x13, #196]
	cmp	w15, w14
	sub	w11, w14, #1
	lsr	w16, w16, #2
	csel	w11, w15, w11, lt
	cbz	w17, .LBB21_2
// %bb.1:
	ldr	w13, [x13, #120]
	mvn	w14, w8
	add	w13, w13, w14
	mul	w13, w13, w16
	neg	w16, w16
	b	.LBB21_3
.LBB21_2:
	mul	w13, w16, w8
	sxtw	x13, w13
.LBB21_3:
	str	x30, [x18], #8
	sub	sp, sp, #112
	cmp	w8, w11
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	b.le	.LBB21_5
.LBB21_4:
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #112
	ldr	x30, [x18, #-8]!
	ret
.LBB21_5:
	asr	w12, w12, #3
	sxtw	x17, w10
	sxtw	x16, w16
	sbfiz	x14, x12, #3, #32
	sxtw	x6, w12
	lsl	w15, w12, #3
	add	x7, x13, w12, sxtw #1
	add	x13, x1, x14
	sxtw	x1, w15
	cmp	x17, x6
	csel	x17, x17, x6, gt
	add	x14, x2, x14
	add	x0, x7, x0
	orr	x2, x1, #0x3
	sub	x1, x17, x6
	add	x15, x5, #120
	add	x17, x0, #1
	add	x0, x4, x2
	add	x1, x1, #1
	add	x2, x3, x2
	mov	w3, #1                          // =0x1
	mov	w4, #56                         // =0x38
	str	x13, [sp, #8]                   // 8-byte Folded Spill
	b	.LBB21_7
.LBB21_6:                               //   in Loop: Header=BB21_7 Depth=1
	add	w8, w8, #1
	add	x17, x17, x16
	cmp	w8, w11
	b.gt	.LBB21_4
.LBB21_7:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB21_12 Depth 2
	cmp	w12, w10
	b.gt	.LBB21_6
// %bb.8:                               //   in Loop: Header=BB21_7 Depth=1
	ldr	w6, [x5, #84]
	mul	w7, w8, w9
	ldr	x13, [sp, #8]                   // 8-byte Folded Reload
	mov	x21, x1
	mov	x22, x17
	mul	w6, w6, w8
	sbfiz	x7, x7, #3, #32
	sxtw	x20, w6
	add	x6, x14, x7
	add	x7, x13, x7
	add	x19, x0, x20
	add	x20, x2, x20
	b	.LBB21_12
.LBB21_9:                               //   in Loop: Header=BB21_12 Depth=2
	str	x23, [x6]
.LBB21_10:                              //   in Loop: Header=BB21_12 Depth=2
	ldrb	w13, [x22]
	orr	w13, w13, w27
	strb	w13, [x22]
.LBB21_11:                              //   in Loop: Header=BB21_12 Depth=2
	add	x6, x6, #8
	add	x7, x7, #8
	subs	x21, x21, #1
	add	x19, x19, #8
	add	x22, x22, #2
	add	x20, x20, #8
	b.eq	.LBB21_6
.LBB21_12:                              //   Parent Loop BB21_7 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x24, [x7]
	ldr	x23, [x6]
	eor	x25, x23, x24
	cbz	x25, .LBB21_11
// %bb.13:                              //   in Loop: Header=BB21_12 Depth=2
	tst	x25, #0xff
	str	w3, [x5, #60]
	b.eq	.LBB21_15
// %bb.14:                              //   in Loop: Header=BB21_12 Depth=2
	ldurb	w26, [x20, #-3]
	cbz	w26, .LBB21_16
.LBB21_15:                              //   in Loop: Header=BB21_12 Depth=2
	mov	w27, wzr
	mov	w26, wzr
	tst	x25, #0xff00
	b.ne	.LBB21_17
	b	.LBB21_18
.LBB21_16:                              //   in Loop: Header=BB21_12 Depth=2
	ldurb	w26, [x19, #-3]
	lsl	w27, w23, #2
	mov	x29, x23
	bfxil	x29, x24, #0, #8
	cmp	w26, #0
	and	x27, x27, #0x3e0
	ldr	x26, [x15, x26, lsl #3]
	cinc	x28, x4, ne
	bfxil	x27, x24, #3, #5
	ldrb	w28, [x5, x28]
	ldrb	w27, [x26, x27]
	cmp	w28, #1
	cset	w28, ne
	cset	w26, eq
	csel	x23, x29, x23, eq
	sturb	w28, [x20, #-3]
	tst	x25, #0xff00
	b.eq	.LBB21_18
.LBB21_17:                              //   in Loop: Header=BB21_12 Depth=2
	ldurb	w28, [x20, #-2]
	cbz	w28, .LBB21_21
.LBB21_18:                              //   in Loop: Header=BB21_12 Depth=2
	tst	x25, #0xff0000
	b.eq	.LBB21_22
.LBB21_19:                              //   in Loop: Header=BB21_12 Depth=2
	ldurb	w13, [x20, #-1]
	cbnz	w13, .LBB21_22
// %bb.20:                              //   in Loop: Header=BB21_12 Depth=2
	lsr	x28, x23, #14
	ldurb	w13, [x19, #-1]
	lsr	x30, x24, #16
	and	x28, x28, #0x3e0
	cmp	w13, #0
	ldr	x13, [x15, x13, lsl #3]
	bfxil	x28, x24, #19, #5
	cinc	x29, x4, ne
	ldrb	w29, [x5, x29]
	ldrb	w13, [x13, x28]
	mov	x28, x23
	bfi	x28, x30, #16, #8
	cmp	w29, #1
	orr	w27, w27, w13, lsl #4
	cset	w13, ne
	csinc	w26, w26, wzr, ne
	csel	x23, x28, x23, eq
	sturb	w13, [x20, #-1]
	b	.LBB21_22
.LBB21_21:                              //   in Loop: Header=BB21_12 Depth=2
	lsr	x29, x23, #6
	ldurb	w28, [x19, #-2]
	lsr	x13, x24, #8
	and	x29, x29, #0x3e0
	cmp	w28, #0
	ldr	x28, [x15, x28, lsl #3]
	bfxil	x29, x24, #11, #5
	cinc	x30, x4, ne
	ldrb	w30, [x5, x30]
	ldrb	w28, [x28, x29]
	mov	x29, x23
	bfi	x29, x13, #8, #8
	cmp	w30, #1
	orr	w27, w27, w28, lsl #2
	cset	w13, ne
	csinc	w26, w26, wzr, ne
	csel	x23, x29, x23, eq
	sturb	w13, [x20, #-2]
	tst	x25, #0xff0000
	b.ne	.LBB21_19
.LBB21_22:                              //   in Loop: Header=BB21_12 Depth=2
	tst	x25, #0xff000000
	b.eq	.LBB21_25
// %bb.23:                              //   in Loop: Header=BB21_12 Depth=2
	ldrb	w13, [x20]
	cbnz	w13, .LBB21_25
// %bb.24:                              //   in Loop: Header=BB21_12 Depth=2
	lsr	x28, x23, #22
	ldrb	w13, [x19]
	lsr	x30, x24, #24
	and	x28, x28, #0x3e0
	cmp	w13, #0
	ldr	x13, [x15, x13, lsl #3]
	bfxil	x28, x24, #27, #5
	cinc	x29, x4, ne
	ldrb	w29, [x5, x29]
	ldrb	w13, [x13, x28]
	mov	x28, x23
	bfi	x28, x30, #24, #8
	cmp	w29, #1
	orr	w27, w27, w13, lsl #6
	cset	w13, ne
	csinc	w26, w26, wzr, ne
	csel	x23, x28, x23, eq
	strb	w13, [x20]
.LBB21_25:                              //   in Loop: Header=BB21_12 Depth=2
	ldurb	w13, [x22, #-1]
	tst	x25, #0xff00000000
	orr	w13, w13, w27
	sturb	w13, [x22, #-1]
	b.eq	.LBB21_27
// %bb.26:                              //   in Loop: Header=BB21_12 Depth=2
	ldrb	w13, [x20, #1]
	cbz	w13, .LBB21_28
.LBB21_27:                              //   in Loop: Header=BB21_12 Depth=2
	mov	w27, wzr
	tst	x25, #0xff0000000000
	b.ne	.LBB21_29
	b	.LBB21_30
.LBB21_28:                              //   in Loop: Header=BB21_12 Depth=2
	ldrb	w13, [x19, #1]
	lsr	x27, x23, #30
	lsr	x29, x24, #32
	mov	x30, x23
	cmp	w13, #0
	and	x27, x27, #0x3e0
	ldr	x13, [x15, x13, lsl #3]
	cinc	x28, x4, ne
	bfxil	x27, x24, #35, #5
	bfi	x30, x29, #32, #8
	ldrb	w28, [x5, x28]
	ldrb	w27, [x13, x27]
	cmp	w28, #1
	cset	w13, ne
	csinc	w26, w26, wzr, ne
	csel	x23, x30, x23, eq
	strb	w13, [x20, #1]
	tst	x25, #0xff0000000000
	b.eq	.LBB21_30
.LBB21_29:                              //   in Loop: Header=BB21_12 Depth=2
	ldrb	w13, [x20, #2]
	cbz	w13, .LBB21_33
.LBB21_30:                              //   in Loop: Header=BB21_12 Depth=2
	tst	x25, #0xff000000000000
	b.eq	.LBB21_34
.LBB21_31:                              //   in Loop: Header=BB21_12 Depth=2
	ldrb	w13, [x20, #3]
	cbnz	w13, .LBB21_34
// %bb.32:                              //   in Loop: Header=BB21_12 Depth=2
	lsr	x28, x23, #46
	ldrb	w13, [x19, #3]
	lsr	x30, x24, #48
	and	x28, x28, #0x3e0
	cmp	w13, #0
	ldr	x13, [x15, x13, lsl #3]
	bfxil	x28, x24, #51, #5
	cinc	x29, x4, ne
	ldrb	w29, [x5, x29]
	ldrb	w13, [x13, x28]
	mov	x28, x23
	bfi	x28, x30, #48, #8
	cmp	w29, #1
	orr	w27, w27, w13, lsl #4
	cset	w13, ne
	csinc	w26, w26, wzr, ne
	csel	x23, x28, x23, eq
	strb	w13, [x20, #3]
	b	.LBB21_34
.LBB21_33:                              //   in Loop: Header=BB21_12 Depth=2
	lsr	x28, x23, #38
	ldrb	w13, [x19, #2]
	lsr	x30, x24, #40
	and	x28, x28, #0x3e0
	cmp	w13, #0
	ldr	x13, [x15, x13, lsl #3]
	bfxil	x28, x24, #43, #5
	cinc	x29, x4, ne
	ldrb	w29, [x5, x29]
	ldrb	w13, [x13, x28]
	mov	x28, x23
	bfi	x28, x30, #40, #8
	cmp	w29, #1
	orr	w27, w27, w13, lsl #2
	cset	w13, ne
	csinc	w26, w26, wzr, ne
	csel	x23, x28, x23, eq
	strb	w13, [x20, #2]
	tst	x25, #0xff000000000000
	b.ne	.LBB21_31
.LBB21_34:                              //   in Loop: Header=BB21_12 Depth=2
	lsr	x13, x25, #56
	cbz	x13, .LBB21_36
// %bb.35:                              //   in Loop: Header=BB21_12 Depth=2
	ldrb	w13, [x20, #4]
	cbz	w13, .LBB21_37
.LBB21_36:                              //   in Loop: Header=BB21_12 Depth=2
	cbnz	w26, .LBB21_9
	b	.LBB21_10
.LBB21_37:                              //   in Loop: Header=BB21_12 Depth=2
	lsr	x25, x23, #54
	ldrb	w13, [x19, #4]
	and	x25, x25, #0x3e0
	cmp	w13, #0
	ldr	x13, [x15, x13, lsl #3]
	bfxil	x25, x24, #59, #5
	cinc	x28, x4, ne
	bfxil	x24, x23, #0, #56
	ldrb	w28, [x5, x28]
	ldrb	w13, [x13, x25]
	cmp	w28, #1
	orr	w27, w27, w13, lsl #6
	cset	w13, ne
	csinc	w25, w26, wzr, ne
	csel	x23, x24, x23, eq
	strb	w13, [x20, #4]
	tbz	w25, #0, .LBB21_10
	b	.LBB21_9
.Lfunc_end21:
	.size	get_overlay_image_area, .Lfunc_end21-get_overlay_image_area
                                        // -- End function
	.p2align	2                               // -- Begin function get_auto_image2
	.type	get_auto_image2,@function
get_auto_image2:                        // @get_auto_image2
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #144
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	add	x12, x4, #60
	ldr	x9, [x8, :lo12:global_ebc]
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	add	x15, x4, #64
	ldp	w25, w8, [x9, #116]
	str	x9, [sp, #24]                   // 8-byte Folded Spill
	stp	x28, x27, [sp, #64]             // 16-byte Folded Spill
	cmp	w8, #0
	lsr	x11, x25, #3
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	cinc	w9, w8, lt
	cmp	w8, #0
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	asr	w9, w9, #1
	cinc	w10, w8, lt
	stur	x11, [x29, #-16]                // 8-byte Folded Spill
	asr	w10, w10, #1
	cmp	w5, #2
	stur	x0, [x29, #-8]                  // 8-byte Folded Spill
	mul	w11, w9, w11
	csel	w13, wzr, wzr, ne
	mov	x19, x4
	mul	w14, w9, w25
	csel	w10, w8, w10, ne
	cmp	w5, #3
	csel	w23, w8, w10, eq
	csel	w27, w9, w13, eq
	sbfiz	x11, x11, #3, #32
	add	x8, x3, x14
	add	x9, x1, x11
	add	x10, x2, x11
	csel	x20, x8, x3, eq
	csel	x8, x15, x12, eq
	csel	x21, x10, x2, eq
	csel	x22, x9, x1, eq
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	mul	w8, w27, w25
	subs	w9, w23, w27
	mul	w9, w9, w25
	mov	w1, wzr
	lsr	w8, w8, #2
	lsr	w2, w9, #2
	add	x0, x0, x8
	bl	memset
	cmp	w23, w27
	mov	w8, wzr
	b.le	.LBB22_15
// %bb.1:
	ldur	x8, [x29, #-16]                 // 8-byte Folded Reload
	str	w23, [sp, #20]                  // 4-byte Folded Spill
	lsl	x24, x8, #3
	mov	w8, wzr
	b	.LBB22_5
.LBB22_2:                               //   in Loop: Header=BB22_5 Depth=1
	add	x22, x22, x23
	add	x21, x21, x23
	add	x20, x20, x23
.LBB22_3:                               //   in Loop: Header=BB22_5 Depth=1
	ldr	w23, [sp, #20]                  // 4-byte Folded Reload
.LBB22_4:                               //   in Loop: Header=BB22_5 Depth=1
	add	w27, w27, #2
	cmp	w27, w23
	b.ge	.LBB22_15
.LBB22_5:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB22_8 Depth 2
                                        //     Child Loop BB22_13 Depth 2
	cmp	w25, #8
	b.lo	.LBB22_4
// %bb.6:                               //   in Loop: Header=BB22_5 Depth=1
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w9, [x9, #116]
	mul	w26, w9, w27
	ldp	x28, x9, [x29, #-16]            // 16-byte Folded Reload
	add	x23, x9, x26, lsr #2
	b	.LBB22_8
.LBB22_7:                               //   in Loop: Header=BB22_8 Depth=2
	add	x21, x21, #8
	subs	x28, x28, #1
	add	x22, x22, #8
	add	x20, x20, #8
	add	x23, x23, #4
	b.eq	.LBB22_10
.LBB22_8:                               //   Parent Loop BB22_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [x22]
	ldr	x10, [x21]
	cmp	x9, x10
	b.eq	.LBB22_7
// %bb.9:                               //   in Loop: Header=BB22_8 Depth=2
	mov	x0, x22
	mov	x1, x21
	mov	x2, x20
	mov	x3, x19
	mov	w4, wzr
	bl	get_one_auto_image2
	mov	w8, #1                          // =0x1
	str	w0, [x23]
	b	.LBB22_7
.LBB22_10:                              //   in Loop: Header=BB22_5 Depth=1
	cmp	w25, #8
	b.lo	.LBB22_3
// %bb.11:                              //   in Loop: Header=BB22_5 Depth=1
	ldur	x9, [x29, #-8]                  // 8-byte Folded Reload
	mov	x23, xzr
	add	x26, x9, x26, lsr #2
	b	.LBB22_13
.LBB22_12:                              //   in Loop: Header=BB22_13 Depth=2
	add	x23, x23, #8
	add	x26, x26, #4
	cmp	x24, x23
	b.eq	.LBB22_2
.LBB22_13:                              //   Parent Loop BB22_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [x22, x23]
	ldr	x10, [x21, x23]
	cmp	x9, x10
	b.eq	.LBB22_12
// %bb.14:                              //   in Loop: Header=BB22_13 Depth=2
	add	x0, x22, x23
	add	x1, x21, x23
	add	x2, x20, x23
	mov	x3, x19
	mov	w4, #2                          // =0x2
	bl	get_one_auto_image2
	ldr	w8, [x26]
	orr	w8, w8, w0
	str	w8, [x26]
	mov	w8, #1                          // =0x1
	b	.LBB22_12
.LBB22_15:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	str	w8, [x9]
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #144
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end22:
	.size	get_auto_image2, .Lfunc_end22-get_auto_image2
                                        // -- End function
	.p2align	2                               // -- Begin function get_auto_image
	.type	get_auto_image,@function
get_auto_image:                         // @get_auto_image
// %bb.0:
	stp	x26, x25, [sp, #-64]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	add	x6, x4, #64
	stp	x24, x23, [sp, #16]             // 16-byte Folded Spill
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	ldp	w9, w12, [x8, #116]
	cmp	w12, #0
	lsr	w10, w9, #3
	cinc	w11, w12, lt
	cmp	w12, #0
	asr	w11, w11, #1
	cinc	w13, w12, lt
	cmp	w5, #2
	asr	w13, w13, #1
	csel	w15, wzr, wzr, ne
	mul	w14, w11, w10
	mul	w16, w11, w9
	csel	w13, w12, w13, ne
	cmp	w5, #3
	csel	w13, w12, w13, eq
	add	x5, x4, #60
	csel	w11, w11, w15, eq
	sbfiz	x17, x14, #3, #32
	add	x12, x3, x16
	add	x15, x2, x17
	csel	x14, x12, x3, eq
	add	x12, x1, x17
	csel	x15, x15, x2, eq
	csel	x16, x12, x1, eq
	csel	x12, x6, x5, eq
	cmp	w11, w13
	b.ge	.LBB23_28
// %bb.1:
	ldrb	w17, [x4, #56]
	ldr	w1, [x8, #196]
	mov	w19, wzr
	add	x0, x0, #1
	b	.LBB23_4
.LBB23_2:                               //   in Loop: Header=BB23_4 Depth=1
	add	x14, x14, x2
	add	x16, x16, x2
	add	x15, x15, x2
.LBB23_3:                               //   in Loop: Header=BB23_4 Depth=1
	add	w11, w11, #1
	cmp	w11, w13
	b.eq	.LBB23_29
.LBB23_4:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB23_10 Depth 2
	cbz	w1, .LBB23_6
// %bb.5:                               //   in Loop: Header=BB23_4 Depth=1
	ldp	w5, w2, [x8, #116]
	mvn	w3, w11
	add	w3, w2, w3
	cmp	w9, #8
	b.lo	.LBB23_3
	b	.LBB23_7
.LBB23_6:                               //   in Loop: Header=BB23_4 Depth=1
	ldr	w3, [x8, #116]
	mov	w5, w11
	cmp	w9, #8
	b.lo	.LBB23_3
.LBB23_7:                               //   in Loop: Header=BB23_4 Depth=1
	mul	w3, w3, w5
	mov	x2, xzr
	mov	w5, w10
	lsr	w3, w3, #2
	add	x3, x0, x3
	b	.LBB23_10
.LBB23_8:                               //   in Loop: Header=BB23_10 Depth=2
	sturh	wzr, [x3, #-1]
.LBB23_9:                               //   in Loop: Header=BB23_10 Depth=2
	subs	w5, w5, #1
	add	x2, x2, #8
	add	x3, x3, #2
	b.eq	.LBB23_2
.LBB23_10:                              //   Parent Loop BB23_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x7, [x16, x2]
	ldr	x6, [x15, x2]
	cmp	x7, x6
	b.eq	.LBB23_8
// %bb.11:                              //   in Loop: Header=BB23_10 Depth=2
	eor	x19, x6, x7
	tst	x19, #0xff
	b.eq	.LBB23_26
// %bb.12:                              //   in Loop: Header=BB23_10 Depth=2
	lsl	w20, w6, #2
	ldrb	w21, [x14, x2]
	ldr	x22, [x4, #120]
	mov	x23, x6
	and	x20, x20, #0x3e0
	add	x22, x22, x21, lsl #10
	add	w24, w21, #1
	bfxil	x20, x7, #3, #5
	bfxil	x23, x7, #0, #8
	cmp	w17, w24, uxtb
	csinc	w21, wzr, w21, eq
	ldrb	w20, [x22, x20]
	csel	x6, x23, x6, eq
	strb	w21, [x14, x2]
	tst	x19, #0xff00
	b.eq	.LBB23_14
.LBB23_13:                              //   in Loop: Header=BB23_10 Depth=2
	add	x21, x14, x2
	lsr	x22, x6, #6
	ldr	x24, [x4, #120]
	ldrb	w23, [x21, #1]
	lsr	x25, x7, #8
	mov	x26, x6
	and	x22, x22, #0x3e0
	add	x24, x24, x23, lsl #10
	bfxil	x22, x7, #11, #5
	bfi	x26, x25, #8, #8
	ldrb	w22, [x24, x22]
	add	w24, w23, #1
	cmp	w17, w24, uxtb
	orr	w20, w20, w22, lsl #2
	csinc	w22, wzr, w23, eq
	csel	x6, x26, x6, eq
	strb	w22, [x21, #1]
.LBB23_14:                              //   in Loop: Header=BB23_10 Depth=2
	tst	x19, #0xff0000
	b.eq	.LBB23_16
// %bb.15:                              //   in Loop: Header=BB23_10 Depth=2
	add	x21, x14, x2
	lsr	x22, x6, #14
	ldr	x24, [x4, #120]
	ldrb	w23, [x21, #2]
	lsr	x25, x7, #16
	mov	x26, x6
	and	x22, x22, #0x3e0
	add	x24, x24, x23, lsl #10
	bfxil	x22, x7, #19, #5
	bfi	x26, x25, #16, #8
	ldrb	w22, [x24, x22]
	add	w24, w23, #1
	cmp	w17, w24, uxtb
	orr	w20, w20, w22, lsl #4
	csinc	w22, wzr, w23, eq
	csel	x6, x26, x6, eq
	strb	w22, [x21, #2]
.LBB23_16:                              //   in Loop: Header=BB23_10 Depth=2
	tst	x19, #0xff000000
	b.eq	.LBB23_18
// %bb.17:                              //   in Loop: Header=BB23_10 Depth=2
	add	x21, x14, x2
	lsr	x22, x6, #22
	ldr	x24, [x4, #120]
	ldrb	w23, [x21, #3]
	lsr	x25, x7, #24
	mov	x26, x6
	and	x22, x22, #0x3e0
	add	x24, x24, x23, lsl #10
	bfxil	x22, x7, #27, #5
	bfi	x26, x25, #24, #8
	ldrb	w22, [x24, x22]
	add	w24, w23, #1
	cmp	w17, w24, uxtb
	orr	w20, w20, w22, lsl #6
	csinc	w22, wzr, w23, eq
	csel	x6, x26, x6, eq
	strb	w22, [x21, #3]
.LBB23_18:                              //   in Loop: Header=BB23_10 Depth=2
	tst	x19, #0xff00000000
	sturb	w20, [x3, #-1]
	b.eq	.LBB23_27
// %bb.19:                              //   in Loop: Header=BB23_10 Depth=2
	add	x21, x14, x2
	lsr	x22, x6, #30
	ldr	x20, [x4, #120]
	ldrb	w23, [x21, #4]
	lsr	x24, x7, #32
	mov	x26, x6
	and	x22, x22, #0x3e0
	add	x20, x20, x23, lsl #10
	bfxil	x22, x7, #35, #5
	add	w25, w23, #1
	bfi	x26, x24, #32, #8
	cmp	w17, w25, uxtb
	ldrb	w20, [x20, x22]
	csinc	w22, wzr, w23, eq
	csel	x6, x26, x6, eq
	strb	w22, [x21, #4]
	tst	x19, #0xff0000000000
	b.eq	.LBB23_21
.LBB23_20:                              //   in Loop: Header=BB23_10 Depth=2
	add	x21, x14, x2
	lsr	x22, x6, #38
	ldr	x24, [x4, #120]
	ldrb	w23, [x21, #5]
	lsr	x25, x7, #40
	mov	x26, x6
	and	x22, x22, #0x3e0
	add	x24, x24, x23, lsl #10
	bfxil	x22, x7, #43, #5
	bfi	x26, x25, #40, #8
	ldrb	w22, [x24, x22]
	add	w24, w23, #1
	cmp	w17, w24, uxtb
	orr	w20, w20, w22, lsl #2
	csinc	w22, wzr, w23, eq
	csel	x6, x26, x6, eq
	strb	w22, [x21, #5]
.LBB23_21:                              //   in Loop: Header=BB23_10 Depth=2
	tst	x19, #0xff000000000000
	b.eq	.LBB23_23
// %bb.22:                              //   in Loop: Header=BB23_10 Depth=2
	add	x21, x14, x2
	lsr	x22, x6, #46
	ldr	x24, [x4, #120]
	ldrb	w23, [x21, #6]
	lsr	x25, x7, #48
	mov	x26, x6
	and	x22, x22, #0x3e0
	add	x24, x24, x23, lsl #10
	bfxil	x22, x7, #51, #5
	bfi	x26, x25, #48, #8
	ldrb	w22, [x24, x22]
	add	w24, w23, #1
	cmp	w17, w24, uxtb
	orr	w20, w20, w22, lsl #4
	csinc	w22, wzr, w23, eq
	csel	x6, x26, x6, eq
	strb	w22, [x21, #6]
.LBB23_23:                              //   in Loop: Header=BB23_10 Depth=2
	lsr	x19, x19, #56
	cbz	x19, .LBB23_25
// %bb.24:                              //   in Loop: Header=BB23_10 Depth=2
	add	x19, x14, x2
	lsr	x21, x6, #54
	ldr	x23, [x4, #120]
	ldrb	w22, [x19, #7]
	and	x21, x21, #0x3e0
	add	x23, x23, x22, lsl #10
	bfxil	x21, x7, #59, #5
	bfxil	x7, x6, #0, #56
	ldrb	w21, [x23, x21]
	add	w23, w22, #1
	cmp	w17, w23, uxtb
	orr	w20, w20, w21, lsl #6
	csinc	w21, wzr, w22, eq
	csel	x6, x7, x6, eq
	strb	w21, [x19, #7]
.LBB23_25:                              //   in Loop: Header=BB23_10 Depth=2
	str	x6, [x15, x2]
	mov	w19, #1                         // =0x1
	strb	w20, [x3]
	b	.LBB23_9
.LBB23_26:                              //   in Loop: Header=BB23_10 Depth=2
	mov	w20, wzr
	tst	x19, #0xff00
	b.ne	.LBB23_13
	b	.LBB23_14
.LBB23_27:                              //   in Loop: Header=BB23_10 Depth=2
	mov	w20, wzr
	tst	x19, #0xff0000000000
	b.ne	.LBB23_20
	b	.LBB23_21
.LBB23_28:
	mov	w19, wzr
.LBB23_29:
	str	w19, [x12]
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             // 16-byte Folded Reload
	ldp	x26, x25, [sp], #64             // 16-byte Folded Reload
	ret
.Lfunc_end23:
	.size	get_auto_image, .Lfunc_end23-get_auto_image
                                        // -- End function
	.p2align	2                               // -- Begin function direct_mode_data_change_part2
	.type	direct_mode_data_change_part2,@function
direct_mode_data_change_part2:          // @direct_mode_data_change_part2
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #160
	adrp	x8, global_ebc
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	ldr	w23, [x3, #72]
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	ldr	x22, [x3, #120]
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	ldp	w24, w9, [x8, #116]
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	mov	x19, x3
	stp	x28, x27, [sp, #80]             // 16-byte Folded Spill
	cmp	w9, #0
	lsr	x10, x24, #3
	lsr	w20, w24, #2
	cinc	w8, w9, lt
	cmp	w9, #0
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	asr	w8, w8, #1
	str	x10, [sp, #32]                  // 8-byte Folded Spill
	cinc	w11, w9, lt
	asr	w11, w11, #1
	cmp	w4, #2
	add	x29, sp, #64
	mul	w10, w8, w10
	csel	w12, wzr, wzr, ne
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	csel	w11, w9, w11, ne
	cmp	w4, #3
	csel	w21, w9, w11, eq
	csel	w25, w8, w12, eq
	sbfiz	x10, x10, #3, #32
	mul	w28, w25, w20
	add	x9, x2, x10
	add	x8, x1, x10
	csel	x26, x9, x2, eq
	ldrb	w9, [x3, #56]
	csel	x27, x8, x1, eq
	subs	w8, w21, w25
	add	x0, x0, w28, sxtw
	mov	w1, wzr
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	mov	x9, #1024                       // =0x400
	mul	w8, w8, w20
	movk	x9, #3080, lsl #16
	movk	x9, #5136, lsl #32
	movk	x9, #7192, lsl #48
	sxtw	x2, w8
	stur	x9, [x29, #-8]
	mov	x9, #1538                       // =0x602
	movk	x9, #3594, lsl #16
	movk	x9, #5650, lsl #32
	movk	x9, #7706, lsl #48
	stur	x9, [x29, #-16]
	bl	memset
	cmp	w21, w25
	stur	w21, [x29, #-20]                // 4-byte Folded Spill
	b.le	.LBB24_15
// %bb.1:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	lsl	w9, w20, #1
	str	x24, [sp, #16]                  // 8-byte Folded Spill
	sub	w8, w8, w23
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	lsl	w8, w8, #10
	add	x21, x22, w8, sxtw
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	lsl	x23, x8, #3
	b	.LBB24_5
.LBB24_2:                               //   in Loop: Header=BB24_5 Depth=1
	add	x27, x27, x20
	add	x26, x26, x20
.LBB24_3:                               //   in Loop: Header=BB24_5 Depth=1
	ldr	w9, [sp, #12]                   // 4-byte Folded Reload
.LBB24_4:                               //   in Loop: Header=BB24_5 Depth=1
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	add	w25, w25, #2
	add	w28, w28, w9
	cmp	w25, w8
	b.ge	.LBB24_15
.LBB24_5:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB24_8 Depth 2
                                        //     Child Loop BB24_13 Depth 2
	cmp	w24, #8
	b.lo	.LBB24_4
// %bb.6:                               //   in Loop: Header=BB24_5 Depth=1
	ldp	x8, x20, [sp, #24]              // 16-byte Folded Reload
	add	x22, x8, w28, sxtw
	mov	x24, x22
	b	.LBB24_8
.LBB24_7:                               //   in Loop: Header=BB24_8 Depth=2
	subs	x20, x20, #1
	add	x24, x24, #4
	b.eq	.LBB24_10
.LBB24_8:                               //   Parent Loop BB24_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x2, [x27], #8
	ldr	x1, [x26], #8
	cmp	x2, x1
	b.eq	.LBB24_7
// %bb.9:                               //   in Loop: Header=BB24_8 Depth=2
	ldr	x8, [x19, #216]
	sub	x3, x29, #8
	mov	x0, x21
	ldr	w4, [x8, #40]
	bl	ebc_get_8pix_wf_part
	str	w0, [x24]
	b	.LBB24_7
.LBB24_10:                              //   in Loop: Header=BB24_5 Depth=1
	ldr	x24, [sp, #16]                  // 8-byte Folded Reload
	cmp	w24, #8
	b.lo	.LBB24_3
// %bb.11:                              //   in Loop: Header=BB24_5 Depth=1
	mov	x20, xzr
	b	.LBB24_13
.LBB24_12:                              //   in Loop: Header=BB24_13 Depth=2
	add	x20, x20, #8
	add	x22, x22, #4
	cmp	x23, x20
	b.eq	.LBB24_2
.LBB24_13:                              //   Parent Loop BB24_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x2, [x27, x20]
	ldr	x1, [x26, x20]
	cmp	x2, x1
	b.eq	.LBB24_12
// %bb.14:                              //   in Loop: Header=BB24_13 Depth=2
	ldr	x8, [x19, #216]
	sub	x3, x29, #16
	mov	x0, x21
	ldr	w4, [x8, #40]
	bl	ebc_get_8pix_wf_part
	ldr	w8, [x22]
	orr	w8, w8, w0
	str	w8, [x22]
	b	.LBB24_12
.LBB24_15:
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #160
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end24:
	.size	direct_mode_data_change_part2, .Lfunc_end24-direct_mode_data_change_part2
                                        // -- End function
	.p2align	2                               // -- Begin function direct_mode_data_change_part
	.type	direct_mode_data_change_part,@function
direct_mode_data_change_part:           // @direct_mode_data_change_part
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #128
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	ldr	w12, [x3, #72]
	ldr	x20, [x8, :lo12:global_ebc]
	stp	x28, x27, [sp, #48]             // 16-byte Folded Spill
	mov	x11, #512                       // =0x200
	movk	x11, #1540, lsl #16
	str	w12, [sp, #12]                  // 4-byte Folded Spill
	mov	x19, x3
	ldp	w15, w8, [x20, #116]
	movk	x11, #2568, lsl #32
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	movk	x11, #3596, lsl #48
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	ldrb	w22, [x3, #56]
	cmp	w8, #0
	lsr	x27, x15, #3
	ldr	x21, [x3, #120]
	cinc	w9, w8, lt
	cmp	w8, #0
	stur	x11, [x29, #-8]
	asr	w9, w9, #1
	cinc	w12, w8, lt
	cmp	w4, #2
	asr	w12, w12, #1
	ldr	w11, [x20, #196]
	csel	w13, wzr, wzr, ne
	mul	w10, w9, w27
	lsr	w28, w15, #2
	stp	x26, x25, [sp, #64]             // 16-byte Folded Spill
	csel	w12, w8, w12, ne
	cmp	w4, #3
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	csel	w25, w8, w12, eq
	csel	w26, w9, w13, eq
	str	x15, [sp, #16]                  // 8-byte Folded Spill
	sbfiz	x10, x10, #3, #32
	add	x14, x2, x10
	add	x10, x1, x10
	csel	x23, x14, x2, eq
	csel	x24, x10, x1, eq
	cbz	w11, .LBB25_2
// %bb.1:
	sub	w9, w25, w26
	sub	w8, w8, w25
	str	x27, [sp]                       // 8-byte Folded Spill
	mul	w9, w9, w28
	mov	x27, x21
	mov	w21, w22
	mul	w8, w8, w28
	mov	x22, x0
	mov	w1, wzr
	sxtw	x2, w9
	add	x0, x0, x8
	bl	memset
	ldr	w8, [x20, #120]
	mvn	w9, w26
	add	w8, w8, w9
	mul	w8, w8, w28
	neg	w28, w28
	add	x20, x22, x8
	mov	w22, w21
	mov	x21, x27
	ldr	x27, [sp]                       // 8-byte Folded Reload
	cmp	w25, w26
	b.gt	.LBB25_3
	b	.LBB25_10
.LBB25_2:
	mul	w8, w26, w28
	sub	w9, w25, w26
	mov	w1, wzr
	mul	w9, w9, w28
	add	x20, x0, w8, sxtw
	sxtw	x2, w9
	mov	x0, x20
	bl	memset
	cmp	w25, w26
	b.le	.LBB25_10
.LBB25_3:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	sxtw	x28, w28
	lsl	x27, x27, #1
	sub	w8, w22, w8
	lsl	w8, w8, #10
	add	x21, x21, w8, sxtw
	b	.LBB25_5
.LBB25_4:                               //   in Loop: Header=BB25_5 Depth=1
	add	w26, w26, #1
	add	x20, x20, x28
	cmp	w26, w25
	b.eq	.LBB25_10
.LBB25_5:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB25_8 Depth 2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	cmp	w8, #8
	b.lo	.LBB25_4
// %bb.6:                               //   in Loop: Header=BB25_5 Depth=1
	mov	x22, xzr
	b	.LBB25_8
.LBB25_7:                               //   in Loop: Header=BB25_8 Depth=2
	add	x22, x22, #2
	cmp	x27, x22
	b.eq	.LBB25_4
.LBB25_8:                               //   Parent Loop BB25_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x2, [x24], #8
	ldr	x1, [x23], #8
	cmp	x2, x1
	b.eq	.LBB25_7
// %bb.9:                               //   in Loop: Header=BB25_8 Depth=2
	ldr	x8, [x19, #216]
	sub	x3, x29, #8
	mov	x0, x21
	ldr	w4, [x8, #40]
	bl	ebc_get_8pix_wf_part
	strh	w0, [x20, x22]
	b	.LBB25_7
.LBB25_10:
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #128
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end25:
	.size	direct_mode_data_change_part, .Lfunc_end25-direct_mode_data_change_part
                                        // -- End function
	.p2align	2                               // -- Begin function is_full_refresh_done
	.type	is_full_refresh_done,@function
is_full_refresh_done:                   // @is_full_refresh_done
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	ldp	w10, w9, [x0, #80]
	ldr	w13, [x0, #668]
	mov	x8, x0
	ldr	x0, [x0, #160]
	mov	x29, sp
	add	w11, w9, #7
	cmp	w9, #0
	add	w12, w9, #15
	csel	w11, w11, w9, lt
	csel	w12, w12, w9, lt
	cmp	w13, #3
	asr	w11, w11, #3
	b.eq	.LBB26_6
// %bb.1:
	cmp	w13, #5
	b.ne	.LBB26_9
// %bb.2:
	cmp	w9, #8
	b.lt	.LBB26_11
// %bb.3:
	ldrb	w8, [x8, #56]
	add	w12, w11, #1
	sub	x11, x0, #8
	sub	x12, x12, #1
	mov	w13, w10
.LBB26_4:                               // =>This Inner Loop Header: Depth=1
	sbfiz	x14, x13, #3, #32
	ldrb	w14, [x11, x14]
	cmp	x14, #255
	ccmp	x14, x8, #0, ne
	b.lo	.LBB26_10
// %bb.5:                               //   in Loop: Header=BB26_4 Depth=1
	subs	x12, x12, #1
	add	w13, w13, w10
	b.ne	.LBB26_4
	b	.LBB26_11
.LBB26_6:
	cmp	w10, #0
	ldrb	w8, [x8, #56]
	cinc	w13, w10, lt
	asr	w13, w13, #1
	mul	w13, w13, w11
	sbfiz	x13, x13, #3, #32
	ldrb	w13, [x0, x13]
	cmp	x13, #255
	ccmp	x13, x8, #0, ne
	b.lo	.LBB26_10
// %bb.7:
	mul	w11, w10, w11
	neg	w12, w12, asr #4
	sbfiz	x12, x12, #3, #32
	add	x11, x0, w11, sxtw #3
	ldrb	w11, [x11, x12]
	cmp	x11, x8
	mov	w8, wzr
	b.lo	.LBB26_12
// %bb.8:
	cmp	x11, #255
	b.ne	.LBB26_11
	b	.LBB26_12
.LBB26_9:
	mul	w11, w10, w11
	ldrb	w8, [x8, #56]
	add	x11, x0, w11, sxtw #3
	ldurb	w11, [x11, #-8]
	cmp	x11, #255
	ccmp	x11, x8, #0, ne
	b.hs	.LBB26_11
.LBB26_10:
	mov	w8, wzr
	b	.LBB26_12
.LBB26_11:
	mul	w8, w10, w9
	mov	w1, wzr
	sxtw	x2, w8
	bl	memset
	mov	w8, #1                          // =0x1
.LBB26_12:
	mov	w0, w8
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end26:
	.size	is_full_refresh_done, .Lfunc_end26-is_full_refresh_done
                                        // -- End function
	.p2align	2                               // -- Begin function direct_mode_data_change_full2
	.type	direct_mode_data_change_full2,@function
direct_mode_data_change_full2:          // @direct_mode_data_change_full2
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #160
	adrp	x8, global_ebc
	ldr	x13, [x3, #160]
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stp	x28, x27, [sp, #80]             // 16-byte Folded Spill
	ldp	w15, w9, [x8, #116]
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	cmp	w9, #0
	lsr	x8, x15, #3
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	cinc	w10, w9, lt
	cmp	w9, #0
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	asr	w10, w10, #1
	cinc	w12, w9, lt
	cmp	w4, #2
	asr	w12, w12, #1
	csel	w14, wzr, wzr, ne
	mul	w11, w10, w8
	csel	w12, w9, w12, ne
	cmp	w4, #3
	csel	w20, w10, w14, eq
	csel	w12, w9, w12, eq
	sbfiz	x11, x11, #3, #32
	add	x9, x2, x11
	add	x10, x1, x11
	add	x11, x13, x11
	csel	x28, x9, x2, eq
	csel	x9, x10, x1, eq
	csel	x27, x11, x13, eq
	cmp	w20, w12
	stur	x9, [x29, #-16]                 // 8-byte Folded Spill
	b.ge	.LBB27_23
// %bb.1:
	lsr	w9, w15, #2
	lsl	x8, x8, #3
	mov	x19, x3
	str	x15, [sp, #24]                  // 8-byte Folded Spill
	mul	w21, w20, w9
	lsl	w9, w9, #1
	stur	x8, [x29, #-8]                  // 8-byte Folded Spill
	stp	w9, w12, [sp, #8]               // 8-byte Folded Spill
	b	.LBB27_4
.LBB27_2:                               //   in Loop: Header=BB27_4 Depth=1
	ldur	x9, [x29, #-16]                 // 8-byte Folded Reload
	add	x8, x27, x22
	add	x10, x28, x22
	add	x27, x8, x23
	ldr	x15, [sp, #24]                  // 8-byte Folded Reload
	ldr	w21, [sp, #4]                   // 4-byte Folded Reload
	add	x9, x9, x22
	ldur	w20, [x29, #-20]                // 4-byte Folded Reload
	add	x28, x10, x23
	add	x8, x9, x23
	ldp	w9, w12, [sp, #8]               // 8-byte Folded Reload
	stur	x8, [x29, #-16]                 // 8-byte Folded Spill
.LBB27_3:                               //   in Loop: Header=BB27_4 Depth=1
	add	w20, w20, #2
	add	w21, w21, w9
	cmp	w20, w12
	b.ge	.LBB27_23
.LBB27_4:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB27_8 Depth 2
                                        //     Child Loop BB27_18 Depth 2
	cmp	w15, #8
	b.lo	.LBB27_3
// %bb.5:                               //   in Loop: Header=BB27_4 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	mov	x22, xzr
	add	x24, x8, w21, sxtw
	mov	x23, x24
	b	.LBB27_8
.LBB27_6:                               //   in Loop: Header=BB27_8 Depth=2
	lsl	w9, w26, #2
	lsr	x10, x26, #6
	ldr	x11, [x19, #120]
	lsr	x12, x26, #14
	lsr	x13, x26, #30
	and	x9, x9, #0x3e0
	and	x10, x10, #0x3e0
	add	x8, x11, x8, lsl #10
	bfxil	x9, x25, #3, #5
	bfxil	x10, x25, #11, #5
	and	x11, x12, #0x3e0
	lsr	x12, x26, #22
	bfxil	x11, x25, #19, #5
	ldrb	w9, [x8, x9]
	ldrb	w10, [x8, x10]
	and	x12, x12, #0x3e0
	orr	w9, w9, w10, lsl #4
	ldrb	w10, [x8, x11]
	bfxil	x12, x25, #27, #5
	and	x11, x13, #0x3e0
	lsr	x13, x26, #38
	orr	w9, w9, w10, lsl #8
	ldrb	w10, [x8, x12]
	bfxil	x11, x25, #35, #5
	and	x12, x13, #0x3e0
	lsr	x13, x26, #46
	orr	w9, w9, w10, lsl #12
	ldrb	w10, [x8, x11]
	bfxil	x12, x25, #43, #5
	and	x11, x13, #0x3e0
	lsr	x13, x26, #54
	orr	w9, w9, w10, lsl #16
	ldrb	w10, [x8, x12]
	bfxil	x11, x25, #51, #5
	and	x12, x13, #0x3e0
	orr	w9, w9, w10, lsl #20
	ldrb	w10, [x8, x11]
	bfxil	x12, x25, #59, #5
	orr	w9, w9, w10, lsl #24
	ldrb	w8, [x8, x12]
	orr	w8, w9, w8, lsl #28
	str	w8, [x23]
	ldr	x8, [x27, x22]
	add	x8, x8, #1
	str	x8, [x27, x22]
.LBB27_7:                               //   in Loop: Header=BB27_8 Depth=2
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	add	x22, x22, #8
	add	x23, x23, #4
	cmp	x8, x22
	b.eq	.LBB27_13
.LBB27_8:                               //   Parent Loop BB27_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-16]                 // 8-byte Folded Reload
	ldr	x26, [x28, x22]
	mov	x0, x19
	mov	w1, w20
	mov	w2, w22
	ldr	x25, [x8, x22]
	bl	is_full_refresh_area
	ldr	x8, [x27, x22]
	tbz	w0, #0, .LBB27_11
// %bb.9:                               //   in Loop: Header=BB27_8 Depth=2
	and	x9, x8, #0xff
	cmp	x9, #255
	b.ne	.LBB27_11
// %bb.10:                              //   in Loop: Header=BB27_8 Depth=2
	mov	x8, xzr
	str	xzr, [x27, x22]
.LBB27_11:                              //   in Loop: Header=BB27_8 Depth=2
	ldrb	w9, [x19, #56]
	and	w8, w8, #0xff
	cmp	w8, w9
	b.lo	.LBB27_6
// %bb.12:                              //   in Loop: Header=BB27_8 Depth=2
	str	wzr, [x23]
	b	.LBB27_7
.LBB27_13:                              //   in Loop: Header=BB27_4 Depth=1
	ldr	x15, [sp, #24]                  // 8-byte Folded Reload
	ldur	x8, [x29, #-16]                 // 8-byte Folded Reload
	add	x25, x27, x22
	add	x9, x28, x22
	cmp	w15, #8
	add	x8, x8, x22
	b.hs	.LBB27_15
// %bb.14:                              //   in Loop: Header=BB27_4 Depth=1
	mov	x28, x9
	stur	x8, [x29, #-16]                 // 8-byte Folded Spill
	mov	x27, x25
	ldp	w9, w12, [sp, #8]               // 8-byte Folded Reload
	b	.LBB27_3
.LBB27_15:                              //   in Loop: Header=BB27_4 Depth=1
	mov	x23, xzr
	stur	w20, [x29, #-20]                // 4-byte Folded Spill
	str	w21, [sp, #4]                   // 4-byte Folded Spill
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	b	.LBB27_18
.LBB27_16:                              //   in Loop: Header=BB27_18 Depth=2
	lsr	x9, x26, #6
	ldr	x10, [x19, #120]
	lsl	w11, w26, #2
	lsr	x12, x26, #22
	and	x9, x9, #0x3e0
	add	x8, x10, x8, lsl #10
	and	x10, x11, #0x3e0
	bfxil	x9, x28, #11, #5
	lsr	x11, x26, #14
	bfxil	x10, x28, #3, #5
	and	x12, x12, #0x3e0
	ldrb	w9, [x8, x9]
	and	x11, x11, #0x3e0
	ldrb	w10, [x8, x10]
	bfxil	x11, x28, #19, #5
	bfxil	x12, x28, #27, #5
	lsl	w9, w9, #6
	ldrb	w11, [x8, x11]
	ldrb	w12, [x8, x12]
	orr	w9, w9, w10, lsl #2
	lsr	x10, x26, #30
	and	x10, x10, #0x3e0
	orr	w9, w9, w11, lsl #10
	lsr	x11, x26, #38
	bfxil	x10, x28, #35, #5
	orr	w9, w9, w12, lsl #14
	lsr	x12, x26, #46
	and	x11, x11, #0x3e0
	ldrb	w10, [x8, x10]
	bfxil	x11, x28, #43, #5
	orr	w9, w9, w10, lsl #18
	and	x10, x12, #0x3e0
	ldrb	w11, [x8, x11]
	bfxil	x10, x28, #51, #5
	lsr	x12, x26, #54
	orr	w9, w9, w11, lsl #22
	ldrb	w10, [x8, x10]
	and	x11, x12, #0x3e0
	bfxil	x11, x28, #59, #5
	orr	w9, w9, w10, lsl #26
	ldr	w10, [x24]
	ldrb	w8, [x8, x11]
	orr	w9, w9, w10
	orr	w8, w9, w8, lsl #30
	str	w8, [x24]
	ldr	x8, [x25, x23]
	add	x8, x8, #1
	str	x8, [x25, x23]
.LBB27_17:                              //   in Loop: Header=BB27_18 Depth=2
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	add	x23, x23, #8
	mov	x28, x21
	mov	x9, x20
	add	x24, x24, #4
	cmp	x8, x23
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	b.eq	.LBB27_2
.LBB27_18:                              //   Parent Loop BB27_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w1, [x29, #-20]                 // 4-byte Folded Reload
	mov	x21, x28
	ldr	x28, [x8, x23]
	ldr	x26, [x9, x23]
	mov	x0, x19
	mov	w2, w23
	mov	x20, x9
	bl	is_full_refresh_area
	ldr	x8, [x25, x23]
	tbz	w0, #0, .LBB27_21
// %bb.19:                              //   in Loop: Header=BB27_18 Depth=2
	and	x9, x8, #0xff
	cmp	x9, #255
	b.ne	.LBB27_21
// %bb.20:                              //   in Loop: Header=BB27_18 Depth=2
	mov	x8, xzr
	str	xzr, [x25, x23]
.LBB27_21:                              //   in Loop: Header=BB27_18 Depth=2
	ldrb	w9, [x19, #56]
	and	w8, w8, #0xff
	cmp	w8, w9
	b.lo	.LBB27_16
// %bb.22:                              //   in Loop: Header=BB27_18 Depth=2
	str	wzr, [x24]
	b	.LBB27_17
.LBB27_23:
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #160
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end27:
	.size	direct_mode_data_change_full2, .Lfunc_end27-direct_mode_data_change_full2
                                        // -- End function
	.p2align	2                               // -- Begin function direct_mode_data_change_full
	.type	direct_mode_data_change_full,@function
direct_mode_data_change_full:           // @direct_mode_data_change_full
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #128
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	mov	x19, x3
	ldr	x9, [x8, :lo12:global_ebc]
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             // 16-byte Folded Spill
	ldp	w3, w10, [x9, #116]
	ldr	w9, [x9, #196]
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stp	x28, x27, [sp, #48]             // 16-byte Folded Spill
	cmp	w10, #0
	lsr	x8, x3, #3
	lsr	w14, w3, #2
	cinc	w11, w10, lt
	cmp	w10, #0
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	asr	w11, w11, #1
	cinc	w12, w10, lt
	cmp	w4, #2
	asr	w12, w12, #1
	csel	w15, wzr, wzr, ne
	mul	w13, w11, w8
	csel	w12, w10, w12, ne
	cmp	w4, #3
	csel	w20, w11, w15, eq
	csel	w12, w10, w12, eq
	sbfiz	x11, x13, #3, #32
	mul	w15, w20, w14
	mvn	w16, w20
	ldr	x13, [x19, #160]
	add	w16, w10, w16
	add	x17, x2, x11
	mul	w16, w16, w14
	csel	x23, x17, x2, eq
	add	x17, x1, x11
	add	x11, x13, x11
	sxtw	x15, w15
	csel	x24, x17, x1, eq
	csel	x26, x11, x13, eq
	cmp	w9, #0
	csel	x9, x15, x16, eq
	cneg	w10, w14, ne
	cmp	w20, w12
	b.ge	.LBB28_13
// %bb.1:
	sxtw	x10, w10
	lsl	x28, x8, #3
	add	x22, x0, x9
	str	x3, [sp, #16]                   // 8-byte Folded Spill
	str	w12, [sp, #12]                  // 4-byte Folded Spill
	str	x10, [sp]                       // 8-byte Folded Spill
	b	.LBB28_4
.LBB28_2:                               //   in Loop: Header=BB28_4 Depth=1
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	ldr	w12, [sp, #12]                  // 4-byte Folded Reload
	add	x26, x26, x21
	ldr	x10, [sp]                       // 8-byte Folded Reload
	ldur	x22, [x29, #-8]                 // 8-byte Folded Reload
	add	x24, x24, x21
	add	x23, x23, x21
.LBB28_3:                               //   in Loop: Header=BB28_4 Depth=1
	add	w20, w20, #1
	add	x22, x22, x10
	cmp	w20, w12
	b.eq	.LBB28_13
.LBB28_4:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB28_8 Depth 2
	cmp	w3, #8
	b.lo	.LBB28_3
// %bb.5:                               //   in Loop: Header=BB28_4 Depth=1
	mov	x21, xzr
	stur	x22, [x29, #-8]                 // 8-byte Folded Spill
	b	.LBB28_8
.LBB28_6:                               //   in Loop: Header=BB28_8 Depth=2
	lsl	w9, w27, #2
	lsr	x10, x27, #6
	ldr	x11, [x19, #120]
	lsr	x12, x27, #14
	lsr	x13, x27, #30
	and	x9, x9, #0x3e0
	and	x10, x10, #0x3e0
	add	x8, x11, x8, lsl #10
	bfxil	x9, x25, #3, #5
	bfxil	x10, x25, #11, #5
	and	x11, x12, #0x3e0
	lsr	x12, x27, #22
	bfxil	x11, x25, #19, #5
	ldrb	w9, [x8, x9]
	ldrb	w10, [x8, x10]
	and	x12, x12, #0x3e0
	orr	w9, w9, w10, lsl #2
	ldrb	w10, [x8, x11]
	bfxil	x12, x25, #27, #5
	and	x11, x13, #0x3e0
	lsr	x13, x27, #38
	orr	w9, w9, w10, lsl #4
	ldrb	w10, [x8, x12]
	bfxil	x11, x25, #35, #5
	and	x12, x13, #0x3e0
	lsr	x13, x27, #46
	orr	w9, w9, w10, lsl #6
	ldrb	w10, [x8, x11]
	bfxil	x12, x25, #43, #5
	and	x11, x13, #0x3e0
	lsr	x13, x27, #54
	orr	w9, w9, w10, lsl #8
	ldrb	w10, [x8, x12]
	bfxil	x11, x25, #51, #5
	and	x12, x13, #0x3e0
	orr	w9, w9, w10, lsl #10
	ldrb	w10, [x8, x11]
	bfxil	x12, x25, #59, #5
	orr	w9, w9, w10, lsl #12
	ldrb	w8, [x8, x12]
	orr	w8, w9, w8, lsl #14
	strh	w8, [x22]
	ldr	x8, [x26, x21]
	add	x8, x8, #1
	str	x8, [x26, x21]
.LBB28_7:                               //   in Loop: Header=BB28_8 Depth=2
	add	x21, x21, #8
	add	x22, x22, #2
	cmp	x28, x21
	b.eq	.LBB28_2
.LBB28_8:                               //   Parent Loop BB28_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x25, [x24, x21]
	ldr	x27, [x23, x21]
	mov	x0, x19
	mov	w1, w20
	mov	w2, w21
	bl	is_full_refresh_area
	ldr	x8, [x26, x21]
	tbz	w0, #0, .LBB28_11
// %bb.9:                               //   in Loop: Header=BB28_8 Depth=2
	and	x9, x8, #0xff
	cmp	x9, #255
	b.ne	.LBB28_11
// %bb.10:                              //   in Loop: Header=BB28_8 Depth=2
	mov	x8, xzr
	str	xzr, [x26, x21]
.LBB28_11:                              //   in Loop: Header=BB28_8 Depth=2
	ldrb	w9, [x19, #56]
	and	w8, w8, #0xff
	cmp	w8, w9
	b.lo	.LBB28_6
// %bb.12:                              //   in Loop: Header=BB28_8 Depth=2
	strh	wzr, [x22]
	b	.LBB28_7
.LBB28_13:
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #128
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end28:
	.size	direct_mode_data_change_full, .Lfunc_end28-direct_mode_data_change_full
                                        // -- End function
	.p2align	2                               // -- Begin function direct_mode_data_change2
	.type	direct_mode_data_change2,@function
direct_mode_data_change2:               // @direct_mode_data_change2
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #144
	adrp	x8, global_ebc
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	mov	x13, #1024                      // =0x400
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x14, #1538                      // =0x602
	movk	x13, #3080, lsl #16
	movk	x14, #3594, lsl #16
	movk	x13, #5136, lsl #32
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	ldp	w24, w11, [x8, #116]
	movk	x14, #5650, lsl #32
	add	x29, sp, #48
	movk	x13, #7192, lsl #48
	movk	x14, #7706, lsl #48
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	ldr	w10, [x3, #72]
	cmp	w11, #0
	lsr	x9, x24, #3
	stp	x14, x13, [x29, #-16]
	cinc	w8, w11, lt
	cmp	w11, #0
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	asr	w12, w8, #1
	cinc	w15, w11, lt
	cmp	w4, #2
	asr	w15, w15, #1
	csel	w13, wzr, wzr, ne
	stp	x0, x9, [sp, #16]               // 16-byte Folded Spill
	mul	w8, w12, w9
	ldrb	w9, [x3, #56]
	stp	x28, x27, [sp, #64]             // 16-byte Folded Spill
	csel	w15, w11, w15, ne
	cmp	w4, #3
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	csel	w23, w12, w13, eq
	csel	w21, w11, w15, eq
	sbfiz	x16, x8, #3, #32
	ldr	x8, [x3, #120]
	add	x17, x1, x16
	add	x16, x2, x16
	csel	x25, x16, x2, eq
	csel	x26, x17, x1, eq
	cmp	w23, w21
	b.ge	.LBB29_11
// %bb.1:
	sub	w9, w9, w10
	lsr	w10, w24, #2
	str	x24, [sp, #8]                   // 8-byte Folded Spill
	lsl	w9, w9, #10
	mul	w27, w23, w10
	add	x20, x8, w9, sxtw
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	lsl	w9, w10, #1
	lsl	x19, x8, #3
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB29_4
.LBB29_2:                               //   in Loop: Header=BB29_4 Depth=1
	ldr	w9, [sp, #4]                    // 4-byte Folded Reload
.LBB29_3:                               //   in Loop: Header=BB29_4 Depth=1
	add	w23, w23, #2
	add	w27, w27, w9
	cmp	w23, w21
	b.ge	.LBB29_11
.LBB29_4:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB29_6 Depth 2
                                        //     Child Loop BB29_9 Depth 2
	cmp	w24, #8
	b.lo	.LBB29_3
// %bb.5:                               //   in Loop: Header=BB29_4 Depth=1
	ldp	x8, x24, [sp, #16]              // 16-byte Folded Reload
	add	x28, x8, w27, sxtw
	mov	x22, x28
.LBB29_6:                               //   Parent Loop BB29_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x2, [x26], #8
	sub	x3, x29, #8
	ldr	x1, [x25], #8
	mov	x0, x20
	bl	ebc_get_8pix_wf_full
	subs	x24, x24, #1
	str	w0, [x22], #4
	b.ne	.LBB29_6
// %bb.7:                               //   in Loop: Header=BB29_4 Depth=1
	ldr	x24, [sp, #8]                   // 8-byte Folded Reload
	cmp	w24, #8
	b.lo	.LBB29_2
// %bb.8:                               //   in Loop: Header=BB29_4 Depth=1
	mov	x22, xzr
.LBB29_9:                               //   Parent Loop BB29_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x2, [x26, x22]
	ldr	x1, [x25, x22]
	sub	x3, x29, #16
	mov	x0, x20
	bl	ebc_get_8pix_wf_full
	ldr	w8, [x28]
	add	x22, x22, #8
	cmp	x19, x22
	orr	w8, w8, w0
	str	w8, [x28], #4
	b.ne	.LBB29_9
// %bb.10:                              //   in Loop: Header=BB29_4 Depth=1
	add	x26, x26, x22
	add	x25, x25, x22
	b	.LBB29_2
.LBB29_11:
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #144
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end29:
	.size	direct_mode_data_change2, .Lfunc_end29-direct_mode_data_change2
                                        // -- End function
	.p2align	2                               // -- Begin function get_one_auto_image2
	.type	get_one_auto_image2,@function
get_one_auto_image2:                    // @get_one_auto_image2
// %bb.0:
	ldr	x8, [x1]
	ldr	x9, [x0]
	ldrb	w10, [x3, #56]
	eor	x11, x8, x9
	tst	x11, #0xff
	b.eq	.LBB30_16
// %bb.1:
	lsl	w12, w8, #2
	ldrb	w13, [x2]
	ldr	x14, [x3, #120]
	mov	x15, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	bfxil	x15, x9, #0, #8
	bfxil	x12, x9, #3, #5
	ldrb	w12, [x14, x12]
	add	w14, w13, #1
	cmp	w10, w14, uxtb
	lsl	w0, w12, w4
	csinc	w12, wzr, w13, eq
	csel	x8, x15, x8, eq
	strb	w12, [x2]
	tst	x11, #0xff00
	b.eq	.LBB30_3
.LBB30_2:
	lsr	x12, x8, #6
	ldrb	w13, [x2, #1]
	ldr	x14, [x3, #120]
	add	w15, w4, #4
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	add	w16, w13, #1
	bfxil	x12, x9, #11, #5
	cmp	w10, w16, uxtb
	csinc	w13, wzr, w13, eq
	ldrb	w12, [x14, x12]
	lsr	x14, x9, #8
	strb	w13, [x2, #1]
	lsl	w12, w12, w15
	bfi	x17, x14, #8, #8
	orr	w0, w12, w0
	csel	x8, x17, x8, eq
.LBB30_3:
	tst	x11, #0xff0000
	b.eq	.LBB30_5
// %bb.4:
	lsr	x12, x8, #14
	ldrb	w13, [x2, #2]
	ldr	x14, [x3, #120]
	add	w15, w4, #8
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	add	w16, w13, #1
	bfxil	x12, x9, #19, #5
	cmp	w10, w16, uxtb
	csinc	w13, wzr, w13, eq
	ldrb	w12, [x14, x12]
	lsr	x14, x9, #16
	strb	w13, [x2, #2]
	lsl	w12, w12, w15
	bfi	x17, x14, #16, #8
	orr	w0, w12, w0
	csel	x8, x17, x8, eq
.LBB30_5:
	tst	x11, #0xff000000
	b.eq	.LBB30_7
// %bb.6:
	lsr	x12, x8, #22
	ldrb	w13, [x2, #3]
	ldr	x14, [x3, #120]
	add	w15, w4, #12
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	add	w16, w13, #1
	bfxil	x12, x9, #27, #5
	cmp	w10, w16, uxtb
	csinc	w13, wzr, w13, eq
	ldrb	w12, [x14, x12]
	lsr	x14, x9, #24
	strb	w13, [x2, #3]
	lsl	w12, w12, w15
	bfi	x17, x14, #24, #8
	orr	w0, w12, w0
	csel	x8, x17, x8, eq
.LBB30_7:
	tst	x11, #0xff00000000
	b.eq	.LBB30_9
// %bb.8:
	lsr	x12, x8, #30
	ldrb	w13, [x2, #4]
	ldr	x14, [x3, #120]
	add	w15, w4, #16
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	add	w16, w13, #1
	bfxil	x12, x9, #35, #5
	cmp	w10, w16, uxtb
	csinc	w13, wzr, w13, eq
	ldrb	w12, [x14, x12]
	lsr	x14, x9, #32
	strb	w13, [x2, #4]
	lsl	w12, w12, w15
	bfi	x17, x14, #32, #8
	orr	w0, w12, w0
	csel	x8, x17, x8, eq
.LBB30_9:
	tst	x11, #0xff0000000000
	b.eq	.LBB30_11
// %bb.10:
	lsr	x12, x8, #38
	ldrb	w13, [x2, #5]
	ldr	x14, [x3, #120]
	add	w15, w4, #20
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	add	w16, w13, #1
	bfxil	x12, x9, #43, #5
	cmp	w10, w16, uxtb
	csinc	w13, wzr, w13, eq
	ldrb	w12, [x14, x12]
	lsr	x14, x9, #40
	strb	w13, [x2, #5]
	lsl	w12, w12, w15
	bfi	x17, x14, #40, #8
	orr	w0, w12, w0
	csel	x8, x17, x8, eq
.LBB30_11:
	tst	x11, #0xff000000000000
	b.eq	.LBB30_13
// %bb.12:
	lsr	x12, x8, #46
	ldrb	w13, [x2, #6]
	ldr	x14, [x3, #120]
	add	w15, w4, #24
	mov	x17, x8
	and	x12, x12, #0x3e0
	add	x14, x14, x13, lsl #10
	add	w16, w13, #1
	bfxil	x12, x9, #51, #5
	cmp	w10, w16, uxtb
	csinc	w13, wzr, w13, eq
	ldrb	w12, [x14, x12]
	lsr	x14, x9, #48
	strb	w13, [x2, #6]
	lsl	w12, w12, w15
	bfi	x17, x14, #48, #8
	orr	w0, w12, w0
	csel	x8, x17, x8, eq
.LBB30_13:
	lsr	x11, x11, #56
	cbz	x11, .LBB30_15
// %bb.14:
	lsr	x11, x8, #54
	ldrb	w12, [x2, #7]
	ldr	x13, [x3, #120]
	and	x11, x11, #0x3e0
	add	x13, x13, x12, lsl #10
	add	w14, w12, #1
	bfxil	x11, x9, #59, #5
	bfxil	x9, x8, #0, #56
	cmp	w10, w14, uxtb
	csinc	w10, wzr, w12, eq
	ldrb	w11, [x13, x11]
	add	w13, w4, #28
	csel	x8, x9, x8, eq
	strb	w10, [x2, #7]
	lsl	w11, w11, w13
	orr	w0, w11, w0
.LBB30_15:
	str	x8, [x1]
	ret
.LBB30_16:
	mov	w0, wzr
	tst	x11, #0xff00
	b.ne	.LBB30_2
	b	.LBB30_3
.Lfunc_end30:
	.size	get_one_auto_image2, .Lfunc_end30-get_one_auto_image2
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_get_8pix_wf_part
	.type	ebc_get_8pix_wf_part,@function
ebc_get_8pix_wf_part:                   // @ebc_get_8pix_wf_part
// %bb.0:
	sub	w8, w4, #2
	and	x9, x1, #0xf8f8f8f8f8f8f8f8
	cmp	w8, #10
	csel	x9, x9, x1, lo
	eor	x10, x9, x2
	cbz	x10, .LBB31_15
// %bb.1:
	tst	x10, #0xff
	b.eq	.LBB31_16
// %bb.2:
	ldrb	w8, [x3]
	mov	w11, #3                         // =0x3
	lsl	w8, w11, w8
	tst	x10, #0xff00
	b.eq	.LBB31_4
.LBB31_3:
	ldrb	w11, [x3, #1]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB31_4:
	tst	x10, #0xff0000
	b.eq	.LBB31_6
// %bb.5:
	ldrb	w11, [x3, #2]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB31_6:
	tst	x10, #0xff000000
	b.eq	.LBB31_8
// %bb.7:
	ldrb	w11, [x3, #3]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB31_8:
	tst	x10, #0xff00000000
	b.eq	.LBB31_10
// %bb.9:
	ldrb	w11, [x3, #4]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB31_10:
	tst	x10, #0xff0000000000
	b.eq	.LBB31_12
// %bb.11:
	ldrb	w11, [x3, #5]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB31_12:
	tst	x10, #0xff000000000000
	b.eq	.LBB31_14
// %bb.13:
	ldrb	w11, [x3, #6]
	mov	w12, #3                         // =0x3
	lsl	w11, w12, w11
	orr	w8, w11, w8
.LBB31_14:
	lsl	w11, w9, #2
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
.LBB31_15:
	mov	w0, wzr
	ret
.LBB31_16:
	mov	w8, wzr
	tst	x10, #0xff00
	b.ne	.LBB31_3
	b	.LBB31_4
.Lfunc_end31:
	.size	ebc_get_8pix_wf_part, .Lfunc_end31-ebc_get_8pix_wf_part
                                        // -- End function
	.p2align	2                               // -- Begin function is_full_refresh_area
	.type	is_full_refresh_area,@function
is_full_refresh_area:                   // @is_full_refresh_area
// %bb.0:
	ldp	w10, w11, [x0, #80]
	ldr	w14, [x0, #668]
	cmp	w10, #0
	cinc	w8, w10, lt
	cmp	w11, #0
	cinc	w9, w11, lt
	sub	w8, w1, w8, asr #1
	sub	w9, w2, w9, asr #1
	cmp	w8, #0
	cneg	w12, w8, mi
	cmp	w9, #0
	cneg	w13, w9, mi
	cmp	w14, #2
	b.le	.LBB32_6
// %bb.1:
	cmp	w14, #3
	b.eq	.LBB32_9
// %bb.2:
	cmp	w14, #4
	b.eq	.LBB32_10
// %bb.3:
	cmp	w14, #5
	b.ne	.LBB32_12
// %bb.4:
	ldr	w10, [x0, #676]
	ldr	w11, [x0, #664]
	add	w13, w9, #7
	sub	w10, w10, w11
	add	w12, w10, #7
	cmp	w10, #0
	csel	w10, w12, w10, lt
	add	w12, w11, #7
	cmp	w11, #0
	csel	w12, w12, w11, lt
	add	w11, w8, #7
	cmp	w8, #0
	csel	w11, w11, w8, lt
	cmp	w9, #0
	csel	w9, w13, w9, lt
	asr	w11, w11, #3
	cmp	w8, #8
	asr	w9, w9, #3
	b.lt	.LBB32_13
// %bb.5:
	mov	w8, #10000                      // =0x2710
	mul	w8, w9, w8
	sdiv	w8, w8, w11
	b	.LBB32_15
.LBB32_6:
	cmp	w14, #1
	b.eq	.LBB32_11
// %bb.7:
	cmp	w14, #2
	b.ne	.LBB32_12
// %bb.8:
	ldr	w8, [x0, #676]
	mul	w9, w8, w10
	add	w10, w13, w12
	sdiv	w9, w9, w11
	cmp	w10, w9
	ccmp	w10, w8, #0, le
	cset	w0, le
	ret
.LBB32_9:
	ldr	w8, [x0, #676]
	mul	w9, w8, w10
	sdiv	w9, w9, w11
	cmp	w12, w9
	ccmp	w13, w8, #0, le
	cset	w0, le
	ret
.LBB32_10:
	ldr	w8, [x0, #676]
	cmp	w12, w8
	ccmp	w13, w8, #4, gt
	cset	w0, le
	ret
.LBB32_11:
	ldr	w10, [x0, #676]
	mul	w8, w8, w8
	madd	w8, w9, w9, w8
	mul	w10, w10, w10
	cmp	w8, w10
	cset	w0, le
	ret
.LBB32_12:
	ldr	w8, [x0, #676]
	cmp	w8, w2
	cset	w0, gt
	ret
.LBB32_13:
	cmn	w8, #8
	b.gt	.LBB32_16
// %bb.14:
	mov	w8, #10000                      // =0x2710
	mov	w13, #31416                     // =0x7ab8
	mul	w8, w9, w8
	sdiv	w8, w8, w11
	add	w8, w8, w13
.LBB32_15:
	asr	w12, w12, #3
	asr	w10, w10, #3
	mul	w11, w11, w11
	madd	w9, w9, w9, w11
	mul	w8, w8, w12
	mov	w12, #35757                     // =0x8bad
	movk	w12, #26843, lsl #16
	smull	x8, w8, w12
	lsr	x12, x8, #63
	asr	x8, x8, #43
	add	w8, w8, w12
	add	w8, w8, w10
	mul	w8, w8, w8
	cmp	w9, w8
	cset	w0, le
	ret
.LBB32_16:
	mov	w0, #1                          // =0x1
	ret
.Lfunc_end32:
	.size	is_full_refresh_area, .Lfunc_end32-is_full_refresh_area
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_get_8pix_wf_full
	.type	ebc_get_8pix_wf_full,@function
ebc_get_8pix_wf_full:                   // @ebc_get_8pix_wf_full
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #160
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	lsr	x7, x1, #8
	lsr	x5, x1, #16
	stp	x28, x27, [sp, #80]             // 16-byte Folded Spill
	lsr	x13, x1, #24
	lsr	x15, x1, #32
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	lsr	x29, x1, #40
	lsr	x27, x1, #48
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	lsr	x6, x2, #8
	lsr	x4, x2, #16
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	lsr	x19, x1, #56
	lsr	x17, x2, #24
	lsr	x25, x2, #32
	lsr	x22, x2, #40
	lsr	x20, x2, #48
	lsr	x21, x2, #56
	tst	x2, #0x404040404040404
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	b.eq	.LBB33_5
// %bb.1:
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x19, x21
	and	x21, x1, #0xff000000000000
	str	x22, [sp, #32]                  // 8-byte Folded Spill
	mov	x22, #67553994410557440         // =0xf0000000000000
	mov	x16, x25
	mov	w25, #244                       // =0xf4
	mov	w26, #224                       // =0xe0
	cmp	x21, x22
	csel	x8, x26, x25, eq
	and	x20, x2, #0xff000000000000
	cmp	x21, x22
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	mov	x8, #68679894317400064          // =0xf4000000000000
	and	x23, x1, #0xff0000000000
	mov	x24, #263882790666240           // =0xf00000000000
	ccmp	x20, x8, #0, eq
	and	x22, x2, #0xff0000000000
	csel	x27, x26, x27, eq
	cmp	x23, x24
	mov	x8, #268280837177344            // =0xf40000000000
	str	x27, [sp, #40]                  // 8-byte Folded Spill
	csel	x23, x26, x25, eq
	ccmp	x22, x8, #0, eq
	and	x27, x1, #0xff00000000
	mov	x28, #1030792151040             // =0xf000000000
	csel	x29, x26, x29, eq
	cmp	x27, x28
	and	x27, x2, #0xff00000000
	mov	x28, #1047972020224             // =0xf400000000
	str	x29, [sp, #24]                  // 8-byte Folded Spill
	csel	x29, x26, x25, eq
	ccmp	x27, x28, #0, eq
	and	x30, x1, #0xff000000
	mov	w21, #-268435456                // =0xf0000000
	csel	x15, x26, x15, eq
	cmp	x30, x21
	and	x21, x2, #0xff000000
	mov	w30, #-201326592                // =0xf4000000
	csel	x8, x26, x25, eq
	ccmp	x21, x30, #0, eq
	and	x10, x1, #0xff0000
	csel	x24, x26, x13, eq
	cmp	x10, #3840, lsl #12             // =15728640
	and	x10, x2, #0xff0000
	mov	w9, #15990784                   // =0xf40000
	csel	x11, x26, x25, eq
	mov	w12, #62464                     // =0xf400
	ccmp	x10, x9, #0, eq
	and	x9, x1, #0xff00
	and	x14, x1, #0xff
	csel	x5, x26, x5, eq
	cmp	x9, #15, lsl #12                // =61440
	and	x9, x2, #0xff00
	csel	x13, x26, x25, eq
	ccmp	x9, x12, #0, eq
	str	x15, [sp, #16]                  // 8-byte Folded Spill
	csel	x7, x26, x7, eq
	cmp	x14, #240
	and	x14, x2, #0xff
	csel	x15, x26, x25, eq
	ccmp	x14, x25, #0, eq
	csel	x1, x26, x1, eq
	cmp	x14, #244
	csel	x2, x15, x2, eq
	cmp	x9, x12
	csel	x6, x13, x6, eq
	cmp	x10, #3904, lsl #12             // =15990784
	csel	x4, x11, x4, eq
	cmp	x21, x30
	csel	x17, x8, x17, eq
	cmp	x27, x28
	mov	x8, #268280837177344            // =0xf40000000000
	csel	x25, x29, x16, eq
	cmp	x22, x8
	ldr	x22, [sp, #32]                  // 8-byte Folded Reload
	mov	x8, #68679894317400064          // =0xf4000000000000
	csel	x22, x23, x22, eq
	cmp	x20, x8
	ldr	x20, [sp, #48]                  // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	csel	x20, x8, x20, eq
	cmp	x19, #244
	b.ne	.LBB33_3
// %bb.2:
	ldr	x19, [sp, #56]                  // 8-byte Folded Reload
	mov	w8, #224                        // =0xe0
	mov	w9, #244                        // =0xf4
	cmp	x19, #240
	csel	x19, x8, x19, eq
	csel	x21, x8, x9, eq
	b	.LBB33_4
.LBB33_3:
	mov	x21, x19
	ldr	x19, [sp, #56]                  // 8-byte Folded Reload
.LBB33_4:
	ldp	x15, x29, [sp, #16]             // 16-byte Folded Reload
	mov	x13, x24
	ldr	x27, [sp, #40]                  // 8-byte Folded Reload
.LBB33_5:
	lsl	w9, w7, #2
	lsl	w10, w5, #2
	lsl	w15, w15, #2
	lsl	w8, w1, #2
	ldrb	w12, [x3, #1]
	lsl	w13, w13, #2
	and	x9, x9, #0x3e0
	and	x10, x10, #0x3e0
	and	x15, x15, #0x3e0
	bfxil	x9, x6, #3, #5
	bfxil	x10, x4, #3, #5
	and	x8, x8, #0x3e0
	ldrb	w14, [x3, #2]
	lsl	w16, w29, #2
	bfxil	x15, x25, #3, #5
	ldrb	w9, [x0, x9]
	ldrb	w10, [x0, x10]
	bfxil	x8, x2, #3, #5
	and	x13, x13, #0x3e0
	ldrb	w11, [x3]
	ldrb	w1, [x3, #4]
	lsl	w9, w9, w12
	lsl	w12, w27, #2
	lsl	w10, w10, w14
	ldrb	w14, [x0, x15]
	and	x15, x16, #0x3e0
	ldrb	w8, [x0, x8]
	bfxil	x13, x17, #3, #5
	bfxil	x15, x22, #3, #5
	and	x12, x12, #0x3e0
	mov	w16, w19
	bfxil	x12, x20, #3, #5
	lsr	x17, x21, #3
	lsr	x16, x16, #3
	lsl	w8, w8, w11
	ldrb	w11, [x0, x13]
	ldrb	w13, [x3, #3]
	ldrb	w15, [x0, x15]
	ldrb	w2, [x3, #5]
	ldrb	w12, [x0, x12]
	ldrb	w4, [x3, #6]
	bfi	x17, x16, #5, #5
	lsl	w11, w11, w13
	lsl	w13, w14, w1
	lsl	w14, w15, w2
	lsl	w12, w12, w4
	ldrb	w15, [x0, x17]
	ldrb	w16, [x3, #7]
	orr	w8, w9, w8
	orr	w9, w10, w11
	orr	w10, w13, w14
	orr	w8, w8, w9
	orr	w9, w10, w12
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
.Lfunc_end33:
	.size	ebc_get_8pix_wf_full, .Lfunc_end33-ebc_get_8pix_wf_full
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
	ldr	w22, [x19, #932]
	tbnz	w22, #31, .LBB34_6
// %bb.1:
	ldr	w8, [x19, #852]
	str	w22, [x29, #28]
	cmp	w8, #1
	b.ge	.LBB34_33
// %bb.2:
	mov	w2, w22
.LBB34_3:
	cmp	w2, #51
	b.lo	.LBB34_16
// %bb.4:
	ldr	w8, [x19, #852]
	tbz	w8, #31, .LBB34_40
.LBB34_5:
	mov	w8, #50                         // =0x32
	str	w8, [x29, #28]
	b	.LBB34_16
.LBB34_6:
	ldr	x0, [x19, #16]
	cbz	x0, .LBB34_8
// %bb.7:
	ldr	x8, [x0, #56]
	add	x1, x29, #28
	ldur	w16, [x8, #-4]
	movk	w17, #46199
	movk	w17, #3090, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp31
	brk	#0x8228
.Ltmp31:
	blr	x8
	mov	w23, w0
	b	.LBB34_9
.LBB34_8:
	ldr	x0, [x19, #32]
	add	x1, x29, #28
	bl	thermal_zone_get_temp
	ldrsw	x8, [x29, #28]
	mov	w9, #19923                      // =0x4dd3
	mov	w23, w0
	movk	w9, #4194, lsl #16
	smull	x8, w8, w9
	lsr	x9, x8, #32
	lsr	x8, x8, #63
	add	w8, w8, w9, asr #6
	str	w8, [x29, #28]
.LBB34_9:
	ldr	w1, [x29, #28]
	cmp	w21, #1
	b.ne	.LBB34_14
// %bb.10:
	mov	w0, w1
	bl	ebc_overlay_temp_fix
	mov	w22, w0
	cbnz	w23, .LBB34_15
.LBB34_11:
	ldr	w2, [x29, #28]
	tbz	w2, #31, .LBB34_3
.LBB34_12:
	ldr	w8, [x19, #852]
	tbz	w8, #31, .LBB34_42
.LBB34_13:
	str	wzr, [x29, #28]
	b	.LBB34_16
.LBB34_14:
	mov	w0, w21
	bl	ebc_normal_temp_fix
	mov	w22, w0
	cbz	w23, .LBB34_11
.LBB34_15:
	ldr	w8, [x19, #852]
	mov	w9, #25                         // =0x19
	str	w9, [x29, #28]
	tbz	w8, #31, .LBB34_41
.LBB34_16:
	ldr	w8, [x19, #852]
	cmp	w22, #50
	b.hi	.LBB34_19
// %bb.17:
	cmp	w8, #1
	b.ge	.LBB34_34
.LBB34_18:
	str	w22, [x29, #28]
	cmp	w21, #23
	b.ls	.LBB34_21
	b	.LBB34_36
.LBB34_19:
	cmp	w8, #1
	b.ge	.LBB34_35
// %bb.20:
	cmp	w21, #23
	b.hi	.LBB34_36
.LBB34_21:
	mov	w8, w21
	adrp	x9, .LJTI34_0
	add	x9, x9, :lo12:.LJTI34_0
	adr	x10, .LBB34_22
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	mov	w1, wzr
	br	x10
.LBB34_22:
	mov	w1, #1                          // =0x1
	b	.LBB34_37
.LBB34_23:
	mov	w1, #7                          // =0x7
	b	.LBB34_37
.LBB34_24:
	mov	w1, #8                          // =0x8
	b	.LBB34_37
.LBB34_25:
	mov	w1, #2                          // =0x2
	b	.LBB34_37
.LBB34_26:
	mov	w1, #6                          // =0x6
	b	.LBB34_37
.LBB34_27:
	mov	w1, #5                          // =0x5
	b	.LBB34_37
.LBB34_28:
	ldr	w8, [x19, #840]
	mov	w9, #4                          // =0x4
	cmp	w8, #0
	mov	w8, #13                         // =0xd
	csel	w1, w9, w8, eq
	b	.LBB34_37
.LBB34_29:
	ldr	w8, [x19, #840]
	mov	w9, #3                          // =0x3
	cmp	w8, #0
	mov	w8, #14                         // =0xe
	csinc	w20, w20, wzr, eq
	csel	w1, w9, w8, eq
	b	.LBB34_37
.LBB34_30:
	mov	w1, #4                          // =0x4
	b	.LBB34_37
.LBB34_31:
	mov	w1, #10                         // =0xa
	b	.LBB34_37
.LBB34_32:
	ldrb	w8, [x19, #937]
	mov	w9, #15                         // =0xf
	cmp	w8, #0
	mov	w8, #3                          // =0x3
	csel	w1, w9, w8, ne
	b	.LBB34_37
.LBB34_33:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.105
	add	x1, x1, :lo12:.L.str.105
	mov	w2, w22
	bl	_dev_info
	ldr	w2, [x29, #28]
	tbz	w2, #31, .LBB34_3
	b	.LBB34_12
.LBB34_34:
	ldr	x0, [x19, #328]
	ldr	w3, [x29, #28]
	adrp	x1, .L.str.109
	add	x1, x1, :lo12:.L.str.109
	mov	w2, w22
	bl	_dev_info
	b	.LBB34_18
.LBB34_35:
	ldr	x0, [x19, #328]
	ldr	w2, [x29, #28]
	adrp	x1, .L.str.110
	add	x1, x1, :lo12:.L.str.110
	mov	w3, w22
	bl	_dev_info
	cmp	w21, #23
	b.ls	.LBB34_21
.LBB34_36:
	mov	w1, #3                          // =0x3
.LBB34_37:
	ldr	w2, [x29, #28]
	ldrb	w4, [x19, #936]
	add	x0, x19, #336
	mov	w3, #32                         // =0x20
	mov	w5, w20
	bl	epd_lut_get
	cbnz	w0, .LBB34_39
.LBB34_38:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB34_39:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.111
	add	x1, x1, :lo12:.L.str.111
	bl	_dev_err
	b	.LBB34_38
.LBB34_40:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.107
	add	x1, x1, :lo12:.L.str.107
	bl	_dev_info
	b	.LBB34_5
.LBB34_41:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.108
	add	x1, x1, :lo12:.L.str.108
	mov	w2, w23
	bl	_dev_info
	b	.LBB34_16
.LBB34_42:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.106
	add	x1, x1, :lo12:.L.str.106
	bl	_dev_info
	b	.LBB34_13
.Lfunc_end34:
	.size	ebc_lut_update, .Lfunc_end34-ebc_lut_update
	.section	.rodata,"a",@progbits
.LJTI34_0:
	.byte	(.LBB34_36-.LBB34_22)>>2
	.byte	(.LBB34_31-.LBB34_22)>>2
	.byte	(.LBB34_36-.LBB34_22)>>2
	.byte	(.LBB34_30-.LBB34_22)>>2
	.byte	(.LBB34_27-.LBB34_22)>>2
	.byte	(.LBB34_26-.LBB34_22)>>2
	.byte	(.LBB34_24-.LBB34_22)>>2
	.byte	(.LBB34_29-.LBB34_22)>>2
	.byte	(.LBB34_28-.LBB34_22)>>2
	.byte	(.LBB34_27-.LBB34_22)>>2
	.byte	(.LBB34_26-.LBB34_22)>>2
	.byte	(.LBB34_24-.LBB34_22)>>2
	.byte	(.LBB34_23-.LBB34_22)>>2
	.byte	(.LBB34_23-.LBB34_22)>>2
	.byte	(.LBB34_22-.LBB34_22)>>2
	.byte	(.LBB34_25-.LBB34_22)>>2
	.byte	(.LBB34_22-.LBB34_22)>>2
	.byte	(.LBB34_37-.LBB34_22)>>2
	.byte	(.LBB34_36-.LBB34_22)>>2
	.byte	(.LBB34_36-.LBB34_22)>>2
	.byte	(.LBB34_36-.LBB34_22)>>2
	.byte	(.LBB34_32-.LBB34_22)>>2
	.byte	(.LBB34_22-.LBB34_22)>>2
	.byte	(.LBB34_25-.LBB34_22)>>2
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_frame_start
	.type	ebc_frame_start,@function
ebc_frame_start:                        // @ebc_frame_start
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #112
	ldr	w8, [x0, #472]
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	mov	x19, x0
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	sub	w8, w8, #3
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	cmp	w8, #1
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	b.hi	.LBB35_6
// %bb.1:
	ldr	w3, [x19, #952]
	tbnz	w3, #31, .LBB35_10
// %bb.2:
	ldr	w8, [x19, #312]
	cmp	w3, w8
	b.ge	.LBB35_10
// %bb.3:
	ldr	w2, [x19, #948]
	tbnz	w2, #31, .LBB35_10
// %bb.4:
	ldr	w8, [x19, #316]
	cmp	w2, w8
	b.ge	.LBB35_10
// %bb.5:
	ldp	x10, x9, [x19, #368]
	madd	w8, w8, w3, w2
	b	.LBB35_71
.LBB35_6:
	ldr	w3, [x19, #952]
	tbnz	w3, #31, .LBB35_10
// %bb.7:
	ldr	w8, [x19, #312]
	cmp	w3, w8
	b.ge	.LBB35_10
// %bb.8:
	ldr	w2, [x19, #948]
	tbnz	w2, #31, .LBB35_10
// %bb.9:
	ldr	w8, [x19, #316]
	cmp	w2, w8
	b.lt	.LBB35_70
.LBB35_10:
	ldr	w8, [x19, #472]
	cmp	w8, #3
	b.gt	.LBB35_17
// %bb.11:
	cmp	w8, #1
	b.eq	.LBB35_30
// %bb.12:
	cmp	w8, #3
	b.ne	.LBB35_23
// %bb.13:
	ldp	x1, x2, [x19, #368]
	add	x4, x19, #232
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #408]
	mov	w5, #1                          // =0x1
	ldr	x3, [x19, #392]
	cbz	w8, .LBB35_38
// %bb.14:
	bl	get_auto_image2
	ldr	w8, [x19, #292]
	cbz	w8, .LBB35_39
.LBB35_15:
	ldp	x1, x2, [x19, #368]
	add	x4, x19, #232
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #416]
	mov	w5, #1                          // =0x1
	ldr	x3, [x19, #392]
	cbz	w8, .LBB35_50
// %bb.16:
	bl	get_auto_image2
	b	.LBB35_68
.LBB35_17:
	cmp	w8, #5
	b.eq	.LBB35_32
// %bb.18:
	cmp	w8, #4
	b.ne	.LBB35_23
// %bb.19:
	ldr	x0, [x19, #408]
	ldrsw	x2, [x19, #264]
	mov	w1, wzr
	bl	memset
	ldp	x4, x0, [x19, #400]
	add	x5, x19, #232
	ldp	x1, x2, [x19, #368]
	ldr	w8, [x19, #204]
	ldr	x3, [x19, #392]
	cbz	w8, .LBB35_41
// %bb.20:
	bl	get_overlay_image_area2
	ldr	w8, [x19, #292]
	cbz	w8, .LBB35_42
.LBB35_21:
	add	x0, x19, #40
	add	x1, x19, #232
	str	wzr, [x19, #112]
	bl	flip
	ldr	x0, [x19, #416]
	ldrsw	x2, [x19, #264]
	mov	w1, wzr
	bl	memset
	ldp	x1, x2, [x19, #368]
	add	x5, x19, #232
	ldp	x3, x4, [x19, #392]
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #416]
	cbz	w8, .LBB35_51
// %bb.22:
	bl	get_overlay_image_area2
	b	.LBB35_69
.LBB35_23:
	ldr	w3, [x19, #952]
	ldr	x8, [x19, #448]
	tbnz	w3, #31, .LBB35_27
// %bb.24:
	ldr	w9, [x19, #312]
	cmp	w3, w9
	b.ge	.LBB35_27
// %bb.25:
	ldr	w2, [x19, #948]
	tbnz	w2, #31, .LBB35_27
// %bb.26:
	ldr	w9, [x19, #316]
	cmp	w2, w9
	b.lt	.LBB35_74
.LBB35_27:
	ldr	w9, [x8, #40]
	cmp	w9, #21
	b.ne	.LBB35_34
// %bb.28:
	ldr	w8, [x19, #316]
	ldr	w9, [x19, #312]
	mov	w1, #255                        // =0xff
	ldr	x0, [x19, #392]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	ldr	w8, [x19, #916]
	ldr	w9, [x19, #904]
	add	x3, x19, #232
	ldr	w10, [x19, #316]
	str	wzr, [x19, #912]
	mov	w4, #1                          // =0x1
	cmp	w8, #5
	ldr	x0, [x19, #408]
	csel	w8, wzr, w8, hi
	cmp	w9, w10
	csel	w11, w9, w10, lt
	cmp	w9, #1
	str	w8, [x19, #900]
	csel	w8, w10, w11, lt
	ldp	x10, x9, [x19, #440]
	str	w8, [x19, #896]
	str	w8, [x19, #908]
	ldr	w8, [x19, #204]
	ldr	x1, [x9, #16]
	ldr	x2, [x10, #16]
	cbz	w8, .LBB35_52
// %bb.29:
	bl	direct_mode_data_change_full2
	b	.LBB35_53
.LBB35_30:
	ldrb	w8, [x19, #288]
	ldp	x10, x9, [x19, #440]
	ldr	x0, [x19, #408]
	add	x3, x19, #232
	mov	w4, #1                          // =0x1
	str	w8, [x19, #304]
	ldr	w8, [x19, #204]
	ldr	x1, [x9, #16]
	ldr	x2, [x10, #16]
	cbz	w8, .LBB35_44
// %bb.31:
	bl	direct_mode_data_change_part2
	b	.LBB35_45
.LBB35_32:
	ldrb	w8, [x19, #288]
	ldp	x10, x9, [x19, #440]
	ldr	x0, [x19, #408]
	add	x3, x19, #232
	mov	w4, #1                          // =0x1
	str	w8, [x19, #304]
	ldr	w8, [x19, #204]
	ldr	x1, [x9, #16]
	ldr	x2, [x10, #16]
	cbz	w8, .LBB35_47
// %bb.33:
	bl	direct_mode_data_change_part2
	b	.LBB35_48
.LBB35_34:
	ldrb	w9, [x19, #288]
	ldr	x10, [x19, #440]
	ldr	x0, [x19, #408]
	str	w9, [x19, #304]
	ldr	w9, [x19, #204]
	ldr	x21, [x8, #16]
	ldr	x20, [x10, #16]
	cbz	w9, .LBB35_55
// %bb.35:
	add	x3, x19, #232
	mov	x1, x21
	mov	x2, x20
	mov	w4, #1                          // =0x1
	bl	direct_mode_data_change2
.LBB35_36:
	ldr	w8, [x19, #304]
	ldp	x10, x9, [x19, #440]
	ldr	w11, [x19, #204]
	ldr	x0, [x19, #416]
	sub	w8, w8, #1
	str	w8, [x19, #304]
	ldr	x21, [x9, #16]
	ldr	x20, [x10, #16]
	cbz	w11, .LBB35_61
// %bb.37:
	add	x3, x19, #232
	mov	x1, x21
	mov	x2, x20
	mov	w4, #1                          // =0x1
	bl	direct_mode_data_change2
	b	.LBB35_68
.LBB35_38:
	bl	get_auto_image
	ldr	w8, [x19, #292]
	cbnz	w8, .LBB35_15
.LBB35_39:
	ldr	w8, [x19, #852]
	cmp	w8, #1
	b.lt	.LBB35_43
// %bb.40:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.113
	add	x1, x1, :lo12:.L.str.113
	b	.LBB35_73
.LBB35_41:
	bl	get_overlay_image_area
	ldr	w8, [x19, #292]
	cbnz	w8, .LBB35_21
.LBB35_42:
	ldr	w8, [x19, #852]
	cmp	w8, #1
	b.ge	.LBB35_72
.LBB35_43:
	str	wzr, [x19, #284]
	b	.LBB35_69
.LBB35_44:
	bl	direct_mode_data_change_part
.LBB35_45:
	ldr	w8, [x19, #304]
	ldp	x10, x9, [x19, #440]
	ldr	x0, [x19, #416]
	add	x3, x19, #232
	mov	w4, #1                          // =0x1
	sub	w8, w8, #1
	str	w8, [x19, #304]
	ldr	w8, [x19, #204]
	ldr	x1, [x9, #16]
	ldr	x2, [x10, #16]
	cbz	w8, .LBB35_49
// %bb.46:
	bl	direct_mode_data_change_part2
	b	.LBB35_68
.LBB35_47:
	bl	direct_mode_data_change_part
.LBB35_48:
	ldr	w8, [x19, #304]
	ldp	x1, x0, [x19, #408]
	ldrsw	x2, [x19, #264]
	sub	w8, w8, #1
	str	w8, [x19, #304]
	bl	memcpy
	b	.LBB35_68
.LBB35_49:
	bl	direct_mode_data_change_part
	b	.LBB35_68
.LBB35_50:
	bl	get_auto_image
	b	.LBB35_68
.LBB35_51:
	bl	get_overlay_image_area
	b	.LBB35_69
.LBB35_52:
	bl	direct_mode_data_change_full
.LBB35_53:
	ldr	w8, [x19, #896]
	ldr	w9, [x19, #908]
	add	x3, x19, #232
	ldr	x0, [x19, #416]
	mov	w4, #1                          // =0x1
	add	w8, w9, w8
	ldp	x10, x9, [x19, #440]
	str	w8, [x19, #908]
	ldr	w8, [x19, #204]
	ldr	x1, [x9, #16]
	ldr	x2, [x10, #16]
	cbz	w8, .LBB35_67
// %bb.54:
	bl	direct_mode_data_change_full2
	b	.LBB35_68
.LBB35_55:
	adrp	x8, global_ebc
	mov	x10, #512                       // =0x200
	ldr	x22, [x19, #352]
	ldr	x9, [x8, :lo12:global_ebc]
	movk	x10, #1540, lsl #16
	movk	x10, #2568, lsl #32
	ldr	w8, [x9, #120]
	movk	x10, #3596, lsl #48
	str	x10, [sp, #8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	subs	w8, w8, #1
	b.lt	.LBB35_36
// %bb.56:
	ldr	w10, [x9, #196]
	ldr	w25, [x9, #116]
	mov	w24, wzr
	cmp	w10, #0
	ubfx	x9, x25, #2, #30
	lsr	x10, x25, #2
	csel	w8, wzr, w8, eq
	mul	w8, w8, w25
	cneg	w9, w9, ne
	and	x28, x10, #0x3ffffffe
	sxtw	x26, w9
	lsr	w8, w8, #2
	add	x27, x0, x8
	b	.LBB35_58
.LBB35_57:                              //   in Loop: Header=BB35_58 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	add	w24, w24, #1
	add	x27, x27, x26
	cmp	w24, w8
	b.eq	.LBB35_36
.LBB35_58:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB35_60 Depth 2
	cmp	w25, #8
	b.lo	.LBB35_57
// %bb.59:                              //   in Loop: Header=BB35_58 Depth=1
	mov	x23, xzr
.LBB35_60:                              //   Parent Loop BB35_58 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x2, [x21], #8
	add	x3, sp, #8
	ldr	x1, [x20], #8
	mov	x0, x22
	bl	ebc_get_8pix_wf_full
	strh	w0, [x27, x23]
	add	x23, x23, #2
	cmp	x28, x23
	b.ne	.LBB35_60
	b	.LBB35_57
.LBB35_61:
	adrp	x9, global_ebc
	mov	x13, #512                       // =0x200
	ldrb	w10, [x19, #288]
	ldr	x11, [x9, :lo12:global_ebc]
	movk	x13, #1540, lsl #16
	ldr	x9, [x19, #352]
	movk	x13, #2568, lsl #32
	ldr	w12, [x11, #120]
	movk	x13, #3596, lsl #48
	str	x13, [sp, #8]
	str	w12, [sp, #4]                   // 4-byte Folded Spill
	subs	w12, w12, #1
	b.lt	.LBB35_68
// %bb.62:
	ldr	w13, [x11, #196]
	ldr	w25, [x11, #116]
	sub	w8, w10, w8
	lsl	w8, w8, #10
	mov	w24, wzr
	cmp	w13, #0
	ubfx	x10, x25, #2, #30
	csel	w11, wzr, w12, eq
	lsr	x12, x25, #2
	add	x22, x9, w8, sxtw
	mul	w11, w11, w25
	cneg	w10, w10, ne
	sxtw	x26, w10
	and	x28, x12, #0x3ffffffe
	lsr	w11, w11, #2
	add	x27, x0, x11
	b	.LBB35_64
.LBB35_63:                              //   in Loop: Header=BB35_64 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	add	w24, w24, #1
	add	x27, x27, x26
	cmp	w24, w8
	b.eq	.LBB35_68
.LBB35_64:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB35_66 Depth 2
	cmp	w25, #8
	b.lo	.LBB35_63
// %bb.65:                              //   in Loop: Header=BB35_64 Depth=1
	mov	x23, xzr
.LBB35_66:                              //   Parent Loop BB35_64 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x2, [x21], #8
	add	x3, sp, #8
	ldr	x1, [x20], #8
	mov	x0, x22
	bl	ebc_get_8pix_wf_full
	strh	w0, [x27, x23]
	add	x23, x23, #2
	cmp	x28, x23
	b.ne	.LBB35_66
	b	.LBB35_63
.LBB35_67:
	bl	direct_mode_data_change_full
.LBB35_68:
	add	x0, x19, #40
	add	x1, x19, #232
	str	wzr, [x19, #112]
	bl	flip
.LBB35_69:
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #112
	ldr	x30, [x18, #-8]!
	ret
.LBB35_70:
	ldp	x9, x10, [x19, #440]
	madd	w8, w8, w3, w2
	ldr	x9, [x9, #16]
	ldr	x10, [x10, #16]
.LBB35_71:
	strb	wzr, [x19, #956]
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.114
	add	x1, x1, :lo12:.L.str.114
	ldrb	w5, [x10, w8, sxtw]
	ldrb	w4, [x9, w8, sxtw]
	bl	_dev_info
	b	.LBB35_10
.LBB35_72:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.112
	add	x1, x1, :lo12:.L.str.112
.LBB35_73:
	adrp	x2, .L__func__.ebc_frame_start
	add	x2, x2, :lo12:.L__func__.ebc_frame_start
	bl	_dev_info
	b	.LBB35_43
.LBB35_74:
	ldr	x10, [x19, #440]
	madd	w9, w9, w3, w2
	ldr	x8, [x8, #16]
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.114
	add	x1, x1, :lo12:.L.str.114
	ldr	x10, [x10, #16]
	ldrb	w5, [x8, w9, sxtw]
	ldrb	w4, [x10, w9, sxtw]
	bl	_dev_info
	ldr	x8, [x19, #448]
	b	.LBB35_27
.Lfunc_end35:
	.size	ebc_frame_start, .Lfunc_end35-ebc_frame_start
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_power_set
	.type	ebc_power_set,@function
ebc_power_set:                          // @ebc_power_set
// %bb.0:
	ldr	w8, [x0, #424]
	cmp	w8, w1
	b.eq	.LBB36_22
// %bb.1:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	ldr	w8, [x0, #848]
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x19, x0
	cmp	w1, #1
	mov	x29, sp
	b.ne	.LBB36_8
// %bb.2:
	cbz	w8, .LBB36_4
// %bb.3:
	mov	w0, #1                          // =0x1
	bl	ebc_notify
.LBB36_4:
	ldr	w8, [x19, #672]
	cbnz	w8, .LBB36_6
// %bb.5:
	mov	w8, #1                          // =0x1
	add	x0, x19, #480
	str	w8, [x19, #672]
	bl	__pm_stay_awake
.LBB36_6:
	ldr	x0, [x19, #16]
	mov	w8, #1                          // =0x1
	str	w8, [x19, #424]
	cbz	x0, .LBB36_17
// %bb.7:
	ldr	x8, [x0, #32]
	mov	w1, #1                          // =0x1
	ldur	w16, [x8, #-4]
	movk	w17, #39905
	movk	w17, #26023, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp32
	brk	#0x8228
.Ltmp32:
	blr	x8
	mov	w20, wzr
	b	.LBB36_18
.LBB36_8:
	cbz	w8, .LBB36_10
// %bb.9:
	mov	x0, xzr
	bl	ebc_notify
.LBB36_10:
	ldr	x0, [x19, #8]
	str	wzr, [x19, #424]
	ldr	x8, [x0, #80]
	ldur	w16, [x8, #-4]
	movk	w17, #15803
	movk	w17, #24474, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp33
	brk	#0x8228
.Ltmp33:
	blr	x8
	ldrb	w8, [x19, #224]
	cmp	w8, #1
	b.ne	.LBB36_12
// %bb.11:
	mov	w0, #10                         // =0xa
	bl	msleep
.LBB36_12:
	ldr	x0, [x19, #16]
	cbz	x0, .LBB36_23
// %bb.13:
	ldr	x8, [x0, #32]
	mov	w1, wzr
	ldur	w16, [x8, #-4]
	movk	w17, #39905
	movk	w17, #26023, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp34
	brk	#0x8228
.Ltmp34:
	blr	x8
	mov	w20, wzr
	ldr	w8, [x19, #672]
	cbz	w8, .LBB36_15
.LBB36_14:
	add	x0, x19, #480
	str	wzr, [x19, #672]
	bl	__pm_relax
.LBB36_15:
	ldr	w8, [x19, #852]
	cmp	w8, #1
	b.lt	.LBB36_21
// %bb.16:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.117
	add	x1, x1, :lo12:.L.str.117
	b	.LBB36_25
.LBB36_17:
	ldr	x0, [x19, #24]
	bl	regulator_enable
	mov	w20, w0
.LBB36_18:
	ldrb	w8, [x19, #224]
	cmp	w8, #1
	b.ne	.LBB36_20
// %bb.19:
	mov	w0, #50                         // =0x32
	bl	msleep
.LBB36_20:
	ldr	x0, [x19, #8]
	add	x1, x19, #40
	ldr	x8, [x0, #72]
	ldur	w16, [x8, #-4]
	movk	w17, #64249
	movk	w17, #27985, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp35
	brk	#0x8228
.Ltmp35:
	blr	x8
	ldr	w8, [x19, #852]
	cmp	w8, #1
	b.ge	.LBB36_24
.LBB36_21:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
.LBB36_22:
	ret
.LBB36_23:
	ldr	x0, [x19, #24]
	bl	regulator_disable
	mov	w20, w0
	ldr	w8, [x19, #672]
	cbnz	w8, .LBB36_14
	b	.LBB36_15
.LBB36_24:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.116
	add	x1, x1, :lo12:.L.str.116
.LBB36_25:
	mov	w2, w20
	bl	_dev_info
	b	.LBB36_21
.Lfunc_end36:
	.size	ebc_power_set, .Lfunc_end36-ebc_power_set
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_frame_control_timeout
	.type	ebc_frame_control_timeout,@function
	.word	2444535866                      // 0x91b4a83a
ebc_frame_control_timeout:              // @ebc_frame_control_timeout
// %bb.0:
	adrp	x8, global_ebc
	mov	w10, #1                         // =0x1
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w9, [x8, #852]
	str	w10, [x8, #812]
	cmp	w9, #1
	b.ge	.LBB37_2
// %bb.1:
	ret
.LBB37_2:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	ldr	x0, [x8, #328]
	adrp	x1, .L.str.119
	add	x1, x1, :lo12:.L.str.119
	mov	x29, sp
	bl	_dev_info
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end37:
	.size	ebc_frame_control_timeout, .Lfunc_end37-ebc_frame_control_timeout
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_overlay_enable_timeout
	.type	ebc_overlay_enable_timeout,@function
	.word	2444535866                      // 0x91b4a83a
ebc_overlay_enable_timeout:             // @ebc_overlay_enable_timeout
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w9, [x8, #852]
	str	wzr, [x8, #808]
	cmp	w9, #1
	b.ge	.LBB38_2
// %bb.1:
	ret
.LBB38_2:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	ldr	x0, [x8, #328]
	adrp	x1, .L.str.120
	add	x1, x1, :lo12:.L.str.120
	mov	x29, sp
	bl	_dev_info
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end38:
	.size	ebc_overlay_enable_timeout, .Lfunc_end38-ebc_overlay_enable_timeout
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
.Lfunc_end39:
	.size	ebc_frame_timeout, .Lfunc_end39-ebc_frame_timeout
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_io_ctl
	.type	ebc_io_ctl,@function
	.word	3759409357                      // 0xe01408cd
ebc_io_ctl:                             // @ebc_io_ctl
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #144
	adrp	x9, global_ebc
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	ldr	x22, [x0, #32]
	sub	w8, w1, #7, lsl #12             // =28672
	ldr	x21, [x9, :lo12:global_ebc]
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	cmp	w8, #33
	str	x23, [sp, #96]                  // 8-byte Folded Spill
	add	x29, sp, #80
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	str	wzr, [sp, #72]
	stp	xzr, xzr, [sp, #56]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	stp	xzr, xzr, [sp, #8]
	b.hi	.LBB40_92
// %bb.1:
	adrp	x9, .LJTI40_0
	add	x9, x9, :lo12:.LJTI40_0
	mov	x0, xzr
	adr	x10, .LBB40_2
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB40_2:
	cbz	x2, .LBB40_24
// %bb.3:
	cmp	w8, #33
	b.hi	.LBB40_92
// %bb.4:
	adrp	x9, .LJTI40_1
	add	x9, x9, :lo12:.LJTI40_1
	mov	x0, xzr
	adr	x10, .LBB40_5
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB40_5:
	add	x0, sp, #8
	mov	x19, x2
	mov	x1, x2
	mov	w2, #68                         // =0x44
	add	x20, sp, #8
	bl	_inline_copy_from_user
	cbnz	w0, .LBB40_81
// %bb.6:
	add	x0, x20, #48
	bl	ebc_empty_buf_get
	cbz	x0, .LBB40_82
// %bb.7:
	ldr	w23, [x0, #8]
	mov	x20, x0
	bl	ebc_phy_buf_base_get
	mov	w8, #26215                      // =0x6667
	sub	w9, w23, w0
	str	wzr, [sp, #52]
	movk	w8, #26214, lsl #16
	str	w9, [sp, #8]
	add	x1, sp, #8
	ldp	w11, w10, [x21, #116]
	smull	x8, w9, w8
	ldr	w9, [x21, #192]
	mov	x0, x19
	mov	w2, #68                         // =0x44
	stp	w10, w11, [sp, #16]
	lsr	x10, x8, #63
	asr	x8, x8, #53
	str	w9, [sp, #24]
	add	w8, w8, w10
	ldr	w8, [x22, w8, sxtw #2]
	str	w8, [sp, #72]
	bl	_inline_copy_to_user
	cbz	w0, .LBB40_23
// %bb.8:
	mov	x0, x20
	bl	ebc_buf_release
	mov	x0, #-14                        // =0xfffffffffffffff2
	b	.LBB40_89
.LBB40_9:
	ldr	w8, [x21, #852]
	str	wzr, [x21, #816]
	tbnz	w8, #31, .LBB40_23
// %bb.10:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.136
	add	x1, x1, :lo12:.L.str.136
	bl	_dev_info
	b	.LBB40_23
.LBB40_11:
	ldr	w8, [x21, #852]
	tbz	w8, #31, .LBB40_93
// %bb.12:
	ldr	w8, [x21, #800]
	cbz	w8, .LBB40_14
.LBB40_13:
	mov	w0, #3                          // =0x3
	bl	ebc_notify
.LBB40_14:
	mov	x0, xzr
	str	wzr, [x21, #800]
	str	wzr, [x21, #820]
	b	.LBB40_88
.LBB40_15:
	ldr	w8, [x21, #852]
	mov	w9, #1                          // =0x1
	str	w9, [x21, #808]
	tbnz	w8, #31, .LBB40_23
// %bb.16:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.137
	add	x1, x1, :lo12:.L.str.137
	bl	_dev_info
	b	.LBB40_23
.LBB40_17:
	ldr	w8, [x21, #852]
	tbz	w8, #31, .LBB40_94
.LBB40_18:
	mov	w0, #2                          // =0x2
	bl	ebc_notify
	mov	w8, #1                          // =0x1
	mov	x0, xzr
	str	w8, [x21, #800]
	str	w8, [x21, #820]
	b	.LBB40_88
.LBB40_19:
	bl	ebc_drop_one_dsp_buf
	cbnz	w0, .LBB40_81
	b	.LBB40_23
.LBB40_20:
	ldr	w8, [x21, #852]
	str	wzr, [x21, #808]
	tbnz	w8, #31, .LBB40_23
// %bb.21:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.138
	add	x1, x1, :lo12:.L.str.138
	bl	_dev_info
	b	.LBB40_23
.LBB40_22:
	ldr	w8, [x21, #852]
	mov	w9, #1                          // =0x1
	str	w9, [x21, #816]
	tbz	w8, #31, .LBB40_95
.LBB40_23:
	mov	x0, xzr
	b	.LBB40_88
.LBB40_24:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.134
	add	x1, x1, :lo12:.L.str.134
	adrp	x2, .L__func__.ebc_io_ctl
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
	mov	x0, #-14                        // =0xfffffffffffffff2
	b	.LBB40_89
.LBB40_25:
	add	x0, sp, #8
	mov	x19, x2
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	w0, .LBB40_81
// %bb.26:
	ldr	x8, [x21, #448]
	cbz	x8, .LBB40_82
// %bb.27:
	ldr	w20, [x8, #8]
	bl	ebc_phy_buf_base_get
	mov	w8, #26215                      // =0x6667
	sub	w9, w20, w0
	str	wzr, [sp, #52]
	movk	w8, #26214, lsl #16
	str	w9, [sp, #8]
	add	x1, sp, #8
	ldp	w11, w10, [x21, #116]
	smull	x8, w9, w8
	ldr	w9, [x21, #192]
	mov	x0, x19
	mov	w2, #68                         // =0x44
	stp	w10, w11, [sp, #16]
	lsr	x10, x8, #63
	asr	x8, x8, #53
	str	w9, [sp, #24]
	add	w8, w8, w10
	ldr	w8, [x22, w8, sxtw #2]
	str	w8, [sp, #72]
	bl	_inline_copy_to_user
	cbnz	w0, .LBB40_81
	b	.LBB40_23
.LBB40_28:
	mov	x19, x2
	bl	ebc_empty_osd_buf_get
	cbz	x0, .LBB40_82
// %bb.29:
	ldr	w20, [x0, #8]
	bl	ebc_phy_buf_base_get
	mov	w8, #26215                      // =0x6667
	sub	w9, w20, w0
	str	wzr, [sp, #52]
	movk	w8, #26214, lsl #16
	str	w9, [sp, #8]
	add	x1, sp, #8
	ldp	w11, w10, [x21, #116]
	smull	x8, w9, w8
	ldr	w9, [x21, #192]
	mov	x0, x19
	mov	w2, #68                         // =0x44
	stp	w10, w11, [sp, #16]
	lsr	x10, x8, #63
	asr	x8, x8, #53
	str	w9, [sp, #24]
	add	w8, w8, w10
	ldr	w8, [x22, w8, sxtw #2]
	str	w8, [sp, #72]
	b	.LBB40_87
.LBB40_30:
	add	x0, x29, #28
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [x29, #28]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB40_81
// %bb.31:
	ldr	w8, [x29, #28]
	ldr	w9, [x21, #852]
	cmp	w8, #0
	cset	w10, ne
	strb	w10, [x21, #937]
	tbnz	w9, #31, .LBB40_23
// %bb.32:
	cmp	w8, #0
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.150
	add	x1, x1, :lo12:.L.str.150
	b	.LBB40_73
.LBB40_33:
	ldr	w8, [x21, #924]
	mov	w9, #1                          // =0x1
	str	w9, [x29, #28]
	cmp	w8, #3576
	b.eq	.LBB40_35
// %bb.34:
	ldr	w8, [x21, #928]
	cmp	w8, #3576
	b.ne	.LBB40_23
.LBB40_35:
	add	x0, x29, #28
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB40_81
// %bb.36:
	ldr	w8, [x29, #28]
	str	w8, [x21, #840]
	b	.LBB40_23
.LBB40_37:
	mov	w8, #-1                         // =0xffffffff
	add	x0, x29, #28
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	w8, [x29, #28]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB40_81
// %bb.38:
	ldr	w2, [x29, #28]
	ldr	w8, [x21, #852]
	str	w2, [x21, #944]
	tbnz	w8, #31, .LBB40_23
// %bb.39:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.140
	add	x1, x1, :lo12:.L.str.140
	bl	_dev_info
	b	.LBB40_23
.LBB40_40:
	add	x1, x21, #672
	b	.LBB40_85
.LBB40_41:
	add	x0, x29, #28
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [x29, #28]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB40_81
// %bb.42:
	ldr	w8, [x21, #852]
	tbz	w8, #31, .LBB40_96
.LBB40_43:
	ldr	w8, [x29, #28]
	mov	x0, xzr
	str	w8, [x21, #832]
	b	.LBB40_88
.LBB40_44:
	ldp	w8, w9, [x21, #116]
	ldr	w10, [x21, #192]
	add	x1, sp, #8
	mov	x0, x2
	mov	w2, #68                         // =0x44
	str	wzr, [sp, #52]
	stp	w9, w8, [sp, #16]
	ldp	w8, w9, [x21, #132]
	str	w10, [sp, #24]
	stp	w8, w9, [sp, #44]
	bl	_inline_copy_to_user
	cbz	x0, .LBB40_88
// %bb.45:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.139
	add	x1, x1, :lo12:.L.str.139
	bl	_dev_err
	b	.LBB40_81
.LBB40_46:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	x0, .LBB40_81
// %bb.47:
	bl	ebc_osd_buf_clone
	cbz	x0, .LBB40_88
// %bb.48:
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #28]
	mov	x19, x0
	ldr	x10, [sp, #32]
	str	w8, [x0, #40]
	ldr	w8, [sp, #40]
	str	w9, [x0, #48]
	stur	x10, [x0, #52]
	str	w8, [x0, #60]
	bl	ebc_add_to_osd_buf_list
	ldp	w8, w9, [x19, #48]
	orr	w8, w9, w8
	cbnz	w8, .LBB40_51
// %bb.49:
	ldr	w8, [x19, #56]
	ldr	w9, [x21, #316]
	cmp	w9, w8
	b.ne	.LBB40_51
// %bb.50:
	ldr	w8, [x19, #60]
	ldr	w9, [x21, #312]
	cmp	w9, w8
	b.eq	.LBB40_56
.LBB40_51:
	ldr	w8, [x21, #324]
	cbnz	w8, .LBB40_56
// %bb.52:
	mov	w8, #1                          // =0x1
	str	w8, [x21, #324]
	b	.LBB40_56
.LBB40_53:
	add	x0, sp, #8
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	x0, .LBB40_81
// %bb.54:
	bl	ebc_phy_buf_base_get
	ldrsw	x8, [sp, #8]
	add	x0, x0, x8
	bl	ebc_find_buf_by_phy_addr
	cbz	x0, .LBB40_88
// %bb.55:
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #28]
	ldr	x10, [sp, #32]
	str	w8, [x0, #40]
	str	w9, [x0, #48]
	ldr	w8, [sp, #52]
	ldr	w9, [sp, #40]
	stur	x10, [x0, #52]
	stp	w9, w8, [x0, #60]
	bl	ebc_add_to_dsp_buf_list
.LBB40_56:
	ldr	w8, [x21, #320]
	cbnz	w8, .LBB40_23
// %bb.57:
	mov	w8, #1                          // =0x1
	adrp	x0, ebc_thread_wq
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1                          // =0x1
	str	w8, [x21, #320]
	bl	__wake_up_sync
	b	.LBB40_23
.LBB40_58:
	ldr	w8, [x21, #924]
	str	wzr, [x29, #28]
	cmp	w8, #3576
	b.eq	.LBB40_60
// %bb.59:
	ldr	w8, [x21, #928]
	cmp	w8, #3576
	b.ne	.LBB40_23
.LBB40_60:
	add	x0, x29, #28
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB40_81
// %bb.61:
	ldr	w8, [x21, #852]
	tbz	w8, #31, .LBB40_97
.LBB40_62:
	ldr	w8, [x29, #28]
	str	w8, [x21, #828]
	b	.LBB40_23
.LBB40_63:
	add	x0, x21, #904
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB40_81
// %bb.64:
	ldr	w8, [x21, #852]
	tbnz	w8, #31, .LBB40_23
// %bb.65:
	ldr	x0, [x21, #328]
	ldr	w2, [x21, #904]
	adrp	x1, .L.str.145
	add	x1, x1, :lo12:.L.str.145
	bl	_dev_info
	b	.LBB40_23
.LBB40_66:
	mov	w8, #-1                         // =0xffffffff
	add	x0, x29, #28
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	w8, [x29, #28]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB40_81
// %bb.67:
	ldr	w2, [x29, #28]
	ldr	w8, [x21, #852]
	str	w2, [x21, #932]
	tbnz	w8, #31, .LBB40_23
// %bb.68:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.147
	add	x1, x1, :lo12:.L.str.147
	bl	_dev_info
	b	.LBB40_23
.LBB40_69:
	mov	x19, x2
	bl	epd_lut_get_wf_bit
	cmp	w0, #32
	add	x1, x29, #28
	mov	x0, x19
	cset	w8, eq
	str	w8, [x29, #28]
	b	.LBB40_86
.LBB40_70:
	add	x0, x29, #28
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [x29, #28]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB40_81
// %bb.71:
	ldr	w8, [x29, #28]
	ldr	w9, [x21, #852]
	cmp	w8, #0
	cset	w10, ne
	strb	w10, [x21, #936]
	tbnz	w9, #31, .LBB40_23
// %bb.72:
	cmp	w8, #0
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.148
	add	x1, x1, :lo12:.L.str.148
.LBB40_73:
	cset	w2, ne
	bl	_dev_info
	b	.LBB40_23
.LBB40_74:
	add	x1, x21, #808
	b	.LBB40_85
.LBB40_75:
	add	x0, x29, #28
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [x29, #28]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB40_81
// %bb.76:
	ldr	w2, [x29, #28]
	ldr	w8, [x21, #852]
	str	w2, [x21, #940]
	tbnz	w8, #31, .LBB40_23
// %bb.77:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.149
	add	x1, x1, :lo12:.L.str.149
	bl	_dev_info
	b	.LBB40_23
.LBB40_78:
	ldr	w8, [x21, #924]
	cmp	w8, #3576
	b.ne	.LBB40_83
.LBB40_79:
	mov	w8, #1                          // =0x1
	b	.LBB40_84
.LBB40_80:
	add	x0, x21, #916
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbz	w0, .LBB40_90
.LBB40_81:
	mov	x0, #-14                        // =0xfffffffffffffff2
	b	.LBB40_89
.LBB40_82:
	mov	x0, #-1                         // =0xffffffffffffffff
	b	.LBB40_89
.LBB40_83:
	ldr	w8, [x21, #928]
	cmp	w8, #3576
	cset	w8, eq
.LBB40_84:
	str	w8, [x29, #28]
	add	x1, x29, #28
.LBB40_85:
	mov	x0, x2
.LBB40_86:
	mov	w2, #4                          // =0x4
.LBB40_87:
	bl	_inline_copy_to_user
.LBB40_88:
	sxtw	x0, w0
.LBB40_89:
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldr	x23, [sp, #96]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #144
	ldr	x30, [x18, #-8]!
	ret
.LBB40_90:
	ldr	w8, [x21, #852]
	tbnz	w8, #31, .LBB40_23
// %bb.91:
	ldr	x0, [x21, #328]
	ldr	w2, [x21, #916]
	adrp	x1, .L.str.146
	add	x1, x1, :lo12:.L.str.146
	bl	_dev_info
	b	.LBB40_23
.LBB40_92:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.151
	add	x1, x1, :lo12:.L.str.151
	adrp	x2, .L__func__.ebc_io_ctl
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
	b	.LBB40_23
.LBB40_93:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.142
	add	x1, x1, :lo12:.L.str.142
	bl	_dev_info
	ldr	w8, [x21, #800]
	cbnz	w8, .LBB40_13
	b	.LBB40_14
.LBB40_94:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.141
	add	x1, x1, :lo12:.L.str.141
	bl	_dev_info
	b	.LBB40_18
.LBB40_95:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.135
	add	x1, x1, :lo12:.L.str.135
	bl	_dev_info
	b	.LBB40_23
.LBB40_96:
	ldr	x0, [x21, #328]
	ldr	w2, [x29, #28]
	adrp	x1, .L.str.144
	add	x1, x1, :lo12:.L.str.144
	bl	_dev_info
	b	.LBB40_43
.LBB40_97:
	ldr	x0, [x21, #328]
	ldr	w2, [x29, #28]
	adrp	x1, .L.str.143
	add	x1, x1, :lo12:.L.str.143
	bl	_dev_info
	b	.LBB40_62
.Lfunc_end40:
	.size	ebc_io_ctl, .Lfunc_end40-ebc_io_ctl
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
.LJTI40_0:
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_15-.LBB40_2)>>2
	.hword	(.LBB40_20-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_88-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_22-.LBB40_2)>>2
	.hword	(.LBB40_9-.LBB40_2)>>2
	.hword	(.LBB40_88-.LBB40_2)>>2
	.hword	(.LBB40_88-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_19-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_17-.LBB40_2)>>2
	.hword	(.LBB40_11-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_92-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.p2align	1, 0x0
.LJTI40_1:
	.hword	(.LBB40_5-.LBB40_5)>>2
	.hword	(.LBB40_53-.LBB40_5)>>2
	.hword	(.LBB40_44-.LBB40_5)>>2
	.hword	(.LBB40_88-.LBB40_5)>>2
	.hword	(.LBB40_15-.LBB40_5)>>2
	.hword	(.LBB40_20-.LBB40_5)>>2
	.hword	(.LBB40_28-.LBB40_5)>>2
	.hword	(.LBB40_46-.LBB40_5)>>2
	.hword	(.LBB40_88-.LBB40_5)>>2
	.hword	(.LBB40_37-.LBB40_5)>>2
	.hword	(.LBB40_88-.LBB40_5)>>2
	.hword	(.LBB40_74-.LBB40_5)>>2
	.hword	(.LBB40_22-.LBB40_5)>>2
	.hword	(.LBB40_9-.LBB40_5)>>2
	.hword	(.LBB40_88-.LBB40_5)>>2
	.hword	(.LBB40_88-.LBB40_5)>>2
	.hword	(.LBB40_79-.LBB40_5)>>2
	.hword	(.LBB40_19-.LBB40_5)>>2
	.hword	(.LBB40_40-.LBB40_5)>>2
	.hword	(.LBB40_17-.LBB40_5)>>2
	.hword	(.LBB40_11-.LBB40_5)>>2
	.hword	(.LBB40_58-.LBB40_5)>>2
	.hword	(.LBB40_92-.LBB40_5)>>2
	.hword	(.LBB40_78-.LBB40_5)>>2
	.hword	(.LBB40_63-.LBB40_5)>>2
	.hword	(.LBB40_80-.LBB40_5)>>2
	.hword	(.LBB40_66-.LBB40_5)>>2
	.hword	(.LBB40_70-.LBB40_5)>>2
	.hword	(.LBB40_75-.LBB40_5)>>2
	.hword	(.LBB40_30-.LBB40_5)>>2
	.hword	(.LBB40_25-.LBB40_5)>>2
	.hword	(.LBB40_69-.LBB40_5)>>2
	.hword	(.LBB40_33-.LBB40_5)>>2
	.hword	(.LBB40_41-.LBB40_5)>>2
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_mmap
	.type	ebc_mmap,@function
	.word	2241513476                      // 0x859ac804
ebc_mmap:                               // @ebc_mmap
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	mov	x19, x1
	bl	ebc_phy_buf_base_get
	ldr	x8, [x19, #16]
	mov	x20, x0
	ldr	x9, [x8, #152]
	tbz	w9, #0, .LBB41_4
.LBB41_1:
	ldr	w1, [x8, #216]
	ldr	w8, [x19, #40]
	cmp	w8, w1
	b.eq	.LBB41_3
// %bb.2:
	mov	x0, x19
	bl	__vma_start_write
.LBB41_3:
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
.LBB41_4:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp36:
.Ltmp38:
	.word	.Ltmp37-.Ltmp38
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp39:
	.ascii	"include/linux/rwsem.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp40:
	.word	.Ltmp39-.Ltmp40
	.hword	88
	.hword	2305
	.p2align	2, 0x0
	.text
.Ltmp37:
	brk	#0x800
	//NO_APP
	ldr	x8, [x19, #16]
	b	.LBB41_1
.Lfunc_end41:
	.size	ebc_mmap, .Lfunc_end41-ebc_mmap
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_open
	.type	ebc_open,@function
	.word	2399652437                      // 0x8f07ca55
ebc_open:                               // @ebc_open
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	adrp	x9, kmalloc_caches+40
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	ldr	x0, [x9, :lo12:kmalloc_caches+40]
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	ldr	x21, [x8, :lo12:global_ebc]
	mov	x19, x1
	mov	w1, #3520                       // =0xdc0
	mov	w2, #20                         // =0x14
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	bl	__kmalloc_cache_noprof
	cbz	x0, .LBB42_17
// %bb.1:
	mov	x20, x0
	ldr	x0, [x21, #856]
	ldr	x9, [x0, #8]
	//APP
.Ltmp41:
	b	.LBB42_24
.Ltmp42:
	.section	.altinstructions,"a",@progbits
.Ltmp43:
	.word	.Ltmp41-.Ltmp43
.Ltmp44:
	.word	alt_cb_patch_nops-.Ltmp44
	.hword	32805
	.byte	.Ltmp42-.Ltmp41
	.byte	.Ltmp45-.Ltmp46
	.text

.Ltmp46:
.Ltmp45:

	//NO_APP
// %bb.2:
	mov	w8, #1                          // =0x1
	//APP
	ldadd	x8, x8, [x9]
	//NO_APP
	adrp	x22, get_file.__already_done
	cbnz	x8, .LBB42_4
.LBB42_3:
	ldrb	w8, [x22, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB42_19
.LBB42_4:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	str	w0, [x20]
	ldr	x0, [x21, #864]
	ldr	x8, [x0, #8]
	//APP
.Ltmp47:
	b	.LBB42_25
.Ltmp48:
	.section	.altinstructions,"a",@progbits
.Ltmp49:
	.word	.Ltmp47-.Ltmp49
.Ltmp50:
	.word	alt_cb_patch_nops-.Ltmp50
	.hword	32805
	.byte	.Ltmp48-.Ltmp47
	.byte	.Ltmp51-.Ltmp52
	.text

.Ltmp52:
.Ltmp51:

	//NO_APP
// %bb.5:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB42_7
.LBB42_6:
	ldrb	w8, [x22, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB42_20
.LBB42_7:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	str	w0, [x20, #4]
	ldr	x0, [x21, #872]
	ldr	x8, [x0, #8]
	//APP
.Ltmp53:
	b	.LBB42_26
.Ltmp54:
	.section	.altinstructions,"a",@progbits
.Ltmp55:
	.word	.Ltmp53-.Ltmp55
.Ltmp56:
	.word	alt_cb_patch_nops-.Ltmp56
	.hword	32805
	.byte	.Ltmp54-.Ltmp53
	.byte	.Ltmp57-.Ltmp58
	.text

.Ltmp58:
.Ltmp57:

	//NO_APP
// %bb.8:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB42_10
.LBB42_9:
	ldrb	w8, [x22, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB42_21
.LBB42_10:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	str	w0, [x20, #8]
	ldr	x0, [x21, #880]
	ldr	x8, [x0, #8]
	//APP
.Ltmp59:
	b	.LBB42_27
.Ltmp60:
	.section	.altinstructions,"a",@progbits
.Ltmp61:
	.word	.Ltmp59-.Ltmp61
.Ltmp62:
	.word	alt_cb_patch_nops-.Ltmp62
	.hword	32805
	.byte	.Ltmp60-.Ltmp59
	.byte	.Ltmp63-.Ltmp64
	.text

.Ltmp64:
.Ltmp63:

	//NO_APP
// %bb.11:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB42_13
.LBB42_12:
	ldrb	w8, [x22, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB42_22
.LBB42_13:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	str	w0, [x20, #12]
	ldr	x0, [x21, #888]
	ldr	x8, [x0, #8]
	//APP
.Ltmp65:
	b	.LBB42_28
.Ltmp66:
	.section	.altinstructions,"a",@progbits
.Ltmp67:
	.word	.Ltmp65-.Ltmp67
.Ltmp68:
	.word	alt_cb_patch_nops-.Ltmp68
	.hword	32805
	.byte	.Ltmp66-.Ltmp65
	.byte	.Ltmp69-.Ltmp70
	.text

.Ltmp70:
.Ltmp69:

	//NO_APP
// %bb.14:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB42_16
.LBB42_15:
	ldrb	w8, [x22, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB42_23
.LBB42_16:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	mov	w8, w0
	mov	w0, wzr
	str	x20, [x19, #32]
	str	w8, [x20, #16]
	str	xzr, [x19, #112]
	b	.LBB42_18
.LBB42_17:
	mov	w0, #-12                        // =0xfffffff4
.LBB42_18:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB42_19:
	mov	w8, #1                          // =0x1
	mov	x23, x0
	strb	w8, [x22, :lo12:get_file.__already_done]
	adrp	x8, .L.str.152
	add	x8, x8, :lo12:.L.str.152
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x23
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp71:
.Ltmp73:
	.word	.Ltmp72-.Ltmp73
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp74:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp75:
	.word	.Ltmp74-.Ltmp75
	.hword	1085
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp72:
	brk	#0x800
	//NO_APP
	b	.LBB42_4
.LBB42_20:
	mov	w8, #1                          // =0x1
	mov	x23, x0
	strb	w8, [x22, :lo12:get_file.__already_done]
	adrp	x8, .L.str.152
	add	x8, x8, :lo12:.L.str.152
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x23
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp76:
.Ltmp78:
	.word	.Ltmp77-.Ltmp78
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp79:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp80:
	.word	.Ltmp79-.Ltmp80
	.hword	1085
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp77:
	brk	#0x800
	//NO_APP
	b	.LBB42_7
.LBB42_21:
	mov	w8, #1                          // =0x1
	mov	x23, x0
	strb	w8, [x22, :lo12:get_file.__already_done]
	adrp	x8, .L.str.152
	add	x8, x8, :lo12:.L.str.152
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x23
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp81:
.Ltmp83:
	.word	.Ltmp82-.Ltmp83
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp84:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp85:
	.word	.Ltmp84-.Ltmp85
	.hword	1085
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp82:
	brk	#0x800
	//NO_APP
	b	.LBB42_10
.LBB42_22:
	mov	w8, #1                          // =0x1
	mov	x23, x0
	strb	w8, [x22, :lo12:get_file.__already_done]
	adrp	x8, .L.str.152
	add	x8, x8, :lo12:.L.str.152
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x23
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp86:
.Ltmp88:
	.word	.Ltmp87-.Ltmp88
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp89:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp90:
	.word	.Ltmp89-.Ltmp90
	.hword	1085
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp87:
	brk	#0x800
	//NO_APP
	b	.LBB42_13
.LBB42_23:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x22, :lo12:get_file.__already_done]
	adrp	x8, .L.str.152
	add	x8, x8, :lo12:.L.str.152
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp91:
.Ltmp93:
	.word	.Ltmp92-.Ltmp93
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp94:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp95:
	.word	.Ltmp94-.Ltmp95
	.hword	1085
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp92:
	brk	#0x800
	//NO_APP
	b	.LBB42_16
.LBB42_24:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x9]
.Ltmp96:
	ldxr	x8, [x9]
	add	x10, x8, #1
	stxr	w11, x10, [x9]
	cbnz	w11, .Ltmp96

	//NO_APP
	adrp	x22, get_file.__already_done
	cbz	x8, .LBB42_3
	b	.LBB42_4
.LBB42_25:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp97:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp97

	//NO_APP
	cbz	x9, .LBB42_6
	b	.LBB42_7
.LBB42_26:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp98:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp98

	//NO_APP
	cbz	x9, .LBB42_9
	b	.LBB42_10
.LBB42_27:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp99:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp99

	//NO_APP
	cbz	x9, .LBB42_12
	b	.LBB42_13
.LBB42_28:                              // Block address taken
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
	cbz	x9, .LBB42_15
	b	.LBB42_16
.Lfunc_end42:
	.size	ebc_open, .Lfunc_end42-ebc_open
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
.Lfunc_end43:
	.size	ebc_release, .Lfunc_end43-ebc_release
                                        // -- End function
	.p2align	2                               // -- Begin function _inline_copy_to_user
	.type	_inline_copy_to_user,@function
_inline_copy_to_user:                   // @_inline_copy_to_user
// %bb.0:
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	ldrb	w9, [x8, #70]
	tbnz	w9, #5, .LBB44_2
// %bb.1:
	ldr	x10, [x8]
	mov	x9, x0
	tbz	w10, #26, .LBB44_3
.LBB44_2:
	lsl	x9, x0, #8
	and	x9, x0, x9, asr #8
.LBB44_3:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x10, #549755813888              // =0x8000000000
	mov	x29, sp
	sub	x10, x10, x2
	cmp	x10, x9
	b.lo	.LBB44_14
// %bb.4:
	//APP
.Ltmp101:
	nop
.Ltmp102:
	.section	.altinstructions,"a",@progbits
.Ltmp103:
	.word	.Ltmp101-.Ltmp103
.Ltmp105:
	.word	.Ltmp104-.Ltmp105
	.hword	40
	.byte	.Ltmp102-.Ltmp101
	.byte	.Ltmp106-.Ltmp104
	.text

	.text	1
.Ltmp104:
	b	.LBB44_9
.Ltmp106:
.Ltmp107:
.org (.Ltmp107-(.Ltmp106-.Ltmp104))+(.Ltmp102-.Ltmp101), 0
.Ltmp108:
.org (.Ltmp108-(.Ltmp102-.Ltmp101))+(.Ltmp106-.Ltmp104), 0
	.text


	//NO_APP
// %bb.5:
	//APP
.Ltmp109:
	nop
.Ltmp110:
	.section	.altinstructions,"a",@progbits
.Ltmp111:
	.word	.Ltmp109-.Ltmp111
.Ltmp113:
	.word	.Ltmp112-.Ltmp113
	.hword	31
	.byte	.Ltmp110-.Ltmp109
	.byte	.Ltmp114-.Ltmp112
	.text

	.text	1
.Ltmp112:
	b	.LBB44_15
.Ltmp114:
.Ltmp115:
.org (.Ltmp115-(.Ltmp114-.Ltmp112))+(.Ltmp110-.Ltmp109), 0
.Ltmp116:
.org (.Ltmp116-(.Ltmp110-.Ltmp109))+(.Ltmp114-.Ltmp112), 0
	.text


	//NO_APP
// %bb.6:
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
.LBB44_7:
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
.Ltmp117:
	nop
.Ltmp118:
	.section	.altinstructions,"a",@progbits
.Ltmp119:
	.word	.Ltmp117-.Ltmp119
.Ltmp121:
	.word	.Ltmp120-.Ltmp121
	.hword	31
	.byte	.Ltmp118-.Ltmp117
	.byte	.Ltmp122-.Ltmp120
	.text

	.text	1
.Ltmp120:
	b	.LBB44_17
.Ltmp122:
.Ltmp123:
.org (.Ltmp123-(.Ltmp122-.Ltmp120))+(.Ltmp118-.Ltmp117), 0
.Ltmp124:
.org (.Ltmp124-(.Ltmp118-.Ltmp117))+(.Ltmp122-.Ltmp120), 0
	.text


	//NO_APP
// %bb.8:
	//APP
	//NO_APP
	//APP
	msr	DAIF, x9
	//NO_APP
	//APP
	//NO_APP
.LBB44_9:                               // Block address taken
                                        // Label of block must be emitted
	//APP
	and	x0, x0, #0xff7fffffffffffff

	//NO_APP
	bl	__arch_copy_to_user
	mov	x2, x0
	//APP
.Ltmp125:
	nop
.Ltmp126:
	.section	.altinstructions,"a",@progbits
.Ltmp127:
	.word	.Ltmp125-.Ltmp127
.Ltmp129:
	.word	.Ltmp128-.Ltmp129
	.hword	40
	.byte	.Ltmp126-.Ltmp125
	.byte	.Ltmp130-.Ltmp128
	.text

	.text	1
.Ltmp128:
	b	.LBB44_14
.Ltmp130:
.Ltmp131:
.org (.Ltmp131-(.Ltmp130-.Ltmp128))+(.Ltmp126-.Ltmp125), 0
.Ltmp132:
.org (.Ltmp132-(.Ltmp126-.Ltmp125))+(.Ltmp130-.Ltmp128), 0
	.text


	//NO_APP
// %bb.10:
	//APP
.Ltmp133:
	nop
.Ltmp134:
	.section	.altinstructions,"a",@progbits
.Ltmp135:
	.word	.Ltmp133-.Ltmp135
.Ltmp137:
	.word	.Ltmp136-.Ltmp137
	.hword	31
	.byte	.Ltmp134-.Ltmp133
	.byte	.Ltmp138-.Ltmp136
	.text

	.text	1
.Ltmp136:
	b	.LBB44_18
.Ltmp138:
.Ltmp139:
.org (.Ltmp139-(.Ltmp138-.Ltmp136))+(.Ltmp134-.Ltmp133), 0
.Ltmp140:
.org (.Ltmp140-(.Ltmp134-.Ltmp133))+(.Ltmp138-.Ltmp136), 0
	.text


	//NO_APP
// %bb.11:
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
.LBB44_12:
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
.Ltmp141:
	nop
.Ltmp142:
	.section	.altinstructions,"a",@progbits
.Ltmp143:
	.word	.Ltmp141-.Ltmp143
.Ltmp145:
	.word	.Ltmp144-.Ltmp145
	.hword	31
	.byte	.Ltmp142-.Ltmp141
	.byte	.Ltmp146-.Ltmp144
	.text

	.text	1
.Ltmp144:
	b	.LBB44_20
.Ltmp146:
.Ltmp147:
.org (.Ltmp147-(.Ltmp146-.Ltmp144))+(.Ltmp142-.Ltmp141), 0
.Ltmp148:
.org (.Ltmp148-(.Ltmp142-.Ltmp141))+(.Ltmp146-.Ltmp144), 0
	.text


	//NO_APP
// %bb.13:
	//APP
	//NO_APP
	//APP
	msr	DAIF, x8
	//NO_APP
	//APP
	//NO_APP
.LBB44_14:                              // Block address taken
                                        // Label of block must be emitted
	mov	x0, x2
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB44_15:                              // Block address taken
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
	b.ne	.LBB44_7
// %bb.16:
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
	b	.LBB44_7
.LBB44_17:                              // Block address taken
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
.Ltmp149:
	dsb	sy
.Ltmp150:
	.section	.altinstructions,"a",@progbits
.Ltmp151:
	.word	.Ltmp149-.Ltmp151
.Ltmp152:
	.word	alt_cb_patch_nops-.Ltmp152
	.hword	32800
	.byte	.Ltmp150-.Ltmp149
	.byte	.Ltmp153-.Ltmp154
	.text

.Ltmp154:
.Ltmp153:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB44_9
.LBB44_18:                              // Block address taken
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
	b.ne	.LBB44_12
// %bb.19:
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
	b	.LBB44_12
.LBB44_20:                              // Block address taken
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
.Ltmp155:
	dsb	sy
.Ltmp156:
	.section	.altinstructions,"a",@progbits
.Ltmp157:
	.word	.Ltmp155-.Ltmp157
.Ltmp158:
	.word	alt_cb_patch_nops-.Ltmp158
	.hword	32800
	.byte	.Ltmp156-.Ltmp155
	.byte	.Ltmp159-.Ltmp160
	.text

.Ltmp160:
.Ltmp159:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB44_14
.Lfunc_end44:
	.size	_inline_copy_to_user, .Lfunc_end44-_inline_copy_to_user
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
	tbnz	w9, #5, .LBB45_2
// %bb.1:
	ldr	x10, [x8]
	mov	x9, x1
	tbz	w10, #26, .LBB45_3
.LBB45_2:
	lsl	x9, x1, #8
	and	x9, x1, x9, asr #8
.LBB45_3:
	mov	x10, #549755813888              // =0x8000000000
	mov	x21, x19
	sub	x10, x10, x19
	cmp	x10, x9
	b.hs	.LBB45_5
.LBB45_4:
	sub	x8, x19, x21
	mov	w1, wzr
	mov	x2, x21
	add	x0, x20, x8
	bl	memset
	b	.LBB45_16
.LBB45_5:
	//APP
.Ltmp161:
	nop
.Ltmp162:
	.section	.altinstructions,"a",@progbits
.Ltmp163:
	.word	.Ltmp161-.Ltmp163
.Ltmp165:
	.word	.Ltmp164-.Ltmp165
	.hword	40
	.byte	.Ltmp162-.Ltmp161
	.byte	.Ltmp166-.Ltmp164
	.text

	.text	1
.Ltmp164:
	b	.LBB45_10
.Ltmp166:
.Ltmp167:
.org (.Ltmp167-(.Ltmp166-.Ltmp164))+(.Ltmp162-.Ltmp161), 0
.Ltmp168:
.org (.Ltmp168-(.Ltmp162-.Ltmp161))+(.Ltmp166-.Ltmp164), 0
	.text


	//NO_APP
// %bb.6:
	//APP
.Ltmp169:
	nop
.Ltmp170:
	.section	.altinstructions,"a",@progbits
.Ltmp171:
	.word	.Ltmp169-.Ltmp171
.Ltmp173:
	.word	.Ltmp172-.Ltmp173
	.hword	31
	.byte	.Ltmp170-.Ltmp169
	.byte	.Ltmp174-.Ltmp172
	.text

	.text	1
.Ltmp172:
	b	.LBB45_17
.Ltmp174:
.Ltmp175:
.org (.Ltmp175-(.Ltmp174-.Ltmp172))+(.Ltmp170-.Ltmp169), 0
.Ltmp176:
.org (.Ltmp176-(.Ltmp170-.Ltmp169))+(.Ltmp174-.Ltmp172), 0
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
.LBB45_8:
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
.Ltmp177:
	nop
.Ltmp178:
	.section	.altinstructions,"a",@progbits
.Ltmp179:
	.word	.Ltmp177-.Ltmp179
.Ltmp181:
	.word	.Ltmp180-.Ltmp181
	.hword	31
	.byte	.Ltmp178-.Ltmp177
	.byte	.Ltmp182-.Ltmp180
	.text

	.text	1
.Ltmp180:
	b	.LBB45_19
.Ltmp182:
.Ltmp183:
.org (.Ltmp183-(.Ltmp182-.Ltmp180))+(.Ltmp178-.Ltmp177), 0
.Ltmp184:
.org (.Ltmp184-(.Ltmp178-.Ltmp177))+(.Ltmp182-.Ltmp180), 0
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
.LBB45_10:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	and	x1, x1, #0xff7fffffffffffff

	//NO_APP
	mov	x0, x20
	mov	x2, x19
	bl	__arch_copy_from_user
	mov	x21, x0
	//APP
.Ltmp185:
	nop
.Ltmp186:
	.section	.altinstructions,"a",@progbits
.Ltmp187:
	.word	.Ltmp185-.Ltmp187
.Ltmp189:
	.word	.Ltmp188-.Ltmp189
	.hword	40
	.byte	.Ltmp186-.Ltmp185
	.byte	.Ltmp190-.Ltmp188
	.text

	.text	1
.Ltmp188:
	b	.LBB45_15
.Ltmp190:
.Ltmp191:
.org (.Ltmp191-(.Ltmp190-.Ltmp188))+(.Ltmp186-.Ltmp185), 0
.Ltmp192:
.org (.Ltmp192-(.Ltmp186-.Ltmp185))+(.Ltmp190-.Ltmp188), 0
	.text


	//NO_APP
// %bb.11:
	//APP
.Ltmp193:
	nop
.Ltmp194:
	.section	.altinstructions,"a",@progbits
.Ltmp195:
	.word	.Ltmp193-.Ltmp195
.Ltmp197:
	.word	.Ltmp196-.Ltmp197
	.hword	31
	.byte	.Ltmp194-.Ltmp193
	.byte	.Ltmp198-.Ltmp196
	.text

	.text	1
.Ltmp196:
	b	.LBB45_20
.Ltmp198:
.Ltmp199:
.org (.Ltmp199-(.Ltmp198-.Ltmp196))+(.Ltmp194-.Ltmp193), 0
.Ltmp200:
.org (.Ltmp200-(.Ltmp194-.Ltmp193))+(.Ltmp198-.Ltmp196), 0
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
.LBB45_13:
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
.Ltmp201:
	nop
.Ltmp202:
	.section	.altinstructions,"a",@progbits
.Ltmp203:
	.word	.Ltmp201-.Ltmp203
.Ltmp205:
	.word	.Ltmp204-.Ltmp205
	.hword	31
	.byte	.Ltmp202-.Ltmp201
	.byte	.Ltmp206-.Ltmp204
	.text

	.text	1
.Ltmp204:
	b	.LBB45_22
.Ltmp206:
.Ltmp207:
.org (.Ltmp207-(.Ltmp206-.Ltmp204))+(.Ltmp202-.Ltmp201), 0
.Ltmp208:
.org (.Ltmp208-(.Ltmp202-.Ltmp201))+(.Ltmp206-.Ltmp204), 0
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
.LBB45_15:                              // Block address taken
                                        // Label of block must be emitted
	cbnz	x21, .LBB45_4
.LBB45_16:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	mov	x0, x21
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB45_17:                              // Block address taken
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
	b.ne	.LBB45_8
// %bb.18:
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
	b	.LBB45_8
.LBB45_19:                              // Block address taken
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
.Ltmp209:
	dsb	sy
.Ltmp210:
	.section	.altinstructions,"a",@progbits
.Ltmp211:
	.word	.Ltmp209-.Ltmp211
.Ltmp212:
	.word	alt_cb_patch_nops-.Ltmp212
	.hword	32800
	.byte	.Ltmp210-.Ltmp209
	.byte	.Ltmp213-.Ltmp214
	.text

.Ltmp214:
.Ltmp213:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB45_10
.LBB45_20:                              // Block address taken
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
	b.ne	.LBB45_13
// %bb.21:
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
	b	.LBB45_13
.LBB45_22:                              // Block address taken
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
.Ltmp215:
	dsb	sy
.Ltmp216:
	.section	.altinstructions,"a",@progbits
.Ltmp217:
	.word	.Ltmp215-.Ltmp217
.Ltmp218:
	.word	alt_cb_patch_nops-.Ltmp218
	.hword	32800
	.byte	.Ltmp216-.Ltmp215
	.byte	.Ltmp219-.Ltmp220
	.text

.Ltmp220:
.Ltmp219:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB45_15
.Lfunc_end45:
	.size	_inline_copy_from_user, .Lfunc_end45-_inline_copy_from_user
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
	ldr	x20, [x9, #272]
	ldr	x9, [x8, #152]
	tbz	w9, #0, .LBB46_4
.LBB46_1:
	ldr	w1, [x8, #216]
	ldr	w8, [x19, #40]
	cmp	w8, w1
	b.eq	.LBB46_3
// %bb.2:
	mov	x0, x19
	bl	__vma_start_write
.LBB46_3:
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
.LBB46_4:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp221:
.Ltmp223:
	.word	.Ltmp222-.Ltmp223
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp224:
	.ascii	"include/linux/rwsem.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp225:
	.word	.Ltmp224-.Ltmp225
	.hword	88
	.hword	2305
	.p2align	2, 0x0
	.text
.Ltmp222:
	brk	#0x800
	//NO_APP
	ldr	x8, [x19, #16]
	b	.LBB46_1
.Lfunc_end46:
	.size	waveform_mmap, .Lfunc_end46-waveform_mmap
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_open
	.type	waveform_open,@function
	.word	2399652437                      // 0x8f07ca55
waveform_open:                          // @waveform_open
// %bb.0:
	mov	w0, wzr
	str	xzr, [x1, #112]
	ret
.Lfunc_end47:
	.size	waveform_open, .Lfunc_end47-waveform_open
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
	adrp	x1, .L.str.158
	add	x1, x1, :lo12:.L.str.158
	mov	x0, x19
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end48:
	.size	waveform_version_read, .Lfunc_end48-waveform_version_read
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
	adrp	x1, .L.str.158
	add	x1, x1, :lo12:.L.str.158
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
.Lfunc_end49:
	.size	pmic_name_read, .Lfunc_end49-pmic_name_read
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
	cbz	x0, .LBB50_2
// %bb.1:
	ldr	x8, [x0, #56]
	add	x1, x29, #28
	ldur	w16, [x8, #-4]
	movk	w17, #46199
	movk	w17, #3090, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp226
	brk	#0x8228
.Ltmp226:
	blr	x8
	b	.LBB50_3
.LBB50_2:
	ldr	x0, [x8, #32]
	add	x1, x29, #28
	bl	thermal_zone_get_temp
.LBB50_3:
	ldr	w2, [x29, #28]
	adrp	x1, .L.str.163
	add	x1, x1, :lo12:.L.str.163
	mov	x0, x19
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end50:
	.size	pmic_temp_read, .Lfunc_end50-pmic_temp_read
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
	cbz	x0, .LBB51_2
// %bb.1:
	ldr	x8, [x0, #64]
	ldur	w16, [x8, #-4]
	movk	w17, #30483
	movk	w17, #34500, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp227
	brk	#0x8228
.Ltmp227:
	blr	x8
	mov	w2, w0
	b	.LBB51_3
.LBB51_2:
	ldr	x0, [x8, #24]
	bl	regulator_get_voltage
	mov	w8, #19923                      // =0x4dd3
	movk	w8, #4194, lsl #16
	smull	x8, w0, w8
	lsr	x9, x8, #63
	asr	x8, x8, #38
	add	w2, w8, w9
.LBB51_3:
	adrp	x1, .L.str.163
	add	x1, x1, :lo12:.L.str.163
	mov	x0, x19
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end51:
	.size	pmic_vcom_read, .Lfunc_end51-pmic_vcom_read
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
	cbnz	w0, .LBB52_5
// %bb.1:
	ldr	x0, [x21, #16]
	cbz	x0, .LBB52_3
// %bb.2:
	ldr	w1, [x29, #28]
	bl	ebc_pmic_set_vcom
	cbz	w0, .LBB52_7
	b	.LBB52_4
.LBB52_3:
	ldr	x0, [x21, #24]
	ldr	w1, [x29, #28]
	bl	ebc_regulator_set_vcom
	cbz	w0, .LBB52_7
.LBB52_4:
	ldr	x0, [x21]
	adrp	x1, .L.str.167
	add	x1, x1, :lo12:.L.str.167
	bl	_dev_err
	b	.LBB52_6
.LBB52_5:
	ldr	x0, [x21]
	adrp	x1, .L.str.166
	add	x1, x1, :lo12:.L.str.166
	mov	x2, x20
	bl	_dev_err
.LBB52_6:
	mov	x19, #-1                        // =0xffffffffffffffff
.LBB52_7:
	mov	x0, x19
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end52:
	.size	pmic_vcom_write, .Lfunc_end52-pmic_vcom_write
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_version_read
	.type	ebc_version_read,@function
	.word	3745759836                      // 0xdf43c25c
ebc_version_read:                       // @ebc_version_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x0, x2
	adrp	x1, .L.str.158
	add	x1, x1, :lo12:.L.str.158
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	mov	x29, sp
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end53:
	.size	ebc_version_read, .Lfunc_end53-ebc_version_read
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
	adrp	x1, .L.str.163
	add	x1, x1, :lo12:.L.str.163
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	w8, [x8, #672]
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end54:
	.size	ebc_state_read, .Lfunc_end54-ebc_state_read
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
.Lfunc_end55:
	.size	ebc_buf_state_read, .Lfunc_end55-ebc_buf_state_read
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
	ldp	w10, w9, [x8, #116]
	mul	w9, w10, w9
	cbz	w9, .LBB56_4
// %bb.1:
	ldr	x10, [x8, #392]
	mov	w11, wzr
.LBB56_2:                               // =>This Inner Loop Header: Depth=1
	ldrb	w8, [x10, w11, sxtw]
	cbnz	w8, .LBB56_5
// %bb.3:                               //   in Loop: Header=BB56_2 Depth=1
	add	w11, w11, #1
	cmp	w9, w11
	b.ne	.LBB56_2
.LBB56_4:
	mov	w8, #2608                       // =0xa30
	mov	w0, #2                          // =0x2
	strb	wzr, [x2, #2]
	strh	w8, [x2]
	b	.LBB56_6
.LBB56_5:
	adrp	x1, .L.str.163
	add	x1, x1, :lo12:.L.str.163
	mov	x0, x2
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
.LBB56_6:
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end56:
	.size	auto_frame_state_read, .Lfunc_end56-auto_frame_state_read
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
	adrp	x1, .L.str.163
	add	x1, x1, :lo12:.L.str.163
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	w8, [x8, #852]
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end57:
	.size	ebc_debug_level_read, .Lfunc_end57-ebc_debug_level_read
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
	cbnz	w0, .LBB58_3
// %bb.1:
	ldr	w8, [x29, #28]
	str	w8, [x21, #852]
.LBB58_2:
	mov	x0, x19
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB58_3:
	ldr	x0, [x21, #328]
	adrp	x1, .L.str.166
	add	x1, x1, :lo12:.L.str.166
	mov	x2, x20
	bl	_dev_err
	mov	x19, #-1                        // =0xffffffffffffffff
	b	.LBB58_2
.Lfunc_end58:
	.size	ebc_debug_level_write, .Lfunc_end58-ebc_debug_level_write
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
	adrp	x1, .L.str.181
	add	x1, x1, :lo12:.L.str.181
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	ldr	x25, [x20, #352]
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	mov	x19, x3
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	bl	strstr
	cbnz	x0, .LBB59_2
.LBB59_1:
	mov	x0, x19
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB59_2:
	ldrb	w20, [x20, #336]
	adrp	x0, .L.str.182
	add	x0, x0, :lo12:.L.str.182
	mov	w1, w20
	bl	_printk
	mov	x21, xzr
	adrp	x22, .L.str.183
	add	x22, x22, :lo12:.L.str.183
	adrp	x23, .L.str.184
	add	x23, x23, :lo12:.L.str.184
.LBB59_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB59_4 Depth 2
                                        //       Child Loop BB59_6 Depth 3
	mov	x24, xzr
	mov	x26, x25
.LBB59_4:                               //   Parent Loop BB59_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB59_6 Depth 3
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cbz	w20, .LBB59_7
// %bb.5:                               //   in Loop: Header=BB59_4 Depth=2
	mov	x27, x20
	mov	x28, x26
.LBB59_6:                               //   Parent Loop BB59_3 Depth=1
                                        //     Parent Loop BB59_4 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x28]
	mov	x0, x23
	bl	_printk
	subs	x27, x27, #1
	add	x28, x28, #1024
	b.ne	.LBB59_6
.LBB59_7:                               //   in Loop: Header=BB59_4 Depth=2
	add	x24, x24, #1
	add	x26, x26, #32
	cmp	x24, #32
	b.ne	.LBB59_4
// %bb.8:                               //   in Loop: Header=BB59_3 Depth=1
	add	x21, x21, #1
	add	x25, x25, #1
	cmp	x21, #32
	b.ne	.LBB59_3
	b	.LBB59_1
.Lfunc_end59:
	.size	wf_data_write, .Lfunc_end59-wf_data_write
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
	adrp	x1, .L.str.181
	add	x1, x1, :lo12:.L.str.181
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	ldr	x25, [x20, #360]
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	mov	x19, x3
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	bl	strstr
	cbnz	x0, .LBB60_2
.LBB60_1:
	mov	x0, x19
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB60_2:
	ldrb	w20, [x20, #337]
	adrp	x0, .L.str.182
	add	x0, x0, :lo12:.L.str.182
	mov	w1, w20
	bl	_printk
	mov	x21, xzr
	adrp	x22, .L.str.183
	add	x22, x22, :lo12:.L.str.183
	adrp	x23, .L.str.184
	add	x23, x23, :lo12:.L.str.184
.LBB60_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB60_4 Depth 2
                                        //       Child Loop BB60_6 Depth 3
	mov	x24, xzr
	mov	x26, x25
.LBB60_4:                               //   Parent Loop BB60_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB60_6 Depth 3
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cbz	w20, .LBB60_7
// %bb.5:                               //   in Loop: Header=BB60_4 Depth=2
	mov	x27, x20
	mov	x28, x26
.LBB60_6:                               //   Parent Loop BB60_3 Depth=1
                                        //     Parent Loop BB60_4 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x28]
	mov	x0, x23
	bl	_printk
	subs	x27, x27, #1
	add	x28, x28, #1024
	b.ne	.LBB60_6
.LBB60_7:                               //   in Loop: Header=BB60_4 Depth=2
	add	x24, x24, #1
	add	x26, x26, #32
	cmp	x24, #32
	b.ne	.LBB60_4
// %bb.8:                               //   in Loop: Header=BB60_3 Depth=1
	add	x21, x21, #1
	add	x25, x25, #1
	cmp	x21, #32
	b.ne	.LBB60_3
	b	.LBB60_1
.Lfunc_end60:
	.size	overlay_wf_data_write, .Lfunc_end60-overlay_wf_data_write
                                        // -- End function
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
	cbnz	x0, .LBB61_2
// %bb.1:
	adrp	x0, .L.str.189
	add	x0, x0, :lo12:.L.str.189
	bl	_printk
	b	.LBB61_16
.LBB61_2:
	mov	x19, x0
	str	x0, [sp, #24]
	adrp	x1, .L.str.181
	add	x1, x1, :lo12:.L.str.181
	mov	x0, x21
	bl	strstr
	cbnz	x0, .LBB61_4
// %bb.3:
	adrp	x0, .L.str.192
	add	x0, x0, :lo12:.L.str.192
	b	.LBB61_15
.LBB61_4:
	adrp	x1, .L.str.190
	add	x1, x1, :lo12:.L.str.190
	sub	x2, x29, #4
	sub	x3, x29, #8
	mov	x0, x21
	bl	sscanf
	ldp	w3, w2, [x29, #-8]
	adrp	x0, .L.str.191
	add	x0, x0, :lo12:.L.str.191
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
	ldur	w1, [x29, #-4]
	cmp	w1, #8
	b.hi	.LBB61_14
// %bb.5:
	ldur	w2, [x29, #-8]
	cmp	w2, #50
	b.hi	.LBB61_14
// %bb.6:
	add	x0, sp, #8
	mov	w3, #32                         // =0x20
	str	x20, [sp]                       // 8-byte Folded Spill
	bl	epd_lut_get_original
	ldrb	w21, [sp, #8]
	adrp	x0, .L.str.182
	add	x0, x0, :lo12:.L.str.182
	mov	w1, w21
	bl	_printk
	mov	x22, xzr
	adrp	x23, .L.str.183
	add	x23, x23, :lo12:.L.str.183
	adrp	x24, .L.str.184
	add	x24, x24, :lo12:.L.str.184
	mov	x20, x19
.LBB61_7:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB61_8 Depth 2
                                        //       Child Loop BB61_10 Depth 3
	mov	x25, xzr
	mov	x26, x20
.LBB61_8:                               //   Parent Loop BB61_7 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB61_10 Depth 3
	mov	x0, x23
	mov	w1, w25
	mov	w2, w22
	bl	_printk
	cbz	w21, .LBB61_11
// %bb.9:                               //   in Loop: Header=BB61_8 Depth=2
	mov	x28, x21
	mov	x27, x26
.LBB61_10:                              //   Parent Loop BB61_7 Depth=1
                                        //     Parent Loop BB61_8 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x27]
	mov	x0, x24
	bl	_printk
	subs	x28, x28, #1
	add	x27, x27, #1024
	b.ne	.LBB61_10
.LBB61_11:                              //   in Loop: Header=BB61_8 Depth=2
	add	x25, x25, #1
	add	x26, x26, #32
	cmp	x25, #32
	b.ne	.LBB61_8
// %bb.12:                              //   in Loop: Header=BB61_7 Depth=1
	add	x22, x22, #1
	add	x20, x20, #1
	cmp	x22, #32
	b.ne	.LBB61_7
// %bb.13:
	mov	x0, x19
	bl	kfree
	ldr	x20, [sp]                       // 8-byte Folded Reload
	b	.LBB61_16
.LBB61_14:
	adrp	x0, .L.str.193
	add	x0, x0, :lo12:.L.str.193
.LBB61_15:
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
.LBB61_16:
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
.Lfunc_end61:
	.size	ori_wf_data_write, .Lfunc_end61-ori_wf_data_write
                                        // -- End function
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
	adrp	x1, .L.str.196
	add	x1, x1, :lo12:.L.str.196
	sub	x2, x29, #4
	add	x3, sp, #8
	add	x4, sp, #4
	stur	wzr, [x29, #-4]
	stp	wzr, wzr, [sp, #4]
	bl	sscanf
	cmp	w0, #2
	b.ne	.LBB62_2
// %bb.1:
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	str	w8, [x20, #948]
	str	w9, [x20, #952]
	b	.LBB62_3
.LBB62_2:
	mov	x19, #-22                       // =0xffffffffffffffea
.LBB62_3:
	mov	x0, x19
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #48
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end62:
	.size	record_pix_wf_write, .Lfunc_end62-record_pix_wf_write
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
	mov	w1, wzr
	mov	x29, sp
	mov	x0, x19
	bl	ebc_power_set
	ldr	x0, [x19, #16]
	mov	w8, #1                          // =0x1
	str	w8, [x19, #804]
	cbz	x0, .LBB63_2
// %bb.1:
	ldr	x8, [x0, #40]
	ldur	w16, [x8, #-4]
	movk	w17, #9139
	movk	w17, #22874, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp228
	brk	#0x8228
.Ltmp228:
	blr	x8
.LBB63_2:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.197
	add	x1, x1, :lo12:.L.str.197
	bl	_dev_info
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end63:
	.size	ebc_suspend, .Lfunc_end63-ebc_suspend
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
	cbz	x0, .LBB64_2
// %bb.1:
	ldr	x8, [x0, #48]
	ldur	w16, [x8, #-4]
	movk	w17, #9139
	movk	w17, #22874, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp229
	brk	#0x8228
.Ltmp229:
	blr	x8
.LBB64_2:
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.198
	add	x1, x1, :lo12:.L.str.198
	str	wzr, [x19, #804]
	bl	_dev_info
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end64:
	.size	ebc_resume, .Lfunc_end64-ebc_resume
                                        // -- End function
	.type	__gendwarfksyms_rule_245,@object // @__gendwarfksyms_rule_245
	.section	.discard.gendwarfksyms.kabi_rules,"a",@progbits
__gendwarfksyms_rule_245:
	.asciz	"1\000type_string\000s#sched_dl_entity\000structure_type sched_dl_entity { member s#rb_node rb_node data_member_location(0) , member t#u64 dl_runtime data_member_location(24) , member t#u64 dl_deadline data_member_location(32) , member t#u64 dl_period data_member_location(40) , member t#u64 dl_bw data_member_location(48) , member t#u64 dl_density data_member_location(56) , member t#s64 runtime data_member_location(64) , member t#u64 deadline data_member_location(72) , member base_type unsigned int byte_size(4) encoding(7) flags data_member_location(80) , member base_type unsigned int byte_size(4) encoding(7) dl_throttled bit_size(1) data_bit_offset(672) , member base_type unsigned int byte_size(4) encoding(7) dl_yielded bit_size(1) data_bit_offset(673) , member base_type unsigned int byte_size(4) encoding(7) dl_non_contending bit_size(1) data_bit_offset(674) , member base_type unsigned int byte_size(4) encoding(7) dl_overrun bit_size(1) data_bit_offset(675) , member base_type unsigned int byte_size(4) encoding(7) dl_server bit_size(1) data_bit_offset(676) , member base_type unsigned int byte_size(4) encoding(7) dl_server_active bit_size(1) data_bit_offset(677) , member base_type unsigned int byte_size(4) encoding(7) dl_defer bit_size(1) data_bit_offset(678) , member base_type unsigned int byte_size(4) encoding(7) dl_defer_armed bit_size(1) data_bit_offset(679) , member base_type unsigned int byte_size(4) encoding(7) dl_defer_running bit_size(1) data_bit_offset(680) , member s#hrtimer dl_timer data_member_location(88) , member s#hrtimer inactive_timer data_member_location(152) , member pointer_type { s#rq } rq data_member_location(216) , member t#dl_server_has_tasks_f server_has_tasks data_member_location(224) , member t#dl_server_pick_f server_pick_task data_member_location(232) , member pointer_type { s#sched_dl_entity } pi_se data_member_location(240) } byte_size(248)"
	.size	__gendwarfksyms_rule_245, 1893

	.type	__UNIQUE_ID___addressable_ebc_init604,@object // @__UNIQUE_ID___addressable_ebc_init604
	.section	.discard.addressable,"aw",@progbits
	.p2align	3, 0x0
__UNIQUE_ID___addressable_ebc_init604:
	.xword	ebc_init
	.size	__UNIQUE_ID___addressable_ebc_init604, 8

	.type	__exitcall_ebc_exit,@object     // @__exitcall_ebc_exit
	.section	.exitcall.exit,"aw",@progbits
	.p2align	3, 0x0
__exitcall_ebc_exit:
	.xword	ebc_exit
	.size	__exitcall_ebc_exit, 8

	.type	__UNIQUE_ID_author605,@object   // @__UNIQUE_ID_author605
	.section	.modinfo,"a",@progbits
__UNIQUE_ID_author605:
	.asciz	"rkebc.author=Zorro Liu <zorro.liu@rock-chips.com>"
	.size	__UNIQUE_ID_author605, 50

	.type	__UNIQUE_ID_description606,@object // @__UNIQUE_ID_description606
__UNIQUE_ID_description606:
	.asciz	"rkebc.description=ROCKCHIP EBC Driver"
	.size	__UNIQUE_ID_description606, 38

	.type	__UNIQUE_ID_file607,@object     // @__UNIQUE_ID_file607
__UNIQUE_ID_file607:
	.asciz	"rkebc.file=$EBC_DEV_PATH/rkebc"
	.size	__UNIQUE_ID_file607, 31

	.type	__UNIQUE_ID_license608,@object  // @__UNIQUE_ID_license608
__UNIQUE_ID_license608:
	.asciz	"rkebc.license=GPL v2"
	.size	__UNIQUE_ID_license608, 21

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
	.asciz	"8.13_y8"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"cpu-code"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"no chip info\n"
	.size	.L.str.5, 14

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"read chip info failed\n"
	.size	.L.str.6, 23

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"chip err\n"
	.size	.L.str.7, 10

	.type	global_ebc,@object              // @global_ebc
	.local	global_ebc
	.comm	global_ebc,8,8
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"ebc_tcon"
	.size	.L.str.8, 9

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"not find ebc tcon\n"
	.size	.L.str.9, 19

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
	.asciz	"ebc-repair-enable"
	.size	.L.str.21, 18

	.type	.L.str.22,@object               // @.str.22
.L.str.22:
	.asciz	"ebc-dmc-notify-enable"
	.size	.L.str.22, 22

	.type	.L.str.23,@object               // @.str.23
.L.str.23:
	.asciz	"failed to probe panel: %d\n"
	.size	.L.str.23, 27

	.type	.L.str.24,@object               // @.str.24
.L.str.24:
	.asciz	"buffer manage init failed\n"
	.size	.L.str.24, 27

	.type	.L.str.25,@object               // @.str.25
.L.str.25:
	.asciz	"lut table init failed\n"
	.size	.L.str.25, 23

	.type	.L.str.26,@object               // @.str.26
.L.str.26:
	.asciz	"task init failed\n"
	.size	.L.str.26, 18

	.type	.L.str.27,@object               // @.str.27
.L.str.27:
	.asciz	"rockchip ebc driver %s probe success\n"
	.size	.L.str.27, 38

	.type	ebc_auto_task,@object           // @ebc_auto_task
	.local	ebc_auto_task
	.comm	ebc_auto_task,8,8
	.type	.L.str.28,@object               // @.str.28
.L.str.28:
	.asciz	"overlay frame done\n"
	.size	.L.str.28, 20

	.type	.L.str.29,@object               // @.str.29
.L.str.29:
	.asciz	"auto task break\n"
	.size	.L.str.29, 17

	.type	.L.str.30,@object               // @.str.30
.L.str.30:
	.asciz	"auto frame done\n"
	.size	.L.str.30, 17

	.type	.L.str.31,@object               // @.str.31
.L.str.31:
	.asciz	"part task break\n"
	.size	.L.str.31, 17

	.type	.L.str.32,@object               // @.str.32
.L.str.32:
	.asciz	"frame done\n"
	.size	.L.str.32, 12

	.type	ebc_thread_wq,@object           // @ebc_thread_wq
	.data
	.p2align	3, 0x0
ebc_thread_wq:
	.zero	4
	.zero	4
	.xword	ebc_thread_wq+8
	.xword	ebc_thread_wq+8
	.size	ebc_thread_wq, 24

	.type	.L.str.34,@object               // @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"record pix pos wf: [%d, %d]: [%s]\n"
	.size	.L.str.34, 35

	.type	.L.str.35,@object               // @.str.35
.L.str.35:
	.asciz	"panel,width"
	.size	.L.str.35, 12

	.type	.L.str.36,@object               // @.str.36
.L.str.36:
	.asciz	"panel,height"
	.size	.L.str.36, 13

	.type	.L.str.37,@object               // @.str.37
.L.str.37:
	.asciz	"panel,vir_width"
	.size	.L.str.37, 16

	.type	.L.str.38,@object               // @.str.38
.L.str.38:
	.asciz	"panel,vir_height"
	.size	.L.str.38, 17

	.type	.L.str.39,@object               // @.str.39
.L.str.39:
	.asciz	"panel,sdck"
	.size	.L.str.39, 11

	.type	.L.str.40,@object               // @.str.40
.L.str.40:
	.asciz	"panel,lsl"
	.size	.L.str.40, 10

	.type	.L.str.41,@object               // @.str.41
.L.str.41:
	.asciz	"panel,lbl"
	.size	.L.str.41, 10

	.type	.L.str.42,@object               // @.str.42
.L.str.42:
	.asciz	"panel,ldl"
	.size	.L.str.42, 10

	.type	.L.str.43,@object               // @.str.43
.L.str.43:
	.asciz	"panel,lel"
	.size	.L.str.43, 10

	.type	.L.str.44,@object               // @.str.44
.L.str.44:
	.asciz	"panel,gdck-sta"
	.size	.L.str.44, 15

	.type	.L.str.45,@object               // @.str.45
.L.str.45:
	.asciz	"panel,lgonl"
	.size	.L.str.45, 12

	.type	.L.str.46,@object               // @.str.46
.L.str.46:
	.asciz	"panel,fsl"
	.size	.L.str.46, 10

	.type	.L.str.47,@object               // @.str.47
.L.str.47:
	.asciz	"panel,fbl"
	.size	.L.str.47, 10

	.type	.L.str.48,@object               // @.str.48
.L.str.48:
	.asciz	"panel,fdl"
	.size	.L.str.48, 10

	.type	.L.str.49,@object               // @.str.49
.L.str.49:
	.asciz	"panel,fel"
	.size	.L.str.49, 10

	.type	.L.str.50,@object               // @.str.50
.L.str.50:
	.asciz	"panel,panel_16bit"
	.size	.L.str.50, 18

	.type	.L.str.51,@object               // @.str.51
.L.str.51:
	.asciz	"panel,panel_color"
	.size	.L.str.51, 18

	.type	.L.str.52,@object               // @.str.52
.L.str.52:
	.asciz	"panel,mirror"
	.size	.L.str.52, 13

	.type	.L.str.53,@object               // @.str.53
.L.str.53:
	.asciz	"panel,width-mm"
	.size	.L.str.53, 15

	.type	.L.str.54,@object               // @.str.54
.L.str.54:
	.asciz	"panel,height-mm"
	.size	.L.str.54, 16

	.type	.L.str.55,@object               // @.str.55
.L.str.55:
	.asciz	"panel,disable_logo"
	.size	.L.str.55, 19

	.type	.L.str.56,@object               // @.str.56
.L.str.56:
	.asciz	"panel,rearrange"
	.size	.L.str.56, 16

	.type	.L.str.57,@object               // @.str.57
.L.str.57:
	.asciz	"panel,sdoe_mode"
	.size	.L.str.57, 16

	.type	.L.str.58,@object               // @.str.58
.L.str.58:
	.asciz	"panel,sdce_width"
	.size	.L.str.58, 17

	.type	.L.str.59,@object               // @.str.59
.L.str.59:
	.asciz	"panel,gds"
	.size	.L.str.59, 10

	.type	.L.str.60,@object               // @.str.60
.L.str.60:
	.asciz	"panel,gdl"
	.size	.L.str.60, 10

	.type	.L.str.61,@object               // @.str.61
.L.str.61:
	.asciz	"pmic-early-power-on"
	.size	.L.str.61, 20

	.type	.L.str.62,@object               // @.str.62
.L.str.62:
	.asciz	"too large resolution, not support\n"
	.size	.L.str.62, 35

	.type	.L.str.63,@object               // @.str.63
.L.str.63:
	.asciz	"memory-region"
	.size	.L.str.63, 14

	.type	.L.str.64,@object               // @.str.64
.L.str.64:
	.asciz	"Couldn't address to resource for reserved memory\n"
	.size	.L.str.64, 50

	.type	.L.str.65,@object               // @.str.65
.L.str.65:
	.asciz	"reserved memory not enough, need 0x%x\n"
	.size	.L.str.65, 39

	.type	.L.str.66,@object               // @.str.66
.L.str.66:
	.asciz	"Couldn't remap for reserved memory\n"
	.size	.L.str.66, 36

	.type	.L.str.67,@object               // @.str.67
.L.str.67:
	.asciz	"waveform-region"
	.size	.L.str.67, 16

	.type	.L.str.68,@object               // @.str.68
.L.str.68:
	.asciz	"wf,mode_table"
	.size	.L.str.68, 14

	.type	.L.str.69,@object               // @.str.69
.L.str.69:
	.asciz	"%s:%d: failed to get mem from reserved\n"
	.size	.L.str.69, 40

	.type	.L__func__.ebc_lut_table_init,@object // @__func__.ebc_lut_table_init
.L__func__.ebc_lut_table_init:
	.asciz	"ebc_lut_table_init"
	.size	.L__func__.ebc_lut_table_init, 19

	.type	.L.str.70,@object               // @.str.70
.L.str.70:
	.asciz	"Failed to read waveform from mem, we use waveform file from kernel file instead\n"
	.size	.L.str.70, 81

	.type	.L.str.71,@object               // @.str.71
.L.str.71:
	.asciz	"Failed to read waveform file from kernel, no waveform!!!\n"
	.size	.L.str.71, 58

	.type	.L.str.72,@object               // @.str.72
.L.str.72:
	.asciz	"ebc_task"
	.size	.L.str.72, 9

	.type	.L.str.73,@object               // @.str.73
.L.str.73:
	.asciz	"failed to create ebc_task thread\n"
	.size	.L.str.73, 34

	.type	.L.str.74,@object               // @.str.74
.L.str.74:
	.asciz	"ebc_taskup"
	.size	.L.str.74, 11

	.type	ebc_auto_assist_task,@object    // @ebc_auto_assist_task
	.local	ebc_auto_assist_task
	.comm	ebc_auto_assist_task,8,8
	.type	.L.str.75,@object               // @.str.75
.L.str.75:
	.asciz	"failed to create ebc_taskup thread\n"
	.size	.L.str.75, 36

	.type	.L.str.76,@object               // @.str.76
.L.str.76:
	.asciz	"ebc_thread"
	.size	.L.str.76, 11

	.type	ebc_task,@object                // @ebc_task
	.local	ebc_task
	.comm	ebc_task,8,8
	.type	.L.str.77,@object               // @.str.77
.L.str.77:
	.asciz	"failed to run ebc thread\n"
	.size	.L.str.77, 26

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

	.type	ebc_auto_assist_thread_sem,@object // @ebc_auto_assist_thread_sem
	.p2align	3, 0x0
ebc_auto_assist_thread_sem:
	.zero	4
	.word	1                               // 0x1
	.xword	ebc_auto_assist_thread_sem+8
	.xword	ebc_auto_assist_thread_sem+8
	.size	ebc_auto_assist_thread_sem, 24

	.type	.L.str.78,@object               // @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"ebc suspend, drop osd buf\n"
	.size	.L.str.78, 27

	.type	.L.str.79,@object               // @.str.79
.L.str.79:
	.asciz	"full win and prev mode not overlay, drop this osd buf\n"
	.size	.L.str.79, 55

	.type	.L.str.80,@object               // @.str.80
.L.str.80:
	.asciz	"break from part work, frame left = %d\n"
	.size	.L.str.80, 39

	.type	.L.str.81,@object               // @.str.81
.L.str.81:
	.asciz	"control bg update under overlay mode, overlay_bg_update=0\n"
	.size	.L.str.81, 59

	.type	.L.str.82,@object               // @.str.82
.L.str.82:
	.asciz	"break from fast mode, process it\n"
	.size	.L.str.82, 34

	.type	.L.str.83,@object               // @.str.83
.L.str.83:
	.asciz	"overlay mode start, frame_total=%d, bw_frame = %d\n"
	.size	.L.str.83, 51

	.type	.L.str.84,@object               // @.str.84
.L.str.84:
	.asciz	"frame start under overlay, mode = %d, framecount = %d\n"
	.size	.L.str.84, 55

	.type	.L.str.85,@object               // @.str.85
.L.str.85:
	.asciz	"mode change, force update lut, mode = %d, framecount = %d\n"
	.size	.L.str.85, 59

	.type	.L.str.86,@object               // @.str.86
.L.str.86:
	.asciz	"update frame under overlay, mode = %d, framecount = %d\n"
	.size	.L.str.86, 56

	.type	.L.str.87,@object               // @.str.87
.L.str.87:
	.asciz	"ebc is busy now, waiting prev mode end...\n"
	.size	.L.str.87, 43

	.type	.L.str.88,@object               // @.str.88
.L.str.88:
	.asciz	"prev refresh mode end\n"
	.size	.L.str.88, 23

	.type	.L.str.89,@object               // @.str.89
.L.str.89:
	.asciz	"auto mode start, frame_total=%d\n"
	.size	.L.str.89, 33

	.type	.L.str.90,@object               // @.str.90
.L.str.90:
	.asciz	"last frame not complete, left = %d, change to force full\n"
	.size	.L.str.90, 58

	.type	.L.str.91,@object               // @.str.91
.L.str.91:
	.asciz	"check_part_mode==0, no need refresh\n"
	.size	.L.str.91, 37

	.type	.L.str.92,@object               // @.str.92
.L.str.92:
	.asciz	"check difference is 0, no need refresh\n"
	.size	.L.str.92, 40

	.type	.L.str.93,@object               // @.str.93
.L.str.93:
	.asciz	"change from fast mode\n"
	.size	.L.str.93, 23

	.type	.L.str.94,@object               // @.str.94
.L.str.94:
	.asciz	"frame start, mode = %d, framecount = %d vs %d\n"
	.size	.L.str.94, 47

	.type	.L.str.95,@object               // @.str.95
.L.str.95:
	.asciz	"update repair buf\n"
	.size	.L.str.95, 19

	.type	.L.str.96,@object               // @.str.96
.L.str.96:
	.asciz	"waiting frame done\n"
	.size	.L.str.96, 20

	.type	.L.str.97,@object               // @.str.97
.L.str.97:
	.asciz	"----update repair buf timeout----\n"
	.size	.L.str.97, 35

	.type	.L.str.98,@object               // @.str.98
.L.str.98:
	.asciz	"break from part work, do something before turn to overlay work\n"
	.size	.L.str.98, 64

	.type	.L.str.99,@object               // @.str.99
.L.str.99:
	.asciz	"no buffer or next mode change, do repair..........\n"
	.size	.L.str.99, 52

	.type	.L.str.100,@object              // @.str.100
.L.str.100:
	.asciz	"next mode change, do repair..........\n"
	.size	.L.str.100, 39

	.type	.L.str.101,@object              // @.str.101
.L.str.101:
	.asciz	"no buffer, do last ghost remove..........\n"
	.size	.L.str.101, 43

	.type	.L.str.102,@object              // @.str.102
.L.str.102:
	.asciz	"frame start, mode = %d, framecount = %d\n"
	.size	.L.str.102, 41

	.type	.L.str.103,@object              // @.str.103
.L.str.103:
	.asciz	"ghost remove break, frame_left %d\n"
	.size	.L.str.103, 35

	.type	.L.str.104,@object              // @.str.104
.L.str.104:
	.asciz	"ebc buffer mode %d error!!!\n"
	.size	.L.str.104, 29

	.type	.L.str.105,@object              // @.str.105
.L.str.105:
	.asciz	"force temperature = %d\n"
	.size	.L.str.105, 24

	.type	.L.str.106,@object              // @.str.106
.L.str.106:
	.asciz	"temperature = %d, out of range0~50 ,use 0 \n"
	.size	.L.str.106, 44

	.type	.L.str.107,@object              // @.str.107
.L.str.107:
	.asciz	"temperature = %d, out of range0~50 ,use 50 \n"
	.size	.L.str.107, 45

	.type	.L.str.108,@object              // @.str.108
.L.str.108:
	.asciz	"ebc_pmic_read_temp failed, ret = %d, use 25 \n"
	.size	.L.str.108, 46

	.type	.L.str.109,@object              // @.str.109
.L.str.109:
	.asciz	"lut update use temperature_fix = %d, temperature = %d\n"
	.size	.L.str.109, 55

	.type	.L.str.110,@object              // @.str.110
.L.str.110:
	.asciz	"lut update use temperature = %d, temperature_fix = %d\n"
	.size	.L.str.110, 55

	.type	.L.str.111,@object              // @.str.111
.L.str.111:
	.asciz	"get lut data failed\n"
	.size	.L.str.111, 21

	.type	.L.str.112,@object              // @.str.112
.L.str.112:
	.asciz	"%s: overlay no need to update\n"
	.size	.L.str.112, 31

	.type	.L__func__.ebc_frame_start,@object // @__func__.ebc_frame_start
.L__func__.ebc_frame_start:
	.asciz	"ebc_frame_start"
	.size	.L__func__.ebc_frame_start, 16

	.type	.L.str.113,@object              // @.str.113
.L.str.113:
	.asciz	"%s: auto no need to update\n"
	.size	.L.str.113, 28

	.type	.L.str.114,@object              // @.str.114
.L.str.114:
	.asciz	"record pix pos wf: [%d, %d]: [%02x --> %02x]\n"
	.size	.L.str.114, 46

	.type	.L.str.115,@object              // @.str.115
.L.str.115:
	.asciz	"%s: overlay bg no need to update, overlay_bg_update=1\n"
	.size	.L.str.115, 55

	.type	.L__func__.ebc_overlay_bg_frame_start,@object // @__func__.ebc_overlay_bg_frame_start
.L__func__.ebc_overlay_bg_frame_start:
	.asciz	"ebc_overlay_bg_frame_start"
	.size	.L__func__.ebc_overlay_bg_frame_start, 27

	.type	.L.str.116,@object              // @.str.116
.L.str.116:
	.asciz	"ebc hw power on res:%d\n"
	.size	.L.str.116, 24

	.type	.L.str.117,@object              // @.str.117
.L.str.117:
	.asciz	"ebc hw power off res:%d\n"
	.size	.L.str.117, 25

	.type	.L.str.118,@object              // @.str.118
.L.str.118:
	.asciz	"ebc"
	.size	.L.str.118, 4

	.type	.L.str.119,@object              // @.str.119
.L.str.119:
	.asciz	"ebc_frame_control_timeout, overlay_bg_update=1\n"
	.size	.L.str.119, 48

	.type	.L.str.120,@object              // @.str.120
.L.str.120:
	.asciz	"ebc_overlay_enable_timeout\n"
	.size	.L.str.120, 28

	.type	.L.str.121,@object              // @.str.121
.L.str.121:
	.asciz	"ulogo_addr="
	.size	.L.str.121, 12

	.type	.L.str.122,@object              // @.str.122
.L.str.122:
	.asciz	"klogo_addr="
	.size	.L.str.122, 12

	.type	.L.str.123,@object              // @.str.123
.L.str.123:
	.asciz	"ulogo_addr=0x%x"
	.size	.L.str.123, 16

	.type	.L.str.124,@object              // @.str.124
.L.str.124:
	.asciz	"have ulogo display, ulogo addr = 0x%x\n"
	.size	.L.str.124, 39

	.type	.L.str.125,@object              // @.str.125
.L.str.125:
	.asciz	"malloc ulogo buffer failed\n"
	.size	.L.str.125, 28

	.type	.L.str.126,@object              // @.str.126
.L.str.126:
	.asciz	"klogo_addr=0x%x"
	.size	.L.str.126, 16

	.type	.L.str.127,@object              // @.str.127
.L.str.127:
	.asciz	"need show klogo, klogo addr = 0x%x\n"
	.size	.L.str.127, 36

	.type	.L.str.128,@object              // @.str.128
.L.str.128:
	.asciz	"malloc klogo buffer failed\n"
	.size	.L.str.128, 28

	.type	.L.str.129,@object              // @.str.129
.L.str.129:
	.asciz	"no uboot logo, panel init\n"
	.size	.L.str.129, 27

	.type	.L.str.130,@object              // @.str.130
.L.str.130:
	.asciz	"ebc_dev_logo"
	.size	.L.str.130, 13

	.type	.L.str.131,@object              // @.str.131
.L.str.131:
	.asciz	"ebc_dev_reset"
	.size	.L.str.131, 14

	.type	ebc_misc,@object                // @ebc_misc
	.data
	.p2align	3, 0x0
ebc_misc:
	.word	243                             // 0xf3
	.zero	4
	.xword	.L.str.118
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
	.xword	ebc_mmap
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

	.type	.L.str.134,@object              // @.str.134
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.134:
	.asciz	"%s: argp NULL\n"
	.size	.L.str.134, 15

	.type	.L__func__.ebc_io_ctl,@object   // @__func__.ebc_io_ctl
.L__func__.ebc_io_ctl:
	.asciz	"ebc_io_ctl"
	.size	.L__func__.ebc_io_ctl, 11

	.type	.L.str.135,@object              // @.str.135
.L.str.135:
	.asciz	"enable bg control\n"
	.size	.L.str.135, 19

	.type	.L.str.136,@object              // @.str.136
.L.str.136:
	.asciz	"disable bg control\n"
	.size	.L.str.136, 20

	.type	.L.str.137,@object              // @.str.137
.L.str.137:
	.asciz	"enable ebc overlay, you can use osd buf to show something over the system display\n"
	.size	.L.str.137, 83

	.type	.L.str.138,@object              // @.str.138
.L.str.138:
	.asciz	"disable ebc overlay\n"
	.size	.L.str.138, 21

	.type	.L.str.139,@object              // @.str.139
.L.str.139:
	.asciz	"EBC_GET_BUFFER_INFO failed\n"
	.size	.L.str.139, 28

	.type	.L.str.140,@object              // @.str.140
.L.str.140:
	.asciz	"EBC_SET_DIFF_PERCENT = %d\n"
	.size	.L.str.140, 27

	.type	.L.str.141,@object              // @.str.141
.L.str.141:
	.asciz	"EBC_FB_BLANK\n"
	.size	.L.str.141, 14

	.type	.L.str.142,@object              // @.str.142
.L.str.142:
	.asciz	"EBC_FB_UNBLANK\n"
	.size	.L.str.142, 16

	.type	.L.str.143,@object              // @.str.143
.L.str.143:
	.asciz	"EBC_ENABLE_REPAIR = %d\n"
	.size	.L.str.143, 24

	.type	.L.str.144,@object              // @.str.144
.L.str.144:
	.asciz	"EBC_BALANCE_CTL = %d\n"
	.size	.L.str.144, 22

	.type	.L.str.145,@object              // @.str.145
.L.str.145:
	.asciz	"EBC_SET_FULL_REFRESH_WIDTH = %d\n"
	.size	.L.str.145, 33

	.type	.L.str.146,@object              // @.str.146
.L.str.146:
	.asciz	"EBC_SET_FULL_REFRESH_TYPE = %d\n"
	.size	.L.str.146, 32

	.type	.L.str.147,@object              // @.str.147
.L.str.147:
	.asciz	"EBC_SET_FORCE_TEMPERATURE = %d\n"
	.size	.L.str.147, 32

	.type	.L.str.148,@object              // @.str.148
.L.str.148:
	.asciz	"EBC_ENABLE_WAVEFORM_FIX = %d\n"
	.size	.L.str.148, 30

	.type	.L.str.149,@object              // @.str.149
.L.str.149:
	.asciz	"EBC_SET_REGAL_TYPE = %d\n"
	.size	.L.str.149, 25

	.type	.L.str.150,@object              // @.str.150
.L.str.150:
	.asciz	"EBC_FORCE_FULL_USE_REGAL = %d\n"
	.size	.L.str.150, 31

	.type	.L.str.151,@object              // @.str.151
.L.str.151:
	.asciz	"%s: unknown cmd\n"
	.size	.L.str.151, 17

	.type	get_file.__already_done,@object // @get_file.__already_done
	.section	.data..once,"aw",@progbits
get_file.__already_done:
	.byte	0                               // 0x0
	.size	get_file.__already_done, 1

	.type	.L.str.152,@object              // @.str.152
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.152:
	.asciz	"struct file::f_count incremented from zero; use-after-free condition present!\n"
	.size	.L.str.152, 79

	.type	.L.str.153,@object              // @.str.153
.L.str.153:
	.asciz	"waveform"
	.size	.L.str.153, 9

	.type	waveform_misc,@object           // @waveform_misc
	.data
	.p2align	3, 0x0
waveform_misc:
	.word	244                             // 0xf4
	.zero	4
	.xword	.L.str.153
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

	.type	.L.str.156,@object              // @.str.156
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.156:
	.asciz	"waveform_version"
	.size	.L.str.156, 17

	.type	dev_attr_waveform_version,@object // @dev_attr_waveform_version
	.data
	.p2align	3, 0x0
dev_attr_waveform_version:
	.xword	.L.str.156
	.hword	292                             // 0x124
	.zero	6
	.xword	waveform_version_read
	.xword	0
	.size	dev_attr_waveform_version, 32

	.type	.L.str.158,@object              // @.str.158
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.158:
	.asciz	"%s\n"
	.size	.L.str.158, 4

	.type	.L.str.159,@object              // @.str.159
.L.str.159:
	.asciz	"pmic_name"
	.size	.L.str.159, 10

	.type	dev_attr_pmic_name,@object      // @dev_attr_pmic_name
	.data
	.p2align	3, 0x0
dev_attr_pmic_name:
	.xword	.L.str.159
	.hword	292                             // 0x124
	.zero	6
	.xword	pmic_name_read
	.xword	0
	.size	dev_attr_pmic_name, 32

	.type	.L.str.161,@object              // @.str.161
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.161:
	.asciz	"pmic_temp"
	.size	.L.str.161, 10

	.type	dev_attr_pmic_temp,@object      // @dev_attr_pmic_temp
	.data
	.p2align	3, 0x0
dev_attr_pmic_temp:
	.xword	.L.str.161
	.hword	292                             // 0x124
	.zero	6
	.xword	pmic_temp_read
	.xword	0
	.size	dev_attr_pmic_temp, 32

	.type	.L.str.163,@object              // @.str.163
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.163:
	.asciz	"%d\n"
	.size	.L.str.163, 4

	.type	.L.str.164,@object              // @.str.164
.L.str.164:
	.asciz	"pmic_vcom"
	.size	.L.str.164, 10

	.type	dev_attr_pmic_vcom,@object      // @dev_attr_pmic_vcom
	.data
	.p2align	3, 0x0
dev_attr_pmic_vcom:
	.xword	.L.str.164
	.hword	420                             // 0x1a4
	.zero	6
	.xword	pmic_vcom_read
	.xword	pmic_vcom_write
	.size	dev_attr_pmic_vcom, 32

	.type	.L.str.166,@object              // @.str.166
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.166:
	.asciz	"invalid value = %s\n"
	.size	.L.str.166, 20

	.type	.L.str.167,@object              // @.str.167
.L.str.167:
	.asciz	"set vcom value failed\n"
	.size	.L.str.167, 23

	.type	.L.str.168,@object              // @.str.168
.L.str.168:
	.asciz	"ebc_version"
	.size	.L.str.168, 12

	.type	dev_attr_ebc_version,@object    // @dev_attr_ebc_version
	.data
	.p2align	3, 0x0
dev_attr_ebc_version:
	.xword	.L.str.168
	.hword	292                             // 0x124
	.zero	6
	.xword	ebc_version_read
	.xword	0
	.size	dev_attr_ebc_version, 32

	.type	.L.str.170,@object              // @.str.170
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.170:
	.asciz	"ebc_state"
	.size	.L.str.170, 10

	.type	dev_attr_ebc_state,@object      // @dev_attr_ebc_state
	.data
	.p2align	3, 0x0
dev_attr_ebc_state:
	.xword	.L.str.170
	.hword	292                             // 0x124
	.zero	6
	.xword	ebc_state_read
	.xword	0
	.size	dev_attr_ebc_state, 32

	.type	.L.str.172,@object              // @.str.172
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.172:
	.asciz	"ebc_buf_state"
	.size	.L.str.172, 14

	.type	dev_attr_ebc_buf_state,@object  // @dev_attr_ebc_buf_state
	.data
	.p2align	3, 0x0
dev_attr_ebc_buf_state:
	.xword	.L.str.172
	.hword	292                             // 0x124
	.zero	6
	.xword	ebc_buf_state_read
	.xword	0
	.size	dev_attr_ebc_buf_state, 32

	.type	.L.str.174,@object              // @.str.174
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.174:
	.asciz	"auto_frame_state"
	.size	.L.str.174, 17

	.type	dev_attr_auto_frame_state,@object // @dev_attr_auto_frame_state
	.data
	.p2align	3, 0x0
dev_attr_auto_frame_state:
	.xword	.L.str.174
	.hword	292                             // 0x124
	.zero	6
	.xword	auto_frame_state_read
	.xword	0
	.size	dev_attr_auto_frame_state, 32

	.type	.L.str.176,@object              // @.str.176
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.176:
	.asciz	"0\n"
	.size	.L.str.176, 3

	.type	.L.str.177,@object              // @.str.177
.L.str.177:
	.asciz	"ebc_debug_level"
	.size	.L.str.177, 16

	.type	dev_attr_ebc_debug_level,@object // @dev_attr_ebc_debug_level
	.data
	.p2align	3, 0x0
dev_attr_ebc_debug_level:
	.xword	.L.str.177
	.hword	420                             // 0x1a4
	.zero	6
	.xword	ebc_debug_level_read
	.xword	ebc_debug_level_write
	.size	dev_attr_ebc_debug_level, 32

	.type	.L.str.179,@object              // @.str.179
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.179:
	.asciz	"wf_data"
	.size	.L.str.179, 8

	.type	dev_attr_wf_data,@object        // @dev_attr_wf_data
	.data
	.p2align	3, 0x0
dev_attr_wf_data:
	.xword	.L.str.179
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	wf_data_write
	.size	dev_attr_wf_data, 32

	.type	.L.str.181,@object              // @.str.181
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.181:
	.asciz	"603893"
	.size	.L.str.181, 7

	.type	.L.str.182,@object              // @.str.182
.L.str.182:
	.asciz	"lutdata: %d frames\n"
	.size	.L.str.182, 20

	.type	.L.str.183,@object              // @.str.183
.L.str.183:
	.asciz	"[%d-->%d]: \n"
	.size	.L.str.183, 13

	.type	.L.str.184,@object              // @.str.184
.L.str.184:
	.asciz	"\001c\0017%d, "
	.size	.L.str.184, 9

	.type	.L.str.185,@object              // @.str.185
.L.str.185:
	.asciz	"overlay_wf_data"
	.size	.L.str.185, 16

	.type	dev_attr_overlay_wf_data,@object // @dev_attr_overlay_wf_data
	.data
	.p2align	3, 0x0
dev_attr_overlay_wf_data:
	.xword	.L.str.185
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	overlay_wf_data_write
	.size	dev_attr_overlay_wf_data, 32

	.type	.L.str.187,@object              // @.str.187
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.187:
	.asciz	"ori_wf_data"
	.size	.L.str.187, 12

	.type	dev_attr_ori_wf_data,@object    // @dev_attr_ori_wf_data
	.data
	.p2align	3, 0x0
dev_attr_ori_wf_data:
	.xword	.L.str.187
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	ori_wf_data_write
	.size	dev_attr_ori_wf_data, 32

	.type	.L.str.189,@object              // @.str.189
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.189:
	.asciz	"malloc wf_table buffer failed\n"
	.size	.L.str.189, 31

	.type	.L.str.190,@object              // @.str.190
.L.str.190:
	.asciz	"603893 %d %d"
	.size	.L.str.190, 13

	.type	.L.str.191,@object              // @.str.191
.L.str.191:
	.asciz	"%s: wf mode %d on temp %d\n"
	.size	.L.str.191, 27

	.type	.L__func__.ori_wf_data_write,@object // @__func__.ori_wf_data_write
.L__func__.ori_wf_data_write:
	.asciz	"ori_wf_data_write"
	.size	.L__func__.ori_wf_data_write, 18

	.type	.L.str.192,@object              // @.str.192
.L.str.192:
	.asciz	"%s: err code\n"
	.size	.L.str.192, 14

	.type	.L.str.193,@object              // @.str.193
.L.str.193:
	.asciz	"%s: err lut_type or temp\n"
	.size	.L.str.193, 26

	.type	.L.str.194,@object              // @.str.194
.L.str.194:
	.asciz	"record_pix_wf"
	.size	.L.str.194, 14

	.type	dev_attr_record_pix_wf,@object  // @dev_attr_record_pix_wf
	.data
	.p2align	3, 0x0
dev_attr_record_pix_wf:
	.xword	.L.str.194
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	record_pix_wf_write
	.size	dev_attr_record_pix_wf, 32

	.type	.L.str.196,@object              // @.str.196
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.196:
	.asciz	"%d,%d%n"
	.size	.L.str.196, 8

	.type	.L.str.197,@object              // @.str.197
.L.str.197:
	.asciz	"device suspend\n"
	.size	.L.str.197, 16

	.type	.L.str.198,@object              // @.str.198
.L.str.198:
	.asciz	"device resume\n"
	.size	.L.str.198, 15

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ebc_exit
	.addrsig_sym ebc_init
	.addrsig_sym ebc_probe
	.addrsig_sym ebc_remove
	.addrsig_sym frame_done_callback
	.addrsig_sym ebc_auto_tast_function
	.addrsig_sym ebc_auto_assist_tast_function
	.addrsig_sym ebc_thread
	.addrsig_sym ebc_frame_control_timeout
	.addrsig_sym ebc_overlay_enable_timeout
	.addrsig_sym ebc_frame_timeout
	.addrsig_sym ebc_io_ctl
	.addrsig_sym ebc_mmap
	.addrsig_sym ebc_open
	.addrsig_sym ebc_release
	.addrsig_sym waveform_mmap
	.addrsig_sym waveform_open
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
	.addrsig_sym __gendwarfksyms_rule_245
	.addrsig_sym __UNIQUE_ID___addressable_ebc_init604
	.addrsig_sym __exitcall_ebc_exit
	.addrsig_sym __UNIQUE_ID_author605
	.addrsig_sym __UNIQUE_ID_description606
	.addrsig_sym __UNIQUE_ID_file607
	.addrsig_sym __UNIQUE_ID_license608
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

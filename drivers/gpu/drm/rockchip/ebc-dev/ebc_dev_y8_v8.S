// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.arch armv8-a
	.file	"ebc_dev_y8.c"
#APP
	.section	".initcall6s.init", "a"	
__initcall_ebc_init6s:			
.long	ebc_init - .			
.previous					

#NO_APP
	.text
	.align	2
	.p2align 3,,7
	.type	get_overlay_image_area, %function
get_overlay_image_area:
	stp	x29, x30, [sp, -144]!
	adrp	x6, .LANCHOR0
	add	x29, sp, 0
	ldr	x7, [x5, 232]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	stp	x4, x3, [x29, 104]
	ldr	w3, [x7, 48]
	ldr	w4, [x7, 56]
	cmp	w3, 0
	add	w22, w3, 7
	csel	w22, w22, w3, lt
	add	w17, w4, 7
	cmp	w4, 0
	ldr	x6, [x6, #:lo12:.LANCHOR0]
	csel	w17, w17, w4, lt
	ldr	w25, [x7, 60]
	ldp	w4, w3, [x5, 80]
	asr	w17, w17, 3
	ldr	w8, [x6, 196]
	add	w17, w17, 1
	cmp	w3, 0
	add	w23, w3, 7
	csel	w23, w23, w3, lt
	ldr	w24, [x6, 116]
	asr	w23, w23, 3
	ldr	w20, [x7, 52]
	cmp	w17, w23
	sub	w7, w23, #1
	csel	w17, w7, w17, ge
	cmp	w25, w4
	sub	w4, w4, #1
	lsr	w24, w24, 2
	asr	w22, w22, 3
	csel	w25, w4, w25, ge
	cbz	w8, .L4
	add	x6, x6, 40
	ldr	w4, [x6, 80]
	sub	w4, w4, #1
	sub	w4, w4, w20
	mul	w4, w4, w24
	neg	w24, w24
	add	x30, x0, x4
.L5:
	cmp	w25, w20
	blt	.L1
	lsl	w0, w22, 3
	mul	w21, w20, w23
	sxtw	x0, w0
	mov	w19, 1
	str	x0, [x29, 136]
	sxtw	x24, w24
	sxtw	x0, w22
	mov	w26, w19
	mov	w9, w3
	str	x0, [x29, 128]
	lsl	w0, w22, 1
	str	w0, [x29, 124]
	.p2align 2
.L39:
	ldr	x0, [x29, 128]
	mul	w9, w20, w9
	cmp	w17, w22
	add	x14, x0, x21, sxtw
	ldr	x0, [x29, 136]
	lsl	x14, x14, 3
	add	x18, x1, x14
	add	x14, x2, x14
	add	x9, x0, x9, sxtw
	blt	.L38
	ldr	x0, [x29, 112]
	add	x9, x9, 8
	ldr	w12, [x29, 124]
	mov	w11, w22
	add	x6, x0, x9
	ldr	x0, [x29, 104]
	mov	x8, 0
	add	x9, x0, x9
	.p2align 2
.L37:
	ldr	x4, [x18, x8]
	ldr	x0, [x14, x8]
	cmp	x4, x0
	beq	.L10
	str	w19, [x5, 60]
	eor	x3, x4, x0
	add	x10, x30, x12, sxtw
	and	x7, x3, 255
	cbz	x7, .L41
	ldrb	w15, [x6, -8]
	cbnz	w15, .L41
	ldrb	w7, [x9, -8]
	ubfx	x16, x4, 3, 5
	cmp	w7, 0
	add	x7, x5, x7, sxtw 3
	ldr	x13, [x7, 120]
	lsr	x7, x0, 3
	ubfiz	x7, x7, 5, 5
	orr	x7, x7, x16
	ldrb	w16, [x5, 57]
	ldrb	w7, [x13, x7]
	ldrb	w13, [x5, 56]
	csel	w13, w13, w16, eq
	cmp	w13, 1
	beq	.L92
	mov	w15, 1
	mov	w13, 0
.L13:
	strb	w15, [x6, -8]
.L11:
	tst	x3, 65280
	beq	.L14
	ldrb	w16, [x6, -7]
	cbnz	w16, .L14
	ldrb	w15, [x9, -7]
	ubfx	x28, x4, 11, 5
	cmp	w15, 0
	add	x15, x5, x15, sxtw 3
	ldr	x27, [x15, 120]
	lsr	x15, x0, 11
	ubfiz	x15, x15, 5, 5
	orr	x15, x15, x28
	ldrb	w15, [x27, x15]
	ldrb	w27, [x5, 57]
	ubfiz	w15, w15, 2, 6
	orr	w7, w15, w7
	ldrb	w15, [x5, 56]
	csel	w15, w15, w27, eq
	cmp	w15, 1
	beq	.L93
	mov	w16, 1
.L16:
	strb	w16, [x6, -7]
.L14:
	tst	x3, 16711680
	beq	.L17
	ldrb	w16, [x6, -6]
	cbnz	w16, .L17
	ldrb	w15, [x9, -6]
	ubfx	x28, x4, 19, 5
	cmp	w15, 0
	add	x15, x5, x15, sxtw 3
	ldr	x27, [x15, 120]
	lsr	x15, x0, 19
	ubfiz	x15, x15, 5, 5
	orr	x15, x15, x28
	ldrb	w15, [x27, x15]
	ldrb	w27, [x5, 57]
	ubfiz	w15, w15, 4, 4
	orr	w7, w15, w7
	ldrb	w15, [x5, 56]
	csel	w15, w15, w27, eq
	cmp	w15, 1
	beq	.L94
	mov	w16, 1
.L19:
	strb	w16, [x6, -6]
.L17:
	tst	x3, 4278190080
	beq	.L20
	ldrb	w16, [x6, -5]
	cbnz	w16, .L20
	ldrb	w15, [x9, -5]
	lsr	w28, w4, 27
	cmp	w15, 0
	add	x15, x5, x15, sxtw 3
	ldr	x27, [x15, 120]
	lsr	x15, x0, 27
	ubfiz	x15, x15, 5, 5
	orr	x15, x15, x28
	ldrb	w15, [x27, x15]
	ldrb	w27, [x5, 57]
	ubfiz	w15, w15, 6, 2
	orr	w7, w15, w7
	ldrb	w15, [x5, 56]
	csel	w15, w15, w27, eq
	cmp	w15, 1
	beq	.L95
	mov	w16, 1
.L22:
	strb	w16, [x6, -5]
.L20:
	ldrb	w15, [x10]
	tst	x3, 1095216660480
	orr	w7, w7, w15
	strb	w7, [x10]
	mov	w7, 0
	beq	.L23
	ldrb	w15, [x6, -4]
	cbnz	w15, .L23
	ldrb	w7, [x9, -4]
	ubfx	x27, x4, 35, 5
	cmp	w7, 0
	add	x7, x5, x7, sxtw 3
	ldr	x16, [x7, 120]
	lsr	x7, x0, 35
	ubfiz	x7, x7, 5, 5
	orr	x7, x7, x27
	ldrb	w27, [x5, 57]
	ldrb	w7, [x16, x7]
	ldrb	w16, [x5, 56]
	csel	w16, w16, w27, eq
	cmp	w16, 1
	beq	.L96
	mov	w15, 1
.L25:
	strb	w15, [x6, -4]
.L23:
	tst	x3, 280375465082880
	beq	.L26
	ldrb	w16, [x6, -3]
	cbnz	w16, .L26
	ldrb	w15, [x9, -3]
	ubfx	x28, x4, 43, 5
	cmp	w15, 0
	add	x15, x5, x15, sxtw 3
	ldr	x27, [x15, 120]
	lsr	x15, x0, 43
	ubfiz	x15, x15, 5, 5
	orr	x15, x15, x28
	ldrb	w15, [x27, x15]
	ldrb	w27, [x5, 57]
	ubfiz	w15, w15, 2, 6
	orr	w7, w15, w7
	ldrb	w15, [x5, 56]
	csel	w15, w15, w27, eq
	cmp	w15, 1
	beq	.L97
	mov	w16, 1
.L28:
	strb	w16, [x6, -3]
.L26:
	tst	x3, 71776119061217280
	beq	.L29
	ldrb	w16, [x6, -2]
	cbnz	w16, .L29
	ldrb	w15, [x9, -2]
	ubfx	x28, x4, 51, 5
	cmp	w15, 0
	add	x15, x5, x15, sxtw 3
	ldr	x27, [x15, 120]
	lsr	x15, x0, 51
	ubfiz	x15, x15, 5, 5
	orr	x15, x15, x28
	ldrb	w15, [x27, x15]
	ldrb	w27, [x5, 57]
	ubfiz	w15, w15, 4, 4
	orr	w7, w15, w7
	ldrb	w15, [x5, 56]
	csel	w15, w15, w27, eq
	cmp	w15, 1
	beq	.L98
	mov	w16, 1
.L31:
	strb	w16, [x6, -2]
.L29:
	tst	x3, -72057594037927936
	beq	.L32
	ldrb	w3, [x6, -1]
	cbnz	w3, .L32
	ldrb	w3, [x9, -1]
	cmp	w3, 0
	add	x3, x5, x3, sxtw 3
	ldr	x15, [x3, 120]
	lsr	x3, x0, 59
	add	x3, x15, x3, lsl 5
	lsr	x15, x4, 59
	ldrb	w3, [x3, x15]
	ldrb	w15, [x5, 57]
	ubfiz	w3, w3, 6, 2
	orr	w7, w3, w7
	ldrb	w3, [x5, 56]
	csel	w3, w3, w15, eq
	cmp	w3, 1
	beq	.L99
	strb	w26, [x6, -1]
	.p2align 2
.L32:
	cbnz	w13, .L35
.L36:
	ldrb	w0, [x10, 1]
	orr	w7, w7, w0
	strb	w7, [x10, 1]
.L10:
	add	w11, w11, 1
	add	x8, x8, 8
	add	x6, x6, 8
	add	x9, x9, 8
	add	w12, w12, 2
	cmp	w17, w11
	bge	.L37
.L38:
	add	w20, w20, 1
	add	x30, x30, x24
	add	w21, w21, w23
	cmp	w25, w20
	blt	.L1
	ldr	w9, [x5, 84]
	b	.L39
	.p2align 3
.L99:
	and	x0, x0, 72057594037927935
	and	x4, x4, -72057594037927936
	orr	x0, x4, x0
.L35:
	str	x0, [x14, x8]
	b	.L36
	.p2align 3
.L41:
	mov	w7, 0
	mov	w13, 0
	b	.L11
	.p2align 3
.L92:
	bfi	x0, x4, 0, 8
	b	.L13
	.p2align 3
.L94:
	and	x0, x0, -16711681
	mov	w13, w15
	and	x15, x4, 16711680
	orr	x0, x15, x0
	b	.L19
	.p2align 3
.L93:
	and	x0, x0, -65281
	mov	w13, w15
	and	x15, x4, 65280
	orr	x0, x15, x0
	b	.L16
	.p2align 3
.L98:
	and	x0, x0, -71776119061217281
	mov	w13, w15
	and	x15, x4, 71776119061217280
	orr	x0, x15, x0
	b	.L31
	.p2align 3
.L97:
	and	x0, x0, -280375465082881
	mov	w13, w15
	and	x15, x4, 280375465082880
	orr	x0, x15, x0
	b	.L28
	.p2align 3
.L96:
	and	x0, x0, -1095216660481
	mov	w13, w16
	and	x16, x4, 1095216660480
	orr	x0, x16, x0
	b	.L25
	.p2align 3
.L95:
	and	x0, x0, -4278190081
	mov	w13, w15
	and	x15, x4, 4278190080
	orr	x0, x15, x0
	b	.L22
.L1:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 144
	ret
.L4:
	mul	w30, w20, w24
	add	x30, x0, x30, sxtw
	b	.L5
	.size	get_overlay_image_area, .-get_overlay_image_area
	.align	2
	.p2align 3,,7
	.type	get_overlay_image_area2, %function
get_overlay_image_area2:
	stp	x29, x30, [sp, -144]!
	adrp	x6, .LANCHOR0
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	str	x1, [x29, 120]
	ldr	x1, [x6, #:lo12:.LANCHOR0]
	ldr	x6, [x5, 232]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	stp	x4, x3, [x29, 104]
	ldr	w26, [x1, 116]
	ldp	w1, w19, [x6, 48]
	ldp	w3, w24, [x6, 56]
	cmp	w1, 0
	add	w22, w1, 7
	lsr	w26, w26, 2
	csel	w22, w22, w1, lt
	add	w14, w3, 7
	cmp	w3, 0
	csel	w14, w14, w3, lt
	mul	w20, w26, w19
	ldp	w3, w1, [x5, 80]
	asr	w14, w14, 3
	add	w14, w14, 1
	add	x13, x0, x20, sxtw
	cmp	w1, 0
	add	w23, w1, 7
	csel	w23, w23, w1, lt
	asr	w23, w23, 3
	cmp	w14, w23
	sub	w4, w23, #1
	csel	w14, w4, w14, ge
	cmp	w24, w3
	sub	w3, w3, #1
	csel	w24, w3, w24, ge
	cmp	w24, w19
	blt	.L100
	asr	w22, w22, 3
	mul	w21, w19, w23
	lsl	w3, w22, 3
	mov	w17, 1
	sxtw	x3, w3
	mov	w25, w17
	mov	w9, w1
	str	x3, [x29, 128]
	sxtw	x3, w22
	str	x3, [x29, 136]
	.p2align 2
.L163:
	ldr	x1, [x29, 136]
	ands	w16, w19, 1
	mul	w9, w9, w19
	ldr	x3, [x29, 120]
	add	x11, x1, x21, sxtw
	add	x1, x0, x20, sxtw
	csel	x13, x1, x13, eq
	ldr	x1, [x29, 128]
	lsl	x11, x11, 3
	cmp	w14, w22
	add	x15, x3, x11
	add	x11, x2, x11
	add	x9, x1, x9, sxtw
	blt	.L162
	ldr	x1, [x29, 112]
	add	x9, x9, 8
	mov	w10, w22
	mov	x8, 0
	add	x7, x1, x9
	ldr	x1, [x29, 104]
	add	x9, x1, x9
	.p2align 2
.L161:
	ldr	x4, [x15, x8]
	ldr	x1, [x11, x8]
	cmp	x4, x1
	beq	.L108
	str	w17, [x5, 60]
	eor	x3, x4, x1
	and	x6, x3, 255
	cbz	w16, .L109
	cbz	x6, .L165
	ldrb	w18, [x7, -8]
	cbnz	w18, .L165
	ldrb	w6, [x9, -8]
	ubfx	x27, x4, 3, 5
	cmp	w6, 0
	add	x6, x5, x6, sxtw 3
	ldr	x12, [x6, 120]
	lsr	x6, x1, 3
	ubfiz	x6, x6, 5, 5
	orr	x6, x6, x27
	ldrb	w27, [x5, 57]
	ldrb	w6, [x12, x6]
	ldrb	w12, [x5, 56]
	csel	w12, w12, w27, eq
	lsl	w6, w6, 2
	cmp	w12, 1
	beq	.L264
	mov	w18, 1
	mov	w12, 0
.L112:
	strb	w18, [x7, -8]
.L110:
	tst	x3, 65280
	beq	.L113
	ldrb	w27, [x7, -7]
	cbnz	w27, .L113
	ldrb	w18, [x9, -7]
	ubfx	x30, x4, 11, 5
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 11
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 6
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L265
	mov	w27, 1
.L115:
	strb	w27, [x7, -7]
.L113:
	tst	x3, 16711680
	beq	.L116
	ldrb	w27, [x7, -6]
	cbnz	w27, .L116
	ldrb	w18, [x9, -6]
	ubfx	x30, x4, 19, 5
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 19
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 10
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L266
	mov	w27, 1
.L118:
	strb	w27, [x7, -6]
.L116:
	tst	x3, 4278190080
	beq	.L119
	ldrb	w27, [x7, -5]
	cbnz	w27, .L119
	ldrb	w18, [x9, -5]
	lsr	w30, w4, 27
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 27
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 14
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L267
	mov	w27, 1
.L121:
	strb	w27, [x7, -5]
.L119:
	tst	x3, 1095216660480
	beq	.L122
	ldrb	w27, [x7, -4]
	cbnz	w27, .L122
	ldrb	w18, [x9, -4]
	ubfx	x30, x4, 35, 5
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 35
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 18
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L268
	mov	w27, 1
.L124:
	strb	w27, [x7, -4]
.L122:
	tst	x3, 280375465082880
	beq	.L125
	ldrb	w27, [x7, -3]
	cbnz	w27, .L125
	ldrb	w18, [x9, -3]
	ubfx	x30, x4, 43, 5
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 43
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 22
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L269
	mov	w27, 1
.L127:
	strb	w27, [x7, -3]
.L125:
	tst	x3, 71776119061217280
	beq	.L128
	ldrb	w27, [x7, -2]
	cbnz	w27, .L128
	ldrb	w18, [x9, -2]
	ubfx	x30, x4, 51, 5
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 51
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 26
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L270
	mov	w27, 1
.L130:
	strb	w27, [x7, -2]
.L128:
	tst	x3, -72057594037927936
	beq	.L135
	ldrb	w3, [x7, -1]
	cbnz	w3, .L135
	ldrb	w3, [x9, -1]
	cmp	w3, 0
	add	x3, x5, x3, sxtw 3
	ldr	x18, [x3, 120]
	lsr	x3, x1, 59
	add	x3, x18, x3, lsl 5
	lsr	x18, x4, 59
	ldrb	w3, [x3, x18]
	orr	w6, w6, w3, lsl 30
.L263:
	ldrb	w3, [x5, 56]
	ldrb	w18, [x5, 57]
	csel	w3, w3, w18, eq
	cmp	w3, 1
	beq	.L271
	strb	w25, [x7, -1]
	.p2align 2
.L135:
	cbnz	w12, .L134
.L160:
	sxtw	x3, w10
	ldr	w1, [x13, x3, lsl 2]
	orr	w6, w1, w6
	str	w6, [x13, x3, lsl 2]
.L108:
	add	w10, w10, 1
	add	x8, x8, 8
	add	x7, x7, 8
	add	x9, x9, 8
	cmp	w14, w10
	bge	.L161
.L162:
	add	w19, w19, 1
	add	w21, w21, w23
	add	w20, w20, w26
	cmp	w24, w19
	blt	.L100
	ldr	w9, [x5, 84]
	b	.L163
	.p2align 3
.L271:
	and	x1, x1, 72057594037927935
	and	x4, x4, -72057594037927936
	orr	x1, x4, x1
.L134:
	str	x1, [x11, x8]
	b	.L160
	.p2align 3
.L109:
	cbz	x6, .L174
	ldrb	w18, [x7, -8]
	cbnz	w18, .L174
	ldrb	w6, [x9, -8]
	ubfx	x27, x4, 3, 5
	cmp	w6, 0
	add	x6, x5, x6, sxtw 3
	ldr	x12, [x6, 120]
	lsr	x6, x1, 3
	ubfiz	x6, x6, 5, 5
	orr	x6, x6, x27
	ldrb	w27, [x5, 57]
	ldrb	w6, [x12, x6]
	ldrb	w12, [x5, 56]
	csel	w12, w12, w27, eq
	cmp	w12, 1
	beq	.L272
	mov	w18, 1
	mov	w12, 0
.L138:
	strb	w18, [x7, -8]
.L136:
	tst	x3, 65280
	beq	.L139
	ldrb	w27, [x7, -7]
	cbnz	w27, .L139
	ldrb	w18, [x9, -7]
	ubfx	x30, x4, 11, 5
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 11
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 4
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L273
	mov	w27, 1
.L141:
	strb	w27, [x7, -7]
.L139:
	tst	x3, 16711680
	beq	.L142
	ldrb	w27, [x7, -6]
	cbnz	w27, .L142
	ldrb	w18, [x9, -6]
	ubfx	x30, x4, 19, 5
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 19
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 8
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L274
	mov	w27, 1
.L144:
	strb	w27, [x7, -6]
.L142:
	tst	x3, 4278190080
	beq	.L145
	ldrb	w27, [x7, -5]
	cbnz	w27, .L145
	ldrb	w18, [x9, -5]
	lsr	w30, w4, 27
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 27
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 12
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L275
	mov	w27, 1
.L147:
	strb	w27, [x7, -5]
.L145:
	tst	x3, 1095216660480
	beq	.L148
	ldrb	w27, [x7, -4]
	cbnz	w27, .L148
	ldrb	w18, [x9, -4]
	ubfx	x30, x4, 35, 5
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 35
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 16
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L276
	mov	w27, 1
.L150:
	strb	w27, [x7, -4]
.L148:
	tst	x3, 280375465082880
	beq	.L151
	ldrb	w27, [x7, -3]
	cbnz	w27, .L151
	ldrb	w18, [x9, -3]
	ubfx	x30, x4, 43, 5
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 43
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 20
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L277
	mov	w27, 1
.L153:
	strb	w27, [x7, -3]
.L151:
	tst	x3, 71776119061217280
	beq	.L154
	ldrb	w27, [x7, -2]
	cbnz	w27, .L154
	ldrb	w18, [x9, -2]
	ubfx	x30, x4, 51, 5
	cmp	w18, 0
	add	x18, x5, x18, sxtw 3
	ldr	x28, [x18, 120]
	lsr	x18, x1, 51
	ubfiz	x18, x18, 5, 5
	orr	x18, x18, x30
	ldrb	w18, [x28, x18]
	ldrb	w28, [x5, 57]
	orr	w6, w6, w18, lsl 24
	ldrb	w18, [x5, 56]
	csel	w18, w18, w28, eq
	cmp	w18, 1
	beq	.L278
	mov	w27, 1
.L156:
	strb	w27, [x7, -2]
.L154:
	tst	x3, -72057594037927936
	beq	.L135
	ldrb	w3, [x7, -1]
	cbnz	w3, .L135
	ldrb	w3, [x9, -1]
	cmp	w3, 0
	add	x3, x5, x3, sxtw 3
	ldr	x18, [x3, 120]
	lsr	x3, x1, 59
	add	x3, x18, x3, lsl 5
	lsr	x18, x4, 59
	ldrb	w3, [x3, x18]
	orr	w6, w6, w3, lsl 28
	b	.L263
	.p2align 3
.L174:
	mov	w6, 0
	mov	w12, 0
	b	.L136
	.p2align 3
.L165:
	mov	w6, 0
	mov	w12, 0
	b	.L110
	.p2align 3
.L264:
	bfi	x1, x4, 0, 8
	b	.L112
	.p2align 3
.L266:
	and	x1, x1, -16711681
	mov	w12, w18
	and	x18, x4, 16711680
	orr	x1, x18, x1
	b	.L118
	.p2align 3
.L265:
	and	x1, x1, -65281
	mov	w12, w18
	and	x18, x4, 65280
	orr	x1, x18, x1
	b	.L115
	.p2align 3
.L270:
	and	x1, x1, -71776119061217281
	mov	w12, w18
	and	x18, x4, 71776119061217280
	orr	x1, x18, x1
	b	.L130
	.p2align 3
.L269:
	and	x1, x1, -280375465082881
	mov	w12, w18
	and	x18, x4, 280375465082880
	orr	x1, x18, x1
	b	.L127
	.p2align 3
.L268:
	and	x1, x1, -1095216660481
	mov	w12, w18
	and	x18, x4, 1095216660480
	orr	x1, x18, x1
	b	.L124
	.p2align 3
.L267:
	and	x1, x1, -4278190081
	mov	w12, w18
	and	x18, x4, 4278190080
	orr	x1, x18, x1
	b	.L121
	.p2align 3
.L272:
	bfi	x1, x4, 0, 8
	b	.L138
	.p2align 3
.L278:
	and	x1, x1, -71776119061217281
	mov	w12, w18
	and	x18, x4, 71776119061217280
	orr	x1, x18, x1
	b	.L156
	.p2align 3
.L277:
	and	x1, x1, -280375465082881
	mov	w12, w18
	and	x18, x4, 280375465082880
	orr	x1, x18, x1
	b	.L153
	.p2align 3
.L276:
	and	x1, x1, -1095216660481
	mov	w12, w18
	and	x18, x4, 1095216660480
	orr	x1, x18, x1
	b	.L150
	.p2align 3
.L275:
	and	x1, x1, -4278190081
	mov	w12, w18
	and	x18, x4, 4278190080
	orr	x1, x18, x1
	b	.L147
	.p2align 3
.L274:
	and	x1, x1, -16711681
	mov	w12, w18
	and	x18, x4, 16711680
	orr	x1, x18, x1
	b	.L144
	.p2align 3
.L273:
	and	x1, x1, -65281
	mov	w12, w18
	and	x18, x4, 65280
	orr	x1, x18, x1
	b	.L141
.L100:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 144
	ret
	.size	get_overlay_image_area2, .-get_overlay_image_area2
	.align	2
	.p2align 3,,7
	.type	get_auto_image, %function
get_auto_image:
	stp	x29, x30, [sp, -48]!
	adrp	x6, .LANCHOR0
	cmp	w5, 2
	add	x29, sp, 0
	ldr	x17, [x6, #:lo12:.LANCHOR0]
	stp	x19, x20, [sp, 16]
	add	x19, x4, 60
	add	x17, x17, 40
	stp	x21, x22, [sp, 32]
	ldrb	w13, [x4, 56]
	ldp	w6, w22, [x17, 76]
	ldr	w30, [x17, 156]
	lsr	w14, w6, 3
	beq	.L334
	cmp	w5, 3
	mov	w18, 0
	beq	.L335
.L283:
	cmp	w18, w22
	bge	.L307
	sub	w16, w14, #1
	mov	w8, 0
	add	x16, x16, 1
	lsl	x16, x16, 3
	cbz	w30, .L284
	.p2align 2
.L344:
	ldr	w10, [x17, 80]
	sub	w10, w10, #1
	sub	w10, w10, w18
	mul	w10, w10, w6
	lsr	w10, w10, 2
	add	x10, x0, x10
.L287:
	add	x6, x3, 8
	add	x10, x10, 2
	mov	x9, 0
	cbz	w14, .L286
	.p2align 2
.L323:
	ldr	x7, [x1, x9, lsl 3]
	ldr	x5, [x2, x9, lsl 3]
	cmp	x7, x5
	beq	.L288
	eor	x8, x7, x5
	mov	w11, 0
	and	x12, x8, 255
	cbz	x12, .L289
	ldrb	w12, [x6, -8]
	lsl	x11, x5, 2
	and	x20, x11, 992
	ldr	x21, [x4, 120]
	ubfx	x11, x7, 3, 5
	orr	x11, x20, x11
	lsl	w20, w12, 10
	add	x11, x21, x11
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w11, [x11, w20, sxtw]
	beq	.L336
.L290:
	strb	w12, [x6, -8]
.L289:
	tst	x8, 65280
	beq	.L291
	ldrb	w12, [x6, -7]
	lsr	x20, x5, 6
	and	x21, x20, 992
	ldr	x15, [x4, 120]
	ubfx	x20, x7, 11, 5
	orr	x20, x21, x20
	lsl	w21, w12, 10
	add	x20, x15, x20
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w20, [x20, w21, sxtw]
	orr	w11, w11, w20, lsl 2
	and	w11, w11, 255
	beq	.L337
.L292:
	strb	w12, [x6, -7]
.L291:
	tst	x8, 16711680
	beq	.L293
	ldrb	w12, [x6, -6]
	lsr	x20, x5, 14
	and	x21, x20, 992
	ldr	x15, [x4, 120]
	ubfx	x20, x7, 19, 5
	orr	x20, x21, x20
	lsl	w21, w12, 10
	add	x20, x15, x20
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w20, [x20, w21, sxtw]
	orr	w11, w11, w20, lsl 4
	and	w11, w11, 255
	beq	.L338
.L294:
	strb	w12, [x6, -6]
.L293:
	tst	x8, 4278190080
	beq	.L295
	ldrb	w12, [x6, -5]
	lsr	x20, x5, 22
	and	x21, x20, 992
	ldr	x15, [x4, 120]
	lsr	w20, w7, 27
	orr	x20, x21, x20
	lsl	w21, w12, 10
	add	x20, x15, x20
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w20, [x20, w21, sxtw]
	orr	w11, w11, w20, lsl 6
	and	w11, w11, 255
	beq	.L339
.L296:
	strb	w12, [x6, -5]
.L295:
	strb	w11, [x10, -2]
	tst	x8, 1095216660480
	mov	w11, 0
	beq	.L297
	ldrb	w12, [x6, -4]
	lsr	x11, x5, 30
	and	x20, x11, 992
	ldr	x21, [x4, 120]
	ubfx	x11, x7, 35, 5
	orr	x11, x20, x11
	lsl	w20, w12, 10
	add	x11, x21, x11
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w11, [x11, w20, sxtw]
	beq	.L340
.L298:
	strb	w12, [x6, -4]
.L297:
	tst	x8, 280375465082880
	beq	.L299
	ldrb	w12, [x6, -3]
	lsr	x20, x5, 38
	and	x21, x20, 992
	ldr	x15, [x4, 120]
	ubfx	x20, x7, 43, 5
	orr	x20, x21, x20
	lsl	w21, w12, 10
	add	x20, x15, x20
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w20, [x20, w21, sxtw]
	orr	w11, w11, w20, lsl 2
	and	w11, w11, 255
	beq	.L341
.L300:
	strb	w12, [x6, -3]
.L299:
	tst	x8, 71776119061217280
	beq	.L301
	ldrb	w12, [x6, -2]
	lsr	x20, x5, 46
	and	x21, x20, 992
	ldr	x15, [x4, 120]
	ubfx	x20, x7, 51, 5
	orr	x20, x21, x20
	lsl	w21, w12, 10
	add	x20, x15, x20
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w20, [x20, w21, sxtw]
	orr	w11, w11, w20, lsl 4
	and	w11, w11, 255
	beq	.L342
.L302:
	strb	w12, [x6, -2]
.L301:
	tst	x8, -72057594037927936
	beq	.L303
	ldrb	w20, [x6, -1]
	lsr	x21, x5, 54
	ldr	x8, [x4, 120]
	and	x21, x21, 992
	add	w12, w20, 1
	ubfiz	x20, x20, 10, 8
	and	w12, w12, 255
	add	x8, x8, x20
	cmp	w13, w12
	add	x8, x8, x7, lsr 59
	ldrb	w8, [x8, x21]
	orr	w11, w11, w8, lsl 6
	and	w11, w11, 255
	beq	.L343
.L304:
	strb	w12, [x6, -1]
.L303:
	str	x5, [x2, x9, lsl 3]
	mov	w8, 1
	strb	w11, [x10, -1]
.L305:
	add	x9, x9, 1
	add	x6, x6, 8
	add	x10, x10, 2
	cmp	w14, w9
	bgt	.L323
	add	x3, x3, x16
	add	x2, x2, x16
	add	x1, x1, x16
.L286:
	add	w18, w18, 1
	cmp	w22, w18
	beq	.L281
	ldr	w6, [x17, 76]
	cbnz	w30, .L344
.L284:
	mul	w10, w18, w6
	lsr	w10, w10, 2
	add	x10, x0, x10
	b	.L287
	.p2align 3
.L343:
	and	x5, x5, 72057594037927935
	and	x7, x7, -72057594037927936
	orr	x5, x7, x5
	mov	w12, 0
	b	.L304
	.p2align 3
.L342:
	and	x12, x7, 71776119061217280
	and	x5, x5, -71776119061217281
	orr	x5, x12, x5
	mov	w12, 0
	b	.L302
	.p2align 3
.L340:
	and	x12, x7, 1095216660480
	and	x5, x5, -1095216660481
	orr	x5, x12, x5
	mov	w12, 0
	b	.L298
	.p2align 3
.L341:
	and	x12, x7, 280375465082880
	and	x5, x5, -280375465082881
	orr	x5, x12, x5
	mov	w12, 0
	b	.L300
	.p2align 3
.L339:
	and	x12, x7, 4278190080
	and	x5, x5, -4278190081
	orr	x5, x12, x5
	mov	w12, 0
	b	.L296
	.p2align 3
.L337:
	and	x12, x7, 65280
	and	x5, x5, -65281
	orr	x5, x12, x5
	mov	w12, 0
	b	.L292
	.p2align 3
.L338:
	and	x12, x7, 16711680
	and	x5, x5, -16711681
	orr	x5, x12, x5
	mov	w12, 0
	b	.L294
	.p2align 3
.L336:
	bfi	x5, x7, 0, 8
	mov	w12, 0
	b	.L290
	.p2align 3
.L288:
	strb	wzr, [x10, -2]
	strb	wzr, [x10, -1]
	b	.L305
.L307:
	mov	w8, 0
.L281:
	str	w8, [x19]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
.L334:
	add	w18, w22, w22, lsr 31
	asr	w22, w18, 1
	mov	w18, 0
	b	.L283
.L335:
	add	w15, w22, w22, lsr 31
	add	x19, x4, 64
	asr	w18, w15, 1
	mul	w5, w14, w18
	sbfiz	x5, x5, 3, 32
	add	x1, x1, x5
	add	x2, x2, x5
	mul	w5, w18, w6
	add	x3, x3, x5
	b	.L283
	.size	get_auto_image, .-get_auto_image
	.align	2
	.p2align 3,,7
	.type	is_full_refresh_area, %function
is_full_refresh_area:
	ldp	w5, w6, [x0, 80]
	ldr	w7, [x0, 732]
	add	w4, w5, w5, lsr 31
	add	w3, w6, w6, lsr 31
	subs	w1, w1, w4, asr 1
	csneg	w4, w1, w1, pl
	subs	w3, w2, w3, asr 1
	csneg	w8, w3, w3, pl
	cmp	w7, 3
	beq	.L347
	bgt	.L348
	cmp	w7, 1
	beq	.L349
	cmp	w7, 2
	bne	.L346
	ldr	w1, [x0, 740]
	add	w4, w4, w8
	mul	w5, w5, w1
	sdiv	w5, w5, w6
	cmp	w5, w4
	cset	w0, ge
	cmp	w1, w4
	cset	w1, ge
	and	w0, w0, w1
	ret
	.p2align 3
.L348:
	cmp	w7, 4
	beq	.L351
	cmp	w7, 5
	bne	.L346
	ldr	w7, [x0, 728]
	add	w4, w1, 7
	ldr	w0, [x0, 740]
	add	w2, w3, 7
	add	w6, w7, 7
	sub	w0, w0, w7
	cmp	w0, 0
	add	w5, w0, 7
	csel	w0, w5, w0, lt
	cmp	w7, 0
	csel	w5, w6, w7, lt
	cmp	w1, 0
	csel	w1, w4, w1, lt
	cmp	w3, 0
	csel	w3, w2, w3, lt
	asr	w1, w1, 3
	asr	w3, w3, 3
	asr	w4, w0, 3
	asr	w5, w5, 3
	cmp	w1, 0
	mul	w0, w3, w3
	madd	w6, w1, w1, w0
	ble	.L354
	mov	w0, 10000
	mul	w3, w3, w0
	sdiv	w3, w3, w1
.L355:
	mul	w3, w3, w5
	mov	w0, 35757
	movk	w0, 0x68db, lsl 16
	smull	x0, w3, w0
	asr	x0, x0, 43
	sub	w3, w0, w3, asr 31
	add	w0, w3, w4
	mul	w0, w0, w0
	cmp	w6, w0
	cset	w0, le
	ret
	.p2align 3
.L346:
	ldr	w0, [x0, 740]
	cmp	w2, w0
	cset	w0, lt
.L353:
	ret
	.p2align 3
.L351:
	ldr	w1, [x0, 740]
	cmp	w4, w1
	cset	w0, le
	cmp	w8, w1
	cset	w1, le
	orr	w0, w0, w1
	ret
	.p2align 3
.L349:
	ldr	w0, [x0, 740]
	mul	w3, w3, w3
	madd	w3, w1, w1, w3
	mul	w0, w0, w0
	cmp	w0, w3
	cset	w0, ge
	ret
	.p2align 3
.L347:
	ldr	w1, [x0, 740]
	mul	w5, w5, w1
	sdiv	w5, w5, w6
	cmp	w4, w5
	cset	w0, le
	cmp	w8, w1
	cset	w1, le
	and	w0, w0, w1
	ret
	.p2align 3
.L354:
	mov	w0, 1
	beq	.L353
	mov	w2, 10000
	mov	w0, 31416
	mul	w2, w3, w2
	sdiv	w1, w2, w1
	add	w3, w1, w0
	b	.L355
	.size	is_full_refresh_area, .-is_full_refresh_area
	.align	2
	.p2align 3,,7
	.type	direct_mode_data_change_full, %function
direct_mode_data_change_full:
	stp	x29, x30, [sp, -64]!
	adrp	x5, .LANCHOR0
	mov	x15, x2
	mov	x14, x1
	add	x29, sp, 0
	stp	x23, x24, [sp, 48]
	mov	x23, x3
	ldr	x3, [x5, #:lo12:.LANCHOR0]
	cmp	w4, 2
	stp	x21, x22, [sp, 32]
	add	x2, x3, 40
	stp	x19, x20, [sp, 16]
	ldr	x24, [x23, 160]
	ldp	w19, w1, [x2, 76]
	lsr	w21, w19, 3
	beq	.L377
	mov	w20, w1
	cmp	w4, 3
	mov	w13, 0
	beq	.L378
.L360:
	ldr	w2, [x2, 156]
	lsr	w19, w19, 2
	cbz	w2, .L361
	sub	w1, w1, #1
	sub	w1, w1, w13
	mul	w1, w1, w19
	neg	w19, w19
	add	x18, x0, x1
.L364:
	cmp	w13, w20
	bge	.L358
	sub	w12, w21, #1
	sxtw	x19, w19
	add	x12, x12, 1
	lsl	x12, x12, 3
	.p2align 2
.L363:
	mov	x22, x18
	mov	x11, 0
	cbnz	w21, .L374
	b	.L372
	.p2align 3
.L380:
	ldrb	w16, [x24, x11]
.L366:
	lsr	x7, x9, 30
	lsr	x5, x9, 22
	and	x3, x7, 992
	ubfx	x7, x10, 35, 5
	lsr	x6, x9, 6
	and	x0, x5, 992
	orr	x7, x3, x7
	lsr	w5, w10, 27
	lsr	x3, x9, 38
	lsr	x4, x9, 46
	and	x2, x6, 992
	orr	x5, x0, x5
	ubfx	x6, x10, 11, 5
	and	x0, x3, 992
	ubfx	x3, x10, 43, 5
	lsr	x8, x9, 14
	and	x1, x4, 992
	orr	x6, x2, x6
	ubfx	x4, x10, 51, 5
	lsl	x2, x9, 2
	orr	x3, x0, x3
	ldrb	w0, [x23, 56]
	and	x30, x8, 992
	orr	x4, x1, x4
	ubfx	x8, x10, 19, 5
	and	x2, x2, 992
	ubfx	x1, x10, 3, 5
	lsr	x9, x9, 54
	ubfiz	x17, x16, 10, 8
	orr	x8, x30, x8
	orr	x2, x2, x1
	and	x9, x9, 992
	cmp	w0, w16
	bgt	.L368
	strh	wzr, [x22]
	add	x11, x11, 8
	add	x22, x22, 2
	cmp	x11, x12
	beq	.L379
.L374:
	ldr	x10, [x14, x11]
	mov	w2, w11
	ldr	x9, [x15, x11]
	mov	w1, w13
	mov	x0, x23
	bl	is_full_refresh_area
	tst	w0, 255
	beq	.L380
	ldrb	w16, [x24, x11]
	cmp	x16, 255
	bne	.L366
	str	xzr, [x24, x11]
	mov	w16, 0
	b	.L366
	.p2align 3
.L368:
	ldr	x0, [x23, 120]
	add	x22, x22, 2
	add	x0, x0, x17
	add	x10, x0, x10, lsr 59
	ldrb	w7, [x0, x7]
	ldrb	w8, [x0, x8]
	ldrb	w1, [x0, x6]
	ldrb	w5, [x0, x5]
	lsl	w6, w7, 8
	ldrb	w4, [x0, x4]
	ldrb	w3, [x0, x3]
	ldrb	w16, [x0, x2]
	lsl	w0, w8, 4
	ldrb	w2, [x10, x9]
	orr	w0, w0, w1, lsl 2
	orr	w5, w6, w5, lsl 6
	lsl	w4, w4, 12
	orr	w0, w0, w5
	orr	w3, w4, w3, lsl 10
	orr	w1, w16, w2, lsl 14
	orr	w0, w0, w3
	orr	w0, w0, w1
	strh	w0, [x22, -2]
	ldr	x0, [x24, x11]
	add	x0, x0, 1
	str	x0, [x24, x11]
	add	x11, x11, 8
	cmp	x11, x12
	bne	.L374
.L379:
	add	x14, x14, x12
	add	x15, x15, x12
	add	x24, x24, x12
.L372:
	add	w13, w13, 1
	add	x18, x18, x19
	cmp	w20, w13
	bne	.L363
.L358:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 64
	ret
.L361:
	mul	w18, w13, w19
	add	x18, x0, x18, sxtw
	b	.L364
.L377:
	add	w20, w1, w1, lsr 31
	mov	w13, 0
	asr	w20, w20, 1
	b	.L360
.L378:
	add	w13, w1, w1, lsr 31
	asr	w13, w13, 1
	mul	w3, w21, w13
	sbfiz	x3, x3, 3, 32
	add	x14, x14, x3
	add	x15, x15, x3
	add	x24, x24, x3
	b	.L360
	.size	direct_mode_data_change_full, .-direct_mode_data_change_full
	.align	2
	.p2align 3,,7
	.type	direct_mode_data_change_full2, %function
direct_mode_data_change_full2:
	stp	x29, x30, [sp, -80]!
	adrp	x5, .LANCHOR0
	cmp	w4, 2
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x20, x0
	ldr	x0, [x5, #:lo12:.LANCHOR0]
	stp	x23, x24, [sp, 48]
	mov	x23, x1
	stp	x21, x22, [sp, 32]
	mov	x24, x2
	stp	x25, x26, [sp, 64]
	mov	x21, x3
	ldp	w14, w15, [x0, 116]
	ldr	x25, [x3, 160]
	lsr	w18, w14, 3
	beq	.L408
	mov	w13, 0
	cmp	w4, 3
	beq	.L409
.L383:
	lsr	w14, w14, 2
	cmp	w13, w15
	bge	.L381
	sub	w12, w18, #1
	lsl	w19, w14, 1
	add	x12, x12, 1
	mul	w14, w13, w14
	lsl	x12, x12, 3
	.p2align 2
.L398:
	add	x22, x20, x14, sxtw
	cbz	w18, .L385
	mov	x11, 0
	mov	x26, x22
	b	.L391
	.p2align 3
.L411:
	ldrb	w16, [x25, x11]
.L387:
	lsr	x8, x9, 14
	lsr	x7, x9, 30
	and	x1, x8, 992
	lsr	x5, x9, 22
	and	x3, x7, 992
	lsr	x4, x9, 46
	ubfx	x8, x10, 19, 5
	ubfx	x7, x10, 35, 5
	and	x2, x5, 992
	orr	x8, x1, x8
	lsr	w5, w10, 27
	and	x1, x4, 992
	orr	x7, x3, x7
	ubfx	x4, x10, 51, 5
	lsr	x3, x9, 38
	orr	x5, x2, x5
	orr	x4, x1, x4
	and	x2, x3, 992
	lsl	x1, x9, 2
	ubfx	x3, x10, 43, 5
	and	x1, x1, 992
	orr	x3, x2, x3
	ubfx	x2, x10, 3, 5
	lsr	x6, x9, 6
	orr	x2, x2, x1
	ldrb	w1, [x21, 56]
	and	x17, x6, 992
	lsr	x9, x9, 54
	ubfx	x6, x10, 11, 5
	ubfiz	x0, x16, 10, 8
	orr	x6, x17, x6
	and	x9, x9, 992
	cmp	w16, w1
	blt	.L389
	str	wzr, [x26]
	add	x11, x11, 8
	add	x26, x26, 4
	cmp	x11, x12
	beq	.L410
.L391:
	ldr	x10, [x23, x11]
	mov	w2, w11
	ldr	x9, [x24, x11]
	mov	w1, w13
	mov	x0, x21
	bl	is_full_refresh_area
	tst	w0, 255
	beq	.L411
	ldrb	w16, [x25, x11]
	cmp	x16, 255
	bne	.L387
	str	xzr, [x25, x11]
	mov	w16, 0
	b	.L387
	.p2align 3
.L389:
	ldr	x1, [x21, 120]
	add	x26, x26, 4
	add	x0, x1, x0
	add	x10, x0, x10, lsr 59
	ldrb	w7, [x0, x7]
	ldrb	w8, [x0, x8]
	ldrb	w1, [x0, x6]
	ldrb	w5, [x0, x5]
	lsl	w6, w7, 16
	ldrb	w4, [x0, x4]
	ldrb	w3, [x0, x3]
	ldrb	w16, [x0, x2]
	lsl	w0, w8, 8
	ldrb	w2, [x10, x9]
	orr	w0, w0, w1, lsl 4
	orr	w5, w6, w5, lsl 12
	lsl	w4, w4, 24
	orr	w0, w0, w5
	orr	w3, w4, w3, lsl 20
	orr	w1, w16, w2, lsl 28
	orr	w0, w0, w3
	orr	w0, w0, w1
	str	w0, [x26, -4]
	ldr	x0, [x25, x11]
	add	x0, x0, 1
	str	x0, [x25, x11]
	add	x11, x11, 8
	cmp	x11, x12
	bne	.L391
.L410:
	add	x23, x23, x12
	add	x24, x24, x12
	add	x25, x25, x12
	mov	x11, 0
	b	.L397
	.p2align 3
.L413:
	ldrb	w16, [x25, x11]
.L393:
	lsr	x8, x9, 6
	lsr	x5, x9, 14
	and	x0, x8, 992
	ubfx	x8, x10, 11, 5
	lsr	x7, x9, 22
	lsl	x6, x9, 2
	lsr	x3, x9, 30
	orr	x8, x0, x8
	and	x0, x5, 992
	ubfx	x5, x10, 19, 5
	and	x1, x7, 992
	lsr	x4, x9, 38
	and	x2, x6, 992
	lsr	w7, w10, 27
	ubfx	x6, x10, 3, 5
	orr	x5, x0, x5
	and	x0, x3, 992
	ubfx	x3, x10, 35, 5
	orr	x7, x1, x7
	orr	x6, x2, x6
	and	x1, x4, 992
	lsr	x2, x9, 46
	ubfx	x4, x10, 43, 5
	orr	x3, x0, x3
	ldrb	w0, [x21, 56]
	orr	x4, x1, x4
	lsr	x9, x9, 54
	and	x2, x2, 992
	ubfx	x1, x10, 51, 5
	ubfiz	x17, x16, 10, 8
	and	x9, x9, 992
	orr	x1, x2, x1
	cmp	w0, w16
	bgt	.L395
	str	wzr, [x22]
.L396:
	add	x11, x11, 8
	add	x22, x22, 4
	cmp	x11, x12
	beq	.L412
.L397:
	ldr	x10, [x23, x11]
	mov	w2, w11
	ldr	x9, [x24, x11]
	mov	w1, w13
	mov	x0, x21
	bl	is_full_refresh_area
	tst	w0, 255
	beq	.L413
	ldrb	w16, [x25, x11]
	cmp	x16, 255
	bne	.L393
	str	xzr, [x25, x11]
	mov	w16, 0
	b	.L393
	.p2align 3
.L412:
	add	x23, x23, x12
	add	x24, x24, x12
	add	x25, x25, x12
.L385:
	add	w13, w13, 2
	add	w14, w14, w19
	cmp	w15, w13
	bgt	.L398
.L381:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 80
	ret
	.p2align 3
.L395:
	ldr	x0, [x21, 120]
	ldr	w2, [x22]
	add	x0, x0, x17
	add	x10, x0, x10, lsr 59
	ldrb	w16, [x0, x8]
	ldrb	w8, [x0, x7]
	ldrb	w6, [x0, x6]
	ldrb	w7, [x0, x5]
	ldrb	w5, [x0, x4]
	lsl	w8, w8, 14
	ldrb	w4, [x0, x3]
	ldrb	w3, [x10, x9]
	ldrb	w1, [x0, x1]
	lsl	w0, w16, 6
	orr	w0, w0, w6, lsl 2
	lsl	w5, w5, 22
	orr	w6, w8, w7, lsl 10
	orr	w4, w5, w4, lsl 18
	orr	w0, w0, w6
	lsl	w3, w3, 30
	orr	w0, w0, w4
	orr	w1, w3, w1, lsl 26
	orr	w0, w0, w1
	orr	w0, w2, w0
	str	w0, [x22]
	ldr	x0, [x25, x11]
	add	x0, x0, 1
	str	x0, [x25, x11]
	b	.L396
.L408:
	add	w15, w15, w15, lsr 31
	mov	w13, 0
	asr	w15, w15, 1
	b	.L383
.L409:
	add	w13, w15, w15, lsr 31
	asr	w13, w13, 1
	mul	w0, w18, w13
	sbfiz	x0, x0, 3, 32
	add	x23, x1, x0
	add	x24, x2, x0
	add	x25, x25, x0
	b	.L383
	.size	direct_mode_data_change_full2, .-direct_mode_data_change_full2
	.align	2
	.p2align 3,,7
	.type	waveform_open, %function
waveform_open:
	mov	w0, 0
	str	xzr, [x1, 104]
	ret
	.size	waveform_open, .-waveform_open
	.section	.exit.text,"ax",@progbits
	.align	2
	.type	ebc_exit, %function
ebc_exit:
	stp	x29, x30, [sp, -16]!
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x29, sp, 0
	bl	platform_driver_unregister
	ldp	x29, x30, [sp], 16
	ret
	.size	ebc_exit, .-ebc_exit
	.text
	.align	2
	.p2align 3,,7
	.type	ebc_resume, %function
ebc_resume:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	ldr	x19, [x0, 184]
	ldr	x0, [x19, 16]
	cbz	x0, .L418
	ldr	x1, [x0, 48]
	blr	x1
.L418:
	ldr	x0, [x19, 328]
	adrp	x1, .LC0
	str	wzr, [x19, 868]
	add	x1, x1, :lo12:.LC0
	bl	_dev_info
	ldr	x19, [sp, 16]
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	.size	ebc_resume, .-ebc_resume
	.align	2
	.p2align 3,,7
	.type	stop_pix_pos_record, %function
stop_pix_pos_record:
	ldr	w3, [x0, 784]
	tbnz	w3, #31, .L426
	ldr	w1, [x0, 80]
	cmp	w3, w1
	bge	.L426
	ldr	w2, [x0, 780]
	tbnz	w2, #31, .L426
	ldr	w1, [x0, 84]
	cmp	w2, w1
	blt	.L429
.L426:
	ret
	.p2align 3
.L429:
	stp	x29, x30, [sp, -16]!
	add	x4, x0, 789
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	add	x29, sp, 0
	ldrb	w5, [x0, 788]
	add	x5, x0, x5
	strb	wzr, [x5, 789]
	ldr	x0, [x0, 96]
	bl	_dev_info
	ldp	x29, x30, [sp], 16
	ret
	.size	stop_pix_pos_record, .-stop_pix_pos_record
	.align	2
	.p2align 3,,7
	.type	get_pix_pos_old_and_new_gray, %function
get_pix_pos_old_and_new_gray:
	ldr	w3, [x0, 784]
	tbnz	w3, #31, .L433
	ldr	w4, [x0, 80]
	cmp	w3, w4
	bge	.L433
	ldr	w4, [x0, 780]
	tbnz	w4, #31, .L433
	ldr	w7, [x0, 84]
	cmp	w4, w7
	blt	.L436
.L433:
	ret
	.p2align 3
.L436:
	madd	w7, w3, w7, w4
	mov	x6, x1
	mov	x5, x2
	stp	x29, x30, [sp, -16]!
	mov	w2, w4
	adrp	x1, .LC2
	add	x29, sp, 0
	ldrb	w5, [x5, w7, sxtw]
	add	x1, x1, :lo12:.LC2
	ldrb	w4, [x6, w7, sxtw]
	ldr	x0, [x0, 96]
	bl	_dev_info
	ldp	x29, x30, [sp], 16
	ret
	.size	get_pix_pos_old_and_new_gray, .-get_pix_pos_old_and_new_gray
	.align	2
	.p2align 3,,7
	.type	ebc_overlay_enable_timeout, %function
ebc_overlay_enable_timeout:
	adrp	x0, .LANCHOR0
	ldr	x0, [x0, #:lo12:.LANCHOR0]
	ldr	w1, [x0, 916]
	str	wzr, [x0, 872]
	cmp	w1, 0
	ble	.L440
	add	x0, x0, 232
	stp	x29, x30, [sp, -16]!
	adrp	x1, .LC3
	add	x1, x1, :lo12:.LC3
	add	x29, sp, 0
	ldr	x0, [x0, 96]
	bl	_dev_info
	ldp	x29, x30, [sp], 16
	ret
	.p2align 3
.L440:
	ret
	.size	ebc_overlay_enable_timeout, .-ebc_overlay_enable_timeout
	.align	2
	.p2align 3,,7
	.type	ebc_frame_control_timeout, %function
ebc_frame_control_timeout:
	adrp	x0, .LANCHOR0
	mov	w2, 1
	ldr	x0, [x0, #:lo12:.LANCHOR0]
	ldr	w1, [x0, 916]
	str	w2, [x0, 876]
	cmp	w1, 0
	ble	.L446
	add	x0, x0, 232
	stp	x29, x30, [sp, -16]!
	adrp	x1, .LC4
	add	x1, x1, :lo12:.LC4
	add	x29, sp, 0
	ldr	x0, [x0, 96]
	bl	_dev_info
	ldp	x29, x30, [sp], 16
	ret
	.p2align 3
.L446:
	ret
	.size	ebc_frame_control_timeout, .-ebc_frame_control_timeout
	.align	2
	.p2align 3,,7
	.type	ebc_power_set, %function
ebc_power_set:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	add	x20, x0, 232
	stp	x21, x22, [sp, 32]
	ldr	w2, [x20, 192]
	cmp	w2, w1
	beq	.L451
	mov	x19, x0
	mov	w21, w1
	cmp	w1, 1
	ldr	w0, [x20, 680]
	beq	.L480
	cbnz	w0, .L481
	str	w21, [x20, 192]
	ldr	x1, [x19, 8]
	mov	x0, x1
	ldr	x1, [x1, 80]
	blr	x1
	ldrb	w0, [x19, 224]
	cbnz	w0, .L482
.L460:
	ldr	x0, [x19, 16]
	cbz	x0, .L461
.L487:
	ldr	x2, [x0, 32]
	mov	w1, 0
	mov	w21, 0
	blr	x2
.L462:
	ldr	w0, [x20, 456]
	cbnz	w0, .L483
.L463:
	ldr	w0, [x20, 684]
	cmp	w0, 0
	ble	.L451
	ldr	x0, [x20, 96]
	adrp	x1, .LC6
	mov	w2, w21
	add	x1, x1, :lo12:.LC6
	bl	_dev_info
.L451:
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L480:
	cbnz	w0, .L484
.L453:
	ldr	w0, [x20, 456]
	cbz	w0, .L485
.L454:
	mov	w1, 1
	str	w1, [x20, 192]
	ldr	x0, [x19, 16]
	cbz	x0, .L455
	ldr	x2, [x0, 32]
	mov	w22, 0
	blr	x2
.L456:
	add	x21, x19, 40
	ldrb	w0, [x21, 184]
	cbnz	w0, .L486
.L457:
	ldr	x2, [x19, 8]
	mov	x1, x21
	mov	x0, x2
	ldr	x2, [x2, 72]
	blr	x2
	ldr	w0, [x20, 684]
	cmp	w0, 0
	ble	.L451
	ldr	x0, [x20, 96]
	mov	w2, w22
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	bl	_dev_info
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L481:
	mov	x0, 0
	bl	ebc_notify
	str	w21, [x20, 192]
	ldr	x1, [x19, 8]
	mov	x0, x1
	ldr	x1, [x1, 80]
	blr	x1
	ldrb	w0, [x19, 224]
	cbz	w0, .L460
.L482:
	mov	w0, 10
	bl	msleep
	ldr	x0, [x19, 16]
	cbnz	x0, .L487
.L461:
	ldr	x0, [x19, 24]
	bl	regulator_disable
	mov	w21, w0
	b	.L462
	.p2align 3
.L484:
	mov	x0, 1
	bl	ebc_notify
	b	.L453
	.p2align 3
.L485:
	mov	w0, 1
	str	w0, [x20, 456]
	add	x0, x19, 480
	bl	__pm_stay_awake
	b	.L454
	.p2align 3
.L483:
	str	wzr, [x20, 456]
	add	x0, x19, 480
	bl	__pm_relax
	b	.L463
	.p2align 3
.L486:
	mov	w0, 50
	bl	msleep
	b	.L457
	.p2align 3
.L455:
	ldr	x0, [x19, 24]
	bl	regulator_enable
	mov	w22, w0
	b	.L456
	.size	ebc_power_set, .-ebc_power_set
	.align	2
	.p2align 3,,7
	.type	ebc_suspend, %function
ebc_suspend:
	stp	x29, x30, [sp, -32]!
	mov	w1, 0
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	ldr	x19, [x0, 184]
	add	x20, x19, 232
	mov	x0, x19
	bl	ebc_power_set
	mov	w0, 1
	str	w0, [x20, 636]
	ldr	x0, [x19, 16]
	cbz	x0, .L489
	ldr	x1, [x0, 40]
	blr	x1
.L489:
	ldr	x0, [x20, 96]
	adrp	x1, .LC7
	add	x1, x1, :lo12:.LC7
	bl	_dev_info
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	.size	ebc_suspend, .-ebc_suspend
	.align	2
	.p2align 3,,7
	.type	ebc_remove, %function
ebc_remove:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	ldr	x20, [x0, 200]
	add	x19, x20, 920
	add	x20, x20, 960
.L496:
	ldr	x1, [x19]
	mov	x0, x1
	cbz	x1, .L495
	bl	dma_buf_put
	str	xzr, [x19]
.L495:
	add	x19, x19, 8
	cmp	x19, x20
	bne	.L496
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 224
	bl	misc_deregister
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	.size	ebc_remove, .-ebc_remove
	.align	2
	.p2align 3,,7
	.type	ebc_release, %function
ebc_release:
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	ldr	x0, [x1, 200]
	bl	kfree
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret
	.size	ebc_release, .-ebc_release
	.align	2
	.p2align 3,,7
	.type	ebc_open, %function
ebc_open:
	stp	x29, x30, [sp, -64]!
	adrp	x0, kmalloc_caches+56
	adrp	x2, .LANCHOR0
	add	x29, sp, 0
	ldr	x0, [x0, #:lo12:kmalloc_caches+56]
	str	x23, [sp, 48]
	mov	x23, x1
	mov	w1, 32960
	stp	x21, x22, [sp, 32]
	stp	x19, x20, [sp, 16]
	movk	w1, 0x60, lsl 16
	ldr	x21, [x2, #:lo12:.LANCHOR0]
	mov	x2, 20
	bl	kmem_cache_alloc_trace
	cbz	x0, .L507
	add	x19, x21, 920
	mov	x22, x0
	mov	x20, x0
	add	x21, x21, 960
.L506:
	ldr	x3, [x19], 8
	mov	x0, 1
	ldr	x2, [x3, 8]
	add	x1, x2, 56
#APP
// 260 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/atomic_lse.h" 1
	.arch_extension lse
.if 1 == 1
661:
	bl	__ll_sc_atomic64_add

662:
.pushsection .altinstructions,"a"
 .word 661b - .
 .word 663f - .
 .hword 5
 .byte 662b-661b
 .byte 664f-663f
.popsection
.pushsection .altinstr_replacement, "a"
663:
	.arch_extension lse
	stadd	x0, [x1]

664:
	.popsection
	.org	. - (664b-663b) + (662b-661b)
	.org	. - (662b-661b) + (664b-663b)
.endif

// 0 "" 2
#NO_APP
	mov	w1, 524288
	mov	x0, x3
	bl	dma_buf_fd
	str	w0, [x20], 4
	cmp	x19, x21
	bne	.L506
	mov	w0, 0
	str	xzr, [x23, 104]
	str	x22, [x23, 200]
.L504:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 64
	ret
.L507:
	mov	w0, -12
	b	.L504
	.size	ebc_open, .-ebc_open
	.align	2
	.p2align 3,,7
	.type	ebc_mmap, %function
ebc_mmap:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x1
	bl	ebc_phy_buf_base_get
	lsr	x2, x0, 12
	mov	x6, 16384
	mov	x0, x19
	ldp	x4, x5, [x19, 72]
	movk	x6, 0x404, lsl 16
	ldp	x1, x3, [x19]
	orr	x5, x5, x6
	str	x5, [x19, 80]
	sub	x3, x3, x1
	bl	remap_pfn_range
	cmp	w0, 0
	mov	w1, -11
	ldr	x19, [sp, 16]
	csel	w0, w0, w1, eq
	ldp	x29, x30, [sp], 32
	ret
	.size	ebc_mmap, .-ebc_mmap
	.align	2
	.p2align 3,,7
	.type	waveform_mmap, %function
waveform_mmap:
	stp	x29, x30, [sp, -16]!
	adrp	x2, .LANCHOR0
	mov	x7, 16384
	mov	x0, x1
	add	x29, sp, 0
	ldr	x2, [x2, #:lo12:.LANCHOR0]
	movk	x7, 0x404, lsl 16
	ldp	x4, x5, [x1, 72]
	ldp	x6, x3, [x1]
	orr	x5, x5, x7
	ldr	x2, [x2, 272]
	str	x5, [x1, 80]
	sub	x3, x3, x6
	mov	x1, x6
	lsr	x2, x2, 12
	bl	remap_pfn_range
	cmp	w0, 0
	mov	w1, -11
	ldp	x29, x30, [sp], 16
	csel	w0, w0, w1, eq
	ret
	.size	waveform_mmap, .-waveform_mmap
	.align	2
	.p2align 3,,7
	.type	get_overlay_image2, %function
get_overlay_image2:
	stp	x29, x30, [sp, -112]!
	adrp	x7, .LANCHOR0
	cmp	w6, 2
	add	x29, sp, 0
	stp	x23, x24, [sp, 48]
	mov	x23, x0
	ldr	x0, [x7, #:lo12:.LANCHOR0]
	stp	x19, x20, [sp, 16]
	mov	x19, x5
	stp	x25, x26, [sp, 64]
	mov	x26, x1
	stp	x27, x28, [sp, 80]
	mov	x20, x2
	stp	x21, x22, [sp, 32]
	mov	x27, x3
	mov	x28, x4
	add	x25, x5, 60
	ldp	w1, w22, [x0, 116]
	lsr	w24, w1, 3
	beq	.L673
	cmp	w6, 3
	beq	.L521
	lsr	w13, w1, 2
	mov	x0, 0
	mov	w21, 0
.L520:
	sub	w2, w22, w21
	add	x0, x23, x0
	mov	w1, 0
	str	w13, [x29, 108]
	mul	w2, w2, w13
	sxtw	x2, w2
	bl	memset
	cmp	w21, w22
	bge	.L581
	ldr	w13, [x29, 108]
	sub	w11, w24, #1
	add	x11, x11, 1
	mov	w3, 0
	lsl	x11, x11, 3
	mul	w12, w21, w13
	lsl	w13, w13, 1
	.p2align 2
.L580:
	add	x9, x23, x12, sxtw
	cbz	w24, .L523
	add	x1, x27, 8
	add	x8, x28, 8
	mov	x4, x9
	mov	x7, 0
	.p2align 2
.L551:
	ldr	x2, [x26, x7]
	ldr	x0, [x20, x7]
	cmp	x2, x0
	beq	.L524
	eor	x5, x2, x0
	and	x3, x5, 255
	cbz	x3, .L582
	ldrb	w10, [x8, -8]
	lsr	x6, x0, 3
	ldrb	w3, [x1, -8]
	ubfx	x16, x2, 3, 5
	ubfiz	x6, x6, 5, 5
	ldrb	w15, [x19, 56]
	add	x14, x19, x10, sxtw 3
	orr	x6, x6, x16
	ldrb	w17, [x19, 57]
	lsl	w16, w3, 10
	cmp	w10, 0
	add	w3, w3, 1
	ldr	x14, [x14, 120]
	and	w3, w3, 255
	csel	w15, w15, w17, eq
	mov	w10, 0
	add	x6, x14, x6
	cmp	w15, w3
	ldrb	w6, [x6, w16, sxtw]
	beq	.L674
.L527:
	strb	w3, [x1, -8]
.L525:
	tst	x5, 65280
	beq	.L528
	ldrb	w16, [x8, -7]
	lsr	x17, x0, 11
	ldrb	w3, [x1, -7]
	ubfx	x18, x2, 11, 5
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x14, x17, x18
	lsl	w17, w3, 10
	ldrb	w15, [x19, 56]
	ldrb	w18, [x19, 57]
	add	w3, w3, 1
	ldr	x16, [x30, 120]
	and	w3, w3, 255
	csel	w15, w15, w18, eq
	add	x14, x16, x14
	cmp	w15, w3
	ldrb	w14, [x14, w17, sxtw]
	orr	w6, w6, w14, lsl 4
	beq	.L675
.L530:
	strb	w3, [x1, -7]
.L528:
	tst	x5, 16711680
	beq	.L531
	ldrb	w16, [x8, -6]
	lsr	x17, x0, 19
	ldrb	w3, [x1, -6]
	ubfx	x18, x2, 19, 5
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x14, x17, x18
	lsl	w17, w3, 10
	ldrb	w15, [x19, 56]
	ldrb	w18, [x19, 57]
	add	w3, w3, 1
	ldr	x16, [x30, 120]
	and	w3, w3, 255
	csel	w15, w15, w18, eq
	add	x14, x16, x14
	cmp	w15, w3
	ldrb	w14, [x14, w17, sxtw]
	orr	w6, w6, w14, lsl 8
	beq	.L676
.L533:
	strb	w3, [x1, -6]
.L531:
	tst	x5, 4278190080
	beq	.L534
	ldrb	w16, [x8, -5]
	lsr	x17, x0, 27
	ldrb	w3, [x1, -5]
	lsr	w18, w2, 27
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x14, x17, x18
	lsl	w17, w3, 10
	ldrb	w15, [x19, 56]
	ldrb	w18, [x19, 57]
	add	w3, w3, 1
	ldr	x16, [x30, 120]
	and	w3, w3, 255
	csel	w15, w15, w18, eq
	add	x14, x16, x14
	cmp	w15, w3
	ldrb	w14, [x14, w17, sxtw]
	orr	w6, w6, w14, lsl 12
	beq	.L677
.L536:
	strb	w3, [x1, -5]
.L534:
	tst	x5, 1095216660480
	beq	.L537
	ldrb	w16, [x8, -4]
	lsr	x17, x0, 35
	ldrb	w3, [x1, -4]
	ubfx	x18, x2, 35, 5
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x14, x17, x18
	lsl	w17, w3, 10
	ldrb	w15, [x19, 56]
	ldrb	w18, [x19, 57]
	add	w3, w3, 1
	ldr	x16, [x30, 120]
	and	w3, w3, 255
	csel	w15, w15, w18, eq
	add	x14, x16, x14
	cmp	w15, w3
	ldrb	w14, [x14, w17, sxtw]
	orr	w6, w6, w14, lsl 16
	beq	.L678
.L539:
	strb	w3, [x1, -4]
.L537:
	tst	x5, 280375465082880
	beq	.L540
	ldrb	w16, [x8, -3]
	lsr	x17, x0, 43
	ldrb	w3, [x1, -3]
	ubfx	x18, x2, 43, 5
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x14, x17, x18
	lsl	w17, w3, 10
	ldrb	w15, [x19, 56]
	ldrb	w18, [x19, 57]
	add	w3, w3, 1
	ldr	x16, [x30, 120]
	and	w3, w3, 255
	csel	w15, w15, w18, eq
	add	x14, x16, x14
	cmp	w15, w3
	ldrb	w14, [x14, w17, sxtw]
	orr	w6, w6, w14, lsl 20
	beq	.L679
.L542:
	strb	w3, [x1, -3]
.L540:
	tst	x5, 71776119061217280
	beq	.L543
	ldrb	w16, [x8, -2]
	lsr	x17, x0, 51
	ldrb	w3, [x1, -2]
	ubfx	x18, x2, 51, 5
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x14, x17, x18
	lsl	w17, w3, 10
	ldrb	w15, [x19, 56]
	ldrb	w18, [x19, 57]
	add	w3, w3, 1
	ldr	x16, [x30, 120]
	and	w3, w3, 255
	csel	w15, w15, w18, eq
	add	x14, x16, x14
	cmp	w15, w3
	ldrb	w14, [x14, w17, sxtw]
	orr	w6, w6, w14, lsl 24
	beq	.L680
.L545:
	strb	w3, [x1, -2]
.L543:
	tst	x5, -72057594037927936
	beq	.L546
	ldrb	w18, [x8, -1]
	lsr	x14, x0, 59
	ldrb	w5, [x1, -1]
	lsl	x14, x14, 5
	ldrb	w15, [x19, 56]
	cmp	w18, 0
	add	x3, x19, x18, sxtw 3
	ldrb	w17, [x19, 57]
	ubfiz	x16, x5, 10, 8
	add	w5, w5, 1
	and	w5, w5, 255
	csel	w15, w15, w17, eq
	ldr	x3, [x3, 120]
	cmp	w15, w5
	add	x3, x3, x16
	add	x3, x3, x2, lsr 59
	ldrb	w3, [x3, x14]
	orr	w6, w6, w3, lsl 28
	beq	.L681
	strb	w5, [x1, -1]
.L546:
	cbnz	w10, .L549
.L550:
	mov	w3, 1
	str	w6, [x4]
.L524:
	add	x7, x7, 8
	add	x1, x1, 8
	add	x8, x8, 8
	add	x4, x4, 4
	cmp	x11, x7
	bne	.L551
	add	x27, x27, x11
	add	x28, x28, x11
	add	x20, x20, x11
	add	x26, x26, x11
	add	x1, x27, 8
	add	x8, x28, 8
	mov	x7, 0
	.p2align 2
.L579:
	ldr	x5, [x26, x7]
	ldr	x0, [x20, x7]
	cmp	x5, x0
	beq	.L552
	eor	x6, x5, x0
	and	x2, x6, 255
	cbz	x2, .L584
	ldrb	w10, [x8, -8]
	lsr	x2, x0, 3
	ldrb	w3, [x1, -8]
	ubfx	x4, x5, 3, 5
	cmp	w10, 0
	ubfiz	x2, x2, 5, 5
	add	x16, x19, x10, sxtw 3
	orr	x2, x2, x4
	lsl	w15, w3, 10
	ldrb	w4, [x19, 57]
	ldrb	w14, [x19, 56]
	add	w3, w3, 1
	ldr	x10, [x16, 120]
	and	w3, w3, 255
	csel	w14, w14, w4, eq
	mov	w4, 0
	add	x2, x10, x2
	cmp	w14, w3
	ldrb	w2, [x2, w15, sxtw]
	lsl	w2, w2, 2
	beq	.L682
.L555:
	strb	w3, [x1, -8]
.L553:
	tst	x6, 65280
	beq	.L556
	ldrb	w18, [x8, -7]
	lsr	x14, x0, 11
	ldrb	w3, [x1, -7]
	ubfiz	x14, x14, 5, 5
	ubfx	x10, x5, 11, 5
	ldrb	w15, [x19, 56]
	add	x17, x19, x18, sxtw 3
	orr	x10, x14, x10
	lsl	w14, w3, 10
	ldrb	w16, [x19, 57]
	cmp	w18, 0
	add	w3, w3, 1
	ldr	x17, [x17, 120]
	and	w3, w3, 255
	csel	w15, w15, w16, eq
	add	x10, x17, x10
	cmp	w15, w3
	ldrb	w10, [x10, w14, sxtw]
	orr	w2, w2, w10, lsl 6
	beq	.L683
.L558:
	strb	w3, [x1, -7]
.L556:
	tst	x6, 16711680
	beq	.L559
	ldrb	w18, [x8, -6]
	lsr	x14, x0, 19
	ldrb	w3, [x1, -6]
	ubfiz	x14, x14, 5, 5
	ubfx	x10, x5, 19, 5
	ldrb	w15, [x19, 56]
	add	x17, x19, x18, sxtw 3
	orr	x10, x14, x10
	lsl	w14, w3, 10
	ldrb	w16, [x19, 57]
	cmp	w18, 0
	add	w3, w3, 1
	ldr	x17, [x17, 120]
	and	w3, w3, 255
	csel	w15, w15, w16, eq
	add	x10, x17, x10
	cmp	w15, w3
	ldrb	w10, [x10, w14, sxtw]
	orr	w2, w2, w10, lsl 10
	beq	.L684
.L561:
	strb	w3, [x1, -6]
.L559:
	tst	x6, 4278190080
	beq	.L562
	ldrb	w18, [x8, -5]
	lsr	x14, x0, 27
	ldrb	w3, [x1, -5]
	ubfiz	x14, x14, 5, 5
	lsr	w10, w5, 27
	ldrb	w15, [x19, 56]
	add	x17, x19, x18, sxtw 3
	orr	x10, x14, x10
	lsl	w14, w3, 10
	ldrb	w16, [x19, 57]
	cmp	w18, 0
	add	w3, w3, 1
	ldr	x17, [x17, 120]
	and	w3, w3, 255
	csel	w15, w15, w16, eq
	add	x10, x17, x10
	cmp	w15, w3
	ldrb	w10, [x10, w14, sxtw]
	orr	w2, w2, w10, lsl 14
	beq	.L685
.L564:
	strb	w3, [x1, -5]
.L562:
	tst	x6, 1095216660480
	beq	.L565
	ldrb	w18, [x8, -4]
	lsr	x14, x0, 35
	ldrb	w3, [x1, -4]
	ubfiz	x14, x14, 5, 5
	ubfx	x10, x5, 35, 5
	ldrb	w15, [x19, 56]
	add	x17, x19, x18, sxtw 3
	orr	x10, x14, x10
	lsl	w14, w3, 10
	ldrb	w16, [x19, 57]
	cmp	w18, 0
	add	w3, w3, 1
	ldr	x17, [x17, 120]
	and	w3, w3, 255
	csel	w15, w15, w16, eq
	add	x10, x17, x10
	cmp	w15, w3
	ldrb	w10, [x10, w14, sxtw]
	orr	w2, w2, w10, lsl 18
	beq	.L686
.L567:
	strb	w3, [x1, -4]
.L565:
	tst	x6, 280375465082880
	beq	.L568
	ldrb	w18, [x8, -3]
	lsr	x14, x0, 43
	ldrb	w10, [x1, -3]
	ubfiz	x14, x14, 5, 5
	ubfx	x3, x5, 43, 5
	ldrb	w15, [x19, 56]
	add	x17, x19, x18, sxtw 3
	orr	x3, x14, x3
	lsl	w14, w10, 10
	ldrb	w16, [x19, 57]
	cmp	w18, 0
	add	w10, w10, 1
	ldr	x17, [x17, 120]
	and	w10, w10, 255
	csel	w15, w15, w16, eq
	add	x3, x17, x3
	cmp	w15, w10
	ldrb	w3, [x3, w14, sxtw]
	orr	w2, w2, w3, lsl 22
	beq	.L687
.L570:
	strb	w10, [x1, -3]
.L568:
	tst	x6, 71776119061217280
	beq	.L571
	ldrb	w18, [x8, -2]
	lsr	x14, x0, 51
	ldrb	w10, [x1, -2]
	ubfiz	x14, x14, 5, 5
	ubfx	x3, x5, 51, 5
	ldrb	w15, [x19, 56]
	add	x17, x19, x18, sxtw 3
	orr	x3, x14, x3
	lsl	w14, w10, 10
	ldrb	w16, [x19, 57]
	cmp	w18, 0
	add	w10, w10, 1
	ldr	x17, [x17, 120]
	and	w10, w10, 255
	csel	w15, w15, w16, eq
	add	x3, x17, x3
	cmp	w15, w10
	ldrb	w3, [x3, w14, sxtw]
	orr	w2, w2, w3, lsl 26
	beq	.L688
.L573:
	strb	w10, [x1, -2]
.L571:
	tst	x6, -72057594037927936
	beq	.L574
	ldrb	w15, [x8, -1]
	lsr	x10, x0, 59
	ldrb	w6, [x1, -1]
	lsl	x10, x10, 5
	ldrb	w14, [x19, 56]
	cmp	w15, 0
	add	x3, x19, x15, sxtw 3
	ldrb	w17, [x19, 57]
	ubfiz	x16, x6, 10, 8
	add	w6, w6, 1
	and	w6, w6, 255
	csel	w14, w14, w17, eq
	ldr	x3, [x3, 120]
	cmp	w14, w6
	add	x3, x3, x16
	add	x3, x3, x5, lsr 59
	ldrb	w3, [x3, x10]
	orr	w2, w2, w3, lsl 30
	beq	.L689
	strb	w6, [x1, -1]
.L574:
	cbnz	w4, .L577
.L578:
	ldr	w0, [x9]
	mov	w3, 1
	orr	w2, w0, w2
	str	w2, [x9]
.L552:
	add	x7, x7, 8
	add	x1, x1, 8
	add	x8, x8, 8
	add	x9, x9, 4
	cmp	x11, x7
	bne	.L579
	add	x27, x27, x11
	add	x28, x28, x11
	add	x20, x20, x11
	add	x26, x26, x11
.L523:
	add	w21, w21, 2
	add	w12, w12, w13
	cmp	w22, w21
	bgt	.L580
	str	w3, [x25]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 112
	ret
	.p2align 3
.L681:
	and	x0, x0, 72057594037927935
	and	x2, x2, -72057594037927936
	orr	x0, x2, x0
	strb	wzr, [x1, -1]
.L549:
	str	x0, [x20, x7]
	b	.L550
	.p2align 3
.L680:
	and	x3, x2, 71776119061217280
	and	x0, x0, -71776119061217281
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L545
	.p2align 3
.L678:
	and	x3, x2, 1095216660480
	and	x0, x0, -1095216660481
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L539
	.p2align 3
.L679:
	and	x3, x2, 280375465082880
	and	x0, x0, -280375465082881
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L542
	.p2align 3
.L677:
	and	x3, x2, 4278190080
	and	x0, x0, -4278190081
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L536
	.p2align 3
.L675:
	and	x3, x2, 65280
	and	x0, x0, -65281
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L530
	.p2align 3
.L676:
	and	x3, x2, 16711680
	and	x0, x0, -16711681
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L533
	.p2align 3
.L674:
	bfi	x0, x2, 0, 8
	mov	w3, 0
	mov	w10, 1
	b	.L527
	.p2align 3
.L689:
	and	x0, x0, 72057594037927935
	and	x5, x5, -72057594037927936
	orr	x0, x5, x0
	strb	wzr, [x1, -1]
.L577:
	str	x0, [x20, x7]
	b	.L578
	.p2align 3
.L686:
	and	x3, x5, 1095216660480
	and	x0, x0, -1095216660481
	orr	x0, x3, x0
	mov	w4, 1
	mov	w3, 0
	b	.L567
	.p2align 3
.L687:
	and	x0, x0, -280375465082881
	and	x3, x5, 280375465082880
	orr	x0, x3, x0
	mov	w10, 0
	mov	w4, 1
	b	.L570
	.p2align 3
.L688:
	and	x0, x0, -71776119061217281
	and	x3, x5, 71776119061217280
	orr	x0, x3, x0
	mov	w10, 0
	mov	w4, 1
	b	.L573
	.p2align 3
.L684:
	and	x3, x5, 16711680
	and	x0, x0, -16711681
	orr	x0, x3, x0
	mov	w4, 1
	mov	w3, 0
	b	.L561
	.p2align 3
.L685:
	and	x3, x5, 4278190080
	and	x0, x0, -4278190081
	orr	x0, x3, x0
	mov	w4, 1
	mov	w3, 0
	b	.L564
	.p2align 3
.L683:
	and	x3, x5, 65280
	and	x0, x0, -65281
	orr	x0, x3, x0
	mov	w4, 1
	mov	w3, 0
	b	.L558
	.p2align 3
.L682:
	bfi	x0, x5, 0, 8
	mov	w3, 0
	mov	w4, 1
	b	.L555
	.p2align 3
.L584:
	mov	w2, 0
	mov	w4, 0
	b	.L553
	.p2align 3
.L582:
	mov	w6, 0
	mov	w10, 0
	b	.L525
.L673:
	add	w22, w22, w22, lsr 31
	lsr	w13, w1, 2
	asr	w22, w22, 1
	mov	x0, 0
	mov	w21, 0
	b	.L520
.L521:
	add	w21, w22, w22, lsr 31
	lsr	w13, w1, 2
	asr	w21, w21, 1
	add	x25, x5, 64
	mul	w0, w24, w21
	mul	w1, w21, w1
	sbfiz	x0, x0, 3, 32
	add	x27, x3, x1
	add	x26, x26, x0
	add	x20, x2, x0
	mul	w0, w13, w21
	add	x28, x4, x1
	sxtw	x0, w0
	b	.L520
.L581:
	mov	w3, 0
	str	w3, [x25]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 112
	ret
	.size	get_overlay_image2, .-get_overlay_image2
	.align	2
	.p2align 3,,7
	.type	get_overlay_image, %function
get_overlay_image:
	stp	x29, x30, [sp, -112]!
	adrp	x7, .LANCHOR0
	cmp	w6, 2
	add	x29, sp, 0
	stp	x21, x22, [sp, 32]
	mov	x21, x1
	ldr	x22, [x7, #:lo12:.LANCHOR0]
	stp	x19, x20, [sp, 16]
	mov	x19, x5
	add	x22, x22, 40
	stp	x27, x28, [sp, 80]
	stp	x23, x24, [sp, 48]
	mov	x5, x0
	stp	x25, x26, [sp, 64]
	mov	x20, x2
	mov	x24, x3
	mov	x25, x4
	ldp	w13, w0, [x22, 76]
	add	x28, x19, 60
	lsr	w27, w13, 3
	beq	.L772
	mov	w26, w0
	cmp	w6, 3
	mov	w23, 0
	beq	.L773
.L692:
	ldr	w1, [x22, 156]
	lsr	w13, w13, 2
	cbz	w1, .L693
	sub	w2, w26, w23
	sub	w0, w0, w26
	str	x5, [x29, 96]
	mov	w1, 0
	str	w13, [x29, 108]
	mul	w2, w2, w13
	mul	w0, w0, w13
	sxtw	x2, w2
	add	x0, x5, x0
	bl	memset
	ldr	w0, [x22, 80]
	cmp	w23, w26
	ldr	w13, [x29, 108]
	sub	w0, w0, #1
	ldr	x5, [x29, 96]
	sub	w0, w0, w23
	mul	w0, w0, w13
	neg	w13, w13
	add	x22, x5, x0
	bge	.L728
.L782:
	sub	w12, w27, #1
	sxtw	x13, w13
	add	x12, x12, 1
	lsl	w11, w27, 1
	lsl	x12, x12, 3
	mov	w3, 0
	.p2align 2
.L695:
	cbz	w27, .L726
	add	x1, x24, 8
	add	x6, x25, 8
	mov	w9, 0
	mov	x7, 0
	.p2align 2
.L724:
	ldr	x2, [x21, x7]
	ldr	x0, [x20, x7]
	cmp	x2, x0
	beq	.L697
	eor	x5, x2, x0
	add	x4, x22, x9, sxtw
	and	x3, x5, 255
	cbz	x3, .L729
	ldrb	w14, [x6, -8]
	lsr	x10, x0, 3
	ldrb	w3, [x1, -8]
	ubfiz	x10, x10, 5, 5
	ubfx	x8, x2, 3, 5
	ldrb	w15, [x19, 56]
	add	x18, x19, x14, sxtw 3
	orr	x8, x10, x8
	lsl	w16, w3, 10
	ldrb	w17, [x19, 57]
	cmp	w14, 0
	add	w3, w3, 1
	ldr	x10, [x18, 120]
	and	w3, w3, 255
	csel	w15, w15, w17, eq
	mov	w14, 0
	add	x8, x10, x8
	cmp	w15, w3
	ldrb	w8, [x8, w16, sxtw]
	beq	.L774
.L700:
	strb	w3, [x1, -8]
.L698:
	tst	x5, 65280
	beq	.L701
	ldrb	w16, [x6, -7]
	lsr	x17, x0, 11
	ldrb	w3, [x1, -7]
	ubfx	x18, x2, 11, 5
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x10, x17, x18
	lsl	w17, w3, 10
	ldrb	w15, [x19, 56]
	ldrb	w18, [x19, 57]
	add	w3, w3, 1
	ldr	x16, [x30, 120]
	and	w3, w3, 255
	csel	w15, w15, w18, eq
	add	x10, x16, x10
	cmp	w15, w3
	ldrb	w10, [x10, w17, sxtw]
	ubfiz	w10, w10, 2, 6
	orr	w8, w10, w8
	beq	.L775
.L703:
	strb	w3, [x1, -7]
.L701:
	tst	x5, 16711680
	beq	.L704
	ldrb	w16, [x6, -6]
	lsr	x17, x0, 19
	ldrb	w3, [x1, -6]
	ubfx	x18, x2, 19, 5
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x10, x17, x18
	lsl	w17, w3, 10
	ldrb	w15, [x19, 56]
	ldrb	w18, [x19, 57]
	add	w3, w3, 1
	ldr	x16, [x30, 120]
	and	w3, w3, 255
	csel	w15, w15, w18, eq
	add	x10, x16, x10
	cmp	w15, w3
	ldrb	w10, [x10, w17, sxtw]
	ubfiz	w10, w10, 4, 4
	orr	w8, w10, w8
	beq	.L776
.L706:
	strb	w3, [x1, -6]
.L704:
	tst	x5, 4278190080
	beq	.L707
	ldrb	w16, [x6, -5]
	lsr	x17, x0, 27
	ldrb	w3, [x1, -5]
	lsr	w18, w2, 27
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x10, x17, x18
	lsl	w17, w3, 10
	ldrb	w15, [x19, 56]
	ldrb	w18, [x19, 57]
	add	w3, w3, 1
	ldr	x16, [x30, 120]
	and	w3, w3, 255
	csel	w15, w15, w18, eq
	add	x10, x16, x10
	cmp	w15, w3
	ldrb	w10, [x10, w17, sxtw]
	ubfiz	w10, w10, 6, 2
	orr	w8, w10, w8
	beq	.L777
.L709:
	strb	w3, [x1, -5]
.L707:
	strb	w8, [x4]
	tst	x5, 1095216660480
	mov	w8, 0
	beq	.L710
	ldrb	w18, [x6, -4]
	lsr	x10, x0, 35
	ldrb	w3, [x1, -4]
	ubfiz	x10, x10, 5, 5
	ubfx	x8, x2, 35, 5
	ldrb	w15, [x19, 56]
	add	x17, x19, x18, sxtw 3
	orr	x8, x10, x8
	ldrb	w16, [x19, 57]
	lsl	w10, w3, 10
	cmp	w18, 0
	add	w3, w3, 1
	ldr	x17, [x17, 120]
	and	w3, w3, 255
	csel	w15, w15, w16, eq
	add	x8, x17, x8
	cmp	w15, w3
	ldrb	w8, [x8, w10, sxtw]
	beq	.L778
.L712:
	strb	w3, [x1, -4]
.L710:
	tst	x5, 280375465082880
	beq	.L713
	ldrb	w16, [x6, -3]
	lsr	x17, x0, 43
	ldrb	w10, [x1, -3]
	ubfx	x18, x2, 43, 5
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x3, x17, x18
	lsl	w17, w10, 10
	ldrb	w15, [x19, 56]
	ldrb	w18, [x19, 57]
	add	w10, w10, 1
	ldr	x16, [x30, 120]
	and	w10, w10, 255
	csel	w15, w15, w18, eq
	add	x3, x16, x3
	cmp	w15, w10
	ldrb	w3, [x3, w17, sxtw]
	ubfiz	w3, w3, 2, 6
	orr	w8, w3, w8
	beq	.L779
.L715:
	strb	w10, [x1, -3]
.L713:
	tst	x5, 71776119061217280
	beq	.L716
	ldrb	w16, [x6, -2]
	lsr	x17, x0, 51
	ldrb	w10, [x1, -2]
	ubfx	x18, x2, 51, 5
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x3, x17, x18
	lsl	w17, w10, 10
	ldrb	w15, [x19, 56]
	ldrb	w18, [x19, 57]
	add	w10, w10, 1
	ldr	x16, [x30, 120]
	and	w10, w10, 255
	csel	w15, w15, w18, eq
	add	x3, x16, x3
	cmp	w15, w10
	ldrb	w3, [x3, w17, sxtw]
	ubfiz	w3, w3, 4, 4
	orr	w8, w3, w8
	beq	.L780
.L718:
	strb	w10, [x1, -2]
.L716:
	tst	x5, -72057594037927936
	beq	.L719
	ldrb	w18, [x6, -1]
	lsr	x10, x0, 59
	ldrb	w5, [x1, -1]
	lsl	x10, x10, 5
	ldrb	w15, [x19, 56]
	cmp	w18, 0
	add	x3, x19, x18, sxtw 3
	ldrb	w17, [x19, 57]
	ubfiz	x16, x5, 10, 8
	add	w5, w5, 1
	and	w5, w5, 255
	csel	w15, w15, w17, eq
	ldr	x3, [x3, 120]
	cmp	w15, w5
	add	x3, x3, x16
	add	x3, x3, x2, lsr 59
	ldrb	w3, [x3, x10]
	ubfiz	w3, w3, 6, 2
	orr	w8, w3, w8
	beq	.L781
	strb	w5, [x1, -1]
.L719:
	cbnz	w14, .L722
.L723:
	strb	w8, [x4, 1]
	mov	w3, 1
.L697:
	add	w9, w9, 2
	add	x7, x7, 8
	add	x1, x1, 8
	add	x6, x6, 8
	cmp	w9, w11
	bne	.L724
	add	x24, x24, x12
	add	x25, x25, x12
	add	x20, x20, x12
	add	x21, x21, x12
.L726:
	add	w23, w23, 1
	add	x22, x22, x13
	cmp	w26, w23
	bne	.L695
	str	w3, [x28]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 112
	ret
	.p2align 3
.L781:
	and	x0, x0, 72057594037927935
	and	x2, x2, -72057594037927936
	orr	x0, x2, x0
	strb	wzr, [x1, -1]
.L722:
	str	x0, [x20, x7]
	b	.L723
	.p2align 3
.L780:
	and	x0, x0, -71776119061217281
	and	x3, x2, 71776119061217280
	orr	x0, x3, x0
	mov	w10, 0
	mov	w14, 1
	b	.L718
	.p2align 3
.L779:
	and	x0, x0, -280375465082881
	and	x3, x2, 280375465082880
	orr	x0, x3, x0
	mov	w10, 0
	mov	w14, 1
	b	.L715
	.p2align 3
.L777:
	and	x3, x2, 4278190080
	and	x0, x0, -4278190081
	orr	x0, x3, x0
	mov	w14, 1
	mov	w3, 0
	b	.L709
	.p2align 3
.L778:
	and	x3, x2, 1095216660480
	and	x0, x0, -1095216660481
	orr	x0, x3, x0
	mov	w14, 1
	mov	w3, 0
	b	.L712
	.p2align 3
.L776:
	and	x3, x2, 16711680
	and	x0, x0, -16711681
	orr	x0, x3, x0
	mov	w14, 1
	mov	w3, 0
	b	.L706
	.p2align 3
.L774:
	bfi	x0, x2, 0, 8
	mov	w3, 0
	mov	w14, 1
	b	.L700
	.p2align 3
.L775:
	and	x3, x2, 65280
	and	x0, x0, -65281
	orr	x0, x3, x0
	mov	w14, 1
	mov	w3, 0
	b	.L703
	.p2align 3
.L729:
	mov	w8, 0
	mov	w14, 0
	b	.L698
.L693:
	sub	w2, w26, w23
	mul	w22, w23, w13
	str	w13, [x29, 108]
	mov	w1, 0
	mul	w2, w2, w13
	add	x22, x5, x22, sxtw
	mov	x0, x22
	sxtw	x2, w2
	bl	memset
	ldr	w13, [x29, 108]
	cmp	w23, w26
	blt	.L782
.L728:
	mov	w3, 0
	str	w3, [x28]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 112
	ret
.L772:
	add	w26, w0, w0, lsr 31
	mov	w23, 0
	asr	w26, w26, 1
	b	.L692
.L773:
	add	w23, w0, w0, lsr 31
	add	x28, x19, 64
	asr	w23, w23, 1
	mul	w1, w27, w23
	sbfiz	x1, x1, 3, 32
	add	x21, x21, x1
	add	x20, x2, x1
	mul	w1, w23, w13
	add	x24, x3, x1
	add	x25, x4, x1
	b	.L692
	.size	get_overlay_image, .-get_overlay_image
	.align	2
	.p2align 3,,7
	.type	direct_mode_data_change_part2, %function
direct_mode_data_change_part2:
	stp	x29, x30, [sp, -96]!
	adrp	x5, .LANCHOR0
	cmp	w4, 2
	add	x29, sp, 0
	stp	x21, x22, [sp, 32]
	mov	x21, x3
	ldr	x3, [x5, #:lo12:.LANCHOR0]
	stp	x25, x26, [sp, 64]
	mov	x25, x1
	stp	x19, x20, [sp, 16]
	mov	x26, x2
	stp	x23, x24, [sp, 48]
	mov	x24, x0
	str	x27, [sp, 80]
	ldrb	w0, [x21, 56]
	ldp	w8, w23, [x3, 116]
	ldr	w5, [x21, 72]
	ldr	x19, [x21, 120]
	sub	w0, w0, w5
	lsr	w20, w8, 3
	lsl	w0, w0, 10
	add	x19, x19, x0, sxtw
	beq	.L856
	cmp	w4, 3
	beq	.L786
	lsr	w27, w8, 2
	mov	x0, 0
	mov	w22, 0
.L785:
	sub	w2, w23, w22
	add	x0, x24, x0
	mov	w1, 0
	mul	w2, w2, w27
	sxtw	x2, w2
	bl	memset
	cmp	w23, w22
	ble	.L783
	sub	w7, w20, #1
	mul	w8, w22, w27
	add	x7, x7, 1
	lsl	w9, w27, 1
	lsl	x7, x7, 3
	mov	w6, 3
	mov	w5, 12
	.p2align 2
.L813:
	add	x3, x24, x8, sxtw
	cbz	w20, .L788
	mov	x4, 0
	.p2align 2
.L800:
	ldr	x12, [x25, x4, lsl 3]
	ldr	x1, [x26, x4, lsl 3]
	cmp	x12, x1
	beq	.L789
	ldr	x2, [x21, 216]
	mov	w0, 0
	eor	x10, x12, x1
	ldr	w2, [x2, 40]
	sub	w2, w2, #2
	cmp	w2, 9
	bhi	.L815
	and	x1, x1, -506381209866536712
	eor	x10, x12, x1
	cmp	x12, x1
	bne	.L815
.L791:
	str	w0, [x3, x4, lsl 2]
.L789:
	add	x4, x4, 1
	cmp	w20, w4
	bgt	.L800
	add	x25, x25, x7
	add	x26, x26, x7
	mov	x10, 0
	b	.L812
	.p2align 3
.L858:
	and	x1, x1, -506381209866536712
	eor	x11, x2, x1
	cmp	x2, x1
	bne	.L816
.L803:
	ldr	w1, [x3, x10, lsl 2]
	orr	w0, w1, w0
	str	w0, [x3, x10, lsl 2]
.L801:
	add	x10, x10, 1
	cmp	w20, w10
	ble	.L857
.L812:
	ldr	x2, [x25, x10, lsl 3]
	ldr	x1, [x26, x10, lsl 3]
	cmp	x2, x1
	beq	.L801
	ldr	x4, [x21, 216]
	mov	w0, 0
	eor	x11, x2, x1
	ldr	w4, [x4, 40]
	sub	w4, w4, #2
	cmp	w4, 9
	bls	.L858
.L816:
	and	x0, x11, 255
	lsr	x17, x1, 22
	cmp	x0, 0
	lsr	x16, x1, 6
	csel	w0, w5, wzr, ne
	tst	x11, 65280
	orr	w12, w0, 192
	lsr	w13, w2, 27
	csel	w0, w12, w0, ne
	lsr	x4, x1, 14
	tst	x11, 16711680
	ubfx	x12, x2, 11, 5
	orr	w18, w0, 3072
	lsl	x15, x1, 2
	lsr	x14, x1, 38
	and	x17, x17, 992
	and	x16, x16, 992
	csel	w0, w18, w0, ne
	ubfx	x27, x2, 19, 5
	orr	x17, x17, x13
	ubfx	x30, x2, 3, 5
	orr	x16, x16, x12
	lsr	x13, x1, 30
	ubfx	x12, x2, 43, 5
	and	x4, x4, 992
	and	x15, x15, 992
	and	x14, x14, 992
	tst	x11, 4278190080
	orr	x14, x14, x12
	orr	w18, w0, 49152
	orr	x4, x4, x27
	lsr	x12, x1, 46
	ubfx	x27, x2, 35, 5
	orr	x15, x15, x30
	and	x13, x13, 992
	lsr	x1, x1, 54
	csel	w0, w18, w0, ne
	orr	x13, x13, x27
	ubfx	x18, x2, 51, 5
	and	x1, x1, 992
	add	x2, x19, x2, lsr 59
	and	x12, x12, 992
	tst	x11, 1095216660480
	orr	x12, x12, x18
	ldrb	w17, [x19, x17]
	orr	w27, w0, 786432
	ldrb	w16, [x19, x16]
	csel	w0, w27, w0, ne
	ldrb	w4, [x19, x4]
	tst	x11, 280375465082880
	ldrb	w18, [x19, x14]
	ldrb	w15, [x19, x15]
	lsl	w16, w16, 6
	ldrb	w14, [x19, x13]
	ldrb	w13, [x2, x1]
	orr	w1, w0, 12582912
	csel	w0, w1, w0, ne
	ldrb	w2, [x19, x12]
	lsl	w1, w17, 14
	tst	x11, 71776119061217280
	orr	w1, w1, w4, lsl 10
	orr	w17, w0, 201326592
	orr	w15, w16, w15, lsl 2
	lsl	w12, w18, 22
	csel	w0, w17, w0, ne
	orr	w1, w1, w15
	orr	w12, w12, w14, lsl 18
	lsl	w4, w13, 30
	tst	x11, -72057594037927936
	orr	w1, w1, w12
	orr	w11, w0, -1073741824
	orr	w2, w4, w2, lsl 26
	csel	w0, w11, w0, ne
	orr	w1, w1, w2
	and	w0, w1, w0
	b	.L803
	.p2align 3
.L815:
	and	x0, x10, 255
	lsr	x11, x1, 30
	cmp	x0, 0
	lsr	x2, x1, 14
	csel	w0, w6, wzr, ne
	tst	x10, 65280
	orr	w13, w0, 48
	ubfx	x17, x12, 35, 5
	csel	w0, w13, w0, ne
	ubfx	x14, x12, 19, 5
	tst	x10, 16711680
	lsr	x16, x1, 22
	orr	w18, w0, 768
	lsr	x15, x1, 6
	lsr	x13, x1, 46
	and	x11, x11, 992
	and	x2, x2, 992
	csel	w0, w18, w0, ne
	lsr	w30, w12, 27
	orr	x11, x11, x17
	ubfx	x27, x12, 11, 5
	orr	x2, x2, x14
	ubfx	x18, x12, 51, 5
	lsr	x14, x1, 38
	and	x16, x16, 992
	and	x15, x15, 992
	and	x13, x13, 992
	tst	x10, 4278190080
	orr	x16, x16, x30
	orr	w17, w0, 12288
	ubfx	x30, x12, 43, 5
	orr	x15, x15, x27
	orr	x13, x13, x18
	lsl	x27, x1, 2
	and	x14, x14, 992
	csel	w0, w17, w0, ne
	orr	x14, x14, x30
	lsr	x1, x1, 54
	and	x30, x27, 992
	ubfx	x27, x12, 3, 5
	tst	x10, 1095216660480
	ldrb	w17, [x19, x11]
	ldrb	w18, [x19, x2]
	orr	x27, x30, x27
	orr	w2, w0, 196608
	and	x11, x1, 992
	add	x30, x19, x12, lsr 59
	csel	w0, w2, w0, ne
	ldrb	w15, [x19, x15]
	tst	x10, 280375465082880
	ldrb	w2, [x19, x16]
	orr	w1, w0, 3145728
	ldrb	w13, [x19, x13]
	csel	w0, w1, w0, ne
	ldrb	w12, [x19, x14]
	lsl	w1, w17, 16
	ldrb	w14, [x19, x27]
	lsl	w18, w18, 8
	ldrb	w11, [x30, x11]
	tst	x10, 71776119061217280
	orr	w1, w1, w2, lsl 12
	orr	w16, w0, 50331648
	orr	w15, w18, w15, lsl 4
	lsl	w13, w13, 24
	csel	w0, w16, w0, ne
	orr	w1, w1, w15
	orr	w12, w13, w12, lsl 20
	tst	x10, -72057594037927936
	orr	w1, w1, w12
	orr	w10, w0, 805306368
	orr	w2, w14, w11, lsl 28
	csel	w0, w10, w0, ne
	orr	w1, w1, w2
	and	w0, w1, w0
	b	.L791
	.p2align 3
.L857:
	add	x25, x25, x7
	add	x26, x26, x7
.L788:
	add	w22, w22, 2
	add	w8, w8, w9
	cmp	w23, w22
	bgt	.L813
.L783:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 96
	ret
.L856:
	add	w23, w23, w23, lsr 31
	lsr	w27, w8, 2
	asr	w23, w23, 1
	mov	x0, 0
	mov	w22, 0
	b	.L785
.L786:
	add	w22, w23, w23, lsr 31
	lsr	w27, w8, 2
	asr	w22, w22, 1
	mul	w0, w20, w22
	sbfiz	x0, x0, 3, 32
	add	x25, x1, x0
	add	x26, x2, x0
	mul	w0, w22, w27
	sxtw	x0, w0
	b	.L785
	.size	direct_mode_data_change_part2, .-direct_mode_data_change_part2
	.align	2
	.p2align 3,,7
	.type	direct_mode_data_change_part, %function
direct_mode_data_change_part:
	stp	x29, x30, [sp, -96]!
	adrp	x5, .LANCHOR0
	cmp	w4, 2
	add	x29, sp, 0
	stp	x23, x24, [sp, 48]
	mov	x24, x3
	ldr	x23, [x5, #:lo12:.LANCHOR0]
	stp	x21, x22, [sp, 32]
	mov	x21, x2
	stp	x19, x20, [sp, 16]
	add	x23, x23, 40
	stp	x27, x28, [sp, 80]
	mov	x20, x1
	stp	x25, x26, [sp, 64]
	mov	x28, x0
	ldr	w1, [x3, 72]
	ldrb	w0, [x3, 56]
	ldr	w10, [x23, 76]
	ldr	x19, [x3, 120]
	sub	w0, w0, w1
	lsl	w0, w0, 10
	lsr	w22, w10, 3
	add	x19, x19, x0, sxtw
	ldr	w0, [x23, 80]
	beq	.L901
	mov	w26, w0
	cmp	w4, 3
	mov	w25, 0
	beq	.L902
.L861:
	ldr	w1, [x23, 156]
	lsr	w27, w10, 2
	cbz	w1, .L862
	sub	w2, w26, w25
	sub	w0, w0, w26
	mov	w1, 0
	mul	w2, w2, w27
	mul	w0, w0, w27
	sxtw	x2, w2
	add	x0, x28, x0
	bl	memset
	ldr	w0, [x23, 80]
	sub	w0, w0, #1
	sub	w0, w0, w25
	mul	w0, w0, w27
	neg	w27, w27
	add	x28, x28, x0
.L865:
	cmp	w26, w25
	ble	.L859
	sub	w9, w22, #1
	sxtw	x10, w27
	add	x9, x9, 1
	mov	w8, 3
	lsl	x9, x9, 3
	.p2align 2
.L864:
	mov	x4, 0
	cbz	w22, .L879
	.p2align 2
.L898:
	ldr	x13, [x20, x4, lsl 3]
	ldr	x1, [x21, x4, lsl 3]
	cmp	x13, x1
	beq	.L866
	ldr	x2, [x24, 216]
	mov	w0, 0
	eor	x5, x13, x1
	ldr	w2, [x2, 40]
	sub	w2, w2, #2
	cmp	w2, 9
	bhi	.L880
	and	x1, x1, -506381209866536712
	eor	x5, x13, x1
	cmp	x13, x1
	bne	.L880
.L868:
	strh	w0, [x28, x4, lsl 1]
.L866:
	add	x4, x4, 1
	cmp	w22, w4
	bgt	.L898
	add	x20, x20, x9
	add	x21, x21, x9
.L879:
	add	w25, w25, 1
	add	x28, x28, x10
	cmp	w26, w25
	bne	.L864
.L859:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	ret
	.p2align 3
.L880:
	and	x0, x5, 255
	lsr	x3, x1, 30
	cmp	x0, 0
	lsr	x2, x1, 14
	csel	w0, w8, wzr, ne
	tst	x5, 65280
	orr	w6, w0, 12
	ubfx	x7, x13, 35, 5
	csel	w0, w6, w0, ne
	lsr	x17, x1, 22
	ubfx	x6, x13, 19, 5
	tst	x5, 16711680
	orr	w11, w0, 48
	lsr	x14, x1, 6
	lsr	x16, x1, 46
	and	x3, x3, 992
	and	x2, x2, 992
	csel	w0, w11, w0, ne
	lsr	w12, w13, 27
	orr	x3, x3, x7
	orr	x2, x2, x6
	ubfx	x7, x13, 11, 5
	ubfx	x6, x13, 51, 5
	lsr	x15, x1, 38
	and	x17, x17, 992
	and	x14, x14, 992
	and	x16, x16, 992
	tst	x5, 4278190080
	orr	w11, w0, 192
	orr	x17, x17, x12
	orr	x14, x14, x7
	orr	x16, x16, x6
	ubfx	x7, x13, 43, 5
	lsl	x6, x1, 2
	and	x15, x15, 992
	csel	w0, w11, w0, ne
	orr	x15, x15, x7
	ubfx	x12, x13, 3, 5
	lsr	x1, x1, 54
	and	x6, x6, 992
	orr	x6, x6, x12
	tst	x5, 1095216660480
	ldrb	w11, [x19, x3]
	and	x12, x1, 992
	ldrb	w7, [x19, x2]
	add	x1, x19, x13, lsr 59
	orr	w2, w0, 768
	ldrb	w14, [x19, x14]
	csel	w0, w2, w0, ne
	ldrb	w3, [x19, x16]
	ldrb	w2, [x19, x17]
	tst	x5, 280375465082880
	ldrb	w13, [x19, x15]
	orr	w15, w0, 3072
	csel	w0, w15, w0, ne
	ldrb	w12, [x1, x12]
	ldrb	w15, [x19, x6]
	lsl	w11, w11, 8
	lsl	w7, w7, 4
	tst	x5, 71776119061217280
	orr	w6, w0, 12288
	orr	w1, w11, w2, lsl 6
	lsl	w3, w3, 12
	orr	w7, w7, w14, lsl 2
	csel	w0, w6, w0, ne
	orr	w1, w1, w7
	orr	w6, w3, w13, lsl 10
	tst	x5, -72057594037927936
	orr	w3, w0, 49152
	orr	w1, w1, w6
	orr	w2, w15, w12, lsl 14
	csel	w0, w3, w0, ne
	orr	w1, w1, w2
	and	w0, w1, w0
	and	w0, w0, 65535
	b	.L868
.L862:
	sub	w2, w26, w25
	mul	w23, w25, w27
	mov	w1, 0
	mul	w2, w2, w27
	add	x28, x28, x23, sxtw
	mov	x0, x28
	sxtw	x2, w2
	bl	memset
	b	.L865
.L901:
	add	w26, w0, w0, lsr 31
	mov	w25, 0
	asr	w26, w26, 1
	b	.L861
.L902:
	add	w25, w0, w0, lsr 31
	asr	w25, w25, 1
	mul	w1, w22, w25
	sbfiz	x1, x1, 3, 32
	add	x20, x20, x1
	add	x21, x2, x1
	b	.L861
	.size	direct_mode_data_change_part, .-direct_mode_data_change_part
	.align	2
	.p2align 3,,7
	.type	is_full_refresh_done, %function
is_full_refresh_done:
	ldp	w5, w7, [x0, 80]
	ldr	w2, [x0, 732]
	cmp	w7, 0
	add	w1, w7, 7
	csel	w1, w1, w7, lt
	ldr	x6, [x0, 160]
	cmp	w2, 3
	asr	w1, w1, 3
	beq	.L905
	cmp	w2, 5
	bne	.L919
	cmp	w1, 0
	ble	.L907
	mov	x4, -8
	ldrb	w8, [x0, 56]
	add	x0, x4, x5, sxtw 3
	ldrb	w0, [x6, x0]
	cmp	x0, 255
	ccmp	x0, x8, 0, ne
	bcc	.L912
	lsl	w3, w5, 1
	mov	x0, x4
	mov	w2, 1
	.p2align 2
.L909:
	add	w2, w2, 1
	add	x4, x0, x3, sxtw 3
	cmp	w1, w2
	blt	.L907
	ldrb	w4, [x6, x4]
	add	w3, w3, w5
	cmp	x4, 255
	ccmp	x4, x8, 0, ne
	bcs	.L909
.L912:
	mov	w0, 0
	ret
	.p2align 3
.L919:
	mul	w1, w1, w5
	ldrb	w2, [x0, 56]
	add	x1, x6, x1, sxtw 3
	ldrb	w0, [x1, -8]
	cmp	x0, 255
	ccmp	x0, x2, 0, ne
	bcc	.L912
.L907:
	mul	w2, w7, w5
	stp	x29, x30, [sp, -16]!
	mov	w1, 0
	mov	x0, x6
	add	x29, sp, 0
	sxtw	x2, w2
	bl	memset
	mov	w0, 1
	ldp	x29, x30, [sp], 16
	ret
	.p2align 3
.L905:
	add	w2, w5, w5, lsr 31
	ldrb	w3, [x0, 56]
	asr	w2, w2, 1
	mov	w0, 0
	mul	w2, w2, w1
	ldr	x2, [x6, w2, sxtw 3]
	and	x2, x2, 255
	cmp	x2, 255
	ccmp	x2, x3, 0, ne
	bcc	.L921
	mul	w1, w1, w5
	cmp	w7, 0
	add	w2, w7, 15
	csel	w2, w2, w7, lt
	sxtw	x1, w1
	asr	w2, w2, 4
	sub	x1, x1, x2, sxtw
	ldr	x1, [x6, x1, lsl 3]
	and	x1, x1, 255
	cmp	x1, 255
	ccmp	x3, x1, 2, ne
	bls	.L907
	ret
	.p2align 3
.L921:
	ret
	.size	is_full_refresh_done, .-is_full_refresh_done
	.align	2
	.p2align 3,,7
	.type	ebc_io_ctl, %function
ebc_io_ctl:
	stp	x29, x30, [sp, -160]!
	adrp	x4, .LANCHOR0
	mov	w3, 28683
	cmp	w1, w3
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x19, x2
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	ldr	x20, [x4, #:lo12:.LANCHOR0]
	ldr	x21, [x0, 200]
	bls	.L1251
	mov	w0, 28693
	cmp	w1, w0
	beq	.L926
	bhi	.L927
	mov	w0, 28688
	cmp	w1, w0
	beq	.L926
	mov	w0, 28690
	cmp	w1, w0
	beq	.L926
	.p2align 2
.L924:
	sub	w1, w1, #28672
	cmp	w1, 33
	bls	.L1252
.L929:
	ldr	x0, [x20, 328]
	adrp	x2, .LANCHOR2
	adrp	x1, .LC25
	add	x2, x2, :lo12:.LANCHOR2
	add	x1, x1, :lo12:.LC25
	bl	_dev_err
	.p2align 2
.L1233:
	mov	x0, 0
.L923:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 160
	ret
	.p2align 3
.L1251:
	mov	w0, 28681
	cmp	w1, w0
	bcs	.L926
	cmp	w1, 28672
	bcc	.L924
	mov	w0, 28675
	cmp	w1, w0
	bls	.L926
	mov	w2, -28678
	add	w0, w1, w2
	cmp	w0, 1
	bhi	.L924
	.p2align 2
.L926:
	cbnz	x19, .L924
	ldr	x0, [x20, 328]
	adrp	x2, .LANCHOR2
	adrp	x1, .LC8
	add	x2, x2, :lo12:.LANCHOR2
	add	x1, x1, :lo12:.LC8
	bl	_dev_err
	mov	x0, -14
	b	.L923
	.p2align 3
.L1252:
	adrp	x0, .L931
	add	x0, x0, :lo12:.L931
	ldrh	w0, [x0,w1,uxtw #1]
	adr	x1, .Lrtx931
	add	x0, x1, w0, sxth #2
	br	x0
.Lrtx931:
	.section	.rodata
	.align	0
	.align	2
.L931:
	.2byte	(.L930 - .Lrtx931) / 4
	.2byte	(.L932 - .Lrtx931) / 4
	.2byte	(.L933 - .Lrtx931) / 4
	.2byte	(.L1233 - .Lrtx931) / 4
	.2byte	(.L935 - .Lrtx931) / 4
	.2byte	(.L936 - .Lrtx931) / 4
	.2byte	(.L937 - .Lrtx931) / 4
	.2byte	(.L938 - .Lrtx931) / 4
	.2byte	(.L1233 - .Lrtx931) / 4
	.2byte	(.L939 - .Lrtx931) / 4
	.2byte	(.L1233 - .Lrtx931) / 4
	.2byte	(.L940 - .Lrtx931) / 4
	.2byte	(.L941 - .Lrtx931) / 4
	.2byte	(.L942 - .Lrtx931) / 4
	.2byte	(.L1233 - .Lrtx931) / 4
	.2byte	(.L1233 - .Lrtx931) / 4
	.2byte	(.L943 - .Lrtx931) / 4
	.2byte	(.L944 - .Lrtx931) / 4
	.2byte	(.L945 - .Lrtx931) / 4
	.2byte	(.L946 - .Lrtx931) / 4
	.2byte	(.L947 - .Lrtx931) / 4
	.2byte	(.L948 - .Lrtx931) / 4
	.2byte	(.L929 - .Lrtx931) / 4
	.2byte	(.L949 - .Lrtx931) / 4
	.2byte	(.L950 - .Lrtx931) / 4
	.2byte	(.L951 - .Lrtx931) / 4
	.2byte	(.L952 - .Lrtx931) / 4
	.2byte	(.L953 - .Lrtx931) / 4
	.2byte	(.L954 - .Lrtx931) / 4
	.2byte	(.L955 - .Lrtx931) / 4
	.2byte	(.L956 - .Lrtx931) / 4
	.2byte	(.L957 - .Lrtx931) / 4
	.2byte	(.L958 - .Lrtx931) / 4
	.2byte	(.L959 - .Lrtx931) / 4
	.text
	.p2align 3
.L927:
	mov	w0, -28695
	add	w0, w1, w0
	cmp	w0, 10
	bls	.L926
	sub	w1, w1, #28672
	cmp	w1, 33
	bhi	.L929
	b	.L1252
	.p2align 3
.L936:
	ldr	w0, [x20, 916]
	add	x20, x20, 232
	str	wzr, [x20, 640]
	tbnz	w0, #31, .L1233
	ldr	x0, [x20, 96]
	adrp	x1, .LC12
	add	x1, x1, :lo12:.LC12
	bl	_dev_info
	mov	x0, 0
	b	.L923
	.p2align 3
.L937:
	bl	ebc_empty_osd_buf_get
	cbz	x0, .L968
	ldr	x22, [x0, 8]
	bl	ebc_phy_buf_base_get
	mov	w1, 26215
	sub	w0, w22, w0
	str	w0, [x29, 88]
	movk	w1, 0x6666, lsl 16
	ldr	w3, [x20, 116]
	str	w3, [x29, 100]
	smull	x1, w0, w1
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	ldr	w3, [x20, 120]
	str	w3, [x29, 96]
	asr	x1, x1, 53
	sub	w0, w1, w0, asr 31
	ldr	w1, [x20, 192]
	str	w1, [x29, 104]
	str	wzr, [x29, 132]
	ldr	w0, [x21, w0, sxtw 2]
	str	w0, [x29, 152]
	ldr	w1, [x2, 52]
	ldr	x0, [x2, 8]
	tbnz	x1, 21, .L961
	ldr	x2, [x2]
	mov	x1, x19
	tbz	x2, 26, .L962
.L961:
	sbfx	x1, x19, 0, 56
	and	x1, x1, x19
.L962:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x1, x1, 68
	csel	x0, xzr, x0, hi
	csinv	x1, x1, xzr, cc
	sbcs	xzr, x1, x0
	cset	x1, ls

// 0 "" 2
#NO_APP
	mov	x0, 68
	cbz	x1, .L923
.L1232:
	sbfx	x1, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	and	x1, x1, x19
	ldr	x2, [x2, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x1, x2
	csel	x3, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, x0
	add	x1, x29, 88
	mov	x0, x3
	bl	__arch_copy_to_user
	sxtw	x0, w0
	b	.L923
	.p2align 3
.L938:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L981
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L982
.L981:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L982:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 68
	add	x0, x29, 88
	bl	__arch_copy_from_user
	cbnz	x0, .L1229
	bl	ebc_osd_buf_clone
	mov	x19, x0
	cbz	x0, .L1233
	ldr	w1, [x29, 92]
	str	w1, [x19, 40]
	ldr	w1, [x29, 108]
	str	w1, [x19, 48]
	ldr	w1, [x29, 116]
	str	w1, [x19, 56]
	ldr	w1, [x29, 112]
	str	w1, [x19, 52]
	ldr	w1, [x29, 120]
	str	w1, [x19, 60]
	bl	ebc_add_to_osd_buf_list
	ldp	w0, w1, [x19, 48]
	orr	w0, w0, w1
	cbnz	w0, .L984
	ldr	w1, [x19, 56]
	ldr	w0, [x20, 316]
	cmp	w1, w0
	beq	.L1253
.L984:
	add	x19, x20, 232
	ldr	w0, [x19, 92]
	cbnz	w0, .L985
	mov	w0, 1
	str	w0, [x19, 92]
.L985:
	ldr	w0, [x19, 88]
	cbnz	w0, .L1233
	mov	w2, 1
	str	w2, [x19, 88]
.L1230:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	mov	w1, w2
	add	x0, x0, 304
	bl	__wake_up_sync
	b	.L1233
	.p2align 3
.L957:
	bl	epd_lut_get_wf_bit
	cmp	w0, 32
	cset	w0, eq
.L1239:
	str	w0, [x29, 88]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x1, 52]
	ldr	x0, [x1, 8]
	tbnz	x2, 21, .L1066
	ldr	x2, [x1]
	mov	x1, x19
	tbz	x2, 26, .L1067
.L1066:
	sbfx	x1, x19, 0, 56
	and	x1, x1, x19
.L1067:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x1, x1, 4
	csel	x0, xzr, x0, hi
	csinv	x1, x1, xzr, cc
	sbcs	xzr, x1, x0
	cset	x1, ls

// 0 "" 2
#NO_APP
	mov	x0, 4
	cbz	x1, .L923
	b	.L1232
	.p2align 3
.L939:
	mov	w0, -1
	str	w0, [x29, 88]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L999
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L1000
.L999:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L1000:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x21, x29, 88
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x19, x0
	cbnz	x0, .L1254
.L1002:
	ldr	w0, [x20, 916]
	add	x20, x20, 232
	ldr	w2, [x29, 88]
	str	w2, [x20, 776]
	tbnz	w0, #31, .L1233
	ldr	x0, [x20, 96]
	adrp	x1, .LC14
	add	x1, x1, :lo12:.LC14
	bl	_dev_info
	b	.L1233
	.p2align 3
.L940:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x1, 52]
	ldr	x0, [x1, 8]
	tbnz	x2, 21, .L986
	ldr	x2, [x1]
	mov	x1, x19
	tbz	x2, 26, .L987
.L986:
	sbfx	x1, x19, 0, 56
	and	x1, x1, x19
.L987:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x1, x1, 4
	csel	x0, xzr, x0, hi
	csinv	x1, x1, xzr, cc
	sbcs	xzr, x1, x0
	cset	x1, ls

// 0 "" 2
#NO_APP
	mov	x0, 4
	cbz	x1, .L923
	sbfx	x1, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	and	x1, x1, x19
	ldr	x2, [x2, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x1, x2
	csel	x3, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, x0
	add	x1, x20, 872
	mov	x0, x3
	bl	__arch_copy_to_user
	sxtw	x0, w0
	b	.L923
	.p2align 3
.L941:
	ldr	w0, [x20, 916]
	mov	w1, 1
	str	w1, [x20, 880]
	add	x20, x20, 232
	tbnz	w0, #31, .L1233
	ldr	x0, [x20, 96]
	adrp	x1, .LC9
	add	x1, x1, :lo12:.LC9
	bl	_dev_info
	mov	x0, 0
	b	.L923
	.p2align 3
.L956:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L1059
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L1060
.L1059:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L1060:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	lsl	x23, x19, 8
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	and	x2, x19, x23, asr 8
	ldr	x0, [x0, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x2, x0
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x24, x29, 88
	mov	x2, 68
	mov	x0, x24
	bl	__arch_copy_from_user
	mov	x22, x0
	cbnz	x0, .L1061
.L1063:
	ldr	x0, [x20, 448]
	cbz	x0, .L968
	ldr	x22, [x0, 8]
	bl	ebc_phy_buf_base_get
	mov	w1, 26215
	sub	w0, w22, w0
	str	w0, [x29, 88]
	movk	w1, 0x6666, lsl 16
	ldr	w3, [x20, 116]
	str	w3, [x29, 100]
	smull	x1, w0, w1
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	ldr	w3, [x20, 120]
	str	w3, [x29, 96]
	asr	x1, x1, 53
	sub	w0, w1, w0, asr 31
	ldr	w1, [x20, 192]
	str	w1, [x29, 104]
	str	wzr, [x29, 132]
	ldr	w0, [x21, w0, sxtw 2]
	str	w0, [x29, 152]
	ldr	w0, [x2, 52]
	ldr	x1, [x2, 8]
	tbnz	x0, 21, .L1064
	ldr	x2, [x2]
	mov	x0, x19
	tbz	x2, 26, .L1065
.L1064:
	and	x0, x19, x23, asr 8
.L1065:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbnz	x0, .L1255
.L1229:
	mov	x0, -14
	b	.L923
	.p2align 3
.L932:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L975
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L976
.L975:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L976:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 68
	add	x0, x29, 88
	bl	__arch_copy_from_user
	cbnz	x0, .L1229
	bl	ebc_phy_buf_base_get
	ldrsw	x1, [x29, 88]
	add	x0, x1, x0
	bl	ebc_find_buf_by_phy_addr
	mov	x1, x0
	cbz	x0, .L1233
	ldr	w2, [x29, 92]
	add	x20, x20, 232
	str	w2, [x1, 40]
	ldr	w2, [x29, 132]
	str	w2, [x1, 64]
	ldr	w2, [x29, 108]
	str	w2, [x1, 48]
	ldr	w2, [x29, 116]
	str	w2, [x1, 56]
	ldr	w2, [x29, 112]
	str	w2, [x1, 52]
	ldr	w2, [x29, 120]
	str	w2, [x1, 60]
	bl	ebc_add_to_dsp_buf_list
	ldr	w0, [x20, 88]
	cbnz	w0, .L1233
	mov	w2, 1
	str	w2, [x20, 88]
	b	.L1230
	.p2align 3
.L958:
	mov	w0, 1
	str	w0, [x29, 88]
	ldr	w0, [x20, 988]
	cmp	w0, 3576
	beq	.L1022
	ldr	w0, [x20, 992]
	cmp	w0, 3576
	bne	.L1233
.L1022:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L1074
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L1024
.L1074:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L1024:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x21, x29, 88
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x19, x0
	cbnz	x0, .L1256
.L1026:
	ldr	w1, [x29, 88]
	mov	x0, 0
	str	w1, [x20, 904]
	b	.L923
	.p2align 3
.L935:
	ldr	w0, [x20, 916]
	mov	w1, 1
	str	w1, [x20, 872]
	add	x20, x20, 232
	tbnz	w0, #31, .L1233
	ldr	x0, [x20, 96]
	adrp	x1, .LC11
	add	x1, x1, :lo12:.LC11
	bl	_dev_info
	mov	x0, 0
	b	.L923
	.p2align 3
.L933:
	ldr	w1, [x20, 116]
	str	w1, [x29, 100]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	ldr	w1, [x20, 120]
	str	w1, [x29, 96]
	ldr	w1, [x20, 192]
	str	w1, [x29, 104]
	ldr	w1, [x20, 132]
	str	w1, [x29, 124]
	ldr	w0, [x20, 136]
	stp	w0, wzr, [x29, 128]
	ldr	w0, [x2, 52]
	ldr	x1, [x2, 8]
	tbnz	x0, 21, .L995
	ldr	x2, [x2]
	mov	x0, x19
	tbz	x2, 26, .L996
.L995:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L996:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbnz	x0, .L997
.L998:
	ldr	x0, [x20, 328]
	adrp	x1, .LC13
	add	x1, x1, :lo12:.LC13
	bl	_dev_err
	mov	x0, -14
	b	.L923
	.p2align 3
.L930:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L964
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L965
.L964:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L965:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	lsl	x23, x19, 8
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	and	x2, x19, x23, asr 8
	ldr	x0, [x0, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x2, x0
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x24, x29, 88
	mov	x2, 68
	mov	x0, x24
	bl	__arch_copy_from_user
	mov	x22, x0
	cbnz	x0, .L967
.L970:
	add	x0, x24, 48
	bl	ebc_empty_buf_get
	mov	x25, x0
	cbz	x0, .L968
	ldr	x22, [x0, 8]
	bl	ebc_phy_buf_base_get
	mov	w1, 26215
	sub	w0, w22, w0
	str	w0, [x29, 88]
	movk	w1, 0x6666, lsl 16
	ldr	w3, [x20, 116]
	str	w3, [x29, 100]
	smull	x1, w0, w1
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	ldr	w3, [x20, 120]
	str	w3, [x29, 96]
	asr	x1, x1, 53
	sub	w0, w1, w0, asr 31
	ldr	w1, [x20, 192]
	str	w1, [x29, 104]
	str	wzr, [x29, 132]
	ldr	w0, [x21, w0, sxtw 2]
	str	w0, [x29, 152]
	ldr	w0, [x2, 52]
	ldr	x1, [x2, 8]
	tbnz	x0, 21, .L971
	ldr	x2, [x2]
	mov	x0, x19
	tbnz	x2, 26, .L971
.L972:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbnz	x0, .L973
.L974:
	mov	x0, x25
	bl	ebc_buf_release
	mov	x0, -14
	b	.L923
	.p2align 3
.L947:
	add	x19, x20, 232
	ldr	w0, [x19, 684]
	tbnz	w0, #31, .L1005
	ldr	x0, [x19, 96]
	adrp	x1, .LC16
	add	x1, x1, :lo12:.LC16
	bl	_dev_info
.L1005:
	ldr	w0, [x19, 632]
	cbnz	w0, .L1257
.L1006:
	mov	x0, 0
	str	wzr, [x19, 632]
	str	wzr, [x19, 652]
	b	.L923
	.p2align 3
.L949:
	ldr	w1, [x20, 988]
	mov	w0, 1
	cmp	w1, 3576
	beq	.L1239
	ldr	w0, [x20, 992]
	cmp	w0, 3576
	cset	w0, eq
	b	.L1239
	.p2align 3
.L950:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	add	x21, x20, 968
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L1027
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L1028
.L1027:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L1028:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1029
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x19, x0
	cbnz	x0, .L1030
.L1032:
	add	x20, x20, 232
	ldr	w0, [x20, 684]
	tbnz	w0, #31, .L1233
	ldr	x0, [x20, 96]
	adrp	x1, .LC19
	ldr	w2, [x20, 736]
	add	x1, x1, :lo12:.LC19
	bl	_dev_info
	mov	x0, 0
	b	.L923
	.p2align 3
.L943:
	mov	w0, 1
	b	.L1239
	.p2align 3
.L944:
	bl	ebc_drop_one_dsp_buf
	cbz	w0, .L1233
	mov	x0, -14
	b	.L923
	.p2align 3
.L951:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	add	x21, x20, 980
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L1033
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L1034
.L1033:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L1034:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1035
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x19, x0
	cbnz	x0, .L1036
.L1038:
	add	x20, x20, 232
	ldr	w0, [x20, 684]
	tbnz	w0, #31, .L1233
	ldr	w2, [x20, 748]
	adrp	x1, .LC20
	ldr	x0, [x20, 96]
	add	x1, x1, :lo12:.LC20
	bl	_dev_info
	b	.L1233
	.p2align 3
.L942:
	ldr	w0, [x20, 916]
	add	x20, x20, 232
	str	wzr, [x20, 648]
	tbnz	w0, #31, .L1233
	ldr	x0, [x20, 96]
	adrp	x1, .LC10
	add	x1, x1, :lo12:.LC10
	bl	_dev_info
	mov	x0, 0
	b	.L923
	.p2align 3
.L959:
	str	wzr, [x29, 88]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L1013
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L1014
.L1013:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L1014:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x21, x29, 88
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x19, x0
	cbnz	x0, .L1258
.L1016:
	add	x19, x20, 232
	ldr	w0, [x19, 684]
	tbnz	w0, #31, .L1017
	ldr	w2, [x29, 88]
	adrp	x1, .LC18
	ldr	x0, [x19, 96]
	add	x1, x1, :lo12:.LC18
	bl	_dev_info
.L1017:
	ldr	w1, [x29, 88]
	mov	x0, 0
	str	w1, [x19, 664]
	b	.L923
	.p2align 3
.L948:
	str	wzr, [x29, 88]
	ldr	w0, [x20, 988]
	cmp	w0, 3576
	beq	.L1007
	ldr	w0, [x20, 992]
	cmp	w0, 3576
	bne	.L1233
.L1007:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L1072
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L1009
.L1072:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L1009:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x21, x29, 88
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x19, x0
	cbnz	x0, .L1259
.L1011:
	add	x19, x20, 232
	ldr	w0, [x19, 684]
	tbnz	w0, #31, .L1012
	ldr	w2, [x29, 88]
	adrp	x1, .LC17
	ldr	x0, [x19, 96]
	add	x1, x1, :lo12:.LC17
	bl	_dev_info
.L1012:
	ldr	w0, [x29, 88]
	str	w0, [x19, 660]
	b	.L1233
	.p2align 3
.L953:
	str	wzr, [x29, 88]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L1044
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L1045
.L1044:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L1045:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x21, x29, 88
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x19, x0
	cbnz	x0, .L1260
.L1047:
	ldr	w1, [x29, 88]
	add	x20, x20, 232
	ldr	w0, [x20, 684]
	cmp	w1, 0
	cset	w2, ne
	strb	w2, [x20, 768]
	tbnz	w0, #31, .L1233
	ldr	x0, [x20, 96]
	adrp	x1, .LC22
	add	x1, x1, :lo12:.LC22
	bl	_dev_info
	b	.L1233
	.p2align 3
.L954:
	str	wzr, [x29, 88]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L1049
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L1050
.L1049:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L1050:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x21, x29, 88
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x19, x0
	cbnz	x0, .L1261
.L1052:
	ldr	w0, [x20, 916]
	add	x20, x20, 232
	ldr	w2, [x29, 88]
	str	w2, [x20, 772]
	tbnz	w0, #31, .L1233
	ldr	x0, [x20, 96]
	adrp	x1, .LC23
	add	x1, x1, :lo12:.LC23
	bl	_dev_info
	b	.L1233
	.p2align 3
.L945:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x1, 52]
	ldr	x0, [x1, 8]
	tbnz	x2, 21, .L989
	ldr	x2, [x1]
	mov	x1, x19
	tbz	x2, 26, .L990
.L989:
	sbfx	x1, x19, 0, 56
	and	x1, x1, x19
.L990:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x1, x1, 4
	csel	x0, xzr, x0, hi
	csinv	x1, x1, xzr, cc
	sbcs	xzr, x1, x0
	cset	x1, ls

// 0 "" 2
#NO_APP
	mov	x0, 4
	cbz	x1, .L923
	sbfx	x1, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	and	x1, x1, x19
	ldr	x2, [x2, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x1, x2
	csel	x3, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, x0
	add	x1, x20, 688
	mov	x0, x3
	bl	__arch_copy_to_user
	sxtw	x0, w0
	b	.L923
	.p2align 3
.L952:
	mov	w0, -1
	str	w0, [x29, 88]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L1039
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L1040
.L1039:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L1040:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x21, x29, 88
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x19, x0
	cbnz	x0, .L1262
.L1042:
	ldr	w0, [x20, 916]
	add	x20, x20, 232
	ldr	w2, [x29, 88]
	str	w2, [x20, 764]
	tbnz	w0, #31, .L1233
	ldr	x0, [x20, 96]
	adrp	x1, .LC21
	add	x1, x1, :lo12:.LC21
	bl	_dev_info
	b	.L1233
	.p2align 3
.L955:
	str	wzr, [x29, 88]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L1054
	ldr	x2, [x0]
	mov	x0, x19
	tbz	x2, 26, .L1055
.L1054:
	sbfx	x0, x19, 0, 56
	and	x0, x0, x19
.L1055:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L1229
	sbfx	x0, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x19
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x21, x29, 88
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x19, x0
	cbnz	x0, .L1263
.L1057:
	ldr	w1, [x29, 88]
	add	x20, x20, 232
	ldr	w0, [x20, 684]
	cmp	w1, 0
	cset	w2, ne
	strb	w2, [x20, 769]
	tbnz	w0, #31, .L1233
	ldr	x0, [x20, 96]
	adrp	x1, .LC24
	add	x1, x1, :lo12:.LC24
	bl	_dev_info
	b	.L1233
	.p2align 3
.L946:
	add	x19, x20, 232
	ldr	w0, [x19, 684]
	tbnz	w0, #31, .L1004
	ldr	x0, [x19, 96]
	adrp	x1, .LC15
	add	x1, x1, :lo12:.LC15
	bl	_dev_info
.L1004:
	mov	x0, 2
	bl	ebc_notify
	mov	w1, 1
	mov	x0, 0
	str	w1, [x19, 632]
	str	w1, [x19, 652]
	b	.L923
.L1255:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	and	x23, x19, x23, asr 8
	ldr	x1, [x0, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x23, x1
	csel	x0, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 68
	mov	x1, x24
	bl	__arch_copy_to_user
	cbz	w0, .L1233
	mov	x0, -14
	b	.L923
	.p2align 3
.L971:
	and	x0, x19, x23, asr 8
	b	.L972
.L997:
	sbfx	x1, x19, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	and	x1, x1, x19
	ldr	x2, [x0, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x1, x2
	csel	x0, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 68
	add	x1, x29, 88
	bl	__arch_copy_to_user
	cbz	x0, .L1233
	b	.L998
	.p2align 3
.L1257:
	mov	x0, 3
	bl	ebc_notify
	b	.L1006
.L973:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	and	x23, x19, x23, asr 8
	ldr	x1, [x0, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x23, x1
	csel	x0, x19, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 68
	mov	x1, x24
	bl	__arch_copy_to_user
	cbz	w0, .L1233
	b	.L974
	.p2align 3
.L1036:
	sub	x0, x21, x0
	mov	x2, x19
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w19, .L1038
	mov	x0, -14
	b	.L923
	.p2align 3
.L1030:
	sub	x0, x21, x0
	mov	x2, x19
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w19, .L1032
	mov	x0, -14
	b	.L923
	.p2align 3
.L1035:
	str	wzr, [x20, 980]
	mov	x0, -14
	b	.L923
.L1029:
	mov	x0, -14
	str	wzr, [x20, 968]
	b	.L923
.L1253:
	ldr	w1, [x19, 60]
	add	x19, x20, 232
	ldr	w0, [x20, 312]
	cmp	w1, w0
	bne	.L984
	b	.L985
.L968:
	mov	x0, -1
	b	.L923
.L1254:
	sub	x0, x21, x0
	mov	x2, x19
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w19, .L1002
	mov	x0, -14
	b	.L923
.L1256:
	sub	x0, x21, x0
	mov	x2, x19
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w19, .L1026
	mov	x0, -14
	b	.L923
.L1258:
	sub	x0, x21, x0
	mov	x2, x19
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w19, .L1016
	mov	x0, -14
	b	.L923
.L1262:
	sub	x0, x21, x0
	mov	x2, x19
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w19, .L1042
	mov	x0, -14
	b	.L923
.L1261:
	sub	x0, x21, x0
	mov	x2, x19
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w19, .L1052
	mov	x0, -14
	b	.L923
.L1263:
	sub	x0, x21, x0
	mov	x2, x19
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w19, .L1057
	mov	x0, -14
	b	.L923
.L1061:
	sub	x0, x24, x0
	mov	x2, x22
	mov	w1, 0
	add	x0, x0, 68
	bl	memset
	cbz	w22, .L1063
	mov	x0, -14
	b	.L923
.L967:
	sub	x0, x24, x0
	mov	x2, x22
	mov	w1, 0
	add	x0, x0, 68
	bl	memset
	cbz	w22, .L970
	mov	x0, -14
	b	.L923
.L1259:
	sub	x0, x21, x0
	mov	x2, x19
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w19, .L1011
	mov	x0, -14
	b	.L923
.L1260:
	sub	x0, x21, x0
	mov	x2, x19
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w19, .L1047
	mov	x0, -14
	b	.L923
	.size	ebc_io_ctl, .-ebc_io_ctl
	.align	2
	.p2align 3,,7
	.type	frame_done_callback, %function
frame_done_callback:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	adrp	x20, .LANCHOR0
	str	x21, [sp, 32]
	ldr	x21, [x20, #:lo12:.LANCHOR0]
	add	x19, x21, 232
	ldr	w0, [x19, 240]
	cmp	w0, 3
	beq	.L1266
	ble	.L1317
	cmp	w0, 4
	beq	.L1269
	cmp	w0, 5
	bne	.L1265
	ldr	w0, [x19, 72]
	cbnz	w0, .L1318
	ldr	x3, [x21, 8]
.L1315:
	mov	x0, x3
	ldr	x3, [x3, 144]
	mov	w2, 0
	mov	w1, 0
	blr	x3
	str	wzr, [x19, 52]
	ldr	w0, [x19, 684]
	cmp	w0, 0
	ble	.L1287
	ldr	x0, [x19, 96]
	adrp	x1, .LC30
	add	x1, x1, :lo12:.LC30
	bl	_dev_info
.L1287:
	mov	x0, x19
	bl	stop_pix_pos_record
.L1290:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	mov	w2, 1
	add	x0, x0, 304
	mov	w1, w2
	bl	__wake_up_sync
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L1269:
	ldr	w0, [x19, 60]
	mov	w1, 1
	str	w1, [x19, 76]
	cbnz	w0, .L1277
	ldr	w0, [x19, 64]
	cbnz	w0, .L1277
	ldr	w0, [x19, 68]
	cbz	w0, .L1277
	ldr	w1, [x19, 684]
	mov	x0, x21
	cmp	w1, 0
	ble	.L1274
	ldr	x0, [x19, 96]
	adrp	x1, .LC26
	add	x1, x1, :lo12:.LC26
	bl	_dev_info
	ldr	x0, [x20, #:lo12:.LANCHOR0]
.L1274:
	ldr	x3, [x0, 8]
	mov	w2, 0
	mov	w1, 0
	mov	x0, x3
	ldr	x3, [x3, 144]
	blr	x3
	ldp	w3, w2, [x19, 80]
	mov	w1, 0
	ldr	x0, [x19, 160]
	mul	w2, w2, w3
	sxtw	x2, w2
	bl	memset
	ldp	w3, w2, [x19, 80]
	mov	w1, 0
	ldr	x0, [x19, 168]
	mul	w2, w2, w3
	sxtw	x2, w2
	bl	memset
	adrp	x2, jiffies
	mov	x1, 402653184
	add	x0, x21, 808
	ldr	x2, [x2, #:lo12:jiffies]
	add	x1, x2, x1
	bl	mod_timer
	str	wzr, [x19, 52]
	str	wzr, [x19, 76]
	b	.L1290
	.p2align 3
.L1317:
	cmp	w0, 1
	bne	.L1265
	ldr	w0, [x19, 72]
	cbz	w0, .L1294
	ldr	w0, [x19, 92]
	cbz	w0, .L1281
	ldr	w0, [x19, 632]
	cbnz	w0, .L1281
.L1282:
	ldr	w1, [x19, 684]
	mov	x0, x21
	cmp	w1, 0
	ble	.L1280
	ldr	x0, [x19, 96]
	adrp	x1, .LC29
	add	x1, x1, :lo12:.LC29
	bl	_dev_info
	ldr	x0, [x20, #:lo12:.LANCHOR0]
.L1280:
	ldr	x3, [x0, 8]
	b	.L1315
	.p2align 3
.L1265:
	ldr	w0, [x19, 72]
	cbnz	w0, .L1288
	ldr	w0, [x19, 744]
	cbnz	w0, .L1289
.L1288:
	add	x20, x20, :lo12:.LANCHOR0
	mov	w0, 1
	str	w0, [x19, 52]
	ldr	x0, [x20, 8]
	bl	wake_up_process
.L1264:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L1266:
	ldr	w0, [x19, 92]
	cbz	w0, .L1275
	ldr	w1, [x19, 684]
	mov	x0, x21
	cmp	w1, 0
	ble	.L1276
	ldr	x0, [x19, 96]
	adrp	x1, .LC27
	add	x1, x1, :lo12:.LC27
	bl	_dev_info
	ldr	x0, [x20, #:lo12:.LANCHOR0]
.L1276:
	ldr	x3, [x0, 8]
	mov	w2, 0
	mov	w1, 0
	mov	x0, x3
	ldr	x3, [x3, 144]
	blr	x3
.L1312:
	adrp	x2, jiffies
	mov	x1, 402653184
	add	x0, x21, 808
	ldr	x2, [x2, #:lo12:jiffies]
	add	x1, x2, x1
	bl	mod_timer
	str	wzr, [x19, 52]
	b	.L1290
	.p2align 3
.L1294:
	mov	x0, x21
	ldr	x3, [x0, 8]
	b	.L1315
	.p2align 3
.L1275:
	ldr	w0, [x19, 60]
	cbnz	w0, .L1277
	ldr	w0, [x19, 64]
	cbnz	w0, .L1277
	ldr	w0, [x19, 68]
	cbz	w0, .L1277
	ldr	w1, [x19, 684]
	mov	x0, x21
	cmp	w1, 0
	ble	.L1279
	ldr	x0, [x19, 96]
	adrp	x1, .LC28
	add	x1, x1, :lo12:.LC28
	bl	_dev_info
	ldr	x0, [x20, #:lo12:.LANCHOR0]
.L1279:
	ldr	x3, [x0, 8]
	mov	w2, 0
	mov	w1, 0
	mov	x0, x3
	ldr	x3, [x3, 144]
	blr	x3
	ldp	w3, w2, [x19, 80]
	mov	w1, 0
	ldr	x0, [x19, 160]
	mul	w2, w2, w3
	sxtw	x2, w2
	bl	memset
	b	.L1312
	.p2align 3
.L1318:
	add	x1, x20, :lo12:.LANCHOR0
	ldr	x0, [x1, 8]
	mov	w1, 1
	str	w1, [x19, 52]
	bl	wake_up_process
	b	.L1264
	.p2align 3
.L1277:
	add	x20, x20, :lo12:.LANCHOR0
	ldr	x0, [x20, 8]
	bl	wake_up_process
	ldr	x21, [sp, 32]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L1281:
	ldr	w0, [x21, 892]
	cbz	w0, .L1288
	ldr	x0, [x19, 216]
	ldr	w0, [x0, 40]
	sub	w0, w0, #12
	cmp	w0, 2
	bhi	.L1288
	ldr	w0, [x19, 88]
	cbnz	w0, .L1282
	b	.L1288
	.p2align 3
.L1289:
	ldr	x3, [x21, 8]
	mov	w2, 0
	mov	w1, 0
	mov	x0, x3
	ldr	x3, [x3, 144]
	blr	x3
	str	wzr, [x19, 52]
	ldr	w0, [x19, 684]
	cmp	w0, 0
	ble	.L1290
	ldr	x0, [x19, 96]
	adrp	x1, .LC30
	add	x1, x1, :lo12:.LC30
	bl	_dev_info
	b	.L1290
	.size	frame_done_callback, .-frame_done_callback
	.align	2
	.p2align 3,,7
	.type	ebc_frame_timeout, %function
ebc_frame_timeout:
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	bl	frame_done_callback
	ldp	x29, x30, [sp], 16
	ret
	.size	ebc_frame_timeout, .-ebc_frame_timeout
	.align	2
	.p2align 3,,7
	.type	ebc_buffer_manage_init, %function
ebc_buffer_manage_init:
	stp	x29, x30, [sp, -176]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x19, x0
	stp	x21, x22, [sp, 32]
	mov	x20, x0
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	ldr	x21, [x19], 232
	ldr	w0, [x19, 28]
	cmp	w0, 5242880
	bgt	.L1340
	ldr	x0, [x21, 752]
	adrp	x1, .LC32
	mov	w2, 0
	add	x1, x1, :lo12:.LC32
	bl	of_parse_phandle
	cbz	x0, .L1332
	add	x2, x29, 80
	mov	w1, 0
	bl	of_address_to_resource
	mov	w24, w0
	cbnz	w0, .L1341
	ldp	x1, x2, [x29, 80]
	str	x1, [x20, 232]
	mov	w0, 58720255
	add	x2, x2, 1
	sub	x2, x2, x1
	str	w2, [x19, 24]
	cmp	w2, w0
	ble	.L1342
	mov	x3, 1
	sxtw	x2, w2
	mov	x0, x21
	bl	devm_memremap
	str	x0, [x19, 8]
	mov	x1, x0
	cbz	x0, .L1343
	ldr	w2, [x19, 24]
	mov	w4, 4
	ldr	x0, [x20, 232]
	mov	w3, 5242880
	bl	ebc_buf_init
	mov	w24, w0
	cbnz	w0, .L1331
	add	x0, x20, 920
	add	x25, x20, 960
	mov	x23, x0
	mov	x22, x0
	mov	x21, 0
	stp	xzr, xzr, [x0]
	stp	xzr, xzr, [x0, 16]
	str	xzr, [x20, 952]
.L1329:
	ldr	x0, [x19]
	mov	x1, 5242880
	add	x0, x21, x0
	bl	ebc_get_dma_buf
	cmn	x0, #4096
	bhi	.L1335
	str	x0, [x22], 8
	add	x21, x21, 5242880
	cmp	x22, x25
	bne	.L1329
	ldr	x1, [x19, 8]
	mov	x0, 20971520
	mov	x4, 2097152
	mov	x2, 26214400
	add	x0, x1, x0
	str	x0, [x19, 16]
	str	x4, [x20, 80]
	add	x6, x1, x2
	str	x6, [x20, 64]
	mov	x5, 28311552
	add	x3, x1, x5
	ldr	x0, [x19]
	add	x2, x0, x2
	str	x2, [x20, 72]
	str	x6, [x19, 176]
	add	x0, x0, x5
	str	x4, [x20, 104]
	mov	x2, 35651584
	stp	x3, x0, [x20, 88]
	add	x2, x1, x2
	mov	x0, 30408704
	add	x0, x1, x0
	stp	x0, x2, [x19, 136]
	mov	x0, 40894464
	mov	x2, 46137344
	add	x0, x1, x0
	add	x2, x1, x2
	str	x3, [x19, 184]
	stp	x0, x2, [x19, 152]
	mov	x3, 57671680
	mov	x0, 51380224
	mov	x2, 56623104
	add	x0, x1, x0
	add	x2, x1, x2
	str	x0, [x19, 168]
	add	x1, x1, x3
	stp	x2, x1, [x19, 120]
	mov	w1, 0
	ldp	w3, w2, [x20, 116]
	mul	w2, w3, w2
	bl	memset
	ldp	w3, w2, [x20, 116]
	mov	w1, 0
	ldr	x0, [x19, 160]
	mul	w2, w3, w2
	bl	memset
	ldrsw	x2, [x19, 28]
	mov	w1, 240
	ldr	x0, [x19, 152]
	bl	memset
.L1321:
	mov	w0, w24
	ldr	x25, [sp, 64]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 176
	ret
	.p2align 3
.L1335:
	ldr	x1, [x23]
	mov	x0, x1
	cbz	x1, .L1330
	bl	dma_buf_put
	str	xzr, [x23]
.L1330:
	add	x23, x23, 8
	cmp	x25, x23
	bne	.L1335
.L1331:
	mov	w24, -12
	ldr	x25, [sp, 64]
	mov	w0, w24
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 176
	ret
	.p2align 3
.L1341:
	mov	x0, x21
	adrp	x1, .LC33
	add	x1, x1, :lo12:.LC33
	bl	_dev_err
	mov	w0, w24
	ldr	x25, [sp, 64]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 176
	ret
	.p2align 3
.L1340:
	adrp	x1, .LC31
	mov	x0, x21
	add	x1, x1, :lo12:.LC31
	mov	w24, -19
	bl	_dev_err
	b	.L1321
	.p2align 3
.L1342:
	adrp	x1, .LC34
	mov	w2, 58720256
	add	x1, x1, :lo12:.LC34
	mov	x0, x21
	mov	w24, -19
	bl	_dev_err
	b	.L1321
.L1332:
	mov	w24, -19
	b	.L1321
.L1343:
	adrp	x1, .LC35
	mov	x0, x21
	add	x1, x1, :lo12:.LC35
	mov	w24, -12
	bl	_dev_err
	b	.L1321
	.size	ebc_buffer_manage_init, .-ebc_buffer_manage_init
	.align	2
	.p2align 3,,7
	.type	ebc_lut_table_init, %function
ebc_lut_table_init:
	stp	x29, x30, [sp, -160]!
	adrp	x1, .LC36
	mov	w2, 0
	add	x1, x1, :lo12:.LC36
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x19, x0
	stp	x21, x22, [sp, 32]
	ldr	x22, [x0, 96]
	ldr	x20, [x22, 752]
	mov	x0, x20
	bl	of_parse_phandle
	cbz	x0, .L1349
	mov	x21, x0
	adrp	x1, .LC37
	add	x2, x29, 60
	add	x1, x1, :lo12:.LC37
	mov	x0, x20
	bl	of_get_property
	ldr	w1, [x29, 60]
	cmp	w1, 0
	ble	.L1350
	bl	pvi_wf_add_custom_mode_table
	cbnz	w0, .L1349
.L1350:
	add	x2, x29, 64
	mov	w1, 0
	mov	x0, x21
	bl	of_address_to_resource
	mov	w20, w0
	cbz	w0, .L1357
.L1344:
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 160
	ret
	.p2align 3
.L1357:
	ldp	x0, x21, [x29, 64]
	mov	x3, 1
	str	x0, [x19, 40]
	add	x21, x21, x3
	mov	x1, x0
	sub	x21, x21, x0
	str	w21, [x19, 48]
	sxtw	x2, w21
	mov	x0, x22
	bl	devm_memremap
	str	x0, [x19, 200]
	cbz	x0, .L1358
	bl	epd_lut_from_mem_init
	tbz	w0, #31, .L1344
	ldr	x0, [x19, 96]
	adrp	x1, .LC39
	add	x1, x1, :lo12:.LC39
	bl	_dev_err
	ldr	x0, [x19, 96]
	mov	w2, w21
	ldr	x1, [x19, 200]
	bl	epd_lut_from_file_init
	tbz	w0, #31, .L1344
	ldr	x0, [x19, 96]
	mov	w20, -1
	adrp	x1, .LC40
	add	x1, x1, :lo12:.LC40
	bl	_dev_err
	b	.L1344
	.p2align 3
.L1349:
	mov	w20, -19
	mov	w0, w20
	ldp	x21, x22, [sp, 32]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 160
	ret
.L1358:
	ldr	x0, [x19, 96]
	adrp	x2, .LANCHOR3
	adrp	x1, .LC38
	mov	w3, 4173
	add	x2, x2, :lo12:.LANCHOR3
	add	x1, x1, :lo12:.LC38
	mov	w20, -12
	bl	_dev_err
	b	.L1344
	.size	ebc_lut_table_init, .-ebc_lut_table_init
	.align	2
	.p2align 3,,7
	.type	flip, %function
flip:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x19, x0
	stp	x21, x22, [sp, 32]
	mov	x22, x1
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	ldp	w21, w1, [x0, 132]
	ldr	w23, [x0, 172]
	ldrsw	x20, [x0, 72]
	add	w21, w21, w1
	ldr	w0, [x0, 140]
	add	w21, w21, w0
	cbnz	w23, .L1372
.L1360:
	ldr	w0, [x22, 784]
	tbnz	w0, #31, .L1361
	ldr	w1, [x22, 80]
	cmp	w0, w1
	bge	.L1361
	ldr	w1, [x22, 780]
	tbnz	w1, #31, .L1361
	ldr	w2, [x22, 84]
	cmp	w1, w2
	bge	.L1361
	add	x4, x20, x20, lsl 1
	cmp	w1, 0
	add	x4, x19, x4, lsl 3
	mul	w0, w0, w2
	add	w3, w1, 3
	ldrb	w5, [x22, 788]
	csel	w3, w3, w1, lt
	negs	w2, w1
	ldr	x4, [x4, 24]
	asr	w3, w3, 2
	add	w0, w3, w0, lsr 2
	and	w1, w1, 3
	and	w2, w2, 3
	add	x3, x22, x5, sxtw
	csneg	w1, w1, w2, mi
	add	w5, w5, 1
	ldrb	w0, [x4, w0, uxtw]
	lsl	w1, w1, 1
	strb	w5, [x22, 788]
	asr	w0, w0, w1
	and	w0, w0, 3
	add	w0, w0, 48
	strb	w0, [x3, 789]
.L1361:
	ldr	x0, [x19]
	ldrsw	x2, [x22, 32]
	cbz	x0, .L1364
	ldr	x1, [x0, 648]
	adrp	x3, dummy_dma_ops
	add	x3, x3, :lo12:dummy_dma_ops
	cmp	x1, 0
	csel	x1, x3, x1, eq
.L1362:
	ldr	x4, [x1, 88]
	cbz	x4, .L1363
	add	x1, x20, x20, lsl 1
	mov	w3, 1
	add	x1, x19, x1, lsl 3
	ldr	x1, [x1, 32]
	blr	x4
.L1363:
	ldr	x5, [x19, 8]
	mov	w4, 0
	mov	w3, 0
	mov	w2, 0
	mov	x0, x5
	mov	w1, 0
	add	x20, x20, x20, lsl 1
	ldr	x5, [x5, 88]
	add	x20, x19, x20, lsl 3
	blr	x5
	ldr	x1, [x19, 8]
	mov	w2, 0
	mov	x0, x1
	ldr	x3, [x1, 96]
	ldr	w1, [x20, 32]
	blr	x3
	ldr	x3, [x19, 8]
	mov	w1, w21
	mov	w2, 0
	mov	x0, x3
	ldr	x3, [x3, 144]
	blr	x3
	ldr	x2, [x19, 8]
	mov	w1, 1
	mov	x0, x2
	ldr	x2, [x2, 128]
	blr	x2
	ldr	w1, [x19, 72]
	mov	w0, 1
	sub	w0, w0, w1
	str	w0, [x19, 72]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 80
	ret
	.p2align 3
.L1372:
	ldp	w26, w2, [x19, 76]
	add	x25, x20, x20, lsl 1
	ldr	w0, [x19, 168]
	add	x25, x19, x25, lsl 3
	sub	w2, w2, w0
	ldr	x1, [x25, 24]
	mul	w24, w26, w0
	add	w0, w23, w0
	mul	w2, w2, w26
	mul	w0, w0, w26
	lsr	w24, w24, 2
	lsr	w2, w2, 2
	lsr	w0, w0, 2
	add	x0, x1, x0
	add	x1, x1, x24
	bl	memmove
	mul	w2, w23, w26
	ldr	x0, [x25, 24]
	mov	w1, 0
	add	x0, x0, x24
	lsr	w2, w2, 2
	bl	memset
	b	.L1360
	.p2align 3
.L1364:
	adrp	x1, dummy_dma_ops
	add	x1, x1, :lo12:dummy_dma_ops
	b	.L1362
	.size	flip, .-flip
	.align	2
	.p2align 3,,7
	.type	ebc_lut_update, %function
ebc_lut_update:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	add	x19, x0, 232
	stp	x23, x24, [sp, 48]
	mov	w24, w2
	mov	w2, 25
	stp	x21, x22, [sp, 32]
	mov	x23, x0
	mov	w22, w1
	str	w2, [x29, 76]
	mov	w1, 1
	bl	ebc_power_set
	ldr	w21, [x19, 764]
	tbnz	w21, #31, .L1374
	ldr	w0, [x19, 684]
	str	w21, [x29, 76]
	cmp	w0, 0
	ble	.L1408
	ldr	x0, [x19, 96]
	adrp	x1, .LC41
	mov	w2, w21
	add	x1, x1, :lo12:.LC41
	bl	_dev_info
.L1376:
	ldr	w2, [x29, 76]
	tbz	w2, #31, .L1382
	ldr	w0, [x19, 684]
	tbnz	w0, #31, .L1383
	ldr	x0, [x19, 96]
	adrp	x1, .LC42
	add	x1, x1, :lo12:.LC42
	bl	_dev_info
	ldr	w0, [x19, 684]
.L1383:
	mov	w20, w21
	str	wzr, [x29, 76]
.L1384:
	cmp	w20, 50
	bhi	.L1387
.L1419:
	cmp	w0, 0
	ble	.L1388
	ldr	w3, [x29, 76]
	adrp	x1, .LC45
	ldr	x0, [x19, 96]
	mov	w2, w20
	add	x1, x1, :lo12:.LC45
	bl	_dev_info
.L1388:
	str	w20, [x29, 76]
	sub	w1, w22, #1
	cmp	w1, 22
	bls	.L1418
.L1409:
	mov	w1, 3
	.p2align 2
.L1391:
	ldrb	w4, [x19, 768]
	mov	w2, w20
	mov	w5, w24
	mov	w3, 32
	add	x0, x23, 336
	bl	epd_lut_get
	mov	w20, w0
	cbz	w0, .L1373
	ldr	x0, [x19, 96]
	adrp	x1, .LC47
	add	x1, x1, :lo12:.LC47
	bl	_dev_err
.L1373:
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 80
	ret
	.p2align 3
.L1408:
	mov	w20, w21
.L1375:
	cmp	w21, 50
	ble	.L1384
	tbnz	w0, #31, .L1385
	ldr	x0, [x19, 96]
	adrp	x1, .LC43
	mov	w2, w21
	add	x1, x1, :lo12:.LC43
	bl	_dev_info
	ldr	w0, [x19, 684]
.L1385:
	mov	w1, 50
	str	w1, [x29, 76]
	cmp	w20, 50
	bls	.L1419
	.p2align 2
.L1387:
	cmp	w0, 0
	ble	.L1417
	ldr	w2, [x29, 76]
	adrp	x1, .LC46
	ldr	x0, [x19, 96]
	mov	w3, w20
	add	x1, x1, :lo12:.LC46
	bl	_dev_info
.L1417:
	sub	w1, w22, #1
	ldr	w20, [x29, 76]
	cmp	w1, 22
	bhi	.L1409
.L1418:
	adrp	x0, .L1393
	add	x0, x0, :lo12:.L1393
	ldrb	w0, [x0,w1,uxtw]
	adr	x1, .Lrtx1393
	add	x0, x1, w0, sxtb #2
	br	x0
.Lrtx1393:
	.section	.rodata
	.align	0
	.align	2
.L1393:
	.byte	(.L1392 - .Lrtx1393) / 4
	.byte	(.L1409 - .Lrtx1393) / 4
	.byte	(.L1394 - .Lrtx1393) / 4
	.byte	(.L1395 - .Lrtx1393) / 4
	.byte	(.L1396 - .Lrtx1393) / 4
	.byte	(.L1397 - .Lrtx1393) / 4
	.byte	(.L1398 - .Lrtx1393) / 4
	.byte	(.L1399 - .Lrtx1393) / 4
	.byte	(.L1395 - .Lrtx1393) / 4
	.byte	(.L1396 - .Lrtx1393) / 4
	.byte	(.L1397 - .Lrtx1393) / 4
	.byte	(.L1402 - .Lrtx1393) / 4
	.byte	(.L1402 - .Lrtx1393) / 4
	.byte	(.L1403 - .Lrtx1393) / 4
	.byte	(.L1404 - .Lrtx1393) / 4
	.byte	(.L1403 - .Lrtx1393) / 4
	.byte	(.L1405 - .Lrtx1393) / 4
	.byte	(.L1409 - .Lrtx1393) / 4
	.byte	(.L1409 - .Lrtx1393) / 4
	.byte	(.L1409 - .Lrtx1393) / 4
	.byte	(.L1406 - .Lrtx1393) / 4
	.byte	(.L1403 - .Lrtx1393) / 4
	.byte	(.L1404 - .Lrtx1393) / 4
	.text
	.p2align 3
.L1374:
	ldr	x0, [x23, 16]
	cbz	x0, .L1377
	ldr	x2, [x0, 56]
	add	x1, x29, 76
	blr	x2
	mov	w21, w0
	ldr	w1, [x29, 76]
.L1378:
	cmp	w22, 1
	beq	.L1420
	mov	w0, w22
	bl	ebc_normal_temp_fix
	mov	w20, w0
.L1380:
	cbz	w21, .L1421
	ldr	w0, [x19, 684]
	mov	w1, 25
	str	w1, [x29, 76]
	tbnz	w0, #31, .L1386
	ldr	x0, [x19, 96]
	adrp	x1, .LC44
	mov	w2, w21
	add	x1, x1, :lo12:.LC44
	bl	_dev_info
	ldr	w0, [x19, 684]
	b	.L1384
	.p2align 3
.L1420:
	mov	w0, w1
	bl	ebc_overlay_temp_fix
	mov	w20, w0
	b	.L1380
	.p2align 3
.L1396:
	mov	w1, 6
	b	.L1391
	.p2align 3
.L1395:
	mov	w1, 5
	b	.L1391
	.p2align 3
.L1394:
	mov	w1, 4
	b	.L1391
	.p2align 3
.L1392:
	mov	w1, 10
	b	.L1391
	.p2align 3
.L1403:
	mov	w1, 1
	b	.L1391
	.p2align 3
.L1402:
	mov	w1, 7
	b	.L1391
	.p2align 3
.L1397:
	mov	w1, 8
	b	.L1391
	.p2align 3
.L1404:
	mov	w1, 2
	b	.L1391
	.p2align 3
.L1405:
	mov	w1, 0
	b	.L1391
	.p2align 3
.L1399:
	ldr	w2, [x19, 672]
	mov	w1, 4
	mov	w0, 13
	cmp	w2, 0
	csel	w1, w1, w0, eq
	b	.L1391
	.p2align 3
.L1398:
	ldr	w0, [x19, 672]
	mov	w1, 3
	mov	w2, 14
	cmp	w0, 0
	csel	w1, w1, w2, eq
	csinc	w24, w24, wzr, eq
	b	.L1391
	.p2align 3
.L1406:
	ldrb	w2, [x19, 769]
	mov	w1, 3
	mov	w0, 15
	cmp	w2, 0
	csel	w1, w1, w0, eq
	b	.L1391
	.p2align 3
.L1386:
	cmp	w20, 50
	bls	.L1388
	b	.L1387
	.p2align 3
.L1382:
	mov	w20, w21
	ldr	w0, [x19, 684]
	mov	w21, w2
	b	.L1375
	.p2align 3
.L1377:
	ldr	x0, [x23, 32]
	add	x1, x29, 76
	bl	thermal_zone_get_temp
	mov	w21, w0
	ldr	w1, [x29, 76]
	mov	w0, 19923
	movk	w0, 0x1062, lsl 16
	smull	x0, w1, w0
	asr	x0, x0, 38
	sub	w1, w0, w1, asr 31
	str	w1, [x29, 76]
	b	.L1378
.L1421:
	mov	w21, w20
	b	.L1376
	.size	ebc_lut_update, .-ebc_lut_update
	.align	2
	.p2align 3,,7
	.type	record_pix_wf_write, %function
record_pix_wf_write:
	stp	x29, x30, [sp, -48]!
	adrp	x4, .LANCHOR0
	mov	x0, x2
	adrp	x1, .LC48
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	add	x2, x29, 36
	ldr	x19, [x4, #:lo12:.LANCHOR0]
	mov	x20, x3
	add	x4, x29, 44
	add	x3, x29, 40
	add	x1, x1, :lo12:.LC48
	bl	sscanf
	cmp	w0, 2
	bne	.L1424
	ldp	w3, w2, [x29, 36]
	mov	x0, x20
	str	w3, [x19, 1012]
	str	w2, [x19, 1016]
.L1422:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L1424:
	mov	x0, -22
	b	.L1422
	.size	record_pix_wf_write, .-record_pix_wf_write
	.align	2
	.p2align 3,,7
	.type	overlay_wf_data_write, %function
overlay_wf_data_write:
	stp	x29, x30, [sp, -96]!
	adrp	x1, .LC49
	mov	x0, x2
	add	x1, x1, :lo12:.LC49
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x19, x3
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	bl	strstr
	cbnz	x0, .L1445
.L1427:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	ret
.L1445:
	adrp	x1, .LANCHOR0
	adrp	x0, .LC50
	adrp	x23, .LC51
	adrp	x26, .LC52
	ldr	x1, [x1, #:lo12:.LANCHOR0]
	mov	w22, 0
	add	x0, x0, :lo12:.LC50
	add	x23, x23, :lo12:.LC51
	add	x26, x26, :lo12:.LC52
	ldrb	w24, [x1, 337]
	ldr	x27, [x1, 360]
	mov	w1, w24
	bl	printk
	.p2align 2
.L1428:
	mov	w21, w22
	mov	w20, 0
	.p2align 2
.L1430:
	mov	w2, w22
	mov	w1, w20
	mov	x0, x23
	bl	printk
	cbnz	w24, .L1429
.L1433:
	add	w20, w20, 1
	add	w21, w21, 32
	cmp	w20, 32
	bne	.L1430
	add	w22, w22, 1
	cmp	w22, 32
	bne	.L1428
	b	.L1427
.L1429:
	add	x28, x27, x21, sxtw
	mov	w25, 0
.L1432:
	lsl	w1, w25, 10
	mov	x0, x26
	add	w25, w25, 1
	ldrb	w1, [x28, w1, sxtw]
	bl	printk
	cmp	w24, w25
	beq	.L1433
	b	.L1432
	.size	overlay_wf_data_write, .-overlay_wf_data_write
	.align	2
	.p2align 3,,7
	.type	wf_data_write, %function
wf_data_write:
	stp	x29, x30, [sp, -128]!
	adrp	x1, .LC49
	mov	x0, x2
	add	x1, x1, :lo12:.LC49
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x19, x3
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	bl	strstr
	cbnz	x0, .L1465
.L1447:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 128
	ret
.L1465:
	adrp	x1, .LANCHOR0
	adrp	x0, .LC50
	mov	w22, 0
	add	x0, x0, :lo12:.LC50
	ldr	x1, [x1, #:lo12:.LANCHOR0]
	adrp	x24, .LC51
	adrp	x25, .LC52
	ldrb	w23, [x1, 336]
	ldr	x28, [x1, 352]
	sub	w27, w23, #1
	mov	w1, w23
	ubfiz	x27, x27, 10, 32
	add	x27, x27, 1024
	bl	printk
	.p2align 2
.L1448:
	mov	w21, w22
	add	x26, x25, :lo12:.LC52
	mov	w20, 0
	.p2align 2
.L1450:
	mov	w2, w22
	mov	w1, w20
	add	x0, x24, :lo12:.LC51
	bl	printk
	cbnz	w23, .L1449
.L1453:
	add	w20, w20, 1
	add	w21, w21, 32
	cmp	w20, 32
	bne	.L1450
	add	w22, w22, 1
	cmp	w22, 32
	bne	.L1448
	b	.L1447
.L1449:
	sxtw	x2, w21
	add	x3, x27, x2
	add	x2, x28, x2
	add	x3, x28, x3
.L1452:
	ldrb	w1, [x2]
	add	x2, x2, 1024
	mov	x0, x26
	stp	x2, x3, [x29, 104]
	str	x2, [x29, 120]
	bl	printk
	ldp	x3, x2, [x29, 112]
	cmp	x2, x3
	beq	.L1453
	b	.L1452
	.size	wf_data_write, .-wf_data_write
	.align	2
	.p2align 3,,7
	.type	ori_wf_data_write, %function
ori_wf_data_write:
	stp	x29, x30, [sp, -176]!
	mov	w0, -1
	mov	w1, 32960
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	movk	w1, 0x60, lsl 16
	stp	x27, x28, [sp, 80]
	mov	x19, x2
	stp	x21, x22, [sp, 32]
	mov	x28, x3
	stp	x23, x24, [sp, 48]
	mov	w2, 6
	stp	x25, x26, [sp, 64]
	stp	w0, w0, [x29, 136]
	mov	x0, 262144
	bl	kmalloc_order_trace
	cbz	x0, .L1486
	mov	x26, x0
	adrp	x1, .LC49
	mov	x0, x19
	add	x1, x1, :lo12:.LC49
	str	x26, [x29, 160]
	bl	strstr
	cbz	x0, .L1469
	add	x3, x29, 140
	add	x2, x29, 136
	mov	x0, x19
	adrp	x1, .LC54
	add	x1, x1, :lo12:.LC54
	bl	sscanf
	ldp	w2, w3, [x29, 136]
	adrp	x19, .LANCHOR3
	add	x1, x19, :lo12:.LANCHOR3
	adrp	x0, .LC55
	add	x1, x1, 24
	add	x0, x0, :lo12:.LC55
	bl	printk
	ldr	w1, [x29, 136]
	cmp	w1, 8
	bhi	.L1470
	ldr	w2, [x29, 140]
	cmp	w2, 50
	bls	.L1472
.L1470:
	add	x1, x19, :lo12:.LANCHOR3
	adrp	x0, .LC57
	add	x1, x1, 24
	add	x0, x0, :lo12:.LC57
	bl	printk
.L1466:
	mov	x0, x28
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 176
	ret
.L1472:
	mov	w3, 32
	add	x0, x29, 144
	bl	epd_lut_get_original
	ldrb	w22, [x29, 144]
	mov	w21, 0
	adrp	x23, .LC51
	sub	w27, w22, #1
	adrp	x24, .LC52
	ubfiz	x27, x27, 10, 32
	adrp	x0, .LC50
	add	x27, x27, 1024
	add	x0, x0, :lo12:.LC50
	mov	w1, w22
	bl	printk
	.p2align 2
.L1473:
	mov	w20, w21
	add	x25, x24, :lo12:.LC52
	mov	w19, 0
	.p2align 2
.L1475:
	mov	w2, w21
	mov	w1, w19
	add	x0, x23, :lo12:.LC51
	bl	printk
	cbnz	w22, .L1474
.L1478:
	add	w19, w19, 1
	add	w20, w20, 32
	cmp	w19, 32
	bne	.L1475
	add	w21, w21, 1
	cmp	w21, 32
	bne	.L1473
	mov	x0, x26
	bl	kfree
	mov	x0, x28
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 176
	ret
.L1474:
	sxtw	x2, w20
	add	x3, x27, x2
	add	x2, x26, x2
	add	x3, x26, x3
.L1477:
	ldrb	w1, [x2]
	add	x2, x2, 1024
	mov	x0, x25
	stp	x2, x3, [x29, 104]
	str	x2, [x29, 120]
	bl	printk
	ldp	x3, x2, [x29, 112]
	cmp	x2, x3
	beq	.L1478
	b	.L1477
.L1469:
	adrp	x1, .LANCHOR3
	add	x1, x1, :lo12:.LANCHOR3
	adrp	x0, .LC56
	add	x1, x1, 24
	add	x0, x0, :lo12:.LC56
	bl	printk
	b	.L1466
.L1486:
	adrp	x0, .LC53
	add	x0, x0, :lo12:.LC53
	bl	printk
	b	.L1466
	.size	ori_wf_data_write, .-ori_wf_data_write
	.align	2
	.p2align 3,,7
	.type	ebc_debug_level_write, %function
ebc_debug_level_write:
	stp	x29, x30, [sp, -64]!
	adrp	x0, .LANCHOR0
	mov	w1, 0
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x20, x2
	str	x21, [sp, 32]
	mov	x19, x3
	ldr	x21, [x0, #:lo12:.LANCHOR0]
	add	x2, x29, 60
	mov	x0, x20
	bl	kstrtouint
	cbnz	w0, .L1491
	ldr	w1, [x29, 60]
	mov	x0, x19
	str	w1, [x21, 916]
.L1487:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	ret
	.p2align 3
.L1491:
	ldr	x0, [x21, 328]
	adrp	x1, .LC58
	mov	x2, x20
	add	x1, x1, :lo12:.LC58
	bl	_dev_err
	mov	x0, -1
	b	.L1487
	.size	ebc_debug_level_write, .-ebc_debug_level_write
	.align	2
	.p2align 3,,7
	.type	ebc_debug_level_read, %function
ebc_debug_level_read:
	stp	x29, x30, [sp, -16]!
	adrp	x3, .LANCHOR0
	mov	x0, x2
	adrp	x1, .LC59
	add	x29, sp, 0
	ldr	x2, [x3, #:lo12:.LANCHOR0]
	add	x1, x1, :lo12:.LC59
	ldr	w2, [x2, 916]
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], 16
	ret
	.size	ebc_debug_level_read, .-ebc_debug_level_read
	.align	2
	.p2align 3,,7
	.type	ebc_state_read, %function
ebc_state_read:
	stp	x29, x30, [sp, -16]!
	adrp	x3, .LANCHOR0
	mov	x0, x2
	adrp	x1, .LC59
	add	x29, sp, 0
	ldr	x2, [x3, #:lo12:.LANCHOR0]
	add	x1, x1, :lo12:.LC59
	ldr	w2, [x2, 688]
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], 16
	ret
	.size	ebc_state_read, .-ebc_state_read
	.align	2
	.p2align 3,,7
	.type	ebc_version_read, %function
ebc_version_read:
	stp	x29, x30, [sp, -16]!
	mov	x0, x2
	adrp	x1, .LC61
	adrp	x2, .LC60
	add	x29, sp, 0
	add	x2, x2, :lo12:.LC60
	add	x1, x1, :lo12:.LC61
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], 16
	ret
	.size	ebc_version_read, .-ebc_version_read
	.align	2
	.p2align 3,,7
	.type	pmic_temp_read, %function
pmic_temp_read:
	stp	x29, x30, [sp, -48]!
	adrp	x0, .LANCHOR0
	add	x29, sp, 0
	ldr	x1, [x0, #:lo12:.LANCHOR0]
	str	x19, [sp, 16]
	mov	x19, x2
	ldr	x0, [x1, 16]
	cbz	x0, .L1499
	ldr	x2, [x0, 56]
	add	x1, x29, 44
	blr	x2
.L1500:
	ldr	w2, [x29, 44]
	mov	x0, x19
	adrp	x1, .LC59
	add	x1, x1, :lo12:.LC59
	bl	sprintf
	ldr	x19, [sp, 16]
	sxtw	x0, w0
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L1499:
	ldr	x0, [x1, 32]
	add	x1, x29, 44
	bl	thermal_zone_get_temp
	b	.L1500
	.size	pmic_temp_read, .-pmic_temp_read
	.align	2
	.p2align 3,,7
	.type	pmic_name_read, %function
pmic_name_read:
	stp	x29, x30, [sp, -16]!
	adrp	x3, .LANCHOR0
	mov	x0, x2
	adrp	x1, .LC61
	add	x29, sp, 0
	ldr	x2, [x3, #:lo12:.LANCHOR0]
	add	x1, x1, :lo12:.LC61
	ldr	x2, [x2, 16]
	add	x2, x2, 8
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], 16
	ret
	.size	pmic_name_read, .-pmic_name_read
	.align	2
	.p2align 3,,7
	.type	ebc_buf_state_read, %function
ebc_buf_state_read:
	stp	x29, x30, [sp, -16]!
	mov	x0, x2
	add	x29, sp, 0
	bl	ebc_buf_state_show
	sxtw	x0, w0
	ldp	x29, x30, [sp], 16
	ret
	.size	ebc_buf_state_read, .-ebc_buf_state_read
	.align	2
	.p2align 3,,7
	.type	pmic_vcom_write, %function
pmic_vcom_write:
	stp	x29, x30, [sp, -64]!
	adrp	x0, .LANCHOR0
	mov	w1, 0
	add	x29, sp, 0
	str	x21, [sp, 32]
	mov	x21, x2
	stp	x19, x20, [sp, 16]
	add	x2, x29, 60
	ldr	x20, [x0, #:lo12:.LANCHOR0]
	mov	x19, x3
	mov	x0, x21
	bl	kstrtouint
	cbnz	w0, .L1514
	ldr	x0, [x20, 16]
	ldr	w1, [x29, 60]
	cbz	x0, .L1509
	bl	ebc_pmic_set_vcom
.L1510:
	cbnz	w0, .L1515
.L1506:
	mov	x0, x19
	ldr	x21, [sp, 32]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.p2align 3
.L1509:
	ldr	x0, [x20, 24]
	bl	ebc_regulator_set_vcom
	b	.L1510
	.p2align 3
.L1514:
	ldr	x0, [x20]
	adrp	x1, .LC58
	mov	x2, x21
	add	x1, x1, :lo12:.LC58
	mov	x19, -1
	bl	_dev_err
	b	.L1506
	.p2align 3
.L1515:
	ldr	x0, [x20]
	adrp	x1, .LC62
	mov	x19, -1
	add	x1, x1, :lo12:.LC62
	bl	_dev_err
	b	.L1506
	.size	pmic_vcom_write, .-pmic_vcom_write
	.align	2
	.p2align 3,,7
	.type	pmic_vcom_read, %function
pmic_vcom_read:
	stp	x29, x30, [sp, -32]!
	adrp	x0, .LANCHOR0
	add	x29, sp, 0
	ldr	x1, [x0, #:lo12:.LANCHOR0]
	str	x19, [sp, 16]
	mov	x19, x2
	ldr	x0, [x1, 16]
	cbz	x0, .L1517
	ldr	x1, [x0, 64]
	blr	x1
	mov	w2, w0
	adrp	x1, .LC59
	mov	x0, x19
	add	x1, x1, :lo12:.LC59
	bl	sprintf
	sxtw	x0, w0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	.p2align 3
.L1517:
	ldr	x0, [x1, 24]
	bl	regulator_get_voltage
	mov	w2, 19923
	adrp	x1, .LC59
	movk	w2, 0x1062, lsl 16
	add	x1, x1, :lo12:.LC59
	smull	x2, w0, w2
	asr	x2, x2, 38
	sub	w2, w2, w0, asr 31
	mov	x0, x19
	bl	sprintf
	sxtw	x0, w0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	.size	pmic_vcom_read, .-pmic_vcom_read
	.align	2
	.p2align 3,,7
	.type	waveform_version_read, %function
waveform_version_read:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x2
	bl	epd_lut_get_wf_version
	mov	x2, x0
	adrp	x1, .LC61
	mov	x0, x19
	add	x1, x1, :lo12:.LC61
	bl	sprintf
	sxtw	x0, w0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	.size	waveform_version_read, .-waveform_version_read
	.section	.init.text,"ax",@progbits
	.align	2
	.type	ebc_init, %function
ebc_init:
	stp	x29, x30, [sp, -16]!
	mov	x1, 0
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x29, sp, 0
	bl	__platform_driver_register
	ldp	x29, x30, [sp], 16
	ret
	.size	ebc_init, .-ebc_init
	.text
	.align	2
	.p2align 3,,7
	.type	get_one_auto_image2.isra.0, %function
get_one_auto_image2.isra.0:
	ldr	x6, [x1]
	and	w3, w3, 255
	mov	w7, 0
	eor	x8, x6, x0
	and	x9, x8, 255
	cbz	x9, .L1525
	lsl	x7, x6, 2
	ldrb	w9, [x2]
	ubfx	x10, x0, 3, 5
	and	x7, x7, 992
	orr	x7, x7, x10
	ldr	x10, [x4]
	add	x7, x10, x7
	lsl	w10, w9, 10
	add	w9, w9, 1
	and	w9, w9, 255
	ldrb	w7, [x7, w10, sxtw]
	cmp	w9, w3
	lsl	w7, w7, w5
	beq	.L1564
.L1526:
	strb	w9, [x2]
.L1525:
	tst	x8, 65280
	beq	.L1527
	lsr	x10, x6, 6
	ldrb	w9, [x2, 1]
	ubfx	x11, x0, 11, 5
	and	x10, x10, 992
	orr	x10, x10, x11
	ldr	x11, [x4]
	add	x10, x11, x10
	lsl	w11, w9, 10
	add	w9, w9, 1
	and	w9, w9, 255
	ldrb	w10, [x10, w11, sxtw]
	add	w11, w5, 4
	cmp	w9, w3
	lsl	w10, w10, w11
	orr	w7, w7, w10
	beq	.L1565
.L1528:
	strb	w9, [x2, 1]
.L1527:
	tst	x8, 16711680
	beq	.L1529
	lsr	x10, x6, 14
	ldrb	w9, [x2, 2]
	ubfx	x11, x0, 19, 5
	and	x10, x10, 992
	orr	x10, x10, x11
	ldr	x11, [x4]
	add	x10, x11, x10
	lsl	w11, w9, 10
	add	w9, w9, 1
	and	w9, w9, 255
	ldrb	w10, [x10, w11, sxtw]
	add	w11, w5, 8
	cmp	w9, w3
	lsl	w10, w10, w11
	orr	w7, w7, w10
	beq	.L1566
.L1530:
	strb	w9, [x2, 2]
.L1529:
	tst	x8, 4278190080
	beq	.L1531
	lsr	x10, x6, 22
	ldrb	w9, [x2, 3]
	lsr	w11, w0, 27
	and	x10, x10, 992
	orr	x10, x10, x11
	ldr	x11, [x4]
	add	x10, x11, x10
	lsl	w11, w9, 10
	add	w9, w9, 1
	and	w9, w9, 255
	ldrb	w10, [x10, w11, sxtw]
	add	w11, w5, 12
	cmp	w9, w3
	lsl	w10, w10, w11
	orr	w7, w7, w10
	beq	.L1567
.L1532:
	strb	w9, [x2, 3]
.L1531:
	tst	x8, 1095216660480
	beq	.L1533
	lsr	x10, x6, 30
	ldrb	w9, [x2, 4]
	ubfx	x11, x0, 35, 5
	and	x10, x10, 992
	orr	x10, x10, x11
	ldr	x11, [x4]
	add	x10, x11, x10
	lsl	w11, w9, 10
	add	w9, w9, 1
	and	w9, w9, 255
	ldrb	w10, [x10, w11, sxtw]
	add	w11, w5, 16
	cmp	w9, w3
	lsl	w10, w10, w11
	orr	w7, w7, w10
	beq	.L1568
.L1534:
	strb	w9, [x2, 4]
.L1533:
	tst	x8, 280375465082880
	beq	.L1535
	lsr	x10, x6, 38
	ldrb	w9, [x2, 5]
	ubfx	x11, x0, 43, 5
	and	x10, x10, 992
	orr	x10, x10, x11
	ldr	x11, [x4]
	add	x10, x11, x10
	lsl	w11, w9, 10
	add	w9, w9, 1
	and	w9, w9, 255
	ldrb	w10, [x10, w11, sxtw]
	add	w11, w5, 20
	cmp	w9, w3
	lsl	w10, w10, w11
	orr	w7, w7, w10
	beq	.L1569
.L1536:
	strb	w9, [x2, 5]
.L1535:
	tst	x8, 71776119061217280
	beq	.L1537
	lsr	x10, x6, 46
	ldrb	w9, [x2, 6]
	ubfx	x11, x0, 51, 5
	and	x10, x10, 992
	orr	x10, x10, x11
	ldr	x11, [x4]
	add	x10, x11, x10
	lsl	w11, w9, 10
	add	w9, w9, 1
	and	w9, w9, 255
	ldrb	w10, [x10, w11, sxtw]
	add	w11, w5, 24
	cmp	w9, w3
	lsl	w10, w10, w11
	orr	w7, w7, w10
	beq	.L1570
.L1538:
	strb	w9, [x2, 6]
.L1537:
	tst	x8, -72057594037927936
	beq	.L1539
	ldrb	w8, [x2, 7]
	add	w5, w5, 28
	ldr	x9, [x4]
	ubfiz	x4, x8, 10, 8
	add	x9, x9, x4
	add	w4, w8, 1
	and	w4, w4, 255
	add	x8, x9, x0, lsr 59
	cmp	w4, w3
	lsr	x3, x6, 54
	and	x3, x3, 992
	ldrb	w3, [x8, x3]
	lsl	w5, w3, w5
	orr	w7, w7, w5
	beq	.L1571
.L1540:
	strb	w4, [x2, 7]
.L1539:
	mov	w0, w7
	str	x6, [x1]
	ret
	.p2align 3
.L1571:
	and	x6, x6, 72057594037927935
	and	x0, x0, -72057594037927936
	orr	x6, x0, x6
	mov	w4, 0
	b	.L1540
	.p2align 3
.L1564:
	bfi	x6, x0, 0, 8
	mov	w9, 0
	b	.L1526
	.p2align 3
.L1565:
	and	x9, x0, 65280
	and	x6, x6, -65281
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1528
	.p2align 3
.L1566:
	and	x9, x0, 16711680
	and	x6, x6, -16711681
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1530
	.p2align 3
.L1567:
	and	x9, x0, 4278190080
	and	x6, x6, -4278190081
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1532
	.p2align 3
.L1568:
	and	x9, x0, 1095216660480
	and	x6, x6, -1095216660481
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1534
	.p2align 3
.L1569:
	and	x9, x0, 280375465082880
	and	x6, x6, -280375465082881
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1536
	.p2align 3
.L1570:
	and	x9, x0, 71776119061217280
	and	x6, x6, -71776119061217281
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1538
	.size	get_one_auto_image2.isra.0, .-get_one_auto_image2.isra.0
	.align	2
	.p2align 3,,7
	.type	get_auto_image2, %function
get_auto_image2:
	stp	x29, x30, [sp, -128]!
	adrp	x6, .LANCHOR0
	cmp	w5, 2
	add	x29, sp, 0
	stp	x23, x24, [sp, 48]
	ldr	x24, [x6, #:lo12:.LANCHOR0]
	stp	x19, x20, [sp, 16]
	mov	x20, x1
	add	x24, x24, 40
	stp	x21, x22, [sp, 32]
	stp	x25, x26, [sp, 64]
	mov	x19, x4
	stp	x27, x28, [sp, 80]
	mov	x21, x2
	str	x0, [x29, 112]
	add	x0, x4, 60
	ldp	w1, w25, [x24, 76]
	str	x0, [x29, 104]
	mov	x22, x3
	lsr	w0, w1, 3
	str	w0, [x29, 124]
	beq	.L1591
	cmp	w5, 3
	mov	x0, 0
	mov	w23, 0
	beq	.L1592
.L1574:
	ldr	x2, [x29, 112]
	add	x0, x2, x0
	sub	w2, w25, w23
	mul	w2, w2, w1
	mov	w1, 0
	lsr	w2, w2, 2
	bl	memset
	cmp	w23, w25
	bge	.L1583
	ldr	w0, [x29, 124]
	add	x13, x19, 120
	mov	w9, 0
	sub	w14, w0, #1
	add	x14, x14, 1
	lsl	x12, x14, 2
	lsl	x14, x14, 3
	.p2align 2
.L1581:
	ldr	w7, [x24, 76]
	ldr	x0, [x29, 112]
	mul	w7, w23, w7
	lsr	w7, w7, 2
	add	x26, x0, x7
	ldr	w0, [x29, 124]
	cbz	w0, .L1576
	mov	x28, x22
	mov	x15, x21
	mov	x27, x20
	mov	x18, 0
	.p2align 2
.L1578:
	ldr	x3, [x27]
	mov	x2, x28
	ldr	x10, [x15]
	mov	x1, x15
	mov	w5, 0
	mov	x4, x13
	mov	x0, x3
	cmp	x3, x10
	beq	.L1577
	ldrb	w3, [x19, 56]
	bl	get_one_auto_image2.isra.0
	str	w0, [x26, x18]
	mov	w9, 1
.L1577:
	add	x18, x18, 4
	add	x15, x15, 8
	add	x27, x27, 8
	add	x28, x28, 8
	cmp	x18, x12
	bne	.L1578
	add	x21, x21, x14
	add	x20, x20, x14
	add	x22, x22, x14
	mov	x18, x21
	mov	x27, x22
	mov	x28, x20
	mov	x15, 0
	.p2align 2
.L1580:
	ldr	x3, [x28]
	mov	x1, x18
	ldr	x10, [x18]
	mov	x2, x27
	mov	w5, 2
	mov	x4, x13
	add	x18, x18, 8
	add	x28, x28, 8
	mov	x0, x3
	cmp	x3, x10
	beq	.L1579
	ldrb	w3, [x19, 56]
	bl	get_one_auto_image2.isra.0
	ldr	w1, [x26, x15]
	mov	w9, 1
	orr	w0, w1, w0
	str	w0, [x26, x15]
.L1579:
	add	x15, x15, 4
	add	x27, x27, 8
	cmp	x15, x12
	bne	.L1580
	add	x21, x21, x14
	add	x20, x20, x14
	add	x22, x22, x14
.L1576:
	add	w23, w23, 2
	cmp	w25, w23
	bgt	.L1581
.L1575:
	ldr	x0, [x29, 104]
	str	w9, [x0]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 128
	ret
.L1591:
	add	w25, w25, w25, lsr 31
	mov	x0, 0
	asr	w25, w25, 1
	mov	w23, 0
	b	.L1574
.L1592:
	add	x0, x4, 64
	add	w23, w25, w25, lsr 31
	asr	w23, w23, 1
	str	x0, [x29, 104]
	lsr	w0, w1, 3
	mul	w0, w0, w23
	sbfiz	x0, x0, 3, 32
	add	x20, x20, x0
	add	x21, x2, x0
	mul	w0, w23, w1
	add	x22, x3, x0, uxtw
	lsr	w0, w0, 2
	b	.L1574
.L1583:
	mov	w9, 0
	b	.L1575
	.size	get_auto_image2, .-get_auto_image2
	.align	2
	.p2align 3,,7
	.type	direct_mode_data_change.isra.1, %function
direct_mode_data_change.isra.1:
	adrp	x7, .LANCHOR0
	and	w3, w3, 255
	sub	w4, w3, w4
	cmp	w6, 2
	ldr	x3, [x7, #:lo12:.LANCHOR0]
	lsl	w7, w4, 10
	add	x5, x5, x7, sxtw
	add	x4, x3, 40
	ldp	w7, w3, [x4, 76]
	lsr	w11, w7, 3
	beq	.L1617
	cmp	w6, 3
	mov	w15, w3
	mov	w6, 0
	mov	w13, 0
	beq	.L1618
.L1595:
	ldr	w4, [x4, 156]
	cbz	w4, .L1596
	sub	w3, w3, #1
	neg	w16, w7, lsr 2
	sub	w3, w3, w6
	cmp	w13, w15
	mul	w3, w3, w7
	lsr	w3, w3, 2
	add	x10, x0, x3
	bge	.L1614
.L1620:
	stp	x29, x30, [sp, -64]!
	sub	w14, w11, #1
	add	x14, x14, 1
	sxtw	x16, w16
	add	x29, sp, 0
	lsl	x14, x14, 3
	add	x9, x29, 56
	stp	x19, x20, [sp, 16]
	mov	w12, -32
	str	x21, [sp, 32]
	.p2align 2
.L1598:
	mov	x6, 0
	cbz	w11, .L1605
	.p2align 2
.L1609:
	ldr	x3, [x1, x6, lsl 3]
	ldr	x0, [x2, x6, lsl 3]
	stp	x3, x0, [x29, 48]
	tst	x3, 289360691352306692
	beq	.L1600
	mov	x0, 0
	b	.L1602
	.p2align 3
.L1601:
	add	x0, x0, 1
	cmp	x0, 8
	beq	.L1619
.L1602:
	add	x3, x29, 48
	ldrb	w3, [x3, x0]
	cmp	w3, 244
	bne	.L1601
	ldrb	w3, [x0, x9]
	cmp	w3, 240
	bne	.L1601
	add	x3, x29, 48
	strb	w12, [x0, x9]
	strb	w12, [x3, x0]
	add	x0, x0, 1
	cmp	x0, 8
	bne	.L1602
	.p2align 2
.L1619:
	ldp	x3, x0, [x29, 48]
.L1600:
	lsr	x19, x0, 30
	lsr	x4, x0, 14
	ubfx	x8, x3, 35, 5
	ubfx	x7, x3, 19, 5
	lsr	x30, x0, 22
	lsr	x18, x0, 6
	lsr	x17, x0, 46
	and	x19, x19, 992
	and	x4, x4, 992
	lsr	w21, w3, 27
	orr	x19, x19, x8
	ubfx	x20, x3, 11, 5
	orr	x4, x4, x7
	lsr	x8, x0, 38
	ubfx	x7, x3, 51, 5
	and	x30, x30, 992
	and	x18, x18, 992
	and	x17, x17, 992
	orr	x30, x30, x21
	orr	x18, x18, x20
	orr	x17, x17, x7
	ubfx	x20, x3, 43, 5
	lsl	x7, x0, 2
	and	x8, x8, 992
	ubfx	x21, x3, 3, 5
	orr	x8, x8, x20
	and	x7, x7, 992
	lsr	x0, x0, 54
	ldrb	w20, [x5, x19]
	orr	x7, x7, x21
	ldrb	w19, [x5, x4]
	and	x0, x0, 992
	add	x3, x5, x3, lsr 59
	ldrb	w4, [x5, x30]
	ldrb	w18, [x5, x18]
	ldrb	w17, [x5, x17]
	ldrb	w8, [x5, x8]
	ldrb	w30, [x5, x7]
	lsl	w7, w19, 4
	ldrb	w3, [x3, x0]
	lsl	w0, w20, 8
	orr	w0, w0, w4, lsl 6
	orr	w7, w7, w18, lsl 2
	lsl	w4, w17, 12
	orr	w0, w0, w7
	orr	w4, w4, w8, lsl 10
	orr	w3, w30, w3, lsl 14
	orr	w0, w0, w4
	orr	w0, w0, w3
	strh	w0, [x10, x6, lsl 1]
	add	x6, x6, 1
	cmp	w11, w6
	bgt	.L1609
	add	x1, x1, x14
	add	x2, x2, x14
.L1605:
	add	w13, w13, 1
	add	x10, x10, x16
	cmp	w13, w15
	bne	.L1598
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	ret
.L1596:
	mul	w3, w7, w6
	lsr	w16, w7, 2
	cmp	w13, w15
	lsr	w3, w3, 2
	add	x10, x0, x3
	blt	.L1620
.L1614:
	ret
.L1617:
	add	w15, w3, w3, lsr 31
	mov	w6, 0
	asr	w15, w15, 1
	mov	w13, 0
	b	.L1595
.L1618:
	add	w13, w3, w3, lsr 31
	asr	w13, w13, 1
	mov	w6, w13
	mul	w8, w11, w13
	sbfiz	x8, x8, 3, 32
	add	x1, x1, x8
	add	x2, x2, x8
	b	.L1595
	.size	direct_mode_data_change.isra.1, .-direct_mode_data_change.isra.1
	.align	2
	.p2align 3,,7
	.type	direct_mode_data_change2.isra.2, %function
direct_mode_data_change2.isra.2:
	adrp	x7, .LANCHOR0
	and	w3, w3, 255
	sub	w3, w3, w4
	cmp	w6, 2
	ldr	x4, [x7, #:lo12:.LANCHOR0]
	lsl	w3, w3, 10
	add	x5, x5, x3, sxtw
	ldp	w15, w16, [x4, 116]
	lsr	w8, w15, 3
	beq	.L1655
	mov	w13, 0
	cmp	w6, 3
	beq	.L1656
.L1623:
	lsr	w15, w15, 2
	cmp	w16, w13
	ble	.L1652
.L1659:
	stp	x29, x30, [sp, -112]!
	sub	w12, w8, #1
	add	x12, x12, 1
	mul	w14, w15, w13
	add	x29, sp, 0
	lsl	w15, w15, 1
	lsl	x12, x12, 3
	add	x6, x29, 96
	add	x10, x29, 104
	add	x9, x29, 88
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	mov	w11, -32
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	.p2align 2
.L1634:
	add	x7, x0, x14, sxtw
	cbz	w8, .L1625
	mov	x18, 0
	.p2align 2
.L1629:
	ldr	x3, [x1, x18, lsl 3]
	ldr	x4, [x2, x18, lsl 3]
	stp	x3, x4, [x29, 96]
	tst	x3, 289360691352306692
	beq	.L1626
	mov	x3, 0
	b	.L1628
	.p2align 3
.L1627:
	add	x3, x3, 1
	cmp	x3, 8
	beq	.L1657
.L1628:
	ldrb	w4, [x6, x3]
	cmp	w4, 244
	bne	.L1627
	ldrb	w4, [x3, x10]
	cmp	w4, 240
	bne	.L1627
	strb	w11, [x3, x10]
	strb	w11, [x6, x3]
	add	x3, x3, 1
	cmp	x3, 8
	bne	.L1628
	.p2align 2
.L1657:
	ldp	x3, x4, [x29, 96]
.L1626:
	lsr	x30, x4, 30
	lsr	x23, x4, 14
	ubfx	x20, x3, 35, 5
	ubfx	x19, x3, 19, 5
	lsr	x17, x4, 22
	lsr	x22, x4, 6
	lsr	x21, x4, 46
	and	x30, x30, 992
	and	x23, x23, 992
	ubfx	x24, x3, 11, 5
	lsr	w25, w3, 27
	orr	x30, x30, x20
	orr	x23, x23, x19
	lsr	x20, x4, 38
	ubfx	x19, x3, 51, 5
	and	x17, x17, 992
	and	x22, x22, 992
	and	x21, x21, 992
	orr	x22, x22, x24
	orr	x21, x21, x19
	ubfx	x24, x3, 43, 5
	lsl	x19, x4, 2
	orr	x17, x17, x25
	and	x20, x20, 992
	and	x19, x19, 992
	orr	x20, x20, x24
	lsr	x4, x4, 54
	ubfx	x24, x3, 3, 5
	ldrb	w30, [x5, x30]
	ldrb	w23, [x5, x23]
	add	x3, x5, x3, lsr 59
	orr	x19, x19, x24
	and	x4, x4, 992
	ldrb	w17, [x5, x17]
	ldrb	w22, [x5, x22]
	lsl	w23, w23, 8
	ldrb	w21, [x5, x21]
	ldrb	w20, [x5, x20]
	ldrb	w4, [x3, x4]
	lsl	w3, w30, 16
	ldrb	w19, [x5, x19]
	orr	w3, w3, w17, lsl 12
	orr	w23, w23, w22, lsl 4
	lsl	w17, w21, 24
	orr	w3, w3, w23
	orr	w17, w17, w20, lsl 20
	orr	w3, w3, w17
	orr	w4, w19, w4, lsl 28
	orr	w3, w3, w4
	str	w3, [x7, x18, lsl 2]
	add	x18, x18, 1
	cmp	w8, w18
	bgt	.L1629
	add	x18, x1, x12
	add	x30, x2, x12
	mov	x4, 0
	.p2align 2
.L1633:
	ldr	x2, [x18, x4, lsl 3]
	ldr	x1, [x30, x4, lsl 3]
	stp	x2, x1, [x29, 80]
	tst	x2, 289360691352306692
	beq	.L1630
	mov	x1, 0
	b	.L1632
	.p2align 3
.L1631:
	add	x1, x1, 1
	cmp	x1, 8
	beq	.L1658
.L1632:
	add	x2, x29, 80
	ldrb	w2, [x2, x1]
	cmp	w2, 244
	bne	.L1631
	ldrb	w2, [x1, x9]
	cmp	w2, 240
	bne	.L1631
	add	x2, x29, 80
	strb	w11, [x1, x9]
	strb	w11, [x2, x1]
	add	x1, x1, 1
	cmp	x1, 8
	bne	.L1632
	.p2align 2
.L1658:
	ldp	x2, x1, [x29, 80]
.L1630:
	lsr	x23, x1, 22
	lsr	x22, x1, 6
	lsr	w19, w2, 27
	ubfx	x17, x2, 11, 5
	lsr	x3, x1, 14
	lsl	x21, x1, 2
	lsr	x20, x1, 38
	and	x23, x23, 992
	and	x22, x22, 992
	ubfx	x24, x2, 3, 5
	ubfx	x25, x2, 19, 5
	orr	x23, x23, x19
	orr	x22, x22, x17
	lsr	x19, x1, 30
	ubfx	x17, x2, 43, 5
	and	x3, x3, 992
	and	x21, x21, 992
	and	x20, x20, 992
	orr	x21, x21, x24
	orr	x20, x20, x17
	ubfx	x24, x2, 35, 5
	lsr	x17, x1, 46
	orr	x3, x3, x25
	and	x19, x19, 992
	lsr	x1, x1, 54
	orr	x19, x19, x24
	and	x1, x1, 992
	ubfx	x24, x2, 51, 5
	and	x17, x17, 992
	add	x2, x5, x2, lsr 59
	ldrb	w23, [x5, x23]
	ldrb	w22, [x5, x22]
	orr	x17, x17, x24
	ldrb	w3, [x5, x3]
	ldrb	w21, [x5, x21]
	ldrb	w20, [x5, x20]
	lsl	w22, w22, 6
	ldrb	w2, [x2, x1]
	lsl	w1, w23, 14
	ldrb	w19, [x5, x19]
	orr	w1, w1, w3, lsl 10
	ldrb	w17, [x5, x17]
	lsl	w3, w20, 22
	orr	w22, w22, w21, lsl 2
	orr	w19, w3, w19, lsl 18
	orr	w1, w1, w22
	lsl	w3, w2, 30
	orr	w1, w1, w19
	ldr	w2, [x7, x4, lsl 2]
	orr	w3, w3, w17, lsl 26
	orr	w1, w1, w3
	orr	w1, w2, w1
	str	w1, [x7, x4, lsl 2]
	add	x4, x4, 1
	cmp	w8, w4
	bgt	.L1633
	add	x1, x18, x12
	add	x2, x30, x12
.L1625:
	add	w13, w13, 2
	add	w14, w14, w15
	cmp	w13, w16
	blt	.L1634
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 112
	ret
.L1655:
	add	w16, w16, w16, lsr 31
	mov	w13, 0
	asr	w16, w16, 1
	lsr	w15, w15, 2
	cmp	w16, w13
	bgt	.L1659
.L1652:
	ret
.L1656:
	add	w13, w16, w16, lsr 31
	asr	w13, w13, 1
	mul	w3, w8, w13
	sbfiz	x3, x3, 3, 32
	add	x1, x1, x3
	add	x2, x2, x3
	b	.L1623
	.size	direct_mode_data_change2.isra.2, .-direct_mode_data_change2.isra.2
	.align	2
	.p2align 3,,7
	.type	ebc_auto_assist_tast_function, %function
ebc_auto_assist_tast_function:
	stp	x29, x30, [sp, -80]!
	adrp	x0, .LANCHOR0
	add	x29, sp, 0
	str	x25, [sp, 64]
	ldr	x25, [x0, #:lo12:.LANCHOR0]
	stp	x21, x22, [sp, 32]
	adrp	x22, .LANCHOR1
	add	x22, x22, :lo12:.LANCHOR1
	stp	x19, x20, [sp, 16]
	stp	x23, x24, [sp, 48]
	add	x20, x22, 328
	mov	x24, 2
	add	x22, x22, 352
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x23, sp_el0
// 0 "" 2
#NO_APP
	add	x19, x25, 232
	add	x21, x25, 40
	b	.L1675
	.p2align 3
.L1663:
	cmp	w5, 4
	beq	.L1665
	cmp	w5, 5
	bne	.L1661
.L1666:
	mov	x0, x22
	bl	up
	mov	x0, x20
	bl	up
	bl	schedule
.L1675:
	mov	x0, x20
	bl	down
	str	x24, [x23, 32]
#APP
// 2055 "/home/lyx/rk3566-11-eink/kernel/drivers/gpu/drm/rockchip/ebc-dev/ebc_dev_y8.c" 1
	dmb ish
// 0 "" 2
#NO_APP
	ldr	w5, [x19, 240]
	cmp	w5, 3
	beq	.L1662
	bgt	.L1663
	cmp	w5, 1
	bne	.L1661
	ldr	w0, [x19, 72]
	cbz	w0, .L1666
	ldr	w0, [x21, 164]
	cbz	w0, .L1670
	ldrsw	x0, [x21, 72]
	mov	w4, 3
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_part2
	b	.L1666
	.p2align 3
.L1662:
	ldr	w0, [x21, 164]
	cbz	w0, .L1668
	ldrsw	x0, [x21, 72]
	mov	x4, x19
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldr	x3, [x19, 160]
	ldr	x0, [x19, x0, lsl 3]
	bl	get_auto_image2
	b	.L1666
	.p2align 3
.L1661:
	ldr	x0, [x19, 216]
	ldr	w1, [x0, 40]
	cmp	w1, 21
	beq	.L1683
	ldr	w4, [x19, 72]
	cbz	w4, .L1666
	ldr	w1, [x21, 164]
	ldrsw	x7, [x21, 72]
	ldrb	w3, [x25, 288]
	add	x7, x7, 22
	ldr	x2, [x19, 208]
	ldr	x5, [x25, 352]
	cbz	w1, .L1674
	ldr	x1, [x0, 16]
	mov	w6, 3
	ldr	x0, [x19, x7, lsl 3]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change2.isra.2
	b	.L1666
	.p2align 3
.L1665:
	ldr	w0, [x21, 164]
	cbz	w0, .L1667
	ldrsw	x0, [x21, 72]
	mov	w6, 3
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x19, 160]
	mov	x5, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_overlay_image2
	b	.L1666
	.p2align 3
.L1668:
	ldrsw	x0, [x21, 72]
	mov	x4, x19
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldr	x3, [x19, 160]
	ldr	x0, [x19, x0, lsl 3]
	bl	get_auto_image
	b	.L1666
	.p2align 3
.L1667:
	ldrsw	x0, [x21, 72]
	mov	w6, 3
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x19, 160]
	mov	x5, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_overlay_image
	b	.L1666
	.p2align 3
.L1670:
	ldrsw	x0, [x21, 72]
	mov	w4, 3
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_part
	b	.L1666
	.p2align 3
.L1674:
	ldr	x1, [x0, 16]
	mov	w6, 3
	ldr	x0, [x19, x7, lsl 3]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change.isra.1
	b	.L1666
	.p2align 3
.L1683:
	mov	x0, x19
	bl	is_full_refresh_done
	tst	w0, 255
	bne	.L1666
	ldr	w0, [x21, 164]
	cbz	w0, .L1673
	ldrsw	x0, [x21, 72]
	mov	w4, 3
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_full2
	b	.L1666
.L1673:
	ldrsw	x0, [x21, 72]
	mov	w4, 3
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_full
	b	.L1666
	.size	ebc_auto_assist_tast_function, .-ebc_auto_assist_tast_function
	.align	2
	.p2align 3,,7
	.type	ebc_probe, %function
ebc_probe:
	stp	x29, x30, [sp, -144]!
	adrp	x1, .LC63
	add	x1, x1, :lo12:.LC63
	add	x29, sp, 0
	stp	x25, x26, [sp, 64]
	adrp	x26, .LC60
	add	x2, x26, :lo12:.LC60
	stp	x21, x22, [sp, 32]
	add	x22, x0, 16
	stp	x19, x20, [sp, 16]
	mov	x0, x22
	stp	x23, x24, [sp, 48]
	stp	x27, x28, [sp, 80]
	str	xzr, [x29, 136]
	bl	_dev_info
	mov	x0, x22
	adrp	x1, .LC64
	add	x1, x1, :lo12:.LC64
	bl	nvmem_cell_get
	cmn	x0, #4096
	bhi	.L1811
	add	x1, x29, 136
	mov	x20, x0
	bl	nvmem_cell_read
	mov	x19, x0
	mov	x0, x20
	bl	nvmem_cell_put
	cmn	x19, #4096
	bhi	.L1812
	ldr	x0, [x29, 136]
	cmp	x0, 2
	bne	.L1809
	ldrb	w0, [x19]
	cmp	w0, 53
	bne	.L1809
	ldrb	w0, [x19, 1]
	cmp	w0, 102
	beq	.L1763
	mov	w1, 3576
	str	w1, [x29, 108]
	cmp	w0, 118
	bne	.L1809
.L1690:
	mov	x0, x19
	bl	kfree
	mov	w2, 32960
	mov	x1, 1280
	movk	w2, 0x60, lsl 16
	mov	x0, x22
	bl	devm_kmalloc
	mov	x19, x0
	cbz	x0, .L1765
	adrp	x27, .LANCHOR0
	str	x22, [x19]
	adrp	x1, .LC68
	mov	w2, 0
	str	x0, [x27, #:lo12:.LANCHOR0]
	add	x1, x1, :lo12:.LC68
	ldr	x0, [x22, 752]
	bl	of_parse_phandle
	cbz	x0, .L1813
	bl	of_find_device_by_node
	cbz	x0, .L1693
	ldr	x0, [x0, 200]
	str	x0, [x19, 8]
	cbz	x0, .L1693
	adrp	x1, frame_done_callback
	add	x1, x1, :lo12:frame_done_callback
	str	x1, [x0, 136]
	add	x2, x29, 112
	adrp	x1, .LC70
	add	x1, x1, :lo12:.LC70
	ldr	x0, [x22, 752]
	bl	of_get_property
	mov	x21, x0
	ldrsw	x0, [x29, 112]
	lsr	x0, x0, 2
	str	w0, [x29, 112]
	cmp	w0, 0
	beq	.L1694
	mov	w20, 0
	mov	w25, 0
	ble	.L1704
	adrp	x23, .LC76
	adrp	x24, .LC78
	add	x23, x23, :lo12:.LC76
	add	x24, x24, :lo12:.LC78
	b	.L1792
	.p2align 3
.L1819:
	adrp	x1, .LC79
	mov	x0, x22
	add	x1, x1, :lo12:.LC79
	bl	_dev_warn
.L1701:
	ldr	w0, [x29, 112]
	add	w20, w20, 1
	cmp	w0, w20
	ble	.L1814
.L1792:
	ldr	w0, [x21], 4
	rev	w0, w0
	bl	of_find_node_by_phandle
	cbz	x0, .L1815
	bl	of_find_i2c_device_by_node
	cbz	x0, .L1816
	add	x28, x0, 32
	ldr	x0, [x28, 184]
	str	x0, [x19, 16]
	cbnz	x0, .L1817
	mov	x1, x23
	mov	x0, x28
	bl	devm_regulator_get
	str	x0, [x19, 24]
	cmn	x0, #4096
	bhi	.L1818
	add	x2, x29, 128
	mov	x1, x24
	mov	x0, x28
	bl	device_property_read_string
	cbnz	w0, .L1819
	ldr	x0, [x29, 128]
	bl	thermal_zone_get_zone_by_name
	str	x0, [x19, 32]
	cmn	x0, #4096
	bhi	.L1820
	ldr	w0, [x29, 112]
	add	w20, w20, 1
	mov	w25, 1
	cmp	w0, w20
	bgt	.L1792
.L1814:
	cbnz	w25, .L1699
.L1704:
	adrp	x1, .LC71
	mov	x0, x22
	add	x1, x1, :lo12:.LC71
	mov	w20, -517
	bl	_dev_err
	b	.L1684
	.p2align 3
.L1818:
	adrp	x1, .LC77
	mov	x0, x22
	add	x1, x1, :lo12:.LC77
	bl	_dev_warn
	b	.L1701
	.p2align 3
.L1820:
	adrp	x1, .LC80
	mov	x0, x22
	add	x1, x1, :lo12:.LC80
	bl	_dev_err
	b	.L1701
	.p2align 3
.L1815:
	adrp	x1, .LC73
	mov	x0, x22
	add	x1, x1, :lo12:.LC73
	mov	w20, -19
	bl	_dev_err
.L1684:
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 144
	ret
	.p2align 3
.L1816:
	mov	x0, x22
	mov	w20, -19
	adrp	x1, .LC74
	add	x1, x1, :lo12:.LC74
	bl	_dev_err
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 144
	ret
	.p2align 3
.L1817:
	adrp	x1, .LC75
	mov	w2, w20
	add	x1, x1, :lo12:.LC75
	mov	x0, x22
	bl	_dev_info
.L1699:
	add	x21, x19, 232
	ldr	w0, [x29, 108]
	str	x22, [x21, 96]
	add	x23, x19, 40
	adrp	x1, .LC81
	add	x1, x1, :lo12:.LC81
	str	w0, [x21, 756]
	str	x22, [x19, 40]
	ldr	x0, [x19, 8]
	str	x0, [x23, 8]
	mov	x0, x22
	ldr	x2, [x19, 16]
	str	x2, [x23, 16]
	bl	device_property_present
	tst	w0, 255
	beq	.L1705
	mov	w0, 3576
	str	w0, [x21, 760]
.L1705:
	adrp	x1, .LC82
	mov	x0, x22
	add	x1, x1, :lo12:.LC82
	bl	device_property_present
	tst	w0, 255
	beq	.L1706
	mov	w0, 1
	str	w0, [x21, 680]
.L1706:
	ldr	x20, [x19, 40]
	adrp	x1, .LC83
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC83
	add	x2, x19, 116
	ldr	x0, [x20, 752]
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC116
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC116
	add	x2, x19, 120
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC117
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC117
	add	x2, x19, 124
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC118
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC118
	add	x2, x19, 128
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC119
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC119
	add	x2, x19, 144
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC120
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC120
	add	x2, x19, 148
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC121
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC121
	add	x2, x19, 152
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC122
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC122
	add	x2, x19, 156
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC123
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC123
	add	x2, x19, 160
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC124
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC124
	add	x2, x19, 164
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC125
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC125
	add	x2, x19, 168
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC126
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC126
	add	x2, x19, 172
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC127
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC127
	add	x2, x19, 176
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC128
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC128
	add	x2, x19, 180
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC129
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC129
	add	x2, x19, 184
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1708
	ldr	x0, [x20, 752]
	adrp	x1, .LC130
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC130
	add	x2, x19, 188
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1750
	str	wzr, [x23, 148]
.L1750:
	ldr	x0, [x20, 752]
	adrp	x1, .LC84
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC84
	add	x2, x19, 192
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1751
	str	wzr, [x23, 152]
.L1751:
	ldr	x0, [x20, 752]
	adrp	x1, .LC85
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC85
	add	x2, x19, 196
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1752
	str	wzr, [x23, 156]
.L1752:
	ldr	x0, [x20, 752]
	adrp	x1, .LC86
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC86
	add	x2, x19, 132
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1753
	str	wzr, [x23, 92]
.L1753:
	ldr	x0, [x20, 752]
	adrp	x1, .LC87
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC87
	add	x2, x19, 136
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1754
	str	wzr, [x23, 96]
.L1754:
	ldr	x0, [x20, 752]
	adrp	x1, .LC88
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC88
	add	x2, x19, 200
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1755
	str	wzr, [x23, 160]
.L1755:
	ldr	x0, [x20, 752]
	adrp	x1, .LC89
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC89
	add	x2, x19, 204
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1756
	str	wzr, [x23, 164]
.L1756:
	ldr	x0, [x20, 752]
	adrp	x1, .LC90
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC90
	add	x2, x19, 216
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1757
	str	wzr, [x23, 176]
.L1757:
	ldr	x0, [x20, 752]
	adrp	x1, .LC91
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC91
	add	x2, x19, 220
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1758
	str	wzr, [x23, 180]
.L1758:
	ldr	x0, [x20, 752]
	adrp	x1, .LC92
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC92
	add	x2, x19, 208
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1759
	str	wzr, [x23, 168]
.L1759:
	ldr	x0, [x20, 752]
	adrp	x1, .LC93
	mov	x4, 0
	mov	x3, 1
	add	x1, x1, :lo12:.LC93
	add	x2, x19, 212
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1760
	str	wzr, [x23, 172]
.L1760:
	ldr	x0, [x20, 752]
	mov	x2, 0
	adrp	x1, .LC94
	add	x1, x1, :lo12:.LC94
	mov	w25, -1
	mov	w24, 1
	bl	of_find_property
	cmp	x0, 0
	cset	w1, ne
	ldr	w0, [x23, 80]
	strb	w1, [x23, 184]
	str	w0, [x21, 80]
	ldr	w1, [x23, 76]
	str	w1, [x21, 84]
	str	w1, [x21, 736]
	strb	w24, [x21, 768]
	mul	w0, w0, w1
	str	w24, [x21, 744]
	str	w0, [x21, 28]
	mov	w1, 50
	str	w25, [x21, 764]
	lsr	w0, w0, 2
	str	w25, [x21, 780]
	str	w0, [x21, 32]
	mov	x0, x19
	str	w25, [x21, 784]
	str	w1, [x21, 776]
	bl	ebc_buffer_manage_init
	mov	w20, w0
	cbnz	w0, .L1821
	mov	x0, x21
	bl	ebc_lut_table_init
	mov	w20, w0
	cbnz	w0, .L1822
	adrp	x0, __cpu_possible_mask
	ldrb	w0, [x0, #:lo12:__cpu_possible_mask]
	bl	__sw_hweight64
	str	w0, [x21, 676]
	mov	w2, w25
	add	x25, x27, :lo12:.LANCHOR0
	mov	w0, 99
	adrp	x3, .LC98
	str	w0, [x29, 120]
	add	x3, x3, :lo12:.LC98
	mov	x1, x21
	adrp	x0, ebc_auto_tast_function
	add	x0, x0, :lo12:ebc_auto_tast_function
	bl	kthread_create_on_node
	str	x0, [x25, 8]
	cmn	x0, #4096
	bhi	.L1823
	mov	w1, w24
	add	x2, x29, 120
	bl	sched_setscheduler_nocheck
	ldr	w0, [x21, 676]
	cmp	w0, 7
	bgt	.L1824
.L1724:
	add	x24, x27, :lo12:.LANCHOR0
	mov	w0, 1
	ldr	x2, [x24, 8]
	add	x1, x2, 48
#APP
// 47 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/atomic_lse.h" 1
	.arch_extension lse
.if 1 == 1
661:
	bl	__ll_sc_atomic_add

662:
.pushsection .altinstructions,"a"
 .word 661b - .
 .word 663f - .
 .hword 5
 .byte 662b-661b
 .byte 664f-663f
.popsection
.pushsection .altinstr_replacement, "a"
663:
	.arch_extension lse
	stadd	w0, [x1]

664:
	.popsection
	.org	. - (664b-663b) + (662b-661b)
	.org	. - (662b-661b) + (664b-663b)
.endif

// 0 "" 2
#NO_APP
	adrp	x3, .LC100
	adrp	x0, ebc_auto_assist_tast_function
	add	x3, x3, :lo12:.LC100
	add	x0, x0, :lo12:ebc_auto_assist_tast_function
	mov	w2, -1
	mov	x1, x21
	bl	kthread_create_on_node
	str	x0, [x24, 16]
	cmn	x0, #4096
	bhi	.L1825
	add	x2, x29, 120
	mov	w1, 1
	bl	sched_setscheduler_nocheck
	ldr	w0, [x21, 676]
	cmp	w0, 7
	bgt	.L1826
.L1726:
	add	x25, x27, :lo12:.LANCHOR0
	mov	w0, 1
	ldr	x2, [x25, 16]
	add	x1, x2, 48
#APP
// 47 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/atomic_lse.h" 1
	.arch_extension lse
.if 1 == 1
661:
	bl	__ll_sc_atomic_add

662:
.pushsection .altinstructions,"a"
 .word 661b - .
 .word 663f - .
 .hword 5
 .byte 662b-661b
 .byte 664f-663f
.popsection
.pushsection .altinstr_replacement, "a"
663:
	.arch_extension lse
	stadd	w0, [x1]

664:
	.popsection
	.org	. - (664b-663b) + (662b-661b)
	.org	. - (662b-661b) + (664b-663b)
.endif

// 0 "" 2
#NO_APP
	mov	w0, 99
	adrp	x3, .LC102
	str	w0, [x29, 120]
	add	x3, x3, :lo12:.LC102
	mov	w2, -1
	mov	x1, x21
	adrp	x0, ebc_thread
	add	x0, x0, :lo12:ebc_thread
	bl	kthread_create_on_node
	mov	x24, x0
	cmn	x0, #4096
	bhi	.L1727
	bl	wake_up_process
	str	x24, [x25, 24]
	mov	x0, x24
	add	x2, x29, 120
	mov	w1, 1
	bl	sched_setscheduler_nocheck
	ldr	w0, [x21, 676]
	cmp	w0, 7
	bgt	.L1827
.L1728:
	add	x27, x27, :lo12:.LANCHOR0
	mov	w0, 1
	ldr	x2, [x27, 24]
	add	x1, x2, 48
#APP
// 47 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/atomic_lse.h" 1
	.arch_extension lse
.if 1 == 1
661:
	bl	__ll_sc_atomic_add

662:
.pushsection .altinstructions,"a"
 .word 661b - .
 .word 663f - .
 .hword 5
 .byte 662b-661b
 .byte 664f-663f
.popsection
.pushsection .altinstr_replacement, "a"
663:
	.arch_extension lse
	stadd	w0, [x1]

664:
	.popsection
	.org	. - (664b-663b) + (662b-661b)
	.org	. - (662b-661b) + (664b-663b)
.endif

// 0 "" 2
#NO_APP
	add	x0, x21, 512
	str	wzr, [x21, 52]
	str	wzr, [x21, 68]
	mov	w24, 1
	stp	wzr, wzr, [x21, 88]
	str	wzr, [x21, 192]
	str	w24, [x21, 240]
	str	wzr, [x21, 632]
	str	wzr, [x21, 636]
	stp	w24, w24, [x0, 132]
	stp	wzr, wzr, [x0, 140]
	str	wzr, [x21, 668]
	bl	ebc_get_init_log_level
	str	w0, [x21, 684]
	ldr	w0, [x19, 988]
	cmp	w0, 3576
	beq	.L1729
	ldr	w0, [x19, 992]
	cmp	w0, 3576
	cset	w24, eq
.L1729:
	add	x0, x19, 480
	str	w24, [x21, 660]
	mov	w25, 1
	str	w25, [x21, 672]
	adrp	x1, .LC103
	add	x1, x1, :lo12:.LC103
	stp	xzr, xzr, [x0]
	adrp	x27, jiffies
	stp	xzr, xzr, [x0, 16]
	add	x24, x19, 696
	stp	xzr, xzr, [x0, 32]
	mov	x28, 268435455
	stp	xzr, xzr, [x0, 48]
	stp	xzr, xzr, [x0, 64]
	stp	xzr, xzr, [x0, 80]
	stp	xzr, xzr, [x0, 96]
	stp	xzr, xzr, [x0, 112]
	stp	xzr, xzr, [x0, 128]
	stp	xzr, xzr, [x0, 144]
	stp	xzr, xzr, [x0, 160]
	stp	xzr, xzr, [x0, 176]
	stp	xzr, xzr, [x0, 192]
	str	x1, [x19, 480]
	bl	wakeup_source_add
	str	wzr, [x21, 456]
	mov	x4, 0
	mov	x3, 0
	mov	w2, 0
	mov	x0, x24
	adrp	x1, ebc_frame_control_timeout
	add	x1, x1, :lo12:ebc_frame_control_timeout
	bl	init_timer_key
	ldr	x1, [x27, #:lo12:jiffies]
	mov	x0, x24
	add	x24, x19, 752
	add	x1, x1, x28
	bl	mod_timer
	mov	x4, 0
	mov	x3, 0
	mov	w2, 0
	mov	x0, x24
	adrp	x1, ebc_overlay_enable_timeout
	add	x1, x1, :lo12:ebc_overlay_enable_timeout
	bl	init_timer_key
	ldr	x1, [x27, #:lo12:jiffies]
	mov	x0, x24
	add	x24, x19, 808
	add	x1, x1, x28
	bl	mod_timer
	mov	x4, 0
	mov	x3, 0
	mov	w2, 0
	mov	x0, x24
	adrp	x1, ebc_frame_timeout
	add	x1, x1, :lo12:ebc_frame_timeout
	bl	init_timer_key
	ldr	x1, [x27, #:lo12:jiffies]
	mov	x0, x24
	add	x1, x1, x28
	bl	mod_timer
	adrp	x0, saved_command_line
	adrp	x1, .LC104
	stp	wzr, wzr, [x29, 116]
	add	x1, x1, :lo12:.LC104
	ldr	x24, [x0, #:lo12:saved_command_line]
	mov	x0, x24
	bl	strstr
	adrp	x1, .LC105
	mov	x28, x0
	add	x1, x1, :lo12:.LC105
	mov	x0, x24
	bl	strstr
	mov	x27, x0
	cbz	x28, .L1730
	add	x2, x29, 116
	mov	x0, x28
	adrp	x1, .LC106
	add	x1, x1, :lo12:.LC106
	bl	sscanf
	ldr	w2, [x29, 116]
	ldr	x0, [x19, 232]
	cmp	x0, x2, uxtw
	bls	.L1828
.L1730:
	mov	w28, 0
	mov	x24, 0
	mov	x25, 0
	cbz	x27, .L1762
.L1761:
	add	x2, x29, 120
	mov	x0, x27
	adrp	x1, .LC109
	add	x1, x1, :lo12:.LC109
	bl	sscanf
	mov	w27, 0
	ldr	w2, [x29, 120]
	mov	x25, 0
	ldr	x0, [x19, 232]
	cmp	x0, x2, uxtw
	bls	.L1829
.L1734:
	cbnz	w28, .L1733
.L1762:
	ldr	x0, [x21, 96]
	adrp	x1, .LC112
	add	x1, x1, :lo12:.LC112
	bl	_dev_info
	ldr	x0, [x19, 16]
	cbz	x0, .L1736
	bl	ebc_pmic_verity_vcom
.L1737:
	adrp	x0, .LC113
	add	x0, x0, :lo12:.LC113
	bl	ebc_empty_buf_get
	mov	x28, x0
	ldp	w2, w0, [x19, 116]
	mov	w1, 240
	mul	w2, w2, w0
	ldr	x0, [x28, 16]
	bl	memset
	stp	wzr, wzr, [x28, 48]
	mov	w0, 17
	str	w0, [x28, 40]
	mov	w2, 1
	mov	x0, x28
	ldr	w1, [x19, 116]
	str	w1, [x28, 56]
	ldr	w1, [x19, 120]
	stp	w1, w2, [x28, 60]
	bl	ebc_add_to_dsp_buf_list
.L1738:
	cbnz	w27, .L1830
.L1743:
	ldr	w0, [x21, 88]
	adrp	x23, .LANCHOR1
	cbz	w0, .L1831
.L1748:
	cbz	x24, .L1749
	mov	x0, x24
	bl	kfree
.L1749:
	cbz	x25, .L1732
	mov	x0, x25
	bl	kfree
.L1732:
	str	x19, [x22, 184]
	add	x23, x23, :lo12:.LANCHOR1
	add	x0, x23, 224
	bl	misc_register
	add	x0, x23, 376
	bl	misc_register
	ldr	x0, [x19, 328]
	add	x1, x23, 456
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 488
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 520
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 552
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 584
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 616
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 648
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 680
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 712
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 744
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 776
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 808
	bl	device_create_file
	ldr	x0, [x19, 328]
	add	x1, x23, 840
	bl	device_create_file
	ldr	x0, [x21, 96]
	adrp	x1, .LC115
	add	x2, x26, :lo12:.LC60
	add	x1, x1, :lo12:.LC115
	bl	_dev_info
	b	.L1684
	.p2align 3
.L1708:
	mov	w2, -22
	mov	x0, x22
	mov	w20, w2
	adrp	x1, .LC95
	add	x1, x1, :lo12:.LC95
	bl	_dev_err
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 144
	ret
	.p2align 3
.L1809:
	mov	x0, x19
	bl	kfree
	mov	x0, x22
	mov	w20, -12
	adrp	x1, .LC67
	add	x1, x1, :lo12:.LC67
	bl	_dev_err
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 144
	ret
	.p2align 3
.L1811:
	mov	x0, x22
	mov	w20, -12
	adrp	x1, .LC65
	add	x1, x1, :lo12:.LC65
	bl	_dev_err
	mov	w0, w20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 144
	ret
	.p2align 3
.L1763:
	mov	w0, 3566
	str	w0, [x29, 108]
	b	.L1690
	.p2align 3
.L1812:
	adrp	x1, .LC66
	mov	x0, x22
	add	x1, x1, :lo12:.LC66
	mov	w20, w19
	bl	_dev_err
	b	.L1684
	.p2align 3
.L1821:
	adrp	x1, .LC96
	mov	x0, x22
	add	x1, x1, :lo12:.LC96
	bl	_dev_err
	b	.L1684
.L1827:
	ldr	x0, [x25, 24]
	adrp	x1, cpu_bit_bitmap+48
	add	x1, x1, :lo12:cpu_bit_bitmap+48
	bl	set_cpus_allowed_ptr
	b	.L1728
.L1831:
	mov	w2, 1
	str	w2, [x21, 88]
	add	x0, x23, :lo12:.LANCHOR1
	mov	w1, w2
	add	x0, x0, 304
	bl	__wake_up_sync
	b	.L1748
.L1829:
	ldr	x0, [x21, 96]
	adrp	x1, .LC110
	add	x1, x1, :lo12:.LC110
	bl	_dev_info
	ldp	w0, w1, [x23, 76]
	mul	w0, w0, w1
	mov	w1, 32960
	movk	w1, 0x60, lsl 16
	lsr	w0, w0, 1
	bl	__kmalloc
	mov	x25, x0
	cbz	x0, .L1832
	ldp	w2, w1, [x23, 76]
	mov	w27, 1
	ldr	x3, [x19, 232]
	mul	w2, w2, w1
	ldr	w1, [x29, 120]
	sub	x1, x1, x3
	ldr	x3, [x21, 8]
	lsr	w2, w2, 1
	add	x1, x3, x1
	bl	memcpy
	b	.L1734
.L1828:
	ldr	x0, [x21, 96]
	adrp	x1, .LC107
	add	x1, x1, :lo12:.LC107
	bl	_dev_info
	ldp	w0, w1, [x23, 76]
	mul	w0, w0, w1
	mov	w1, 32960
	movk	w1, 0x60, lsl 16
	lsr	w0, w0, 1
	bl	__kmalloc
	mov	x24, x0
	cbz	x0, .L1833
	ldp	w2, w1, [x23, 76]
	ldr	x3, [x19, 232]
	mul	w2, w2, w1
	ldr	w1, [x29, 116]
	sub	x1, x1, x3
	ldr	x3, [x21, 8]
	lsr	w2, w2, 1
	add	x1, x3, x1
	bl	memcpy
	cbnz	x27, .L1834
	mov	w27, 0
	mov	x25, 0
.L1733:
	adrp	x0, .LC114
	add	x0, x0, :lo12:.LC114
	bl	ebc_empty_buf_get
	mov	x5, x0
	cbz	x0, .L1738
	ldp	w4, w0, [x23, 76]
	mov	x1, 0
	ldr	x2, [x5, 16]
	mul	w4, w4, w0
	lsr	w4, w4, 1
	cbz	w4, .L1741
	.p2align 2
.L1791:
	ldrb	w0, [x24, x1]
	add	x1, x1, 1
	cmp	w4, w1
	and	w3, w0, -16
	lsl	w0, w0, 4
	strb	w0, [x2], 2
	strb	w3, [x2, -1]
	bgt	.L1791
.L1741:
	stp	wzr, wzr, [x5, 48]
	mov	w0, 7
	str	w0, [x5, 40]
	mov	w2, 1
	mov	x0, x5
	ldr	w1, [x23, 76]
	str	w1, [x5, 56]
	ldr	w1, [x23, 80]
	stp	w1, w2, [x5, 60]
	bl	ebc_add_to_dsp_buf_list
	b	.L1738
.L1824:
	ldr	x0, [x25, 8]
	adrp	x1, cpu_bit_bitmap+56
	add	x1, x1, :lo12:cpu_bit_bitmap+56
	bl	set_cpus_allowed_ptr
	b	.L1724
.L1822:
	adrp	x1, .LC97
	mov	x0, x22
	add	x1, x1, :lo12:.LC97
	bl	_dev_err
	b	.L1684
.L1826:
	ldr	x0, [x24, 16]
	adrp	x1, cpu_bit_bitmap+64
	add	x1, x1, :lo12:cpu_bit_bitmap+64
	bl	set_cpus_allowed_ptr
	b	.L1726
.L1693:
	mov	w20, -517
	b	.L1684
.L1830:
	adrp	x0, .LC114
	add	x0, x0, :lo12:.LC114
	bl	ebc_empty_buf_get
	cbz	x0, .L1743
	ldp	w5, w1, [x23, 76]
	mov	x2, 0
	ldr	x3, [x0, 16]
	mul	w5, w5, w1
	lsr	w5, w5, 1
	cbz	w5, .L1747
	.p2align 2
.L1790:
	ldrb	w1, [x25, x2]
	add	x2, x2, 1
	cmp	w5, w2
	and	w4, w1, -16
	lsl	w1, w1, 4
	strb	w1, [x3], 2
	strb	w4, [x3, -1]
	bgt	.L1790
.L1747:
	mov	w1, 7
	stp	wzr, wzr, [x0, 48]
	str	w1, [x0, 40]
	mov	w2, 1
	ldr	w1, [x23, 76]
	str	w1, [x0, 56]
	ldr	w1, [x23, 80]
	stp	w1, w2, [x0, 60]
	bl	ebc_add_to_dsp_buf_list
	b	.L1743
.L1765:
	mov	w20, -12
	b	.L1684
.L1694:
	adrp	x1, .LC72
	mov	x0, x22
	add	x1, x1, :lo12:.LC72
	mov	w20, -22
	bl	_dev_err
	b	.L1684
.L1823:
	ldr	x0, [x21, 96]
	adrp	x1, .LC99
	add	x1, x1, :lo12:.LC99
	bl	_dev_err
.L1723:
	adrp	x1, .LC132
	mov	x0, x22
	add	x1, x1, :lo12:.LC132
	mov	w20, -1
	bl	_dev_err
	b	.L1684
.L1825:
	ldr	x0, [x21, 96]
	adrp	x1, .LC101
	add	x1, x1, :lo12:.LC101
	bl	_dev_err
	b	.L1723
.L1727:
	ldr	x0, [x21, 96]
	adrp	x1, .LC131
	str	x24, [x25, 24]
	add	x1, x1, :lo12:.LC131
	bl	_dev_err
	b	.L1723
.L1813:
	adrp	x1, .LC69
	mov	x0, x22
	add	x1, x1, :lo12:.LC69
	mov	w20, -19
	bl	_dev_err
	b	.L1684
.L1736:
	ldr	x0, [x19, 24]
	bl	ebc_regulator_verity_vcom
	b	.L1737
.L1832:
	ldr	x0, [x21, 96]
	adrp	x1, .LC111
	adrp	x23, .LANCHOR1
	add	x1, x1, :lo12:.LC111
	bl	_dev_err
	b	.L1732
.L1834:
	mov	w28, w25
	b	.L1761
.L1833:
	ldr	x0, [x21, 96]
	adrp	x1, .LC108
	adrp	x23, .LANCHOR1
	add	x1, x1, :lo12:.LC108
	bl	_dev_err
	b	.L1732
	.size	ebc_probe, .-ebc_probe
	.align	2
	.p2align 3,,7
	.type	auto_frame_state_read, %function
auto_frame_state_read:
	adrp	x0, .LANCHOR0
	ldr	x1, [x0, #:lo12:.LANCHOR0]
	ldp	w0, w4, [x1, 116]
	mul	w4, w4, w0
	cbz	w4, .L1836
	ldr	x5, [x1, 392]
	mov	w1, 0
	ldrb	w3, [x5]
	cbz	w3, .L1839
	b	.L1837
	.p2align 3
.L1841:
	ldrb	w3, [x5, w1, sxtw]
	cbnz	w3, .L1837
.L1839:
	add	w1, w1, 1
	cmp	w1, w4
	bne	.L1841
.L1836:
	adrp	x1, .LC133
	add	x1, x1, :lo12:.LC133
	mov	x0, 2
	ldrh	w3, [x1]
	ldrb	w1, [x1, 2]
	strh	w3, [x2]
	strb	w1, [x2, 2]
	ret
	.p2align 3
.L1837:
	stp	x29, x30, [sp, -16]!
	mov	x0, x2
	adrp	x1, .LC59
	mov	w2, w3
	add	x29, sp, 0
	add	x1, x1, :lo12:.LC59
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], 16
	ret
	.size	auto_frame_state_read, .-auto_frame_state_read
	.align	2
	.p2align 3,,7
	.type	ebc_frame_start, %function
ebc_frame_start:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	add	x19, x0, 232
	str	x21, [sp, 32]
	add	x20, x0, 40
	mov	x21, x0
	ldr	w4, [x19, 240]
	sub	w0, w4, #3
	cmp	w0, 1
	ldr	w0, [x19, 784]
	bhi	.L1852
	tbnz	w0, #31, .L1854
	ldr	w1, [x19, 80]
	cmp	w0, w1
	blt	.L1896
.L1854:
	cmp	w4, 3
	beq	.L1856
	ble	.L1897
	cmp	w4, 4
	beq	.L1859
	cmp	w4, 5
	bne	.L1855
	ldrb	w0, [x19, 56]
	str	w0, [x19, 72]
	ldp	x2, x1, [x19, 208]
	ldr	w0, [x20, 164]
	cbnz	w0, .L1898
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change_part
.L1879:
	ldr	w3, [x19, 72]
	ldrsw	x2, [x19, 32]
	ldp	x1, x0, [x19, 176]
	sub	w3, w3, #1
	str	w3, [x19, 72]
	bl	memcpy
	str	wzr, [x20, 72]
	mov	x1, x19
	mov	x0, x20
	bl	flip
	ldr	x21, [sp, 32]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L1852:
	tbnz	w0, #31, .L1854
	ldr	w1, [x19, 80]
	cmp	w0, w1
	bge	.L1854
	ldr	w0, [x19, 780]
	tbnz	w0, #31, .L1854
	ldr	w1, [x19, 84]
	cmp	w0, w1
	bge	.L1854
	ldp	x1, x2, [x19, 208]
	mov	x0, x19
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	strb	wzr, [x19, 788]
	bl	get_pix_pos_old_and_new_gray
	ldr	w4, [x19, 240]
	b	.L1854
	.p2align 3
.L1859:
	ldrsw	x2, [x19, 32]
	mov	w1, 0
	ldr	x0, [x19, 176]
	bl	memset
	ldr	w0, [x20, 164]
	ldp	x1, x2, [x19, 136]
	ldp	x3, x4, [x19, 160]
	cbnz	w0, .L1899
	ldr	x0, [x19, 176]
	mov	x5, x19
	bl	get_overlay_image_area
.L1862:
	ldr	w0, [x19, 60]
	cbnz	w0, .L1900
	ldr	w0, [x19, 684]
	cmp	w0, 0
	ble	.L1867
	ldr	x0, [x19, 96]
	adrp	x2, .LANCHOR3
	add	x2, x2, :lo12:.LANCHOR3
	adrp	x1, .LC134
	add	x2, x2, 48
	add	x1, x1, :lo12:.LC134
	bl	_dev_info
.L1867:
	str	wzr, [x19, 52]
.L1905:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L1897:
	cmp	w4, 1
	bne	.L1855
	ldrb	w0, [x19, 56]
	str	w0, [x19, 72]
	ldp	x2, x1, [x19, 208]
	ldr	w0, [x20, 164]
	cbnz	w0, .L1901
	ldr	x1, [x1, 16]
	mov	x3, x19
	ldr	x2, [x2, 16]
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change_part
	ldr	w0, [x19, 72]
	ldp	x2, x1, [x19, 208]
	sub	w0, w0, #1
	str	w0, [x19, 72]
	ldr	w0, [x20, 164]
	cbz	w0, .L1876
.L1906:
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change_part2
	b	.L1891
	.p2align 3
.L1856:
	ldr	w0, [x20, 164]
	ldp	x1, x2, [x19, 136]
	ldr	x3, [x19, 160]
	cbnz	w0, .L1902
	ldr	x0, [x19, 176]
	mov	w5, 1
	mov	x4, x19
	bl	get_auto_image
	ldr	w0, [x19, 60]
	cbz	w0, .L1870
.L1904:
	ldr	w0, [x20, 164]
	ldp	x1, x2, [x19, 136]
	ldr	x3, [x19, 160]
	cbz	w0, .L1871
	ldr	x0, [x19, 184]
	mov	w5, 1
	mov	x4, x19
	bl	get_auto_image2
	b	.L1891
	.p2align 3
.L1855:
	ldp	x1, x2, [x19, 208]
	mov	x0, x19
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	get_pix_pos_old_and_new_gray
	ldr	x0, [x19, 216]
	ldr	w1, [x0, 40]
	cmp	w1, 21
	beq	.L1903
	ldrb	w4, [x19, 56]
	str	w4, [x19, 72]
	ldr	x2, [x19, 208]
	ldr	w1, [x20, 164]
	ldr	x5, [x21, 352]
	cbz	w1, .L1888
	ldr	x1, [x0, 16]
	mov	w6, 1
	ldr	x2, [x2, 16]
	mov	w3, w4
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change2.isra.2
.L1889:
	ldr	w4, [x19, 72]
	ldp	x2, x1, [x19, 208]
	sub	w4, w4, #1
	str	w4, [x19, 72]
	ldr	w0, [x20, 164]
	ldrb	w3, [x21, 288]
	ldr	x5, [x21, 352]
	cbz	w0, .L1890
	ldr	x1, [x1, 16]
	mov	w6, 1
	ldr	x2, [x2, 16]
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change2.isra.2
	.p2align 2
.L1891:
	str	wzr, [x20, 72]
	mov	x1, x19
	mov	x0, x20
	bl	flip
.L1851:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L1896:
	ldr	w0, [x19, 780]
	tbnz	w0, #31, .L1854
	ldr	w1, [x19, 84]
	cmp	w0, w1
	bge	.L1854
	ldp	x2, x1, [x19, 136]
	strb	wzr, [x19, 788]
	mov	x0, x19
	bl	get_pix_pos_old_and_new_gray
	ldr	w4, [x19, 240]
	b	.L1854
	.p2align 3
.L1902:
	ldr	x0, [x19, 176]
	mov	w5, 1
	mov	x4, x19
	bl	get_auto_image2
	ldr	w0, [x19, 60]
	cbnz	w0, .L1904
.L1870:
	ldr	w0, [x19, 684]
	cmp	w0, 0
	ble	.L1867
	ldr	x0, [x19, 96]
	adrp	x2, .LANCHOR3
	add	x2, x2, :lo12:.LANCHOR3
	adrp	x1, .LC135
	add	x2, x2, 48
	add	x1, x1, :lo12:.LC135
	bl	_dev_info
	str	wzr, [x19, 52]
	b	.L1905
	.p2align 3
.L1901:
	ldr	x1, [x1, 16]
	mov	x3, x19
	ldr	x2, [x2, 16]
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change_part2
	ldr	w0, [x19, 72]
	ldp	x2, x1, [x19, 208]
	sub	w0, w0, #1
	str	w0, [x19, 72]
	ldr	w0, [x20, 164]
	cbnz	w0, .L1906
.L1876:
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change_part
	b	.L1891
	.p2align 3
.L1898:
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change_part2
	b	.L1879
	.p2align 3
.L1899:
	ldr	x0, [x19, 176]
	mov	x5, x19
	bl	get_overlay_image_area2
	b	.L1862
	.p2align 3
.L1890:
	ldr	x1, [x1, 16]
	mov	w6, 1
	ldr	x2, [x2, 16]
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change.isra.1
	b	.L1891
	.p2align 3
.L1888:
	ldr	x1, [x0, 16]
	mov	w6, 1
	ldr	x2, [x2, 16]
	mov	w3, w4
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change.isra.1
	b	.L1889
	.p2align 3
.L1900:
	str	wzr, [x20, 72]
	mov	x1, x19
	mov	x0, x20
	bl	flip
	ldrsw	x2, [x19, 32]
	mov	w1, 0
	ldr	x0, [x19, 184]
	bl	memset
	ldr	w0, [x20, 164]
	ldp	x1, x2, [x19, 136]
	ldp	x3, x4, [x19, 160]
	cbz	w0, .L1864
	ldr	x0, [x19, 184]
	mov	x5, x19
	bl	get_overlay_image_area2
	b	.L1851
	.p2align 3
.L1871:
	ldr	x0, [x19, 184]
	mov	w5, 1
	mov	x4, x19
	bl	get_auto_image
	b	.L1891
	.p2align 3
.L1864:
	ldr	x0, [x19, 184]
	mov	x5, x19
	bl	get_overlay_image_area
	b	.L1851
	.p2align 3
.L1903:
	ldp	w3, w2, [x19, 80]
	mov	w1, 255
	ldr	x0, [x19, 160]
	mul	w2, w2, w3
	sxtw	x2, w2
	bl	memset
	ldr	w1, [x19, 748]
	ldr	w0, [x19, 736]
	cmp	w1, 5
	ldr	w2, [x19, 84]
	csel	w1, w1, wzr, ls
	str	w0, [x19, 728]
	str	w1, [x19, 732]
	cmp	w0, 0
	str	wzr, [x19, 744]
	ccmp	w0, w2, 0, gt
	ble	.L1883
	mov	w0, w2
	str	w2, [x19, 728]
.L1883:
	str	w0, [x19, 740]
	ldp	x2, x1, [x19, 208]
	ldr	w0, [x20, 164]
	cbz	w0, .L1884
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change_full2
.L1885:
	ldr	w1, [x19, 728]
	ldr	w0, [x19, 740]
	add	w0, w0, w1
	str	w0, [x19, 740]
	ldp	x2, x1, [x19, 208]
	ldr	w0, [x20, 164]
	cbz	w0, .L1886
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change_full2
	b	.L1891
	.p2align 3
.L1884:
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change_full
	b	.L1885
	.p2align 3
.L1886:
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change_full
	b	.L1891
	.size	ebc_frame_start, .-ebc_frame_start
	.align	2
	.p2align 3,,7
	.global	refresh_new_image
	.type	refresh_new_image, %function
refresh_new_image:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	ldp	w26, w7, [x6, 80]
	cmp	w7, 0
	add	w30, w7, 7
	csel	w30, w30, w7, lt
	cmp	w26, 0
	ble	.L1907
	asr	w30, w30, 3
	mov	w20, 0
	sub	w19, w30, #1
	mov	x17, 4026531840
	add	x19, x19, 1
	mov	x16, 1030792151040
	lsl	x19, x19, 3
	mov	x15, 263882790666240
	mov	x14, 67553994410557440
	mov	x13, -1152921504606846976
	.p2align 2
.L1909:
	mov	x10, 0
	cmp	w30, 0
	ble	.L1992
	mov	x24, 996432412672
	mov	x23, 3892314112
	mov	x22, 15204352
	mov	x21, 59392
	mov	x18, 232
	b	.L2047
	.p2align 3
.L2068:
	and	x8, x9, 240
	and	x6, x7, 248
	cmp	x8, 240
	bne	.L1911
	and	x8, x7, 240
	cmp	x8, 240
	mov	x8, 255
	ccmp	x6, 0, 4, ne
	cset	x6, eq
.L1912:
	and	x25, x9, 61440
	and	x27, x7, 63488
	cmp	x25, 61440
	bne	.L1915
	and	x25, x7, 61440
	orr	x8, x8, 65280
	cmp	x25, 61440
	orr	x25, x6, 256
	ccmp	x27, 0, 4, ne
	csel	x6, x25, x6, eq
.L1916:
	and	x25, x9, 15728640
	and	x27, x7, 16252928
	cmp	x25, 15728640
	bne	.L1919
	and	x25, x7, 15728640
	orr	x8, x8, 16711680
	cmp	x25, 15728640
	orr	x25, x6, 65536
	ccmp	x27, 0, 4, ne
	csel	x6, x25, x6, eq
.L1920:
	and	x25, x9, 4026531840
	and	x27, x7, 4160749568
	cmp	x25, x17
	bne	.L1923
	and	x25, x7, 4026531840
	cmp	x27, 0
	ccmp	x25, x17, 4, ne
	orr	x25, x6, 16777216
	orr	x8, x8, 4278190080
	csel	x6, x25, x6, eq
.L1924:
	and	x25, x9, 1030792151040
	and	x27, x7, 1065151889408
	cmp	x25, x16
	bne	.L1927
	and	x25, x7, 1030792151040
	cmp	x27, 0
	ccmp	x25, x16, 4, ne
	orr	x25, x6, 4294967296
	orr	x8, x8, 1095216660480
	csel	x6, x25, x6, eq
.L1928:
	and	x25, x9, 263882790666240
	and	x27, x7, 272678883688448
	cmp	x25, x15
	bne	.L1931
	and	x25, x7, 263882790666240
	cmp	x27, 0
	ccmp	x25, x15, 4, ne
	orr	x25, x6, 1099511627776
	orr	x8, x8, 280375465082880
	csel	x6, x25, x6, eq
.L1932:
	and	x25, x9, 67553994410557440
	and	x27, x7, 69805794224242688
	cmp	x25, x14
	bne	.L1935
	and	x25, x7, 67553994410557440
	cmp	x27, 0
	ccmp	x25, x14, 4, ne
	orr	x25, x6, 281474976710656
	orr	x8, x8, 71776119061217280
	csel	x6, x25, x6, eq
.L1936:
	and	x9, x9, -1152921504606846976
	and	x25, x7, -576460752303423488
	cmp	x9, x13
	bne	.L2066
.L2062:
	and	x9, x7, -1152921504606846976
	cmp	x25, 0
	ccmp	x9, x13, 4, ne
	orr	x9, x6, 72057594037927936
	orr	x8, x8, -72057594037927936
	csel	x6, x9, x6, eq
.L1940:
	eor	x7, x11, x7
	str	x6, [x5, x10, lsl 3]
	and	x7, x7, x8
	eor	x7, x11, x7
	str	x7, [x0, x10, lsl 3]
	str	x12, [x4, x10, lsl 3]
	add	x10, x10, 1
	cmp	w30, w10
	ble	.L2067
.L2047:
	ldr	x12, [x4, x10, lsl 3]
	ldr	x6, [x5, x10, lsl 3]
	ldr	x9, [x2, x10, lsl 3]
	ldr	x11, [x0, x10, lsl 3]
	ldr	x25, [x1, x10, lsl 3]
	ldr	x7, [x3, x10, lsl 3]
	cbz	x12, .L2068
	and	x8, x12, 255
	cbz	x8, .L1943
	and	x8, x25, 240
	cmp	x8, 240
	beq	.L1944
	and	x8, x25, x18
	cmp	x8, 232
	mov	x8, 0
	beq	.L1944
.L1945:
	tst	x12, 65280
	beq	.L1949
.L2072:
	and	x27, x25, 61440
	cmp	x27, 61440
	beq	.L1950
	bics	xzr, x21, x25
	beq	.L1950
.L1951:
	tst	x12, 16711680
	beq	.L1955
.L2073:
	and	x27, x25, 15728640
	cmp	x27, 15728640
	beq	.L1956
	and	x27, x25, x22
	cmp	x27, 15204352
	beq	.L1956
.L1957:
	tst	x12, 4278190080
	beq	.L1961
.L2074:
	and	x27, x25, 4026531840
	cmp	x27, x17
	beq	.L1962
	bics	xzr, x23, x25
	beq	.L1962
.L1963:
	tst	x12, 1095216660480
	beq	.L1967
.L2075:
	and	x27, x25, 1030792151040
	cmp	x27, x16
	beq	.L1968
	bics	xzr, x24, x25
	beq	.L1968
.L1969:
	tst	x12, 280375465082880
	beq	.L1973
.L2076:
	and	x27, x25, 263882790666240
	cmp	x27, x15
	beq	.L1974
	mov	x27, 255086697644032
	bics	xzr, x27, x25
	beq	.L1974
.L1975:
	tst	x12, 71776119061217280
	beq	.L1979
.L2077:
	and	x27, x25, 67553994410557440
	cmp	x27, x14
	beq	.L1980
	mov	x27, 65302194596872192
	bics	xzr, x27, x25
	beq	.L1980
.L1981:
	tst	x12, -72057594037927936
	beq	.L1985
	and	x27, x25, -1152921504606846976
	cmp	x27, x13
	beq	.L1986
	mov	x27, -1729382256910270464
	bics	xzr, x27, x25
	bne	.L1940
.L1986:
	and	x25, x11, -1152921504606846976
	cmp	x25, x13
	bne	.L1940
	tst	x9, -72057594037927936
	bne	.L1940
	.p2align 2
.L1985:
	and	x9, x9, -1152921504606846976
	and	x6, x6, 72057594037927935
	and	x12, x12, 72057594037927935
	cmp	x9, x13
	and	x25, x7, -576460752303423488
	beq	.L2062
	cbz	x9, .L2069
	.p2align 2
.L1988:
	mov	x25, -2305843009213693952
	and	x11, x11, 72057594037927935
	cmp	x9, x25
	beq	.L2070
	orr	x11, x9, x11
	b	.L1940
	.p2align 3
.L2067:
	add	x2, x2, x19
	add	x1, x1, x19
	add	x3, x3, x19
	add	x5, x5, x19
	add	x0, x0, x19
	add	x4, x4, x19
.L1992:
	add	w20, w20, 1
	cmp	w26, w20
	bne	.L1909
.L1907:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	ret
	.p2align 3
.L2066:
	cbnz	x9, .L1988
	and	x11, x11, 72057594037927935
	orr	x6, x6, 72057594037927936
	mov	x12, 0
	b	.L1940
	.p2align 3
.L1935:
	cbnz	x25, .L1937
	and	x11, x11, -71776119061217281
	orr	x6, x6, 281474976710656
	b	.L1936
	.p2align 3
.L1931:
	cbnz	x25, .L1933
	and	x11, x11, -280375465082881
	orr	x6, x6, 1099511627776
	b	.L1932
	.p2align 3
.L1927:
	cbnz	x25, .L1929
	and	x11, x11, -1095216660481
	orr	x6, x6, 4294967296
	b	.L1928
	.p2align 3
.L1923:
	cbnz	x25, .L1925
	and	x11, x11, -4278190081
	orr	x6, x6, 16777216
	b	.L1924
	.p2align 3
.L1919:
	and	x11, x11, -16711681
	cbnz	x25, .L1921
	orr	x6, x6, 65536
	b	.L1920
	.p2align 3
.L1915:
	and	x11, x11, -65281
	cbnz	x25, .L1917
	orr	x6, x6, 256
	b	.L1916
	.p2align 3
.L1911:
	and	x11, x11, -256
	cbz	x8, .L2064
	cmp	x8, 224
	beq	.L2071
	orr	x11, x8, x11
	mov	x6, 0
	mov	x8, 0
	b	.L1912
	.p2align 3
.L2071:
	orr	x11, x11, 240
	mov	x8, 0
.L2064:
	mov	x6, 1
	b	.L1912
	.p2align 3
.L1944:
	and	x8, x11, 240
	cmp	x8, 240
	mov	x8, 0
	bne	.L1945
	and	x27, x9, 255
	cbnz	x27, .L1945
	.p2align 2
.L1943:
	and	x8, x9, 240
	and	x6, x6, -256
	and	x12, x12, -256
	cmp	x8, 240
	and	x27, x7, 248
	bne	.L1946
	and	x8, x7, 240
	cmp	x8, 240
	orr	x8, x6, 1
	ccmp	x27, 0, 4, ne
	csel	x6, x8, x6, eq
	mov	x8, 255
	tst	x12, 65280
	bne	.L2072
.L1949:
	and	x27, x9, 61440
	and	x6, x6, -65281
	and	x12, x12, -65281
	cmp	x27, 61440
	and	x28, x7, 63488
	bne	.L1952
.L2099:
	and	x27, x7, 61440
	orr	x8, x8, 65280
	cmp	x27, 61440
	orr	x27, x6, 256
	ccmp	x28, 0, 4, ne
	csel	x6, x27, x6, eq
	tst	x12, 16711680
	bne	.L2073
.L1955:
	and	x27, x9, 15728640
	and	x6, x6, -16711681
	and	x12, x12, -16711681
	cmp	x27, 15728640
	and	x28, x7, 16252928
	bne	.L1958
.L2096:
	and	x27, x7, 15728640
	orr	x8, x8, 16711680
	cmp	x27, 15728640
	orr	x27, x6, 65536
	ccmp	x28, 0, 4, ne
	csel	x6, x27, x6, eq
	tst	x12, 4278190080
	bne	.L2074
.L1961:
	and	x27, x9, 4026531840
	and	x6, x6, -4278190081
	and	x12, x12, -4278190081
	cmp	x27, x17
	and	x28, x7, 4160749568
	bne	.L1964
.L2093:
	and	x27, x7, 4026531840
	cmp	x28, 0
	ccmp	x27, x17, 4, ne
	orr	x27, x6, 16777216
	csel	x6, x27, x6, eq
	orr	x8, x8, 4278190080
	tst	x12, 1095216660480
	bne	.L2075
.L1967:
	and	x27, x9, 1030792151040
	and	x6, x6, -1095216660481
	and	x12, x12, -1095216660481
	cmp	x27, x16
	and	x28, x7, 1065151889408
	bne	.L1970
.L2090:
	and	x27, x7, 1030792151040
	cmp	x28, 0
	ccmp	x27, x16, 4, ne
	orr	x27, x6, 4294967296
	csel	x6, x27, x6, eq
	orr	x8, x8, 1095216660480
	tst	x12, 280375465082880
	bne	.L2076
.L1973:
	and	x27, x9, 263882790666240
	and	x6, x6, -280375465082881
	and	x12, x12, -280375465082881
	cmp	x27, x15
	and	x28, x7, 272678883688448
	bne	.L1976
.L2087:
	and	x27, x7, 263882790666240
	cmp	x28, 0
	ccmp	x27, x15, 4, ne
	orr	x27, x6, 1099511627776
	csel	x6, x27, x6, eq
	orr	x8, x8, 280375465082880
	tst	x12, 71776119061217280
	bne	.L2077
.L1979:
	and	x27, x9, 67553994410557440
	and	x6, x6, -71776119061217281
	and	x12, x12, -71776119061217281
	cmp	x27, x14
	and	x28, x7, 69805794224242688
	bne	.L1982
.L2084:
	and	x27, x7, 67553994410557440
	cmp	x28, 0
	ccmp	x27, x14, 4, ne
	orr	x27, x6, 281474976710656
	orr	x8, x8, 71776119061217280
	csel	x6, x27, x6, eq
	b	.L1981
	.p2align 3
.L1925:
	mov	x27, 3758096384
	and	x11, x11, -4278190081
	cmp	x25, x27
	beq	.L2078
	orr	x11, x25, x11
	b	.L1924
	.p2align 3
.L1929:
	mov	x27, 962072674304
	and	x11, x11, -1095216660481
	cmp	x25, x27
	beq	.L2079
	orr	x11, x25, x11
	b	.L1928
	.p2align 3
.L1937:
	mov	x27, 63050394783186944
	and	x11, x11, -71776119061217281
	cmp	x25, x27
	beq	.L2080
	orr	x11, x25, x11
	b	.L1936
	.p2align 3
.L1921:
	cmp	x25, 14680064
	beq	.L2081
	orr	x11, x25, x11
	b	.L1920
	.p2align 3
.L1933:
	mov	x27, 246290604621824
	and	x11, x11, -280375465082881
	cmp	x25, x27
	beq	.L2082
	orr	x11, x25, x11
	b	.L1932
	.p2align 3
.L1917:
	cmp	x25, 57344
	beq	.L2083
	orr	x11, x25, x11
	b	.L1916
	.p2align 3
.L1980:
	and	x27, x11, 67553994410557440
	cmp	x27, x14
	bne	.L1981
	tst	x9, 71776119061217280
	bne	.L1981
	and	x27, x9, 67553994410557440
	and	x6, x6, -71776119061217281
	and	x12, x12, -71776119061217281
	cmp	x27, x14
	and	x28, x7, 69805794224242688
	beq	.L2084
.L1982:
	cbz	x27, .L2085
	mov	x28, 63050394783186944
	and	x11, x11, -71776119061217281
	cmp	x27, x28
	beq	.L2086
	orr	x11, x27, x11
	b	.L1981
	.p2align 3
.L1974:
	and	x27, x11, 263882790666240
	cmp	x27, x15
	bne	.L1975
	tst	x9, 280375465082880
	bne	.L1975
	and	x27, x9, 263882790666240
	and	x6, x6, -280375465082881
	and	x12, x12, -280375465082881
	cmp	x27, x15
	and	x28, x7, 272678883688448
	beq	.L2087
.L1976:
	cbz	x27, .L2088
	mov	x28, 246290604621824
	and	x11, x11, -280375465082881
	cmp	x27, x28
	beq	.L2089
	orr	x11, x27, x11
	b	.L1975
	.p2align 3
.L1968:
	and	x27, x11, 1030792151040
	cmp	x27, x16
	bne	.L1969
	tst	x9, 1095216660480
	bne	.L1969
	and	x27, x9, 1030792151040
	and	x6, x6, -1095216660481
	and	x12, x12, -1095216660481
	cmp	x27, x16
	and	x28, x7, 1065151889408
	beq	.L2090
.L1970:
	cbz	x27, .L2091
	mov	x28, 962072674304
	and	x11, x11, -1095216660481
	cmp	x27, x28
	beq	.L2092
	orr	x11, x27, x11
	b	.L1969
	.p2align 3
.L1962:
	and	x27, x11, 4026531840
	cmp	x27, x17
	bne	.L1963
	tst	x9, 4278190080
	bne	.L1963
	and	x27, x9, 4026531840
	and	x6, x6, -4278190081
	and	x12, x12, -4278190081
	cmp	x27, x17
	and	x28, x7, 4160749568
	beq	.L2093
.L1964:
	cbz	x27, .L2094
	mov	x28, 3758096384
	and	x11, x11, -4278190081
	cmp	x27, x28
	beq	.L2095
	orr	x11, x27, x11
	b	.L1963
	.p2align 3
.L1956:
	and	x27, x11, 15728640
	cmp	x27, 15728640
	bne	.L1957
	tst	x9, 16711680
	bne	.L1957
	and	x27, x9, 15728640
	and	x6, x6, -16711681
	and	x12, x12, -16711681
	cmp	x27, 15728640
	and	x28, x7, 16252928
	beq	.L2096
.L1958:
	and	x11, x11, -16711681
	cbz	x27, .L2097
	cmp	x27, 14680064
	beq	.L2098
	orr	x11, x27, x11
	b	.L1957
	.p2align 3
.L1950:
	and	x27, x11, 61440
	cmp	x27, 61440
	bne	.L1951
	tst	x9, 65280
	bne	.L1951
	and	x27, x9, 61440
	and	x6, x6, -65281
	and	x12, x12, -65281
	cmp	x27, 61440
	and	x28, x7, 63488
	beq	.L2099
.L1952:
	and	x11, x11, -65281
	cbz	x27, .L2100
	cmp	x27, 57344
	beq	.L2101
	orr	x11, x27, x11
	b	.L1951
	.p2align 3
.L2070:
	orr	x6, x6, 72057594037927936
	orr	x11, x11, -1152921504606846976
	b	.L1940
	.p2align 3
.L2079:
	orr	x6, x6, 4294967296
	orr	x11, x11, 1030792151040
	b	.L1928
	.p2align 3
.L2081:
	orr	x6, x6, 65536
	orr	x11, x11, 15728640
	b	.L1920
	.p2align 3
.L2080:
	orr	x6, x6, 281474976710656
	orr	x11, x11, 67553994410557440
	b	.L1936
	.p2align 3
.L2082:
	orr	x6, x6, 1099511627776
	orr	x11, x11, 263882790666240
	b	.L1932
	.p2align 3
.L2078:
	orr	x6, x6, 16777216
	orr	x11, x11, 4026531840
	b	.L1924
	.p2align 3
.L2083:
	orr	x6, x6, 256
	orr	x11, x11, 61440
	b	.L1916
.L1946:
	and	x11, x11, -256
	cbz	x8, .L2102
	cmp	x8, 224
	beq	.L2103
	orr	x11, x8, x11
	mov	x8, 0
	b	.L1945
.L2097:
	orr	x6, x6, 65536
	b	.L1957
.L2100:
	orr	x6, x6, 256
	b	.L1951
.L2102:
	orr	x6, x6, 1
	b	.L1945
.L2091:
	and	x11, x11, -1095216660481
	orr	x6, x6, 4294967296
	b	.L1969
.L2085:
	and	x11, x11, -71776119061217281
	orr	x6, x6, 281474976710656
	b	.L1981
.L2088:
	and	x11, x11, -280375465082881
	orr	x6, x6, 1099511627776
	b	.L1975
.L2094:
	and	x11, x11, -4278190081
	orr	x6, x6, 16777216
	b	.L1963
.L2069:
	and	x11, x11, 72057594037927935
	orr	x6, x6, 72057594037927936
	b	.L1940
.L2098:
	orr	x6, x6, 65536
	orr	x11, x11, 15728640
	b	.L1957
.L2095:
	orr	x6, x6, 16777216
	orr	x11, x11, 4026531840
	b	.L1963
.L2089:
	orr	x6, x6, 1099511627776
	orr	x11, x11, 263882790666240
	b	.L1975
.L2086:
	orr	x6, x6, 281474976710656
	orr	x11, x11, 67553994410557440
	b	.L1981
.L2092:
	orr	x6, x6, 4294967296
	orr	x11, x11, 1030792151040
	b	.L1969
.L2103:
	orr	x6, x6, 1
	orr	x11, x11, 240
	mov	x8, 0
	b	.L1945
.L2101:
	orr	x6, x6, 256
	orr	x11, x11, 61440
	b	.L1951
	.size	refresh_new_image, .-refresh_new_image
	.align	2
	.p2align 3,,7
	.global	refresh_new_image_auto
	.type	refresh_new_image_auto, %function
refresh_new_image_auto:
	ldp	w14, w4, [x3, 80]
	cmp	w4, 0
	add	w10, w4, 7
	csel	w10, w10, w4, lt
	cmp	w14, 0
	asr	w10, w10, 3
	ble	.L2104
	sub	w12, w10, #1
	mov	w13, 0
	add	x12, x12, 1
	mov	x11, 255
	lsl	x12, x12, 3
	.p2align 2
.L2106:
	cmp	w10, 0
	ble	.L2117
	add	x7, x0, 8
	mov	x5, 0
	.p2align 2
.L2116:
	ldr	x3, [x1, x5, lsl 3]
	ldr	x8, [x7, -8]
	eor	x6, x3, x8
	cmp	x3, x8
	beq	.L2107
	ldr	x4, [x2, x5, lsl 3]
	and	x3, x4, 255
	cmp	x3, 0
	csel	x3, xzr, x11, ne
	tst	x4, 65280
	orr	x9, x3, 65280
	csel	x3, x9, x3, eq
	tst	x4, 16711680
	orr	x9, x3, 16711680
	csel	x3, x9, x3, eq
	tst	x4, 4278190080
	orr	x9, x3, 4278190080
	csel	x3, x9, x3, eq
	tst	x4, 1095216660480
	orr	x9, x3, 1095216660480
	csel	x3, x9, x3, eq
	tst	x4, 280375465082880
	orr	x9, x3, 280375465082880
	csel	x3, x9, x3, eq
	tst	x4, 71776119061217280
	orr	x9, x3, 71776119061217280
	csel	x3, x9, x3, eq
	tst	x4, -72057594037927936
	orr	x4, x3, -72057594037927936
	csel	x3, x4, x3, eq
	and	x3, x6, x3
	eor	x3, x3, x8
	str	x3, [x7, -8]
.L2107:
	add	x5, x5, 1
	add	x7, x7, 8
	cmp	w10, w5
	bgt	.L2116
	add	x0, x0, x12
	add	x2, x2, x12
	add	x1, x1, x12
.L2117:
	add	w13, w13, 1
	cmp	w14, w13
	bne	.L2106
.L2104:
	ret
	.size	refresh_new_image_auto, .-refresh_new_image_auto
	.align	2
	.p2align 3,,7
	.type	ebc_thread, %function
ebc_thread:
	stp	x29, x30, [sp, -208]!
	adrp	x0, .LANCHOR0
	add	x29, sp, 0
	ldr	x0, [x0, #:lo12:.LANCHOR0]
	stp	x27, x28, [sp, 80]
	add	x1, x0, 808
	add	x27, x0, 232
	str	x1, [x29, 128]
	mov	x28, x27
	add	x1, x0, 696
	str	x0, [x29, 144]
	str	x1, [x29, 112]
	add	x1, x0, 752
	stp	x19, x20, [sp, 16]
	add	x0, x0, 40
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x1, [x29, 104]
	str	x0, [x29, 120]
	.p2align 2
.L2121:
	bl	ebc_osd_buf_get
	mov	x19, x0
	cbz	x0, .L2122
.L2658:
	ldr	x0, [x28, 632]
	cbz	x0, .L2123
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2638
	ldr	x0, [x28, 96]
	adrp	x1, .LC136
	add	x1, x1, :lo12:.LC136
	bl	_dev_info
.L2638:
	mov	x0, x19
	bl	ebc_buf_release
	bl	ebc_osd_buf_get
	mov	x19, x0
	cbnz	x0, .L2658
.L2122:
	ldr	w0, [x28, 648]
	str	wzr, [x28, 92]
	cbz	w0, .L2201
	ldr	w0, [x28, 644]
	cbnz	w0, .L2201
	ldr	w0, [x28, 652]
	cbnz	w0, .L2201
.L2202:
	ldr	w0, [x28, 88]
	cbz	w0, .L2659
.L2406:
.L2404:
	str	wzr, [x28, 88]
	b	.L2121
.L2659:
	bl	ebc_get_power_off_delay
	bl	__msecs_to_jiffies
	ldr	w2, [x28, 88]
	cmp	w2, 0
	cset	w1, ne
	cmp	x0, 0
	cset	w0, eq
	tst	w1, w0
	bne	.L2121
	orr	w1, w1, w0
	cbnz	w1, .L2394
	bl	ebc_get_power_off_delay
	bl	__msecs_to_jiffies
	mov	x20, x0
	mov	w1, 0
	add	x0, x29, 168
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
.L2398:
	mov	w2, 1
	add	x1, x29, 168
	mov	x0, x19
	bl	prepare_to_wait_event
	ldr	w1, [x28, 88]
	mov	x3, x0
	mov	x0, x20
	cmp	w1, 0
	cset	w1, ne
	cmp	x20, 0
	cset	w2, eq
	tst	w1, w2
	beq	.L2660
.L2395:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 304
	add	x1, x29, 168
	bl	finish_wait
	ldr	w2, [x28, 88]
.L2394:
	cbnz	w2, .L2121
.L2397:
	ldr	w0, [x28, 52]
	cmp	w0, 1
	bne	.L2399
	add	x0, x29, 168
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
	b	.L2402
	.p2align 3
.L2661:
	ldr	w1, [x28, 88]
	cbnz	w1, .L2400
	cbnz	x0, .L2401
	bl	schedule
.L2402:
	add	x1, x29, 168
	mov	w2, 1
	mov	x0, x19
	bl	prepare_to_wait_event
	ldr	w1, [x28, 52]
	cbnz	w1, .L2661
.L2400:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 304
	add	x1, x29, 168
	bl	finish_wait
.L2401:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L2121
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .L2121
	ldr	w0, [x28, 52]
	cbnz	w0, .L2403
.L2642:
	ldr	x0, [x29, 144]
	mov	w1, 0
	bl	ebc_power_set
.L2403:
	ldr	w0, [x28, 88]
	cbnz	w0, .L2404
	add	x0, x29, 168
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
.L2407:
	add	x1, x29, 168
	mov	w2, 1
	mov	x0, x19
	bl	prepare_to_wait_event
	ldr	w1, [x28, 88]
	cbnz	w1, .L2405
	cbnz	x0, .L2404
	bl	schedule
	b	.L2407
	.p2align 3
.L2123:
	ldp	w0, w1, [x19, 48]
	orr	w0, w0, w1
	cbnz	w0, .L2126
	ldr	x0, [x29, 144]
	ldr	w1, [x19, 56]
	ldr	w0, [x0, 316]
	cmp	w1, w0
	beq	.L2662
.L2126:
	ldr	w0, [x28, 240]
	cmp	w0, 2
	beq	.L2134
	and	w0, w0, -5
	cmp	w0, 1
	bne	.L2130
	ldr	w2, [x28, 72]
	cbz	w2, .L2131
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2132
	ldr	x0, [x28, 96]
	adrp	x1, .LC138
	add	x1, x1, :lo12:.LC138
	bl	_dev_info
	str	wzr, [x28, 644]
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2133
	ldr	x0, [x28, 96]
	adrp	x1, .LC139
	add	x1, x1, :lo12:.LC139
	bl	_dev_info
.L2133:
	ldr	w0, [x28, 72]
	lsl	w1, w0, 4
	sub	w0, w1, w0
	bl	__msecs_to_jiffies
	adrp	x1, jiffies
	ldr	x1, [x1, #:lo12:jiffies]
	add	x1, x0, x1
	ldr	x0, [x29, 112]
	bl	mod_timer
	str	wzr, [x28, 72]
.L2130:
	mov	w0, 4
	str	x19, [x28, 232]
	str	w0, [x28, 240]
	ldr	x4, [x29, 144]
	ldr	x0, [x28, 216]
	ldr	w3, [x19, 48]
	ldr	w1, [x19, 56]
	cmp	w3, 0
	add	w2, w3, 7
	ldr	x20, [x0, 16]
	csel	w2, w2, w3, lt
	ldr	w0, [x4, 316]
	cmp	w1, 0
	add	w21, w1, 7
	asr	w3, w2, 3
	csel	w21, w21, w1, lt
	add	w24, w0, 7
	cmp	w0, 0
	ldr	w1, [x19, 60]
	csel	w24, w24, w0, lt
	ldr	w0, [x19, 52]
	asr	w21, w21, 3
	asr	w24, w24, 3
	mov	w2, w0
	add	w21, w21, 1
	ldr	w0, [x4, 312]
	cmp	w21, w24
	str	w3, [x29, 156]
	mov	w3, w1
	sub	w1, w24, #1
	ldr	x19, [x19, 16]
	csel	w21, w1, w21, ge
	cmp	w0, w3
	sub	w0, w0, #1
	csel	w0, w0, w3, le
	mov	w1, w0
	mul	w0, w2, w24
	ldp	x10, x11, [x28, 160]
	str	w1, [x29, 152]
	ldp	x9, x23, [x28, 136]
	sbfiz	x0, x0, 3, 32
	cmp	w2, w1
	add	x19, x19, x0
	add	x20, x20, x0
	add	x9, x9, x0
	add	x10, x10, x0
	add	x11, x11, x0
	bgt	.L2143
	str	x28, [x29, 136]
	sbfiz	x24, x24, 3, 32
	mov	w28, w2
	mov	x18, 1030792151040
	mov	x17, 263882790666240
	mov	x16, 67553994410557440
	mov	x15, -1152921504606846976
	.p2align 2
.L2144:
	ldr	w0, [x29, 156]
	cmp	w0, w21
	mov	w8, w0
	bgt	.L2195
	mov	x27, 15204352
	mov	x14, 4026531840
	mov	x26, 3892314112
	mov	x25, 996432412672
	b	.L2544
	.p2align 3
.L2663:
	and	x1, x12, 240
	cmp	x1, 240
	beq	.L2146
	mov	x1, 232
	and	x1, x12, x1
	cmp	x1, 232
	mov	x2, 0
	beq	.L2146
.L2147:
	tst	x3, 65280
	beq	.L2151
.L2664:
	and	x1, x12, 61440
	cmp	x1, 61440
	beq	.L2152
	mov	x1, 59392
	bics	xzr, x1, x12
	beq	.L2152
.L2153:
	tst	x3, 16711680
	beq	.L2157
.L2665:
	and	x1, x12, 15728640
	cmp	x1, 15728640
	beq	.L2158
	and	x1, x12, x27
	cmp	x1, 15204352
	beq	.L2158
.L2159:
	tst	x3, 4278190080
	beq	.L2163
.L2666:
	and	x1, x12, 4026531840
	cmp	x1, x14
	beq	.L2164
	bics	xzr, x26, x12
	beq	.L2164
.L2165:
	tst	x3, 1095216660480
	beq	.L2169
.L2667:
	and	x1, x12, 1030792151040
	cmp	x1, x18
	beq	.L2170
	bics	xzr, x25, x12
	beq	.L2170
.L2171:
	tst	x3, 280375465082880
	beq	.L2175
.L2668:
	and	x1, x12, 263882790666240
	cmp	x1, x17
	beq	.L2176
	mov	x1, 255086697644032
	bics	xzr, x1, x12
	beq	.L2176
.L2177:
	tst	x3, 71776119061217280
	beq	.L2181
.L2669:
	and	x1, x12, 67553994410557440
	cmp	x1, x16
	beq	.L2182
	mov	x1, 65302194596872192
	bics	xzr, x1, x12
	beq	.L2182
.L2183:
	tst	x3, -72057594037927936
	beq	.L2187
.L2670:
	and	x1, x12, -1152921504606846976
	cmp	x1, x15
	beq	.L2188
	mov	x1, -1729382256910270464
	bics	xzr, x1, x12
	beq	.L2188
.L2189:
	str	x0, [x13]
	eor	x0, x6, x7
	and	x0, x0, x2
	add	w8, w8, 1
	eor	x0, x7, x0
	str	x0, [x5]
	str	x3, [x4]
	cmp	w8, w21
	bgt	.L2195
.L2544:
	sxtw	x1, w8
	lsl	x0, x1, 3
	add	x5, x9, x0
	add	x4, x10, x0
	ldr	x3, [x10, x1, lsl 3]
	add	x13, x11, x0
	ldr	x7, [x9, x1, lsl 3]
	ldr	x12, [x23, x1, lsl 3]
	and	x2, x3, 255
	ldr	x22, [x19, x1, lsl 3]
	ldr	x6, [x20, x1, lsl 3]
	ldr	x0, [x11, x1, lsl 3]
	cbnz	x2, .L2663
	and	x2, x22, 240
	and	x0, x0, -256
	and	x3, x3, -256
	cmp	x2, 240
	and	x1, x6, 248
	bne	.L2148
.L2675:
	and	x2, x6, 240
	cmp	x2, 240
	mov	x2, x0
	ccmp	x1, 0, 4, ne
	orr	x0, x0, 1
	csel	x0, x0, x2, eq
	mov	x2, 255
	tst	x3, 65280
	bne	.L2664
.L2151:
	and	x1, x22, 61440
	and	x0, x0, -65281
	and	x3, x3, -65281
	cmp	x1, 61440
	and	x30, x6, 63488
	bne	.L2154
.L2674:
	and	x1, x6, 61440
	orr	x2, x2, 65280
	cmp	x1, 61440
	orr	x1, x0, 256
	ccmp	x30, 0, 4, ne
	csel	x0, x1, x0, eq
	tst	x3, 16711680
	bne	.L2665
.L2157:
	and	x1, x22, 15728640
	and	x0, x0, -16711681
	and	x3, x3, -16711681
	cmp	x1, 15728640
	and	x30, x6, 16252928
	bne	.L2160
.L2673:
	and	x1, x6, 15728640
	orr	x2, x2, 16711680
	cmp	x1, 15728640
	orr	x1, x0, 65536
	ccmp	x30, 0, 4, ne
	csel	x0, x1, x0, eq
	tst	x3, 4278190080
	bne	.L2666
.L2163:
	and	x1, x22, 4026531840
	and	x0, x0, -4278190081
	and	x3, x3, -4278190081
	cmp	x1, x14
	and	x30, x6, 4160749568
	bne	.L2166
.L2672:
	and	x1, x6, 4026531840
	cmp	x30, 0
	ccmp	x1, x14, 4, ne
	orr	x1, x0, 16777216
	csel	x0, x1, x0, eq
	orr	x2, x2, 4278190080
	tst	x3, 1095216660480
	bne	.L2667
.L2169:
	and	x1, x22, 1030792151040
	and	x0, x0, -1095216660481
	and	x3, x3, -1095216660481
	cmp	x1, x18
	and	x30, x6, 1065151889408
	bne	.L2172
.L2677:
	and	x1, x6, 1030792151040
	cmp	x30, 0
	ccmp	x1, x18, 4, ne
	orr	x1, x0, 4294967296
	csel	x0, x1, x0, eq
	orr	x2, x2, 1095216660480
	tst	x3, 280375465082880
	bne	.L2668
.L2175:
	and	x1, x22, 263882790666240
	and	x0, x0, -280375465082881
	and	x3, x3, -280375465082881
	cmp	x1, x17
	and	x30, x6, 272678883688448
	bne	.L2178
.L2676:
	and	x1, x6, 263882790666240
	cmp	x30, 0
	ccmp	x1, x17, 4, ne
	orr	x1, x0, 1099511627776
	csel	x0, x1, x0, eq
	orr	x2, x2, 280375465082880
	tst	x3, 71776119061217280
	bne	.L2669
.L2181:
	and	x1, x22, 67553994410557440
	and	x0, x0, -71776119061217281
	and	x3, x3, -71776119061217281
	cmp	x1, x16
	and	x30, x6, 69805794224242688
	bne	.L2184
.L2678:
	and	x1, x6, 67553994410557440
	cmp	x30, 0
	ccmp	x1, x16, 4, ne
	orr	x1, x0, 281474976710656
	csel	x0, x1, x0, eq
	orr	x2, x2, 71776119061217280
	tst	x3, -72057594037927936
	bne	.L2670
.L2187:
	and	x1, x22, -1152921504606846976
	and	x0, x0, 72057594037927935
	and	x3, x3, 72057594037927935
	cmp	x1, x15
	and	x12, x6, -576460752303423488
	bne	.L2190
.L2671:
	and	x1, x6, -1152921504606846976
	cmp	x12, 0
	ccmp	x1, x15, 4, ne
	orr	x1, x0, 72057594037927936
	orr	x2, x2, -72057594037927936
	csel	x0, x1, x0, eq
	b	.L2189
	.p2align 3
.L2188:
	and	x1, x7, -1152921504606846976
	cmp	x1, x15
	bne	.L2189
	tst	x22, -72057594037927936
	bne	.L2189
	and	x1, x22, -1152921504606846976
	and	x0, x0, 72057594037927935
	and	x3, x3, 72057594037927935
	cmp	x1, x15
	and	x12, x6, -576460752303423488
	beq	.L2671
	.p2align 2
.L2190:
	cbnz	x1, .L2191
	and	x7, x7, 72057594037927935
	orr	x0, x0, 72057594037927936
	b	.L2189
	.p2align 3
.L2164:
	and	x1, x7, 4026531840
	cmp	x1, x14
	bne	.L2165
	tst	x22, 4278190080
	bne	.L2165
	and	x1, x22, 4026531840
	and	x0, x0, -4278190081
	and	x3, x3, -4278190081
	cmp	x1, x14
	and	x30, x6, 4160749568
	beq	.L2672
	.p2align 2
.L2166:
	cbnz	x1, .L2167
	and	x7, x7, -4278190081
	orr	x0, x0, 16777216
	b	.L2165
	.p2align 3
.L2158:
	and	x1, x7, 15728640
	cmp	x1, 15728640
	bne	.L2159
	tst	x22, 16711680
	bne	.L2159
	and	x1, x22, 15728640
	and	x0, x0, -16711681
	and	x3, x3, -16711681
	cmp	x1, 15728640
	and	x30, x6, 16252928
	beq	.L2673
	.p2align 2
.L2160:
	and	x7, x7, -16711681
	cbnz	x1, .L2161
	orr	x0, x0, 65536
	b	.L2159
	.p2align 3
.L2152:
	and	x1, x7, 61440
	cmp	x1, 61440
	bne	.L2153
	tst	x22, 65280
	bne	.L2153
	and	x1, x22, 61440
	and	x0, x0, -65281
	and	x3, x3, -65281
	cmp	x1, 61440
	and	x30, x6, 63488
	beq	.L2674
	.p2align 2
.L2154:
	and	x7, x7, -65281
	cbnz	x1, .L2155
	orr	x0, x0, 256
	b	.L2153
	.p2align 3
.L2146:
	and	x1, x7, 240
	mov	x2, 0
	cmp	x1, 240
	bne	.L2147
	and	x1, x22, 255
	cbnz	x1, .L2147
	and	x2, x22, 240
	and	x0, x0, -256
	and	x3, x3, -256
	cmp	x2, 240
	and	x1, x6, 248
	beq	.L2675
	.p2align 2
.L2148:
	and	x7, x7, -256
	cbnz	x2, .L2149
	orr	x0, x0, 1
	b	.L2147
	.p2align 3
.L2176:
	and	x1, x7, 263882790666240
	cmp	x1, x17
	bne	.L2177
	tst	x22, 280375465082880
	bne	.L2177
	and	x1, x22, 263882790666240
	and	x0, x0, -280375465082881
	and	x3, x3, -280375465082881
	cmp	x1, x17
	and	x30, x6, 272678883688448
	beq	.L2676
	.p2align 2
.L2178:
	cbnz	x1, .L2179
	and	x7, x7, -280375465082881
	orr	x0, x0, 1099511627776
	b	.L2177
	.p2align 3
.L2170:
	and	x1, x7, 1030792151040
	cmp	x1, x18
	bne	.L2171
	tst	x22, 1095216660480
	bne	.L2171
	and	x1, x22, 1030792151040
	and	x0, x0, -1095216660481
	and	x3, x3, -1095216660481
	cmp	x1, x18
	and	x30, x6, 1065151889408
	beq	.L2677
	.p2align 2
.L2172:
	cbnz	x1, .L2173
	and	x7, x7, -1095216660481
	orr	x0, x0, 4294967296
	b	.L2171
	.p2align 3
.L2182:
	and	x1, x7, 67553994410557440
	cmp	x1, x16
	bne	.L2183
	tst	x22, 71776119061217280
	bne	.L2183
	and	x1, x22, 67553994410557440
	and	x0, x0, -71776119061217281
	and	x3, x3, -71776119061217281
	cmp	x1, x16
	and	x30, x6, 69805794224242688
	beq	.L2678
	.p2align 2
.L2184:
	cbnz	x1, .L2185
	and	x7, x7, -71776119061217281
	orr	x0, x0, 281474976710656
	b	.L2183
	.p2align 3
.L2195:
	ldr	w0, [x29, 152]
	add	w28, w28, 1
	add	x9, x9, x24
	add	x19, x19, x24
	add	x20, x20, x24
	add	x10, x10, x24
	add	x11, x11, x24
	cmp	w28, w0
	ble	.L2144
	ldr	x28, [x29, 136]
.L2143:
	ldr	w0, [x28, 52]
	cbnz	w0, .L2196
	ldr	x0, [x29, 144]
	mov	w1, 1
	str	w1, [x28, 52]
	mov	w2, 0
	bl	ebc_lut_update
	ldr	w2, [x28, 104]
	ldr	w0, [x28, 684]
	strb	w2, [x28, 56]
	lsr	w3, w2, 8
	strb	w3, [x28, 57]
	cmp	w0, 0
	ble	.L2197
	ldr	x0, [x28, 96]
	adrp	x1, .LC141
	and	w3, w3, 255
	and	w2, w2, 255
	add	x1, x1, :lo12:.LC141
	bl	_dev_info
.L2197:
	ldr	x0, [x29, 144]
	bl	ebc_frame_start
	bl	ebc_overlay_enable_control
	cbnz	w0, .L2679
.L2199:
	ldr	x0, [x28, 224]
	cbz	x0, .L2200
	bl	ebc_buf_release
.L2200:
	ldr	x0, [x28, 232]
	str	x0, [x28, 224]
	b	.L2121
	.p2align 3
.L2155:
	cmp	x1, 57344
	beq	.L2680
	orr	x7, x1, x7
	b	.L2153
	.p2align 3
.L2191:
	mov	x12, -2305843009213693952
	and	x7, x7, 72057594037927935
	cmp	x1, x12
	beq	.L2681
	orr	x7, x1, x7
	b	.L2189
	.p2align 3
.L2149:
	cmp	x2, 224
	beq	.L2682
	orr	x7, x2, x7
	mov	x2, 0
	b	.L2147
	.p2align 3
.L2179:
	mov	x30, 246290604621824
	and	x7, x7, -280375465082881
	cmp	x1, x30
	beq	.L2683
	orr	x7, x1, x7
	b	.L2177
	.p2align 3
.L2167:
	mov	x30, 3758096384
	and	x7, x7, -4278190081
	cmp	x1, x30
	beq	.L2684
	orr	x7, x1, x7
	b	.L2165
	.p2align 3
.L2185:
	mov	x30, 63050394783186944
	and	x7, x7, -71776119061217281
	cmp	x1, x30
	beq	.L2685
	orr	x7, x1, x7
	b	.L2183
	.p2align 3
.L2173:
	mov	x30, 962072674304
	and	x7, x7, -1095216660481
	cmp	x1, x30
	beq	.L2686
	orr	x7, x1, x7
	b	.L2171
	.p2align 3
.L2161:
	cmp	x1, 14680064
	beq	.L2687
	orr	x7, x1, x7
	b	.L2159
.L2683:
	orr	x0, x0, 1099511627776
	orr	x7, x7, 263882790666240
	b	.L2177
.L2680:
	orr	x0, x0, 256
	orr	x7, x7, 61440
	b	.L2153
.L2684:
	orr	x0, x0, 16777216
	orr	x7, x7, 4026531840
	b	.L2165
.L2682:
	orr	x0, x0, 1
	orr	x7, x7, 240
	mov	x2, 0
	b	.L2147
.L2686:
	orr	x0, x0, 4294967296
	orr	x7, x7, 1030792151040
	b	.L2171
.L2681:
	orr	x0, x0, 72057594037927936
	orr	x7, x7, -1152921504606846976
	b	.L2189
.L2685:
	orr	x0, x0, 281474976710656
	orr	x7, x7, 67553994410557440
	b	.L2183
.L2687:
	orr	x0, x0, 65536
	orr	x7, x7, 15728640
	b	.L2159
.L2196:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	ldr	x0, [x0, 8]
	bl	wake_up_process
	bl	ebc_overlay_enable_control
	cbz	w0, .L2199
.L2679:
	mov	w0, 1
	str	w0, [x28, 640]
	bl	ebc_overlay_enable_timeout_ms
	bl	__msecs_to_jiffies
	adrp	x1, jiffies
	ldr	x1, [x1, #:lo12:jiffies]
	add	x1, x1, x0
	ldr	x0, [x29, 104]
	bl	mod_timer
	b	.L2199
.L2201:
	bl	ebc_dsp_buf_get
	mov	x19, x0
	cbz	x0, .L2202
	ldr	w2, [x0, 40]
	cmp	w2, 21
	beq	.L2203
	ldr	w0, [x28, 640]
	cbnz	w0, .L2204
	ldr	w0, [x28, 240]
	cmp	w0, 4
	beq	.L2688
.L2205:
	ldr	w0, [x28, 460]
	cbnz	w0, .L2230
.L2420:
	str	x19, [x28, 208]
	ldr	w2, [x19, 40]
.L2230:
	cmp	w2, 16
	bgt	.L2232
	cmp	w2, 7
	mov	w20, 0
	bge	.L2233
	cmp	w2, 0
	beq	.L2234
	blt	.L2231
	cmp	w2, 2
	bge	.L2235
.L2231:
	ldr	x0, [x28, 96]
	adrp	x1, .LC163
	add	x1, x1, :lo12:.LC163
	bl	_dev_err
	b	.L2638
.L2134:
	ldr	x0, [x28, 208]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x28, 144]
	bl	memcpy
	ldr	x0, [x28, 216]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x28, 136]
	bl	memcpy
	b	.L2130
.L2131:
	ldr	w0, [x28, 660]
	cbz	w0, .L2134
	ldr	w0, [x28, 656]
	cbz	w0, .L2134
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2135
	ldr	x0, [x28, 96]
	adrp	x1, .LC140
	add	x1, x1, :lo12:.LC140
	bl	_dev_info
.L2135:
	ldr	x0, [x28, 216]
	ldr	w2, [x28, 28]
	ldr	x1, [x28, 152]
	cmp	w2, 0
	ldr	x5, [x0, 16]
	ble	.L2136
	mov	x4, 0
.L2139:
	ldrb	w3, [x5, x4]
	ldrb	w0, [x1, x4]
	cmp	w0, 0
	mvn	w0, w3
	and	w0, w0, -16
	csel	w0, w0, w3, ne
	strb	w0, [x1, x4]
	add	x4, x4, 1
	cmp	w2, w4
	bgt	.L2139
	ldr	w2, [x28, 28]
	ldr	x1, [x28, 152]
.L2136:
	ldr	x0, [x28, 144]
	sxtw	x2, w2
	bl	memcpy
	ldr	x0, [x28, 216]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x28, 136]
	bl	memcpy
	str	wzr, [x28, 644]
	ldr	w0, [x28, 684]
	str	wzr, [x28, 656]
	str	wzr, [x28, 668]
	cmp	w0, 0
	ble	.L2140
	ldr	x0, [x28, 96]
	adrp	x1, .LC139
	add	x1, x1, :lo12:.LC139
	bl	_dev_info
.L2140:
	ldrb	w0, [x28, 104]
	lsl	w1, w0, 4
	sub	w0, w1, w0
	bl	__msecs_to_jiffies
	adrp	x1, jiffies
	ldr	x1, [x1, #:lo12:jiffies]
	add	x1, x1, x0
	ldr	x0, [x29, 112]
	bl	mod_timer
	b	.L2130
.L2662:
	ldr	x0, [x29, 144]
	ldr	w1, [x19, 60]
	ldr	w0, [x0, 312]
	cmp	w1, w0
	bne	.L2126
	ldr	w0, [x28, 240]
	cmp	w0, 4
	beq	.L2130
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2638
	ldr	x0, [x28, 96]
	adrp	x1, .LC137
	add	x1, x1, :lo12:.LC137
	bl	_dev_info
	b	.L2638
.L2204:
	ldr	w0, [x28, 240]
	cmp	w0, 2
	beq	.L2209
	and	w0, w0, -5
	cmp	w0, 1
	bne	.L2206
	ldr	w2, [x28, 72]
	cbz	w2, .L2208
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2206
	ldr	x0, [x28, 96]
	adrp	x1, .LC138
	add	x1, x1, :lo12:.LC138
	bl	_dev_info
.L2206:
	mov	w0, 4
	str	x19, [x28, 216]
	str	w0, [x28, 240]
	mov	x6, x28
	ldr	x0, [x28, 136]
	ldr	x2, [x28, 16]
	ldr	x1, [x28, 144]
	ldp	x4, x5, [x28, 160]
	ldr	x3, [x19, 16]
	bl	refresh_new_image
	ldr	w0, [x28, 52]
	cbnz	w0, .L2215
	ldr	w0, [x28, 72]
	mov	w1, 1
	str	w1, [x28, 52]
	cbz	w0, .L2216
	str	wzr, [x28, 72]
.L2217:
	ldr	w3, [x28, 104]
	ldr	w0, [x28, 684]
	strb	w3, [x28, 56]
	cmp	w0, 0
	lsr	w0, w3, 8
	strb	w0, [x28, 57]
	ble	.L2218
	ldr	x0, [x28, 216]
	adrp	x1, .LC142
	and	w3, w3, 255
	add	x1, x1, :lo12:.LC142
	ldr	w2, [x0, 40]
	ldr	x0, [x28, 96]
	bl	_dev_info
.L2218:
	ldr	x0, [x29, 120]
	ldp	x1, x2, [x28, 136]
	ldp	x3, x4, [x28, 160]
	ldr	w0, [x0, 164]
	cbz	w0, .L2219
	ldr	x0, [x28, 176]
	mov	w6, 1
	mov	x5, x28
	bl	get_overlay_image2
.L2220:
	ldr	w0, [x28, 60]
	cbz	w0, .L2221
	ldr	x0, [x29, 120]
	ldp	x1, x2, [x28, 136]
	ldp	x3, x4, [x28, 160]
	ldr	w0, [x0, 164]
	cbz	w0, .L2222
	ldr	x0, [x28, 184]
	mov	w6, 1
	mov	x5, x28
	bl	get_overlay_image2
.L2223:
	ldr	x0, [x29, 120]
	mov	x1, x28
	str	wzr, [x0, 72]
	bl	flip
.L2224:
	ldr	x0, [x28, 216]
	ldr	w0, [x0, 40]
	cmp	w0, 0
	sub	w0, w0, #22
	ccmp	w0, 1, 0, ne
	bls	.L2225
	ldr	w0, [x28, 52]
	cbnz	w0, .L2689
.L2225:
	ldr	w0, [x28, 460]
	cbnz	w0, .L2690
.L2390:
	mov	w0, 1
	str	w0, [x28, 460]
.L2391:
	ldr	x0, [x28, 216]
	str	x0, [x28, 208]
	b	.L2121
.L2203:
	ldr	w0, [x28, 460]
	cbz	w0, .L2420
.L2235:
	mov	w20, 1
.L2233:
	ldr	w0, [x28, 52]
	cbz	w0, .L2266
	ldr	w0, [x28, 684]
	cmp	w0, 0
	bgt	.L2267
.L2269:
	add	x0, x29, 168
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x21, x0, :lo12:.LANCHOR1
	add	x21, x21, 304
	b	.L2268
.L2691:
	cbnz	x0, .L2270
	bl	schedule
.L2268:
	add	x1, x29, 168
	mov	w2, 1
	mov	x0, x21
	bl	prepare_to_wait_event
	ldr	w1, [x28, 52]
	cbnz	w1, .L2691
	mov	x0, x21
	add	x1, x29, 168
	bl	finish_wait
.L2272:
.L2270:
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2266
	ldr	x0, [x28, 96]
	adrp	x1, .LC147
	add	x1, x1, :lo12:.LC147
	bl	_dev_info
.L2266:
	ldr	w0, [x28, 240]
	sub	w1, w0, #3
	cmp	w1, 1
	bls	.L2692
	cmp	w0, 1
	beq	.L2693
.L2640:
	ldr	w3, [x19, 40]
	sub	w0, w3, #6
	sub	w1, w3, #2
	cmp	w0, 5
	mov	w6, w3
	cset	w0, ls
	cmp	w1, 1
	cset	w1, ls
	orr	w0, w0, w1
	cbnz	w0, .L2694
.L2280:
	add	w20, w20, 1
.L2279:
	ldr	x0, [x29, 144]
	ldr	w0, [x0, 892]
	cbz	w0, .L2285
	sub	w6, w6, #12
	cmp	w6, 2
	bls	.L2695
	ldr	w0, [x28, 656]
	cbz	w0, .L2285
	cmp	w3, 21
	beq	.L2285
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2298
	ldr	x0, [x28, 96]
	adrp	x1, .LC152
	add	x1, x1, :lo12:.LC152
	bl	_dev_info
.L2298:
	ldr	x0, [x28, 216]
	ldr	w2, [x28, 28]
	ldr	x3, [x19, 16]
	cmp	w2, 0
	ldr	x4, [x28, 152]
	ldr	x5, [x0, 16]
	mov	x0, 0
	ble	.L2302
.L2546:
	ldrb	w1, [x4, x0]
	cbz	w1, .L2300
	ldrb	w1, [x3, x0]
	mvn	w1, w1
	and	w1, w1, -16
	strb	w1, [x5, x0]
.L2300:
	add	x0, x0, 1
	cmp	w2, w0
	bgt	.L2546
.L2302:
	mov	w0, 9
	str	w0, [x19, 40]
.L2285:
	cmp	w20, 2
	str	wzr, [x28, 656]
	cset	w2, eq
	str	wzr, [x28, 668]
.L2296:
	str	x19, [x28, 216]
	ldr	x0, [x29, 144]
	ldr	w1, [x19, 40]
	bl	ebc_lut_update
	ldr	w0, [x19, 40]
	cmp	w0, 13
	beq	.L2696
	cmp	w0, 12
	beq	.L2697
	cmp	w0, 14
	ldr	w0, [x28, 660]
	beq	.L2308
	ldr	w1, [x28, 104]
	strb	w1, [x28, 56]
	cbnz	w0, .L2309
.L2310:
	ldr	x22, [x29, 144]
	adrp	x0, .LC153
	add	x21, x0, :lo12:.LC153
.L2312:
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2316
	ldr	x0, [x28, 216]
	mov	x1, x21
	ldrb	w4, [x28, 104]
	ldrb	w3, [x28, 56]
	ldr	w2, [x0, 40]
	ldr	x0, [x28, 96]
	bl	_dev_info
.L2316:
	mov	w0, 1
	str	w20, [x28, 240]
	str	w0, [x28, 52]
	mov	x0, x22
	bl	ebc_frame_start
	adrp	x0, jiffies
	ldr	x1, [x0, #:lo12:jiffies]
	ldr	x0, [x29, 128]
	add	x1, x1, 900
	bl	mod_timer
	ldr	w0, [x22, 892]
	cbz	w0, .L2317
	ldr	w0, [x19, 40]
	sub	w0, w0, #12
	cmp	w0, 2
	bls	.L2698
.L2317:
	ldr	w0, [x28, 52]
	cbz	w0, .L2338
.L2704:
	ldr	w0, [x28, 684]
	cmp	w0, 0
	bgt	.L2339
.L2341:
	add	x0, x29, 168
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x23, x0, :lo12:.LANCHOR1
	add	x23, x23, 304
	b	.L2340
	.p2align 3
.L2699:
	cbnz	x0, .L2342
	bl	schedule
.L2340:
	add	x1, x29, 168
	mov	w2, 1
	mov	x0, x23
	bl	prepare_to_wait_event
	ldr	w1, [x28, 52]
	cbnz	w1, .L2699
.L2344:
	mov	x0, x23
	add	x1, x29, 168
	bl	finish_wait
.L2342:
	ldr	w0, [x28, 72]
	cbnz	w0, .L2700
.L2346:
	ldr	w0, [x22, 892]
	cbnz	w0, .L2701
.L2353:
	adrp	x0, jiffies
	ldr	x1, [x0, #:lo12:jiffies]
	mov	x0, 402653184
	add	x1, x1, x0
	ldr	x0, [x29, 128]
	bl	mod_timer
	ldr	w0, [x28, 460]
	cbz	w0, .L2390
.L2690:
	ldr	x0, [x28, 208]
	bl	ebc_buf_release
	b	.L2391
.L2694:
	ldr	x0, [x29, 144]
	ldr	x1, [x28, 208]
	ldr	x5, [x19, 16]
	ldr	w0, [x0, 260]
	ldr	x7, [x1, 16]
	cmp	w0, 0
	add	w4, w0, 7
	csel	w4, w4, w0, lt
	asr	w4, w4, 3
	cmp	w4, 0
	ble	.L2281
	mov	x2, 0
	b	.L2284
.L2702:
	ldrb	w0, [x29, 161]
	ldrb	w1, [x29, 169]
	subs	w0, w0, w1
	csneg	w0, w0, w0, pl
	cmp	w0, 8
	bgt	.L2280
	ldrb	w0, [x29, 162]
	ldrb	w1, [x29, 170]
	subs	w0, w0, w1
	csneg	w0, w0, w0, pl
	cmp	w0, 8
	bgt	.L2280
	ldrb	w0, [x29, 163]
	ldrb	w1, [x29, 171]
	subs	w0, w0, w1
	csneg	w0, w0, w0, pl
	cmp	w0, 8
	bgt	.L2280
	ldrb	w0, [x29, 164]
	ldrb	w1, [x29, 172]
	subs	w0, w0, w1
	csneg	w0, w0, w0, pl
	cmp	w0, 8
	bgt	.L2280
	ldrb	w0, [x29, 165]
	ldrb	w1, [x29, 173]
	subs	w0, w0, w1
	csneg	w0, w0, w0, pl
	cmp	w0, 8
	bgt	.L2280
	ldrb	w0, [x29, 166]
	ldrb	w1, [x29, 174]
	subs	w0, w0, w1
	csneg	w0, w0, w0, pl
	cmp	w0, 8
	bgt	.L2280
	ldrb	w0, [x29, 167]
	ldrb	w1, [x29, 175]
	subs	w0, w0, w1
	csneg	w0, w0, w0, pl
	cmp	w0, 8
	bgt	.L2280
.L2282:
	cmp	w4, w2
	ble	.L2281
.L2284:
	ldr	x1, [x5, x2, lsl 3]
	and	x1, x1, -506381209866536712
	str	x1, [x29, 160]
	ldr	x0, [x7, x2, lsl 3]
	add	x2, x2, 1
	and	x0, x0, -506381209866536712
	str	x0, [x29, 168]
	cmp	x1, x0
	beq	.L2282
	ldrb	w0, [x29, 160]
	ldrb	w1, [x29, 168]
	subs	w0, w0, w1
	csneg	w0, w0, w0, pl
	cmp	w0, 8
	ble	.L2702
	b	.L2280
.L2698:
	ldr	w0, [x28, 668]
	cbz	w0, .L2317
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2318
	ldr	x0, [x28, 96]
	adrp	x1, .LC154
	add	x1, x1, :lo12:.LC154
	bl	_dev_info
.L2318:
	ldr	x0, [x28, 216]
	ldp	w23, w14, [x28, 80]
	ldrsb	w15, [x28, 752]
	ldr	w8, [x28, 664]
	cmp	w23, 0
	ldp	x12, x6, [x28, 136]
	ldr	x7, [x28, 152]
	ldr	x10, [x0, 16]
	ble	.L2435
	mov	w9, w14
	neg	w18, w15
	mov	w16, 0
	mov	w13, 0
	mov	w17, -16
	.p2align 2
.L2337:
	cmp	w14, 0
	ble	.L2320
	sub	w0, w9, w14
	.p2align 2
.L2336:
	ldrb	w4, [x10, w0, sxtw]
	sxtw	x5, w0
	ldrb	w2, [x6, w0, sxtw]
	cmp	w4, w2
	beq	.L2321
	and	w11, w2, 15
	ldrsb	w1, [x7, w0, sxtw]
	cmp	w4, 240
	cbz	w8, .L2322
	ldrsb	w3, [x12, x5]
	beq	.L2703
	sub	w3, w3, #1
	cmp	w1, 0
	sxtb	w3, w3
	ble	.L2425
	cmp	w3, 0
	mov	w1, -1
	bgt	.L2334
.L2427:
	strb	w4, [x6, x5]
	strb	w1, [x7, x5]
.L2416:
	strb	w3, [x12, x5]
.L2321:
	add	w0, w0, 1
	cmp	w9, w0
	bne	.L2336
.L2320:
	add	w13, w13, 1
	add	w9, w9, w14
	cmp	w23, w13
	bne	.L2337
	str	w16, [x28, 656]
.L2717:
	ldr	w0, [x28, 52]
	cbnz	w0, .L2704
.L2338:
	ldr	w0, [x28, 684]
	tbnz	w0, #31, .L2342
	ldr	x0, [x28, 96]
	adrp	x1, .LC156
	add	x1, x1, :lo12:.LC156
	bl	_dev_info
	ldr	w0, [x28, 72]
	cbz	w0, .L2346
.L2700:
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2347
	ldr	x0, [x28, 96]
	adrp	x1, .LC157
	add	x1, x1, :lo12:.LC157
	bl	_dev_info
.L2347:
	ldr	x0, [x28, 208]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x28, 144]
	bl	memcpy
	ldr	x0, [x28, 216]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x28, 136]
	bl	memcpy
	ldrsw	x2, [x28, 28]
	mov	w1, 0
	ldr	x0, [x28, 160]
	bl	memset
	ldrsw	x2, [x28, 28]
	mov	w1, 0
	ldr	x0, [x28, 168]
	bl	memset
	ldr	w0, [x28, 72]
	ldrb	w1, [x28, 56]
	ldr	w2, [x28, 28]
	sub	w1, w1, w0
	ldr	x3, [x28, 160]
	cmp	w2, 0
	mov	x0, 0
	ldp	x5, x4, [x28, 136]
	ble	.L2353
.L2545:
	ldrb	w7, [x4, x0]
	ldrb	w6, [x5, x0]
	cmp	w7, w6
	beq	.L2349
	strb	w1, [x3, x0]
.L2349:
	add	x0, x0, 1
	cmp	w2, w0
	bgt	.L2545
	b	.L2353
	.p2align 3
.L2322:
	beq	.L2705
	mov	w3, 0
	cmp	w1, 0
	bgt	.L2706
.L2425:
	sub	w1, w1, #1
	cmp	w8, 0
	sxtb	w1, w1
	ccmp	w3, 0, 0, ne
	ble	.L2427
	cbz	w8, .L2707
.L2334:
	cbnz	w11, .L2332
.L2421:
	orr	w2, w2, 1
	strb	w2, [x6, x5]
.L2332:
	strb	w1, [x7, x5]
	mov	w16, 1
	cbz	w8, .L2321
	b	.L2416
	.p2align 3
.L2706:
	mov	w24, -1
	mov	w1, w24
	mov	w3, 0
.L2426:
	cmp	w18, w24
	blt	.L2335
	strb	w4, [x6, x5]
	strb	w1, [x7, x5]
	b	.L2321
	.p2align 3
.L2703:
	add	w3, w3, 1
	sxtb	w3, w3
	tbnz	w1, #31, .L2708
.L2325:
	add	w1, w1, 1
	cmp	w8, 0
	sxtb	w1, w1
	ccmp	w15, w3, 0, ne
	bgt	.L2328
	strb	w17, [x6, x5]
.L2709:
	strb	w1, [x7, x5]
	b	.L2416
	.p2align 3
.L2705:
	mov	w3, 0
	tbz	w1, #31, .L2325
	mov	w1, 1
	mov	w3, 0
.L2328:
	cmp	w8, 0
	ccmp	w15, w1, 0, eq
	bgt	.L2334
	strb	w17, [x6, x5]
	strb	w1, [x7, x5]
	b	.L2321
	.p2align 3
.L2335:
	cbz	w11, .L2421
	strb	w1, [x7, x5]
	mov	w16, 1
	b	.L2321
.L2708:
	cmp	w15, w3
	mov	w1, 1
	bgt	.L2334
	strb	w17, [x6, x5]
	b	.L2709
.L2701:
	ldr	w0, [x19, 40]
	sub	w0, w0, #12
	cmp	w0, 2
	bhi	.L2353
	ldr	w0, [x28, 656]
	cbz	w0, .L2710
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L2356
	str	wzr, [x28, 88]
	mov	w1, 0
	add	x0, x29, 168
	mov	x23, 3
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x24, x0, :lo12:.LANCHOR1
	add	x24, x24, 304
	mov	w2, 1
	add	x1, x29, 168
	mov	x0, x24
	bl	prepare_to_wait_event
	mov	x3, x0
	ldr	w0, [x28, 88]
	mov	w1, 0
	cmp	w0, 0
	cset	w2, ne
	.p2align 2
.L2360:
	mov	x0, x23
	orr	w1, w1, w2
	cbnz	w1, .L2359
	cbnz	x3, .L2358
	bl	schedule_timeout
	mov	x23, x0
	mov	w2, 1
	add	x1, x29, 168
	mov	x0, x24
	bl	prepare_to_wait_event
	mov	x3, x0
	ldr	w0, [x28, 88]
	cmp	w0, 0
	cset	w2, ne
	cmp	x23, 0
	cset	w1, eq
	tst	w2, w1
	beq	.L2360
.L2359:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 304
	add	x1, x29, 168
	bl	finish_wait
.L2358:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L2361
.L2364:
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2366
	ldr	x0, [x28, 96]
	adrp	x1, .LC158
	add	x1, x1, :lo12:.LC158
	bl	_dev_info
.L2366:
	ldr	x0, [x28, 208]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x28, 144]
	ldr	x0, [x0, 16]
	bl	memcpy
	b	.L2312
.L2356:
	bl	ebc_dsp_buf_next_mode
	ldr	w1, [x19, 40]
	cmp	w0, w1
	beq	.L2353
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2366
	ldr	x0, [x28, 96]
	adrp	x1, .LC159
	add	x1, x1, :lo12:.LC159
	bl	_dev_info
	b	.L2366
.L2339:
	ldr	x0, [x28, 96]
	adrp	x1, .LC155
	add	x1, x1, :lo12:.LC155
	bl	_dev_info
	ldr	w0, [x28, 52]
	cbz	w0, .L2342
	b	.L2341
	.p2align 3
.L2361:
	bl	ebc_dsp_buf_next_mode
	ldr	w1, [x19, 40]
	cmp	w0, w1
	bne	.L2364
	b	.L2353
	.p2align 3
.L2215:
	ldr	x0, [x28, 208]
	ldr	w1, [x19, 40]
	ldr	w0, [x0, 40]
	cmp	w1, w0
	beq	.L2226
	ldr	x0, [x29, 144]
	mov	w2, 0
	bl	ebc_lut_update
	ldr	w3, [x28, 104]
	ldr	w0, [x28, 684]
	strb	w3, [x28, 56]
	cmp	w0, 0
	ble	.L2224
	ldr	x0, [x28, 216]
	and	w3, w3, 255
	adrp	x1, .LC144
	add	x1, x1, :lo12:.LC144
	ldr	w2, [x0, 40]
	ldr	x0, [x28, 96]
	bl	_dev_info
	b	.L2224
.L2132:
	str	wzr, [x28, 644]
	b	.L2133
.L2232:
	cmp	w2, 21
	beq	.L2235
	ble	.L2711
	cmp	w2, 23
	bgt	.L2231
.L2234:
	ldr	w0, [x28, 240]
	str	x19, [x28, 216]
	and	w1, w0, -5
	cmp	w1, 1
	bne	.L2237
	ldr	w2, [x28, 72]
	cbz	w2, .L2238
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2239
	ldr	x0, [x28, 96]
	adrp	x1, .LC138
	add	x1, x1, :lo12:.LC138
	bl	_dev_info
.L2239:
	str	wzr, [x28, 72]
.L2240:
	ldr	w0, [x28, 52]
	mov	w1, 3
	str	w1, [x28, 240]
	cbnz	w0, .L2225
	mov	w0, 1
	str	w0, [x28, 52]
	ldr	x0, [x29, 144]
	mov	w2, 0
	ldr	w1, [x19, 40]
	bl	ebc_lut_update
	ldr	w2, [x28, 104]
	ldr	w0, [x28, 684]
	strb	w2, [x28, 56]
	cmp	w0, 0
	lsr	w0, w2, 8
	strb	w0, [x28, 57]
	ble	.L2264
	ldr	x0, [x28, 96]
	adrp	x1, .LC148
	and	w2, w2, 255
	add	x1, x1, :lo12:.LC148
	bl	_dev_info
.L2264:
	ldr	x0, [x29, 144]
	bl	ebc_frame_start
	b	.L2225
.L2281:
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2410
	ldr	x0, [x28, 96]
	adrp	x1, .LC150
	add	x1, x1, :lo12:.LC150
	bl	_dev_info
.L2410:
	str	x19, [x28, 216]
	b	.L2225
.L2688:
	ldr	w0, [x28, 52]
	cbnz	w0, .L2206
	b	.L2205
.L2208:
	ldr	w0, [x28, 660]
	cbz	w0, .L2209
	ldr	w0, [x28, 656]
	cbz	w0, .L2209
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2210
	ldr	x0, [x28, 96]
	adrp	x1, .LC140
	add	x1, x1, :lo12:.LC140
	bl	_dev_info
.L2210:
	ldr	x0, [x28, 216]
	ldr	w2, [x28, 28]
	ldr	x1, [x28, 152]
	cmp	w2, 0
	ldr	x5, [x0, 16]
	ble	.L2211
	mov	x4, 0
.L2214:
	ldrb	w3, [x5, x4]
	ldrb	w0, [x1, x4]
	cmp	w0, 0
	mvn	w0, w3
	and	w0, w0, -16
	csel	w0, w0, w3, ne
	strb	w0, [x1, x4]
	add	x4, x4, 1
	cmp	w2, w4
	bgt	.L2214
	ldr	w2, [x28, 28]
	ldr	x1, [x28, 152]
.L2211:
	ldr	x0, [x28, 144]
	sxtw	x2, w2
	bl	memcpy
	ldr	x0, [x28, 216]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x28, 136]
	bl	memcpy
	str	wzr, [x28, 656]
	str	wzr, [x28, 668]
	b	.L2206
.L2209:
	ldr	x0, [x28, 208]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x28, 144]
	bl	memcpy
	ldr	x0, [x28, 216]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x28, 136]
	bl	memcpy
	b	.L2206
.L2226:
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ldr	x0, [x28, 216]
	ble	.L2227
	ldr	w2, [x0, 40]
	adrp	x1, .LC145
	ldrb	w3, [x28, 56]
	add	x1, x1, :lo12:.LC145
	ldr	x0, [x28, 96]
	bl	_dev_info
	b	.L2224
.L2221:
	mov	w0, 1
	str	wzr, [x28, 52]
	str	w0, [x28, 644]
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2225
	ldr	x0, [x28, 96]
	adrp	x1, .LANCHOR3
	add	x2, x1, :lo12:.LANCHOR3
	adrp	x1, .LC143
	add	x2, x2, 64
	add	x1, x1, :lo12:.LC143
	bl	_dev_info
	b	.L2224
.L2219:
	ldr	x0, [x28, 176]
	mov	w6, 1
	mov	x5, x28
	bl	get_overlay_image
	b	.L2220
.L2267:
	ldr	x0, [x28, 96]
	adrp	x1, .LC146
	add	x1, x1, :lo12:.LC146
	bl	_dev_info
	ldr	w0, [x28, 52]
	cbz	w0, .L2270
	b	.L2269
	.p2align 3
.L2695:
	ldr	w0, [x28, 656]
	cbnz	w0, .L2712
	ldr	w0, [x28, 668]
	cbnz	w0, .L2289
	ldr	x0, [x29, 144]
	ldr	x4, [x19, 16]
	ldr	w2, [x0, 260]
	ldr	x0, [x28, 208]
	cmp	w2, 0
	ldr	x1, [x0, 16]
	add	w0, w2, 7
	csel	w0, w0, w2, lt
	asr	w0, w0, 3
	cmp	w0, 0
	ble	.L2290
	ldr	x3, [x1]
	ldr	x5, [x4]
	cmp	x5, x3
	bne	.L2291
	sub	w0, w0, #1
	mov	x3, 8
	add	x0, x0, 1
	lsl	x0, x0, 3
	b	.L2293
.L2294:
	ldr	x6, [x4, x3]
	add	x3, x3, 8
	add	x5, x1, x3
	ldr	x5, [x5, -8]
	cmp	x6, x5
	bne	.L2291
.L2293:
	cmp	x0, x3
	bne	.L2294
.L2290:
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2638
	ldr	x0, [x28, 96]
	adrp	x1, .LC151
	add	x1, x1, :lo12:.LC151
	bl	_dev_info
	b	.L2638
	.p2align 3
.L2693:
	ldr	w2, [x28, 72]
	cbz	w2, .L2640
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2278
	ldr	x0, [x28, 96]
	adrp	x1, .LC149
	add	x1, x1, :lo12:.LC149
	bl	_dev_info
.L2278:
	str	wzr, [x28, 72]
	mov	w3, 21
	mov	w20, 2
	mov	w6, w3
	str	w3, [x19, 40]
	b	.L2279
.L2660:
	orr	w1, w1, w2
	cbnz	w1, .L2395
	cbnz	x3, .L2397
	bl	schedule_timeout
	mov	x20, x0
	b	.L2398
.L2237:
	cmp	w0, 2
	beq	.L2639
	cmp	w0, 4
	beq	.L2713
.L2255:
	ldr	x0, [x28, 208]
	ldr	w1, [x19, 40]
	ldr	w0, [x0, 40]
	cmp	w1, w0
	beq	.L2249
	ldr	w0, [x28, 52]
	cbz	w0, .L2249
	ldr	w0, [x28, 684]
	cmp	w0, 0
	bgt	.L2257
.L2259:
	add	x0, x29, 168
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x20, x0, :lo12:.LANCHOR1
	add	x20, x20, 304
	b	.L2258
	.p2align 3
.L2714:
	cbnz	x0, .L2260
	bl	schedule
.L2258:
	add	x1, x29, 168
	mov	w2, 1
	mov	x0, x20
	bl	prepare_to_wait_event
	ldr	w1, [x28, 52]
	cbnz	w1, .L2714
.L2261:
	mov	x0, x20
	add	x1, x29, 168
	bl	finish_wait
.L2262:
.L2260:
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2263
	ldr	x0, [x28, 96]
	adrp	x1, .LC147
	add	x1, x1, :lo12:.LC147
	bl	_dev_info
.L2263:
	ldr	x0, [x28, 216]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x28, 136]
	bl	memcpy
	b	.L2240
.L2696:
	ldr	w0, [x28, 660]
	cbz	w0, .L2311
	ldrb	w0, [x28, 104]
	lsr	w0, w0, 1
	strb	w0, [x28, 752]
	mov	w0, 2
	strb	w0, [x28, 56]
.L2309:
	ldr	w0, [x19, 40]
	sub	w0, w0, #12
	cmp	w0, 2
	bhi	.L2310
.L2718:
	ldr	w0, [x28, 656]
	cbnz	w0, .L2310
	ldrsw	x2, [x28, 28]
	mov	w1, 0
	ldr	x0, [x28, 136]
	bl	memset
	ldr	x0, [x28, 208]
	ldr	w1, [x28, 28]
	ldrsb	w4, [x28, 752]
	cmp	w1, 0
	ldr	x3, [x28, 136]
	ldr	x2, [x0, 16]
	ble	.L2310
	mov	x0, 0
.L2315:
	ldrb	w5, [x2, x0]
	cmp	w5, 240
	bne	.L2314
	strb	w4, [x3, x0]
.L2314:
	add	x0, x0, 1
	cmp	w1, w0
	bgt	.L2315
	b	.L2310
.L2711:
	cmp	w2, 17
	bne	.L2231
	mov	w20, 1
	b	.L2233
	.p2align 3
.L2238:
	ldr	w0, [x28, 660]
	cbz	w0, .L2639
	ldr	w0, [x28, 656]
	cbz	w0, .L2639
	ldr	w0, [x28, 684]
	cmp	w0, 0
	mov	x0, x19
	ble	.L2242
	ldr	x0, [x28, 96]
	adrp	x1, .LC140
	add	x1, x1, :lo12:.LC140
	bl	_dev_info
	ldr	x0, [x28, 216]
.L2242:
	ldr	w2, [x28, 28]
	ldr	x5, [x0, 16]
	cmp	w2, 0
	ldr	x1, [x28, 152]
	ble	.L2243
	mov	x4, 0
.L2246:
	ldrb	w3, [x5, x4]
	ldrb	w0, [x1, x4]
	cmp	w0, 0
	mvn	w0, w3
	and	w0, w0, -16
	csel	w0, w0, w3, ne
	strb	w0, [x1, x4]
	add	x4, x4, 1
	cmp	w2, w4
	bgt	.L2246
	ldr	w2, [x28, 28]
	ldr	x1, [x28, 152]
.L2243:
	ldr	x0, [x28, 144]
	sxtw	x2, w2
	bl	memcpy
	ldr	x0, [x28, 216]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x28, 136]
	bl	memcpy
	str	wzr, [x28, 656]
	str	wzr, [x28, 668]
	b	.L2240
.L2289:
	ldr	x0, [x28, 208]
	ldr	w2, [x28, 28]
	ldr	x1, [x0, 16]
.L2291:
	ldr	x0, [x28, 144]
	sxtw	x2, w2
	bl	memcpy
.L2288:
	ldr	w0, [x28, 668]
	cbnz	w0, .L2295
	ldrsw	x2, [x28, 28]
	mov	w1, 0
	ldr	x0, [x28, 152]
	bl	memset
.L2295:
	mov	w0, 1
	mov	w2, 0
	mov	w20, 5
	str	w0, [x28, 668]
	b	.L2296
.L2710:
	ldr	w0, [x28, 668]
	cbz	w0, .L2353
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L2353
	str	wzr, [x28, 88]
	mov	w1, 0
	add	x0, x29, 168
	mov	x20, 3
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
	mov	w2, 1
	add	x1, x29, 168
	mov	x0, x19
	bl	prepare_to_wait_event
	mov	x3, x0
	ldr	w0, [x28, 88]
	mov	w1, 0
	cmp	w0, 0
	cset	w2, ne
.L2370:
	mov	x0, x20
	orr	w1, w1, w2
	cbnz	w1, .L2369
	cbnz	x3, .L2368
	bl	schedule_timeout
	mov	x20, x0
	mov	w2, 1
	add	x1, x29, 168
	mov	x0, x19
	bl	prepare_to_wait_event
	mov	x3, x0
	ldr	w0, [x28, 88]
	cmp	w0, 0
	cset	w2, ne
	cmp	x20, 0
	cset	w1, eq
	tst	w2, w1
	beq	.L2370
.L2369:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 304
	add	x1, x29, 168
	bl	finish_wait
.L2368:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L2353
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2371
	ldr	x0, [x28, 96]
	adrp	x1, .LC160
	add	x1, x1, :lo12:.LC160
	bl	_dev_info
.L2371:
	ldp	w5, w2, [x28, 80]
	ldp	x1, x4, [x28, 144]
	sub	w5, w5, #1
	cmp	w5, 1
	ble	.L2372
	sub	w12, w2, #1
	add	w3, w2, 1
	sub	w11, w2, #2
	mov	w6, 1
	mov	w10, -24
	mov	w9, -8
.L2374:
	cmp	w12, 1
	add	w13, w11, w3
	mov	w0, w3
	bgt	.L2379
	b	.L2380
	.p2align 3
.L2715:
	strb	w9, [x1, w0, sxtw]
.L2377:
	add	w0, w0, 1
	cmp	w0, w13
	beq	.L2380
.L2379:
	ldrb	w14, [x4, w0, sxtw]
	sub	w8, w0, w2
	sxtw	x7, w0
	cbnz	w14, .L2715
	ldrb	w8, [x4, w8, sxtw]
	add	w14, w2, w0
	cbnz	w8, .L2378
	ldrb	w14, [x4, w14, sxtw]
	add	x8, x4, x7
	cbnz	w14, .L2378
	ldrb	w14, [x8, -1]
	cbnz	w14, .L2378
	ldrb	w8, [x8, 1]
	cbz	w8, .L2377
.L2378:
	strb	w10, [x1, x7]
	add	w0, w0, 1
	cmp	w0, w13
	bne	.L2379
.L2380:
	add	w6, w6, 1
	add	w3, w3, w2
	cmp	w6, w5
	bne	.L2374
	ldr	x1, [x28, 144]
.L2372:
	ldr	x0, [x28, 208]
	ldrsw	x2, [x28, 28]
	ldr	x0, [x0, 16]
	bl	memcpy
	ldr	w0, [x28, 660]
	mov	w3, 72
	cmp	w0, 7
	bgt	.L2381
	add	w0, w0, w0, lsl 2
	ubfiz	w0, w0, 1, 7
	add	w0, w0, 2
	and	w3, w0, 255
.L2381:
	mov	w0, 1
	strb	w3, [x28, 56]
	str	w0, [x28, 52]
	str	w0, [x28, 240]
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2382
	ldr	x0, [x28, 216]
	adrp	x1, .LC161
	add	x1, x1, :lo12:.LC161
	ldr	w2, [x0, 40]
	ldr	x0, [x28, 96]
	bl	_dev_info
.L2382:
	ldr	x0, [x29, 144]
	bl	ebc_frame_start
	adrp	x0, jiffies
	ldr	x1, [x0, #:lo12:jiffies]
	ldr	x0, [x29, 128]
	add	x1, x1, 900
	bl	mod_timer
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2383
	ldr	x0, [x28, 96]
	adrp	x1, .LC155
	add	x1, x1, :lo12:.LC155
	bl	_dev_info
.L2383:
	ldr	w0, [x28, 52]
	cbnz	w0, .L2716
.L2386:
.L2384:
	ldr	w2, [x28, 72]
	cmp	w2, 10
	bgt	.L2388
	str	wzr, [x28, 668]
.L2389:
	str	wzr, [x28, 72]
	b	.L2353
	.p2align 3
.L2435:
	mov	w16, 0
	str	w16, [x28, 656]
	b	.L2717
.L2227:
	ldr	w0, [x0, 40]
	cmp	w0, 0
	sub	w0, w0, #22
	ccmp	w0, 1, 0, ne
	bls	.L2225
	str	wzr, [x28, 644]
.L2229:
	ldrb	w0, [x28, 56]
	lsl	w1, w0, 4
	sub	w0, w1, w0
	bl	__msecs_to_jiffies
	adrp	x1, jiffies
	ldr	x1, [x1, #:lo12:jiffies]
	add	x1, x1, x0
	ldr	x0, [x29, 112]
	bl	mod_timer
	b	.L2225
.L2222:
	ldr	x0, [x28, 184]
	mov	w6, 1
	mov	x5, x28
	bl	get_overlay_image
	b	.L2223
.L2216:
	ldr	w1, [x19, 40]
	mov	w2, 0
	ldr	x0, [x29, 144]
	bl	ebc_lut_update
	b	.L2217
.L2689:
	ldr	w0, [x28, 684]
	str	wzr, [x28, 644]
	cmp	w0, 0
	ble	.L2229
	ldr	x0, [x28, 96]
	adrp	x1, .LC139
	add	x1, x1, :lo12:.LC139
	bl	_dev_info
	b	.L2229
.L2692:
	ldr	x0, [x28, 208]
	str	wzr, [x28, 656]
	str	wzr, [x28, 668]
	ldr	x1, [x28, 144]
	ldrsw	x2, [x28, 28]
	ldr	x0, [x0, 16]
	bl	memcpy
	ldr	w3, [x19, 40]
	sub	w0, w3, #2
	sub	w1, w3, #6
	cmp	w0, 1
	mov	w6, w3
	cset	w0, ls
	cmp	w1, 5
	cset	w1, ls
	orr	w0, w0, w1
	cbz	w0, .L2280
	b	.L2694
.L2308:
	cbnz	w0, .L2641
.L2311:
	ldr	w0, [x28, 104]
	strb	w0, [x28, 56]
	b	.L2310
.L2697:
	ldr	w0, [x28, 660]
	cbz	w0, .L2311
.L2641:
	ldrb	w0, [x28, 104]
	lsr	w0, w0, 1
	strb	w0, [x28, 56]
	mov	w0, 2
	strb	w0, [x28, 752]
	ldr	w0, [x19, 40]
	sub	w0, w0, #12
	cmp	w0, 2
	bhi	.L2310
	b	.L2718
.L2257:
	ldr	x0, [x28, 96]
	adrp	x1, .LC146
	add	x1, x1, :lo12:.LC146
	bl	_dev_info
	ldr	w0, [x28, 52]
	cbz	w0, .L2260
	b	.L2259
	.p2align 3
.L2249:
	ldr	x1, [x19, 16]
	mov	x3, x28
	ldr	x0, [x28, 136]
	ldr	x2, [x28, 160]
	bl	refresh_new_image_auto
	b	.L2240
.L2713:
	ldr	w0, [x28, 52]
	cbz	w0, .L2249
	ldr	w0, [x28, 684]
	cmp	w0, 0
	bgt	.L2250
.L2252:
	add	x0, x29, 168
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x20, x0, :lo12:.LANCHOR1
	add	x20, x20, 304
	b	.L2251
	.p2align 3
.L2719:
	cbnz	x0, .L2260
	bl	schedule
.L2251:
	add	x1, x29, 168
	mov	w2, 1
	mov	x0, x20
	bl	prepare_to_wait_event
	ldr	w1, [x28, 52]
	cbnz	w1, .L2719
	b	.L2261
	.p2align 3
.L2639:
	ldr	x0, [x28, 208]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x28, 144]
	bl	memcpy
	b	.L2263
.L2399:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L2121
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .L2121
	b	.L2642
	.p2align 3
.L2712:
	ldr	x0, [x28, 208]
	ldrsw	x2, [x28, 28]
	ldr	x1, [x28, 144]
	ldr	x0, [x0, 16]
	bl	memcpy
	b	.L2288
.L2707:
	mov	w24, w1
	b	.L2426
.L2388:
	ldr	w0, [x28, 684]
	cmp	w0, 0
	ble	.L2389
	ldr	x0, [x28, 96]
	adrp	x1, .LC162
	add	x1, x1, :lo12:.LC162
	bl	_dev_info
	b	.L2389
.L2716:
	add	x0, x29, 168
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
.L2387:
	add	x1, x29, 168
	mov	w2, 1
	mov	x0, x19
	bl	prepare_to_wait_event
	ldr	w1, [x28, 52]
	cbz	w1, .L2385
	cbnz	x0, .L2384
	bl	schedule
	b	.L2387
.L2405:
	mov	x0, x19
	add	x1, x29, 168
	bl	finish_wait
	str	wzr, [x28, 88]
	b	.L2121
.L2385:
	mov	x0, x19
	add	x1, x29, 168
	bl	finish_wait
	b	.L2384
.L2250:
	ldr	x0, [x28, 96]
	adrp	x1, .LC146
	add	x1, x1, :lo12:.LC146
	bl	_dev_info
	ldr	w0, [x28, 52]
	cbz	w0, .L2260
	b	.L2252
	.size	ebc_thread, .-ebc_thread
	.align	2
	.p2align 3,,7
	.type	ebc_auto_tast_function, %function
ebc_auto_tast_function:
	stp	x29, x30, [sp, -112]!
	add	x29, sp, 0
	stp	x23, x24, [sp, 48]
	adrp	x24, .LANCHOR0
	stp	x25, x26, [sp, 64]
	mov	x23, 2
	ldr	x26, [x24, #:lo12:.LANCHOR0]
	stp	x21, x22, [sp, 32]
	adrp	x21, .LANCHOR1
	add	x21, x21, :lo12:.LANCHOR1
	stp	x19, x20, [sp, 16]
	stp	x27, x28, [sp, 80]
	add	x20, x21, 872
	add	x0, x26, 808
	adrp	x28, jiffies
	add	x21, x21, 352
	add	x19, x26, 40
	add	x27, x26, 232
	str	x0, [x29, 104]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x22, sp_el0
// 0 "" 2
#NO_APP
	b	.L2751
	.p2align 3
.L2723:
	cmp	w0, 4
	beq	.L2725
	cmp	w0, 5
	bne	.L2721
	ldr	w2, [x27, 72]
	mov	x0, x19
	mov	x1, x27
	sub	w2, w2, #1
	str	w2, [x27, 72]
	bl	flip
	add	x0, x24, :lo12:.LANCHOR0
	ldr	x0, [x0, 16]
	bl	wake_up_process
.L2731:
	mov	x0, x20
	bl	up
	bl	schedule
.L2751:
	mov	x0, x20
	bl	down
	mov	x0, x21
	bl	down
	str	x23, [x22, 32]
#APP
// 2171 "/home/lyx/rk3566-11-eink/kernel/drivers/gpu/drm/rockchip/ebc-dev/ebc_dev_y8.c" 1
	dmb ish
// 0 "" 2
#NO_APP
	ldr	w0, [x27, 240]
	cmp	w0, 3
	beq	.L2722
	bgt	.L2723
	cmp	w0, 1
	bne	.L2721
	ldr	w2, [x27, 72]
	mov	x1, x27
	mov	x0, x19
	sub	w2, w2, #1
	str	w2, [x27, 72]
	bl	flip
	add	x0, x24, :lo12:.LANCHOR0
	ldr	x0, [x0, 16]
	bl	wake_up_process
	ldr	w0, [x27, 72]
	cbz	w0, .L2731
	ldr	w0, [x19, 164]
	cbz	w0, .L2746
	ldrsw	x0, [x19, 72]
	mov	w4, 2
	ldp	x2, x1, [x27, 208]
	add	x0, x0, 22
	mov	x3, x27
	ldr	x0, [x27, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_part2
	b	.L2731
	.p2align 3
.L2722:
	ldr	w0, [x27, 60]
	str	wzr, [x27, 68]
	cbnz	w0, .L2739
	ldr	w0, [x27, 64]
	cbz	w0, .L2740
.L2739:
	mov	x1, x27
	mov	x0, x19
	bl	flip
	add	x0, x24, :lo12:.LANCHOR0
	ldr	x0, [x0, 16]
	bl	wake_up_process
	ldr	w0, [x19, 164]
	cbz	w0, .L2741
	ldrsw	x0, [x19, 72]
	mov	w5, 2
	ldp	x1, x2, [x27, 136]
	add	x0, x0, 22
	ldr	x3, [x27, 160]
	mov	x4, x27
	ldr	x0, [x27, x0, lsl 3]
	bl	get_auto_image2
	b	.L2731
	.p2align 3
.L2721:
	ldr	x0, [x27, 216]
	ldr	w0, [x0, 40]
	cmp	w0, 21
	beq	.L2760
	ldr	w2, [x27, 72]
	mov	x1, x27
	mov	x0, x19
	sub	w2, w2, #1
	str	w2, [x27, 72]
	bl	flip
	add	x0, x24, :lo12:.LANCHOR0
	ldr	x0, [x0, 16]
	bl	wake_up_process
	ldr	w4, [x27, 72]
	cbz	w4, .L2731
	ldr	w0, [x19, 164]
	cbz	w0, .L2750
	ldrsw	x0, [x19, 72]
	mov	w6, 2
	ldp	x2, x1, [x27, 208]
	add	x0, x0, 22
	ldrb	w3, [x26, 288]
	ldr	x5, [x26, 352]
	ldr	x0, [x27, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change2.isra.2
	b	.L2731
	.p2align 3
.L2725:
	ldr	w0, [x27, 76]
	cbz	w0, .L2727
	ldr	w0, [x27, 60]
	str	wzr, [x27, 68]
	str	wzr, [x27, 76]
	cbnz	w0, .L2728
	ldr	w0, [x27, 64]
	cbz	w0, .L2729
.L2728:
	mov	x1, x27
	mov	x0, x19
	bl	flip
	add	x0, x24, :lo12:.LANCHOR0
	ldr	x0, [x0, 16]
	bl	wake_up_process
	ldr	w0, [x19, 164]
	cbz	w0, .L2730
	ldrsw	x0, [x19, 72]
	mov	w6, 2
	ldp	x1, x2, [x27, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x27, 160]
	mov	x5, x27
	ldr	x0, [x27, x0, lsl 3]
	bl	get_overlay_image2
	b	.L2731
	.p2align 3
.L2741:
	ldrsw	x0, [x19, 72]
	mov	w5, 2
	ldp	x1, x2, [x27, 136]
	add	x0, x0, 22
	ldr	x3, [x27, 160]
	mov	x4, x27
	ldr	x0, [x27, x0, lsl 3]
	bl	get_auto_image
	b	.L2731
	.p2align 3
.L2727:
	mov	x0, x21
	ldr	w25, [x19, 72]
	bl	up
	ldr	w0, [x19, 164]
	cbz	w0, .L2735
	ldrsw	x0, [x19, 72]
	mov	x5, x27
	ldp	x1, x2, [x27, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x27, 160]
	ldr	x0, [x27, x0, lsl 3]
	bl	get_overlay_image_area2
.L2736:
	ldr	w1, [x19, 72]
	mov	w0, 1
	ldrsw	x2, [x27, 32]
	sub	w0, w0, w1
	add	x0, x27, x0, sxtw 3
	add	x1, x27, x1, sxtw 3
	ldr	x0, [x0, 176]
	ldr	x1, [x1, 176]
	bl	memcpy
	ldr	x0, [x19]
	cbz	x0, .L2752
	ldr	x1, [x0, 648]
	adrp	x2, dummy_dma_ops
	add	x2, x2, :lo12:dummy_dma_ops
	cmp	x1, 0
	csel	x1, x2, x1, eq
.L2737:
	ldr	x4, [x1, 88]
	cbz	x4, .L2731
	mov	w3, 1
	sub	w25, w3, w25
	sxtw	x25, w25
	ldrsw	x2, [x27, 32]
	add	x25, x25, x25, lsl 1
	add	x25, x19, x25, lsl 3
	ldr	x1, [x25, 32]
	blr	x4
	b	.L2731
	.p2align 3
.L2730:
	ldrsw	x0, [x19, 72]
	mov	w6, 2
	ldp	x1, x2, [x27, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x27, 160]
	mov	x5, x27
	ldr	x0, [x27, x0, lsl 3]
	bl	get_overlay_image
	b	.L2731
	.p2align 3
.L2760:
	ldr	w3, [x27, 728]
	mov	x1, x27
	ldr	w2, [x27, 740]
	mov	x0, x19
	add	w2, w2, w3
	str	w2, [x27, 740]
	bl	flip
	add	x0, x24, :lo12:.LANCHOR0
	ldr	x0, [x0, 16]
	bl	wake_up_process
	mov	x0, x27
	bl	is_full_refresh_done
	tst	w0, 255
	beq	.L2748
	mov	w0, 1
	str	w0, [x27, 744]
	b	.L2731
	.p2align 3
.L2746:
	ldrsw	x0, [x19, 72]
	mov	w4, 2
	ldp	x2, x1, [x27, 208]
	add	x0, x0, 22
	mov	x3, x27
	ldr	x0, [x27, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_part
	b	.L2731
	.p2align 3
.L2740:
	mov	x0, x21
	bl	up
	ldr	w0, [x27, 652]
	cbz	w0, .L2761
.L2742:
	ldr	w0, [x19, 164]
	cbz	w0, .L2743
	ldrsw	x0, [x19, 72]
	mov	w5, 1
	ldp	x1, x2, [x27, 136]
	add	x0, x0, 22
	ldr	x3, [x27, 160]
	mov	x4, x27
	ldr	x0, [x27, x0, lsl 3]
	bl	get_auto_image2
.L2744:
	mov	w0, 1
	str	w0, [x27, 68]
	ldr	x0, [x29, 104]
	ldr	x1, [x28, #:lo12:jiffies]
	add	x1, x1, 1
	bl	mod_timer
	b	.L2731
	.p2align 3
.L2750:
	ldrsw	x0, [x19, 72]
	mov	w6, 2
	ldp	x2, x1, [x27, 208]
	add	x0, x0, 22
	ldrb	w3, [x26, 288]
	ldr	x5, [x26, 352]
	ldr	x0, [x27, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change.isra.1
	b	.L2731
	.p2align 3
.L2729:
	mov	x0, x21
	bl	up
	ldr	w0, [x27, 652]
	cbz	w0, .L2762
.L2732:
	ldr	w0, [x19, 164]
	cbz	w0, .L2733
	ldrsw	x0, [x19, 72]
	mov	w6, 1
	ldp	x1, x2, [x27, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x27, 160]
	mov	x5, x27
	ldr	x0, [x27, x0, lsl 3]
	bl	get_overlay_image2
	b	.L2744
	.p2align 3
.L2735:
	ldrsw	x0, [x19, 72]
	mov	x5, x27
	ldp	x1, x2, [x27, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x27, 160]
	ldr	x0, [x27, x0, lsl 3]
	bl	get_overlay_image_area
	b	.L2736
	.p2align 3
.L2748:
	ldr	w0, [x19, 164]
	cbz	w0, .L2749
	ldrsw	x0, [x19, 72]
	mov	w4, 2
	ldp	x2, x1, [x27, 208]
	add	x0, x0, 22
	mov	x3, x27
	ldr	x0, [x27, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_full2
	b	.L2731
	.p2align 3
.L2743:
	ldrsw	x0, [x19, 72]
	mov	w5, 1
	ldp	x1, x2, [x27, 136]
	add	x0, x0, 22
	ldr	x3, [x27, 160]
	mov	x4, x27
	ldr	x0, [x27, x0, lsl 3]
	bl	get_auto_image
	b	.L2744
	.p2align 3
.L2733:
	ldrsw	x0, [x19, 72]
	mov	w6, 1
	ldp	x1, x2, [x27, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x27, 160]
	mov	x5, x27
	ldr	x0, [x27, x0, lsl 3]
	bl	get_overlay_image
	b	.L2744
	.p2align 3
.L2749:
	ldrsw	x0, [x19, 72]
	mov	w4, 2
	ldp	x2, x1, [x27, 208]
	add	x0, x0, 22
	mov	x3, x27
	ldr	x0, [x27, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_full
	b	.L2731
	.p2align 3
.L2761:
	ldr	x1, [x27, 216]
	mov	x3, x27
	ldr	x0, [x27, 136]
	ldr	x2, [x27, 160]
	ldr	x1, [x1, 16]
	bl	refresh_new_image_auto
	b	.L2742
.L2752:
	adrp	x1, dummy_dma_ops
	add	x1, x1, :lo12:dummy_dma_ops
	b	.L2737
.L2762:
	ldr	x3, [x27, 216]
	mov	x6, x27
	ldr	x2, [x27, 16]
	ldp	x0, x1, [x27, 136]
	ldp	x4, x5, [x27, 160]
	ldr	x3, [x3, 16]
	bl	refresh_new_image
	b	.L2732
	.size	ebc_auto_tast_function, .-ebc_auto_tast_function
	.data
	.align	3
	.set	.LANCHOR1,. + 0
	.type	ebc_driver, %object
	.size	ebc_driver, 224
ebc_driver:
	.xword	ebc_probe
	.xword	ebc_remove
	.zero	24
	.xword	.LC164
	.zero	32
	.xword	ebc_match
	.zero	64
	.xword	ebc_pm
	.zero	48
	.zero	16
	.type	ebc_misc, %object
	.size	ebc_misc, 80
ebc_misc:
	.word	243
	.zero	4
	.xword	.LC103
	.xword	ebc_ops
	.zero	56
	.type	ebc_thread_wq, %object
	.size	ebc_thread_wq, 24
ebc_thread_wq:
	.word	0
	.zero	4
	.xword	ebc_thread_wq+8
	.xword	ebc_thread_wq+8
	.type	ebc_auto_assist_thread_sem, %object
	.size	ebc_auto_assist_thread_sem, 24
ebc_auto_assist_thread_sem:
	.word	0
	.word	1
	.xword	ebc_auto_assist_thread_sem+8
	.xword	ebc_auto_assist_thread_sem+8
	.type	ebc_assist_finished_flag_sem, %object
	.size	ebc_assist_finished_flag_sem, 24
ebc_assist_finished_flag_sem:
	.word	0
	.word	1
	.xword	ebc_assist_finished_flag_sem+8
	.xword	ebc_assist_finished_flag_sem+8
	.type	waveform_misc, %object
	.size	waveform_misc, 80
waveform_misc:
	.word	244
	.zero	4
	.xword	.LC178
	.xword	waveform_ops
	.zero	56
	.type	dev_attr_waveform_version, %object
	.size	dev_attr_waveform_version, 32
dev_attr_waveform_version:
	.xword	.LC177
	.hword	292
	.zero	6
	.xword	waveform_version_read
	.xword	0
	.type	dev_attr_pmic_name, %object
	.size	dev_attr_pmic_name, 32
dev_attr_pmic_name:
	.xword	.LC176
	.hword	292
	.zero	6
	.xword	pmic_name_read
	.xword	0
	.type	dev_attr_pmic_temp, %object
	.size	dev_attr_pmic_temp, 32
dev_attr_pmic_temp:
	.xword	.LC175
	.hword	292
	.zero	6
	.xword	pmic_temp_read
	.xword	0
	.type	dev_attr_pmic_vcom, %object
	.size	dev_attr_pmic_vcom, 32
dev_attr_pmic_vcom:
	.xword	.LC174
	.hword	420
	.zero	6
	.xword	pmic_vcom_read
	.xword	pmic_vcom_write
	.type	dev_attr_ebc_version, %object
	.size	dev_attr_ebc_version, 32
dev_attr_ebc_version:
	.xword	.LC172
	.hword	292
	.zero	6
	.xword	ebc_version_read
	.xword	0
	.type	dev_attr_ebc_state, %object
	.size	dev_attr_ebc_state, 32
dev_attr_ebc_state:
	.xword	.LC171
	.hword	292
	.zero	6
	.xword	ebc_state_read
	.xword	0
	.type	dev_attr_ebc_buf_state, %object
	.size	dev_attr_ebc_buf_state, 32
dev_attr_ebc_buf_state:
	.xword	.LC170
	.hword	292
	.zero	6
	.xword	ebc_buf_state_read
	.xword	0
	.type	dev_attr_auto_frame_state, %object
	.size	dev_attr_auto_frame_state, 32
dev_attr_auto_frame_state:
	.xword	.LC169
	.hword	292
	.zero	6
	.xword	auto_frame_state_read
	.xword	0
	.type	dev_attr_ebc_debug_level, %object
	.size	dev_attr_ebc_debug_level, 32
dev_attr_ebc_debug_level:
	.xword	.LC173
	.hword	420
	.zero	6
	.xword	ebc_debug_level_read
	.xword	ebc_debug_level_write
	.type	dev_attr_wf_data, %object
	.size	dev_attr_wf_data, 32
dev_attr_wf_data:
	.xword	.LC168
	.hword	128
	.zero	6
	.xword	0
	.xword	wf_data_write
	.type	dev_attr_overlay_wf_data, %object
	.size	dev_attr_overlay_wf_data, 32
dev_attr_overlay_wf_data:
	.xword	.LC167
	.hword	128
	.zero	6
	.xword	0
	.xword	overlay_wf_data_write
	.type	dev_attr_ori_wf_data, %object
	.size	dev_attr_ori_wf_data, 32
dev_attr_ori_wf_data:
	.xword	.LC166
	.hword	128
	.zero	6
	.xword	0
	.xword	ori_wf_data_write
	.type	dev_attr_record_pix_wf, %object
	.size	dev_attr_record_pix_wf, 32
dev_attr_record_pix_wf:
	.xword	.LC165
	.hword	128
	.zero	6
	.xword	0
	.xword	record_pix_wf_write
	.type	ebc_auto_thread_sem, %object
	.size	ebc_auto_thread_sem, 24
ebc_auto_thread_sem:
	.word	0
	.word	1
	.xword	ebc_auto_thread_sem+8
	.xword	ebc_auto_thread_sem+8
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	global_ebc, %object
	.size	global_ebc, 8
global_ebc:
	.zero	8
	.type	ebc_auto_task, %object
	.size	ebc_auto_task, 8
ebc_auto_task:
	.zero	8
	.type	ebc_auto_assist_task, %object
	.size	ebc_auto_assist_task, 8
ebc_auto_assist_task:
	.zero	8
	.type	ebc_task, %object
	.size	ebc_task, 8
ebc_task:
	.zero	8
	.section	.rodata
	.align	3
	.set	.LANCHOR2,. + 0
	.type	__func__.43100, %object
	.size	__func__.43100, 11
__func__.43100:
	.string	"ebc_io_ctl"
	.align	3
	.set	.LANCHOR3,. + 0
	.type	__func__.43600, %object
	.size	__func__.43600, 19
__func__.43600:
	.string	"ebc_lut_table_init"
	.zero	5
	.type	__func__.43527, %object
	.size	__func__.43527, 18
__func__.43527:
	.string	"ori_wf_data_write"
	.zero	6
	.type	__func__.42592, %object
	.size	__func__.42592, 16
__func__.42592:
	.string	"ebc_frame_start"
	.type	__func__.42579, %object
	.size	__func__.42579, 27
__func__.42579:
	.string	"ebc_overlay_bg_frame_start"
	.zero	5
	.type	ebc_match, %object
	.size	ebc_match, 400
ebc_match:
	.zero	64
	.string	"rockchip,ebc-dev"
	.zero	111
	.zero	8
	.zero	200
	.type	ebc_pm, %object
	.size	ebc_pm, 184
ebc_pm:
	.zero	16
	.xword	ebc_suspend
	.xword	ebc_resume
	.zero	152
	.type	waveform_ops, %object
	.size	waveform_ops, 288
waveform_ops:
	.xword	0
	.zero	80
	.xword	waveform_mmap
	.zero	8
	.xword	waveform_open
	.zero	176
	.type	ebc_ops, %object
	.size	ebc_ops, 288
ebc_ops:
	.xword	0
	.zero	64
	.xword	ebc_io_ctl
	.xword	ebc_io_ctl
	.xword	ebc_mmap
	.zero	8
	.xword	ebc_open
	.zero	8
	.xword	ebc_release
	.zero	160
	.section	.discard.addressable,"aw",@progbits
	.align	3
	.type	__addressable_ebc_init4742, %object
	.size	__addressable_ebc_init4742, 8
__addressable_ebc_init4742:
	.xword	ebc_init
	.section	.exitcall.exit,"aw",@progbits
	.align	3
	.type	__exitcall_ebc_exit, %object
	.size	__exitcall_ebc_exit, 8
__exitcall_ebc_exit:
	.xword	ebc_exit
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"device resume\n"
	.zero	1
.LC1:
	.string	"record pix pos wf: [%d, %d]: [%s]\n"
	.zero	5
.LC2:
	.string	"record pix pos wf: [%d, %d]: [%02x --> %02x]\n"
	.zero	2
.LC3:
	.string	"ebc_overlay_enable_timeout\n"
	.zero	4
.LC4:
	.string	"ebc_frame_control_timeout, overlay_bg_update=1\n"
.LC5:
	.string	"ebc hw power on res:%d\n"
.LC6:
	.string	"ebc hw power off res:%d\n"
	.zero	7
.LC7:
	.string	"device suspend\n"
.LC8:
	.string	"%s: argp NULL\n"
	.zero	1
.LC9:
	.string	"enable bg control\n"
	.zero	5
.LC10:
	.string	"disable bg control\n"
	.zero	4
.LC11:
	.string	"enable ebc overlay, you can use osd buf to show something over the system display\n"
	.zero	5
.LC12:
	.string	"disable ebc overlay\n"
	.zero	3
.LC13:
	.string	"EBC_GET_BUFFER_INFO failed\n"
	.zero	4
.LC14:
	.string	"EBC_SET_DIFF_PERCENT = %d\n"
	.zero	5
.LC15:
	.string	"EBC_FB_BLANK\n"
	.zero	2
.LC16:
	.string	"EBC_FB_UNBLANK\n"
.LC17:
	.string	"EBC_ENABLE_REPAIR = %d\n"
.LC18:
	.string	"EBC_BALANCE_CTL = %d\n"
	.zero	2
.LC19:
	.string	"EBC_SET_FULL_REFRESH_WIDTH = %d\n"
	.zero	7
.LC20:
	.string	"EBC_SET_FULL_REFRESH_TYPE = %d\n"
.LC21:
	.string	"EBC_SET_FORCE_TEMPERATURE = %d\n"
.LC22:
	.string	"EBC_ENABLE_WAVEFORM_FIX = %d\n"
	.zero	2
.LC23:
	.string	"EBC_SET_REGAL_TYPE = %d\n"
	.zero	7
.LC24:
	.string	"EBC_FORCE_FULL_USE_REGAL = %d\n"
	.zero	1
.LC25:
	.string	"%s: unknown cmd\n"
	.zero	7
.LC26:
	.string	"overlay frame done\n"
	.zero	4
.LC27:
	.string	"auto task break\n"
	.zero	7
.LC28:
	.string	"auto frame done\n"
	.zero	7
.LC29:
	.string	"part task break\n"
	.zero	7
.LC30:
	.string	"frame done\n"
	.zero	4
.LC31:
	.string	"too large resolution, not support\n"
	.zero	5
.LC32:
	.string	"memory-region"
	.zero	2
.LC33:
	.string	"Couldn't address to resource for reserved memory\n"
	.zero	6
.LC34:
	.string	"reserved memory not enough, need 0x%x\n"
	.zero	1
.LC35:
	.string	"Couldn't remap for reserved memory\n"
	.zero	4
.LC36:
	.string	"waveform-region"
.LC37:
	.string	"wf,mode_table"
	.zero	2
.LC38:
	.string	"%s:%d: failed to get mem from reserved\n"
.LC39:
	.string	"Failed to read waveform from mem, we use waveform file from kernel file instead\n"
	.zero	7
.LC40:
	.string	"Failed to read waveform file from kernel, no waveform!!!\n"
	.zero	6
.LC41:
	.string	"force temperature = %d\n"
.LC42:
	.string	"temperature = %d, out of range0~50 ,use 0 \n"
	.zero	4
.LC43:
	.string	"temperature = %d, out of range0~50 ,use 50 \n"
	.zero	3
.LC44:
	.string	"ebc_pmic_read_temp failed, ret = %d, use 25 \n"
	.zero	2
.LC45:
	.string	"lut update use temperature_fix = %d, temperature = %d\n"
	.zero	1
.LC46:
	.string	"lut update use temperature = %d, temperature_fix = %d\n"
	.zero	1
.LC47:
	.string	"get lut data failed\n"
	.zero	3
.LC48:
	.string	"%d,%d%n"
.LC49:
	.string	"603893"
	.zero	1
.LC50:
	.string	"lutdata: %d frames\n"
	.zero	4
.LC51:
	.string	"[%d-->%d]: \n"
	.zero	3
.LC52:
	.string	"\001c\0017%d, "
	.zero	7
.LC53:
	.string	"malloc wf_table buffer failed\n"
	.zero	1
.LC54:
	.string	"603893 %d %d"
	.zero	3
.LC55:
	.string	"%s: wf mode %d on temp %d\n"
	.zero	5
.LC56:
	.string	"%s: err code\n"
	.zero	2
.LC57:
	.string	"%s: err lut_type or temp\n"
	.zero	6
.LC58:
	.string	"invalid value = %s\n"
	.zero	4
.LC59:
	.string	"%d\n"
	.zero	4
.LC60:
	.string	"8.11_y8"
.LC61:
	.string	"%s\n"
	.zero	4
.LC62:
	.string	"set vcom value failed\n"
	.zero	1
.LC63:
	.string	"rockchip ebc driver %s probe\n"
	.zero	2
.LC64:
	.string	"cpu-code"
	.zero	7
.LC65:
	.string	"no chip info\n"
	.zero	2
.LC66:
	.string	"read chip info failed\n"
	.zero	1
.LC67:
	.string	"chip err\n"
	.zero	6
.LC68:
	.string	"ebc_tcon"
	.zero	7
.LC69:
	.string	"not find ebc tcon\n"
	.zero	5
.LC70:
	.string	"pmic"
	.zero	3
.LC71:
	.string	"Get PMIC device failed\n"
.LC72:
	.string	"wrong pmics number\n"
	.zero	4
.LC73:
	.string	"not find pmic node\n"
	.zero	4
.LC74:
	.string	"not find pmic i2c client\n"
	.zero	6
.LC75:
	.string	"use pmic%d\n"
	.zero	4
.LC76:
	.string	"vcom"
	.zero	3
.LC77:
	.string	"Failed to get vcom regulator\n"
	.zero	2
.LC78:
	.string	"thermal-zone"
	.zero	3
.LC79:
	.string	"Failed to get thermal zone name\n"
	.zero	7
.LC80:
	.string	"Failed to get thermal device\n"
	.zero	2
.LC81:
	.string	"ebc-repair-enable"
	.zero	6
.LC82:
	.string	"ebc-dmc-notify-enable"
	.zero	2
.LC83:
	.string	"panel,width"
	.zero	4
.LC84:
	.string	"panel,panel_color"
	.zero	6
.LC85:
	.string	"panel,mirror"
	.zero	3
.LC86:
	.string	"panel,width-mm"
	.zero	1
.LC87:
	.string	"panel,height-mm"
.LC88:
	.string	"panel,disable_logo"
	.zero	5
.LC89:
	.string	"panel,rearrange"
.LC90:
	.string	"panel,sdoe_mode"
.LC91:
	.string	"panel,sdce_width"
	.zero	7
.LC92:
	.string	"panel,gds"
	.zero	6
.LC93:
	.string	"panel,gdl"
	.zero	6
.LC94:
	.string	"pmic-early-power-on"
	.zero	4
.LC95:
	.string	"failed to probe panel: %d\n"
	.zero	5
.LC96:
	.string	"buffer manage init failed\n"
	.zero	5
.LC97:
	.string	"lut table init failed\n"
	.zero	1
.LC98:
	.string	"ebc_task"
	.zero	7
.LC99:
	.string	"failed to create ebc_task thread\n"
	.zero	6
.LC100:
	.string	"ebc_taskup"
	.zero	5
.LC101:
	.string	"failed to create ebc_taskup thread\n"
	.zero	4
.LC102:
	.string	"ebc_thread"
	.zero	5
.LC103:
	.string	"ebc"
	.zero	4
.LC104:
	.string	"ulogo_addr="
	.zero	4
.LC105:
	.string	"klogo_addr="
	.zero	4
.LC106:
	.string	"ulogo_addr=0x%x"
.LC107:
	.string	"have ulogo display, ulogo addr = 0x%x\n"
	.zero	1
.LC108:
	.string	"malloc ulogo buffer failed\n"
	.zero	4
.LC109:
	.string	"klogo_addr=0x%x"
.LC110:
	.string	"need show klogo, klogo addr = 0x%x\n"
	.zero	4
.LC111:
	.string	"malloc klogo buffer failed\n"
	.zero	4
.LC112:
	.string	"no uboot logo, panel init\n"
	.zero	5
.LC113:
	.string	"ebc_dev_reset"
	.zero	2
.LC114:
	.string	"ebc_dev_logo"
	.zero	3
.LC115:
	.string	"rockchip ebc driver %s probe success\n"
	.zero	2
.LC116:
	.string	"panel,height"
	.zero	3
.LC117:
	.string	"panel,vir_width"
.LC118:
	.string	"panel,vir_height"
	.zero	7
.LC119:
	.string	"panel,sdck"
	.zero	5
.LC120:
	.string	"panel,lsl"
	.zero	6
.LC121:
	.string	"panel,lbl"
	.zero	6
.LC122:
	.string	"panel,ldl"
	.zero	6
.LC123:
	.string	"panel,lel"
	.zero	6
.LC124:
	.string	"panel,gdck-sta"
	.zero	1
.LC125:
	.string	"panel,lgonl"
	.zero	4
.LC126:
	.string	"panel,fsl"
	.zero	6
.LC127:
	.string	"panel,fbl"
	.zero	6
.LC128:
	.string	"panel,fdl"
	.zero	6
.LC129:
	.string	"panel,fel"
	.zero	6
.LC130:
	.string	"panel,panel_16bit"
	.zero	6
.LC131:
	.string	"failed to run ebc thread\n"
	.zero	6
.LC132:
	.string	"task init failed\n"
	.zero	6
.LC133:
	.string	"0\n"
	.zero	5
.LC134:
	.string	"%s: overlay no need to update\n"
	.zero	1
.LC135:
	.string	"%s: auto no need to update\n"
	.zero	4
.LC136:
	.string	"ebc suspend, drop osd buf\n"
	.zero	5
.LC137:
	.string	"full win and prev mode not overlay, drop this osd buf\n"
	.zero	1
.LC138:
	.string	"break from part work, frame left = %d\n"
	.zero	1
.LC139:
	.string	"control bg update under overlay mode, overlay_bg_update=0\n"
	.zero	5
.LC140:
	.string	"break from fast mode, process it\n"
	.zero	6
.LC141:
	.string	"overlay mode start, frame_total=%d, bw_frame = %d\n"
	.zero	5
.LC142:
	.string	"frame start under overlay, mode = %d, framecount = %d\n"
	.zero	1
.LC143:
	.string	"%s: overlay bg no need to update, overlay_bg_update=1\n"
	.zero	1
.LC144:
	.string	"mode change, force update lut, mode = %d, framecount = %d\n"
	.zero	5
.LC145:
	.string	"update frame under overlay, mode = %d, framecount = %d\n"
.LC146:
	.string	"ebc is busy now, waiting prev mode end...\n"
	.zero	5
.LC147:
	.string	"prev refresh mode end\n"
	.zero	1
.LC148:
	.string	"auto mode start, frame_total=%d\n"
	.zero	7
.LC149:
	.string	"last frame not complete, left = %d, change to force full\n"
	.zero	6
.LC150:
	.string	"check_part_mode==0, no need refresh\n"
	.zero	3
.LC151:
	.string	"check difference is 0, no need refresh\n"
.LC152:
	.string	"change from fast mode\n"
	.zero	1
.LC153:
	.string	"frame start, mode = %d, framecount = %d vs %d\n"
	.zero	1
.LC154:
	.string	"update repair buf\n"
	.zero	5
.LC155:
	.string	"waiting frame done\n"
	.zero	4
.LC156:
	.string	"----update repair buf timeout----\n"
	.zero	5
.LC157:
	.string	"break from part work, do something before turn to overlay work\n"
.LC158:
	.string	"no buffer or next mode change, do repair..........\n"
	.zero	4
.LC159:
	.string	"next mode change, do repair..........\n"
	.zero	1
.LC160:
	.string	"no buffer, do last ghost remove..........\n"
	.zero	5
.LC161:
	.string	"frame start, mode = %d, framecount = %d\n"
	.zero	7
.LC162:
	.string	"ghost remove break, frame_left %d\n"
	.zero	5
.LC163:
	.string	"ebc buffer mode %d error!!!\n"
	.zero	3
.LC164:
	.string	"ebc-dev"
.LC165:
	.string	"record_pix_wf"
	.zero	2
.LC166:
	.string	"ori_wf_data"
	.zero	4
.LC167:
	.string	"overlay_wf_data"
.LC168:
	.string	"wf_data"
.LC169:
	.string	"auto_frame_state"
	.zero	7
.LC170:
	.string	"ebc_buf_state"
	.zero	2
.LC171:
	.string	"ebc_state"
	.zero	6
.LC172:
	.string	"ebc_version"
	.zero	4
.LC173:
	.string	"ebc_debug_level"
.LC174:
	.string	"pmic_vcom"
	.zero	6
.LC175:
	.string	"pmic_temp"
	.zero	6
.LC176:
	.string	"pmic_name"
	.zero	6
.LC177:
	.string	"waveform_version"
	.zero	7
.LC178:
	.string	"waveform"
	.ident	"GCC: (Linaro GCC 6.3-2017.05) 6.3.1 20170404"
	.section	.note.GNU-stack,"",@progbits

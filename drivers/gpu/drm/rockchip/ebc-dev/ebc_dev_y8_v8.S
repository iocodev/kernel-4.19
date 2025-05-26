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
	stp	x29, x30, [sp, -128]!
	adrp	x6, .LANCHOR0
	add	x29, sp, 0
	stp	x25, x26, [sp, 64]
	ldr	x26, [x6, #:lo12:.LANCHOR0]
	str	x0, [x29, 104]
	add	x26, x26, 40
	ldr	x0, [x5, 232]
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x27, x28, [sp, 80]
	stp	x23, x24, [sp, 48]
	ldr	x6, [x5, 216]
	ldr	w7, [x26, 156]
	str	w7, [x29, 124]
	ldp	w7, w24, [x0, 48]
	ldr	w22, [x6, 40]
	ldp	w6, w28, [x0, 56]
	cmp	w7, 0
	ldr	w19, [x5, 84]
	add	w27, w7, 7
	csel	w27, w27, w7, lt
	add	w21, w6, 7
	cmp	w6, 0
	ldr	w0, [x5, 80]
	csel	w21, w21, w6, lt
	cmp	w19, 0
	add	w6, w19, 7
	asr	w21, w21, 3
	csel	w6, w6, w19, lt
	add	w21, w21, 1
	asr	w7, w6, 3
	str	w7, [x29, 120]
	cmp	w21, w7
	sub	w6, w7, #1
	csel	w21, w6, w21, ge
	cmp	w28, w0
	sub	w0, w0, #1
	csel	w28, w0, w28, ge
	cmp	w28, w24
	blt	.L1
	asr	w27, w27, 3
	mov	w23, 1
	lsl	w0, w27, 1
	str	w0, [x29, 112]
	lsl	w0, w27, 3
	str	w0, [x29, 116]
	ldr	w0, [x29, 124]
	sub	w22, w22, #7
	mul	w20, w24, w7
	mov	w30, w23
	cbz	w0, .L6
	.p2align 2
.L50:
	ldp	w0, w15, [x26, 76]
	sub	w15, w15, #1
	sub	w15, w15, w24
	mul	w15, w15, w0
	ldr	x0, [x29, 104]
	lsr	w15, w15, 2
	add	x15, x0, x15
.L7:
	mul	w19, w24, w19
	mov	w10, w27
	cmp	w21, w27
	ldp	w11, w14, [x29, 112]
	sxtw	x19, w19
	blt	.L21
	.p2align 2
.L20:
	sbfiz	x0, x10, 3, 32
	cmp	w22, 4
	add	x0, x0, x20, sxtw 3
	ldr	x8, [x1, x0]
	ldr	x7, [x2, x0]
	bhi	.L10
	and	x8, x8, -506381209866536712
	and	x7, x7, -506381209866536712
.L10:
	cmp	x7, x8
	beq	.L11
	add	x9, x19, x14, sxtw
	ldrb	w13, [x15, w11, sxtw]
	eor	x6, x7, x8
	str	w23, [x5, 60]
	and	x0, x6, 255
	add	x12, x15, x11, sxtw
	cmp	x0, 0
	ldrb	w0, [x3, x9]
	add	x16, x4, x9
	ccmp	w0, 0, 0, ne
	add	x0, x3, x9
	bne	.L12
	ldrb	w17, [x4, x9]
	ubfx	x25, x8, 3, 5
	add	x17, x5, x17, lsl 3
	ldr	x18, [x17, 120]
	lsl	x17, x7, 2
	and	x17, x17, 992
	orr	x17, x17, x25
	ldrb	w17, [x18, x17]
	strb	w23, [x3, x9]
	orr	w13, w17, w13
.L12:
	ldrb	w9, [x0, 1]
	tst	x6, 65280
	ccmp	w9, 0, 0, ne
	bne	.L13
	ldrb	w9, [x16, 1]
	ubfx	x18, x8, 11, 5
	add	x9, x5, x9, lsl 3
	ldr	x17, [x9, 120]
	lsr	x9, x7, 6
	and	x9, x9, 992
	orr	x9, x9, x18
	ldrb	w9, [x17, x9]
	strb	w30, [x0, 1]
	orr	w13, w13, w9, lsl 2
	and	w13, w13, 255
.L13:
	ldrb	w9, [x0, 2]
	tst	x6, 16711680
	ccmp	w9, 0, 0, ne
	bne	.L14
	ldrb	w9, [x16, 2]
	ubfx	x18, x8, 19, 5
	add	x9, x5, x9, lsl 3
	ldr	x17, [x9, 120]
	lsr	x9, x7, 14
	and	x9, x9, 992
	orr	x9, x9, x18
	ldrb	w9, [x17, x9]
	strb	w30, [x0, 2]
	orr	w13, w13, w9, lsl 4
	and	w13, w13, 255
.L14:
	ldrb	w9, [x0, 3]
	tst	x6, 4278190080
	ccmp	w9, 0, 0, ne
	bne	.L15
	ldrb	w9, [x16, 3]
	lsr	w18, w8, 27
	add	x9, x5, x9, lsl 3
	ldr	x17, [x9, 120]
	lsr	x9, x7, 22
	and	x9, x9, 992
	orr	x9, x9, x18
	ldrb	w9, [x17, x9]
	strb	w30, [x0, 3]
	orr	w13, w13, w9, lsl 6
	and	w13, w13, 255
.L15:
	strb	w13, [x12]
	tst	x6, 1095216660480
	ldrb	w9, [x12, 1]
	ldrb	w13, [x0, 4]
	ccmp	w13, 0, 0, ne
	bne	.L16
	ldrb	w13, [x16, 4]
	ubfx	x18, x8, 35, 5
	add	x13, x5, x13, lsl 3
	ldr	x17, [x13, 120]
	lsr	x13, x7, 30
	and	x13, x13, 992
	orr	x13, x13, x18
	ldrb	w13, [x17, x13]
	strb	w30, [x0, 4]
	orr	w9, w13, w9
.L16:
	ldrb	w13, [x0, 5]
	tst	x6, 280375465082880
	ccmp	w13, 0, 0, ne
	bne	.L17
	ldrb	w13, [x16, 5]
	ubfx	x18, x8, 43, 5
	add	x13, x5, x13, lsl 3
	ldr	x17, [x13, 120]
	lsr	x13, x7, 38
	and	x13, x13, 992
	orr	x13, x13, x18
	ldrb	w13, [x17, x13]
	strb	w30, [x0, 5]
	orr	w9, w9, w13, lsl 2
	and	w9, w9, 255
.L17:
	ldrb	w13, [x0, 6]
	tst	x6, 71776119061217280
	ccmp	w13, 0, 0, ne
	bne	.L18
	ldrb	w13, [x16, 6]
	ubfx	x18, x8, 51, 5
	add	x13, x5, x13, lsl 3
	ldr	x17, [x13, 120]
	lsr	x13, x7, 46
	and	x13, x13, 992
	orr	x13, x13, x18
	ldrb	w13, [x17, x13]
	strb	w30, [x0, 6]
	orr	w9, w9, w13, lsl 4
	and	w9, w9, 255
.L18:
	tst	x6, -72057594037927936
	ldrb	w6, [x0, 7]
	ccmp	w6, 0, 0, ne
	bne	.L19
	ldrb	w6, [x16, 7]
	lsr	x7, x7, 54
	and	x7, x7, 992
	add	x6, x5, x6, lsl 3
	ldr	x6, [x6, 120]
	add	x8, x6, x8, lsr 59
	ldrb	w6, [x8, x7]
	strb	w30, [x0, 7]
	orr	w9, w9, w6, lsl 6
	and	w9, w9, 255
.L19:
	strb	w9, [x12, 1]
.L11:
	add	w10, w10, 1
	add	w11, w11, 2
	add	w14, w14, 8
	cmp	w21, w10
	bge	.L20
.L21:
	ldr	w0, [x29, 120]
	add	w24, w24, 1
	cmp	w28, w24
	add	w20, w20, w0
	blt	.L1
	ldr	w0, [x29, 124]
	ldr	w19, [x5, 84]
	cbnz	w0, .L50
.L6:
	ldr	w15, [x26, 76]
	ldr	x0, [x29, 104]
	mul	w15, w24, w15
	lsr	w15, w15, 2
	add	x15, x0, x15
	b	.L7
.L1:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 128
	ret
	.size	get_overlay_image_area, .-get_overlay_image_area
	.align	2
	.p2align 3,,7
	.type	get_auto_image, %function
get_auto_image:
	stp	x29, x30, [sp, -64]!
	adrp	x6, .LANCHOR0
	cmp	w5, 2
	add	x29, sp, 0
	ldr	x18, [x6, #:lo12:.LANCHOR0]
	ldr	x6, [x4, 216]
	add	x18, x18, 40
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	add	x20, x4, 60
	str	x23, [sp, 48]
	ldrb	w13, [x4, 56]
	ldr	w15, [x6, 40]
	ldp	w6, w23, [x18, 76]
	ldr	w19, [x18, 156]
	lsr	w14, w6, 3
	beq	.L106
	cmp	w5, 3
	mov	w30, 0
	beq	.L107
.L55:
	cmp	w30, w23
	bge	.L80
	sub	w17, w14, #1
	sub	w15, w15, #7
	add	x17, x17, 1
	mov	w8, 0
	lsl	x17, x17, 3
	cbz	w19, .L56
	.p2align 2
.L116:
	ldr	w10, [x18, 80]
	sub	w10, w10, #1
	sub	w10, w10, w30
	mul	w10, w10, w6
	lsr	w10, w10, 2
	add	x10, x0, x10
.L59:
	add	x6, x3, 8
	add	x10, x10, 2
	mov	x9, 0
	cbz	w14, .L58
	.p2align 2
.L79:
	ldr	x7, [x1, x9, lsl 3]
	cmp	w15, 4
	ldr	x5, [x2, x9, lsl 3]
	bhi	.L60
	and	x7, x7, -506381209866536712
	and	x5, x5, -506381209866536712
.L60:
	cmp	x5, x7
	beq	.L61
	eor	x8, x5, x7
	mov	w11, 0
	and	x12, x8, 255
	cbz	x12, .L62
	ldrb	w12, [x6, -8]
	lsl	x11, x5, 2
	and	x21, x11, 992
	ldr	x22, [x4, 120]
	ubfx	x11, x7, 3, 5
	orr	x11, x21, x11
	lsl	w21, w12, 10
	add	x11, x22, x11
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w11, [x11, w21, sxtw]
	beq	.L108
.L63:
	strb	w12, [x6, -8]
.L62:
	tst	x8, 65280
	beq	.L64
	ldrb	w12, [x6, -7]
	lsr	x21, x5, 6
	and	x22, x21, 992
	ldr	x16, [x4, 120]
	ubfx	x21, x7, 11, 5
	orr	x21, x22, x21
	lsl	w22, w12, 10
	add	x21, x16, x21
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w21, [x21, w22, sxtw]
	orr	w11, w11, w21, lsl 2
	and	w11, w11, 255
	beq	.L109
.L65:
	strb	w12, [x6, -7]
.L64:
	tst	x8, 16711680
	beq	.L66
	ldrb	w12, [x6, -6]
	lsr	x21, x5, 14
	and	x22, x21, 992
	ldr	x16, [x4, 120]
	ubfx	x21, x7, 19, 5
	orr	x21, x22, x21
	lsl	w22, w12, 10
	add	x21, x16, x21
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w21, [x21, w22, sxtw]
	orr	w11, w11, w21, lsl 4
	and	w11, w11, 255
	beq	.L110
.L67:
	strb	w12, [x6, -6]
.L66:
	tst	x8, 4278190080
	beq	.L68
	ldrb	w12, [x6, -5]
	lsr	x21, x5, 22
	and	x22, x21, 992
	ldr	x16, [x4, 120]
	lsr	w21, w7, 27
	orr	x21, x22, x21
	lsl	w22, w12, 10
	add	x21, x16, x21
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w21, [x21, w22, sxtw]
	orr	w11, w11, w21, lsl 6
	and	w11, w11, 255
	beq	.L111
.L69:
	strb	w12, [x6, -5]
.L68:
	strb	w11, [x10, -2]
	tst	x8, 1095216660480
	mov	w11, 0
	beq	.L70
	ldrb	w12, [x6, -4]
	lsr	x11, x5, 30
	and	x21, x11, 992
	ldr	x22, [x4, 120]
	ubfx	x11, x7, 35, 5
	orr	x11, x21, x11
	lsl	w21, w12, 10
	add	x11, x22, x11
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w11, [x11, w21, sxtw]
	beq	.L112
.L71:
	strb	w12, [x6, -4]
.L70:
	tst	x8, 280375465082880
	beq	.L72
	ldrb	w12, [x6, -3]
	lsr	x21, x5, 38
	and	x22, x21, 992
	ldr	x16, [x4, 120]
	ubfx	x21, x7, 43, 5
	orr	x21, x22, x21
	lsl	w22, w12, 10
	add	x21, x16, x21
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w21, [x21, w22, sxtw]
	orr	w11, w11, w21, lsl 2
	and	w11, w11, 255
	beq	.L113
.L73:
	strb	w12, [x6, -3]
.L72:
	tst	x8, 71776119061217280
	beq	.L74
	ldrb	w12, [x6, -2]
	lsr	x21, x5, 46
	and	x22, x21, 992
	ldr	x16, [x4, 120]
	ubfx	x21, x7, 51, 5
	orr	x21, x22, x21
	lsl	w22, w12, 10
	add	x21, x16, x21
	add	w12, w12, 1
	and	w12, w12, 255
	cmp	w13, w12
	ldrb	w21, [x21, w22, sxtw]
	orr	w11, w11, w21, lsl 4
	and	w11, w11, 255
	beq	.L114
.L75:
	strb	w12, [x6, -2]
.L74:
	tst	x8, -72057594037927936
	beq	.L76
	ldrb	w21, [x6, -1]
	lsr	x22, x5, 54
	ldr	x8, [x4, 120]
	and	x22, x22, 992
	add	w12, w21, 1
	ubfiz	x21, x21, 10, 8
	and	w12, w12, 255
	add	x8, x8, x21
	cmp	w13, w12
	add	x8, x8, x7, lsr 59
	ldrb	w8, [x8, x22]
	orr	w11, w11, w8, lsl 6
	and	w11, w11, 255
	beq	.L115
.L77:
	strb	w12, [x6, -1]
.L76:
	str	x5, [x2, x9, lsl 3]
	mov	w8, 1
	strb	w11, [x10, -1]
.L78:
	add	x9, x9, 1
	add	x6, x6, 8
	add	x10, x10, 2
	cmp	w14, w9
	bgt	.L79
	add	x3, x3, x17
	add	x2, x2, x17
	add	x1, x1, x17
.L58:
	add	w30, w30, 1
	cmp	w23, w30
	beq	.L53
	ldr	w6, [x18, 76]
	cbnz	w19, .L116
.L56:
	mul	w10, w30, w6
	lsr	w10, w10, 2
	add	x10, x0, x10
	b	.L59
	.p2align 3
.L115:
	and	x5, x5, 72057594037927935
	and	x7, x7, -72057594037927936
	orr	x5, x7, x5
	mov	w12, 0
	b	.L77
	.p2align 3
.L114:
	and	x12, x7, 71776119061217280
	and	x5, x5, -71776119061217281
	orr	x5, x12, x5
	mov	w12, 0
	b	.L75
	.p2align 3
.L112:
	and	x12, x7, 1095216660480
	and	x5, x5, -1095216660481
	orr	x5, x12, x5
	mov	w12, 0
	b	.L71
	.p2align 3
.L113:
	and	x12, x7, 280375465082880
	and	x5, x5, -280375465082881
	orr	x5, x12, x5
	mov	w12, 0
	b	.L73
	.p2align 3
.L111:
	and	x12, x7, 4278190080
	and	x5, x5, -4278190081
	orr	x5, x12, x5
	mov	w12, 0
	b	.L69
	.p2align 3
.L109:
	and	x12, x7, 65280
	and	x5, x5, -65281
	orr	x5, x12, x5
	mov	w12, 0
	b	.L65
	.p2align 3
.L110:
	and	x12, x7, 16711680
	and	x5, x5, -16711681
	orr	x5, x12, x5
	mov	w12, 0
	b	.L67
	.p2align 3
.L108:
	bfi	x5, x7, 0, 8
	mov	w12, 0
	b	.L63
	.p2align 3
.L61:
	strb	wzr, [x10, -2]
	strb	wzr, [x10, -1]
	b	.L78
.L80:
	mov	w8, 0
.L53:
	str	w8, [x20]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 64
	ret
.L106:
	add	w30, w23, w23, lsr 31
	asr	w23, w30, 1
	mov	w30, 0
	b	.L55
.L107:
	add	w16, w23, w23, lsr 31
	add	x20, x4, 64
	asr	w30, w16, 1
	mul	w5, w14, w30
	sbfiz	x5, x5, 3, 32
	add	x1, x1, x5
	add	x2, x2, x5
	mul	w5, w30, w6
	add	x3, x3, x5
	b	.L55
	.size	get_auto_image, .-get_auto_image
	.align	2
	.p2align 3,,7
	.type	is_full_refresh_area, %function
is_full_refresh_area:
	ldp	w5, w6, [x0, 80]
	ldr	w7, [x0, 676]
	add	w4, w5, w5, lsr 31
	add	w3, w6, w6, lsr 31
	subs	w1, w1, w4, asr 1
	csneg	w4, w1, w1, pl
	subs	w3, w2, w3, asr 1
	csneg	w8, w3, w3, pl
	cmp	w7, 3
	beq	.L119
	bgt	.L120
	cmp	w7, 1
	beq	.L121
	cmp	w7, 2
	bne	.L118
	ldr	w1, [x0, 684]
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
.L120:
	cmp	w7, 4
	beq	.L123
	cmp	w7, 5
	bne	.L118
	ldr	w7, [x0, 672]
	add	w4, w1, 7
	ldr	w0, [x0, 684]
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
	ble	.L126
	mov	w0, 10000
	mul	w3, w3, w0
	sdiv	w3, w3, w1
.L127:
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
.L118:
	ldr	w0, [x0, 684]
	cmp	w2, w0
	cset	w0, lt
.L125:
	ret
	.p2align 3
.L123:
	ldr	w1, [x0, 684]
	cmp	w4, w1
	cset	w0, le
	cmp	w8, w1
	cset	w1, le
	orr	w0, w0, w1
	ret
	.p2align 3
.L121:
	ldr	w0, [x0, 684]
	mul	w3, w3, w3
	madd	w3, w1, w1, w3
	mul	w0, w0, w0
	cmp	w0, w3
	cset	w0, ge
	ret
	.p2align 3
.L119:
	ldr	w1, [x0, 684]
	mul	w5, w5, w1
	sdiv	w5, w5, w6
	cmp	w4, w5
	cset	w0, le
	cmp	w8, w1
	cset	w1, le
	and	w0, w0, w1
	ret
	.p2align 3
.L126:
	mov	w0, 1
	beq	.L125
	mov	w2, 10000
	mov	w0, 31416
	mul	w2, w3, w2
	sdiv	w1, w2, w1
	add	w3, w1, w0
	b	.L127
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
	beq	.L149
	mov	w20, w1
	cmp	w4, 3
	mov	w13, 0
	beq	.L150
.L132:
	ldr	w2, [x2, 156]
	lsr	w19, w19, 2
	cbz	w2, .L133
	sub	w1, w1, #1
	sub	w1, w1, w13
	mul	w1, w1, w19
	neg	w19, w19
	add	x18, x0, x1
.L136:
	cmp	w13, w20
	bge	.L130
	sub	w12, w21, #1
	sxtw	x19, w19
	add	x12, x12, 1
	lsl	x12, x12, 3
	.p2align 2
.L135:
	mov	x22, x18
	mov	x11, 0
	cbnz	w21, .L146
	b	.L144
	.p2align 3
.L152:
	ldrb	w16, [x24, x11]
.L138:
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
	bgt	.L140
	strh	wzr, [x22]
	add	x11, x11, 8
	add	x22, x22, 2
	cmp	x11, x12
	beq	.L151
.L146:
	ldr	x10, [x14, x11]
	mov	w2, w11
	ldr	x9, [x15, x11]
	mov	w1, w13
	mov	x0, x23
	bl	is_full_refresh_area
	tst	w0, 255
	beq	.L152
	ldrb	w16, [x24, x11]
	cmp	x16, 255
	bne	.L138
	str	xzr, [x24, x11]
	mov	w16, 0
	b	.L138
	.p2align 3
.L140:
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
	bne	.L146
.L151:
	add	x14, x14, x12
	add	x15, x15, x12
	add	x24, x24, x12
.L144:
	add	w13, w13, 1
	add	x18, x18, x19
	cmp	w20, w13
	bne	.L135
.L130:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 64
	ret
.L133:
	mul	w18, w13, w19
	add	x18, x0, x18, sxtw
	b	.L136
.L149:
	add	w20, w1, w1, lsr 31
	mov	w13, 0
	asr	w20, w20, 1
	b	.L132
.L150:
	add	w13, w1, w1, lsr 31
	asr	w13, w13, 1
	mul	w3, w21, w13
	sbfiz	x3, x3, 3, 32
	add	x14, x14, x3
	add	x15, x15, x3
	add	x24, x24, x3
	b	.L132
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
	beq	.L180
	mov	w13, 0
	cmp	w4, 3
	beq	.L181
.L155:
	lsr	w14, w14, 2
	cmp	w13, w15
	bge	.L153
	sub	w12, w18, #1
	lsl	w19, w14, 1
	add	x12, x12, 1
	mul	w14, w13, w14
	lsl	x12, x12, 3
	.p2align 2
.L170:
	add	x22, x20, x14, sxtw
	cbz	w18, .L157
	mov	x11, 0
	mov	x26, x22
	b	.L163
	.p2align 3
.L183:
	ldrb	w16, [x25, x11]
.L159:
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
	blt	.L161
	str	wzr, [x26]
	add	x11, x11, 8
	add	x26, x26, 4
	cmp	x11, x12
	beq	.L182
.L163:
	ldr	x10, [x23, x11]
	mov	w2, w11
	ldr	x9, [x24, x11]
	mov	w1, w13
	mov	x0, x21
	bl	is_full_refresh_area
	tst	w0, 255
	beq	.L183
	ldrb	w16, [x25, x11]
	cmp	x16, 255
	bne	.L159
	str	xzr, [x25, x11]
	mov	w16, 0
	b	.L159
	.p2align 3
.L161:
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
	bne	.L163
.L182:
	add	x23, x23, x12
	add	x24, x24, x12
	add	x25, x25, x12
	mov	x11, 0
	b	.L169
	.p2align 3
.L185:
	ldrb	w16, [x25, x11]
.L165:
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
	bgt	.L167
	str	wzr, [x22]
.L168:
	add	x11, x11, 8
	add	x22, x22, 4
	cmp	x11, x12
	beq	.L184
.L169:
	ldr	x10, [x23, x11]
	mov	w2, w11
	ldr	x9, [x24, x11]
	mov	w1, w13
	mov	x0, x21
	bl	is_full_refresh_area
	tst	w0, 255
	beq	.L185
	ldrb	w16, [x25, x11]
	cmp	x16, 255
	bne	.L165
	str	xzr, [x25, x11]
	mov	w16, 0
	b	.L165
	.p2align 3
.L184:
	add	x23, x23, x12
	add	x24, x24, x12
	add	x25, x25, x12
.L157:
	add	w13, w13, 2
	add	w14, w14, w19
	cmp	w15, w13
	bgt	.L170
.L153:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 80
	ret
	.p2align 3
.L167:
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
	b	.L168
.L180:
	add	w15, w15, w15, lsr 31
	mov	w13, 0
	asr	w15, w15, 1
	b	.L155
.L181:
	add	w13, w15, w15, lsr 31
	asr	w13, w13, 1
	mul	w0, w18, w13
	sbfiz	x0, x0, 3, 32
	add	x23, x1, x0
	add	x24, x2, x0
	add	x25, x25, x0
	b	.L155
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
	cbz	x0, .L190
	ldr	x1, [x0, 48]
	blr	x1
.L190:
	ldr	x0, [x19, 328]
	adrp	x1, .LC0
	str	wzr, [x19, 812]
	add	x1, x1, :lo12:.LC0
	bl	_dev_info
	ldr	x19, [sp, 16]
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	.size	ebc_resume, .-ebc_resume
	.align	2
	.p2align 3,,7
	.type	get_pix_pos_old_and_new_gray, %function
get_pix_pos_old_and_new_gray:
	ldr	w3, [x0, 724]
	tbnz	w3, #31, .L198
	ldr	w4, [x0, 80]
	cmp	w3, w4
	bge	.L198
	ldr	w4, [x0, 720]
	tbnz	w4, #31, .L198
	ldr	w7, [x0, 84]
	cmp	w4, w7
	blt	.L201
.L198:
	ret
	.p2align 3
.L201:
	madd	w7, w3, w7, w4
	mov	x6, x1
	mov	x5, x2
	stp	x29, x30, [sp, -16]!
	mov	w2, w4
	adrp	x1, .LC1
	add	x29, sp, 0
	ldrb	w5, [x5, w7, sxtw]
	add	x1, x1, :lo12:.LC1
	ldrb	w4, [x6, w7, sxtw]
	ldr	x0, [x0, 96]
	bl	_dev_info
	ldp	x29, x30, [sp], 16
	ret
	.size	get_pix_pos_old_and_new_gray, .-get_pix_pos_old_and_new_gray
	.align	2
	.p2align 3,,7
	.type	ebc_frame_control_timeout, %function
ebc_frame_control_timeout:
	adrp	x0, .LANCHOR0
	mov	w2, 1
	ldr	x0, [x0, #:lo12:.LANCHOR0]
	ldr	w1, [x0, 856]
	str	w2, [x0, 820]
	cmp	w1, 0
	ble	.L205
	add	x0, x0, 232
	stp	x29, x30, [sp, -16]!
	adrp	x1, .LC2
	add	x1, x1, :lo12:.LC2
	add	x29, sp, 0
	ldr	x0, [x0, 96]
	bl	_dev_info
	ldp	x29, x30, [sp], 16
	ret
	.p2align 3
.L205:
	ret
	.size	ebc_frame_control_timeout, .-ebc_frame_control_timeout
	.align	2
	.p2align 3,,7
	.type	ebc_power_set, %function
ebc_power_set:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	add	x19, x0, 232
	stp	x21, x22, [sp, 32]
	ldr	w2, [x19, 192]
	cmp	w2, w1
	beq	.L210
	mov	x20, x0
	mov	w21, w1
	cmp	w1, 1
	ldr	w0, [x19, 620]
	beq	.L236
	cbnz	w0, .L237
	str	w21, [x19, 192]
	ldr	x1, [x20, 8]
	mov	x0, x1
	ldr	x1, [x1, 80]
	blr	x1
	ldr	x0, [x20, 16]
	cbz	x0, .L220
.L243:
	ldr	x2, [x0, 32]
	mov	w1, 0
	mov	w21, 0
	blr	x2
.L221:
	ldr	w0, [x19, 456]
	cbnz	w0, .L238
.L222:
	ldr	w0, [x19, 624]
	cmp	w0, 0
	ble	.L210
	ldr	x0, [x19, 96]
	adrp	x1, .LC4
	mov	w2, w21
	add	x1, x1, :lo12:.LC4
	bl	_dev_info
.L210:
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L236:
	cbnz	w0, .L239
.L212:
	ldr	w0, [x19, 456]
	cbz	w0, .L240
.L213:
	add	x21, x20, 40
	mov	w0, 1
	str	w0, [x19, 192]
	ldrb	w0, [x21, 184]
	cbnz	w0, .L241
.L214:
	ldr	x0, [x20, 16]
	cbz	x0, .L215
	ldr	x2, [x0, 32]
	mov	w1, 1
	mov	w22, 0
	blr	x2
.L216:
	ldrb	w0, [x21, 184]
	cbz	w0, .L242
.L217:
	ldr	w0, [x19, 624]
	cmp	w0, 0
	ble	.L210
	ldr	x0, [x19, 96]
	mov	w2, w22
	adrp	x1, .LC3
	add	x1, x1, :lo12:.LC3
	bl	_dev_info
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L237:
	mov	x0, 0
	bl	ebc_notify
	str	w21, [x19, 192]
	ldr	x1, [x20, 8]
	mov	x0, x1
	ldr	x1, [x1, 80]
	blr	x1
	ldr	x0, [x20, 16]
	cbnz	x0, .L243
.L220:
	ldr	x0, [x20, 24]
	bl	regulator_disable
	mov	w21, w0
	b	.L221
	.p2align 3
.L240:
	mov	w0, 1
	str	w0, [x19, 456]
	add	x0, x20, 480
	bl	__pm_stay_awake
	b	.L213
	.p2align 3
.L239:
	mov	x0, 1
	bl	ebc_notify
	b	.L212
	.p2align 3
.L241:
	ldr	x2, [x20, 8]
	mov	x1, x21
	mov	x0, x2
	ldr	x2, [x2, 72]
	blr	x2
	b	.L214
	.p2align 3
.L238:
	str	wzr, [x19, 456]
	add	x0, x20, 480
	bl	__pm_relax
	b	.L222
	.p2align 3
.L242:
	ldr	x2, [x20, 8]
	mov	x1, x21
	mov	x0, x2
	ldr	x2, [x2, 72]
	blr	x2
	b	.L217
	.p2align 3
.L215:
	ldr	x0, [x20, 24]
	bl	regulator_enable
	mov	w22, w0
	b	.L216
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
	str	w0, [x20, 580]
	ldr	x0, [x19, 16]
	cbz	x0, .L245
	ldr	x1, [x0, 40]
	blr	x1
.L245:
	ldr	x0, [x20, 96]
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
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
	add	x19, x20, 864
	add	x20, x20, 904
.L252:
	ldr	x1, [x19]
	mov	x0, x1
	cbz	x1, .L251
	bl	dma_buf_put
	str	xzr, [x19]
.L251:
	add	x19, x19, 8
	cmp	x19, x20
	bne	.L252
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
	cbz	x0, .L263
	add	x19, x21, 864
	mov	x22, x0
	mov	x20, x0
	add	x21, x21, 904
.L262:
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
	bne	.L262
	mov	w0, 0
	str	xzr, [x23, 104]
	str	x22, [x23, 200]
.L260:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 64
	ret
.L263:
	mov	w0, -12
	b	.L260
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
	.type	ebc_io_ctl, %function
ebc_io_ctl:
	stp	x29, x30, [sp, -176]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	adrp	x19, __stack_chk_guard
	stp	x21, x22, [sp, 32]
	add	x3, x19, :lo12:__stack_chk_guard
	stp	x23, x24, [sp, 48]
	mov	x22, x2
	stp	x25, x26, [sp, 64]
	ldr	x4, [x3]
	str	x4, [x29, 168]
	mov	x4,0
	ldr	x21, [x0, 200]
	adrp	x4, .LANCHOR0
	mov	w3, 28683
	cmp	w1, w3
	ldr	x20, [x4, #:lo12:.LANCHOR0]
	bls	.L506
	mov	w0, 28693
	cmp	w1, w0
	beq	.L277
	bhi	.L278
	mov	w0, 28688
	cmp	w1, w0
	beq	.L277
	mov	w0, 28690
	cmp	w1, w0
	beq	.L277
	.p2align 2
.L275:
	sub	w1, w1, #28672
	cmp	w1, 29
	bls	.L507
.L280:
	ldr	x0, [x20, 328]
	adrp	x2, .LANCHOR2
	adrp	x1, .LC22
	add	x2, x2, :lo12:.LANCHOR2
	add	x1, x1, :lo12:.LC22
	bl	_dev_err
	.p2align 2
.L496:
	mov	x0, 0
.L274:
	add	x19, x19, :lo12:__stack_chk_guard
	ldr	x2, [x29, 168]
	ldr	x1, [x19]
	eor	x1, x2, x1
	cbnz	x1, .L508
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 176
	ret
	.p2align 3
.L506:
	mov	w0, 28681
	cmp	w1, w0
	bcs	.L277
	cmp	w1, 28672
	bcc	.L275
	mov	w0, 28675
	cmp	w1, w0
	bls	.L277
	mov	w2, -28678
	add	w0, w1, w2
	cmp	w0, 1
	bhi	.L275
	.p2align 2
.L277:
	cbnz	x22, .L275
	ldr	x0, [x20, 328]
	adrp	x2, .LANCHOR2
	adrp	x1, .LC6
	add	x2, x2, :lo12:.LANCHOR2
	add	x1, x1, :lo12:.LC6
	bl	_dev_err
	mov	x0, -14
	b	.L274
	.p2align 3
.L507:
	adrp	x0, .L282
	add	x0, x0, :lo12:.L282
	ldrh	w0, [x0,w1,uxtw #1]
	adr	x1, .Lrtx282
	add	x0, x1, w0, sxth #2
	br	x0
.Lrtx282:
	.section	.rodata
	.align	0
	.align	2
.L282:
	.2byte	(.L281 - .Lrtx282) / 4
	.2byte	(.L283 - .Lrtx282) / 4
	.2byte	(.L284 - .Lrtx282) / 4
	.2byte	(.L496 - .Lrtx282) / 4
	.2byte	(.L286 - .Lrtx282) / 4
	.2byte	(.L287 - .Lrtx282) / 4
	.2byte	(.L288 - .Lrtx282) / 4
	.2byte	(.L289 - .Lrtx282) / 4
	.2byte	(.L496 - .Lrtx282) / 4
	.2byte	(.L290 - .Lrtx282) / 4
	.2byte	(.L496 - .Lrtx282) / 4
	.2byte	(.L291 - .Lrtx282) / 4
	.2byte	(.L292 - .Lrtx282) / 4
	.2byte	(.L293 - .Lrtx282) / 4
	.2byte	(.L496 - .Lrtx282) / 4
	.2byte	(.L496 - .Lrtx282) / 4
	.2byte	(.L294 - .Lrtx282) / 4
	.2byte	(.L295 - .Lrtx282) / 4
	.2byte	(.L296 - .Lrtx282) / 4
	.2byte	(.L297 - .Lrtx282) / 4
	.2byte	(.L298 - .Lrtx282) / 4
	.2byte	(.L299 - .Lrtx282) / 4
	.2byte	(.L280 - .Lrtx282) / 4
	.2byte	(.L300 - .Lrtx282) / 4
	.2byte	(.L301 - .Lrtx282) / 4
	.2byte	(.L302 - .Lrtx282) / 4
	.2byte	(.L303 - .Lrtx282) / 4
	.2byte	(.L304 - .Lrtx282) / 4
	.2byte	(.L305 - .Lrtx282) / 4
	.2byte	(.L306 - .Lrtx282) / 4
	.text
	.p2align 3
.L278:
	mov	w0, -28695
	add	w0, w1, w0
	cmp	w0, 6
	bls	.L277
	sub	w1, w1, #28672
	cmp	w1, 29
	bhi	.L280
	b	.L507
	.p2align 3
.L286:
	ldr	w0, [x20, 856]
	mov	w1, 1
	str	w1, [x20, 816]
	add	x20, x20, 232
	tbnz	w0, #31, .L496
	ldr	x0, [x20, 96]
	adrp	x1, .LC9
	add	x1, x1, :lo12:.LC9
	bl	_dev_info
	mov	x0, 0
	b	.L274
	.p2align 3
.L287:
	ldr	w0, [x20, 856]
	add	x20, x20, 232
	str	wzr, [x20, 584]
	tbnz	w0, #31, .L496
	ldr	x0, [x20, 96]
	adrp	x1, .LC10
	add	x1, x1, :lo12:.LC10
	bl	_dev_info
	mov	x0, 0
	b	.L274
	.p2align 3
.L288:
	bl	ebc_empty_osd_buf_get
	cbz	x0, .L315
	ldr	x23, [x0, 8]
	bl	ebc_phy_buf_base_get
	mov	w1, 26215
	ldr	w2, [x20, 192]
	sub	w0, w23, w0
	movk	w1, 0x6666, lsl 16
	str	w0, [x29, 96]
	ldp	w4, w3, [x20, 116]
	smull	x1, w0, w1
	str	w2, [x29, 112]
	stp	w3, w4, [x29, 104]
	asr	x1, x1, 53
	str	wzr, [x29, 140]
	sub	w0, w1, w0, asr 31
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	ldr	w0, [x21, w0, sxtw 2]
	str	w0, [x29, 160]
	ldr	w1, [x2, 52]
	ldr	x0, [x2, 8]
	tbnz	x1, 21, .L308
	ldr	x2, [x2]
	mov	x1, x22
	tbz	x2, 26, .L309
.L308:
	sbfx	x1, x22, 0, 56
	and	x1, x1, x22
.L309:
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
	cbz	x1, .L274
	sbfx	x1, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	and	x1, x1, x22
	ldr	x2, [x2, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x1, x2
	csel	x3, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, x0
	add	x1, x29, 96
	mov	x0, x3
	bl	__arch_copy_to_user
	sxtw	x0, w0
	b	.L274
	.p2align 3
.L304:
	str	wzr, [x29, 92]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L379
	ldr	x2, [x0]
	mov	x0, x22
	tbz	x2, 26, .L380
.L379:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L380:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L497
	sbfx	x0, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x22
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x22, x29, 92
	mov	x2, 4
	mov	x0, x22
	bl	__arch_copy_from_user
	mov	x21, x0
	cbnz	x0, .L509
.L382:
	ldr	w1, [x29, 92]
	add	x20, x20, 232
	ldr	w0, [x20, 624]
	cmp	w1, 0
	cset	w2, ne
	strb	w2, [x20, 708]
	tbnz	w0, #31, .L496
	ldr	x0, [x20, 96]
	adrp	x1, .LC19
	add	x1, x1, :lo12:.LC19
	bl	_dev_info
	b	.L496
	.p2align 3
.L290:
	mov	w0, -1
	str	w0, [x29, 92]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L345
	ldr	x2, [x0]
	mov	x0, x22
	tbz	x2, 26, .L346
.L345:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L346:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L497
	sbfx	x0, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x22
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x22, x29, 92
	mov	x2, 4
	mov	x0, x22
	bl	__arch_copy_from_user
	mov	x21, x0
	cbnz	x0, .L510
.L348:
	ldr	w0, [x20, 856]
	add	x20, x20, 232
	ldr	w2, [x29, 92]
	str	w2, [x20, 716]
	tbnz	w0, #31, .L496
	ldr	x0, [x20, 96]
	adrp	x1, .LC12
	add	x1, x1, :lo12:.LC12
	bl	_dev_info
	b	.L496
	.p2align 3
.L289:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L328
	ldr	x2, [x0]
	mov	x0, x22
	tbz	x2, 26, .L329
.L328:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L329:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L497
	sbfx	x0, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x22
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 68
	add	x0, x29, 96
	bl	__arch_copy_from_user
	cbnz	x0, .L497
	bl	ebc_osd_buf_clone
	mov	x1, x0
	cbz	x0, .L496
	ldr	w6, [x29, 100]
	add	x20, x20, 232
	ldp	w5, w3, [x29, 116]
	str	w6, [x1, 40]
	ldp	w4, w2, [x29, 124]
	stp	w5, w3, [x1, 48]
	stp	w4, w2, [x1, 56]
	bl	ebc_add_to_osd_buf_list
	ldr	w0, [x20, 92]
	cbnz	w0, .L331
	mov	w0, 1
	str	w0, [x20, 92]
.L331:
	ldr	w0, [x20, 88]
	cbnz	w0, .L496
.L498:
	mov	w2, 1
	str	w2, [x20, 88]
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 304
	mov	w1, w2
	bl	__wake_up_sync
	mov	x0, 0
	b	.L274
	.p2align 3
.L303:
	mov	w0, -1
	str	w0, [x29, 92]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L374
	ldr	x2, [x0]
	mov	x0, x22
	tbz	x2, 26, .L375
.L374:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L375:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L497
	sbfx	x0, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x22
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x22, x29, 92
	mov	x2, 4
	mov	x0, x22
	bl	__arch_copy_from_user
	mov	x21, x0
	cbnz	x0, .L511
.L377:
	ldr	w0, [x20, 856]
	add	x20, x20, 232
	ldr	w2, [x29, 92]
	str	w2, [x20, 704]
	tbnz	w0, #31, .L496
	ldr	x0, [x20, 96]
	adrp	x1, .LC18
	add	x1, x1, :lo12:.LC18
	bl	_dev_info
	b	.L496
	.p2align 3
.L291:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x1, 52]
	ldr	x0, [x1, 8]
	tbnz	x2, 21, .L332
	ldr	x2, [x1]
	mov	x1, x22
	tbz	x2, 26, .L333
.L332:
	sbfx	x1, x22, 0, 56
	and	x1, x1, x22
.L333:
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
	cbz	x1, .L274
	sbfx	x1, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	and	x1, x1, x22
	ldr	x2, [x2, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x1, x2
	csel	x3, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, x0
	add	x1, x20, 816
	mov	x0, x3
	bl	__arch_copy_to_user
	sxtw	x0, w0
	b	.L274
	.p2align 3
.L281:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L311
	ldr	x2, [x0]
	mov	x0, x22
	tbz	x2, 26, .L312
.L311:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L312:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L497
	lsl	x24, x22, 8
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	and	x2, x22, x24, asr 8
	ldr	x0, [x0, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x2, x0
	csel	x1, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x25, x29, 96
	mov	x2, 68
	mov	x0, x25
	bl	__arch_copy_from_user
	mov	x23, x0
	cbnz	x0, .L314
.L317:
	add	x0, x25, 48
	bl	ebc_empty_buf_get
	mov	x26, x0
	cbz	x0, .L315
	ldr	x23, [x0, 8]
	bl	ebc_phy_buf_base_get
	mov	w1, 26215
	str	wzr, [x29, 140]
	sub	w0, w23, w0
	movk	w1, 0x6666, lsl 16
	ldp	w2, w3, [x20, 116]
	stp	w3, w2, [x29, 104]
	smull	x1, w0, w1
	str	w0, [x29, 96]
	ldr	w2, [x20, 192]
	str	w2, [x29, 112]
	asr	x1, x1, 53
	sub	w0, w1, w0, asr 31
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	ldr	w0, [x21, w0, sxtw 2]
	str	w0, [x29, 160]
	ldr	w0, [x2, 52]
	ldr	x1, [x2, 8]
	tbnz	x0, 21, .L318
	ldr	x2, [x2]
	mov	x0, x22
	tbnz	x2, 26, .L318
.L319:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbnz	x0, .L320
.L321:
	mov	x0, x26
	bl	ebc_buf_release
	mov	x0, -14
	b	.L274
	.p2align 3
.L283:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L322
	ldr	x2, [x0]
	mov	x0, x22
	tbz	x2, 26, .L323
.L322:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L323:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L497
	sbfx	x0, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x22
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 68
	add	x0, x29, 96
	bl	__arch_copy_from_user
	cbnz	x0, .L497
	bl	ebc_phy_buf_base_get
	ldrsw	x1, [x29, 96]
	add	x0, x1, x0
	bl	ebc_find_buf_by_phy_addr
	mov	x1, x0
	cbz	x0, .L496
	ldr	w2, [x29, 100]
	add	x20, x20, 232
	str	w2, [x1, 40]
	ldp	w6, w3, [x29, 116]
	stp	w6, w3, [x1, 48]
	ldr	w4, [x29, 124]
	ldr	w2, [x29, 128]
	ldr	w5, [x29, 140]
	str	w4, [x1, 56]
	stp	w2, w5, [x1, 60]
	bl	ebc_add_to_dsp_buf_list
	ldr	w0, [x20, 88]
	cbnz	w0, .L496
	b	.L498
	.p2align 3
.L284:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	ldr	w3, [x2, 52]
	ldp	w1, w0, [x20, 132]
	stp	w1, w0, [x29, 132]
	ldp	w6, w5, [x20, 116]
	stp	w5, w6, [x29, 104]
	ldr	w4, [x20, 192]
	str	w4, [x29, 112]
	str	wzr, [x29, 140]
	ldr	x1, [x2, 8]
	tbnz	x3, 21, .L341
	ldr	x2, [x2]
	mov	x0, x22
	tbz	x2, 26, .L342
.L341:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L342:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 68
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbnz	x0, .L343
.L344:
	ldr	x0, [x20, 328]
	adrp	x1, .LC11
	add	x1, x1, :lo12:.LC11
	bl	_dev_err
	mov	x0, -14
	b	.L274
	.p2align 3
.L305:
	str	wzr, [x29, 92]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L384
	ldr	x2, [x0]
	mov	x0, x22
	tbz	x2, 26, .L385
.L384:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L385:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L497
	sbfx	x0, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x22
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x22, x29, 92
	mov	x2, 4
	mov	x0, x22
	bl	__arch_copy_from_user
	mov	x21, x0
	cbnz	x0, .L512
.L387:
	ldr	w0, [x20, 856]
	add	x20, x20, 232
	ldr	w2, [x29, 92]
	str	w2, [x20, 712]
	tbnz	w0, #31, .L496
	ldr	x0, [x20, 96]
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_dev_info
	b	.L496
	.p2align 3
.L292:
	ldr	w0, [x20, 856]
	mov	w1, 1
	str	w1, [x20, 824]
	add	x20, x20, 232
	tbnz	w0, #31, .L496
	ldr	x0, [x20, 96]
	adrp	x1, .LC7
	add	x1, x1, :lo12:.LC7
	bl	_dev_info
	mov	x0, 0
	b	.L274
	.p2align 3
.L299:
	str	wzr, [x29, 92]
	ldr	w0, [x20, 932]
	cmp	w0, 3576
	bne	.L496
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L354
	ldr	x2, [x0]
	mov	x0, x22
	tbz	x2, 26, .L355
.L354:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L355:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L497
	sbfx	x0, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x22
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x22, x29, 92
	mov	x2, 4
	mov	x0, x22
	bl	__arch_copy_from_user
	mov	x21, x0
	cbnz	x0, .L513
.L357:
	add	x20, x20, 232
	ldr	w0, [x20, 624]
	tbnz	w0, #31, .L358
	ldr	w2, [x29, 92]
	adrp	x1, .LC15
	ldr	x0, [x20, 96]
	add	x1, x1, :lo12:.LC15
	bl	_dev_info
.L358:
	ldr	w0, [x29, 92]
	str	w0, [x20, 604]
	b	.L496
	.p2align 3
.L300:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x1, 52]
	ldr	x0, [x1, 8]
	tbnz	x2, 21, .L359
	ldr	x2, [x1]
	mov	x1, x22
	tbz	x2, 26, .L360
.L359:
	sbfx	x1, x22, 0, 56
	and	x1, x1, x22
.L360:
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
	cbz	x1, .L274
	sbfx	x1, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	and	x1, x1, x22
	ldr	x2, [x2, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x1, x2
	csel	x3, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, x0
	add	x1, x20, 844
	mov	x0, x3
	bl	__arch_copy_to_user
	sxtw	x0, w0
	b	.L274
	.p2align 3
.L301:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	add	x21, x20, 912
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L362
	ldr	x2, [x0]
	mov	x0, x22
	tbz	x2, 26, .L363
.L362:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L363:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L364
	sbfx	x0, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x22
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x22, x0
	cbnz	x0, .L365
.L367:
	add	x20, x20, 232
	ldr	w0, [x20, 624]
	tbnz	w0, #31, .L496
	ldr	x0, [x20, 96]
	adrp	x1, .LC16
	ldr	w2, [x20, 680]
	add	x1, x1, :lo12:.LC16
	bl	_dev_info
	mov	x0, 0
	b	.L274
	.p2align 3
.L302:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	add	x21, x20, 924
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L368
	ldr	x2, [x0]
	mov	x0, x22
	tbz	x2, 26, .L369
.L368:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L369:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L370
	sbfx	x0, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x22
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 4
	mov	x0, x21
	bl	__arch_copy_from_user
	mov	x22, x0
	cbnz	x0, .L371
.L373:
	add	x20, x20, 232
	ldr	w0, [x20, 624]
	tbnz	w0, #31, .L496
	ldr	x0, [x20, 96]
	adrp	x1, .LC17
	ldr	w2, [x20, 692]
	add	x1, x1, :lo12:.LC17
	bl	_dev_info
	mov	x0, 0
	b	.L274
	.p2align 3
.L295:
	bl	ebc_drop_one_dsp_buf
	cbz	w0, .L496
	.p2align 2
.L497:
	mov	x0, -14
	b	.L274
	.p2align 3
.L296:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x1, 52]
	ldr	x0, [x1, 8]
	tbnz	x2, 21, .L335
	ldr	x2, [x1]
	mov	x1, x22
	tbz	x2, 26, .L336
.L335:
	sbfx	x1, x22, 0, 56
	and	x1, x1, x22
.L336:
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
	cbz	x1, .L274
	sbfx	x1, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	and	x1, x1, x22
	ldr	x2, [x2, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x1, x2
	csel	x3, x22, xzr, eq

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
	b	.L274
	.p2align 3
.L306:
	str	wzr, [x29, 92]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x0, 52]
	ldr	x1, [x0, 8]
	tbnz	x2, 21, .L389
	ldr	x2, [x0]
	mov	x0, x22
	tbz	x2, 26, .L390
.L389:
	sbfx	x0, x22, 0, 56
	and	x0, x0, x22
.L390:
#APP
// 88 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		adds	x0, x0, 4
	csel	x1, xzr, x1, hi
	csinv	x0, x0, xzr, cc
	sbcs	xzr, x0, x1
	cset	x0, ls

// 0 "" 2
#NO_APP
	cbz	x0, .L497
	sbfx	x0, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	and	x0, x0, x22
	ldr	x2, [x1, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x0, x2
	csel	x1, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	add	x22, x29, 92
	mov	x2, 4
	mov	x0, x22
	bl	__arch_copy_from_user
	mov	x21, x0
	cbnz	x0, .L514
.L392:
	ldr	w1, [x29, 92]
	add	x20, x20, 232
	ldr	w0, [x20, 624]
	cmp	w1, 0
	cset	w2, ne
	strb	w2, [x20, 709]
	tbnz	w0, #31, .L496
	ldr	x0, [x20, 96]
	adrp	x1, .LC21
	add	x1, x1, :lo12:.LC21
	bl	_dev_info
	b	.L496
	.p2align 3
.L297:
	add	x20, x20, 232
	ldr	w0, [x20, 624]
	tbnz	w0, #31, .L350
	ldr	x0, [x20, 96]
	adrp	x1, .LC13
	add	x1, x1, :lo12:.LC13
	bl	_dev_info
.L350:
	mov	x0, 2
	bl	ebc_notify
	mov	w1, 1
	mov	x0, 0
	str	w1, [x20, 576]
	str	w1, [x20, 596]
	b	.L274
	.p2align 3
.L293:
	ldr	w0, [x20, 856]
	add	x20, x20, 232
	str	wzr, [x20, 592]
	tbnz	w0, #31, .L496
	ldr	x0, [x20, 96]
	adrp	x1, .LC8
	add	x1, x1, :lo12:.LC8
	bl	_dev_info
	mov	x0, 0
	b	.L274
	.p2align 3
.L294:
	mov	w0, 1
	str	w0, [x29, 92]
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x1, sp_el0
// 0 "" 2
#NO_APP
	ldr	w2, [x1, 52]
	ldr	x0, [x1, 8]
	tbnz	x2, 21, .L338
	ldr	x2, [x1]
	mov	x1, x22
	tbz	x2, 26, .L339
.L338:
	sbfx	x1, x22, 0, 56
	and	x1, x1, x22
.L339:
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
	cbz	x1, .L274
	sbfx	x1, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x2, sp_el0
// 0 "" 2
#NO_APP
	and	x1, x1, x22
	ldr	x2, [x2, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x1, x2
	csel	x3, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, x0
	add	x1, x29, 92
	mov	x0, x3
	bl	__arch_copy_to_user
	sxtw	x0, w0
	b	.L274
	.p2align 3
.L298:
	add	x20, x20, 232
	ldr	w0, [x20, 624]
	tbnz	w0, #31, .L351
	ldr	x0, [x20, 96]
	adrp	x1, .LC14
	add	x1, x1, :lo12:.LC14
	bl	_dev_info
.L351:
	ldr	w0, [x20, 576]
	cbnz	w0, .L515
.L352:
	mov	x0, 0
	str	wzr, [x20, 576]
	str	wzr, [x20, 596]
	b	.L274
	.p2align 3
.L318:
	and	x0, x22, x24, asr 8
	b	.L319
	.p2align 3
.L343:
	sbfx	x1, x22, 0, 56
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	and	x1, x1, x22
	ldr	x2, [x0, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x1, x2
	csel	x0, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 68
	add	x1, x29, 96
	bl	__arch_copy_to_user
	cbz	x0, .L496
	b	.L344
	.p2align 3
.L515:
	mov	x0, 3
	bl	ebc_notify
	b	.L352
.L320:
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x0, sp_el0
// 0 "" 2
#NO_APP
	and	x24, x22, x24, asr 8
	ldr	x1, [x0, 8]
#APP
// 248 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
		bics	xzr, x24, x1
	csel	x0, x22, xzr, eq

// 0 "" 2
// 256 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/uaccess.h" 1
	hint #20
// 0 "" 2
#NO_APP
	mov	x2, 68
	mov	x1, x25
	bl	__arch_copy_to_user
	cbz	w0, .L496
	b	.L321
	.p2align 3
.L365:
	sub	x0, x21, x0
	mov	x2, x22
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w22, .L367
	mov	x0, -14
	b	.L274
	.p2align 3
.L371:
	sub	x0, x21, x0
	mov	x2, x22
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w22, .L373
	mov	x0, -14
	b	.L274
	.p2align 3
.L370:
	str	wzr, [x20, 924]
	mov	x0, -14
	b	.L274
.L364:
	mov	x0, -14
	str	wzr, [x20, 912]
	b	.L274
.L315:
	mov	x0, -1
	b	.L274
.L508:
	bl	__stack_chk_fail
.L509:
	sub	x0, x22, x0
	mov	x2, x21
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w21, .L382
	mov	x0, -14
	b	.L274
.L314:
	sub	x0, x25, x0
	mov	x2, x23
	mov	w1, 0
	add	x0, x0, 68
	bl	memset
	cbz	w23, .L317
	mov	x0, -14
	b	.L274
.L510:
	sub	x0, x22, x0
	mov	x2, x21
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w21, .L348
	mov	x0, -14
	b	.L274
.L512:
	sub	x0, x22, x0
	mov	x2, x21
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w21, .L387
	mov	x0, -14
	b	.L274
.L514:
	sub	x0, x22, x0
	mov	x2, x21
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w21, .L392
	mov	x0, -14
	b	.L274
.L513:
	sub	x0, x22, x0
	mov	x2, x21
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w21, .L357
	mov	x0, -14
	b	.L274
.L511:
	sub	x0, x22, x0
	mov	x2, x21
	mov	w1, 0
	add	x0, x0, 4
	bl	memset
	cbz	w21, .L377
	mov	x0, -14
	b	.L274
	.size	ebc_io_ctl, .-ebc_io_ctl
	.align	2
	.p2align 3,,7
	.type	get_overlay_image2, %function
get_overlay_image2:
	stp	x29, x30, [sp, -112]!
	adrp	x7, .LANCHOR0
	cmp	w6, 2
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x19, x5
	stp	x23, x24, [sp, 48]
	mov	x23, x0
	stp	x25, x26, [sp, 64]
	mov	x26, x1
	stp	x27, x28, [sp, 80]
	mov	x20, x2
	stp	x21, x22, [sp, 32]
	mov	x27, x3
	ldr	x0, [x7, #:lo12:.LANCHOR0]
	mov	x28, x4
	ldr	x1, [x5, 216]
	add	x25, x5, 60
	ldr	w22, [x0, 120]
	ldr	w12, [x1, 40]
	ldr	w1, [x0, 116]
	lsr	w24, w1, 3
	beq	.L672
	cmp	w6, 3
	beq	.L519
	lsr	w14, w1, 2
	mov	x0, 0
	mov	w21, 0
.L518:
	sub	w2, w22, w21
	add	x0, x23, x0
	mov	w1, 0
	stp	w12, w14, [x29, 104]
	mul	w2, w2, w14
	sxtw	x2, w2
	bl	memset
	cmp	w21, w22
	bge	.L580
	ldp	w12, w14, [x29, 104]
	sub	w11, w24, #1
	add	x11, x11, 1
	mov	w6, 0
	lsl	x11, x11, 3
	sub	w12, w12, #7
	mul	w13, w21, w14
	lsl	w14, w14, 1
	.p2align 2
.L579:
	add	x9, x23, x13, sxtw
	cbz	w24, .L521
	add	x1, x27, 8
	add	x8, x28, 8
	mov	x4, x9
	mov	x7, 0
	.p2align 2
.L550:
	ldr	x2, [x26, x7]
	cmp	w12, 4
	ldr	x0, [x20, x7]
	bhi	.L522
	and	x2, x2, -506381209866536712
	and	x0, x0, -506381209866536712
.L522:
	cmp	x2, x0
	beq	.L523
	eor	x5, x2, x0
	and	x3, x5, 255
	cbz	x3, .L581
	ldrb	w10, [x8, -8]
	lsr	x3, x0, 3
	ldrb	w15, [x1, -8]
	ubfx	x16, x2, 3, 5
	ubfiz	x3, x3, 5, 5
	ldrb	w6, [x19, 56]
	add	x18, x19, x10, sxtw 3
	orr	x3, x3, x16
	ldrb	w17, [x19, 57]
	lsl	w16, w15, 10
	cmp	w10, 0
	add	w15, w15, 1
	ldr	x18, [x18, 120]
	csel	w6, w6, w17, eq
	and	w15, w15, 255
	mov	w10, 0
	add	x3, x18, x3
	cmp	w6, w15
	ldrb	w6, [x3, w16, sxtw]
	beq	.L673
.L526:
	strb	w15, [x1, -8]
.L524:
	tst	x5, 65280
	beq	.L527
	ldrb	w30, [x8, -7]
	lsr	x17, x0, 11
	ldrb	w3, [x1, -7]
	ubfiz	x17, x17, 5, 5
	ubfx	x15, x2, 11, 5
	ldrb	w16, [x19, 56]
	add	x18, x19, x30, sxtw 3
	orr	x15, x17, x15
	lsl	w17, w3, 10
	cmp	w30, 0
	add	w3, w3, 1
	ldr	x18, [x18, 120]
	and	w3, w3, 255
	add	x15, x18, x15
	ldrb	w18, [x19, 57]
	csel	w16, w16, w18, eq
	ldrb	w15, [x15, w17, sxtw]
	cmp	w16, w3
	orr	w6, w6, w15, lsl 4
	beq	.L674
.L529:
	strb	w3, [x1, -7]
.L527:
	tst	x5, 16711680
	beq	.L530
	ldrb	w30, [x8, -6]
	lsr	x17, x0, 19
	ldrb	w3, [x1, -6]
	ubfiz	x17, x17, 5, 5
	ubfx	x15, x2, 19, 5
	ldrb	w16, [x19, 56]
	add	x18, x19, x30, sxtw 3
	orr	x15, x17, x15
	lsl	w17, w3, 10
	cmp	w30, 0
	add	w3, w3, 1
	ldr	x18, [x18, 120]
	and	w3, w3, 255
	add	x15, x18, x15
	ldrb	w18, [x19, 57]
	csel	w16, w16, w18, eq
	ldrb	w15, [x15, w17, sxtw]
	cmp	w16, w3
	orr	w6, w6, w15, lsl 8
	beq	.L675
.L532:
	strb	w3, [x1, -6]
.L530:
	tst	x5, 4278190080
	beq	.L533
	ldrb	w30, [x8, -5]
	lsr	x17, x0, 27
	ldrb	w3, [x1, -5]
	ubfiz	x17, x17, 5, 5
	lsr	w15, w2, 27
	ldrb	w16, [x19, 56]
	add	x18, x19, x30, sxtw 3
	orr	x15, x17, x15
	lsl	w17, w3, 10
	cmp	w30, 0
	add	w3, w3, 1
	ldr	x18, [x18, 120]
	and	w3, w3, 255
	add	x15, x18, x15
	ldrb	w18, [x19, 57]
	csel	w16, w16, w18, eq
	ldrb	w15, [x15, w17, sxtw]
	cmp	w16, w3
	orr	w6, w6, w15, lsl 12
	beq	.L676
.L535:
	strb	w3, [x1, -5]
.L533:
	tst	x5, 1095216660480
	beq	.L536
	ldrb	w30, [x8, -4]
	lsr	x17, x0, 35
	ldrb	w3, [x1, -4]
	ubfiz	x17, x17, 5, 5
	ubfx	x15, x2, 35, 5
	ldrb	w16, [x19, 56]
	add	x18, x19, x30, sxtw 3
	orr	x15, x17, x15
	lsl	w17, w3, 10
	cmp	w30, 0
	add	w3, w3, 1
	ldr	x18, [x18, 120]
	and	w3, w3, 255
	add	x15, x18, x15
	ldrb	w18, [x19, 57]
	csel	w16, w16, w18, eq
	ldrb	w15, [x15, w17, sxtw]
	cmp	w16, w3
	orr	w6, w6, w15, lsl 16
	beq	.L677
.L538:
	strb	w3, [x1, -4]
.L536:
	tst	x5, 280375465082880
	beq	.L539
	ldrb	w30, [x8, -3]
	lsr	x17, x0, 43
	ldrb	w3, [x1, -3]
	ubfiz	x17, x17, 5, 5
	ubfx	x15, x2, 43, 5
	ldrb	w16, [x19, 56]
	add	x18, x19, x30, sxtw 3
	orr	x15, x17, x15
	lsl	w17, w3, 10
	cmp	w30, 0
	add	w3, w3, 1
	ldr	x18, [x18, 120]
	and	w3, w3, 255
	add	x15, x18, x15
	ldrb	w18, [x19, 57]
	csel	w16, w16, w18, eq
	ldrb	w15, [x15, w17, sxtw]
	cmp	w16, w3
	orr	w6, w6, w15, lsl 20
	beq	.L678
.L541:
	strb	w3, [x1, -3]
.L539:
	tst	x5, 71776119061217280
	beq	.L542
	ldrb	w30, [x8, -2]
	lsr	x17, x0, 51
	ldrb	w3, [x1, -2]
	ubfiz	x17, x17, 5, 5
	ubfx	x15, x2, 51, 5
	ldrb	w16, [x19, 56]
	add	x18, x19, x30, sxtw 3
	orr	x15, x17, x15
	lsl	w17, w3, 10
	cmp	w30, 0
	add	w3, w3, 1
	ldr	x18, [x18, 120]
	and	w3, w3, 255
	add	x15, x18, x15
	ldrb	w18, [x19, 57]
	csel	w16, w16, w18, eq
	ldrb	w15, [x15, w17, sxtw]
	cmp	w16, w3
	orr	w6, w6, w15, lsl 24
	beq	.L679
.L544:
	strb	w3, [x1, -2]
.L542:
	tst	x5, -72057594037927936
	beq	.L545
	ldrb	w17, [x8, -1]
	lsr	x15, x0, 59
	ldrb	w5, [x1, -1]
	lsl	x15, x15, 5
	cmp	w17, 0
	ldrb	w16, [x19, 56]
	add	x3, x19, x17, sxtw 3
	ldrb	w18, [x19, 57]
	ubfiz	x17, x5, 10, 8
	add	w5, w5, 1
	and	w5, w5, 255
	csel	w16, w16, w18, eq
	ldr	x3, [x3, 120]
	cmp	w16, w5
	add	x3, x3, x17
	add	x3, x3, x2, lsr 59
	ldrb	w3, [x3, x15]
	orr	w6, w6, w3, lsl 28
	beq	.L680
	strb	w5, [x1, -1]
.L545:
	cbnz	w10, .L548
.L549:
	str	w6, [x4]
	mov	w6, 1
.L523:
	add	x7, x7, 8
	add	x1, x1, 8
	add	x8, x8, 8
	add	x4, x4, 4
	cmp	x11, x7
	bne	.L550
	add	x27, x27, x11
	add	x28, x28, x11
	add	x20, x20, x11
	add	x26, x26, x11
	add	x1, x27, 8
	add	x8, x28, 8
	mov	x7, 0
	.p2align 2
.L578:
	ldr	x5, [x26, x7]
	ldr	x0, [x20, x7]
	cmp	x5, x0
	beq	.L551
	eor	x6, x5, x0
	and	x2, x6, 255
	cbz	x2, .L583
	ldrb	w4, [x8, -8]
	lsr	x2, x0, 3
	ldrb	w3, [x1, -8]
	ubfx	x16, x5, 3, 5
	ubfiz	x2, x2, 5, 5
	ldrb	w15, [x19, 56]
	add	x10, x19, x4, sxtw 3
	orr	x2, x2, x16
	lsl	w16, w3, 10
	ldrb	w17, [x19, 57]
	cmp	w4, 0
	add	w3, w3, 1
	ldr	x10, [x10, 120]
	and	w3, w3, 255
	csel	w15, w15, w17, eq
	mov	w4, 0
	add	x2, x10, x2
	cmp	w15, w3
	ldrb	w2, [x2, w16, sxtw]
	lsl	w2, w2, 2
	beq	.L681
.L554:
	strb	w3, [x1, -8]
.L552:
	tst	x6, 65280
	beq	.L555
	ldrb	w16, [x8, -7]
	lsr	x17, x0, 11
	ldrb	w3, [x1, -7]
	ubfx	x18, x5, 11, 5
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
	orr	w2, w2, w10, lsl 6
	beq	.L682
.L557:
	strb	w3, [x1, -7]
.L555:
	tst	x6, 16711680
	beq	.L558
	ldrb	w16, [x8, -6]
	lsr	x17, x0, 19
	ldrb	w3, [x1, -6]
	ubfx	x18, x5, 19, 5
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
	orr	w2, w2, w10, lsl 10
	beq	.L683
.L560:
	strb	w3, [x1, -6]
.L558:
	tst	x6, 4278190080
	beq	.L561
	ldrb	w16, [x8, -5]
	lsr	x17, x0, 27
	ldrb	w3, [x1, -5]
	lsr	w18, w5, 27
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
	orr	w2, w2, w10, lsl 14
	beq	.L684
.L563:
	strb	w3, [x1, -5]
.L561:
	tst	x6, 1095216660480
	beq	.L564
	ldrb	w16, [x8, -4]
	lsr	x17, x0, 35
	ldrb	w3, [x1, -4]
	ubfx	x18, x5, 35, 5
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
	orr	w2, w2, w10, lsl 18
	beq	.L685
.L566:
	strb	w3, [x1, -4]
.L564:
	tst	x6, 280375465082880
	beq	.L567
	ldrb	w16, [x8, -3]
	lsr	x17, x0, 43
	ldrb	w10, [x1, -3]
	ubfx	x18, x5, 43, 5
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
	orr	w2, w2, w3, lsl 22
	beq	.L686
.L569:
	strb	w10, [x1, -3]
.L567:
	tst	x6, 71776119061217280
	beq	.L570
	ldrb	w16, [x8, -2]
	lsr	x17, x0, 51
	ldrb	w10, [x1, -2]
	ubfx	x18, x5, 51, 5
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
	orr	w2, w2, w3, lsl 26
	beq	.L687
.L572:
	strb	w10, [x1, -2]
.L570:
	tst	x6, -72057594037927936
	beq	.L573
	ldrb	w18, [x8, -1]
	lsr	x10, x0, 59
	ldrb	w6, [x1, -1]
	lsl	x10, x10, 5
	ldrb	w15, [x19, 56]
	cmp	w18, 0
	add	x3, x19, x18, sxtw 3
	ldrb	w17, [x19, 57]
	ubfiz	x16, x6, 10, 8
	add	w6, w6, 1
	and	w6, w6, 255
	csel	w15, w15, w17, eq
	ldr	x3, [x3, 120]
	cmp	w15, w6
	add	x3, x3, x16
	add	x3, x3, x5, lsr 59
	ldrb	w3, [x3, x10]
	orr	w2, w2, w3, lsl 30
	beq	.L688
	strb	w6, [x1, -1]
.L573:
	cbnz	w4, .L576
.L577:
	ldr	w0, [x9]
	mov	w6, 1
	orr	w2, w0, w2
	str	w2, [x9]
.L551:
	add	x7, x7, 8
	add	x1, x1, 8
	add	x8, x8, 8
	add	x9, x9, 4
	cmp	x11, x7
	bne	.L578
	add	x27, x27, x11
	add	x28, x28, x11
	add	x20, x20, x11
	add	x26, x26, x11
.L521:
	add	w21, w21, 2
	add	w13, w13, w14
	cmp	w22, w21
	bgt	.L579
	str	w6, [x25]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 112
	ret
	.p2align 3
.L680:
	and	x0, x0, 72057594037927935
	and	x2, x2, -72057594037927936
	orr	x0, x2, x0
	strb	wzr, [x1, -1]
.L548:
	str	x0, [x20, x7]
	b	.L549
	.p2align 3
.L679:
	and	x3, x2, 71776119061217280
	and	x0, x0, -71776119061217281
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L544
	.p2align 3
.L677:
	and	x3, x2, 1095216660480
	and	x0, x0, -1095216660481
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L538
	.p2align 3
.L678:
	and	x3, x2, 280375465082880
	and	x0, x0, -280375465082881
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L541
	.p2align 3
.L676:
	and	x3, x2, 4278190080
	and	x0, x0, -4278190081
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L535
	.p2align 3
.L674:
	and	x3, x2, 65280
	and	x0, x0, -65281
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L529
	.p2align 3
.L675:
	and	x3, x2, 16711680
	and	x0, x0, -16711681
	orr	x0, x3, x0
	mov	w10, 1
	mov	w3, 0
	b	.L532
	.p2align 3
.L673:
	bfi	x0, x2, 0, 8
	mov	w15, 0
	mov	w10, 1
	b	.L526
	.p2align 3
.L688:
	and	x0, x0, 72057594037927935
	and	x5, x5, -72057594037927936
	orr	x0, x5, x0
	strb	wzr, [x1, -1]
.L576:
	str	x0, [x20, x7]
	b	.L577
	.p2align 3
.L685:
	and	x3, x5, 1095216660480
	and	x0, x0, -1095216660481
	orr	x0, x3, x0
	mov	w4, 1
	mov	w3, 0
	b	.L566
	.p2align 3
.L686:
	and	x0, x0, -280375465082881
	and	x3, x5, 280375465082880
	orr	x0, x3, x0
	mov	w10, 0
	mov	w4, 1
	b	.L569
	.p2align 3
.L687:
	and	x0, x0, -71776119061217281
	and	x3, x5, 71776119061217280
	orr	x0, x3, x0
	mov	w10, 0
	mov	w4, 1
	b	.L572
	.p2align 3
.L683:
	and	x3, x5, 16711680
	and	x0, x0, -16711681
	orr	x0, x3, x0
	mov	w4, 1
	mov	w3, 0
	b	.L560
	.p2align 3
.L684:
	and	x3, x5, 4278190080
	and	x0, x0, -4278190081
	orr	x0, x3, x0
	mov	w4, 1
	mov	w3, 0
	b	.L563
	.p2align 3
.L682:
	and	x3, x5, 65280
	and	x0, x0, -65281
	orr	x0, x3, x0
	mov	w4, 1
	mov	w3, 0
	b	.L557
	.p2align 3
.L681:
	bfi	x0, x5, 0, 8
	mov	w3, 0
	mov	w4, 1
	b	.L554
	.p2align 3
.L583:
	mov	w2, 0
	mov	w4, 0
	b	.L552
	.p2align 3
.L581:
	mov	w6, 0
	mov	w10, 0
	b	.L524
.L672:
	add	w22, w22, w22, lsr 31
	lsr	w14, w1, 2
	asr	w22, w22, 1
	mov	x0, 0
	mov	w21, 0
	b	.L518
.L519:
	add	w21, w22, w22, lsr 31
	lsr	w14, w1, 2
	asr	w21, w21, 1
	add	x25, x5, 64
	mul	w0, w24, w21
	mul	w1, w21, w1
	sbfiz	x0, x0, 3, 32
	add	x27, x3, x1
	add	x26, x26, x0
	add	x20, x2, x0
	mul	w0, w14, w21
	add	x28, x4, x1
	sxtw	x0, w0
	b	.L518
.L580:
	mov	w6, 0
	str	w6, [x25]
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
	stp	x27, x28, [sp, 80]
	add	x22, x22, 40
	stp	x23, x24, [sp, 48]
	mov	x5, x0
	stp	x25, x26, [sp, 64]
	mov	x20, x2
	mov	x25, x4
	mov	x24, x3
	ldr	x0, [x19, 216]
	add	x28, x19, 60
	ldr	w13, [x22, 76]
	ldr	w4, [x0, 40]
	lsr	w27, w13, 3
	ldr	w0, [x22, 80]
	beq	.L774
	mov	w26, w0
	cmp	w6, 3
	mov	w23, 0
	beq	.L775
.L691:
	ldr	w1, [x22, 156]
	lsr	w13, w13, 2
	cbz	w1, .L692
	sub	w2, w26, w23
	sub	w0, w0, w26
	str	x5, [x29, 96]
	mov	w1, 0
	stp	w4, w13, [x29, 104]
	mul	w2, w2, w13
	mul	w0, w0, w13
	sxtw	x2, w2
	add	x0, x5, x0
	bl	memset
	ldr	w0, [x22, 80]
	cmp	w23, w26
	ldp	w4, w13, [x29, 104]
	sub	w0, w0, #1
	sub	w0, w0, w23
	ldr	x5, [x29, 96]
	mul	w0, w0, w13
	neg	w13, w13
	add	x22, x5, x0
	bge	.L727
.L784:
	sub	w12, w27, #1
	sxtw	x13, w13
	add	x12, x12, 1
	sub	w4, w4, #7
	lsl	x12, x12, 3
	lsl	w11, w27, 1
	mov	w3, 0
	.p2align 2
.L694:
	cbz	w27, .L725
	add	x1, x24, 8
	add	x6, x25, 8
	mov	w9, 0
	mov	x7, 0
	.p2align 2
.L724:
	ldr	x2, [x21, x7]
	cmp	w4, 4
	ldr	x0, [x20, x7]
	bhi	.L696
	and	x2, x2, -506381209866536712
	and	x0, x0, -506381209866536712
.L696:
	cmp	x2, x0
	beq	.L697
	eor	x5, x2, x0
	add	x3, x22, x9, sxtw
	and	x8, x5, 255
	cbz	x8, .L728
	ldrb	w14, [x6, -8]
	lsr	x8, x0, 3
	ldrb	w10, [x1, -8]
	ubfx	x16, x2, 3, 5
	ubfiz	x8, x8, 5, 5
	ldrb	w15, [x19, 56]
	add	x18, x19, x14, sxtw 3
	orr	x8, x8, x16
	ldrb	w17, [x19, 57]
	lsl	w16, w10, 10
	cmp	w14, 0
	add	w10, w10, 1
	ldr	x18, [x18, 120]
	and	w10, w10, 255
	csel	w15, w15, w17, eq
	mov	w14, 0
	add	x8, x18, x8
	cmp	w15, w10
	ldrb	w8, [x8, w16, sxtw]
	beq	.L776
.L700:
	strb	w10, [x1, -8]
.L698:
	tst	x5, 65280
	beq	.L701
	ldrb	w30, [x6, -7]
	lsr	x17, x0, 11
	ldrb	w10, [x1, -7]
	ubfiz	x17, x17, 5, 5
	ubfx	x15, x2, 11, 5
	ldrb	w16, [x19, 56]
	add	x18, x19, x30, sxtw 3
	orr	x15, x17, x15
	lsl	w17, w10, 10
	cmp	w30, 0
	add	w10, w10, 1
	ldr	x18, [x18, 120]
	and	w10, w10, 255
	add	x15, x18, x15
	ldrb	w18, [x19, 57]
	csel	w16, w16, w18, eq
	ldrb	w15, [x15, w17, sxtw]
	cmp	w16, w10
	ubfiz	w15, w15, 2, 6
	orr	w8, w15, w8
	beq	.L777
.L703:
	strb	w10, [x1, -7]
.L701:
	tst	x5, 16711680
	beq	.L704
	ldrb	w30, [x6, -6]
	lsr	x17, x0, 19
	ldrb	w10, [x1, -6]
	ubfiz	x17, x17, 5, 5
	ubfx	x15, x2, 19, 5
	ldrb	w16, [x19, 56]
	add	x18, x19, x30, sxtw 3
	orr	x15, x17, x15
	lsl	w17, w10, 10
	cmp	w30, 0
	add	w10, w10, 1
	ldr	x18, [x18, 120]
	and	w10, w10, 255
	add	x15, x18, x15
	ldrb	w18, [x19, 57]
	csel	w16, w16, w18, eq
	ldrb	w15, [x15, w17, sxtw]
	cmp	w16, w10
	ubfiz	w15, w15, 4, 4
	orr	w8, w15, w8
	beq	.L778
.L706:
	strb	w10, [x1, -6]
.L704:
	tst	x5, 4278190080
	beq	.L707
	ldrb	w30, [x6, -5]
	lsr	x17, x0, 27
	ldrb	w10, [x1, -5]
	ubfiz	x17, x17, 5, 5
	lsr	w15, w2, 27
	ldrb	w16, [x19, 56]
	add	x18, x19, x30, sxtw 3
	orr	x15, x17, x15
	lsl	w17, w10, 10
	cmp	w30, 0
	add	w10, w10, 1
	ldr	x18, [x18, 120]
	and	w10, w10, 255
	add	x15, x18, x15
	ldrb	w18, [x19, 57]
	csel	w16, w16, w18, eq
	ldrb	w15, [x15, w17, sxtw]
	cmp	w16, w10
	ubfiz	w15, w15, 6, 2
	orr	w8, w15, w8
	beq	.L779
.L709:
	strb	w10, [x1, -5]
.L707:
	strb	w8, [x3]
	tst	x5, 1095216660480
	mov	w8, 0
	beq	.L710
	ldrb	w16, [x6, -4]
	lsr	x17, x0, 35
	ldrb	w10, [x1, -4]
	ubfx	x18, x2, 35, 5
	cmp	w16, 0
	ubfiz	x17, x17, 5, 5
	add	x30, x19, x16, sxtw 3
	orr	x8, x17, x18
	ldrb	w15, [x19, 56]
	lsl	w17, w10, 10
	ldrb	w18, [x19, 57]
	add	w10, w10, 1
	ldr	x16, [x30, 120]
	and	w10, w10, 255
	csel	w15, w15, w18, eq
	add	x8, x16, x8
	cmp	w15, w10
	ldrb	w8, [x8, w17, sxtw]
	beq	.L780
.L712:
	strb	w10, [x1, -4]
.L710:
	tst	x5, 280375465082880
	beq	.L713
	ldrb	w30, [x6, -3]
	lsr	x17, x0, 43
	ldrb	w10, [x1, -3]
	ubfiz	x17, x17, 5, 5
	ubfx	x15, x2, 43, 5
	ldrb	w16, [x19, 56]
	add	x18, x19, x30, sxtw 3
	orr	x15, x17, x15
	lsl	w17, w10, 10
	cmp	w30, 0
	add	w10, w10, 1
	ldr	x18, [x18, 120]
	and	w10, w10, 255
	add	x15, x18, x15
	ldrb	w18, [x19, 57]
	csel	w16, w16, w18, eq
	ldrb	w15, [x15, w17, sxtw]
	cmp	w16, w10
	ubfiz	w15, w15, 2, 6
	orr	w8, w15, w8
	beq	.L781
.L715:
	strb	w10, [x1, -3]
.L713:
	tst	x5, 71776119061217280
	beq	.L716
	ldrb	w30, [x6, -2]
	lsr	x17, x0, 51
	ldrb	w10, [x1, -2]
	ubfiz	x17, x17, 5, 5
	ubfx	x15, x2, 51, 5
	ldrb	w16, [x19, 56]
	add	x18, x19, x30, sxtw 3
	orr	x15, x17, x15
	lsl	w17, w10, 10
	cmp	w30, 0
	add	w10, w10, 1
	ldr	x18, [x18, 120]
	and	w10, w10, 255
	add	x15, x18, x15
	ldrb	w18, [x19, 57]
	csel	w16, w16, w18, eq
	ldrb	w15, [x15, w17, sxtw]
	cmp	w16, w10
	ubfiz	w15, w15, 4, 4
	orr	w8, w15, w8
	beq	.L782
.L718:
	strb	w10, [x1, -2]
.L716:
	tst	x5, -72057594037927936
	beq	.L719
	ldrb	w17, [x6, -1]
	lsr	x15, x0, 59
	ldrb	w10, [x1, -1]
	lsl	x15, x15, 5
	cmp	w17, 0
	ldrb	w16, [x19, 56]
	add	x5, x19, x17, sxtw 3
	ldrb	w18, [x19, 57]
	ubfiz	x17, x10, 10, 8
	add	w10, w10, 1
	and	w10, w10, 255
	csel	w16, w16, w18, eq
	ldr	x5, [x5, 120]
	cmp	w16, w10
	add	x5, x5, x17
	add	x5, x5, x2, lsr 59
	ldrb	w5, [x5, x15]
	ubfiz	w5, w5, 6, 2
	orr	w8, w5, w8
	beq	.L783
	strb	w10, [x1, -1]
.L719:
	cbnz	w14, .L722
.L723:
	strb	w8, [x3, 1]
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
.L725:
	add	w23, w23, 1
	add	x22, x22, x13
	cmp	w26, w23
	bne	.L694
	str	w3, [x28]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 112
	ret
	.p2align 3
.L783:
	and	x0, x0, 72057594037927935
	and	x2, x2, -72057594037927936
	orr	x0, x2, x0
	strb	wzr, [x1, -1]
.L722:
	str	x0, [x20, x7]
	b	.L723
	.p2align 3
.L782:
	and	x10, x2, 71776119061217280
	and	x0, x0, -71776119061217281
	orr	x0, x10, x0
	mov	w14, 1
	mov	w10, 0
	b	.L718
	.p2align 3
.L781:
	and	x10, x2, 280375465082880
	and	x0, x0, -280375465082881
	orr	x0, x10, x0
	mov	w14, 1
	mov	w10, 0
	b	.L715
	.p2align 3
.L779:
	and	x10, x2, 4278190080
	and	x0, x0, -4278190081
	orr	x0, x10, x0
	mov	w14, 1
	mov	w10, 0
	b	.L709
	.p2align 3
.L780:
	and	x10, x2, 1095216660480
	and	x0, x0, -1095216660481
	orr	x0, x10, x0
	mov	w14, 1
	mov	w10, 0
	b	.L712
	.p2align 3
.L778:
	and	x10, x2, 16711680
	and	x0, x0, -16711681
	orr	x0, x10, x0
	mov	w14, 1
	mov	w10, 0
	b	.L706
	.p2align 3
.L776:
	bfi	x0, x2, 0, 8
	mov	w10, 0
	mov	w14, 1
	b	.L700
	.p2align 3
.L777:
	and	x10, x2, 65280
	and	x0, x0, -65281
	orr	x0, x10, x0
	mov	w14, 1
	mov	w10, 0
	b	.L703
	.p2align 3
.L728:
	mov	w8, 0
	mov	w14, 0
	b	.L698
.L692:
	sub	w2, w26, w23
	mul	w22, w23, w13
	str	w4, [x29, 96]
	mov	w1, 0
	str	w13, [x29, 108]
	mul	w2, w2, w13
	add	x22, x5, x22, sxtw
	mov	x0, x22
	sxtw	x2, w2
	bl	memset
	ldr	w4, [x29, 96]
	cmp	w23, w26
	ldr	w13, [x29, 108]
	blt	.L784
.L727:
	mov	w3, 0
	str	w3, [x28]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 112
	ret
.L774:
	add	w26, w0, w0, lsr 31
	mov	w23, 0
	asr	w26, w26, 1
	b	.L691
.L775:
	add	w23, w0, w0, lsr 31
	add	x28, x19, 64
	asr	w23, w23, 1
	mul	w1, w27, w23
	sbfiz	x1, x1, 3, 32
	add	x21, x21, x1
	add	x20, x2, x1
	mul	w1, w23, w13
	add	x24, x3, x1
	add	x25, x25, x1
	b	.L691
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
	beq	.L858
	cmp	w4, 3
	beq	.L788
	lsr	w27, w8, 2
	mov	x0, 0
	mov	w22, 0
.L787:
	sub	w2, w23, w22
	add	x0, x24, x0
	mov	w1, 0
	mul	w2, w2, w27
	sxtw	x2, w2
	bl	memset
	cmp	w23, w22
	ble	.L785
	sub	w7, w20, #1
	mul	w8, w22, w27
	add	x7, x7, 1
	lsl	w9, w27, 1
	lsl	x7, x7, 3
	mov	w6, 3
	mov	w5, 12
	.p2align 2
.L815:
	add	x3, x24, x8, sxtw
	cbz	w20, .L790
	mov	x4, 0
	.p2align 2
.L802:
	ldr	x12, [x25, x4, lsl 3]
	ldr	x1, [x26, x4, lsl 3]
	cmp	x12, x1
	beq	.L791
	ldr	x2, [x21, 216]
	mov	w0, 0
	eor	x10, x12, x1
	ldr	w2, [x2, 40]
	sub	w2, w2, #2
	cmp	w2, 9
	bhi	.L817
	and	x1, x1, -506381209866536712
	eor	x10, x12, x1
	cmp	x12, x1
	bne	.L817
.L793:
	str	w0, [x3, x4, lsl 2]
.L791:
	add	x4, x4, 1
	cmp	w20, w4
	bgt	.L802
	add	x25, x25, x7
	add	x26, x26, x7
	mov	x10, 0
	b	.L814
	.p2align 3
.L860:
	and	x1, x1, -506381209866536712
	eor	x11, x2, x1
	cmp	x2, x1
	bne	.L818
.L805:
	ldr	w1, [x3, x10, lsl 2]
	orr	w0, w1, w0
	str	w0, [x3, x10, lsl 2]
.L803:
	add	x10, x10, 1
	cmp	w20, w10
	ble	.L859
.L814:
	ldr	x2, [x25, x10, lsl 3]
	ldr	x1, [x26, x10, lsl 3]
	cmp	x2, x1
	beq	.L803
	ldr	x4, [x21, 216]
	mov	w0, 0
	eor	x11, x2, x1
	ldr	w4, [x4, 40]
	sub	w4, w4, #2
	cmp	w4, 9
	bls	.L860
.L818:
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
	b	.L805
	.p2align 3
.L817:
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
	b	.L793
	.p2align 3
.L859:
	add	x25, x25, x7
	add	x26, x26, x7
.L790:
	add	w22, w22, 2
	add	w8, w8, w9
	cmp	w23, w22
	bgt	.L815
.L785:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 96
	ret
.L858:
	add	w23, w23, w23, lsr 31
	lsr	w27, w8, 2
	asr	w23, w23, 1
	mov	x0, 0
	mov	w22, 0
	b	.L787
.L788:
	add	w22, w23, w23, lsr 31
	lsr	w27, w8, 2
	asr	w22, w22, 1
	mul	w0, w20, w22
	sbfiz	x0, x0, 3, 32
	add	x25, x1, x0
	add	x26, x2, x0
	mul	w0, w22, w27
	sxtw	x0, w0
	b	.L787
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
	beq	.L903
	mov	w26, w0
	cmp	w4, 3
	mov	w25, 0
	beq	.L904
.L863:
	ldr	w1, [x23, 156]
	lsr	w27, w10, 2
	cbz	w1, .L864
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
.L867:
	cmp	w26, w25
	ble	.L861
	sub	w9, w22, #1
	sxtw	x10, w27
	add	x9, x9, 1
	mov	w8, 3
	lsl	x9, x9, 3
	.p2align 2
.L866:
	mov	x4, 0
	cbz	w22, .L881
	.p2align 2
.L900:
	ldr	x13, [x20, x4, lsl 3]
	ldr	x1, [x21, x4, lsl 3]
	cmp	x13, x1
	beq	.L868
	ldr	x2, [x24, 216]
	mov	w0, 0
	eor	x5, x13, x1
	ldr	w2, [x2, 40]
	sub	w2, w2, #2
	cmp	w2, 9
	bhi	.L882
	and	x1, x1, -506381209866536712
	eor	x5, x13, x1
	cmp	x13, x1
	bne	.L882
.L870:
	strh	w0, [x28, x4, lsl 1]
.L868:
	add	x4, x4, 1
	cmp	w22, w4
	bgt	.L900
	add	x20, x20, x9
	add	x21, x21, x9
.L881:
	add	w25, w25, 1
	add	x28, x28, x10
	cmp	w26, w25
	bne	.L866
.L861:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	ret
	.p2align 3
.L882:
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
	b	.L870
.L864:
	sub	w2, w26, w25
	mul	w23, w25, w27
	mov	w1, 0
	mul	w2, w2, w27
	add	x28, x28, x23, sxtw
	mov	x0, x28
	sxtw	x2, w2
	bl	memset
	b	.L867
.L903:
	add	w26, w0, w0, lsr 31
	mov	w25, 0
	asr	w26, w26, 1
	b	.L863
.L904:
	add	w25, w0, w0, lsr 31
	asr	w25, w25, 1
	mul	w1, w22, w25
	sbfiz	x1, x1, 3, 32
	add	x20, x20, x1
	add	x21, x2, x1
	b	.L863
	.size	direct_mode_data_change_part, .-direct_mode_data_change_part
	.align	2
	.p2align 3,,7
	.type	is_full_refresh_done, %function
is_full_refresh_done:
	ldp	w5, w7, [x0, 80]
	ldr	w2, [x0, 676]
	cmp	w7, 0
	add	w1, w7, 7
	csel	w1, w1, w7, lt
	ldr	x6, [x0, 160]
	cmp	w2, 3
	asr	w1, w1, 3
	beq	.L907
	cmp	w2, 5
	bne	.L921
	cmp	w1, 0
	ble	.L909
	mov	x4, -8
	ldrb	w8, [x0, 56]
	add	x0, x4, x5, sxtw 3
	ldrb	w0, [x6, x0]
	cmp	x0, 255
	ccmp	x0, x8, 0, ne
	bcc	.L914
	lsl	w3, w5, 1
	mov	x0, x4
	mov	w2, 1
	.p2align 2
.L911:
	add	w2, w2, 1
	add	x4, x0, x3, sxtw 3
	cmp	w1, w2
	blt	.L909
	ldrb	w4, [x6, x4]
	add	w3, w3, w5
	cmp	x4, 255
	ccmp	x4, x8, 0, ne
	bcs	.L911
.L914:
	mov	w0, 0
	ret
	.p2align 3
.L921:
	mul	w1, w1, w5
	ldrb	w2, [x0, 56]
	add	x1, x6, x1, sxtw 3
	ldrb	w0, [x1, -8]
	cmp	x0, 255
	ccmp	x0, x2, 0, ne
	bcc	.L914
.L909:
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
.L907:
	add	w2, w5, w5, lsr 31
	ldrb	w3, [x0, 56]
	asr	w2, w2, 1
	mov	w0, 0
	mul	w2, w2, w1
	ldr	x2, [x6, w2, sxtw 3]
	and	x2, x2, 255
	cmp	x2, 255
	ccmp	x2, x3, 0, ne
	bcc	.L923
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
	bls	.L909
	ret
	.p2align 3
.L923:
	ret
	.size	is_full_refresh_done, .-is_full_refresh_done
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
	beq	.L927
	cmp	w0, 4
	beq	.L928
	cmp	w0, 1
	beq	.L973
	ldr	w0, [x19, 72]
	cbnz	w0, .L947
	ldr	w0, [x19, 688]
	cbz	w0, .L947
	ldr	x3, [x21, 8]
	mov	w2, 0
	mov	w1, 0
	mov	x0, x3
	ldr	x3, [x3, 144]
	blr	x3
	str	wzr, [x19, 52]
	ldr	w0, [x19, 624]
	cmp	w0, 0
	ble	.L945
	ldr	x0, [x19, 96]
	adrp	x1, .LC27
	add	x1, x1, :lo12:.LC27
	bl	_dev_info
	b	.L945
	.p2align 3
.L973:
	ldr	w0, [x19, 72]
	cbnz	w0, .L974
	ldr	w1, [x19, 92]
	mov	x0, x21
	cbnz	w1, .L949
.L942:
	ldr	x3, [x0, 8]
	mov	w2, 0
	mov	w1, 0
	mov	x0, x3
	ldr	x3, [x3, 144]
	blr	x3
	str	wzr, [x19, 52]
	ldr	w0, [x19, 624]
	cmp	w0, 0
	ble	.L943
	ldr	x0, [x19, 96]
	adrp	x1, .LC27
	add	x1, x1, :lo12:.LC27
	bl	_dev_info
.L943:
	ldr	w3, [x19, 724]
	tbnz	w3, #31, .L945
	ldr	w0, [x19, 80]
	cmp	w3, w0
	bge	.L945
	ldr	w2, [x19, 720]
	tbnz	w2, #31, .L945
	ldr	w0, [x19, 84]
	cmp	w2, w0
	bge	.L945
	ldrb	w0, [x19, 728]
	adrp	x1, .LC28
	add	x4, x21, 961
	add	x1, x1, :lo12:.LC28
	add	x0, x19, x0
	strb	wzr, [x0, 729]
	ldr	x0, [x19, 96]
	bl	_dev_info
	b	.L945
	.p2align 3
.L974:
	ldr	w0, [x19, 92]
	cbz	w0, .L947
	ldr	x0, [x19, 216]
	ldr	w1, [x21, 836]
	ldr	w0, [x0, 40]
	cbz	w1, .L941
	sub	w0, w0, #12
	cmp	w0, 2
	bls	.L947
.L941:
	ldr	w0, [x19, 576]
	cbz	w0, .L949
.L947:
	add	x20, x20, :lo12:.LANCHOR0
	mov	w0, 1
	str	w0, [x19, 52]
	ldr	x0, [x20, 8]
	bl	wake_up_process
	ldr	x21, [sp, 32]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L928:
	ldr	w0, [x19, 60]
	mov	w1, 1
	str	w1, [x19, 76]
	cbnz	w0, .L936
	ldr	w0, [x19, 64]
	cbnz	w0, .L936
	ldr	w0, [x19, 68]
	cbz	w0, .L936
	ldr	w1, [x19, 624]
	mov	x0, x21
	cmp	w1, 0
	ble	.L933
	ldr	x0, [x19, 96]
	adrp	x1, .LC23
	add	x1, x1, :lo12:.LC23
	bl	_dev_info
	ldr	x0, [x20, #:lo12:.LANCHOR0]
.L933:
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
	ldr	x0, [x19, 168]
.L970:
	mul	w2, w2, w3
	mov	w1, 0
	sxtw	x2, w2
	bl	memset
.L971:
	adrp	x2, jiffies
	mov	x1, 402653184
	add	x0, x21, 752
	ldr	x2, [x2, #:lo12:jiffies]
	add	x1, x2, x1
	bl	mod_timer
	str	wzr, [x19, 52]
.L945:
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
.L927:
	ldr	w0, [x19, 92]
	cbnz	w0, .L975
	ldr	w0, [x19, 60]
	cbnz	w0, .L936
	ldr	w0, [x19, 64]
	cbnz	w0, .L936
	ldr	w0, [x19, 68]
	cbnz	w0, .L976
.L936:
	add	x20, x20, :lo12:.LANCHOR0
	ldr	x0, [x20, 8]
	bl	wake_up_process
	ldr	x21, [sp, 32]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L975:
	ldr	w1, [x19, 624]
	mov	x0, x21
	cmp	w1, 0
	ble	.L935
	ldr	x0, [x19, 96]
	adrp	x1, .LC24
	add	x1, x1, :lo12:.LC24
	bl	_dev_info
	ldr	x0, [x20, #:lo12:.LANCHOR0]
.L935:
	ldr	x3, [x0, 8]
	mov	w2, 0
	mov	w1, 0
	mov	x0, x3
	ldr	x3, [x3, 144]
	blr	x3
	b	.L971
	.p2align 3
.L949:
	ldr	w1, [x19, 624]
	mov	x0, x21
	cmp	w1, 0
	ble	.L942
	ldr	x0, [x19, 96]
	adrp	x1, .LC26
	add	x1, x1, :lo12:.LC26
	bl	_dev_info
	ldr	x0, [x20, #:lo12:.LANCHOR0]
	b	.L942
	.p2align 3
.L976:
	ldr	w1, [x19, 624]
	mov	x0, x21
	cmp	w1, 0
	ble	.L938
	ldr	x0, [x19, 96]
	adrp	x1, .LC25
	add	x1, x1, :lo12:.LC25
	bl	_dev_info
	ldr	x0, [x20, #:lo12:.LANCHOR0]
.L938:
	ldr	x3, [x0, 8]
	mov	w2, 0
	mov	w1, 0
	mov	x0, x3
	ldr	x3, [x3, 144]
	blr	x3
	ldp	w3, w2, [x19, 80]
	ldr	x0, [x19, 160]
	b	.L970
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
	stp	x29, x30, [sp, -192]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x19, x0
	stp	x23, x24, [sp, 48]
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	adrp	x24, __stack_chk_guard
	stp	x25, x26, [sp, 64]
	add	x0, x24, :lo12:__stack_chk_guard
	ldr	x21, [x19], 232
	ldr	x1, [x0]
	str	x1, [x29, 184]
	mov	x1,0
	ldr	w0, [x19, 28]
	cmp	w0, 5242880
	bgt	.L999
	ldr	x0, [x21, 752]
	adrp	x1, .LC30
	mov	w2, 0
	add	x1, x1, :lo12:.LC30
	bl	of_parse_phandle
	cbz	x0, .L991
	add	x2, x29, 88
	mov	w1, 0
	bl	of_address_to_resource
	mov	w25, w0
	cbnz	w0, .L1000
	ldp	x1, x2, [x29, 88]
	str	x1, [x20, 232]
	mov	w0, 58720255
	add	x2, x2, 1
	sub	x2, x2, x1
	str	w2, [x19, 24]
	cmp	w2, w0
	ble	.L1001
	mov	x3, 1
	sxtw	x2, w2
	mov	x0, x21
	bl	devm_memremap
	str	x0, [x19, 8]
	mov	x1, x0
	cbz	x0, .L1002
	ldr	w2, [x19, 24]
	mov	w4, 4
	ldr	x0, [x20, 232]
	mov	w3, 5242880
	bl	ebc_buf_init
	mov	w25, w0
	cbnz	w0, .L989
	add	x0, x20, 864
	add	x26, x20, 904
	mov	x23, x0
	mov	x22, x0
	mov	x21, 0
	stp	xzr, xzr, [x0]
	stp	xzr, xzr, [x0, 16]
	str	xzr, [x20, 896]
.L987:
	ldr	x0, [x19]
	mov	x1, 5242880
	add	x0, x21, x0
	bl	ebc_get_dma_buf
	cmn	x0, #4096
	bhi	.L994
	str	x0, [x22], 8
	add	x21, x21, 5242880
	cmp	x22, x26
	bne	.L987
	ldr	x1, [x19, 8]
	mov	x0, 20971520
	mov	x4, 2097152
	mov	x2, 26214400
	add	x0, x1, x0
	str	x0, [x19, 16]
	str	x4, [x20, 80]
	add	x3, x1, x2
	str	x3, [x20, 64]
	ldr	x0, [x19]
	add	x2, x0, x2
	str	x2, [x20, 72]
	str	x3, [x19, 176]
	mov	x3, 28311552
	str	x4, [x20, 104]
	add	x2, x1, x3
	add	x0, x0, x3
	stp	x2, x0, [x20, 88]
	str	x2, [x19, 184]
	mov	x0, 30408704
	mov	x2, 35651584
	add	x0, x1, x0
	add	x2, x1, x2
	str	x0, [x19, 136]
	mov	x0, 40894464
	add	x0, x1, x0
	stp	x2, x0, [x19, 144]
	mov	x2, 46137344
	add	x2, x1, x2
	mov	x3, 57671680
	mov	x0, 51380224
	add	x0, x1, x0
	stp	x2, x0, [x19, 160]
	mov	x2, 56623104
	add	x2, x1, x2
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
.L979:
	add	x24, x24, :lo12:__stack_chk_guard
	mov	w0, w25
	ldr	x2, [x29, 184]
	ldr	x1, [x24]
	eor	x1, x2, x1
	cbnz	x1, .L1003
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 192
	ret
	.p2align 3
.L994:
	ldr	x0, [x23]
	cbz	x0, .L988
	bl	dma_buf_put
	str	xzr, [x23]
.L988:
	add	x23, x23, 8
	cmp	x26, x23
	bne	.L994
.L989:
	mov	w25, -12
	b	.L979
	.p2align 3
.L1000:
	adrp	x1, .LC31
	mov	x0, x21
	add	x1, x1, :lo12:.LC31
	bl	_dev_err
	b	.L979
	.p2align 3
.L999:
	adrp	x1, .LC29
	mov	x0, x21
	add	x1, x1, :lo12:.LC29
	mov	w25, -19
	bl	_dev_err
	b	.L979
	.p2align 3
.L1001:
	adrp	x1, .LC32
	mov	w2, 58720256
	add	x1, x1, :lo12:.LC32
	mov	x0, x21
	mov	w25, -19
	bl	_dev_err
	b	.L979
.L991:
	mov	w25, -19
	b	.L979
.L1002:
	adrp	x1, .LC33
	mov	x0, x21
	add	x1, x1, :lo12:.LC33
	mov	w25, -12
	bl	_dev_err
	b	.L979
.L1003:
	bl	__stack_chk_fail
	.size	ebc_buffer_manage_init, .-ebc_buffer_manage_init
	.align	2
	.p2align 3,,7
	.type	ebc_lut_table_init, %function
ebc_lut_table_init:
	stp	x29, x30, [sp, -176]!
	adrp	x1, .LC34
	add	x1, x1, :lo12:.LC34
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	adrp	x19, __stack_chk_guard
	str	x23, [sp, 48]
	add	x0, x19, :lo12:__stack_chk_guard
	ldr	x23, [x20, 96]
	ldr	x2, [x0]
	str	x2, [x29, 168]
	mov	x2,0
	ldr	x21, [x23, 752]
	mov	x0, x21
	bl	of_parse_phandle
	cbz	x0, .L1009
	mov	x22, x0
	adrp	x1, .LC35
	add	x2, x29, 68
	add	x1, x1, :lo12:.LC35
	mov	x0, x21
	bl	of_get_property
	ldr	w1, [x29, 68]
	cmp	w1, 0
	ble	.L1010
	bl	pvi_wf_add_custom_mode_table
	cbnz	w0, .L1009
.L1010:
	add	x2, x29, 72
	mov	w1, 0
	mov	x0, x22
	bl	of_address_to_resource
	mov	w21, w0
	cbz	w0, .L1018
.L1004:
	add	x19, x19, :lo12:__stack_chk_guard
	mov	w0, w21
	ldr	x2, [x29, 168]
	ldr	x1, [x19]
	eor	x1, x2, x1
	cbnz	x1, .L1019
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 176
	ret
	.p2align 3
.L1018:
	ldp	x0, x22, [x29, 72]
	mov	x3, 1
	str	x0, [x20, 40]
	add	x22, x22, x3
	mov	x1, x0
	sub	x22, x22, x0
	str	w22, [x20, 48]
	sxtw	x2, w22
	mov	x0, x23
	bl	devm_memremap
	str	x0, [x20, 200]
	cbz	x0, .L1020
	bl	epd_lut_from_mem_init
	tbz	w0, #31, .L1004
	ldr	x0, [x20, 96]
	adrp	x1, .LC37
	add	x1, x1, :lo12:.LC37
	bl	_dev_err
	ldr	x0, [x20, 96]
	mov	w2, w22
	ldr	x1, [x20, 200]
	bl	epd_lut_from_file_init
	tbz	w0, #31, .L1004
	ldr	x0, [x20, 96]
	mov	w21, -1
	adrp	x1, .LC38
	add	x1, x1, :lo12:.LC38
	bl	_dev_err
	b	.L1004
	.p2align 3
.L1009:
	mov	w21, -19
	b	.L1004
.L1020:
	ldr	x0, [x20, 96]
	adrp	x2, .LANCHOR3
	adrp	x1, .LC36
	mov	w3, 4230
	add	x2, x2, :lo12:.LANCHOR3
	add	x1, x1, :lo12:.LC36
	mov	w21, -12
	bl	_dev_err
	b	.L1004
.L1019:
	bl	__stack_chk_fail
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
	cbnz	w23, .L1034
.L1022:
	ldr	w0, [x22, 724]
	tbnz	w0, #31, .L1023
	ldr	w1, [x22, 80]
	cmp	w0, w1
	bge	.L1023
	ldr	w1, [x22, 720]
	tbnz	w1, #31, .L1023
	ldr	w2, [x22, 84]
	cmp	w1, w2
	bge	.L1023
	add	x4, x20, x20, lsl 1
	cmp	w1, 0
	add	x4, x19, x4, lsl 3
	mul	w0, w0, w2
	add	w3, w1, 3
	ldrb	w5, [x22, 728]
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
	strb	w5, [x22, 728]
	asr	w0, w0, w1
	and	w0, w0, 3
	add	w0, w0, 48
	strb	w0, [x3, 729]
.L1023:
	ldr	x0, [x19]
	ldrsw	x2, [x22, 32]
	cbz	x0, .L1026
	ldr	x1, [x0, 648]
	adrp	x3, dummy_dma_ops
	add	x3, x3, :lo12:dummy_dma_ops
	cmp	x1, 0
	csel	x1, x3, x1, eq
.L1024:
	ldr	x4, [x1, 88]
	cbz	x4, .L1025
	add	x1, x20, x20, lsl 1
	mov	w3, 1
	add	x1, x19, x1, lsl 3
	ldr	x1, [x1, 32]
	blr	x4
.L1025:
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
.L1034:
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
	b	.L1022
	.p2align 3
.L1026:
	adrp	x1, dummy_dma_ops
	add	x1, x1, :lo12:dummy_dma_ops
	b	.L1024
	.size	flip, .-flip
	.align	2
	.p2align 3,,7
	.type	ebc_lut_update, %function
ebc_lut_update:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	adrp	x20, __stack_chk_guard
	stp	x21, x22, [sp, 32]
	add	x3, x20, :lo12:__stack_chk_guard
	str	x23, [sp, 48]
	add	x19, x0, 232
	mov	w23, w2
	mov	w2, 25
	mov	w21, w1
	ldr	x1, [x3]
	str	x1, [x29, 72]
	mov	x1,0
	str	w2, [x29, 68]
	mov	x22, x0
	mov	w1, 1
	bl	ebc_power_set
	ldr	w2, [x19, 704]
	tbnz	w2, #31, .L1036
	str	w2, [x29, 68]
.L1037:
	cmp	w2, 50
	ldr	w0, [x19, 624]
	bgt	.L1074
.L1073:
	ldr	w2, [x29, 68]
.L1042:
	cmp	w0, 0
	ble	.L1045
	ldr	x0, [x19, 96]
	adrp	x1, .LC42
	add	x1, x1, :lo12:.LC42
	bl	_dev_info
	ldr	w2, [x29, 68]
.L1045:
	sub	w1, w21, #1
	cmp	w1, 22
	bls	.L1075
.L1065:
	mov	w1, 3
	.p2align 2
.L1046:
	ldrb	w4, [x19, 708]
	mov	w5, w23
	mov	w3, 32
	add	x0, x22, 336
	bl	epd_lut_get
	mov	w21, w0
	cbz	w0, .L1035
	ldr	x0, [x19, 96]
	adrp	x1, .LC43
	add	x1, x1, :lo12:.LC43
	bl	_dev_err
.L1035:
	add	x20, x20, :lo12:__stack_chk_guard
	mov	w0, w21
	ldr	x2, [x29, 72]
	ldr	x1, [x20]
	eor	x1, x2, x1
	cbnz	x1, .L1076
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 80
	ret
	.p2align 3
.L1075:
	adrp	x0, .L1048
	add	x0, x0, :lo12:.L1048
	ldrb	w0, [x0,w1,uxtw]
	adr	x1, .Lrtx1048
	add	x0, x1, w0, sxtb #2
	br	x0
.Lrtx1048:
	.section	.rodata
	.align	0
	.align	2
.L1048:
	.byte	(.L1047 - .Lrtx1048) / 4
	.byte	(.L1065 - .Lrtx1048) / 4
	.byte	(.L1049 - .Lrtx1048) / 4
	.byte	(.L1050 - .Lrtx1048) / 4
	.byte	(.L1051 - .Lrtx1048) / 4
	.byte	(.L1052 - .Lrtx1048) / 4
	.byte	(.L1053 - .Lrtx1048) / 4
	.byte	(.L1054 - .Lrtx1048) / 4
	.byte	(.L1050 - .Lrtx1048) / 4
	.byte	(.L1051 - .Lrtx1048) / 4
	.byte	(.L1052 - .Lrtx1048) / 4
	.byte	(.L1057 - .Lrtx1048) / 4
	.byte	(.L1057 - .Lrtx1048) / 4
	.byte	(.L1058 - .Lrtx1048) / 4
	.byte	(.L1059 - .Lrtx1048) / 4
	.byte	(.L1058 - .Lrtx1048) / 4
	.byte	(.L1060 - .Lrtx1048) / 4
	.byte	(.L1065 - .Lrtx1048) / 4
	.byte	(.L1065 - .Lrtx1048) / 4
	.byte	(.L1065 - .Lrtx1048) / 4
	.byte	(.L1061 - .Lrtx1048) / 4
	.byte	(.L1058 - .Lrtx1048) / 4
	.byte	(.L1059 - .Lrtx1048) / 4
	.text
	.p2align 3
.L1036:
	ldr	x0, [x22, 16]
	cbz	x0, .L1038
	ldr	x2, [x0, 56]
	add	x1, x29, 68
	blr	x2
	mov	w3, w0
.L1039:
	cbz	w3, .L1077
	ldr	w0, [x19, 624]
	mov	w2, 25
	str	w2, [x29, 68]
	tbnz	w0, #31, .L1045
	ldr	x0, [x19, 96]
	adrp	x1, .LC41
	mov	w2, w3
	add	x1, x1, :lo12:.LC41
	bl	_dev_info
	ldr	w0, [x19, 624]
	b	.L1073
	.p2align 3
.L1074:
	tbnz	w0, #31, .L1044
	ldr	x0, [x19, 96]
	adrp	x1, .LC40
	add	x1, x1, :lo12:.LC40
	bl	_dev_info
	ldr	w0, [x19, 624]
.L1044:
	mov	w2, 50
	str	w2, [x29, 68]
	b	.L1042
	.p2align 3
.L1051:
	mov	w1, 6
	b	.L1046
	.p2align 3
.L1050:
	mov	w1, 5
	b	.L1046
	.p2align 3
.L1060:
	mov	w1, 0
	b	.L1046
	.p2align 3
.L1054:
	ldr	w3, [x19, 612]
	mov	w1, 4
	mov	w0, 13
	cmp	w3, 0
	csel	w1, w1, w0, eq
	b	.L1046
	.p2align 3
.L1053:
	ldr	w0, [x19, 612]
	mov	w1, 3
	mov	w3, 14
	cmp	w0, 0
	csel	w1, w1, w3, eq
	csinc	w23, w23, wzr, eq
	b	.L1046
	.p2align 3
.L1052:
	mov	w1, 8
	b	.L1046
	.p2align 3
.L1057:
	mov	w1, 7
	b	.L1046
	.p2align 3
.L1059:
	mov	w1, 2
	b	.L1046
	.p2align 3
.L1049:
	mov	w1, 4
	b	.L1046
	.p2align 3
.L1047:
	mov	w1, 10
	b	.L1046
	.p2align 3
.L1058:
	mov	w1, 1
	b	.L1046
	.p2align 3
.L1061:
	ldrb	w3, [x19, 709]
	mov	w1, 3
	mov	w0, 15
	cmp	w3, 0
	csel	w1, w1, w0, eq
	b	.L1046
	.p2align 3
.L1038:
	ldr	x0, [x22, 32]
	add	x1, x29, 68
	bl	thermal_zone_get_temp
	mov	w3, w0
	ldr	w1, [x29, 68]
	mov	w0, 19923
	movk	w0, 0x1062, lsl 16
	smull	x0, w1, w0
	asr	x0, x0, 38
	sub	w0, w0, w1, asr 31
	str	w0, [x29, 68]
	b	.L1039
.L1076:
	bl	__stack_chk_fail
.L1077:
	ldr	w2, [x29, 68]
	tbz	w2, #31, .L1037
	ldr	w0, [x19, 624]
	tbnz	w0, #31, .L1041
	ldr	x0, [x19, 96]
	adrp	x1, .LC39
	add	x1, x1, :lo12:.LC39
	bl	_dev_info
	ldr	w0, [x19, 624]
.L1041:
	mov	w2, 25
	str	w2, [x29, 68]
	b	.L1042
	.size	ebc_lut_update, .-ebc_lut_update
	.align	2
	.p2align 3,,7
	.type	record_pix_wf_write, %function
record_pix_wf_write:
	stp	x29, x30, [sp, -80]!
	adrp	x1, .LANCHOR0
	mov	x0, x2
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	adrp	x19, __stack_chk_guard
	str	x21, [sp, 32]
	add	x2, x19, :lo12:__stack_chk_guard
	mov	x21, x3
	ldr	x20, [x1, #:lo12:.LANCHOR0]
	ldr	x3, [x2]
	str	x3, [x29, 72]
	mov	x3,0
	adrp	x1, .LC44
	add	x4, x29, 68
	add	x1, x1, :lo12:.LC44
	add	x3, x29, 64
	add	x2, x29, 60
	bl	sscanf
	cmp	w0, 2
	bne	.L1081
	ldp	w3, w2, [x29, 60]
	mov	x0, x21
	str	w3, [x20, 952]
	str	w2, [x20, 956]
.L1078:
	add	x19, x19, :lo12:__stack_chk_guard
	ldr	x2, [x29, 72]
	ldr	x1, [x19]
	eor	x1, x2, x1
	cbnz	x1, .L1083
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	ret
	.p2align 3
.L1081:
	mov	x0, -22
	b	.L1078
.L1083:
	bl	__stack_chk_fail
	.size	record_pix_wf_write, .-record_pix_wf_write
	.align	2
	.p2align 3,,7
	.type	wf_data_write, %function
wf_data_write:
	stp	x29, x30, [sp, -128]!
	adrp	x1, .LC45
	mov	x0, x2
	add	x1, x1, :lo12:.LC45
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x19, x3
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	bl	strstr
	cbnz	x0, .L1103
.L1085:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 128
	ret
.L1103:
	adrp	x1, .LANCHOR0
	adrp	x0, .LC46
	mov	w22, 0
	add	x0, x0, :lo12:.LC46
	ldr	x1, [x1, #:lo12:.LANCHOR0]
	adrp	x24, .LC47
	adrp	x25, .LC48
	ldrb	w23, [x1, 336]
	ldr	x28, [x1, 352]
	sub	w27, w23, #1
	mov	w1, w23
	ubfiz	x27, x27, 10, 32
	add	x27, x27, 1024
	bl	printk
	.p2align 2
.L1086:
	mov	w21, w22
	add	x26, x25, :lo12:.LC48
	mov	w20, 0
	.p2align 2
.L1088:
	mov	w2, w22
	mov	w1, w20
	add	x0, x24, :lo12:.LC47
	bl	printk
	cbnz	w23, .L1087
.L1091:
	add	w20, w20, 1
	add	w21, w21, 32
	cmp	w20, 32
	bne	.L1088
	add	w22, w22, 1
	cmp	w22, 32
	bne	.L1086
	b	.L1085
.L1087:
	sxtw	x2, w21
	add	x3, x27, x2
	add	x2, x28, x2
	add	x3, x28, x3
.L1090:
	ldrb	w1, [x2]
	add	x2, x2, 1024
	mov	x0, x26
	stp	x2, x3, [x29, 104]
	str	x2, [x29, 120]
	bl	printk
	ldp	x3, x2, [x29, 112]
	cmp	x2, x3
	beq	.L1091
	b	.L1090
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
	mov	x19, x2
	stp	x25, x26, [sp, 64]
	adrp	x25, __stack_chk_guard
	stp	x27, x28, [sp, 80]
	add	x4, x25, :lo12:__stack_chk_guard
	stp	x21, x22, [sp, 32]
	mov	x28, x3
	stp	x23, x24, [sp, 48]
	movk	w1, 0x60, lsl 16
	stp	w0, w0, [x29, 128]
	mov	x0, 262144
	ldr	x2, [x4]
	str	x2, [x29, 168]
	mov	x2,0
	mov	w2, 6
	bl	kmalloc_order_trace
	cbz	x0, .L1125
	mov	x26, x0
	adrp	x1, .LC45
	mov	x0, x19
	add	x1, x1, :lo12:.LC45
	str	x26, [x29, 152]
	bl	strstr
	cbz	x0, .L1107
	add	x3, x29, 132
	add	x2, x29, 128
	mov	x0, x19
	adrp	x1, .LC50
	add	x1, x1, :lo12:.LC50
	bl	sscanf
	ldp	w2, w3, [x29, 128]
	adrp	x19, .LANCHOR3
	add	x1, x19, :lo12:.LANCHOR3
	adrp	x0, .LC51
	add	x1, x1, 24
	add	x0, x0, :lo12:.LC51
	bl	printk
	ldr	w1, [x29, 128]
	cmp	w1, 8
	bhi	.L1108
	ldr	w2, [x29, 132]
	cmp	w2, 50
	bls	.L1110
.L1108:
	add	x1, x19, :lo12:.LANCHOR3
	adrp	x0, .LC53
	add	x1, x1, 24
	add	x0, x0, :lo12:.LC53
	bl	printk
.L1104:
	add	x25, x25, :lo12:__stack_chk_guard
	mov	x0, x28
	ldr	x2, [x29, 168]
	ldr	x1, [x25]
	eor	x1, x2, x1
	cbnz	x1, .L1126
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 176
	ret
.L1110:
	mov	w3, 32
	add	x0, x29, 136
	bl	epd_lut_get_original
	ldrb	w21, [x29, 136]
	adrp	x0, .LC46
	add	x0, x0, :lo12:.LC46
	sub	w27, w21, #1
	mov	w1, w21
	ubfiz	x27, x27, 10, 32
	bl	printk
	add	x0, x27, 1024
	mov	w20, 0
	adrp	x22, .LC47
	adrp	x23, .LC48
	str	x0, [x29, 120]
	.p2align 2
.L1111:
	mov	w27, w20
	add	x24, x23, :lo12:.LC48
	mov	w19, 0
	.p2align 2
.L1113:
	mov	w2, w20
	mov	w1, w19
	add	x0, x22, :lo12:.LC47
	bl	printk
	cbnz	w21, .L1112
.L1116:
	add	w19, w19, 1
	add	w27, w27, 32
	cmp	w19, 32
	bne	.L1113
	add	w20, w20, 1
	cmp	w20, 32
	bne	.L1111
	mov	x0, x26
	bl	kfree
	b	.L1104
.L1112:
	ldr	x0, [x29, 120]
	sxtw	x2, w27
	add	x4, x0, x2
	add	x2, x26, x2
	add	x4, x26, x4
.L1115:
	ldrb	w1, [x2]
	add	x2, x2, 1024
	mov	x0, x24
	stp	x2, x4, [x29, 96]
	str	x2, [x29, 112]
	bl	printk
	ldp	x4, x2, [x29, 104]
	cmp	x2, x4
	beq	.L1116
	b	.L1115
.L1107:
	adrp	x1, .LANCHOR3
	add	x1, x1, :lo12:.LANCHOR3
	adrp	x0, .LC52
	add	x1, x1, 24
	add	x0, x0, :lo12:.LC52
	bl	printk
	b	.L1104
.L1125:
	adrp	x0, .LC49
	add	x0, x0, :lo12:.LC49
	bl	printk
	b	.L1104
.L1126:
	bl	__stack_chk_fail
	.size	ori_wf_data_write, .-ori_wf_data_write
	.align	2
	.p2align 3,,7
	.type	ebc_debug_level_write, %function
ebc_debug_level_write:
	stp	x29, x30, [sp, -64]!
	adrp	x0, .LANCHOR0
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	adrp	x19, __stack_chk_guard
	stp	x21, x22, [sp, 32]
	add	x1, x19, :lo12:__stack_chk_guard
	mov	x21, x2
	ldr	x22, [x0, #:lo12:.LANCHOR0]
	ldr	x2, [x1]
	str	x2, [x29, 56]
	mov	x2,0
	mov	x20, x3
	add	x2, x29, 52
	mov	w1, 0
	mov	x0, x21
	bl	kstrtouint
	cbnz	w0, .L1132
	ldr	w1, [x29, 52]
	mov	x0, x20
	str	w1, [x22, 856]
.L1127:
	add	x19, x19, :lo12:__stack_chk_guard
	ldr	x2, [x29, 56]
	ldr	x1, [x19]
	eor	x1, x2, x1
	cbnz	x1, .L1133
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	ret
	.p2align 3
.L1132:
	ldr	x0, [x22, 328]
	adrp	x1, .LC54
	mov	x2, x21
	add	x1, x1, :lo12:.LC54
	bl	_dev_err
	mov	x0, -1
	b	.L1127
.L1133:
	bl	__stack_chk_fail
	.size	ebc_debug_level_write, .-ebc_debug_level_write
	.align	2
	.p2align 3,,7
	.type	ebc_debug_level_read, %function
ebc_debug_level_read:
	stp	x29, x30, [sp, -16]!
	adrp	x3, .LANCHOR0
	mov	x0, x2
	adrp	x1, .LC55
	add	x29, sp, 0
	ldr	x2, [x3, #:lo12:.LANCHOR0]
	add	x1, x1, :lo12:.LC55
	ldr	w2, [x2, 856]
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
	adrp	x1, .LC55
	add	x29, sp, 0
	ldr	x2, [x3, #:lo12:.LANCHOR0]
	add	x1, x1, :lo12:.LC55
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
	adrp	x1, .LC57
	adrp	x2, .LC56
	add	x29, sp, 0
	add	x2, x2, :lo12:.LC56
	add	x1, x1, :lo12:.LC57
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
	adrp	x1, .LANCHOR0
	add	x29, sp, 0
	ldr	x1, [x1, #:lo12:.LANCHOR0]
	stp	x19, x20, [sp, 16]
	adrp	x19, __stack_chk_guard
	add	x0, x19, :lo12:__stack_chk_guard
	mov	x20, x2
	ldr	x2, [x0]
	str	x2, [x29, 40]
	mov	x2,0
	ldr	x0, [x1, 16]
	cbz	x0, .L1141
	ldr	x2, [x0, 56]
	add	x1, x29, 36
	blr	x2
.L1142:
	ldr	w2, [x29, 36]
	adrp	x1, .LC55
	mov	x0, x20
	add	x1, x1, :lo12:.LC55
	add	x19, x19, :lo12:__stack_chk_guard
	bl	sprintf
	sxtw	x0, w0
	ldr	x2, [x29, 40]
	ldr	x1, [x19]
	eor	x1, x2, x1
	cbnz	x1, .L1145
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L1141:
	ldr	x0, [x1, 32]
	add	x1, x29, 36
	bl	thermal_zone_get_temp
	b	.L1142
.L1145:
	bl	__stack_chk_fail
	.size	pmic_temp_read, .-pmic_temp_read
	.align	2
	.p2align 3,,7
	.type	pmic_name_read, %function
pmic_name_read:
	stp	x29, x30, [sp, -16]!
	adrp	x3, .LANCHOR0
	mov	x0, x2
	adrp	x1, .LC57
	add	x29, sp, 0
	ldr	x2, [x3, #:lo12:.LANCHOR0]
	add	x1, x1, :lo12:.LC57
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
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	adrp	x19, __stack_chk_guard
	stp	x21, x22, [sp, 32]
	add	x1, x19, :lo12:__stack_chk_guard
	mov	x22, x2
	ldr	x21, [x0, #:lo12:.LANCHOR0]
	ldr	x2, [x1]
	str	x2, [x29, 56]
	mov	x2,0
	mov	x20, x3
	add	x2, x29, 52
	mov	w1, 0
	mov	x0, x22
	bl	kstrtouint
	cbnz	w0, .L1159
	ldr	x0, [x21, 16]
	ldr	w1, [x29, 52]
	cbz	x0, .L1153
	bl	ebc_pmic_set_vcom
.L1154:
	cbnz	w0, .L1160
.L1150:
	add	x19, x19, :lo12:__stack_chk_guard
	mov	x0, x20
	ldr	x2, [x29, 56]
	ldr	x1, [x19]
	eor	x1, x2, x1
	cbnz	x1, .L1161
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	ret
	.p2align 3
.L1153:
	ldr	x0, [x21, 24]
	bl	ebc_regulator_set_vcom
	b	.L1154
	.p2align 3
.L1159:
	ldr	x0, [x21]
	adrp	x1, .LC54
	mov	x2, x22
	add	x1, x1, :lo12:.LC54
	mov	x20, -1
	bl	_dev_err
	b	.L1150
	.p2align 3
.L1160:
	ldr	x0, [x21]
	adrp	x1, .LC58
	mov	x20, -1
	add	x1, x1, :lo12:.LC58
	bl	_dev_err
	b	.L1150
.L1161:
	bl	__stack_chk_fail
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
	cbz	x0, .L1163
	ldr	x1, [x0, 64]
	blr	x1
	mov	w2, w0
	adrp	x1, .LC55
	mov	x0, x19
	add	x1, x1, :lo12:.LC55
	bl	sprintf
	sxtw	x0, w0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	.p2align 3
.L1163:
	ldr	x0, [x1, 24]
	bl	regulator_get_voltage
	mov	w2, 19923
	adrp	x1, .LC55
	movk	w2, 0x1062, lsl 16
	add	x1, x1, :lo12:.LC55
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
	adrp	x1, .LC57
	mov	x0, x19
	add	x1, x1, :lo12:.LC57
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
	.type	get_overlay_image_area2.isra.0, %function
get_overlay_image_area2.isra.0:
	stp	x29, x30, [sp, -144]!
	adrp	x5, .LANCHOR0
	mov	x10, x0
	add	x29, sp, 0
	ldr	x5, [x5, #:lo12:.LANCHOR0]
	stp	x19, x20, [sp, 16]
	add	x5, x5, 40
	stp	x5, x0, [x29, 104]
	ldr	x0, [x4, 232]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	ldr	x6, [x4, 216]
	ldr	w13, [x5, 76]
	ldp	w5, w23, [x0, 48]
	ldr	w19, [x6, 40]
	cmp	w5, 0
	add	w6, w5, 7
	csel	w6, w6, w5, lt
	ldr	w17, [x4, 84]
	asr	w8, w6, 3
	mul	w13, w23, w13
	ldp	w5, w6, [x0, 56]
	add	w0, w17, 7
	str	w8, [x29, 136]
	lsr	w13, w13, 2
	cmp	w5, 0
	add	w30, w5, 7
	csel	w30, w30, w5, lt
	cmp	w17, 0
	csel	w0, w0, w17, lt
	asr	w30, w30, 3
	asr	w5, w0, 3
	add	w30, w30, 1
	ldr	w0, [x4, 80]
	mov	w9, w6
	cmp	w30, w5
	mov	w6, w5
	str	w5, [x29, 128]
	sub	w5, w5, #1
	csel	w30, w5, w30, ge
	cmp	w9, w0
	sub	w0, w0, #1
	add	x13, x10, x13
	csel	w0, w0, w9, ge
	str	w0, [x29, 132]
	cmp	w23, w0
	bgt	.L1170
	mul	w18, w23, w6
	mov	w20, 1
	sub	w19, w19, #7
	mov	w16, w20
	lsl	w0, w8, 3
	str	w0, [x29, 124]
	.p2align 2
.L1174:
	and	w0, w23, 1
	tbnz	x23, 0, .L1175
	ldr	x5, [x29, 104]
	ldr	w13, [x5, 76]
	ldr	x5, [x29, 112]
	mul	w13, w23, w13
	lsr	w13, w13, 2
	add	x13, x5, x13
.L1175:
	mul	w17, w23, w17
	ldr	w5, [x29, 136]
	cmp	w5, w30
	sxtw	x17, w17
	bgt	.L1189
	cmp	w0, 0
	ldr	w11, [x29, 124]
	mov	w0, 2
	ldr	w9, [x29, 136]
	csel	w21, w0, wzr, ne
	add	w28, w21, 4
	add	w27, w21, 8
	add	w26, w21, 12
	add	w25, w21, 16
	add	w24, w21, 20
	add	w22, w21, 28
	add	w0, w21, 24
	str	w0, [x29, 140]
	.p2align 2
.L1188:
	sxtw	x10, w9
	cmp	w19, 4
	lsl	x0, x10, 3
	add	x0, x0, x18, sxtw 3
	ldr	x7, [x1, x0]
	ldr	x6, [x2, x0]
	bhi	.L1178
	and	x7, x7, -506381209866536712
	and	x6, x6, -506381209866536712
.L1178:
	cmp	x6, x7
	beq	.L1179
	add	x12, x17, x11, sxtw
	str	w20, [x4, 60]
	eor	x5, x6, x7
	add	x0, x3, x12
	and	x14, x5, 255
	mov	w8, 0
	ldrb	w15, [x3, x12]
	cmp	w15, 0
	ccmp	x14, 0, 4, eq
	beq	.L1180
	lsl	x8, x6, 2
	ldr	x14, [x4, 120]
	and	x8, x8, 992
	ubfx	x15, x7, 3, 5
	orr	x8, x8, x15
	ldrb	w8, [x14, x8]
	strb	w20, [x3, x12]
	lsl	w8, w8, w21
.L1180:
	ldrb	w12, [x0, 1]
	cmp	w12, 0
	and	x12, x5, 65280
	ccmp	x12, 0, 4, eq
	beq	.L1181
	lsr	x12, x6, 6
	ldr	x14, [x4, 120]
	and	x12, x12, 992
	ubfx	x15, x7, 11, 5
	orr	x12, x12, x15
	ldrb	w12, [x14, x12]
	strb	w16, [x0, 1]
	lsl	w12, w12, w28
	orr	w8, w8, w12
.L1181:
	ldrb	w12, [x0, 2]
	cmp	w12, 0
	and	x12, x5, 16711680
	ccmp	x12, 0, 4, eq
	beq	.L1182
	lsr	x12, x6, 14
	ldr	x14, [x4, 120]
	and	x12, x12, 992
	ubfx	x15, x7, 19, 5
	orr	x12, x12, x15
	ldrb	w12, [x14, x12]
	strb	w16, [x0, 2]
	lsl	w12, w12, w27
	orr	w8, w8, w12
.L1182:
	ldrb	w12, [x0, 3]
	tst	x5, 4278190080
	ccmp	w12, 0, 0, ne
	bne	.L1183
	lsr	x12, x6, 22
	ldr	x14, [x4, 120]
	and	x12, x12, 992
	lsr	w15, w7, 27
	orr	x12, x12, x15
	ldrb	w12, [x14, x12]
	strb	w16, [x0, 3]
	lsl	w12, w12, w26
	orr	w8, w8, w12
.L1183:
	ldrb	w12, [x0, 4]
	cmp	w12, 0
	and	x12, x5, 1095216660480
	ccmp	x12, 0, 4, eq
	beq	.L1184
	lsr	x12, x6, 30
	ldr	x14, [x4, 120]
	and	x12, x12, 992
	ubfx	x15, x7, 35, 5
	orr	x12, x12, x15
	ldrb	w12, [x14, x12]
	strb	w16, [x0, 4]
	lsl	w12, w12, w25
	orr	w8, w8, w12
.L1184:
	ldrb	w12, [x0, 5]
	cmp	w12, 0
	and	x12, x5, 280375465082880
	ccmp	x12, 0, 4, eq
	beq	.L1185
	lsr	x12, x6, 38
	ldr	x14, [x4, 120]
	and	x12, x12, 992
	ubfx	x15, x7, 43, 5
	orr	x12, x12, x15
	ldrb	w12, [x14, x12]
	strb	w16, [x0, 5]
	lsl	w12, w12, w24
	orr	w8, w8, w12
.L1185:
	ldrb	w12, [x0, 6]
	tst	x5, 71776119061217280
	ccmp	w12, 0, 0, ne
	bne	.L1186
	lsr	x12, x6, 46
	ldr	x14, [x4, 120]
	and	x12, x12, 992
	ubfx	x15, x7, 51, 5
	orr	x12, x12, x15
	ldrb	w12, [x14, x12]
	ldrb	w14, [x29, 140]
	strb	w16, [x0, 6]
	lsl	w12, w12, w14
	orr	w8, w8, w12
.L1186:
	tst	x5, -72057594037927936
	ldrb	w5, [x0, 7]
	ccmp	w5, 0, 0, ne
	bne	.L1187
	ldr	x5, [x4, 120]
	lsr	x6, x6, 54
	and	x6, x6, 992
	add	x7, x5, x7, lsr 59
	ldrb	w5, [x7, x6]
	strb	w16, [x0, 7]
	lsl	w0, w5, w22
	orr	w8, w8, w0
.L1187:
	ldr	w0, [x13, x10, lsl 2]
	orr	w8, w0, w8
	str	w8, [x13, x10, lsl 2]
.L1179:
	add	w9, w9, 1
	add	w11, w11, 8
	cmp	w9, w30
	ble	.L1188
.L1189:
	ldr	w0, [x29, 128]
	add	w23, w23, 1
	add	w18, w18, w0
	ldr	w0, [x29, 132]
	cmp	w23, w0
	bgt	.L1170
	ldr	w17, [x4, 84]
	b	.L1174
.L1170:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 144
	ret
	.size	get_overlay_image_area2.isra.0, .-get_overlay_image_area2.isra.0
	.align	2
	.p2align 3,,7
	.type	get_one_auto_image2.isra.1, %function
get_one_auto_image2.isra.1:
	ldr	x6, [x1]
	and	w3, w3, 255
	mov	w7, 0
	eor	x8, x6, x0
	and	x9, x8, 255
	cbz	x9, .L1216
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
	beq	.L1255
.L1217:
	strb	w9, [x2]
.L1216:
	tst	x8, 65280
	beq	.L1218
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
	beq	.L1256
.L1219:
	strb	w9, [x2, 1]
.L1218:
	tst	x8, 16711680
	beq	.L1220
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
	beq	.L1257
.L1221:
	strb	w9, [x2, 2]
.L1220:
	tst	x8, 4278190080
	beq	.L1222
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
	beq	.L1258
.L1223:
	strb	w9, [x2, 3]
.L1222:
	tst	x8, 1095216660480
	beq	.L1224
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
	beq	.L1259
.L1225:
	strb	w9, [x2, 4]
.L1224:
	tst	x8, 280375465082880
	beq	.L1226
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
	beq	.L1260
.L1227:
	strb	w9, [x2, 5]
.L1226:
	tst	x8, 71776119061217280
	beq	.L1228
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
	beq	.L1261
.L1229:
	strb	w9, [x2, 6]
.L1228:
	tst	x8, -72057594037927936
	beq	.L1230
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
	beq	.L1262
.L1231:
	strb	w4, [x2, 7]
.L1230:
	mov	w0, w7
	str	x6, [x1]
	ret
	.p2align 3
.L1262:
	and	x6, x6, 72057594037927935
	and	x0, x0, -72057594037927936
	orr	x6, x0, x6
	mov	w4, 0
	b	.L1231
	.p2align 3
.L1255:
	bfi	x6, x0, 0, 8
	mov	w9, 0
	b	.L1217
	.p2align 3
.L1256:
	and	x9, x0, 65280
	and	x6, x6, -65281
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1219
	.p2align 3
.L1257:
	and	x9, x0, 16711680
	and	x6, x6, -16711681
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1221
	.p2align 3
.L1258:
	and	x9, x0, 4278190080
	and	x6, x6, -4278190081
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1223
	.p2align 3
.L1259:
	and	x9, x0, 1095216660480
	and	x6, x6, -1095216660481
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1225
	.p2align 3
.L1260:
	and	x9, x0, 280375465082880
	and	x6, x6, -280375465082881
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1227
	.p2align 3
.L1261:
	and	x9, x0, 71776119061217280
	and	x6, x6, -71776119061217281
	orr	x6, x9, x6
	mov	w9, 0
	b	.L1229
	.size	get_one_auto_image2.isra.1, .-get_one_auto_image2.isra.1
	.align	2
	.p2align 3,,7
	.type	get_auto_image2, %function
get_auto_image2:
	stp	x29, x30, [sp, -112]!
	adrp	x6, .LANCHOR0
	cmp	w5, 2
	add	x29, sp, 0
	stp	x21, x22, [sp, 32]
	ldr	x21, [x6, #:lo12:.LANCHOR0]
	stp	x25, x26, [sp, 64]
	mov	x25, x2
	stp	x19, x20, [sp, 16]
	add	x21, x21, 40
	stp	x23, x24, [sp, 48]
	mov	x24, x1
	stp	x27, x28, [sp, 80]
	add	x1, x4, 60
	stp	x1, x0, [x29, 96]
	mov	x19, x4
	ldr	x0, [x4, 216]
	mov	x26, x3
	ldr	w1, [x21, 76]
	ldr	w22, [x21, 80]
	lsr	w28, w1, 3
	ldr	w27, [x0, 40]
	beq	.L1286
	cmp	w5, 3
	mov	x0, 0
	mov	w20, 0
	beq	.L1287
.L1265:
	ldr	x2, [x29, 104]
	add	x0, x2, x0
	sub	w2, w22, w20
	mul	w2, w2, w1
	mov	w1, 0
	lsr	w2, w2, 2
	bl	memset
	cmp	w20, w22
	bge	.L1276
	sub	w18, w28, #1
	sub	w14, w27, #7
	add	x18, x18, 1
	add	x15, x19, 120
	lsl	x18, x18, 3
	mov	w8, 0
	.p2align 2
.L1274:
	ldr	w27, [x21, 76]
	ldr	x0, [x29, 104]
	mul	w27, w20, w27
	lsr	w27, w27, 2
	add	x27, x0, x27
	cbz	w28, .L1267
	mov	x23, x26
	mov	x13, x25
	mov	x12, 0
	.p2align 2
.L1270:
	ldr	x3, [x24, x12, lsl 3]
	mov	x2, x23
	mov	x1, x13
	mov	w5, 0
	mov	x4, x15
	mov	x0, x3
	mov	x10, x3
	cmp	w14, 4
	ldr	x9, [x13]
	bhi	.L1268
	and	x10, x3, -506381209866536712
	and	x9, x9, -506381209866536712
.L1268:
	cmp	x9, x10
	beq	.L1269
	ldrb	w3, [x19, 56]
	bl	get_one_auto_image2.isra.1
	str	w0, [x27, x12, lsl 2]
	mov	w8, 1
.L1269:
	add	x12, x12, 1
	add	x13, x13, 8
	add	x23, x23, 8
	cmp	w28, w12
	bgt	.L1270
	add	x25, x25, x18
	add	x26, x26, x18
	add	x24, x24, x18
	mov	x23, x26
	mov	x13, x25
	mov	x12, 0
	.p2align 2
.L1273:
	ldr	x3, [x24, x12, lsl 3]
	mov	x1, x13
	ldr	x7, [x13]
	mov	x2, x23
	mov	w5, 2
	mov	x4, x15
	cmp	w14, 4
	mov	x0, x3
	mov	x10, x3
	add	x13, x13, 8
	bhi	.L1271
	and	x10, x3, -506381209866536712
	and	x7, x7, -506381209866536712
.L1271:
	cmp	x7, x10
	beq	.L1272
	ldrb	w3, [x19, 56]
	bl	get_one_auto_image2.isra.1
	ldr	w1, [x27, x12, lsl 2]
	mov	w8, 1
	orr	w0, w1, w0
	str	w0, [x27, x12, lsl 2]
.L1272:
	add	x12, x12, 1
	add	x23, x23, 8
	cmp	w28, w12
	bgt	.L1273
	add	x25, x25, x18
	add	x24, x24, x18
	add	x26, x26, x18
.L1267:
	add	w20, w20, 2
	cmp	w22, w20
	bgt	.L1274
.L1266:
	ldr	x0, [x29, 96]
	str	w8, [x0]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 112
	ret
.L1286:
	add	w22, w22, w22, lsr 31
	mov	x0, 0
	asr	w22, w22, 1
	mov	w20, 0
	b	.L1265
.L1287:
	add	w20, w22, w22, lsr 31
	add	x0, x4, 64
	asr	w20, w20, 1
	str	x0, [x29, 96]
	mul	w0, w28, w20
	sbfiz	x0, x0, 3, 32
	add	x24, x24, x0
	add	x25, x2, x0
	mul	w0, w20, w1
	add	x26, x3, x0, uxtw
	lsr	w0, w0, 2
	b	.L1265
.L1276:
	mov	w8, 0
	b	.L1266
	.size	get_auto_image2, .-get_auto_image2
	.align	2
	.p2align 3,,7
	.type	direct_mode_data_change.isra.2, %function
direct_mode_data_change.isra.2:
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
	beq	.L1308
	cmp	w6, 3
	mov	w14, w3
	mov	w6, 0
	mov	w12, 0
	beq	.L1309
.L1290:
	ldr	w4, [x4, 156]
	cbz	w4, .L1291
	sub	w3, w3, #1
	neg	w15, w7, lsr 2
	sub	w3, w3, w6
	mul	w3, w3, w7
	lsr	w3, w3, 2
	add	x10, x0, x3
.L1294:
	cmp	w12, w14
	bge	.L1302
	sub	w13, w11, #1
	sxtw	x15, w15
	add	x13, x13, 1
	lsl	x13, x13, 3
.L1303:
	mov	x6, 0
	cbz	w11, .L1310
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	.p2align 2
.L1299:
	ldr	x0, [x2, x6, lsl 3]
	ldr	x3, [x1, x6, lsl 3]
	lsr	x17, x0, 30
	lsr	x4, x0, 14
	ubfx	x8, x3, 35, 5
	ubfx	x7, x3, 19, 5
	lsr	x30, x0, 22
	lsr	x16, x0, 6
	lsr	x9, x0, 46
	and	x17, x17, 992
	and	x4, x4, 992
	lsr	w19, w3, 27
	orr	x17, x17, x8
	ubfx	x18, x3, 11, 5
	orr	x4, x4, x7
	lsr	x8, x0, 38
	ubfx	x7, x3, 51, 5
	and	x30, x30, 992
	and	x16, x16, 992
	and	x9, x9, 992
	orr	x30, x30, x19
	orr	x16, x16, x18
	orr	x9, x9, x7
	ubfx	x18, x3, 43, 5
	lsl	x7, x0, 2
	and	x8, x8, 992
	orr	x8, x8, x18
	ubfx	x19, x3, 3, 5
	and	x7, x7, 992
	lsr	x0, x0, 54
	ldrb	w18, [x5, x17]
	orr	x7, x7, x19
	ldrb	w17, [x5, x4]
	and	x0, x0, 992
	add	x3, x5, x3, lsr 59
	ldrb	w4, [x5, x30]
	ldrb	w16, [x5, x16]
	ldrb	w9, [x5, x9]
	ldrb	w8, [x5, x8]
	ldrb	w30, [x5, x7]
	lsl	w7, w17, 4
	ldrb	w3, [x3, x0]
	lsl	w0, w18, 8
	orr	w0, w0, w4, lsl 6
	orr	w7, w7, w16, lsl 2
	lsl	w4, w9, 12
	orr	w0, w0, w7
	orr	w4, w4, w8, lsl 10
	orr	w3, w30, w3, lsl 14
	orr	w0, w0, w4
	orr	w0, w0, w3
	strh	w0, [x10, x6, lsl 1]
	add	x6, x6, 1
	cmp	w11, w6
	bgt	.L1299
	add	w12, w12, 1
	add	x1, x1, x13
	add	x2, x2, x13
	add	x10, x10, x15
	cmp	w12, w14
	beq	.L1288
.L1311:
	mov	x6, 0
	cbnz	w11, .L1299
	add	w12, w12, 1
	add	x10, x10, x15
	cmp	w12, w14
	bne	.L1311
.L1288:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
.L1310:
	add	w12, w12, 1
	add	x10, x10, x15
	cmp	w12, w14
	bne	.L1303
.L1302:
	ret
.L1291:
	mul	w3, w7, w6
	lsr	w15, w7, 2
	lsr	w3, w3, 2
	add	x10, x0, x3
	b	.L1294
.L1308:
	add	w14, w3, w3, lsr 31
	mov	w6, 0
	asr	w14, w14, 1
	mov	w12, 0
	b	.L1290
.L1309:
	add	w12, w3, w3, lsr 31
	asr	w12, w12, 1
	mov	w6, w12
	mul	w8, w11, w12
	sbfiz	x8, x8, 3, 32
	add	x1, x1, x8
	add	x2, x2, x8
	b	.L1290
	.size	direct_mode_data_change.isra.2, .-direct_mode_data_change.isra.2
	.align	2
	.p2align 3,,7
	.type	direct_mode_data_change2.isra.3, %function
direct_mode_data_change2.isra.3:
	adrp	x7, .LANCHOR0
	and	w3, w3, 255
	sub	w3, w3, w4
	cmp	w6, 2
	ldr	x4, [x7, #:lo12:.LANCHOR0]
	lsl	w3, w3, 10
	add	x5, x5, x3, sxtw
	ldp	w13, w14, [x4, 116]
	lsr	w9, w13, 3
	beq	.L1336
	mov	w11, 0
	cmp	w6, 3
	beq	.L1337
.L1314:
	lsr	w13, w13, 2
	cmp	w14, w11
	ble	.L1329
.L1340:
	sub	w10, w9, #1
	mul	w12, w13, w11
	add	x10, x10, 1
	lsl	w13, w13, 1
	lsl	x10, x10, 3
.L1330:
	add	x8, x0, x12, sxtw
	cbz	w9, .L1338
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.p2align 2
.L1331:
	mov	x7, 0
	.p2align 2
.L1317:
	ldr	x3, [x2, x7, lsl 3]
	ldr	x4, [x1, x7, lsl 3]
	lsr	x20, x3, 30
	lsr	x6, x3, 14
	ubfx	x16, x4, 35, 5
	ubfx	x15, x4, 19, 5
	lsr	x19, x3, 22
	lsr	x18, x3, 6
	lsr	x17, x3, 46
	and	x20, x20, 992
	and	x6, x6, 992
	lsr	w22, w4, 27
	orr	x20, x20, x16
	ubfx	x21, x4, 11, 5
	orr	x6, x6, x15
	lsr	x16, x3, 38
	ubfx	x15, x4, 51, 5
	and	x19, x19, 992
	and	x18, x18, 992
	and	x17, x17, 992
	orr	x19, x19, x22
	orr	x18, x18, x21
	orr	x17, x17, x15
	ubfx	x21, x4, 43, 5
	lsl	x15, x3, 2
	and	x16, x16, 992
	orr	x16, x16, x21
	ubfx	x22, x4, 3, 5
	and	x15, x15, 992
	lsr	x3, x3, 54
	ldrb	w21, [x5, x20]
	orr	x15, x15, x22
	ldrb	w20, [x5, x6]
	and	x3, x3, 992
	add	x4, x5, x4, lsr 59
	ldrb	w6, [x5, x19]
	ldrb	w18, [x5, x18]
	ldrb	w17, [x5, x17]
	ldrb	w16, [x5, x16]
	ldrb	w19, [x5, x15]
	lsl	w15, w20, 8
	ldrb	w4, [x4, x3]
	lsl	w3, w21, 16
	orr	w3, w3, w6, lsl 12
	orr	w15, w15, w18, lsl 4
	lsl	w6, w17, 24
	orr	w3, w3, w15
	orr	w6, w6, w16, lsl 20
	orr	w4, w19, w4, lsl 28
	orr	w3, w3, w6
	orr	w3, w3, w4
	str	w3, [x8, x7, lsl 2]
	add	x7, x7, 1
	cmp	w9, w7
	bgt	.L1317
	add	x1, x1, x10
	add	x2, x2, x10
	mov	x7, 0
	.p2align 2
.L1318:
	ldr	x3, [x2, x7, lsl 3]
	ldr	x4, [x1, x7, lsl 3]
	ldr	w17, [x8, x7, lsl 2]
	lsr	x20, x3, 22
	lsr	x30, x3, 6
	lsr	w16, w4, 27
	ubfx	x15, x4, 11, 5
	lsr	x6, x3, 14
	lsl	x19, x3, 2
	lsr	x18, x3, 38
	and	x20, x20, 992
	and	x30, x30, 992
	ubfx	x22, x4, 19, 5
	orr	x20, x20, x16
	ubfx	x21, x4, 3, 5
	orr	x30, x30, x15
	lsr	x16, x3, 30
	ubfx	x15, x4, 43, 5
	and	x6, x6, 992
	and	x19, x19, 992
	and	x18, x18, 992
	orr	x18, x18, x15
	orr	x6, x6, x22
	orr	x19, x19, x21
	lsr	x15, x3, 46
	ubfx	x21, x4, 35, 5
	and	x16, x16, 992
	lsr	x3, x3, 54
	orr	x16, x16, x21
	ubfx	x22, x4, 51, 5
	and	x3, x3, 992
	add	x4, x5, x4, lsr 59
	and	x15, x15, 992
	ldrb	w21, [x5, x20]
	orr	x15, x15, x22
	ldrb	w20, [x5, x30]
	ldrb	w6, [x5, x6]
	ldrb	w30, [x5, x18]
	ldrb	w19, [x5, x19]
	ldrb	w18, [x5, x16]
	ldrb	w16, [x4, x3]
	lsl	w4, w21, 14
	ldrb	w15, [x5, x15]
	lsl	w3, w20, 6
	orr	w4, w4, w6, lsl 10
	orr	w3, w3, w19, lsl 2
	lsl	w6, w30, 22
	orr	w3, w4, w3
	orr	w6, w6, w18, lsl 18
	lsl	w4, w16, 30
	orr	w3, w3, w6
	orr	w4, w4, w15, lsl 26
	orr	w3, w3, w4
	orr	w3, w17, w3
	str	w3, [x8, x7, lsl 2]
	add	x7, x7, 1
	cmp	w9, w7
	bgt	.L1318
	add	w11, w11, 2
	add	x1, x1, x10
	add	x2, x2, x10
	add	w12, w12, w13
	cmp	w11, w14
	bge	.L1339
.L1319:
	add	x8, x0, x12, sxtw
	cbnz	w9, .L1331
	add	w11, w11, 2
	add	w12, w12, w13
	cmp	w11, w14
	blt	.L1319
.L1339:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
.L1338:
	add	w11, w11, 2
	add	w12, w12, w13
	cmp	w11, w14
	blt	.L1330
	ret
.L1336:
	add	w14, w14, w14, lsr 31
	mov	w11, 0
	asr	w14, w14, 1
	lsr	w13, w13, 2
	cmp	w14, w11
	bgt	.L1340
.L1329:
	ret
.L1337:
	add	w11, w14, w14, lsr 31
	asr	w11, w11, 1
	mul	w3, w9, w11
	sbfiz	x3, x3, 3, 32
	add	x1, x1, x3
	add	x2, x2, x3
	b	.L1314
	.size	direct_mode_data_change2.isra.3, .-direct_mode_data_change2.isra.3
	.align	2
	.p2align 3,,7
	.type	ebc_auto_assist_tast_function, %function
ebc_auto_assist_tast_function:
	stp	x29, x30, [sp, -96]!
	adrp	x1, .LANCHOR0
	adrp	x0, __stack_chk_guard
	add	x0, x0, :lo12:__stack_chk_guard
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	adrp	x22, .LANCHOR1
	stp	x23, x24, [sp, 48]
	add	x22, x22, :lo12:.LANCHOR1
	str	x25, [sp, 64]
	add	x20, x22, 328
	ldr	x25, [x1, #:lo12:.LANCHOR0]
	add	x22, x22, 352
	mov	x24, 2
	ldr	x1, [x0]
	str	x1, [x29, 88]
	mov	x1,0
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x23, sp_el0
// 0 "" 2
#NO_APP
	add	x19, x25, 232
	add	x21, x25, 40
	b	.L1355
	.p2align 3
.L1365:
	cmp	w5, 4
	beq	.L1344
	cmp	w5, 1
	beq	.L1363
	ldr	x0, [x19, 216]
	ldr	w1, [x0, 40]
	cmp	w1, 21
	beq	.L1364
	ldr	w4, [x19, 72]
	cbz	w4, .L1347
	ldr	w1, [x21, 164]
	ldrsw	x7, [x21, 72]
	ldrb	w3, [x25, 288]
	add	x7, x7, 22
	ldr	x2, [x19, 208]
	ldr	x5, [x25, 352]
	cbz	w1, .L1354
	ldr	x1, [x0, 16]
	mov	w6, 3
	ldr	x0, [x19, x7, lsl 3]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change2.isra.3
	.p2align 2
.L1347:
	mov	x0, x22
	bl	up
	mov	x0, x20
	bl	up
	bl	schedule
.L1355:
	mov	x0, x20
	bl	down
	str	x24, [x23, 32]
#APP
// 2189 "/home/lyx/rk3566-11-eink/kernel/drivers/gpu/drm/rockchip/ebc-dev/ebc_dev_y8.c" 1
	dmb ish
// 0 "" 2
#NO_APP
	ldr	w5, [x19, 240]
	cmp	w5, 3
	bne	.L1365
	ldr	w0, [x21, 164]
	cbz	w0, .L1348
	ldrsw	x0, [x21, 72]
	mov	x4, x19
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldr	x3, [x19, 160]
	ldr	x0, [x19, x0, lsl 3]
	bl	get_auto_image2
	b	.L1347
	.p2align 3
.L1363:
	ldr	w0, [x19, 72]
	cbz	w0, .L1347
	ldr	w0, [x21, 164]
	cbz	w0, .L1350
	ldrsw	x0, [x21, 72]
	mov	w4, 3
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_part2
	b	.L1347
	.p2align 3
.L1344:
	ldr	w0, [x21, 164]
	cbz	w0, .L1346
	ldrsw	x0, [x21, 72]
	mov	w6, 3
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x19, 160]
	mov	x5, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_overlay_image2
	b	.L1347
	.p2align 3
.L1348:
	ldrsw	x0, [x21, 72]
	mov	x4, x19
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldr	x3, [x19, 160]
	ldr	x0, [x19, x0, lsl 3]
	bl	get_auto_image
	b	.L1347
	.p2align 3
.L1346:
	ldrsw	x0, [x21, 72]
	mov	w6, 3
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x19, 160]
	mov	x5, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_overlay_image
	b	.L1347
	.p2align 3
.L1350:
	ldrsw	x0, [x21, 72]
	mov	w4, 3
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_part
	b	.L1347
	.p2align 3
.L1354:
	ldr	x1, [x0, 16]
	mov	w6, 3
	ldr	x0, [x19, x7, lsl 3]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change.isra.2
	b	.L1347
	.p2align 3
.L1364:
	mov	x0, x19
	bl	is_full_refresh_done
	tst	w0, 255
	bne	.L1347
	ldr	w0, [x21, 164]
	cbz	w0, .L1353
	ldrsw	x0, [x21, 72]
	mov	w4, 3
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_full2
	b	.L1347
.L1353:
	ldrsw	x0, [x21, 72]
	mov	w4, 3
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_full
	b	.L1347
	.size	ebc_auto_assist_tast_function, .-ebc_auto_assist_tast_function
	.align	2
	.p2align 3,,7
	.type	check_part_mode.isra.6, %function
check_part_mode.isra.6:
	stp	x29, x30, [sp, -48]!
	adrp	x6, __stack_chk_guard
	add	x3, x6, :lo12:__stack_chk_guard
	cmp	w2, 0
	add	x29, sp, 0
	add	w5, w2, 7
	ldr	x4, [x3]
	str	x4, [x29, 40]
	mov	x4,0
	csel	w5, w5, w2, lt
	asr	w5, w5, 3
	cmp	w5, 0
	ble	.L1371
	.p2align 2
.L1381:
	ldr	x3, [x0, x4, lsl 3]
	ldr	x2, [x1, x4, lsl 3]
	and	x3, x3, -506381209866536712
	and	x2, x2, -506381209866536712
	stp	x3, x2, [x29, 24]
	cmp	x3, x2
	beq	.L1369
	ldrb	w2, [x29, 24]
	ldrb	w3, [x29, 32]
	subs	w2, w2, w3
	csneg	w2, w2, w2, pl
	cmp	w2, 8
	bgt	.L1380
	ldrb	w2, [x29, 25]
	ldrb	w3, [x29, 33]
	subs	w2, w2, w3
	csneg	w2, w2, w2, pl
	cmp	w2, 8
	bgt	.L1380
	ldrb	w2, [x29, 26]
	ldrb	w3, [x29, 34]
	subs	w2, w2, w3
	csneg	w2, w2, w2, pl
	cmp	w2, 8
	bgt	.L1380
	ldrb	w2, [x29, 27]
	ldrb	w3, [x29, 35]
	subs	w2, w2, w3
	csneg	w2, w2, w2, pl
	cmp	w2, 8
	bgt	.L1380
	ldrb	w2, [x29, 28]
	ldrb	w3, [x29, 36]
	subs	w2, w2, w3
	csneg	w2, w2, w2, pl
	cmp	w2, 8
	bgt	.L1380
	ldrb	w2, [x29, 29]
	ldrb	w3, [x29, 37]
	subs	w2, w2, w3
	csneg	w2, w2, w2, pl
	cmp	w2, 8
	bgt	.L1380
	ldrb	w2, [x29, 30]
	ldrb	w3, [x29, 38]
	subs	w2, w2, w3
	csneg	w2, w2, w2, pl
	cmp	w2, 8
	bgt	.L1380
	ldrb	w2, [x29, 31]
	ldrb	w3, [x29, 39]
	subs	w2, w2, w3
	csneg	w2, w2, w2, pl
	cmp	w2, 8
	bgt	.L1380
.L1369:
	add	x4, x4, 1
	cmp	w5, w4
	bgt	.L1381
.L1371:
	mov	w0, 0
	b	.L1366
	.p2align 3
.L1380:
	mov	w0, 1
.L1366:
	add	x6, x6, :lo12:__stack_chk_guard
	ldr	x2, [x29, 40]
	ldr	x1, [x6]
	eor	x1, x2, x1
	cbnz	x1, .L1384
	ldp	x29, x30, [sp], 48
	ret
.L1384:
	bl	__stack_chk_fail
	.size	check_part_mode.isra.6, .-check_part_mode.isra.6
	.align	2
	.p2align 3,,7
	.type	ebc_probe, %function
ebc_probe:
	stp	x29, x30, [sp, -160]!
	add	x29, sp, 0
	stp	x21, x22, [sp, 32]
	add	x22, x0, 16
	stp	x25, x26, [sp, 64]
	adrp	x25, __stack_chk_guard
	stp	x27, x28, [sp, 80]
	add	x1, x25, :lo12:__stack_chk_guard
	stp	x19, x20, [sp, 16]
	adrp	x27, .LC56
	stp	x23, x24, [sp, 48]
	add	x2, x27, :lo12:.LC56
	mov	x0, x22
	str	xzr, [x29, 144]
	ldr	x3, [x1]
	str	x3, [x29, 152]
	mov	x3,0
	adrp	x1, .LC59
	add	x1, x1, :lo12:.LC59
	bl	_dev_info
	adrp	x1, .LC60
	mov	x0, x22
	add	x1, x1, :lo12:.LC60
	bl	nvmem_cell_get
	cmn	x0, #4096
	bhi	.L1506
	add	x1, x29, 144
	mov	x19, x0
	bl	nvmem_cell_read
	mov	x20, x0
	mov	x0, x19
	bl	nvmem_cell_put
	cmn	x20, #4096
	bhi	.L1507
	ldr	x0, [x29, 144]
	cmp	x0, 2
	bne	.L1504
	ldrb	w0, [x20]
	cmp	w0, 53
	bne	.L1504
	ldrb	w0, [x20, 1]
	cmp	w0, 102
	beq	.L1463
	mov	w1, 3576
	str	w1, [x29, 104]
	cmp	w0, 118
	bne	.L1504
.L1391:
	mov	x0, x20
	bl	kfree
	mov	w2, 32960
	mov	x1, 1224
	movk	w2, 0x60, lsl 16
	mov	x0, x22
	bl	devm_kmalloc
	mov	x19, x0
	cbz	x0, .L1465
	adrp	x2, .LANCHOR0
	str	x22, [x19]
	adrp	x1, .LC64
	add	x1, x1, :lo12:.LC64
	str	x0, [x2, #:lo12:.LANCHOR0]
	mov	w2, 0
	ldr	x0, [x22, 752]
	bl	of_parse_phandle
	cbz	x0, .L1508
	bl	of_find_device_by_node
	cbz	x0, .L1394
	ldr	x0, [x0, 200]
	str	x0, [x19, 8]
	cbz	x0, .L1394
	adrp	x1, frame_done_callback
	add	x1, x1, :lo12:frame_done_callback
	str	x1, [x0, 136]
	add	x2, x29, 120
	adrp	x1, .LC66
	add	x1, x1, :lo12:.LC66
	ldr	x0, [x22, 752]
	bl	of_get_property
	mov	x21, x0
	ldrsw	x0, [x29, 120]
	lsr	x0, x0, 2
	str	w0, [x29, 120]
	cmp	w0, 0
	beq	.L1395
	mov	w20, 0
	mov	w26, 0
	ble	.L1405
	adrp	x23, .LC72
	adrp	x24, .LC74
	add	x23, x23, :lo12:.LC72
	add	x24, x24, :lo12:.LC74
	b	.L1489
	.p2align 3
.L1514:
	adrp	x1, .LC75
	mov	x0, x22
	add	x1, x1, :lo12:.LC75
	bl	_dev_warn
.L1402:
	ldr	w0, [x29, 120]
	add	w20, w20, 1
	cmp	w0, w20
	ble	.L1509
.L1489:
	ldr	w0, [x21], 4
	rev	w0, w0
	bl	of_find_node_by_phandle
	cbz	x0, .L1510
	bl	of_find_i2c_device_by_node
	cbz	x0, .L1511
	add	x28, x0, 32
	ldr	x0, [x28, 184]
	str	x0, [x19, 16]
	cbnz	x0, .L1512
	mov	x1, x23
	mov	x0, x28
	bl	devm_regulator_get
	str	x0, [x19, 24]
	cmn	x0, #4096
	bhi	.L1513
	add	x2, x29, 136
	mov	x1, x24
	mov	x0, x28
	bl	device_property_read_string
	cbnz	w0, .L1514
	ldr	x0, [x29, 136]
	bl	thermal_zone_get_zone_by_name
	str	x0, [x19, 32]
	cmn	x0, #4096
	bhi	.L1515
	ldr	w0, [x29, 120]
	add	w20, w20, 1
	mov	w26, 1
	cmp	w0, w20
	bgt	.L1489
.L1509:
	cbnz	w26, .L1400
.L1405:
	adrp	x1, .LC67
	mov	x0, x22
	add	x1, x1, :lo12:.LC67
	mov	w20, -517
	bl	_dev_err
	b	.L1385
	.p2align 3
.L1513:
	adrp	x1, .LC73
	mov	x0, x22
	add	x1, x1, :lo12:.LC73
	bl	_dev_warn
	b	.L1402
	.p2align 3
.L1515:
	adrp	x1, .LC76
	mov	x0, x22
	add	x1, x1, :lo12:.LC76
	bl	_dev_err
	b	.L1402
	.p2align 3
.L1510:
	adrp	x1, .LC69
	mov	x0, x22
	add	x1, x1, :lo12:.LC69
	mov	w20, -19
	bl	_dev_err
	.p2align 2
.L1385:
	add	x25, x25, :lo12:__stack_chk_guard
	mov	w0, w20
	ldr	x2, [x29, 152]
	ldr	x1, [x25]
	eor	x1, x2, x1
	cbnz	x1, .L1516
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 160
	ret
	.p2align 3
.L1511:
	adrp	x1, .LC70
	mov	x0, x22
	add	x1, x1, :lo12:.LC70
	mov	w20, -19
	bl	_dev_err
	b	.L1385
	.p2align 3
.L1512:
	adrp	x1, .LC71
	mov	w2, w20
	add	x1, x1, :lo12:.LC71
	mov	x0, x22
	bl	_dev_info
.L1400:
	add	x21, x19, 232
	ldr	w0, [x29, 104]
	str	x22, [x21, 96]
	add	x23, x19, 40
	adrp	x1, .LC77
	add	x1, x1, :lo12:.LC77
	str	w0, [x21, 700]
	str	x22, [x19, 40]
	ldr	x0, [x19, 8]
	str	x0, [x23, 8]
	mov	x0, x22
	ldr	x2, [x19, 16]
	str	x2, [x23, 16]
	bl	device_property_present
	tst	w0, 255
	beq	.L1406
	mov	w0, 1
	str	w0, [x21, 620]
.L1406:
	ldr	x20, [x19, 40]
	adrp	x1, .LC78
	mov	x4, 0
	add	x1, x1, :lo12:.LC78
	mov	x3, 1
	add	x2, x19, 116
	ldr	x0, [x20, 752]
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC111
	mov	x4, 0
	add	x1, x1, :lo12:.LC111
	mov	x3, 1
	add	x2, x19, 120
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC112
	mov	x4, 0
	add	x1, x1, :lo12:.LC112
	mov	x3, 1
	add	x2, x19, 124
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC113
	mov	x4, 0
	add	x1, x1, :lo12:.LC113
	mov	x3, 1
	add	x2, x19, 128
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC114
	mov	x4, 0
	add	x1, x1, :lo12:.LC114
	mov	x3, 1
	add	x2, x19, 144
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC115
	mov	x4, 0
	add	x1, x1, :lo12:.LC115
	mov	x3, 1
	add	x2, x19, 148
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC116
	mov	x4, 0
	add	x1, x1, :lo12:.LC116
	mov	x3, 1
	add	x2, x19, 152
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC117
	mov	x4, 0
	add	x1, x1, :lo12:.LC117
	mov	x3, 1
	add	x2, x19, 156
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC118
	mov	x4, 0
	add	x1, x1, :lo12:.LC118
	mov	x3, 1
	add	x2, x19, 160
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC119
	mov	x4, 0
	add	x1, x1, :lo12:.LC119
	mov	x3, 1
	add	x2, x19, 164
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC120
	mov	x4, 0
	add	x1, x1, :lo12:.LC120
	mov	x3, 1
	add	x2, x19, 168
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC121
	mov	x4, 0
	add	x1, x1, :lo12:.LC121
	mov	x3, 1
	add	x2, x19, 172
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC122
	mov	x4, 0
	add	x1, x1, :lo12:.LC122
	mov	x3, 1
	add	x2, x19, 176
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC123
	mov	x4, 0
	add	x1, x1, :lo12:.LC123
	mov	x3, 1
	add	x2, x19, 180
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC124
	mov	x4, 0
	add	x1, x1, :lo12:.LC124
	mov	x3, 1
	add	x2, x19, 184
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .L1408
	ldr	x0, [x20, 752]
	adrp	x1, .LC125
	mov	x4, 0
	add	x1, x1, :lo12:.LC125
	mov	x3, 1
	add	x2, x19, 188
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1449
	str	wzr, [x23, 148]
.L1449:
	ldr	x0, [x20, 752]
	adrp	x1, .LC79
	mov	x4, 0
	add	x1, x1, :lo12:.LC79
	mov	x3, 1
	add	x2, x19, 192
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1450
	str	wzr, [x23, 152]
.L1450:
	ldr	x0, [x20, 752]
	adrp	x1, .LC80
	mov	x4, 0
	add	x1, x1, :lo12:.LC80
	mov	x3, 1
	add	x2, x19, 196
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1451
	str	wzr, [x23, 156]
.L1451:
	ldr	x0, [x20, 752]
	adrp	x1, .LC81
	mov	x4, 0
	add	x1, x1, :lo12:.LC81
	mov	x3, 1
	add	x2, x19, 132
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1452
	str	wzr, [x23, 92]
.L1452:
	ldr	x0, [x20, 752]
	adrp	x1, .LC82
	mov	x4, 0
	add	x1, x1, :lo12:.LC82
	mov	x3, 1
	add	x2, x19, 136
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1453
	str	wzr, [x23, 96]
.L1453:
	ldr	x0, [x20, 752]
	adrp	x1, .LC83
	mov	x4, 0
	add	x1, x1, :lo12:.LC83
	mov	x3, 1
	add	x2, x19, 200
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1454
	str	wzr, [x23, 160]
.L1454:
	ldr	x0, [x20, 752]
	adrp	x1, .LC84
	mov	x4, 0
	add	x1, x1, :lo12:.LC84
	mov	x3, 1
	add	x2, x19, 204
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1455
	str	wzr, [x23, 164]
.L1455:
	ldr	x0, [x20, 752]
	adrp	x1, .LC85
	mov	x4, 0
	add	x1, x1, :lo12:.LC85
	mov	x3, 1
	add	x2, x19, 216
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1456
	str	wzr, [x23, 176]
.L1456:
	ldr	x0, [x20, 752]
	adrp	x1, .LC86
	mov	x4, 0
	add	x1, x1, :lo12:.LC86
	mov	x3, 1
	add	x2, x19, 220
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1457
	str	wzr, [x23, 180]
.L1457:
	ldr	x0, [x20, 752]
	adrp	x1, .LC87
	mov	x4, 0
	add	x1, x1, :lo12:.LC87
	mov	x3, 1
	add	x2, x19, 208
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1458
	str	wzr, [x23, 168]
.L1458:
	ldr	x0, [x20, 752]
	adrp	x1, .LC88
	mov	x4, 0
	add	x1, x1, :lo12:.LC88
	mov	x3, 1
	add	x2, x19, 212
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .L1459
	str	wzr, [x23, 172]
.L1459:
	ldr	x0, [x20, 752]
	mov	x2, 0
	adrp	x1, .LC89
	add	x1, x1, :lo12:.LC89
	mov	w26, -1
	mov	w24, 1
	bl	of_find_property
	cmp	x0, 0
	cset	w1, ne
	ldr	w0, [x23, 80]
	strb	w1, [x23, 184]
	str	w0, [x21, 80]
	ldr	w1, [x23, 76]
	str	w1, [x21, 84]
	strb	w24, [x21, 708]
	str	w1, [x21, 680]
	mul	w0, w0, w1
	str	w24, [x21, 688]
	str	w0, [x21, 28]
	str	w26, [x21, 704]
	lsr	w0, w0, 2
	str	w26, [x21, 720]
	str	w0, [x21, 32]
	mov	w0, 50
	str	w26, [x21, 724]
	str	w0, [x21, 716]
	mov	x0, x19
	bl	ebc_buffer_manage_init
	mov	w20, w0
	cbnz	w0, .L1517
	mov	x0, x21
	bl	ebc_lut_table_init
	mov	w20, w0
	cbnz	w0, .L1518
	adrp	x0, __cpu_possible_mask
	ldrb	w0, [x0, #:lo12:__cpu_possible_mask]
	bl	__sw_hweight64
	str	w0, [x21, 616]
	mov	w2, w26
	adrp	x0, .LANCHOR0
	add	x26, x0, :lo12:.LANCHOR0
	mov	w0, 99
	adrp	x3, .LC93
	str	w0, [x29, 128]
	add	x3, x3, :lo12:.LC93
	mov	x1, x21
	adrp	x0, ebc_auto_tast_function
	add	x0, x0, :lo12:ebc_auto_tast_function
	bl	kthread_create_on_node
	str	x0, [x26, 8]
	cmn	x0, #4096
	bhi	.L1519
	mov	w1, w24
	add	x2, x29, 128
	bl	sched_setscheduler_nocheck
	ldr	w0, [x21, 616]
	cmp	w0, 7
	bgt	.L1520
.L1424:
	adrp	x0, .LANCHOR0
	add	x24, x0, :lo12:.LANCHOR0
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
	adrp	x3, .LC95
	adrp	x0, ebc_auto_assist_tast_function
	add	x3, x3, :lo12:.LC95
	add	x0, x0, :lo12:ebc_auto_assist_tast_function
	mov	w2, -1
	mov	x1, x21
	bl	kthread_create_on_node
	str	x0, [x24, 16]
	cmn	x0, #4096
	bhi	.L1521
	add	x2, x29, 128
	mov	w1, 1
	bl	sched_setscheduler_nocheck
	ldr	w0, [x21, 616]
	cmp	w0, 7
	bgt	.L1522
.L1426:
	adrp	x0, .LANCHOR0
	add	x24, x0, :lo12:.LANCHOR0
	mov	w0, 1
	ldr	x2, [x24, 16]
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
	adrp	x3, .LC97
	str	w0, [x29, 128]
	add	x3, x3, :lo12:.LC97
	mov	w2, -1
	mov	x1, x21
	adrp	x0, ebc_thread
	add	x0, x0, :lo12:ebc_thread
	bl	kthread_create_on_node
	mov	x26, x0
	cmn	x0, #4096
	bhi	.L1427
	bl	wake_up_process
	str	x26, [x24, 24]
	mov	x0, x26
	add	x2, x29, 128
	mov	w1, 1
	bl	sched_setscheduler_nocheck
	ldr	w0, [x21, 616]
	cmp	w0, 7
	bgt	.L1523
.L1428:
	adrp	x0, .LANCHOR0
	add	x28, x0, :lo12:.LANCHOR0
	mov	w0, 1
	ldr	x2, [x28, 24]
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
	mov	w28, 1
	stp	wzr, wzr, [x21, 88]
	adrp	x1, .LC98
	str	wzr, [x21, 192]
	add	x1, x1, :lo12:.LC98
	str	w28, [x21, 240]
	adrp	x26, jiffies
	str	wzr, [x21, 576]
	add	x24, x19, 696
	str	wzr, [x21, 580]
	stp	w28, w28, [x0, 76]
	stp	wzr, wzr, [x0, 84]
	str	wzr, [x21, 608]
	str	wzr, [x21, 624]
	ldr	w0, [x19, 932]
	cmp	w0, 3576
	cset	w0, eq
	str	w0, [x21, 604]
	str	w0, [x21, 612]
	add	x0, x19, 480
	stp	xzr, xzr, [x0]
	stp	xzr, xzr, [x0, 16]
	stp	xzr, xzr, [x0, 32]
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
	mov	x5, 268435455
	ldr	x1, [x26, #:lo12:jiffies]
	str	x5, [x29, 104]
	mov	x0, x24
	add	x1, x1, x5
	add	x24, x19, 752
	bl	mod_timer
	mov	x3, 0
	mov	x4, 0
	mov	w2, 0
	mov	x0, x24
	adrp	x1, ebc_frame_timeout
	add	x1, x1, :lo12:ebc_frame_timeout
	bl	init_timer_key
	ldr	x5, [x29, 104]
	mov	x0, x24
	ldr	x1, [x26, #:lo12:jiffies]
	add	x1, x1, x5
	bl	mod_timer
	stp	wzr, wzr, [x29, 124]
	adrp	x0, saved_command_line
	adrp	x1, .LC99
	add	x1, x1, :lo12:.LC99
	ldr	x24, [x0, #:lo12:saved_command_line]
	mov	x0, x24
	bl	strstr
	adrp	x1, .LC100
	mov	x26, x0
	add	x1, x1, :lo12:.LC100
	mov	x0, x24
	bl	strstr
	mov	x3, x0
	cbz	x26, .L1429
	add	x2, x29, 124
	str	x3, [x29, 104]
	mov	x0, x26
	adrp	x1, .LC101
	add	x1, x1, :lo12:.LC101
	bl	sscanf
	ldr	w2, [x29, 124]
	ldr	x0, [x19, 232]
	ldr	x3, [x29, 104]
	cmp	x0, x2, uxtw
	bls	.L1524
.L1429:
	str	wzr, [x29, 104]
	mov	x24, 0
	mov	w28, 0
	mov	x26, 0
	cbz	x3, .L1461
.L1460:
	add	x2, x29, 128
	mov	x0, x3
	adrp	x1, .LC104
	add	x1, x1, :lo12:.LC104
	bl	sscanf
	mov	w28, 0
	ldr	w2, [x29, 128]
	mov	x26, 0
	ldr	x0, [x19, 232]
	cmp	x0, x2, uxtw
	bls	.L1525
.L1433:
	ldr	w0, [x29, 104]
	cbz	w0, .L1461
.L1432:
	adrp	x0, .LC109
	add	x0, x0, :lo12:.LC109
	bl	ebc_empty_buf_get
	mov	x5, x0
	cbz	x0, .L1437
	ldp	w4, w0, [x23, 76]
	mov	x1, 0
	ldr	x2, [x5, 16]
	mul	w4, w4, w0
	lsr	w4, w4, 1
	cbz	w4, .L1440
	.p2align 2
.L1488:
	ldrb	w0, [x24, x1]
	add	x1, x1, 1
	cmp	w4, w1
	and	w3, w0, -16
	lsl	w0, w0, 4
	strb	w0, [x2], 2
	strb	w3, [x2, -1]
	bgt	.L1488
.L1440:
	mov	w0, 7
	stp	wzr, wzr, [x5, 48]
	str	w0, [x5, 40]
	mov	w2, 1
	mov	x0, x5
	ldr	w1, [x23, 76]
	str	w1, [x5, 56]
	ldr	w1, [x23, 80]
	stp	w1, w2, [x5, 60]
	bl	ebc_add_to_dsp_buf_list
.L1437:
	cbnz	w28, .L1526
.L1442:
	ldr	w0, [x21, 88]
	adrp	x23, .LANCHOR1
	cbz	w0, .L1527
.L1447:
	cbz	x24, .L1448
	mov	x0, x24
	bl	kfree
.L1448:
	cbz	x26, .L1431
	mov	x0, x26
	bl	kfree
.L1431:
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
	ldr	x0, [x21, 96]
	adrp	x1, .LC110
	add	x2, x27, :lo12:.LC56
	add	x1, x1, :lo12:.LC110
	bl	_dev_info
	b	.L1385
	.p2align 3
.L1408:
	mov	w2, -22
	adrp	x1, .LC90
	mov	x0, x22
	add	x1, x1, :lo12:.LC90
	mov	w20, w2
	bl	_dev_err
	b	.L1385
	.p2align 3
.L1504:
	mov	x0, x20
	bl	kfree
	mov	x0, x22
	adrp	x1, .LC63
	mov	w20, -12
	add	x1, x1, :lo12:.LC63
	bl	_dev_err
	b	.L1385
	.p2align 3
.L1506:
	adrp	x1, .LC61
	mov	x0, x22
	add	x1, x1, :lo12:.LC61
	mov	w20, -12
	bl	_dev_err
	b	.L1385
	.p2align 3
.L1463:
	mov	w0, 3566
	str	w0, [x29, 104]
	b	.L1391
	.p2align 3
.L1507:
	adrp	x1, .LC62
	mov	x0, x22
	add	x1, x1, :lo12:.LC62
	bl	_dev_err
	b	.L1385
	.p2align 3
.L1517:
	adrp	x1, .LC91
	mov	x0, x22
	add	x1, x1, :lo12:.LC91
	bl	_dev_err
	b	.L1385
.L1523:
	ldr	x0, [x24, 24]
	adrp	x1, cpu_bit_bitmap+48
	add	x1, x1, :lo12:cpu_bit_bitmap+48
	bl	set_cpus_allowed_ptr
	b	.L1428
.L1527:
	mov	w2, 1
	str	w2, [x21, 88]
	add	x0, x23, :lo12:.LANCHOR1
	mov	w1, w2
	add	x0, x0, 304
	bl	__wake_up_sync
	b	.L1447
.L1461:
	ldr	x0, [x21, 96]
	adrp	x1, .LC107
	add	x1, x1, :lo12:.LC107
	bl	_dev_info
	ldr	x0, [x19, 16]
	cbz	x0, .L1435
	bl	ebc_pmic_verity_vcom
.L1436:
	adrp	x0, .LC108
	add	x0, x0, :lo12:.LC108
	bl	ebc_empty_buf_get
	mov	x3, x0
	ldp	w2, w0, [x19, 116]
	str	x3, [x29, 104]
	mov	w1, 240
	mul	w2, w2, w0
	ldr	x0, [x3, 16]
	bl	memset
	ldr	x3, [x29, 104]
	mov	w0, 17
	mov	w2, 1
	str	w0, [x3, 40]
	mov	x0, x3
	stp	wzr, wzr, [x3, 48]
	ldr	w1, [x19, 116]
	str	w1, [x3, 56]
	ldr	w1, [x19, 120]
	stp	w1, w2, [x3, 60]
	bl	ebc_add_to_dsp_buf_list
	b	.L1437
.L1520:
	ldr	x0, [x26, 8]
	adrp	x1, cpu_bit_bitmap+56
	add	x1, x1, :lo12:cpu_bit_bitmap+56
	bl	set_cpus_allowed_ptr
	b	.L1424
.L1518:
	adrp	x1, .LC92
	mov	x0, x22
	add	x1, x1, :lo12:.LC92
	bl	_dev_err
	b	.L1385
.L1522:
	ldr	x0, [x24, 16]
	adrp	x1, cpu_bit_bitmap+64
	add	x1, x1, :lo12:cpu_bit_bitmap+64
	bl	set_cpus_allowed_ptr
	b	.L1426
.L1394:
	mov	w20, -517
	b	.L1385
.L1526:
	adrp	x0, .LC109
	add	x0, x0, :lo12:.LC109
	bl	ebc_empty_buf_get
	mov	x5, x0
	cbz	x0, .L1442
	ldp	w4, w0, [x23, 76]
	mov	x1, 0
	ldr	x2, [x5, 16]
	mul	w4, w4, w0
	lsr	w4, w4, 1
	cbz	w4, .L1446
	.p2align 2
.L1487:
	ldrb	w0, [x26, x1]
	add	x1, x1, 1
	cmp	w4, w1
	and	w3, w0, -16
	lsl	w0, w0, 4
	strb	w0, [x2], 2
	strb	w3, [x2, -1]
	bgt	.L1487
.L1446:
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
	b	.L1442
.L1465:
	mov	w20, -12
	b	.L1385
.L1524:
	ldr	x0, [x21, 96]
	adrp	x1, .LC102
	add	x1, x1, :lo12:.LC102
	bl	_dev_info
	ldp	w0, w1, [x23, 76]
	mul	w0, w0, w1
	mov	w1, 32960
	movk	w1, 0x60, lsl 16
	lsr	w0, w0, 1
	bl	__kmalloc
	ldr	x3, [x29, 104]
	mov	x24, x0
	cbz	x0, .L1528
	ldp	w2, w1, [x23, 76]
	str	x3, [x29, 104]
	ldr	x4, [x19, 232]
	mul	w2, w2, w1
	ldr	w1, [x29, 124]
	sub	x1, x1, x4
	ldr	x4, [x21, 8]
	lsr	w2, w2, 1
	add	x1, x4, x1
	bl	memcpy
	ldr	x3, [x29, 104]
	cbz	x3, .L1467
	str	w28, [x29, 104]
	b	.L1460
.L1525:
	ldr	x0, [x21, 96]
	adrp	x1, .LC105
	add	x1, x1, :lo12:.LC105
	bl	_dev_info
	ldp	w0, w1, [x23, 76]
	mul	w0, w0, w1
	mov	w1, 32960
	movk	w1, 0x60, lsl 16
	lsr	w0, w0, 1
	bl	__kmalloc
	mov	x26, x0
	cbz	x0, .L1529
	ldp	w2, w1, [x23, 76]
	mov	w28, 1
	ldr	x3, [x19, 232]
	mul	w2, w2, w1
	ldr	w1, [x29, 128]
	sub	x1, x1, x3
	ldr	x3, [x21, 8]
	lsr	w2, w2, 1
	add	x1, x3, x1
	bl	memcpy
	b	.L1433
.L1395:
	adrp	x1, .LC68
	mov	x0, x22
	add	x1, x1, :lo12:.LC68
	mov	w20, -22
	bl	_dev_err
	b	.L1385
.L1519:
	ldr	x0, [x21, 96]
	adrp	x1, .LC94
	add	x1, x1, :lo12:.LC94
	bl	_dev_err
.L1423:
	adrp	x1, .LC127
	mov	x0, x22
	add	x1, x1, :lo12:.LC127
	mov	w20, -1
	bl	_dev_err
	b	.L1385
.L1521:
	ldr	x0, [x21, 96]
	adrp	x1, .LC96
	add	x1, x1, :lo12:.LC96
	bl	_dev_err
	b	.L1423
.L1427:
	ldr	x0, [x21, 96]
	adrp	x1, .LC126
	str	x26, [x24, 24]
	add	x1, x1, :lo12:.LC126
	bl	_dev_err
	b	.L1423
.L1508:
	adrp	x1, .LC65
	mov	x0, x22
	add	x1, x1, :lo12:.LC65
	mov	w20, -19
	bl	_dev_err
	b	.L1385
.L1435:
	ldr	x0, [x19, 24]
	bl	ebc_regulator_verity_vcom
	b	.L1436
.L1516:
	bl	__stack_chk_fail
.L1529:
	ldr	x0, [x21, 96]
	adrp	x1, .LC106
	adrp	x23, .LANCHOR1
	add	x1, x1, :lo12:.LC106
	bl	_dev_err
	b	.L1431
.L1467:
	mov	w28, 0
	mov	x26, 0
	b	.L1432
.L1528:
	ldr	x0, [x21, 96]
	adrp	x1, .LC103
	adrp	x23, .LANCHOR1
	add	x1, x1, :lo12:.LC103
	bl	_dev_err
	b	.L1431
	.size	ebc_probe, .-ebc_probe
	.align	2
	.p2align 3,,7
	.type	auto_frame_state_read, %function
auto_frame_state_read:
	adrp	x0, .LANCHOR0
	ldr	x1, [x0, #:lo12:.LANCHOR0]
	ldp	w0, w4, [x1, 116]
	mul	w4, w4, w0
	cbz	w4, .L1531
	ldr	x5, [x1, 392]
	mov	w1, 0
	ldrb	w3, [x5]
	cbz	w3, .L1534
	b	.L1532
	.p2align 3
.L1536:
	ldrb	w3, [x5, w1, sxtw]
	cbnz	w3, .L1532
.L1534:
	add	w1, w1, 1
	cmp	w1, w4
	bne	.L1536
.L1531:
	adrp	x1, .LC128
	add	x1, x1, :lo12:.LC128
	mov	x0, 2
	ldrh	w3, [x1]
	ldrb	w1, [x1, 2]
	strh	w3, [x2]
	strb	w1, [x2, 2]
	ret
	.p2align 3
.L1532:
	stp	x29, x30, [sp, -16]!
	mov	x0, x2
	adrp	x1, .LC55
	mov	w2, w3
	add	x29, sp, 0
	add	x1, x1, :lo12:.LC55
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
	ldr	w0, [x19, 724]
	bhi	.L1547
	tbnz	w0, #31, .L1549
	ldr	w1, [x19, 80]
	cmp	w0, w1
	blt	.L1589
.L1549:
	cmp	w4, 3
	beq	.L1551
	cmp	w4, 4
	beq	.L1552
	cmp	w4, 1
	beq	.L1590
	ldp	x1, x2, [x19, 208]
	mov	x0, x19
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	get_pix_pos_old_and_new_gray
	ldr	x0, [x19, 216]
	ldr	w1, [x0, 40]
	cmp	w1, 21
	beq	.L1591
	ldrb	w4, [x19, 56]
	str	w4, [x19, 72]
	ldr	x2, [x19, 208]
	ldr	w1, [x20, 164]
	ldr	x5, [x21, 352]
	cbz	w1, .L1579
	ldr	x1, [x0, 16]
	mov	w3, w4
	ldr	x2, [x2, 16]
	mov	w6, 1
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change2.isra.3
	ldr	w4, [x19, 72]
	ldp	x2, x1, [x19, 208]
	sub	w4, w4, #1
	str	w4, [x19, 72]
	ldr	w0, [x20, 164]
	ldrb	w3, [x21, 288]
	ldr	x5, [x21, 352]
	cbz	w0, .L1581
.L1599:
	ldr	x1, [x1, 16]
	mov	w6, 1
	ldr	x2, [x2, 16]
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change2.isra.3
	b	.L1582
	.p2align 3
.L1547:
	tbnz	w0, #31, .L1549
	ldr	w1, [x19, 80]
	cmp	w0, w1
	bge	.L1549
	ldr	w0, [x19, 720]
	tbnz	w0, #31, .L1549
	ldr	w1, [x19, 84]
	cmp	w0, w1
	bge	.L1549
	ldp	x1, x2, [x19, 208]
	mov	x0, x19
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	strb	wzr, [x19, 728]
	bl	get_pix_pos_old_and_new_gray
	ldr	w4, [x19, 240]
	b	.L1549
	.p2align 3
.L1590:
	ldrb	w0, [x19, 56]
	str	w0, [x19, 72]
	ldp	x2, x1, [x19, 208]
	ldr	w0, [x20, 164]
	cbnz	w0, .L1592
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
	cbz	w0, .L1569
.L1598:
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change_part2
	b	.L1582
	.p2align 3
.L1551:
	ldr	w0, [x20, 164]
	ldp	x1, x2, [x19, 136]
	ldr	x3, [x19, 160]
	cbnz	w0, .L1593
	ldr	x0, [x19, 176]
	mov	w5, 1
	mov	x4, x19
	bl	get_auto_image
	ldr	w0, [x19, 60]
	cbz	w0, .L1563
.L1596:
	ldr	w0, [x20, 164]
	ldp	x1, x2, [x19, 136]
	ldr	x3, [x19, 160]
	cbz	w0, .L1564
	ldr	x0, [x19, 184]
	mov	w5, 1
	mov	x4, x19
	bl	get_auto_image2
	.p2align 2
.L1582:
	str	wzr, [x20, 72]
	mov	x1, x19
	mov	x0, x20
	bl	flip
.L1546:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L1552:
	ldrsw	x2, [x19, 32]
	mov	w1, 0
	ldr	x0, [x19, 176]
	bl	memset
	ldr	w0, [x20, 164]
	cbnz	w0, .L1594
	ldp	x1, x2, [x19, 136]
	mov	x5, x19
	ldp	x3, x4, [x19, 160]
	ldr	x0, [x19, 176]
	bl	get_overlay_image_area
.L1555:
	ldr	w0, [x19, 60]
	cbnz	w0, .L1595
	ldr	w0, [x19, 624]
	cmp	w0, 0
	ble	.L1560
	ldr	x0, [x19, 96]
	adrp	x2, .LANCHOR3
	add	x2, x2, :lo12:.LANCHOR3
	adrp	x1, .LC129
	add	x2, x2, 48
	add	x1, x1, :lo12:.LC129
	bl	_dev_info
.L1560:
	str	wzr, [x19, 52]
.L1597:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L1594:
	ldp	x1, x2, [x19, 136]
	mov	x4, x19
	ldr	x3, [x19, 160]
	ldr	x0, [x19, 176]
	bl	get_overlay_image_area2.isra.0
	b	.L1555
	.p2align 3
.L1593:
	ldr	x0, [x19, 176]
	mov	w5, 1
	mov	x4, x19
	bl	get_auto_image2
	ldr	w0, [x19, 60]
	cbnz	w0, .L1596
.L1563:
	ldr	w0, [x19, 624]
	cmp	w0, 0
	ble	.L1560
	ldr	x0, [x19, 96]
	adrp	x2, .LANCHOR3
	add	x2, x2, :lo12:.LANCHOR3
	adrp	x1, .LC130
	add	x2, x2, 48
	add	x1, x1, :lo12:.LC130
	bl	_dev_info
	str	wzr, [x19, 52]
	b	.L1597
	.p2align 3
.L1592:
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
	cbnz	w0, .L1598
.L1569:
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change_part
	b	.L1582
	.p2align 3
.L1579:
	ldr	x1, [x0, 16]
	mov	w3, w4
	ldr	x2, [x2, 16]
	mov	w6, 1
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change.isra.2
	ldr	w4, [x19, 72]
	ldp	x2, x1, [x19, 208]
	sub	w4, w4, #1
	str	w4, [x19, 72]
	ldr	w0, [x20, 164]
	ldrb	w3, [x21, 288]
	ldr	x5, [x21, 352]
	cbnz	w0, .L1599
.L1581:
	ldr	x1, [x1, 16]
	mov	w6, 1
	ldr	x2, [x2, 16]
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change.isra.2
	b	.L1582
	.p2align 3
.L1589:
	ldr	w0, [x19, 720]
	tbnz	w0, #31, .L1549
	ldr	w1, [x19, 84]
	cmp	w0, w1
	bge	.L1549
	ldp	x2, x1, [x19, 136]
	strb	wzr, [x19, 728]
	mov	x0, x19
	bl	get_pix_pos_old_and_new_gray
	ldr	w4, [x19, 240]
	b	.L1549
	.p2align 3
.L1595:
	str	wzr, [x20, 72]
	mov	x1, x19
	mov	x0, x20
	bl	flip
	ldrsw	x2, [x19, 32]
	mov	w1, 0
	ldr	x0, [x19, 184]
	bl	memset
	ldr	w0, [x20, 164]
	cbz	w0, .L1557
	ldp	x1, x2, [x19, 136]
	mov	x4, x19
	ldr	x3, [x19, 160]
	ldr	x0, [x19, 184]
	bl	get_overlay_image_area2.isra.0
	b	.L1546
	.p2align 3
.L1564:
	ldr	x0, [x19, 184]
	mov	w5, 1
	mov	x4, x19
	bl	get_auto_image
	b	.L1582
	.p2align 3
.L1557:
	ldp	x1, x2, [x19, 136]
	mov	x5, x19
	ldp	x3, x4, [x19, 160]
	ldr	x0, [x19, 184]
	bl	get_overlay_image_area
	b	.L1546
	.p2align 3
.L1591:
	ldp	w3, w2, [x19, 80]
	mov	w1, 255
	ldr	x0, [x19, 160]
	mul	w2, w2, w3
	sxtw	x2, w2
	bl	memset
	ldr	w1, [x19, 692]
	ldr	w0, [x19, 680]
	cmp	w1, 5
	ldr	w2, [x19, 84]
	csel	w1, w1, wzr, ls
	str	w0, [x19, 672]
	str	w1, [x19, 676]
	cmp	w0, 0
	str	wzr, [x19, 688]
	ccmp	w0, w2, 0, gt
	ble	.L1574
	mov	w0, w2
	str	w2, [x19, 672]
.L1574:
	str	w0, [x19, 684]
	ldp	x2, x1, [x19, 208]
	ldr	w0, [x20, 164]
	cbz	w0, .L1575
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change_full2
.L1576:
	ldr	w1, [x19, 672]
	ldr	w0, [x19, 684]
	add	w0, w0, w1
	str	w0, [x19, 684]
	ldp	x2, x1, [x19, 208]
	ldr	w0, [x20, 164]
	cbz	w0, .L1577
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change_full2
	b	.L1582
	.p2align 3
.L1575:
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 176]
	bl	direct_mode_data_change_full
	b	.L1576
	.p2align 3
.L1577:
	ldr	x1, [x1, 16]
	mov	w4, 1
	ldr	x2, [x2, 16]
	mov	x3, x19
	ldr	x0, [x19, 184]
	bl	direct_mode_data_change_full
	b	.L1582
	.size	ebc_frame_start, .-ebc_frame_start
	.align	2
	.p2align 3,,7
	.global	refresh_new_image
	.type	refresh_new_image, %function
refresh_new_image:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	ldp	w30, w6, [x5, 80]
	cmp	w6, 0
	add	w16, w6, 7
	csel	w16, w16, w6, lt
	cmp	w30, 0
	ble	.L1600
	asr	w16, w16, 3
	mov	w18, 0
	sub	w17, w16, #1
	mov	x15, 4026531840
	add	x17, x17, 1
	mov	x14, 1030792151040
	lsl	x17, x17, 3
	mov	x13, 263882790666240
	mov	x12, 67553994410557440
	mov	x11, -1152921504606846976
	mov	x23, -2305843009213693952
	mov	x22, 63050394783186944
	mov	x21, 246290604621824
	mov	x20, 962072674304
	mov	x19, 3758096384
	.p2align 2
.L1602:
	mov	x10, 0
	cmp	w16, 0
	bgt	.L1672
	b	.L1669
	.p2align 3
.L1681:
	and	x6, x8, 240
	and	x5, x7, 255
	cmp	x6, 240
	bne	.L1604
	cmp	x5, 240
	mov	x6, 255
	cset	x5, eq
.L1605:
	and	x9, x8, 61440
	and	x25, x7, 65280
	cmp	x9, 61440
	bne	.L1608
	orr	x9, x5, 256
	cmp	x25, 61440
	orr	x6, x6, 65280
	csel	x5, x9, x5, eq
.L1609:
	and	x9, x8, 15728640
	and	x25, x7, 16711680
	cmp	x9, 15728640
	bne	.L1612
	orr	x9, x5, 65536
	cmp	x25, 15728640
	orr	x6, x6, 16711680
	csel	x5, x9, x5, eq
.L1613:
	and	x9, x8, 4026531840
	and	x25, x7, 4278190080
	cmp	x9, x15
	bne	.L1616
	orr	x9, x5, 16777216
	cmp	x25, x15
	orr	x6, x6, 4278190080
	csel	x5, x9, x5, eq
.L1617:
	and	x9, x8, 1030792151040
	and	x25, x7, 1095216660480
	cmp	x9, x14
	bne	.L1620
.L1682:
	orr	x9, x5, 4294967296
	cmp	x25, x14
	orr	x6, x6, 1095216660480
	csel	x5, x9, x5, eq
.L1621:
	and	x9, x8, 263882790666240
	and	x25, x7, 280375465082880
	cmp	x9, x13
	bne	.L1624
	orr	x9, x5, 1099511627776
	cmp	x25, x13
	orr	x6, x6, 280375465082880
	csel	x5, x9, x5, eq
.L1625:
	and	x9, x8, 67553994410557440
	and	x25, x7, 71776119061217280
	cmp	x9, x12
	bne	.L1628
	orr	x9, x5, 281474976710656
	cmp	x25, x12
	orr	x6, x6, 71776119061217280
	csel	x5, x9, x5, eq
.L1629:
	and	x8, x8, -1152921504606846976
	and	x9, x7, -72057594037927936
	cmp	x8, x11
	bne	.L1664
.L1675:
	orr	x8, x5, 72057594037927936
	cmp	x9, x11
	orr	x6, x6, -72057594037927936
	csel	x5, x8, x5, eq
.L1633:
	eor	x7, x24, x7
	str	x5, [x4, x10, lsl 3]
	and	x6, x7, x6
	eor	x6, x24, x6
	str	x6, [x0, x10, lsl 3]
	add	x10, x10, 1
	cmp	w16, w10
	ble	.L1680
.L1672:
	ldr	x9, [x3, x10, lsl 3]
	ldr	x5, [x4, x10, lsl 3]
	ldr	x8, [x1, x10, lsl 3]
	ldr	x24, [x0, x10, lsl 3]
	ldr	x7, [x2, x10, lsl 3]
	cbz	x9, .L1681
	and	x25, x9, 255
	mov	x6, 0
	cbnz	x25, .L1636
	and	x6, x8, 240
	and	x5, x5, -256
	and	x25, x7, 255
	cmp	x6, 240
	bne	.L1637
	orr	x6, x5, 1
	cmp	x25, 240
	csel	x5, x6, x5, eq
	mov	x6, 255
.L1636:
	tst	x9, 65280
	bne	.L1640
	and	x25, x8, 61440
	and	x5, x5, -65281
	cmp	x25, 61440
	and	x26, x7, 65280
	bne	.L1641
	cmp	x26, 61440
	orr	x25, x5, 256
	orr	x6, x6, 65280
	csel	x5, x25, x5, eq
.L1640:
	tst	x9, 16711680
	bne	.L1644
	and	x25, x8, 15728640
	and	x5, x5, -16711681
	cmp	x25, 15728640
	and	x26, x7, 16711680
	bne	.L1645
	cmp	x26, 15728640
	orr	x25, x5, 65536
	orr	x6, x6, 16711680
	csel	x5, x25, x5, eq
.L1644:
	tst	x9, 4278190080
	bne	.L1648
	and	x25, x8, 4026531840
	and	x5, x5, -4278190081
	cmp	x25, x15
	and	x26, x7, 4278190080
	bne	.L1649
	cmp	x26, x15
	orr	x25, x5, 16777216
	orr	x6, x6, 4278190080
	csel	x5, x25, x5, eq
.L1648:
	tst	x9, 1095216660480
	bne	.L1652
	and	x25, x8, 1030792151040
	and	x5, x5, -1095216660481
	cmp	x25, x14
	and	x26, x7, 1095216660480
	bne	.L1653
	cmp	x26, x14
	orr	x25, x5, 4294967296
	orr	x6, x6, 1095216660480
	csel	x5, x25, x5, eq
.L1652:
	tst	x9, 280375465082880
	bne	.L1656
	and	x25, x8, 263882790666240
	and	x5, x5, -280375465082881
	cmp	x25, x13
	and	x26, x7, 280375465082880
	bne	.L1657
	cmp	x26, x13
	orr	x25, x5, 1099511627776
	orr	x6, x6, 280375465082880
	csel	x5, x25, x5, eq
.L1656:
	tst	x9, 71776119061217280
	bne	.L1660
	and	x25, x8, 67553994410557440
	and	x5, x5, -71776119061217281
	cmp	x25, x12
	and	x26, x7, 71776119061217280
	bne	.L1661
	cmp	x26, x12
	orr	x25, x5, 281474976710656
	orr	x6, x6, 71776119061217280
	csel	x5, x25, x5, eq
.L1660:
	tst	x9, -72057594037927936
	bne	.L1633
	and	x8, x8, -1152921504606846976
	and	x5, x5, 72057594037927935
	and	x9, x7, -72057594037927936
	cmp	x8, x11
	beq	.L1675
	.p2align 2
.L1664:
	and	x24, x24, 72057594037927935
	cbnz	x8, .L1665
	eor	x7, x24, x7
	orr	x5, x5, 72057594037927936
	and	x6, x7, x6
	str	x5, [x4, x10, lsl 3]
	eor	x6, x24, x6
	str	x6, [x0, x10, lsl 3]
	add	x10, x10, 1
	cmp	w16, w10
	bgt	.L1672
	.p2align 2
.L1680:
	add	x3, x3, x17
	add	x1, x1, x17
	add	x2, x2, x17
	add	x4, x4, x17
	add	x0, x0, x17
.L1669:
	add	w18, w18, 1
	cmp	w30, w18
	bne	.L1602
.L1600:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 80
	ret
	.p2align 3
.L1628:
	and	x24, x24, -71776119061217281
	cbnz	x9, .L1630
	orr	x5, x5, 281474976710656
	b	.L1629
	.p2align 3
.L1624:
	and	x24, x24, -280375465082881
	cbnz	x9, .L1626
	orr	x5, x5, 1099511627776
	b	.L1625
	.p2align 3
.L1616:
	and	x24, x24, -4278190081
	cbnz	x9, .L1618
	and	x9, x8, 1030792151040
	orr	x5, x5, 16777216
	and	x25, x7, 1095216660480
	cmp	x9, x14
	beq	.L1682
	.p2align 2
.L1620:
	and	x24, x24, -1095216660481
	cbnz	x9, .L1622
	orr	x5, x5, 4294967296
	b	.L1621
	.p2align 3
.L1612:
	and	x24, x24, -16711681
	cbnz	x9, .L1614
	orr	x5, x5, 65536
	b	.L1613
	.p2align 3
.L1608:
	and	x24, x24, -65281
	cbnz	x9, .L1610
	orr	x5, x5, 256
	b	.L1609
	.p2align 3
.L1604:
	cbnz	x6, .L1606
	and	x24, x24, -256
	mov	x5, 1
	b	.L1605
	.p2align 3
.L1665:
	cmp	x8, x23
	beq	.L1683
	orr	x24, x8, x24
	b	.L1633
	.p2align 3
.L1606:
	cmp	x6, 224
	beq	.L1684
	and	x24, x24, -256
	mov	x5, 0
	orr	x24, x6, x24
	mov	x6, 0
	b	.L1605
	.p2align 3
.L1630:
	cmp	x9, x22
	beq	.L1685
	orr	x24, x9, x24
	b	.L1629
	.p2align 3
.L1626:
	cmp	x9, x21
	beq	.L1686
	orr	x24, x9, x24
	b	.L1625
	.p2align 3
.L1614:
	cmp	x9, 14680064
	beq	.L1687
	orr	x24, x9, x24
	b	.L1613
	.p2align 3
.L1622:
	cmp	x9, x20
	beq	.L1688
	orr	x24, x9, x24
	b	.L1621
	.p2align 3
.L1618:
	cmp	x9, x19
	beq	.L1689
	orr	x24, x9, x24
	b	.L1617
	.p2align 3
.L1610:
	cmp	x9, 57344
	beq	.L1690
	orr	x24, x9, x24
	b	.L1609
	.p2align 3
.L1683:
	orr	x5, x5, 72057594037927936
	orr	x24, x24, -1152921504606846976
	b	.L1633
	.p2align 3
.L1690:
	orr	x5, x5, 256
	orr	x24, x24, 61440
	b	.L1609
	.p2align 3
.L1684:
	and	x6, x24, -256
	mov	x5, 1
	orr	x24, x6, 240
	mov	x6, 0
	b	.L1605
	.p2align 3
.L1686:
	orr	x5, x5, 1099511627776
	orr	x24, x24, 263882790666240
	b	.L1625
	.p2align 3
.L1685:
	orr	x5, x5, 281474976710656
	orr	x24, x24, 67553994410557440
	b	.L1629
	.p2align 3
.L1688:
	orr	x5, x5, 4294967296
	orr	x24, x24, 1030792151040
	b	.L1621
	.p2align 3
.L1687:
	orr	x5, x5, 65536
	orr	x24, x24, 15728640
	b	.L1613
	.p2align 3
.L1689:
	orr	x5, x5, 16777216
	orr	x24, x24, 4026531840
	b	.L1617
.L1637:
	cbz	x6, .L1691
	cmp	x6, 224
	beq	.L1692
	and	x24, x24, -256
	orr	x24, x6, x24
	mov	x6, 0
	b	.L1636
.L1657:
	and	x24, x24, -280375465082881
	cbz	x25, .L1693
	cmp	x25, x21
	beq	.L1694
	orr	x24, x25, x24
	b	.L1656
.L1661:
	and	x24, x24, -71776119061217281
	cbz	x25, .L1695
	cmp	x25, x22
	beq	.L1696
	orr	x24, x25, x24
	b	.L1660
.L1641:
	and	x24, x24, -65281
	cbz	x25, .L1697
	cmp	x25, 57344
	beq	.L1698
	orr	x24, x25, x24
	b	.L1640
.L1645:
	and	x24, x24, -16711681
	cbz	x25, .L1699
	cmp	x25, 14680064
	beq	.L1700
	orr	x24, x25, x24
	b	.L1644
.L1649:
	and	x24, x24, -4278190081
	cbz	x25, .L1701
	cmp	x25, x19
	beq	.L1702
	orr	x24, x25, x24
	b	.L1648
.L1653:
	and	x24, x24, -1095216660481
	cbz	x25, .L1703
	cmp	x25, x20
	beq	.L1704
	orr	x24, x25, x24
	b	.L1652
.L1703:
	orr	x5, x5, 4294967296
	b	.L1652
.L1701:
	orr	x5, x5, 16777216
	b	.L1648
.L1699:
	orr	x5, x5, 65536
	b	.L1644
.L1697:
	orr	x5, x5, 256
	b	.L1640
.L1695:
	orr	x5, x5, 281474976710656
	b	.L1660
.L1693:
	orr	x5, x5, 1099511627776
	b	.L1656
.L1691:
	and	x24, x24, -256
	orr	x5, x5, 1
	b	.L1636
.L1704:
	orr	x5, x5, 4294967296
	orr	x24, x24, 1030792151040
	b	.L1652
.L1692:
	and	x6, x24, -256
	orr	x5, x5, 1
	orr	x24, x6, 240
	mov	x6, 0
	b	.L1636
.L1694:
	orr	x5, x5, 1099511627776
	orr	x24, x24, 263882790666240
	b	.L1656
.L1696:
	orr	x5, x5, 281474976710656
	orr	x24, x24, 67553994410557440
	b	.L1660
.L1698:
	orr	x5, x5, 256
	orr	x24, x24, 61440
	b	.L1640
.L1700:
	orr	x5, x5, 65536
	orr	x24, x24, 15728640
	b	.L1644
.L1702:
	orr	x5, x5, 16777216
	orr	x24, x24, 4026531840
	b	.L1648
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
	ble	.L1705
	sub	w12, w10, #1
	mov	w13, 0
	add	x12, x12, 1
	mov	x11, 255
	lsl	x12, x12, 3
	.p2align 2
.L1707:
	cmp	w10, 0
	ble	.L1718
	add	x7, x0, 8
	mov	x5, 0
	.p2align 2
.L1717:
	ldr	x3, [x1, x5, lsl 3]
	ldr	x8, [x7, -8]
	eor	x6, x3, x8
	cmp	x3, x8
	beq	.L1708
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
.L1708:
	add	x5, x5, 1
	add	x7, x7, 8
	cmp	w10, w5
	bgt	.L1717
	add	x0, x0, x12
	add	x2, x2, x12
	add	x1, x1, x12
.L1718:
	add	w13, w13, 1
	cmp	w14, w13
	bne	.L1707
.L1705:
	ret
	.size	refresh_new_image_auto, .-refresh_new_image_auto
	.align	2
	.p2align 3,,7
	.type	ebc_thread, %function
ebc_thread:
	stp	x29, x30, [sp, -224]!
	adrp	x1, .LANCHOR0
	adrp	x0, __stack_chk_guard
	add	x0, x0, :lo12:__stack_chk_guard
	add	x29, sp, 0
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	stp	x19, x20, [sp, 16]
	ldr	x27, [x1, #:lo12:.LANCHOR0]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	add	x26, x27, 232
	ldr	x1, [x0]
	str	x1, [x29, 216]
	mov	x1,0
	add	x0, x27, 696
	str	x0, [x29, 144]
	add	x0, x27, 40
	str	x0, [x29, 136]
	add	x0, x27, 752
	str	x0, [x29, 152]
	.p2align 2
.L1722:
	bl	ebc_osd_buf_get
	mov	x19, x0
	cbz	x0, .L1723
.L2190:
	ldr	x0, [x26, 576]
	cbz	x0, .L1724
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1725
	ldr	x0, [x26, 96]
	adrp	x1, .LC131
	add	x1, x1, :lo12:.LC131
	bl	_dev_info
.L1725:
	mov	x0, x19
	bl	ebc_buf_release
	bl	ebc_osd_buf_get
	mov	x19, x0
	cbnz	x0, .L2190
.L1723:
	ldr	w0, [x26, 592]
	str	wzr, [x26, 92]
	cbz	w0, .L1783
	ldr	w0, [x26, 588]
	cbnz	w0, .L1783
	ldr	w0, [x26, 596]
	cbnz	w0, .L1783
.L1784:
	ldr	w0, [x26, 88]
	cbz	w0, .L2191
.L1999:
.L1997:
	str	wzr, [x26, 88]
	b	.L1722
.L2191:
	mov	w1, 0
	add	x0, x29, 176
	bl	init_wait_entry
	mov	x20, 15
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
	mov	w2, 1
	add	x1, x29, 176
	mov	x0, x19
	bl	prepare_to_wait_event
	mov	x3, x0
	ldr	w0, [x26, 88]
	mov	w2, 0
	cmp	w0, 0
	cset	w1, ne
.L1989:
	mov	x0, x20
	orr	w1, w1, w2
	cbnz	w1, .L1988
	cbnz	x3, .L1987
	bl	schedule_timeout
	mov	x20, x0
	mov	w2, 1
	add	x1, x29, 176
	mov	x0, x19
	bl	prepare_to_wait_event
	mov	x3, x0
	ldr	w0, [x26, 88]
	cmp	w0, 0
	cset	w1, ne
	cmp	x20, 0
	cset	w2, eq
	tst	w1, w2
	beq	.L1989
.L1988:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 304
	add	x1, x29, 176
	bl	finish_wait
.L1987:
	ldr	w0, [x26, 88]
	cbnz	w0, .L1722
	ldr	w0, [x26, 52]
	cmp	w0, 1
	bne	.L1992
	add	x0, x29, 176
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
	b	.L1995
	.p2align 3
.L2192:
	ldr	w1, [x26, 88]
	cbnz	w1, .L1993
	cbnz	x0, .L1994
	bl	schedule
.L1995:
	add	x1, x29, 176
	mov	w2, 1
	mov	x0, x19
	bl	prepare_to_wait_event
	ldr	w1, [x26, 52]
	cbnz	w1, .L2192
.L1993:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 304
	add	x1, x29, 176
	bl	finish_wait
.L1994:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L1722
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .L1722
	ldr	w0, [x26, 52]
	cbz	w0, .L2180
.L1996:
	ldr	w0, [x26, 88]
	cbnz	w0, .L1997
	add	x0, x29, 176
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
.L2000:
	add	x1, x29, 176
	mov	w2, 1
	mov	x0, x19
	bl	prepare_to_wait_event
	ldr	w1, [x26, 88]
	cbnz	w1, .L1998
	cbnz	x0, .L1997
	bl	schedule
	b	.L2000
	.p2align 3
.L1724:
	ldr	w0, [x26, 240]
	cmp	w0, 2
	beq	.L1732
	cmp	w0, 1
	beq	.L2193
.L1728:
	str	x19, [x26, 232]
	mov	w0, 4
	str	w0, [x26, 240]
	ldr	x0, [x26, 216]
	ldp	w2, w22, [x19, 48]
	ldp	w1, w24, [x19, 56]
	cmp	w2, 0
	ldr	x12, [x0, 16]
	add	w23, w2, 7
	ldr	w0, [x27, 316]
	csel	w23, w23, w2, lt
	add	w14, w1, 7
	cmp	w1, 0
	csel	w14, w14, w1, lt
	add	w21, w0, 7
	cmp	w0, 0
	asr	w14, w14, 3
	csel	w21, w21, w0, lt
	add	w14, w14, 1
	asr	w21, w21, 3
	ldr	w0, [x27, 312]
	cmp	w14, w21
	sub	w1, w21, #1
	csel	w14, w1, w14, ge
	cmp	w0, w24
	sub	w0, w0, #1
	ldr	x9, [x26, 136]
	csel	w24, w0, w24, le
	mul	w0, w22, w21
	ldp	x11, x8, [x26, 160]
	asr	w23, w23, 3
	ldr	x13, [x19, 16]
	sbfiz	x0, x0, 3, 32
	cmp	w22, w24
	add	x12, x12, x0
	add	x13, x13, x0
	add	x9, x9, x0
	add	x11, x11, x0
	add	x8, x8, x0
	bgt	.L1742
	sbfiz	x21, x21, 3, 32
	mov	x20, 4026531840
	mov	x28, 3758096384
	mov	x19, 1030792151040
	mov	x25, 962072674304
	mov	x18, 263882790666240
	mov	x17, 67553994410557440
	mov	x16, -1152921504606846976
	.p2align 2
.L1743:
	cmp	w23, w14
	mov	w5, w23
	ble	.L2091
	b	.L1778
	.p2align 3
.L2194:
	and	x1, x15, 240
	and	x0, x0, -256
	cmp	x1, 240
	and	x30, x3, 255
	bne	.L1745
	mov	x2, x0
	cmp	x30, 240
	orr	x0, x0, 1
	csel	x0, x0, x2, eq
	mov	x2, 255
.L1744:
	tst	x6, 65280
	bne	.L1748
	and	x1, x15, 61440
	and	x0, x0, -65281
	cmp	x1, 61440
	and	x30, x3, 65280
	bne	.L1749
	cmp	x30, 61440
	orr	x1, x0, 256
	orr	x2, x2, 65280
	csel	x0, x1, x0, eq
.L1748:
	tst	x6, 16711680
	bne	.L1752
	and	x1, x15, 15728640
	and	x0, x0, -16711681
	cmp	x1, 15728640
	and	x30, x3, 16711680
	bne	.L1753
	cmp	x30, 15728640
	orr	x1, x0, 65536
	orr	x2, x2, 16711680
	csel	x0, x1, x0, eq
.L1752:
	tst	x6, 4278190080
	bne	.L1756
	and	x1, x15, 4026531840
	and	x0, x0, -4278190081
	cmp	x1, x20
	and	x30, x3, 4278190080
	bne	.L1757
	cmp	x30, x20
	orr	x1, x0, 16777216
	orr	x2, x2, 4278190080
	csel	x0, x1, x0, eq
.L1756:
	tst	x6, 1095216660480
	bne	.L1760
	and	x1, x15, 1030792151040
	and	x0, x0, -1095216660481
	cmp	x1, x19
	and	x30, x3, 1095216660480
	bne	.L1761
	cmp	x30, x19
	orr	x1, x0, 4294967296
	orr	x2, x2, 1095216660480
	csel	x0, x1, x0, eq
.L1760:
	tst	x6, 280375465082880
	bne	.L1764
	and	x1, x15, 263882790666240
	and	x0, x0, -280375465082881
	cmp	x1, x18
	and	x30, x3, 280375465082880
	bne	.L1765
	cmp	x30, x18
	orr	x1, x0, 1099511627776
	orr	x2, x2, 280375465082880
	csel	x0, x1, x0, eq
.L1764:
	tst	x6, 71776119061217280
	bne	.L1768
	and	x1, x15, 67553994410557440
	and	x0, x0, -71776119061217281
	cmp	x1, x17
	and	x30, x3, 71776119061217280
	bne	.L1769
	cmp	x30, x17
	orr	x1, x0, 281474976710656
	orr	x2, x2, 71776119061217280
	csel	x0, x1, x0, eq
.L1768:
	tst	x6, -72057594037927936
	bne	.L1772
	and	x1, x15, -1152921504606846976
	and	x0, x0, 72057594037927935
	cmp	x1, x16
	and	x6, x3, -72057594037927936
	bne	.L1773
	cmp	x6, x16
	orr	x1, x0, 72057594037927936
	orr	x2, x2, -72057594037927936
	csel	x0, x1, x0, eq
.L1772:
	str	x0, [x10]
	eor	x0, x3, x7
	and	x0, x0, x2
	add	w5, w5, 1
	eor	x0, x7, x0
	str	x0, [x4]
	cmp	w5, w14
	bgt	.L1778
.L2091:
	sxtw	x1, w5
	lsl	x0, x1, 3
	add	x4, x9, x0
	add	x10, x8, x0
	ldr	x6, [x11, x1, lsl 3]
	ldr	x7, [x9, x1, lsl 3]
	ldr	x15, [x13, x1, lsl 3]
	ands	x2, x6, 255
	ldr	x3, [x12, x1, lsl 3]
	ldr	x0, [x8, x1, lsl 3]
	beq	.L2194
	mov	x2, 0
	b	.L1744
	.p2align 3
.L1778:
	add	w22, w22, 1
	add	x9, x9, x21
	add	x13, x13, x21
	add	x12, x12, x21
	add	x11, x11, x21
	add	x8, x8, x21
	cmp	w22, w24
	ble	.L1743
.L1742:
	ldr	w0, [x26, 52]
	cbnz	w0, .L1779
	mov	w1, 1
	str	w1, [x26, 52]
	mov	w2, 0
	mov	x0, x27
	bl	ebc_lut_update
	ldr	w2, [x26, 104]
	ldr	w0, [x26, 624]
	strb	w2, [x26, 56]
	lsr	w3, w2, 8
	strb	w3, [x26, 57]
	cmp	w0, 0
	ble	.L1780
	ldr	x0, [x26, 96]
	adrp	x1, .LC135
	and	w3, w3, 255
	and	w2, w2, 255
	add	x1, x1, :lo12:.LC135
	bl	_dev_info
.L1780:
	mov	x0, x27
	bl	ebc_frame_start
.L1781:
	ldr	x0, [x26, 224]
	cbz	x0, .L1782
	bl	ebc_buf_release
.L1782:
	ldr	x0, [x26, 232]
	str	x0, [x26, 224]
	b	.L1722
	.p2align 3
.L1749:
	and	x7, x7, -65281
	cbnz	x1, .L1750
	orr	x0, x0, 256
	b	.L1748
	.p2align 3
.L1757:
	and	x7, x7, -4278190081
	cbnz	x1, .L1758
	orr	x0, x0, 16777216
	b	.L1756
	.p2align 3
.L1745:
	cbnz	x1, .L1746
	and	x7, x7, -256
	orr	x0, x0, 1
	b	.L1744
	.p2align 3
.L1765:
	cbnz	x1, .L1766
	and	x7, x7, -280375465082881
	orr	x0, x0, 1099511627776
	b	.L1764
	.p2align 3
.L1773:
	cbnz	x1, .L1774
	and	x7, x7, 72057594037927935
	orr	x0, x0, 72057594037927936
	b	.L1772
	.p2align 3
.L1761:
	and	x7, x7, -1095216660481
	cbnz	x1, .L1762
	orr	x0, x0, 4294967296
	b	.L1760
	.p2align 3
.L1753:
	and	x7, x7, -16711681
	cbnz	x1, .L1754
	orr	x0, x0, 65536
	b	.L1752
	.p2align 3
.L1769:
	cbnz	x1, .L1770
	and	x7, x7, -71776119061217281
	orr	x0, x0, 281474976710656
	b	.L1768
	.p2align 3
.L1766:
	mov	x30, 246290604621824
	and	x7, x7, -280375465082881
	cmp	x1, x30
	beq	.L2195
	orr	x7, x1, x7
	b	.L1764
	.p2align 3
.L1750:
	cmp	x1, 57344
	beq	.L2196
	orr	x7, x1, x7
	b	.L1748
	.p2align 3
.L1758:
	cmp	x1, x28
	beq	.L2197
	orr	x7, x1, x7
	b	.L1756
	.p2align 3
.L1746:
	cmp	x1, 224
	beq	.L2198
	bfi	x7, x1, 0, 8
	b	.L1744
	.p2align 3
.L1770:
	mov	x30, 63050394783186944
	and	x7, x7, -71776119061217281
	cmp	x1, x30
	beq	.L2199
	orr	x7, x1, x7
	b	.L1768
	.p2align 3
.L1774:
	mov	x6, -2305843009213693952
	and	x7, x7, 72057594037927935
	cmp	x1, x6
	beq	.L2200
	orr	x7, x1, x7
	b	.L1772
	.p2align 3
.L1762:
	cmp	x1, x25
	beq	.L2201
	orr	x7, x1, x7
	b	.L1760
	.p2align 3
.L1754:
	cmp	x1, 14680064
	beq	.L2202
	orr	x7, x1, x7
	b	.L1752
.L2198:
	and	x7, x7, -256
	orr	x0, x0, 1
	orr	x7, x7, 240
	b	.L1744
.L2195:
	orr	x0, x0, 1099511627776
	orr	x7, x7, 263882790666240
	b	.L1764
.L2199:
	orr	x0, x0, 281474976710656
	orr	x7, x7, 67553994410557440
	b	.L1768
.L2197:
	orr	x0, x0, 16777216
	orr	x7, x7, 4026531840
	b	.L1756
.L2201:
	orr	x0, x0, 4294967296
	orr	x7, x7, 1030792151040
	b	.L1760
.L2196:
	orr	x0, x0, 256
	orr	x7, x7, 61440
	b	.L1748
.L2200:
	orr	x0, x0, 72057594037927936
	orr	x7, x7, -1152921504606846976
	b	.L1772
.L2202:
	orr	x0, x0, 65536
	orr	x7, x7, 15728640
	b	.L1752
.L1779:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	ldr	x0, [x0, 8]
	bl	wake_up_process
	b	.L1781
.L1783:
	bl	ebc_dsp_buf_get
	mov	x20, x0
	cbz	x0, .L1784
	ldr	w2, [x0, 40]
	cmp	w2, 21
	beq	.L1785
	ldr	w0, [x26, 584]
	cbz	w0, .L2203
	ldr	w0, [x26, 240]
	cmp	w0, 2
	beq	.L1792
	cmp	w0, 1
	beq	.L2204
.L1788:
	mov	w0, 4
	str	x20, [x26, 216]
	str	w0, [x26, 240]
	mov	x5, x26
	ldr	x0, [x26, 136]
	ldr	x1, [x26, 16]
	ldp	x3, x4, [x26, 160]
	ldr	x2, [x20, 16]
	bl	refresh_new_image
	ldr	w0, [x26, 52]
	cbz	w0, .L2205
	ldr	x0, [x26, 208]
	ldr	w1, [x20, 40]
	ldr	w0, [x0, 40]
	cmp	w1, w0
	beq	.L1808
	mov	w2, 0
	mov	x0, x27
	bl	ebc_lut_update
	ldr	w3, [x26, 104]
	ldr	w0, [x26, 624]
	strb	w3, [x26, 56]
	cmp	w0, 0
	ble	.L1806
	ldr	x0, [x26, 216]
	adrp	x1, .LC138
	and	w3, w3, 255
	add	x1, x1, :lo12:.LC138
	ldr	w2, [x0, 40]
	ldr	x0, [x26, 96]
	bl	_dev_info
.L1806:
	ldr	x0, [x26, 216]
	ldr	w0, [x0, 40]
	cmp	w0, 0
	sub	w0, w0, #22
	ccmp	w0, 1, 0, ne
	bls	.L1807
	ldr	w0, [x26, 52]
	cbnz	w0, .L2206
.L1807:
	ldr	w0, [x26, 460]
	cbnz	w0, .L2207
.L1983:
	mov	w0, 1
	str	w0, [x26, 460]
.L1984:
	ldr	x0, [x26, 216]
	str	x0, [x26, 208]
	b	.L1722
.L2193:
	ldr	w2, [x26, 72]
	cbz	w2, .L1729
	ldr	w0, [x26, 624]
	cmp	w0, 0
	bgt	.L2208
	str	wzr, [x26, 588]
.L1731:
	ldr	w0, [x26, 72]
	lsl	w1, w0, 4
	sub	w0, w1, w0
	bl	__msecs_to_jiffies
	adrp	x1, jiffies
	ldr	x1, [x1, #:lo12:jiffies]
	add	x1, x1, x0
	ldr	x0, [x29, 144]
	bl	mod_timer
	str	wzr, [x26, 72]
	b	.L1728
.L1732:
	ldr	x0, [x26, 208]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x26, 144]
	bl	memcpy
	ldr	x0, [x26, 216]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x26, 136]
	bl	memcpy
	b	.L1728
.L1729:
	ldr	w0, [x26, 604]
	cbz	w0, .L1732
	ldr	w0, [x26, 600]
	cbnz	w0, .L1733
	ldr	w0, [x26, 608]
	cbz	w0, .L1732
.L1733:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1734
	ldr	x0, [x26, 96]
	adrp	x1, .LC134
	add	x1, x1, :lo12:.LC134
	bl	_dev_info
.L1734:
	ldr	x0, [x26, 216]
	ldr	w2, [x26, 28]
	ldr	x1, [x26, 152]
	cmp	w2, 0
	ldr	x5, [x0, 16]
	ble	.L1735
	mov	x4, 0
.L1738:
	ldrb	w3, [x5, x4]
	ldrb	w0, [x1, x4]
	cmp	w0, 0
	mvn	w0, w3
	and	w0, w0, -16
	csel	w0, w0, w3, ne
	strb	w0, [x1, x4]
	add	x4, x4, 1
	cmp	w2, w4
	bgt	.L1738
	ldr	w2, [x26, 28]
	ldr	x1, [x26, 152]
.L1735:
	ldr	x0, [x26, 144]
	sxtw	x2, w2
	bl	memcpy
	ldr	x0, [x26, 216]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x26, 136]
	bl	memcpy
	str	wzr, [x26, 588]
	ldr	w0, [x26, 624]
	str	wzr, [x26, 600]
	str	wzr, [x26, 608]
	cmp	w0, 0
	ble	.L1739
	ldr	x0, [x26, 96]
	adrp	x1, .LC133
	add	x1, x1, :lo12:.LC133
	bl	_dev_info
.L1739:
	ldrb	w0, [x26, 104]
	lsl	w1, w0, 4
	sub	w0, w1, w0
	bl	__msecs_to_jiffies
	adrp	x1, jiffies
	ldr	x1, [x1, #:lo12:jiffies]
	add	x1, x1, x0
	ldr	x0, [x29, 144]
	bl	mod_timer
	b	.L1728
.L2203:
	ldr	w0, [x26, 240]
	cmp	w0, 4
	beq	.L2209
.L1787:
	ldr	w0, [x26, 460]
	cbnz	w0, .L1812
.L2010:
	str	x20, [x26, 208]
	ldr	w2, [x20, 40]
.L1812:
	cmp	w2, 16
	bgt	.L1814
	cmp	w2, 7
	bge	.L2014
	cmp	w2, 0
	beq	.L1816
	blt	.L1813
	cmp	w2, 2
	bge	.L1817
.L1813:
	ldr	x0, [x26, 96]
	adrp	x1, .LC157
	add	x1, x1, :lo12:.LC157
	bl	_dev_err
.L2177:
	mov	x0, x20
	bl	ebc_buf_release
	b	.L1722
.L1785:
	ldr	w0, [x26, 460]
	cbz	w0, .L2010
.L1817:
	mov	w21, 1
.L1815:
	ldr	w0, [x26, 52]
	cbz	w0, .L1849
	ldr	w0, [x26, 624]
	cmp	w0, 0
	bgt	.L1850
.L1852:
	add	x0, x29, 176
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
	b	.L1851
.L2210:
	cbnz	x0, .L1853
	bl	schedule
.L1851:
	add	x1, x29, 176
	mov	w2, 1
	mov	x0, x19
	bl	prepare_to_wait_event
	ldr	w1, [x26, 52]
	cbnz	w1, .L2210
	mov	x0, x19
	add	x1, x29, 176
	bl	finish_wait
.L1855:
.L1853:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1849
	ldr	x0, [x26, 96]
	adrp	x1, .LC141
	add	x1, x1, :lo12:.LC141
	bl	_dev_info
.L1849:
	ldr	w0, [x26, 240]
	sub	w1, w0, #3
	cmp	w1, 1
	bls	.L2211
	cmp	w0, 1
	beq	.L2212
.L1858:
	ldr	w19, [x20, 40]
	cmp	w19, 6
	sub	w0, w19, #2
	ccmp	w19, 11, 4, ne
	ccmp	w0, 1, 0, ne
	bls	.L2213
	sub	w0, w19, #9
	sub	w1, w19, #7
	cmp	w0, 1
	cset	w0, ls
	cmp	w1, 3
	bls	.L2214
.L1862:
	add	w21, w21, 1
.L1860:
	ldr	w0, [x27, 836]
	cbz	w0, .L1877
	sub	w0, w19, #12
	cmp	w0, 2
	bls	.L2215
	ldr	w0, [x26, 608]
	cbz	w0, .L1877
	cmp	w19, 21
	beq	.L1877
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1888
	ldr	x0, [x26, 96]
	adrp	x1, .LC147
	add	x1, x1, :lo12:.LC147
	bl	_dev_info
.L1888:
	ldr	x0, [x26, 216]
	ldr	w2, [x26, 28]
	ldr	x3, [x20, 16]
	cmp	w2, 0
	ldr	x4, [x26, 152]
	ldr	x5, [x0, 16]
	mov	x0, 0
	ble	.L1892
.L2095:
	ldrb	w1, [x4, x0]
	cbz	w1, .L1890
	ldrb	w1, [x3, x0]
	mvn	w1, w1
	and	w1, w1, -16
	strb	w1, [x5, x0]
.L1890:
	add	x0, x0, 1
	cmp	w2, w0
	bgt	.L2095
.L1892:
	mov	w0, 9
	str	w0, [x20, 40]
.L1877:
	str	wzr, [x26, 600]
	str	wzr, [x26, 608]
.L1880:
	str	x20, [x26, 216]
	ldr	w1, [x20, 40]
	cmp	w1, 13
	beq	.L2216
.L1893:
	cmp	w1, 12
	beq	.L2217
	cmp	w1, 14
	bne	.L1894
	ldr	w0, [x26, 604]
	cbnz	w0, .L2218
.L1894:
	cmp	w21, 2
	mov	x0, x27
	cset	w2, eq
	bl	ebc_lut_update
	ldr	w0, [x26, 104]
	strb	w0, [x26, 56]
.L1895:
	ldr	w0, [x27, 836]
	cbz	w0, .L1897
	ldr	w0, [x20, 40]
	sub	w0, w0, #12
	cmp	w0, 2
	bls	.L2219
.L1897:
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
.L1906:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1907
	ldr	x0, [x26, 216]
	adrp	x1, .LC148
	ldrb	w4, [x26, 104]
	add	x1, x1, :lo12:.LC148
	ldrb	w3, [x26, 56]
	ldr	w2, [x0, 40]
	ldr	x0, [x26, 96]
	bl	_dev_info
.L1907:
	mov	w0, 1
	str	w21, [x26, 240]
	str	w0, [x26, 52]
	mov	x0, x27
	bl	ebc_frame_start
	adrp	x0, jiffies
	ldr	x1, [x0, #:lo12:jiffies]
	ldr	x0, [x29, 152]
	add	x1, x1, 900
	bl	mod_timer
	ldr	w0, [x27, 836]
	cbz	w0, .L1908
	ldr	w0, [x20, 40]
	sub	w1, w0, #12
	cmp	w1, 2
	bls	.L2220
.L1908:
	ldr	w0, [x26, 52]
	cbz	w0, .L1925
.L2232:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	bgt	.L1926
.L1928:
	mov	w1, 0
	add	x0, x29, 176
	bl	init_wait_entry
	b	.L1927
	.p2align 3
.L2221:
	cbnz	x0, .L1929
	bl	schedule
.L1927:
	add	x1, x29, 176
	mov	w2, 1
	mov	x0, x19
	bl	prepare_to_wait_event
	ldr	w1, [x26, 52]
	cbnz	w1, .L2221
.L1931:
	add	x1, x29, 176
	mov	x0, x19
	bl	finish_wait
.L1929:
	ldr	w0, [x26, 72]
	cbnz	w0, .L2222
.L1933:
	ldr	w0, [x27, 836]
	cbnz	w0, .L2223
.L1940:
	adrp	x0, jiffies
	ldr	x1, [x0, #:lo12:jiffies]
	mov	x0, 402653184
	add	x1, x1, x0
	ldr	x0, [x29, 152]
	bl	mod_timer
	ldr	w0, [x26, 460]
	cbz	w0, .L1983
.L2207:
	ldr	x0, [x26, 208]
	bl	ebc_buf_release
	b	.L1984
.L2214:
	ldr	w1, [x26, 612]
	cmp	w1, 0
	cset	w1, ne
	orr	w0, w0, w1
	cbnz	w0, .L2224
	ldr	x0, [x26, 208]
	ldr	w2, [x27, 260]
	ldr	x1, [x0, 16]
	ldr	x0, [x20, 16]
	bl	check_part_mode.isra.6
	cmp	w0, 2
	beq	.L1873
	cbnz	w0, .L1862
.L1867:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1876
	ldr	x0, [x26, 96]
	adrp	x1, .LC146
	add	x1, x1, :lo12:.LC146
	bl	_dev_info
.L1876:
	str	x20, [x26, 216]
	b	.L1807
.L2208:
	ldr	x0, [x26, 96]
	adrp	x1, .LC132
	add	x1, x1, :lo12:.LC132
	bl	_dev_info
	str	wzr, [x26, 588]
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1731
	ldr	x0, [x26, 96]
	adrp	x1, .LC133
	add	x1, x1, :lo12:.LC133
	bl	_dev_info
	b	.L1731
.L1808:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ldr	x0, [x26, 216]
	ble	.L1809
	ldr	w2, [x0, 40]
	adrp	x1, .LC139
	ldrb	w3, [x26, 56]
	add	x1, x1, :lo12:.LC139
	ldr	x0, [x26, 96]
	bl	_dev_info
	b	.L1806
.L2213:
	ldr	x0, [x26, 208]
	ldr	w2, [x27, 260]
	ldr	x1, [x0, 16]
	ldr	x0, [x20, 16]
	bl	check_part_mode.isra.6
	cbnz	w0, .L1862
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1876
	ldr	x0, [x26, 96]
	adrp	x1, .LC144
	add	x1, x1, :lo12:.LC144
	bl	_dev_info
	str	x20, [x26, 216]
	b	.L1807
.L1814:
	cmp	w2, 21
	beq	.L1817
	ble	.L2225
	cmp	w2, 23
	bgt	.L1813
.L1816:
	ldr	w0, [x26, 240]
	str	x20, [x26, 216]
	cmp	w0, 1
	beq	.L2226
	cmp	w0, 2
	beq	.L2178
	cmp	w0, 4
	beq	.L2227
.L1838:
	ldr	x0, [x26, 208]
	ldr	w1, [x20, 40]
	ldr	w0, [x0, 40]
	cmp	w1, w0
	beq	.L1832
	ldr	w0, [x26, 52]
	cbz	w0, .L1832
	ldr	w0, [x26, 624]
	cmp	w0, 0
	bgt	.L1840
.L1842:
	add	x0, x29, 176
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
	b	.L1841
	.p2align 3
.L2228:
	cbnz	x0, .L1843
	bl	schedule
.L1841:
	add	x1, x29, 176
	mov	w2, 1
	mov	x0, x19
	bl	prepare_to_wait_event
	ldr	w1, [x26, 52]
	cbnz	w1, .L2228
.L1844:
	mov	x0, x19
	add	x1, x29, 176
	bl	finish_wait
	b	.L1843
	.p2align 3
.L2014:
	mov	w21, 0
	b	.L1815
.L2205:
	mov	w0, 1
	str	w0, [x26, 52]
	mov	w2, 0
	mov	x0, x27
	ldr	w1, [x20, 40]
	bl	ebc_lut_update
	ldr	w3, [x26, 104]
	ldr	w0, [x26, 624]
	strb	w3, [x26, 56]
	cmp	w0, 0
	lsr	w0, w3, 8
	strb	w0, [x26, 57]
	ble	.L1800
	ldr	x0, [x26, 216]
	adrp	x1, .LC136
	and	w3, w3, 255
	add	x1, x1, :lo12:.LC136
	ldr	w2, [x0, 40]
	ldr	x0, [x26, 96]
	bl	_dev_info
.L1800:
	ldr	x0, [x29, 136]
	ldp	x1, x2, [x26, 136]
	ldp	x3, x4, [x26, 160]
	ldr	w0, [x0, 164]
	cbz	w0, .L1801
	ldr	x0, [x26, 176]
	mov	w6, 1
	mov	x5, x26
	bl	get_overlay_image2
.L1802:
	ldr	w0, [x26, 60]
	cbz	w0, .L1803
	ldr	x0, [x29, 136]
	ldp	x1, x2, [x26, 136]
	ldp	x3, x4, [x26, 160]
	ldr	w0, [x0, 164]
	cbz	w0, .L1804
	ldr	x0, [x26, 184]
	mov	w6, 1
	mov	x5, x26
	bl	get_overlay_image2
.L1805:
	ldr	x0, [x29, 136]
	mov	x1, x26
	str	wzr, [x0, 72]
	bl	flip
	b	.L1806
.L2204:
	ldr	w2, [x26, 72]
	cbz	w2, .L1790
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1791
	ldr	x0, [x26, 96]
	adrp	x1, .LC132
	add	x1, x1, :lo12:.LC132
	bl	_dev_info
.L1791:
	str	wzr, [x26, 72]
	b	.L1788
.L2209:
	ldr	w0, [x26, 52]
	cbnz	w0, .L1788
	b	.L1787
.L1792:
	ldr	x0, [x26, 208]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x26, 144]
	bl	memcpy
	ldr	x0, [x26, 216]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x26, 136]
	bl	memcpy
	b	.L1788
.L2215:
	ldr	w0, [x26, 600]
	cbnz	w0, .L2229
	ldr	w0, [x26, 608]
	cbnz	w0, .L1881
	ldr	x0, [x26, 208]
	ldr	w2, [x27, 260]
	ldr	x4, [x20, 16]
	cmp	w2, 0
	ldr	x1, [x0, 16]
	add	w0, w2, 7
	csel	w0, w0, w2, lt
	asr	w0, w0, 3
	cmp	w0, 0
	ble	.L1882
	ldr	x3, [x1]
	ldr	x5, [x4]
	cmp	x5, x3
	bne	.L1883
	sub	w0, w0, #1
	mov	x3, 8
	add	x0, x0, 1
	lsl	x0, x0, 3
	b	.L1885
.L1886:
	ldr	x6, [x4, x3]
	add	x3, x3, 8
	add	x5, x1, x3
	ldr	x5, [x5, -8]
	cmp	x6, x5
	bne	.L1883
.L1885:
	cmp	x0, x3
	bne	.L1886
.L1882:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L2177
	ldr	x0, [x26, 96]
	adrp	x1, .LC146
	add	x1, x1, :lo12:.LC146
	bl	_dev_info
	b	.L2177
	.p2align 3
.L2220:
	ldr	w1, [x26, 608]
	cbz	w1, .L1908
	ldr	w1, [x26, 624]
	cmp	w1, 0
	ble	.L1909
	ldr	x0, [x26, 96]
	adrp	x1, .LC149
	add	x1, x1, :lo12:.LC149
	bl	_dev_info
	ldr	w0, [x20, 40]
.L1909:
	cmp	w0, 13
	mov	w12, 2
	beq	.L1910
	ldr	w12, [x26, 604]
.L1910:
	ldr	x0, [x26, 216]
	ldrb	w7, [x26, 56]
	ldp	w23, w17, [x26, 80]
	ldrsb	w18, [x26, 696]
	sxtb	w15, w7
	cmp	w23, 0
	ldr	x8, [x26, 152]
	ldp	x9, x6, [x26, 136]
	ldr	x11, [x0, 16]
	ble	.L2018
	neg	w13, w7
	neg	w22, w15, lsl 1
	sxtb	w13, w13
	lsl	w24, w15, 1
	mov	w10, w17
	sub	w14, w18, w15
	mov	w4, 0
	mov	w16, 0
	.p2align 2
.L1924:
	cmp	w17, 0
	ble	.L1912
	sub	w0, w10, w17
	.p2align 2
.L1923:
	ldrb	w5, [x11, w0, sxtw]
	sxtw	x3, w0
	ldrb	w2, [x6, w0, sxtw]
	cmp	w5, w2
	beq	.L1913
	cmp	w5, 240
	ldrsb	w1, [x8, w0, sxtw]
	ldrsb	w25, [x9, w0, sxtw]
	beq	.L2230
	cmp	w1, 0
	sub	w25, w25, w7
	sub	w1, w1, w7
	sxtb	w25, w25
	sxtb	w1, w1
	csel	w1, w1, w13, le
	cmp	w25, 0
	ble	.L2231
.L1921:
	cmp	w25, w14
.L2179:
	orr	w2, w2, 1
	ccmp	w12, 1, 0, gt
	strb	w2, [x6, x3]
	orr	w2, w4, 2
	orr	w4, w4, 1
	csel	w4, w4, w2, gt
.L1917:
	strb	w25, [x9, x3]
	strb	w1, [x8, x3]
.L1913:
	add	w0, w0, 1
	cmp	w10, w0
	bne	.L1923
.L1912:
	add	w16, w16, 1
	add	w10, w10, w17
	cmp	w23, w16
	bne	.L1924
	str	w4, [x26, 600]
.L2239:
	ldr	w0, [x26, 52]
	cbnz	w0, .L2232
.L1925:
	ldr	w0, [x26, 624]
	tbnz	w0, #31, .L1929
	ldr	x0, [x26, 96]
	adrp	x1, .LC151
	add	x1, x1, :lo12:.LC151
	bl	_dev_info
	ldr	w0, [x26, 72]
	cbz	w0, .L1933
.L2222:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1934
	ldr	x0, [x26, 96]
	adrp	x1, .LC152
	add	x1, x1, :lo12:.LC152
	bl	_dev_info
.L1934:
	ldr	x0, [x26, 208]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x26, 144]
	bl	memcpy
	ldr	x0, [x26, 216]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x26, 136]
	bl	memcpy
	ldrsw	x2, [x26, 28]
	mov	w1, 0
	ldr	x0, [x26, 160]
	bl	memset
	ldrsw	x2, [x26, 28]
	mov	w1, 0
	ldr	x0, [x26, 168]
	bl	memset
	ldr	w0, [x26, 72]
	ldrb	w1, [x26, 56]
	ldr	w2, [x26, 28]
	sub	w1, w1, w0
	ldr	x3, [x26, 160]
	cmp	w2, 0
	mov	x0, 0
	ldp	x5, x4, [x26, 136]
	ble	.L1940
.L2092:
	ldrb	w7, [x4, x0]
	ldrb	w6, [x5, x0]
	cmp	w7, w6
	beq	.L1936
	strb	w1, [x3, x0]
.L1936:
	add	x0, x0, 1
	cmp	w2, w0
	bgt	.L2092
	b	.L1940
	.p2align 3
.L2231:
	cmp	w1, w22
	bge	.L1921
	strb	w5, [x6, x3]
	b	.L1917
	.p2align 3
.L2230:
	cmp	w1, 0
	add	w25, w7, w25
	add	w1, w7, w1
	sxtb	w25, w25
	sxtb	w1, w1
	csel	w1, w1, w15, ge
	cmp	w18, w25
	bgt	.L1916
	cmp	w1, w24
	ble	.L1916
	mov	w2, -16
	strb	w2, [x6, x3]
	b	.L1917
	.p2align 3
.L1916:
	cmp	w15, w25
	b	.L2179
.L2223:
	ldr	w0, [x20, 40]
	sub	w0, w0, #12
	cmp	w0, 2
	bhi	.L1940
	ldr	w0, [x26, 600]
	tbz	x0, 1, .L2233
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1950
	ldr	x0, [x26, 96]
	adrp	x1, .LC153
	add	x1, x1, :lo12:.LC153
	bl	_dev_info
.L1950:
	ldr	x0, [x26, 208]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x26, 144]
	ldr	x0, [x0, 16]
	bl	memcpy
	b	.L1906
.L2233:
	tbz	x0, 0, .L1945
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L1940
	str	wzr, [x26, 88]
	mov	w1, 0
	add	x0, x29, 176
	mov	x22, 3
	bl	init_wait_entry
	mov	w2, 1
	add	x1, x29, 176
	mov	x0, x19
	bl	prepare_to_wait_event
	mov	x3, x0
	ldr	w0, [x26, 88]
	mov	w1, 0
	cmp	w0, 0
	cset	w2, ne
	.p2align 2
.L1949:
	mov	x0, x22
	orr	w1, w1, w2
	cbnz	w1, .L1948
	cbnz	x3, .L1947
	bl	schedule_timeout
	mov	x22, x0
	mov	w2, 1
	add	x1, x29, 176
	mov	x0, x19
	bl	prepare_to_wait_event
	mov	x3, x0
	ldr	w0, [x26, 88]
	cmp	w0, 0
	cset	w2, ne
	cmp	x22, 0
	cset	w1, eq
	tst	w2, w1
	beq	.L1949
.L1948:
	add	x1, x29, 176
	mov	x0, x19
	bl	finish_wait
.L1947:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L1940
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1950
	ldr	x0, [x26, 96]
	adrp	x1, .LC154
	add	x1, x1, :lo12:.LC154
	bl	_dev_info
	b	.L1950
.L1926:
	ldr	x0, [x26, 96]
	adrp	x1, .LC150
	add	x1, x1, :lo12:.LC150
	bl	_dev_info
	ldr	w0, [x26, 52]
	cbz	w0, .L1929
	b	.L1928
	.p2align 3
.L2219:
	ldr	w19, [x26, 608]
	cbz	w19, .L2234
.L1902:
	mov	w0, 1
	str	w0, [x26, 608]
	b	.L1897
.L1803:
	mov	w0, 1
	str	wzr, [x26, 52]
	str	w0, [x26, 588]
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1807
	ldr	x0, [x26, 96]
	adrp	x1, .LANCHOR3
	add	x2, x1, :lo12:.LANCHOR3
	adrp	x1, .LC137
	add	x2, x2, 64
	add	x1, x1, :lo12:.LC137
	bl	_dev_info
	b	.L1806
.L2224:
	ldr	w0, [x26, 28]
	mov	w5, 0
	ldr	w4, [x26, 716]
	ldr	x1, [x26, 208]
	cmp	w0, 0
	add	w3, w0, 7
	ldr	x6, [x20, 16]
	mul	w4, w0, w4
	csel	w0, w3, w0, lt
	ldr	x7, [x1, 16]
	mov	w1, 34079
	movk	w1, 0x51eb, lsl 16
	asr	w3, w0, 3
	cmp	w3, 0
	mov	x0, 0
	smull	x1, w4, w1
	asr	x1, x1, 40
	sub	w4, w1, w4, asr 31
	ble	.L1867
.L2096:
	ldr	x2, [x6, x0, lsl 3]
	and	x2, x2, -506381209866536712
	str	x2, [x29, 168]
	ldr	x1, [x7, x0, lsl 3]
	and	x1, x1, -506381209866536712
	str	x1, [x29, 176]
	cmp	x2, x1
	beq	.L1868
	ldrb	w1, [x29, 168]
	ldrb	w2, [x29, 176]
	subs	w1, w1, w2
	csneg	w1, w1, w1, pl
	cmp	w1, 8
	bgt	.L1869
	ldrb	w1, [x29, 169]
	ldrb	w2, [x29, 177]
	subs	w1, w1, w2
	csneg	w1, w1, w1, pl
	cmp	w1, 8
	bgt	.L1869
	ldrb	w1, [x29, 170]
	ldrb	w2, [x29, 178]
	subs	w1, w1, w2
	csneg	w1, w1, w1, pl
	cmp	w1, 8
	bgt	.L1869
	ldrb	w1, [x29, 171]
	ldrb	w2, [x29, 179]
	subs	w1, w1, w2
	csneg	w1, w1, w1, pl
	cmp	w1, 8
	bgt	.L1869
	ldrb	w1, [x29, 172]
	ldrb	w2, [x29, 180]
	subs	w1, w1, w2
	csneg	w1, w1, w1, pl
	cmp	w1, 8
	bgt	.L1869
	ldrb	w1, [x29, 173]
	ldrb	w2, [x29, 181]
	subs	w1, w1, w2
	csneg	w1, w1, w1, pl
	cmp	w1, 8
	bgt	.L1869
	ldrb	w1, [x29, 174]
	ldrb	w2, [x29, 182]
	subs	w1, w1, w2
	csneg	w1, w1, w1, pl
	cmp	w1, 8
	bgt	.L1869
	ldrb	w1, [x29, 175]
	ldrb	w2, [x29, 183]
	subs	w1, w1, w2
	csneg	w1, w1, w1, pl
	cmp	w1, 8
	bgt	.L1869
.L1868:
	cmp	w4, w5
	blt	.L1873
.L2235:
	add	x0, x0, 1
	cmp	w3, w0
	bgt	.L2096
	cbz	w5, .L1867
	ldr	w19, [x20, 40]
	b	.L1862
.L1869:
	add	w5, w5, 1
	cmp	w4, w5
	bge	.L2235
.L1873:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	bgt	.L1875
	mov	w21, 2
	ldr	w19, [x20, 40]
	b	.L1860
	.p2align 3
.L1850:
	ldr	x0, [x26, 96]
	adrp	x1, .LC140
	add	x1, x1, :lo12:.LC140
	bl	_dev_info
	ldr	w0, [x26, 52]
	cbz	w0, .L1853
	b	.L1852
	.p2align 3
.L2212:
	ldr	w2, [x26, 72]
	cbz	w2, .L1858
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1859
	ldr	x0, [x26, 96]
	adrp	x1, .LC143
	add	x1, x1, :lo12:.LC143
	bl	_dev_info
.L1859:
	str	wzr, [x26, 72]
	mov	w19, 21
	mov	w21, 2
	str	w19, [x20, 40]
	b	.L1860
.L1809:
	ldr	w0, [x0, 40]
	cmp	w0, 0
	sub	w0, w0, #22
	ccmp	w0, 1, 0, ne
	bls	.L1807
	str	wzr, [x26, 588]
.L1811:
	ldrb	w0, [x26, 56]
	lsl	w1, w0, 4
	sub	w0, w1, w0
	bl	__msecs_to_jiffies
	adrp	x1, jiffies
	ldr	x1, [x1, #:lo12:jiffies]
	add	x1, x1, x0
	ldr	x0, [x29, 144]
	bl	mod_timer
	b	.L1807
.L1801:
	ldr	x0, [x26, 176]
	mov	w6, 1
	mov	x5, x26
	bl	get_overlay_image
	b	.L1802
.L2234:
	ldrsw	x2, [x26, 28]
	mov	w1, 0
	ldr	x0, [x26, 152]
	bl	memset
	ldr	w0, [x27, 836]
	cbz	w0, .L1899
	ldr	x0, [x26, 208]
	ldr	w0, [x0, 40]
	sub	w0, w0, #12
	cmp	w0, 2
	bls	.L1902
.L1899:
	ldrsw	x2, [x26, 28]
	mov	w1, 0
	ldr	x0, [x26, 136]
	bl	memset
	ldp	w3, w2, [x26, 80]
	ldrsb	w4, [x26, 696]
	cmp	w3, 0
	mov	w1, w2
	ldp	x5, x6, [x26, 136]
	ble	.L1902
.L2093:
	cmp	w2, 0
	sub	w0, w1, w2
	bgt	.L2094
	b	.L1905
	.p2align 3
.L1903:
	add	w0, w0, 1
	cmp	w1, w0
	beq	.L1905
.L2094:
	ldrb	w7, [x6, w0, sxtw]
	cmp	w7, 240
	bne	.L1903
	strb	w4, [x5, w0, sxtw]
	add	w0, w0, 1
	cmp	w1, w0
	bne	.L2094
.L1905:
	add	w19, w19, 1
	add	w1, w1, w2
	cmp	w3, w19
	bne	.L2093
	b	.L1902
	.p2align 3
.L2206:
	ldr	w0, [x26, 624]
	str	wzr, [x26, 588]
	cmp	w0, 0
	ble	.L1811
	ldr	x0, [x26, 96]
	adrp	x1, .LC133
	add	x1, x1, :lo12:.LC133
	bl	_dev_info
	b	.L1811
.L1804:
	ldr	x0, [x26, 184]
	mov	w6, 1
	mov	x5, x26
	bl	get_overlay_image
	b	.L1805
.L2211:
	ldr	x0, [x26, 208]
	str	wzr, [x26, 600]
	str	wzr, [x26, 608]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x26, 144]
	ldr	x0, [x0, 16]
	bl	memcpy
	b	.L1858
.L1881:
	ldr	x0, [x26, 208]
	ldr	w2, [x26, 28]
	ldr	x1, [x0, 16]
.L1883:
	ldr	x0, [x26, 144]
	sxtw	x2, w2
	bl	memcpy
	str	x20, [x26, 216]
	ldr	w1, [x20, 40]
	cmp	w1, 13
	bne	.L1893
.L2216:
	ldr	w0, [x26, 604]
	cbz	w0, .L1894
	cmp	w21, 2
	mov	w1, 14
	cset	w2, eq
	mov	x0, x27
	bl	ebc_lut_update
	ldr	w0, [x26, 104]
	sub	w0, w0, #6
	strb	w0, [x26, 696]
	mov	w0, 2
	strb	w0, [x26, 56]
	b	.L1895
	.p2align 3
.L1790:
	ldr	w0, [x26, 604]
	cbz	w0, .L1792
	ldr	w0, [x26, 600]
	cbnz	w0, .L1793
	ldr	w0, [x26, 608]
	cbz	w0, .L1792
.L1793:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1794
	ldr	x0, [x26, 96]
	adrp	x1, .LC134
	add	x1, x1, :lo12:.LC134
	bl	_dev_info
.L1794:
	ldr	x0, [x26, 216]
	ldr	w2, [x26, 28]
	ldr	x1, [x26, 152]
	cmp	w2, 0
	ldr	x5, [x0, 16]
	ble	.L1795
	mov	x4, 0
.L1798:
	ldrb	w3, [x5, x4]
	ldrb	w0, [x1, x4]
	cmp	w0, 0
	mvn	w0, w3
	and	w0, w0, -16
	csel	w0, w0, w3, ne
	strb	w0, [x1, x4]
	add	x4, x4, 1
	cmp	w2, w4
	bgt	.L1798
	ldr	w2, [x26, 28]
	ldr	x1, [x26, 152]
.L1795:
	ldr	x0, [x26, 144]
	sxtw	x2, w2
	bl	memcpy
	ldr	x0, [x26, 216]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x26, 136]
	bl	memcpy
	str	wzr, [x26, 600]
	str	wzr, [x26, 608]
	b	.L1788
.L1945:
	ldr	w0, [x26, 608]
	cbz	w0, .L1940
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L1940
	str	wzr, [x26, 88]
	mov	w1, 0
	add	x0, x29, 176
	mov	x21, 3
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
	mov	w2, 1
	add	x1, x29, 176
	mov	x0, x19
	bl	prepare_to_wait_event
	mov	x3, x0
	ldr	w0, [x26, 88]
	mov	w2, 0
	cmp	w0, 0
	cset	w1, ne
.L1954:
	mov	x0, x21
	orr	w1, w1, w2
	cbnz	w1, .L1953
	cbnz	x3, .L1952
	bl	schedule_timeout
	mov	x21, x0
	mov	w2, 1
	add	x1, x29, 176
	mov	x0, x19
	bl	prepare_to_wait_event
	mov	x3, x0
	ldr	w0, [x26, 88]
	cmp	w0, 0
	cset	w1, ne
	cmp	x21, 0
	cset	w2, eq
	tst	w1, w2
	beq	.L1954
.L1953:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 304
	add	x1, x29, 176
	bl	finish_wait
.L1952:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L1940
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1955
	ldr	x0, [x26, 96]
	adrp	x1, .LC155
	add	x1, x1, :lo12:.LC155
	bl	_dev_info
.L1955:
	ldr	w0, [x20, 40]
	mov	w23, 2
	cmp	w0, 13
	beq	.L1956
	ldr	w23, [x26, 604]
.L1956:
	ldp	w3, w24, [x26, 80]
	ldr	x0, [x26, 216]
	sub	w3, w3, #1
	ldr	x28, [x26, 152]
	cmp	w3, 1
	ldp	x19, x22, [x26, 136]
	ldr	x25, [x0, 16]
	ble	.L1957
	mov	w4, 1
	add	w2, w24, 1
	mov	w0, w4
	sub	w6, w24, #1
	sub	w5, w24, #2
	mov	x4, x27
	mov	x7, x26
	mov	w27, w0
	mov	w26, w24
	mov	w24, w2
.L1959:
	cmp	w6, 1
	add	w2, w5, w24
	mov	w21, w24
	ble	.L1976
	stp	w27, w24, [x29, 128]
	mov	x27, x4
	mov	w24, w2
	b	.L1975
	.p2align 3
.L1962:
	add	w21, w21, 1
	cmp	w21, w24
	beq	.L2236
.L1975:
	ldrb	w0, [x28, w21, sxtw]
	sxtw	x20, w21
	cbz	w0, .L1962
	ldrb	w1, [x25, w21, sxtw]
	str	x7, [x29, 104]
	stp	w5, w3, [x29, 112]
	stp	w6, w1, [x29, 120]
	bl	prandom_u32
	uxtw	x0, w0
	ldp	w6, w1, [x29, 120]
	add	x0, x0, x0, lsl 1
	lsr	x0, x0, 32
	ldr	x7, [x29, 104]
	lsl	w0, w0, 4
	cmp	w1, 240
	sub	w1, w0, #88
	strb	w1, [x22, w21, sxtw]
	ldp	w5, w3, [x29, 112]
	beq	.L2237
	cmp	w23, 1
	bgt	.L1962
	ldrb	w0, [x19, x20]
	add	w21, w21, 1
	cmp	w21, w24
	sub	w0, w0, #4
	strb	w0, [x19, x20]
	bne	.L1975
.L2236:
	mov	x4, x27
	ldp	w27, w24, [x29, 128]
.L1976:
	add	w27, w27, 1
	add	w24, w24, w26
	cmp	w27, w3
	bne	.L1959
	ldr	x22, [x7, 144]
	mov	x27, x4
	mov	x26, x7
.L1957:
	ldr	x0, [x26, 208]
	mov	x1, x22
	ldrsw	x2, [x26, 28]
	ldr	x0, [x0, 16]
	bl	memcpy
	mov	w0, 13
	strb	w0, [x26, 56]
	mov	w0, 1
	str	w0, [x26, 52]
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1977
	ldr	x0, [x26, 216]
	adrp	x1, .LC156
	mov	w3, 13
	add	x1, x1, :lo12:.LC156
	ldr	w2, [x0, 40]
	ldr	x0, [x26, 96]
	bl	_dev_info
.L1977:
	mov	x0, x27
	bl	ebc_frame_start
	adrp	x0, jiffies
	ldr	x1, [x0, #:lo12:jiffies]
	ldr	x0, [x29, 152]
	add	x1, x1, 900
	bl	mod_timer
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1978
	ldr	x0, [x26, 96]
	adrp	x1, .LC150
	add	x1, x1, :lo12:.LC150
	bl	_dev_info
.L1978:
	ldr	w0, [x26, 52]
	cbnz	w0, .L2238
.L1981:
.L1979:
	str	wzr, [x26, 608]
	b	.L1940
	.p2align 3
.L2217:
	ldr	w0, [x26, 604]
	cbz	w0, .L1894
	cmp	w21, 2
	mov	w1, 14
	cset	w2, eq
	mov	x0, x27
	bl	ebc_lut_update
	ldr	w0, [x26, 104]
	sub	w0, w0, #6
	strb	w0, [x26, 696]
	mov	w0, 3
	strb	w0, [x26, 56]
	b	.L1895
	.p2align 3
.L1832:
	ldr	x1, [x20, 16]
	mov	x3, x26
	ldr	x0, [x26, 136]
	ldr	x2, [x26, 160]
	bl	refresh_new_image_auto
.L1822:
	ldr	w0, [x26, 52]
	mov	w1, 3
	str	w1, [x26, 240]
	cbnz	w0, .L1807
	mov	w0, 1
	str	w0, [x26, 52]
	mov	w2, 0
	mov	x0, x27
	ldr	w1, [x20, 40]
	bl	ebc_lut_update
	ldr	w2, [x26, 104]
	ldr	w0, [x26, 624]
	strb	w2, [x26, 56]
	cmp	w0, 0
	lsr	w0, w2, 8
	strb	w0, [x26, 57]
	ble	.L1847
	ldr	x0, [x26, 96]
	adrp	x1, .LC142
	and	w2, w2, 255
	add	x1, x1, :lo12:.LC142
	bl	_dev_info
.L1847:
	mov	x0, x27
	bl	ebc_frame_start
	b	.L1807
.L2229:
	ldr	x0, [x26, 208]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x26, 144]
	ldr	x0, [x0, 16]
	bl	memcpy
	b	.L1880
.L2218:
	cmp	w21, 2
	mov	x0, x27
	cset	w2, eq
	bl	ebc_lut_update
	ldr	w0, [x26, 104]
	sub	w0, w0, #6
	strb	w0, [x26, 696]
	mov	w0, 4
	strb	w0, [x26, 56]
	b	.L1895
.L2018:
	mov	w4, 0
	str	w4, [x26, 600]
	b	.L2239
.L1840:
	ldr	x0, [x26, 96]
	adrp	x1, .LC140
	add	x1, x1, :lo12:.LC140
	bl	_dev_info
	ldr	w0, [x26, 52]
	cbnz	w0, .L1842
.L1845:
.L1843:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1846
	ldr	x0, [x26, 96]
	adrp	x1, .LC141
	add	x1, x1, :lo12:.LC141
	bl	_dev_info
.L1846:
	ldr	x0, [x26, 216]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x26, 136]
	bl	memcpy
	b	.L1822
.L2225:
	cmp	w2, 17
	bne	.L1813
	b	.L1817
	.p2align 3
.L2226:
	ldr	w2, [x26, 72]
	cbz	w2, .L1820
	ldr	w0, [x26, 624]
	cmp	w0, 0
	ble	.L1821
	ldr	x0, [x26, 96]
	adrp	x1, .LC132
	add	x1, x1, :lo12:.LC132
	bl	_dev_info
.L1821:
	str	wzr, [x26, 72]
	b	.L1822
.L2227:
	ldr	w0, [x26, 52]
	cbz	w0, .L1832
	ldr	w0, [x26, 624]
	cmp	w0, 0
	bgt	.L1833
.L1835:
	add	x0, x29, 176
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
	b	.L1834
	.p2align 3
.L2240:
	cbnz	x0, .L1843
	bl	schedule
.L1834:
	add	x1, x29, 176
	mov	w2, 1
	mov	x0, x19
	bl	prepare_to_wait_event
	ldr	w1, [x26, 52]
	cbnz	w1, .L2240
	b	.L1844
	.p2align 3
.L1820:
	ldr	w0, [x26, 604]
	cbz	w0, .L2178
	ldr	w0, [x26, 600]
	cbnz	w0, .L1824
	ldr	w0, [x26, 608]
	cbz	w0, .L2178
.L1824:
	ldr	w0, [x26, 624]
	cmp	w0, 0
	mov	x0, x20
	ble	.L1825
	ldr	x0, [x26, 96]
	adrp	x1, .LC134
	add	x1, x1, :lo12:.LC134
	bl	_dev_info
	ldr	x0, [x26, 216]
.L1825:
	ldr	w2, [x26, 28]
	ldr	x5, [x0, 16]
	cmp	w2, 0
	ldr	x1, [x26, 152]
	ble	.L1826
	mov	x4, 0
.L1829:
	ldrb	w3, [x5, x4]
	ldrb	w0, [x1, x4]
	cmp	w0, 0
	mvn	w0, w3
	and	w0, w0, -16
	csel	w0, w0, w3, ne
	strb	w0, [x1, x4]
	add	x4, x4, 1
	cmp	w2, w4
	bgt	.L1829
	ldr	w2, [x26, 28]
	ldr	x1, [x26, 152]
.L1826:
	ldr	x0, [x26, 144]
	sxtw	x2, w2
	bl	memcpy
	ldr	x0, [x26, 216]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x26, 136]
	bl	memcpy
	str	wzr, [x26, 600]
	str	wzr, [x26, 608]
	b	.L1822
.L1833:
	ldr	x0, [x26, 96]
	adrp	x1, .LC140
	add	x1, x1, :lo12:.LC140
	bl	_dev_info
	ldr	w0, [x26, 52]
	cbz	w0, .L1843
	b	.L1835
.L2178:
	ldr	x0, [x26, 208]
	ldrsw	x2, [x26, 28]
	ldr	x1, [x0, 16]
	ldr	x0, [x26, 144]
	bl	memcpy
	b	.L1846
.L1992:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .L1722
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .L1722
.L2180:
	mov	w1, 0
	mov	x0, x27
	bl	ebc_power_set
	b	.L1996
.L1998:
	mov	x0, x19
	add	x1, x29, 176
	bl	finish_wait
	str	wzr, [x26, 88]
	b	.L1722
.L1875:
	ldr	x0, [x26, 96]
	adrp	x1, .LC145
	mov	w21, 2
	add	x1, x1, :lo12:.LC145
	bl	_dev_info
	ldr	w19, [x20, 40]
	b	.L1860
.L2238:
	add	x0, x29, 176
	mov	w1, 0
	bl	init_wait_entry
	adrp	x0, .LANCHOR1
	add	x19, x0, :lo12:.LANCHOR1
	add	x19, x19, 304
.L1982:
	add	x1, x29, 176
	mov	w2, 1
	mov	x0, x19
	bl	prepare_to_wait_event
	ldr	w1, [x26, 52]
	cbz	w1, .L1980
	cbnz	x0, .L1979
	bl	schedule
	b	.L1982
.L2237:
	cmp	w23, 1
	bgt	.L1964
	ldrb	w1, [x19, x20]
	add	w1, w1, 4
	strb	w1, [x19, x20]
.L1964:
	sub	w1, w21, w26
	ldrb	w8, [x28, w1, sxtw]
	cbnz	w8, .L1966
	ldrb	w8, [x25, w1, sxtw]
	cmp	w8, 240
	beq	.L2241
.L1966:
	add	w1, w21, w26
	ldrb	w8, [x28, w1, sxtw]
	cbnz	w8, .L1969
	ldrb	w8, [x25, w1, sxtw]
	cmp	w8, 240
	beq	.L2242
.L1969:
	sub	x1, x20, #1
	ldrb	w8, [x28, x1]
	cbnz	w8, .L1972
	ldrb	w8, [x25, x1]
	cmp	w8, 240
	beq	.L2243
.L1972:
	add	x20, x20, 1
	ldrb	w1, [x28, x20]
	cbnz	w1, .L1962
	ldrb	w1, [x25, x20]
	cmp	w1, 240
	bne	.L1962
	sub	w0, w0, #40
	strb	w0, [x22, x20]
	cmp	w23, 1
	bgt	.L1962
	ldrb	w0, [x19, x20]
	add	w0, w0, 1
	strb	w0, [x19, x20]
	b	.L1962
.L2243:
	sub	w8, w0, #40
	strb	w8, [x22, x1]
	cmp	w23, 1
	bgt	.L1972
	ldrb	w8, [x19, x1]
	add	w8, w8, 1
	strb	w8, [x19, x1]
	b	.L1972
.L1980:
	mov	x0, x19
	add	x1, x29, 176
	bl	finish_wait
	b	.L1979
.L2241:
	sub	w8, w0, #40
	strb	w8, [x22, w1, sxtw]
	cmp	w23, 1
	bgt	.L1966
	ldrb	w8, [x19, w1, sxtw]
	add	w8, w8, 1
	strb	w8, [x19, w1, sxtw]
	b	.L1966
.L2242:
	sub	w8, w0, #40
	strb	w8, [x22, w1, sxtw]
	cmp	w23, 1
	bgt	.L1969
	ldrb	w8, [x19, w1, sxtw]
	add	w8, w8, 1
	strb	w8, [x19, w1, sxtw]
	b	.L1969
	.size	ebc_thread, .-ebc_thread
	.align	2
	.p2align 3,,7
	.type	ebc_auto_tast_function, %function
ebc_auto_tast_function:
	stp	x29, x30, [sp, -112]!
	adrp	x0, __stack_chk_guard
	add	x0, x0, :lo12:__stack_chk_guard
	add	x29, sp, 0
	stp	x25, x26, [sp, 64]
	adrp	x25, .LANCHOR0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	adrp	x22, .LANCHOR1
	stp	x23, x24, [sp, 48]
	add	x22, x22, :lo12:.LANCHOR1
	stp	x27, x28, [sp, 80]
	add	x21, x22, 840
	ldr	x26, [x25, #:lo12:.LANCHOR0]
	add	x22, x22, 352
	ldr	x1, [x0]
	str	x1, [x29, 104]
	mov	x1,0
	adrp	x27, jiffies
	add	x20, x26, 40
	add	x19, x26, 232
	add	x28, x26, 752
	mov	x24, 2
#APP
// 19 "/home/lyx/rk3566-11-eink/kernel/arch/arm64/include/asm/current.h" 1
	mrs x23, sp_el0
// 0 "" 2
#NO_APP
	b	.L2271
	.p2align 3
.L2281:
	cmp	w0, 4
	beq	.L2247
	cmp	w0, 1
	beq	.L2279
	ldr	x0, [x19, 216]
	ldr	w0, [x0, 40]
	cmp	w0, 21
	beq	.L2280
	ldr	w2, [x19, 72]
	mov	x1, x19
	mov	x0, x20
	sub	w2, w2, #1
	str	w2, [x19, 72]
	bl	flip
	add	x0, x25, :lo12:.LANCHOR0
	ldr	x0, [x0, 16]
	bl	wake_up_process
	ldr	w4, [x19, 72]
	cbz	w4, .L2253
	ldr	w0, [x20, 164]
	cbz	w0, .L2270
	ldrsw	x0, [x20, 72]
	mov	w6, 2
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	ldrb	w3, [x26, 288]
	ldr	x5, [x26, 352]
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change2.isra.3
	.p2align 2
.L2253:
	mov	x0, x21
	bl	up
	bl	schedule
.L2271:
	mov	x0, x21
	bl	down
	mov	x0, x22
	bl	down
	str	x24, [x23, 32]
#APP
// 2303 "/home/lyx/rk3566-11-eink/kernel/drivers/gpu/drm/rockchip/ebc-dev/ebc_dev_y8.c" 1
	dmb ish
// 0 "" 2
#NO_APP
	ldr	w0, [x19, 240]
	cmp	w0, 3
	bne	.L2281
	ldr	w0, [x19, 60]
	str	wzr, [x19, 68]
	cbnz	w0, .L2258
	ldr	w0, [x19, 64]
	cbz	w0, .L2259
.L2258:
	mov	x1, x19
	mov	x0, x20
	bl	flip
	add	x0, x25, :lo12:.LANCHOR0
	ldr	x0, [x0, 16]
	bl	wake_up_process
	ldr	w0, [x20, 164]
	cbz	w0, .L2260
	ldrsw	x0, [x20, 72]
	mov	w5, 2
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldr	x3, [x19, 160]
	mov	x4, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_auto_image2
	b	.L2253
	.p2align 3
.L2279:
	ldr	w2, [x19, 72]
	mov	x1, x19
	mov	x0, x20
	sub	w2, w2, #1
	str	w2, [x19, 72]
	bl	flip
	add	x0, x25, :lo12:.LANCHOR0
	ldr	x0, [x0, 16]
	bl	wake_up_process
	ldr	w0, [x19, 72]
	cbz	w0, .L2253
	ldr	w0, [x20, 164]
	cbz	w0, .L2265
	ldrsw	x0, [x20, 72]
	mov	w4, 2
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_part2
	b	.L2253
	.p2align 3
.L2247:
	ldr	w0, [x19, 76]
	cbz	w0, .L2249
	ldr	w0, [x19, 60]
	str	wzr, [x19, 68]
	str	wzr, [x19, 76]
	cbnz	w0, .L2250
	ldr	w0, [x19, 64]
	cbz	w0, .L2251
.L2250:
	mov	x1, x19
	mov	x0, x20
	bl	flip
	add	x0, x25, :lo12:.LANCHOR0
	ldr	x0, [x0, 16]
	bl	wake_up_process
	ldr	w0, [x20, 164]
	cbz	w0, .L2252
	ldrsw	x0, [x20, 72]
	mov	w6, 2
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x19, 160]
	mov	x5, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_overlay_image2
	b	.L2253
	.p2align 3
.L2260:
	ldrsw	x0, [x20, 72]
	mov	w5, 2
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldr	x3, [x19, 160]
	mov	x4, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_auto_image
	b	.L2253
	.p2align 3
.L2249:
	mov	x0, x22
	bl	up
	ldr	w0, [x20, 164]
	cbz	w0, .L2257
	ldrsw	x0, [x20, 72]
	mov	x4, x19
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldr	x3, [x19, 160]
	ldr	x0, [x19, x0, lsl 3]
	bl	get_overlay_image_area2.isra.0
	b	.L2253
	.p2align 3
.L2252:
	ldrsw	x0, [x20, 72]
	mov	w6, 2
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x19, 160]
	mov	x5, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_overlay_image
	b	.L2253
	.p2align 3
.L2280:
	ldr	w3, [x19, 672]
	mov	x1, x19
	ldr	w2, [x19, 684]
	mov	x0, x20
	add	w2, w2, w3
	str	w2, [x19, 684]
	bl	flip
	add	x0, x25, :lo12:.LANCHOR0
	ldr	x0, [x0, 16]
	bl	wake_up_process
	mov	x0, x19
	bl	is_full_refresh_done
	tst	w0, 255
	beq	.L2267
	mov	w0, 1
	str	w0, [x19, 688]
	b	.L2253
	.p2align 3
.L2265:
	ldrsw	x0, [x20, 72]
	mov	w4, 2
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_part
	b	.L2253
	.p2align 3
.L2259:
	mov	x0, x22
	bl	up
	ldr	w0, [x19, 596]
	cbz	w0, .L2282
.L2261:
	ldr	w0, [x20, 164]
	cbz	w0, .L2262
	ldrsw	x0, [x20, 72]
	mov	w5, 1
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldr	x3, [x19, 160]
	mov	x4, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_auto_image2
.L2263:
	mov	w0, 1
	ldr	x1, [x27, #:lo12:jiffies]
	str	w0, [x19, 68]
	mov	x0, x28
	add	x1, x1, 1
	bl	mod_timer
	b	.L2253
	.p2align 3
.L2270:
	ldrsw	x0, [x20, 72]
	mov	w6, 2
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	ldrb	w3, [x26, 288]
	ldr	x5, [x26, 352]
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change.isra.2
	b	.L2253
	.p2align 3
.L2251:
	mov	x0, x22
	bl	up
	ldr	w0, [x19, 596]
	cbz	w0, .L2283
.L2254:
	ldr	w0, [x20, 164]
	cbz	w0, .L2255
	ldrsw	x0, [x20, 72]
	mov	w6, 1
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x19, 160]
	mov	x5, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_overlay_image2
	b	.L2263
	.p2align 3
.L2257:
	ldrsw	x0, [x20, 72]
	mov	x5, x19
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x19, 160]
	ldr	x0, [x19, x0, lsl 3]
	bl	get_overlay_image_area
	b	.L2253
	.p2align 3
.L2267:
	ldr	w0, [x20, 164]
	cbz	w0, .L2268
	ldrsw	x0, [x20, 72]
	mov	w4, 2
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_full2
	b	.L2253
	.p2align 3
.L2262:
	ldrsw	x0, [x20, 72]
	mov	w5, 1
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldr	x3, [x19, 160]
	mov	x4, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_auto_image
	b	.L2263
	.p2align 3
.L2255:
	ldrsw	x0, [x20, 72]
	mov	w6, 1
	ldp	x1, x2, [x19, 136]
	add	x0, x0, 22
	ldp	x3, x4, [x19, 160]
	mov	x5, x19
	ldr	x0, [x19, x0, lsl 3]
	bl	get_overlay_image
	b	.L2263
	.p2align 3
.L2268:
	ldrsw	x0, [x20, 72]
	mov	w4, 2
	ldp	x2, x1, [x19, 208]
	add	x0, x0, 22
	mov	x3, x19
	ldr	x0, [x19, x0, lsl 3]
	ldr	x1, [x1, 16]
	ldr	x2, [x2, 16]
	bl	direct_mode_data_change_full
	b	.L2253
	.p2align 3
.L2282:
	ldr	x1, [x19, 216]
	mov	x3, x19
	ldr	x0, [x19, 136]
	ldr	x2, [x19, 160]
	ldr	x1, [x1, 16]
	bl	refresh_new_image_auto
	b	.L2261
	.p2align 3
.L2283:
	ldr	x2, [x19, 216]
	mov	x5, x19
	ldr	x1, [x19, 16]
	ldr	x0, [x19, 136]
	ldp	x3, x4, [x19, 160]
	ldr	x2, [x2, 16]
	bl	refresh_new_image
	b	.L2254
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
	.xword	.LC158
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
	.xword	.LC98
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
	.xword	.LC171
	.xword	waveform_ops
	.zero	56
	.type	dev_attr_waveform_version, %object
	.size	dev_attr_waveform_version, 32
dev_attr_waveform_version:
	.xword	.LC170
	.hword	292
	.zero	6
	.xword	waveform_version_read
	.xword	0
	.type	dev_attr_pmic_name, %object
	.size	dev_attr_pmic_name, 32
dev_attr_pmic_name:
	.xword	.LC169
	.hword	292
	.zero	6
	.xword	pmic_name_read
	.xword	0
	.type	dev_attr_pmic_temp, %object
	.size	dev_attr_pmic_temp, 32
dev_attr_pmic_temp:
	.xword	.LC168
	.hword	292
	.zero	6
	.xword	pmic_temp_read
	.xword	0
	.type	dev_attr_pmic_vcom, %object
	.size	dev_attr_pmic_vcom, 32
dev_attr_pmic_vcom:
	.xword	.LC167
	.hword	420
	.zero	6
	.xword	pmic_vcom_read
	.xword	pmic_vcom_write
	.type	dev_attr_ebc_version, %object
	.size	dev_attr_ebc_version, 32
dev_attr_ebc_version:
	.xword	.LC165
	.hword	292
	.zero	6
	.xword	ebc_version_read
	.xword	0
	.type	dev_attr_ebc_state, %object
	.size	dev_attr_ebc_state, 32
dev_attr_ebc_state:
	.xword	.LC164
	.hword	292
	.zero	6
	.xword	ebc_state_read
	.xword	0
	.type	dev_attr_ebc_buf_state, %object
	.size	dev_attr_ebc_buf_state, 32
dev_attr_ebc_buf_state:
	.xword	.LC163
	.hword	292
	.zero	6
	.xword	ebc_buf_state_read
	.xword	0
	.type	dev_attr_auto_frame_state, %object
	.size	dev_attr_auto_frame_state, 32
dev_attr_auto_frame_state:
	.xword	.LC162
	.hword	292
	.zero	6
	.xword	auto_frame_state_read
	.xword	0
	.type	dev_attr_ebc_debug_level, %object
	.size	dev_attr_ebc_debug_level, 32
dev_attr_ebc_debug_level:
	.xword	.LC166
	.hword	420
	.zero	6
	.xword	ebc_debug_level_read
	.xword	ebc_debug_level_write
	.type	dev_attr_wf_data, %object
	.size	dev_attr_wf_data, 32
dev_attr_wf_data:
	.xword	.LC161
	.hword	128
	.zero	6
	.xword	0
	.xword	wf_data_write
	.type	dev_attr_ori_wf_data, %object
	.size	dev_attr_ori_wf_data, 32
dev_attr_ori_wf_data:
	.xword	.LC160
	.hword	128
	.zero	6
	.xword	0
	.xword	ori_wf_data_write
	.type	dev_attr_record_pix_wf, %object
	.size	dev_attr_record_pix_wf, 32
dev_attr_record_pix_wf:
	.xword	.LC159
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
	.type	__func__.43055, %object
	.size	__func__.43055, 11
__func__.43055:
	.string	"ebc_io_ctl"
	.align	3
	.set	.LANCHOR3,. + 0
	.type	__func__.43506, %object
	.size	__func__.43506, 19
__func__.43506:
	.string	"ebc_lut_table_init"
	.zero	5
	.type	__func__.43433, %object
	.size	__func__.43433, 18
__func__.43433:
	.string	"ori_wf_data_write"
	.zero	6
	.type	__func__.42442, %object
	.size	__func__.42442, 16
__func__.42442:
	.string	"ebc_frame_start"
	.type	__func__.42430, %object
	.size	__func__.42430, 27
__func__.42430:
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
	.type	__addressable_ebc_init4793, %object
	.size	__addressable_ebc_init4793, 8
__addressable_ebc_init4793:
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
	.string	"record pix pos wf: [%d, %d]: [%02x --> %02x]\n"
	.zero	2
.LC2:
	.string	"ebc_frame_control_timeout, overlay_bg_update=1\n"
.LC3:
	.string	"ebc hw power on res:%d\n"
.LC4:
	.string	"ebc hw power off res:%d\n"
	.zero	7
.LC5:
	.string	"device suspend\n"
.LC6:
	.string	"%s: argp NULL\n"
	.zero	1
.LC7:
	.string	"enable bg control\n"
	.zero	5
.LC8:
	.string	"disable bg control\n"
	.zero	4
.LC9:
	.string	"enable ebc overlay, you can use osd buf to show something over the system display\n"
	.zero	5
.LC10:
	.string	"disable ebc overlay\n"
	.zero	3
.LC11:
	.string	"EBC_GET_BUFFER_INFO failed\n"
	.zero	4
.LC12:
	.string	"EBC_SET_DIFF_PERCENT = %d\n"
	.zero	5
.LC13:
	.string	"EBC_FB_BLANK\n"
	.zero	2
.LC14:
	.string	"EBC_FB_UNBLANK\n"
.LC15:
	.string	"EBC_ENABLE_REPAIR = %d\n"
.LC16:
	.string	"EBC_SET_FULL_REFRESH_WIDTH = %d\n"
	.zero	7
.LC17:
	.string	"EBC_SET_FULL_REFRESH_TYPE = %d\n"
.LC18:
	.string	"EBC_SET_FORCE_TEMPERATURE = %d\n"
.LC19:
	.string	"EBC_ENABLE_WAVEFORM_FIX = %d\n"
	.zero	2
.LC20:
	.string	"EBC_SET_REGAL_TYPE = %d\n"
	.zero	7
.LC21:
	.string	"EBC_FORCE_FULL_USE_REGAL = %d\n"
	.zero	1
.LC22:
	.string	"%s: unknown cmd\n"
	.zero	7
.LC23:
	.string	"overlay frame done\n"
	.zero	4
.LC24:
	.string	"auto task break\n"
	.zero	7
.LC25:
	.string	"auto frame done\n"
	.zero	7
.LC26:
	.string	"part task break\n"
	.zero	7
.LC27:
	.string	"frame done\n"
	.zero	4
.LC28:
	.string	"record pix pos wf: [%d, %d]: [%s]\n"
	.zero	5
.LC29:
	.string	"too large resolution, not support\n"
	.zero	5
.LC30:
	.string	"memory-region"
	.zero	2
.LC31:
	.string	"Couldn't address to resource for reserved memory\n"
	.zero	6
.LC32:
	.string	"reserved memory not enough, need 0x%x\n"
	.zero	1
.LC33:
	.string	"Couldn't remap for reserved memory\n"
	.zero	4
.LC34:
	.string	"waveform-region"
.LC35:
	.string	"wf,mode_table"
	.zero	2
.LC36:
	.string	"%s:%d: failed to get mem from reserved\n"
.LC37:
	.string	"Failed to read waveform from mem, we use waveform file from kernel file instead\n"
	.zero	7
.LC38:
	.string	"Failed to read waveform file from kernel, no waveform!!!\n"
	.zero	6
.LC39:
	.string	"temperature = %d, out of range0~50 ,use 25 \n"
	.zero	3
.LC40:
	.string	"temperature = %d, out of range0~50 ,use 50 \n"
	.zero	3
.LC41:
	.string	"ebc_pmic_read_temp failed, ret = %d, use 25 \n"
	.zero	2
.LC42:
	.string	"lut update use temperature = %d\n"
	.zero	7
.LC43:
	.string	"get lut data failed\n"
	.zero	3
.LC44:
	.string	"%d,%d%n"
.LC45:
	.string	"603893"
	.zero	1
.LC46:
	.string	"lutdata: %d frames\n"
	.zero	4
.LC47:
	.string	"[%d-->%d]: \n"
	.zero	3
.LC48:
	.string	"\001c\0017%d, "
	.zero	7
.LC49:
	.string	"malloc wf_table buffer failed\n"
	.zero	1
.LC50:
	.string	"603893 %d %d"
	.zero	3
.LC51:
	.string	"%s: wf mode %d on temp %d\n"
	.zero	5
.LC52:
	.string	"%s: err code\n"
	.zero	2
.LC53:
	.string	"%s: err lut_type or temp\n"
	.zero	6
.LC54:
	.string	"invalid value = %s\n"
	.zero	4
.LC55:
	.string	"%d\n"
	.zero	4
.LC56:
	.string	"7.16_y8"
.LC57:
	.string	"%s\n"
	.zero	4
.LC58:
	.string	"set vcom value failed\n"
	.zero	1
.LC59:
	.string	"rockchip ebc driver %s probe\n"
	.zero	2
.LC60:
	.string	"cpu-code"
	.zero	7
.LC61:
	.string	"no chip info\n"
	.zero	2
.LC62:
	.string	"read chip info failed\n"
	.zero	1
.LC63:
	.string	"chip err\n"
	.zero	6
.LC64:
	.string	"ebc_tcon"
	.zero	7
.LC65:
	.string	"not find ebc tcon\n"
	.zero	5
.LC66:
	.string	"pmic"
	.zero	3
.LC67:
	.string	"Get PMIC device failed\n"
.LC68:
	.string	"wrong pmics number\n"
	.zero	4
.LC69:
	.string	"not find pmic node\n"
	.zero	4
.LC70:
	.string	"not find pmic i2c client\n"
	.zero	6
.LC71:
	.string	"use pmic%d\n"
	.zero	4
.LC72:
	.string	"vcom"
	.zero	3
.LC73:
	.string	"Failed to get vcom regulator\n"
	.zero	2
.LC74:
	.string	"thermal-zone"
	.zero	3
.LC75:
	.string	"Failed to get thermal zone name\n"
	.zero	7
.LC76:
	.string	"Failed to get thermal device\n"
	.zero	2
.LC77:
	.string	"ebc-dmc-notify-enable"
	.zero	2
.LC78:
	.string	"panel,width"
	.zero	4
.LC79:
	.string	"panel,panel_color"
	.zero	6
.LC80:
	.string	"panel,mirror"
	.zero	3
.LC81:
	.string	"panel,width-mm"
	.zero	1
.LC82:
	.string	"panel,height-mm"
.LC83:
	.string	"panel,disable_logo"
	.zero	5
.LC84:
	.string	"panel,rearrange"
.LC85:
	.string	"panel,sdoe_mode"
.LC86:
	.string	"panel,sdce_width"
	.zero	7
.LC87:
	.string	"panel,gds"
	.zero	6
.LC88:
	.string	"panel,gdl"
	.zero	6
.LC89:
	.string	"pmic-early-power-on"
	.zero	4
.LC90:
	.string	"failed to probe panel: %d\n"
	.zero	5
.LC91:
	.string	"buffer manage init failed\n"
	.zero	5
.LC92:
	.string	"lut table init failed\n"
	.zero	1
.LC93:
	.string	"ebc_task"
	.zero	7
.LC94:
	.string	"failed to create ebc_task thread\n"
	.zero	6
.LC95:
	.string	"ebc_taskup"
	.zero	5
.LC96:
	.string	"failed to create ebc_taskup thread\n"
	.zero	4
.LC97:
	.string	"ebc_thread"
	.zero	5
.LC98:
	.string	"ebc"
	.zero	4
.LC99:
	.string	"ulogo_addr="
	.zero	4
.LC100:
	.string	"klogo_addr="
	.zero	4
.LC101:
	.string	"ulogo_addr=0x%x"
.LC102:
	.string	"have ulogo display, ulogo addr = 0x%x\n"
	.zero	1
.LC103:
	.string	"malloc ulogo buffer failed\n"
	.zero	4
.LC104:
	.string	"klogo_addr=0x%x"
.LC105:
	.string	"need show klogo, klogo addr = 0x%x\n"
	.zero	4
.LC106:
	.string	"malloc klogo buffer failed\n"
	.zero	4
.LC107:
	.string	"no uboot logo, panel init\n"
	.zero	5
.LC108:
	.string	"ebc_dev_reset"
	.zero	2
.LC109:
	.string	"ebc_dev_logo"
	.zero	3
.LC110:
	.string	"rockchip ebc driver %s probe success\n"
	.zero	2
.LC111:
	.string	"panel,height"
	.zero	3
.LC112:
	.string	"panel,vir_width"
.LC113:
	.string	"panel,vir_height"
	.zero	7
.LC114:
	.string	"panel,sdck"
	.zero	5
.LC115:
	.string	"panel,lsl"
	.zero	6
.LC116:
	.string	"panel,lbl"
	.zero	6
.LC117:
	.string	"panel,ldl"
	.zero	6
.LC118:
	.string	"panel,lel"
	.zero	6
.LC119:
	.string	"panel,gdck-sta"
	.zero	1
.LC120:
	.string	"panel,lgonl"
	.zero	4
.LC121:
	.string	"panel,fsl"
	.zero	6
.LC122:
	.string	"panel,fbl"
	.zero	6
.LC123:
	.string	"panel,fdl"
	.zero	6
.LC124:
	.string	"panel,fel"
	.zero	6
.LC125:
	.string	"panel,panel_16bit"
	.zero	6
.LC126:
	.string	"failed to run ebc thread\n"
	.zero	6
.LC127:
	.string	"task init failed\n"
	.zero	6
.LC128:
	.string	"0\n"
	.zero	5
.LC129:
	.string	"%s: overlay no need to update\n"
	.zero	1
.LC130:
	.string	"%s: auto no need to update\n"
	.zero	4
.LC131:
	.string	"ebc suspend, drop osd buf\n"
	.zero	5
.LC132:
	.string	"break from part work, frame left = %d\n"
	.zero	1
.LC133:
	.string	"control bg update under overlay mode, overlay_bg_update=0\n"
	.zero	5
.LC134:
	.string	"break from fast mode, process it\n"
	.zero	6
.LC135:
	.string	"overlay mode start, frame_total=%d, bw_frame = %d\n"
	.zero	5
.LC136:
	.string	"frame start under overlay, mode = %d, framecount = %d\n"
	.zero	1
.LC137:
	.string	"%s: overlay bg no need to update, overlay_bg_update=1\n"
	.zero	1
.LC138:
	.string	"mode change, force update lut, mode = %d, framecount = %d\n"
	.zero	5
.LC139:
	.string	"update frame under overlay, mode = %d, framecount = %d\n"
.LC140:
	.string	"ebc is busy now, waiting prev mode end...\n"
	.zero	5
.LC141:
	.string	"prev refresh mode end\n"
	.zero	1
.LC142:
	.string	"auto mode start, frame_total=%d\n"
	.zero	7
.LC143:
	.string	"last frame not complete, left = %d, change to force full\n"
	.zero	6
.LC144:
	.string	"check_part_mode==0, no need refresh\n"
	.zero	3
.LC145:
	.string	"check difference is greater than the setting diff_percent, full refresh\n"
	.zero	7
.LC146:
	.string	"check difference is 0, no need refresh\n"
.LC147:
	.string	"change from fast mode\n"
	.zero	1
.LC148:
	.string	"frame start, mode = %d, framecount = %d vs %d\n"
	.zero	1
.LC149:
	.string	"update repair buf\n"
	.zero	5
.LC150:
	.string	"waiting frame done\n"
	.zero	4
.LC151:
	.string	"----update repair buf timeout----\n"
	.zero	5
.LC152:
	.string	"break from part work, do something before turn to overlay work\n"
.LC153:
	.string	"have imbalance pixel, do repair..........\n"
	.zero	5
.LC154:
	.string	"no buffer, do repair..........\n"
.LC155:
	.string	"no buffer, do last ghost remove..........\n"
	.zero	5
.LC156:
	.string	"frame start, mode = %d, framecount = %d\n"
	.zero	7
.LC157:
	.string	"ebc buffer mode %d error!!!\n"
	.zero	3
.LC158:
	.string	"ebc-dev"
.LC159:
	.string	"record_pix_wf"
	.zero	2
.LC160:
	.string	"ori_wf_data"
	.zero	4
.LC161:
	.string	"wf_data"
.LC162:
	.string	"auto_frame_state"
	.zero	7
.LC163:
	.string	"ebc_buf_state"
	.zero	2
.LC164:
	.string	"ebc_state"
	.zero	6
.LC165:
	.string	"ebc_version"
	.zero	4
.LC166:
	.string	"ebc_debug_level"
.LC167:
	.string	"pmic_vcom"
	.zero	6
.LC168:
	.string	"pmic_temp"
	.zero	6
.LC169:
	.string	"pmic_name"
	.zero	6
.LC170:
	.string	"waveform_version"
	.zero	7
.LC171:
	.string	"waveform"
	.ident	"GCC: (Linaro GCC 6.3-2017.05) 6.3.1 20170404"
	.section	.note.GNU-stack,"",@progbits

// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.arch armv8-a
	.file	"rkf_waveform.c"
	.text
	.align	2
	.p2align 3,,7
	.type	get_wf_level, %function
get_wf_level:
	cmp	w1, 0
	mov	w3, 50
	csel	w1, w1, wzr, ge
	mov	w4, 1
	cmp	w1, w3
	mov	x2, 0
	csel	w1, w1, w3, le
	b	.L2
	.p2align 3
.L12:
	cmp	w1, w3
	blt	.L4
	cmp	w4, 51
	beq	.L11
.L7:
	add	x2, x2, 1
	add	w4, w4, 1
.L2:
	add	x5, x0, x2
	mov	w6, w2
	cbz	x2, .L3
	ldrb	w3, [x0, x2]
	ldrb	w5, [x5, -1]
	cmp	w5, w3
	bls	.L12
.L4:
	sub	w0, w6, #1
	ret
	.p2align 3
.L11:
	mov	w0, 0
	ret
.L3:
	ldrb	w3, [x0]
	cmp	w1, w3
	bge	.L7
	mov	w6, 0
	b	.L4
	.size	get_wf_level, .-get_wf_level
	.align	2
	.p2align 3,,7
	.type	decode_wf_data, %function
decode_wf_data:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	uxtw	x20, w1
	mov	w1, 32960
	str	x21, [sp, 32]
	movk	w1, 0x60, lsl 16
	mov	x21, x0
	mov	x0, x20
	bl	__kmalloc
	mov	x19, x0
	cbz	x0, .L14
	mov	x2, x20
	add	x1, x21, 4
	bl	memcpy
.L14:
	mov	x0, x19
	ldr	x21, [sp, 32]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	decode_wf_data, .-decode_wf_data
	.align	2
	.p2align 3,,7
	.type	rkf_lut_wf_table.isra.1, %function
rkf_lut_wf_table.isra.1:
	stp	x29, x30, [sp, -16]!
	cmp	w2, 0
	adrp	x30, .LANCHOR0
	add	x29, sp, 0
	ble	.L46
	ldr	w15, [x30, #:lo12:.LANCHOR0]
	mov	w10, 0
	mov	w17, 0
	lsl	w3, w15, 1
	add	w16, w3, 31
	cmp	w3, 0
	csel	w16, w16, w3, lt
	asr	w16, w16, 5
	mul	w18, w15, w16
.L23:
	lsl	w12, w17, 10
	mov	w14, 0
	mov	w13, 0
	ldr	x11, [x0]
	cbz	w15, .L26
	.p2align 2
.L36:
	uxtw	x9, w14
	add	w8, w12, w15
	mov	w6, w12
	mov	w5, 0
	.p2align 2
.L24:
	lsr	w3, w5, 5
	and	w7, w5, 30
	add	x3, x3, x9
	add	w5, w5, 2
	lsl	x3, x3, 2
	add	x3, x3, x10, sxtw 2
	ldr	w4, [x11, x3]
	lsr	w3, w4, w7
	and	w3, w3, 3
	strb	w3, [x1, w6, uxtw]
	add	w6, w6, 1
	cmp	w8, w6
	bne	.L24
	add	w13, w13, 1
	add	w14, w14, w16
	add	w12, w12, 32
	cmp	w13, w15
	bne	.L36
.L26:
	add	w17, w17, 1
	add	w10, w10, w18
	cmp	w17, w2
	bne	.L23
.L21:
	cmp	w15, 32
	beq	.L47
.L34:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret
.L47:
	add	x30, x30, :lo12:.LANCHOR0
	ldr	w0, [x30, 4]
	cmp	w0, 16
	bne	.L34
	mov	w8, 0
	mov	w9, 0
	cmp	w2, 0
	ble	.L34
.L35:
	mov	w6, w8
	mov	w7, 0
	.p2align 2
.L31:
	lsr	w5, w7, 1
	mov	w0, 0
	add	w5, w8, w5, lsl 5
	.p2align 2
.L30:
	add	w4, w0, w6
	add	w3, w5, w0, lsr 1
	add	w0, w0, 2
	cmp	w0, 32
	ldrb	w4, [x1, w4, uxtw]
	strb	w4, [x1, w3, uxtw]
	bne	.L30
	add	w7, w7, 2
	add	w6, w6, 64
	cmp	w7, 32
	bne	.L31
	add	w9, w9, 1
	add	w8, w8, 1024
	cmp	w2, w9
	bne	.L35
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret
.L46:
	ldr	w15, [x30, #:lo12:.LANCHOR0]
	b	.L21
	.size	rkf_lut_wf_table.isra.1, .-rkf_lut_wf_table.isra.1
	.align	2
	.p2align 3,,7
	.type	parse_wf_gray16.isra.5, %function
parse_wf_gray16.isra.5:
	stp	x29, x30, [sp, -32]!
	adrp	x3, .LANCHOR1
	cmp	w2, 3
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x20, x0
	ldr	x7, [x3, #:lo12:.LANCHOR1]
	beq	.L50
	bls	.L68
	cmp	w2, 5
	beq	.L55
	bcc	.L56
	add	x0, x7, 532
	add	x8, x7, 2132
	cmp	w2, 6
	beq	.L58
	mov	x0, 0
	b	.L49
	.p2align 3
.L68:
	cmp	w2, 1
	beq	.L52
	add	x0, x7, 148
	add	x8, x7, 596
	bhi	.L69
.L58:
	bl	get_wf_level
	ldr	w0, [x8, w0, uxtw 2]
	add	x0, x7, x0
.L49:
	adrp	x1, .LANCHOR0
	ldrb	w19, [x0]
	ldr	w1, [x1, #:lo12:.LANCHOR0]
	lsl	w2, w19, 1
	mul	w1, w1, w1
	mul	w1, w2, w1
	lsr	w1, w1, 3
	bl	decode_wf_data
	str	x0, [x20]
	cmp	x0, 0
	mov	w0, -22
	csel	w0, w19, w0, ne
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	.p2align 3
.L56:
	add	x0, x7, 340
	add	x8, x7, 1364
	b	.L58
	.p2align 3
.L69:
	add	x0, x7, 212
	add	x8, x7, 852
	b	.L58
	.p2align 3
.L55:
	add	x0, x7, 404
	add	x8, x7, 1620
	b	.L58
	.p2align 3
.L52:
	add	x0, x7, 468
	add	x8, x7, 1876
	b	.L58
	.p2align 3
.L50:
	add	x0, x7, 276
	add	x8, x7, 1108
	b	.L58
	.size	parse_wf_gray16.isra.5, .-parse_wf_gray16.isra.5
	.align	2
	.p2align 3,,7
	.type	parse_wf_data, %function
parse_wf_data:
	stp	x29, x30, [sp, -48]!
	mov	w3, w1
	cmp	w3, 8
	mov	w1, w2
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	beq	.L78
	cmp	w3, 12
	beq	.L72
	cmp	w3, 11
	beq	.L73
	cmp	w3, 13
	beq	.L74
	cmp	w3, 14
	beq	.L78
	cmp	w3, 15
	beq	.L73
	cmp	w3, 3
	beq	.L78
	bhi	.L76
	cmp	w3, 1
	beq	.L77
	bhi	.L78
	adrp	x0, .LANCHOR1
	ldr	x7, [x0, #:lo12:.LANCHOR1]
	add	x0, x7, 148
	bl	get_wf_level
	add	x0, x7, x0, uxtw 2
	ldr	w1, [x0, 596]
	add	x0, x7, x1
	ldrb	w19, [x7, x1]
	add	w21, w19, 15
	lsr	w21, w21, 4
	lsl	w1, w21, 2
	bl	decode_wf_data
	mov	x22, x0
	cbz	x0, .L134
	lsl	w0, w21, 10
	mov	w1, 32960
	movk	w1, 0x60, lsl 16
	sxtw	x0, w0
	bl	__kmalloc
	cbz	x0, .L82
	cbz	w21, .L83
	mov	x8, 0
.L87:
	ldr	w7, [x22, x8, lsl 2]
	lsl	w1, w8, 8
	mov	w6, 0
	.p2align 2
.L86:
	asr	w5, w7, w6
	and	w5, w5, 3
	mov	w3, w5
	mov	w2, 0
	.p2align 2
.L84:
	lsl	w4, w5, w2
	add	w2, w2, 2
	orr	w3, w3, w4
	cmp	w2, 32
	bne	.L84
	add	w2, w1, 16
	.p2align 2
.L85:
	str	w3, [x0, w1, sxtw 2]
	add	w1, w1, 1
	cmp	w1, w2
	bne	.L85
	add	w6, w6, 2
	cmp	w6, 32
	bne	.L86
	add	x8, x8, 1
	cmp	w21, w8
	bgt	.L87
.L83:
	str	x0, [x20, 8]
	mov	x0, x22
	bl	kfree
.L133:
	mov	w0, w19
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
.L78:
	mov	w2, 2
	add	x0, x20, 8
	bl	parse_wf_gray16.isra.5
	cmp	w0, 0
	csinv	w0, w0, wzr, ge
.L70:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
.L73:
	mov	w2, 4
	add	x0, x20, 8
	bl	parse_wf_gray16.isra.5
	cmp	w0, 0
	csinv	w0, w0, wzr, ge
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
.L77:
	adrp	x0, .LANCHOR1
	ldr	x7, [x0, #:lo12:.LANCHOR1]
	add	x0, x7, 468
	bl	get_wf_level
	add	x0, x7, x0, uxtw 2
	adrp	x1, .LANCHOR0
	ldr	w2, [x0, 1876]
	ldr	w1, [x1, #:lo12:.LANCHOR0]
.L135:
	ldrb	w19, [x7, x2]
	mul	w1, w1, w1
	add	x0, x7, x2
	lsl	w2, w19, 1
	mul	w1, w2, w1
	lsr	w1, w1, 3
	bl	decode_wf_data
	str	x0, [x20, 8]
	cbnz	x0, .L133
.L134:
	mov	w0, -1
	b	.L70
.L74:
	mov	w2, 3
	add	x0, x20, 8
	bl	parse_wf_gray16.isra.5
	cmp	w0, 0
	csinv	w0, w0, wzr, ge
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
.L72:
	mov	w2, 5
	add	x0, x20, 8
	bl	parse_wf_gray16.isra.5
	cmp	w0, 0
	csinv	w0, w0, wzr, ge
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
.L76:
	cmp	w3, 5
	beq	.L73
	bcc	.L74
	cmp	w3, 6
	beq	.L72
	cmp	w3, 7
	bne	.L134
	adrp	x0, .LANCHOR1
	ldr	x7, [x0, #:lo12:.LANCHOR1]
	add	x0, x7, 532
	bl	get_wf_level
	add	x0, x7, x0, uxtw 2
	adrp	x1, .LANCHOR0
	ldr	w2, [x0, 2132]
	ldr	w1, [x1, #:lo12:.LANCHOR0]
	b	.L135
.L82:
	str	xzr, [x20, 8]
	mov	x0, x22
	bl	kfree
	mov	w0, -1
	b	.L70
	.size	parse_wf_data, .-parse_wf_data
	.align	2
	.p2align 3,,7
	.global	rkf_wf_input
	.type	rkf_wf_input, %function
rkf_wf_input:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	stp	x21, x22, [sp, 32]
	adrp	x22, .LANCHOR1
	stp	x19, x20, [sp, 16]
	mov	w21, -16
	ldr	x1, [x22, #:lo12:.LANCHOR1]
	stp	x23, x24, [sp, 48]
	cbnz	x1, .L136
	add	x20, x0, 20
	mov	x19, x0
	adrp	x1, .LC0
	mov	x2, 8
	add	x1, x1, :lo12:.LC0
	mov	x0, x20
	bl	strncmp
	cbz	w0, .L159
	adrp	x1, .LC1
	mov	x2, 8
	add	x1, x1, :lo12:.LC1
	mov	x0, x20
	bl	strncmp
	cbz	w0, .L160
	adrp	x0, .LC7
	mov	w21, -1
	add	x0, x0, :lo12:.LC7
	bl	printk
.L136:
	mov	w0, w21
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 64
	ret
.L159:
	adrp	x1, .LANCHOR0
	mov	w0, 16
	mov	w2, w0
	str	w0, [x1, #:lo12:.LANCHOR0]
.L139:
	mov	x1, x20
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printk
	adrp	x1, .LC3
	mov	x2, 12
	add	x1, x1, :lo12:.LC3
	add	x0, x19, 4
	bl	strncmp
	mov	w21, w0
	cbnz	w0, .L161
	ldr	w20, [x19]
	cmp	w20, 1048576
	bgt	.L149
	add	x7, x22, :lo12:.LANCHOR1
	ldr	w23, [x19, w20, sxtw]
	add	x24, x7, 8
	mov	x2, 1024
	mov	w1, 0
	mov	x0, x24
	bl	memset
	mov	w5, 3511
	mov	x7, x24
	mov	x6, 0
	movk	w5, 0x4c1, lsl 16
	.p2align 2
.L145:
	lsl	w1, w6, 22
	mov	w2, 8
	mov	w0, 0
	.p2align 2
.L144:
	eor	w4, w1, w0
	eor	w3, w5, w0, lsl 1
	cmp	w4, 0
	lsl	w0, w0, 1
	csel	w0, w0, w3, ge
	lsl	w1, w1, 1
	subs	w2, w2, #1
	bne	.L144
	str	w0, [x6, x7]
	add	x6, x6, 4
	cmp	x6, 1024
	bne	.L145
	cbz	w20, .L146
	add	x3, x22, :lo12:.LANCHOR1
	mov	x1, 0
	add	x3, x3, 8
	.p2align 2
.L147:
	ldrb	w0, [x19, x1]
	add	x1, x1, 1
	cmp	w20, w1
	eor	w0, w0, w2, lsr 24
	ldr	w0, [x3, x0, lsl 2]
	eor	w2, w0, w2, lsl 8
	bhi	.L147
.L146:
	cmp	w23, w2
	bne	.L162
	str	x19, [x22, #:lo12:.LANCHOR1]
	mov	w0, w21
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 64
	ret
.L162:
	adrp	x0, .LC6
	mov	w1, w23
	add	x0, x0, :lo12:.LC6
	bl	printk
.L149:
	adrp	x0, .LC8
	mov	w21, -1
	add	x0, x0, :lo12:.LC8
	bl	printk
	b	.L136
.L161:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printk
	mov	w21, -1
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printk
	b	.L136
.L160:
	adrp	x1, .LANCHOR0
	mov	w0, 32
	mov	w2, w0
	str	w0, [x1, #:lo12:.LANCHOR0]
	b	.L139
	.size	rkf_wf_input, .-rkf_wf_input
	.align	2
	.p2align 3,,7
	.global	rkf_wf_get_version
	.type	rkf_wf_get_version, %function
rkf_wf_get_version:
	adrp	x0, .LANCHOR1
	ldr	x1, [x0, #:lo12:.LANCHOR1]
	add	x0, x1, 84
	cmp	x1, 0
	csel	x0, x0, xzr, ne
	ret
	.size	rkf_wf_get_version, .-rkf_wf_get_version
	.align	2
	.p2align 3,,7
	.global	rkf_wf_get_wf_bit
	.type	rkf_wf_get_wf_bit, %function
rkf_wf_get_wf_bit:
	adrp	x0, .LANCHOR1
	ldr	x0, [x0, #:lo12:.LANCHOR1]
	cbz	x0, .L168
	adrp	x0, .LANCHOR0
	ldr	w0, [x0, #:lo12:.LANCHOR0]
	ret
	.p2align 3
.L168:
	mov	w0, 0
	ret
	.size	rkf_wf_get_wf_bit, .-rkf_wf_get_wf_bit
	.align	2
	.p2align 3,,7
	.global	rkf_wf_get_lut
	.type	rkf_wf_get_lut, %function
rkf_wf_get_lut:
	adrp	x6, .LANCHOR1
	ldr	x6, [x6, #:lo12:.LANCHOR1]
	cbz	x6, .L225
	cbz	x0, .L226
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	w20, w2
	stp	x21, x22, [sp, 32]
	adrp	x22, .LANCHOR0
	add	x2, x22, :lo12:.LANCHOR0
	stp	x25, x26, [sp, 64]
	stp	x23, x24, [sp, 48]
	mov	w19, w1
	stp	x27, x28, [sp, 80]
	mov	x25, x0
	mov	w0, 26215
	str	w3, [x2, 4]
	ldr	w1, [x2, 8]
	movk	w0, 0x6666, lsl 16
	mov	w26, w5
	mov	w23, w4
	smull	x21, w20, w0
	smull	x0, w1, w0
	asr	x21, x21, 33
	sub	w21, w21, w20, asr 31
	asr	x0, x0, 33
	sub	w0, w0, w1, asr 31
	cmp	w21, w0
	beq	.L272
	cmp	w19, 10
	beq	.L224
.L223:
	ldr	x0, [x25, 8]
	cbz	x0, .L173
	bl	kfree
	str	xzr, [x25, 8]
.L173:
	mov	w2, w20
	mov	w1, w19
	mov	x0, x25
	bl	parse_wf_data
	mov	w24, w0
	tbnz	w0, #31, .L214
	cbnz	w19, .L175
	ldr	x4, [x25, 16]
	cbz	w0, .L176
	sub	w8, w0, #1
	mov	w6, 512
	add	x8, x8, 1
	mov	x7, 0
	lsl	x8, x8, 6
.L180:
	ldr	x3, [x25, 8]
	lsl	w5, w7, 4
	add	x3, x3, x7
	.p2align 2
.L177:
	mov	w2, w5
	mov	w1, 0
	.p2align 2
.L178:
	ldr	w0, [x3]
	lsr	w0, w0, w1
	and	w0, w0, 3
	strb	w0, [x4, w2, uxtw]
	add	w1, w1, 2
	add	w2, w2, 1
	cmp	w1, 32
	bne	.L178
	add	w5, w5, 32
	add	x3, x3, 4
	cmp	w6, w5
	bne	.L177
	add	x7, x7, 64
	add	w6, w6, 1024
	cmp	x8, x7
	bne	.L180
.L176:
	cbz	w23, .L182
.L193:
	sub	w0, w19, #5
	cmp	w0, 1
	bls	.L273
	cmp	w19, 15
	beq	.L274
.L182:
	ldr	x0, [x25, 8]
	cbz	x0, .L202
	bl	kfree
	str	xzr, [x25, 8]
.L202:
	adds	w0, w24, 15
	add	w2, w24, 30
	csel	w2, w2, w0, mi
	mov	w1, 32960
	asr	w2, w2, 4
	movk	w1, 0x60, lsl 16
	lsl	w2, w2, 10
	sxtw	x28, w2
	mov	x0, x28
	bl	__kmalloc
	str	x0, [x25, 8]
	mov	x23, x0
	cbz	x0, .L275
	add	x1, x22, :lo12:.LANCHOR0
	ldr	x26, [x25, 16]
	ldr	w1, [x1, 4]
	cmp	w1, 16
	cset	w27, ne
	cbz	x26, .L276
	mov	x2, x28
	mov	w1, 0
	bl	memset
	cbz	w24, .L205
	mov	w12, 32
	mov	w7, 1
	lsl	w12, w12, w27
	mov	w13, 0
	lsl	w7, w7, w27
.L210:
	lsl	w0, w13, 9
	lsl	w11, w13, 10
	add	w10, w0, 31
	cmp	w0, 0
	csel	w10, w10, w0, lt
	sxtw	x11, w11
	asr	w10, w10, 5
	mov	w8, 0
	sxtw	x10, w10
	mov	w9, 0
	.p2align 2
.L208:
	asr	w0, w8, 5
	add	x5, x11, x9, sxtw
	add	x0, x10, x0, sxtw
	add	x5, x26, x5
	add	x6, x23, x0, lsl 2
	mov	w1, 0
	mov	w3, 0
	ldr	w2, [x23, x0, lsl 2]
	.p2align 2
.L207:
	ldrb	w0, [x5, w3, sxtw]
	and	w4, w1, 30
	add	w1, w1, 2
	add	w3, w3, w7
	and	w0, w0, 3
	cmp	w1, 32
	lsl	w0, w0, w4
	orr	w2, w2, w0
	str	w2, [x6]
	bne	.L207
	add	w8, w8, 32
	add	w9, w9, w12
	cmp	w8, 512
	bne	.L208
	add	w13, w13, 1
	cmp	w24, w13
	bne	.L210
.L205:
	add	x3, x22, :lo12:.LANCHOR0
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	ldr	w1, [x25]
	ldr	w2, [x3, 8]
	and	w1, w1, 65280
	orr	w24, w1, w24
	str	w19, [x3, 12]
	str	w24, [x25]
	smull	x0, w2, w0
	asr	x0, x0, 33
	sub	w0, w0, w2, asr 31
	cmp	w21, w0
	beq	.L212
.L224:
	ldr	x0, [x25, 8]
	cbz	x0, .L213
	bl	kfree
	str	xzr, [x25, 8]
.L213:
	bl	epd_overlay_lut
	mov	w1, w0
	mov	w21, w0
	mov	w2, w20
	mov	x0, x25
	bl	parse_wf_data
	mov	w19, w0
	tbnz	w0, #31, .L214
	ldr	x1, [x25, 24]
	mov	w2, w0
	add	x0, x25, 8
	bl	rkf_lut_wf_table.isra.1
	cmp	w21, 1
	beq	.L277
.L216:
	ldrb	w1, [x25]
	add	x22, x22, :lo12:.LANCHOR0
	mov	w0, 0
	orr	w19, w1, w19, lsl 8
	str	w20, [x22, 8]
	str	w19, [x25]
.L169:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	ret
.L175:
	ldr	x1, [x25, 16]
	mov	w2, w0
	add	x0, x25, 8
	bl	rkf_lut_wf_table.isra.1
	cbz	w23, .L182
	cmp	w19, 7
	ccmp	w19, 1, 4, ne
	bne	.L183
	ldr	x23, [x25, 16]
	mov	w1, 0
	mov	x0, x23
.L185:
	strb	wzr, [x0, 32]
	cmp	w24, w1
	strb	wzr, [x0, 62]
	add	w1, w1, 1
	strb	wzr, [x0, 96]
	strb	wzr, [x0, 126]
	strb	wzr, [x0, 928]
	strb	wzr, [x0, 958]
	strb	wzr, [x0, 992]
	strb	wzr, [x0, 1022]
	strb	wzr, [x0]
	strb	wzr, [x0, 990]
	bgt	.L184
	strb	wzr, [x0, 30]
	strb	wzr, [x0, 960]
.L184:
	add	x0, x0, 1024
	cmp	w1, 72
	bne	.L185
	mov	w0, 0
	cbz	w24, .L190
.L242:
	lsl	w2, w0, 10
	add	w0, w0, 1
	add	x1, x23, x2, sxtw
	cmp	w24, w0
	ldrb	w3, [x1, 960]
	strb	w3, [x23, w2, sxtw]
	ldrb	w2, [x1, 30]
	strb	w2, [x1, 990]
	bne	.L242
.L190:
	mov	x0, x23
	bl	epd_gray2_last_repair
	cbnz	w0, .L182
	add	x4, x23, 81920
	add	x0, x23, 928
	add	x4, x4, 928
	mov	w3, 1
	mov	w2, 2
	mov	x1, 10240
.L191:
	strb	w3, [x0]
	strb	w2, [x0, 30]
	add	x0, x0, x1
	cmp	x4, x0
	bne	.L191
	add	x0, x23, 992
	add	x23, x23, 81920
	add	x23, x23, 992
	mov	w2, 2
	mov	w1, 1
.L192:
	strb	w2, [x0, 30]
	strb	w1, [x0]
	add	x0, x0, 20480
	cmp	x23, x0
	bne	.L192
	b	.L182
.L272:
	ldr	w0, [x2, 12]
	cmp	w0, w19
	beq	.L212
	cmp	w19, 10
	bne	.L223
.L212:
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	ret
.L274:
	ldr	x3, [x25, 16]
	cbz	w24, .L182
	mov	w2, 0
.L201:
	lsl	w0, w2, 10
	add	w2, w2, 1
	add	x0, x3, x0, sxtw
	cmp	w24, w2
	ldrb	w1, [x0, 957]
	strb	w1, [x0, 958]
	strb	w1, [x0, 990]
	strb	w1, [x0, 1022]
	strb	w1, [x0, 991]
	strb	w1, [x0, 1023]
	bne	.L201
	b	.L182
.L183:
	sub	w0, w19, #13
	cmp	w0, 1
	bhi	.L193
	mov	w1, 0
	ldr	x3, [x25, 16]
	cbz	w24, .L197
.L243:
	lsl	w0, w1, 10
	add	w1, w1, 1
	add	x0, x3, x0, sxtw
	cbz	w26, .L195
	ldrb	w2, [x0, 990]
	strb	w2, [x0, 989]
	strb	wzr, [x0, 990]
	strb	w2, [x0, 1021]
	strb	w2, [x0, 957]
.L195:
	ldrb	w2, [x0, 30]
	cmp	w24, w1
	strb	wzr, [x0, 958]
	strb	wzr, [x0, 1022]
	strb	w2, [x0, 31]
	strb	w2, [x0, 29]
	strb	w2, [x0, 61]
	bne	.L243
.L197:
	sub	w1, w24, #4
	sub	w0, w24, #3
	lsl	w1, w1, 10
	mov	w2, 1
	add	x1, x3, x1, sxtw
	lsl	w0, w0, 10
	add	x0, x3, x0, sxtw
	strb	w2, [x1, 991]
	strb	w2, [x1, 959]
	strb	w2, [x1, 1023]
	sub	w1, w24, #2
	lsl	w1, w1, 10
	mov	w2, 2
	add	x1, x3, x1, sxtw
	strb	w2, [x0, 991]
	strb	w2, [x0, 959]
	strb	w2, [x0, 1023]
	strb	w2, [x1, 991]
	strb	w2, [x1, 959]
	strb	w2, [x1, 1023]
	b	.L182
	.p2align 3
.L277:
	mov	w7, 0
	ldr	x21, [x25, 24]
	cbz	w19, .L222
.L241:
	lsl	w1, w7, 10
	mov	w3, 0
	add	x1, x21, x1, sxtw
	add	x2, x1, 29
	.p2align 2
.L220:
	ldrb	w5, [x2, 1]
	asr	w0, w3, 3
	strb	w5, [x2, 2]
	add	w4, w0, 960
	strb	w5, [x2], 64
	add	w5, w0, 928
	add	w0, w0, 992
	add	w3, w3, 16
	ldrb	w6, [x1, w4, sxtw]
	cmp	w3, 240
	strb	w6, [x1, w5, sxtw]
	ldrb	w4, [x1, w4, sxtw]
	strb	w4, [x1, w0, sxtw]
	bne	.L220
	add	w7, w7, 1
	cmp	w19, w7
	bne	.L241
.L222:
	mov	x0, x21
	bl	epd_overlay_gray2_repair
	cbnz	w0, .L216
	sub	w1, w19, #6
	sub	w4, w19, #5
	lsl	w1, w1, 10
	lsl	w4, w4, 10
	add	x1, x21, x1, sxtw
	sub	w3, w19, #4
	add	x4, x21, x4, sxtw
	lsl	w3, w3, 10
	sub	w2, w19, #3
	add	x3, x21, x3, sxtw
	lsl	w2, w2, 10
	sub	w0, w19, #2
	mov	w5, 1
	add	x2, x21, x2, sxtw
	strb	w5, [x1, 991]
	lsl	w0, w0, 10
	strb	w5, [x1, 959]
	add	x0, x21, x0, sxtw
	strb	w5, [x1, 1023]
	mov	w1, 2
	strb	w1, [x4, 991]
	strb	w1, [x4, 959]
	strb	w1, [x4, 1023]
	strb	w5, [x3, 991]
	strb	w5, [x3, 959]
	strb	w5, [x3, 1023]
	strb	w1, [x2, 991]
	strb	w1, [x2, 959]
	strb	w1, [x2, 1023]
	strb	w1, [x0, 991]
	strb	w1, [x0, 959]
	strb	w1, [x0, 1023]
	b	.L216
.L226:
	mov	w0, -22
	ret
.L276:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	printk
	b	.L205
.L275:
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	printk
	mov	w0, -12
	b	.L169
.L273:
	ldr	x4, [x25, 16]
	cbz	w24, .L182
	mov	w3, 0
.L200:
	lsl	w2, w3, 10
	add	x2, x4, x2, sxtw
	add	x0, x2, 29
	add	x2, x2, 989
.L199:
	ldrb	w1, [x0, 1]
	strb	w1, [x0, 2]
	strb	w1, [x0], 64
	cmp	x2, x0
	bne	.L199
	add	w3, w3, 1
	cmp	w24, w3
	bne	.L200
	b	.L182
.L225:
	mov	w0, -19
	ret
.L214:
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	printk
	mov	w0, -5
	b	.L169
	.size	rkf_wf_get_lut, .-rkf_wf_get_lut
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	maxpic, %object
	.size	maxpic, 4
maxpic:
	.word	16
	.type	need_pic, %object
	.size	need_pic, 4
need_pic:
	.word	16
	.type	sftemp.17189, %object
	.size	sftemp.17189, 4
sftemp.17189:
	.word	-1
	.type	stype.17188, %object
	.size	stype.17188, 4
stype.17188:
	.word	16
	.bss
	.align	3
	.set	.LANCHOR1,. + 0
	.type	global_waveform, %object
	.size	global_waveform, 8
global_waveform:
	.zero	8
	.type	crc32_table, %object
	.size	crc32_table, 1024
crc32_table:
	.zero	1024
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"rkf:v1.0"
	.zero	7
.LC1:
	.string	"rkf:v2.0"
	.zero	7
.LC2:
	.string	"rkf: input waveform version: %s, gray level: %d\n"
	.zero	7
.LC3:
	.string	"rkf waveform"
	.zero	3
.LC4:
	.string	"rkf: check format failed\n"
	.zero	6
.LC5:
	.string	"rkf: failed to check RKF file format\n"
	.zero	2
.LC6:
	.string	"[EINK]: waveform crc err readcrc = %x crccheck = %x\n"
	.zero	3
.LC7:
	.string	"rkf: failed to check RKF file version\n"
	.zero	1
.LC8:
	.string	"rkf: failed to check crc RKF waveform\n"
	.zero	1
.LC9:
	.string	"rkf waveform get frame number failed\n"
	.zero	2
.LC10:
	.string	"kzalloc output->data failed\n"
	.zero	3
.LC11:
	.string	"wf_table or lut_data is NULL\n"
	.ident	"GCC: (Linaro GCC 6.3-2017.05) 6.3.1 20170404"
	.section	.note.GNU-stack,"",@progbits

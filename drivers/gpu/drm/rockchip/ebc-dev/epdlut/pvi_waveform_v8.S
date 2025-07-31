// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.arch armv8-a
	.file	"pvi_waveform.c"
	.text
	.align	2
	.p2align 3,,7
	.type	get_wf_frm_num, %function
get_wf_frm_num:
	stp	x29, x30, [sp, -48]!
	lsl	w0, w0, 2
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	adrp	x20, .LANCHOR0
	str	x21, [sp, 32]
	ldr	x17, [x20, #:lo12:.LANCHOR0]
	ldrb	w2, [x17, 32]
	add	x0, x2, x0, sxtw
	add	x3, x17, x0
	ldrb	w2, [x17, x0]
	ldrb	w6, [x3, 1]
	ldrb	w5, [x3, 3]
	ldrb	w3, [x3, 2]
	add	w2, w2, w6
	add	w2, w2, w3
	cmp	w5, w2, uxtb
	bne	.L42
	ldr	w2, [x17, x0]
	lsl	w0, w1, 2
	and	x1, x2, 16777215
	add	x0, x1, x0, sxtw
	add	x2, x17, x0
	ldrb	w1, [x17, x0]
	ldrb	w5, [x2, 1]
	ldrb	w3, [x2, 3]
	ldrb	w2, [x2, 2]
	add	w1, w1, w5
	add	w1, w1, w2
	cmp	w3, w1, uxtb
	bne	.L43
	add	x4, x20, :lo12:.LANCHOR0
	ldr	w0, [x17, x0]
	and	x0, x0, 16777215
	ldr	x7, [x4, 8]
	add	x17, x17, x0
	cbz	x7, .L44
	adrp	x21, .LANCHOR2
	mov	w12, 0
	add	x0, x21, :lo12:.LANCHOR2
	ldr	w11, [x21, #:lo12:.LANCHOR2]
	cmp	w11, 16
	beq	.L45
.L6:
	add	w8, w12, 5
	mov	w9, 0
	mov	w1, 0
	mov	w6, 1
	mov	w16, 0
	mov	w19, 0
	.p2align 2
.L7:
	ldrb	w10, [x17, w16, uxtw]
	cmp	w10, 255
	beq	.L8
	cmp	w10, 252
	beq	.L46
.L9:
	lsl	w0, w19, 10
	lsl	w5, w1, w8
	add	w2, w5, w0
	lsl	w5, w9, w12
	add	w0, w0, w5
	add	w5, w2, w5
	add	w4, w1, 1
	add	w3, w1, 2
	add	w2, w1, 3
	and	w13, w10, 3
	strb	w13, [x7, w5, uxtw]
	lsl	w4, w4, w8
	lsl	w3, w3, w8
	add	w4, w4, w0
	add	w3, w3, w0
	lsl	w2, w2, w8
	add	w0, w2, w0
	cbz	w6, .L10
	ubfx	x14, x10, 2, 2
	strb	w14, [x7, w4, uxtw]
	ubfx	x15, x10, 4, 2
	strb	w15, [x7, w3, uxtw]
	lsr	w10, w10, 6
	strb	w10, [x7, w0, uxtw]
	add	w1, w1, 4
	add	w0, w16, 1
	cmp	w1, w11
	bcc	.L11
	add	w9, w9, 1
	mov	w1, 0
	cmp	w11, w9
	bhi	.L11
	add	w19, w19, 1
	mov	w9, 0
.L11:
	ldrb	w6, [x17, w0, uxtw]
	cbz	w6, .L12
	.p2align 2
.L14:
	lsl	w0, w19, 10
	lsl	w5, w1, w8
	add	w4, w1, 1
	add	w2, w5, w0
	add	w3, w1, 2
	lsl	w5, w9, w12
	add	w0, w0, w5
	add	w5, w2, w5
	lsl	w4, w4, w8
	add	w2, w1, 3
	add	w4, w4, w0
	lsl	w3, w3, w8
	add	w3, w3, w0
	strb	w13, [x7, w5, uxtw]
	lsl	w2, w2, w8
	add	w0, w2, w0
	strb	w14, [x7, w4, uxtw]
	add	w1, w1, 4
	strb	w15, [x7, w3, uxtw]
	sub	w6, w6, #1
	strb	w10, [x7, w0, uxtw]
	cmp	w11, w1
	bhi	.L13
	add	w9, w9, 1
	mov	w1, 0
	cmp	w11, w9
	bhi	.L13
	add	w19, w19, 1
	mov	w9, 0
.L13:
	ands	w6, w6, 255
	bne	.L14
.L12:
	add	w16, w16, 2
	mov	w6, 1
.L15:
	cmp	w19, 254
	bls	.L7
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printk
.L8:
	ldr	w0, [x21, #:lo12:.LANCHOR2]
	add	x21, x21, :lo12:.LANCHOR2
	cmp	w0, 32
	beq	.L16
.L17:
	mov	w0, w19
.L1:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	ret
	.p2align 3
.L10:
	ubfx	x2, x10, 2, 2
	strb	w2, [x7, w4, uxtw]
	ubfx	x2, x10, 4, 2
	strb	w2, [x7, w3, uxtw]
	lsr	w10, w10, 6
	strb	w10, [x7, w0, uxtw]
	add	w1, w1, 4
	add	w16, w16, 1
	cmp	w1, w11
	bcc	.L15
	add	w9, w9, 1
	mov	w1, 0
	cmp	w11, w9
	bhi	.L15
	add	w19, w19, 1
	mov	w9, 0
	mov	w1, w6
	b	.L15
	.p2align 3
.L46:
	add	w16, w16, 1
	eor	w6, w6, 1
	ldrb	w10, [x17, w16, uxtw]
	b	.L9
.L16:
	ldr	w0, [x21, 4]
	cmp	w0, 16
	bne	.L17
	cbz	w19, .L17
	add	x20, x20, :lo12:.LANCHOR0
	mov	w8, 0
	ldr	x1, [x20, 8]
.L22:
	lsl	w7, w8, 10
	mov	w6, 0
	mov	w5, w7
	.p2align 2
.L20:
	lsr	w4, w6, 1
	mov	w0, 0
	add	w4, w7, w4, lsl 5
	.p2align 2
.L19:
	add	w3, w0, w5
	add	w2, w4, w0, lsr 1
	add	w0, w0, 2
	cmp	w0, 32
	ldrb	w3, [x1, w3, uxtw]
	strb	w3, [x1, w2, uxtw]
	bne	.L19
	add	w6, w6, 2
	add	w5, w5, 64
	cmp	w6, 32
	bne	.L20
	add	w8, w8, 1
	and	w8, w8, 255
	cmp	w8, w19
	bcc	.L22
	b	.L17
.L45:
	ldr	w0, [x0, 4]
	cmp	w0, 32
	cset	w12, eq
	b	.L6
.L42:
	adrp	x1, .LANCHOR1
	adrp	x0, .LC0
	mov	w2, 273
	add	x1, x1, :lo12:.LANCHOR1
	add	x0, x0, :lo12:.LC0
	bl	printk
	mov	w0, -22
	b	.L1
.L44:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printk
	mov	w0, -22
	b	.L1
.L43:
	adrp	x1, .LANCHOR1
	adrp	x0, .LC0
	mov	w2, 280
	add	x1, x1, :lo12:.LANCHOR1
	add	x0, x0, :lo12:.LC0
	bl	printk
	mov	w0, -22
	b	.L1
	.size	get_wf_frm_num, .-get_wf_frm_num
	.align	2
	.p2align 3,,7
	.type	get_wf_mode_index, %function
get_wf_mode_index:
	cmp	w0, 15
	bhi	.L93
	mov	x1, 3
	cmp	w0, 10
	beq	.L50
	mov	x1, 6
	cmp	w0, 12
	beq	.L50
	mov	x1, 5
	cmp	w0, 11
	beq	.L50
	mov	x1, 4
	cmp	w0, 13
	beq	.L50
	mov	x1, 3
	cmp	w0, 14
	beq	.L50
	uxtw	x1, w0
	cmp	w0, 15
	mov	x0, 5
	csel	x1, x1, x0, ne
	.p2align 2
.L50:
	adrp	x0, .LANCHOR0
	ldr	x2, [x0, #:lo12:.LANCHOR0]
	ldrb	w2, [x2, 16]
	cmp	w2, 32
	beq	.L52
	bls	.L94
	cmp	w2, 72
	beq	.L59
	bls	.L95
	cmp	w2, 84
	beq	.L62
	cmp	w2, 114
	bne	.L51
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 79
	ldrb	w0, [x0, x1]
	ret
	.p2align 3
.L94:
	cmp	w2, 22
	beq	.L54
	bhi	.L55
	cmp	w2, 9
	beq	.L56
	cmp	w2, 18
	bne	.L51
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 25
	ldrb	w0, [x0, x1]
	ret
	.p2align 3
.L56:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 16
	ldrb	w0, [x0, x1]
	ret
	.p2align 3
.L62:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 70
	ldrb	w0, [x0, x1]
	ret
	.p2align 3
.L95:
	cmp	w2, 35
	bne	.L96
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 52
	ldrb	w0, [x0, x1]
	ret
	.p2align 3
.L55:
	cmp	w2, 24
	beq	.L52
	cmp	w2, 25
	bne	.L51
.L58:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 43
	ldrb	w0, [x0, x1]
	ret
	.p2align 3
.L96:
	cmp	w2, 67
	beq	.L58
.L51:
	add	x3, x0, :lo12:.LANCHOR0
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x3, x3, 16
	add	x0, x0, 88
	ldrb	w4, [x3, 9]
	cmp	w4, w2
	csel	x0, x0, x3, ne
	ldrb	w0, [x0, x1]
	ret
	.p2align 3
.L59:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 61
	ldrb	w0, [x0, x1]
	ret
	.p2align 3
.L54:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 34
	ldrb	w0, [x0, x1]
	ret
	.p2align 3
.L52:
	adrp	x0, .LANCHOR1
	add	x0, x0, :lo12:.LANCHOR1
	add	x0, x0, 88
	ldrb	w0, [x0, x1]
	ret
.L93:
	stp	x29, x30, [sp, -16]!
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x29, sp, 0
	bl	printk
	mov	w0, 255
	ldp	x29, x30, [sp], 16
	ret
	.size	get_wf_mode_index, .-get_wf_mode_index
	.align	2
	.p2align 3,,7
	.global	pvi_wf_add_custom_mode_table
	.type	pvi_wf_add_custom_mode_table, %function
pvi_wf_add_custom_mode_table:
	cmp	w1, 11
	bne	.L101
	adrp	x3, .LANCHOR0
	add	x3, x3, :lo12:.LANCHOR0
	add	x3, x3, 16
	mov	x1, 0
	.p2align 2
.L99:
	add	x2, x0, x1
	ldrb	w2, [x2, 2]
	strb	w2, [x1, x3]
	add	x1, x1, 1
	cmp	x1, 9
	bne	.L99
	ldrb	w1, [x0]
	strb	w1, [x3, 9]
	ldrb	w1, [x0, 1]
	cmp	w1, 4
	beq	.L104
	mov	w0, 0
	cmp	w1, 5
	beq	.L105
	ret
	.p2align 3
.L105:
	mov	w1, 32
	str	w1, [x3, 12]
	ret
	.p2align 3
.L104:
	mov	w1, 16
	mov	w0, 0
	str	w1, [x3, 12]
	ret
	.p2align 3
.L101:
	mov	w0, -1
	ret
	.size	pvi_wf_add_custom_mode_table, .-pvi_wf_add_custom_mode_table
	.align	2
	.p2align 3,,7
	.global	pvi_wf_get_lut
	.type	pvi_wf_get_lut, %function
pvi_wf_get_lut:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	stp	x21, x22, [sp, 32]
	adrp	x22, .LANCHOR0
	stp	x19, x20, [sp, 16]
	ldr	x6, [x22, #:lo12:.LANCHOR0]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	cbz	x6, .L151
	cbz	x0, .L182
.L108:
	mov	x21, x0
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	mov	w20, w2
	adrp	x19, .LANCHOR2
	mov	w23, w1
	smull	x24, w2, w0
	mov	w25, w5
	mov	w26, w4
	lsr	x24, x24, 32
	sub	w24, w24, w2, asr 31
	add	x2, x19, :lo12:.LANCHOR2
	ldr	w1, [x2, 8]
	smull	x0, w1, w0
	lsr	x0, x0, 32
	sub	w0, w0, w1, asr 31
	cmp	w24, w0
	beq	.L183
	str	w3, [x2, 4]
	cmp	w23, 10
	beq	.L148
.L147:
	add	x0, x22, :lo12:.LANCHOR0
	ldrb	w3, [x6, 38]
	ldr	x1, [x21, 16]
	str	x1, [x0, 8]
	cbz	w3, .L111
	ldrb	w0, [x6, 48]
	cmp	w20, w0
	ble	.L153
	add	x0, x6, 49
	mov	w27, 0
	b	.L113
	.p2align 3
.L114:
	ldrb	w2, [x0], 1
	cmp	w20, w2
	ble	.L149
.L113:
	add	w27, w27, 1
	cmp	w3, w27
	bne	.L114
.L111:
	sub	w27, w3, #1
.L149:
	mov	w0, w23
	bl	get_wf_mode_index
	mov	w1, w27
	and	w0, w0, 255
	bl	get_wf_frm_num
	tbnz	w0, #31, .L141
	cbz	w26, .L117
	cmp	w23, 7
	ccmp	w23, 1, 4, ne
	beq	.L184
	sub	w1, w23, #13
	cmp	w1, 1
	bls	.L185
	sub	w1, w23, #5
	cmp	w1, 1
	bls	.L186
	cmp	w23, 15
	beq	.L187
	.p2align 2
.L117:
	add	x3, x19, :lo12:.LANCHOR2
	ldr	w2, [x21]
	mov	w1, 21846
	and	w2, w2, 65280
	movk	w1, 0x5555, lsl 16
	str	w23, [x3, 12]
	orr	w0, w2, w0
	ldr	w3, [x3, 8]
	add	x2, x22, :lo12:.LANCHOR0
	str	w0, [x21]
	str	w25, [x2, 32]
	smull	x0, w3, w1
	lsr	x0, x0, 32
	sub	w0, w0, w3, asr 31
	cmp	w24, w0
	beq	.L136
.L148:
	ldr	x1, [x21, 24]
	add	x0, x22, :lo12:.LANCHOR0
	str	x1, [x0, 8]
	bl	epd_overlay_lut
	mov	w23, w0
	ldr	x0, [x22, #:lo12:.LANCHOR0]
	ldrb	w2, [x0, 38]
	cbz	w2, .L154
	ldrb	w1, [x0, 48]
	cmp	w20, w1
	ble	.L155
	add	x0, x0, 49
	mov	w24, 0
	b	.L139
	.p2align 3
.L140:
	ldrb	w3, [x0], 1
	cmp	w20, w3
	ble	.L150
.L139:
	add	w24, w24, 1
	cmp	w2, w24
	bne	.L140
	sub	w24, w24, #1
.L150:
	mov	w0, w23
	bl	get_wf_mode_index
	mov	w1, w24
	and	w0, w0, 255
	bl	get_wf_frm_num
	tbnz	w0, #31, .L141
	cmp	w23, 1
	beq	.L188
.L142:
	ldrb	w1, [x21]
	add	x19, x19, :lo12:.LANCHOR2
	mov	w2, 0
	orr	w1, w1, w0, lsl 8
	str	w1, [x21]
	str	w20, [x19, 8]
	mov	w0, w2
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 96
	ret
	.p2align 3
.L183:
	ldr	w0, [x2, 12]
	cmp	w0, w23
	beq	.L189
.L110:
	add	x0, x19, :lo12:.LANCHOR2
	cmp	w23, 10
	str	w3, [x0, 4]
	bne	.L147
.L136:
	mov	w2, 0
.L106:
	mov	w0, w2
	ldr	x27, [sp, 80]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	ret
	.p2align 3
.L182:
	ldr	x7, [x0, 16]
	cbnz	x7, .L108
	mov	w2, -22
	b	.L106
	.p2align 3
.L187:
	add	x1, x22, :lo12:.LANCHOR0
	ldr	x4, [x1, 8]
	cbz	w0, .L117
	mov	w3, 0
	.p2align 2
.L135:
	lsl	w1, w3, 10
	add	w3, w3, 1
	add	x1, x4, x1, sxtw
	cmp	w0, w3
	ldrb	w2, [x1, 957]
	strb	w2, [x1, 958]
	strb	w2, [x1, 990]
	strb	w2, [x1, 1022]
	strb	w2, [x1, 991]
	strb	w2, [x1, 1023]
	bne	.L135
	b	.L117
	.p2align 3
.L184:
	add	x1, x22, :lo12:.LANCHOR0
	mov	w2, 0
	ldr	x3, [x1, 8]
	mov	x1, x3
	.p2align 2
.L120:
	strb	wzr, [x1, 32]
	cmp	w0, w2
	strb	wzr, [x1, 62]
	add	w2, w2, 1
	strb	wzr, [x1, 96]
	strb	wzr, [x1, 126]
	strb	wzr, [x1, 928]
	strb	wzr, [x1, 958]
	strb	wzr, [x1, 992]
	strb	wzr, [x1, 1022]
	strb	wzr, [x1]
	strb	wzr, [x1, 990]
	bgt	.L119
	strb	wzr, [x1, 30]
	strb	wzr, [x1, 960]
.L119:
	add	x1, x1, 1024
	cmp	w2, 72
	bne	.L120
	mov	w1, 0
	cbz	w0, .L124
	.p2align 2
.L165:
	lsl	w4, w1, 10
	add	w1, w1, 1
	add	x2, x3, x4, sxtw
	cmp	w0, w1
	ldrb	w5, [x2, 960]
	strb	w5, [x3, w4, sxtw]
	ldrb	w4, [x2, 30]
	strb	w4, [x2, 990]
	bne	.L165
.L124:
	add	x6, x3, 81920
	add	x1, x3, 928
	add	x6, x6, 928
	mov	w5, 1
	mov	w4, 2
	mov	x2, 10240
	.p2align 2
.L122:
	strb	w5, [x1]
	strb	w4, [x1, 30]
	add	x1, x1, x2
	cmp	x6, x1
	bne	.L122
	add	x1, x3, 992
	add	x3, x3, 81920
	add	x3, x3, 992
	mov	w4, 2
	mov	w2, 1
.L125:
	strb	w4, [x1, 30]
	strb	w2, [x1]
	add	x1, x1, 20480
	cmp	x3, x1
	bne	.L125
	b	.L117
	.p2align 3
.L189:
	add	x0, x22, :lo12:.LANCHOR0
	ldr	w0, [x0, 32]
	cmp	w0, w5
	bne	.L110
	b	.L136
	.p2align 3
.L188:
	add	x22, x22, :lo12:.LANCHOR0
	mov	w9, 0
	ldr	x8, [x22, 8]
	cbz	w0, .L146
	.p2align 2
.L164:
	lsl	w2, w9, 10
	mov	w4, 0
	add	x2, x8, x2, sxtw
	add	x3, x2, 29
	.p2align 2
.L144:
	ldrb	w6, [x3, 1]
	asr	w1, w4, 3
	strb	w6, [x3, 2]
	add	w5, w1, 960
	strb	w6, [x3], 64
	add	w6, w1, 928
	add	w1, w1, 992
	add	w4, w4, 16
	ldrb	w7, [x2, w5, sxtw]
	cmp	w4, 240
	strb	w7, [x2, w6, sxtw]
	ldrb	w5, [x2, w5, sxtw]
	strb	w5, [x2, w1, sxtw]
	bne	.L144
	add	w9, w9, 1
	cmp	w0, w9
	bne	.L164
.L146:
	sub	w2, w0, #6
	sub	w5, w0, #5
	lsl	w2, w2, 10
	lsl	w5, w5, 10
	add	x2, x8, x2, sxtw
	sub	w4, w0, #4
	add	x5, x8, x5, sxtw
	lsl	w4, w4, 10
	sub	w3, w0, #3
	add	x4, x8, x4, sxtw
	lsl	w3, w3, 10
	sub	w1, w0, #2
	mov	w6, 1
	add	x3, x8, x3, sxtw
	strb	w6, [x2, 991]
	lsl	w1, w1, 10
	strb	w6, [x2, 959]
	add	x1, x8, x1, sxtw
	strb	w6, [x2, 1023]
	mov	w2, 2
	strb	w2, [x5, 991]
	strb	w2, [x5, 959]
	strb	w2, [x5, 1023]
	strb	w6, [x4, 991]
	strb	w6, [x4, 959]
	strb	w6, [x4, 1023]
	strb	w2, [x3, 991]
	strb	w2, [x3, 959]
	strb	w2, [x3, 1023]
	strb	w2, [x1, 991]
	strb	w2, [x1, 959]
	strb	w2, [x1, 1023]
	b	.L142
.L186:
	ldr	x5, [x21, 16]
	cbz	w0, .L117
	mov	w4, 0
	.p2align 2
.L134:
	lsl	w3, w4, 10
	add	x3, x5, x3, sxtw
	add	x1, x3, 29
	add	x3, x3, 989
	.p2align 2
.L133:
	ldrb	w2, [x1, 1]
	strb	w2, [x1, 2]
	strb	w2, [x1], 64
	cmp	x3, x1
	bne	.L133
	add	w4, w4, 1
	cmp	w0, w4
	bne	.L134
	b	.L117
.L185:
	add	x1, x22, :lo12:.LANCHOR0
	mov	w2, 0
	ldr	x4, [x1, 8]
	cbz	w0, .L131
	.p2align 2
.L166:
	lsl	w1, w2, 10
	add	w2, w2, 1
	add	x1, x4, x1, sxtw
	cbz	w25, .L129
	ldrb	w3, [x1, 990]
	strb	w3, [x1, 989]
	strb	wzr, [x1, 990]
	strb	w3, [x1, 1021]
	strb	w3, [x1, 957]
.L129:
	ldrb	w3, [x1, 30]
	cmp	w0, w2
	strb	wzr, [x1, 958]
	strb	wzr, [x1, 1022]
	strb	w3, [x1, 31]
	strb	w3, [x1, 29]
	strb	w3, [x1, 61]
	bne	.L166
.L131:
	sub	w3, w0, #4
	sub	w2, w0, #3
	lsl	w3, w3, 10
	lsl	w2, w2, 10
	add	x3, x4, x3, sxtw
	sub	w1, w0, #2
	add	x2, x4, x2, sxtw
	lsl	w1, w1, 10
	add	x1, x4, x1, sxtw
	mov	w4, 1
	strb	w4, [x3, 991]
	strb	w4, [x3, 959]
	strb	w4, [x3, 1023]
	mov	w3, 2
	strb	w3, [x2, 991]
	strb	w3, [x2, 959]
	strb	w3, [x2, 1023]
	strb	w3, [x1, 991]
	strb	w3, [x1, 959]
	strb	w3, [x1, 1023]
	b	.L117
.L151:
	mov	w2, -19
	b	.L106
.L154:
	mov	w24, 0
	sub	w24, w24, #1
	b	.L150
.L155:
	mov	w24, 0
	b	.L150
.L153:
	mov	w27, 0
	b	.L149
.L141:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printk
	mov	w2, -5
	b	.L106
	.size	pvi_wf_get_lut, .-pvi_wf_get_lut
	.align	2
	.p2align 3,,7
	.global	pvi_wf_get_original_lut
	.type	pvi_wf_get_original_lut, %function
pvi_wf_get_original_lut:
	adrp	x5, .LANCHOR0
	ldr	x4, [x5, #:lo12:.LANCHOR0]
	cbz	x4, .L199
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x20, x0
	cbz	x0, .L209
.L192:
	add	x7, x5, :lo12:.LANCHOR0
	adrp	x8, .LANCHOR2+4
	ldrb	w5, [x4, 38]
	ldr	x0, [x20, 16]
	str	w3, [x8, #:lo12:.LANCHOR2+4]
	str	x0, [x7, 8]
	cbz	w5, .L193
	ldrb	w0, [x4, 48]
	cmp	w2, w0
	ble	.L201
	add	x3, x4, 49
	mov	w19, 0
	b	.L195
	.p2align 3
.L196:
	ldrb	w4, [x3], 1
	cmp	w2, w4
	ble	.L198
.L195:
	add	w19, w19, 1
	cmp	w5, w19
	bne	.L196
.L193:
	sub	w19, w5, #1
.L198:
	mov	w0, w1
	bl	get_wf_mode_index
	mov	w1, w19
	and	w0, w0, 255
	bl	get_wf_frm_num
	tbnz	w0, #31, .L210
	ldr	w1, [x20]
	mov	w2, 0
	and	w1, w1, 65280
	orr	w1, w1, w0
	str	w1, [x20]
.L190:
	mov	w0, w2
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	.p2align 3
.L209:
	ldr	x0, [x0, 16]
	cbnz	x0, .L192
	mov	w2, -22
	b	.L190
	.p2align 3
.L201:
	mov	w19, 0
	b	.L198
.L199:
	mov	w2, -19
	mov	w0, w2
	ret
.L210:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printk
	mov	w2, -5
	b	.L190
	.size	pvi_wf_get_original_lut, .-pvi_wf_get_original_lut
	.align	2
	.p2align 3,,7
	.global	pvi_wf_input
	.type	pvi_wf_input, %function
pvi_wf_input:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	adrp	x20, .LANCHOR0
	ldr	x1, [x20, #:lo12:.LANCHOR0]
	cbnz	x1, .L221
	ldrb	w1, [x0, 16]
	mov	x19, x0
	cmp	w1, 32
	beq	.L214
	bls	.L250
	cmp	w1, 72
	beq	.L214
	bhi	.L218
	cmp	w1, 35
	beq	.L217
	cmp	w1, 67
	beq	.L214
.L213:
	add	x0, x20, :lo12:.LANCHOR0
	add	x0, x0, 16
	ldrb	w2, [x0, 9]
	cmp	w2, w1
	bne	.L220
	adrp	x3, .LANCHOR2
	ldr	w2, [x0, 12]
	str	w2, [x3, #:lo12:.LANCHOR2]
	b	.L219
	.p2align 3
.L250:
	cmp	w1, 22
	beq	.L214
	bhi	.L216
	cmp	w1, 9
	beq	.L217
	cmp	w1, 18
	bne	.L213
.L217:
	adrp	x0, .LANCHOR2
	ldr	w2, [x0, #:lo12:.LANCHOR2]
.L219:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printk
	str	x19, [x20, #:lo12:.LANCHOR0]
	mov	w0, 0
.L211:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	.p2align 3
.L218:
	cmp	w1, 84
	beq	.L217
	cmp	w1, 114
	bne	.L213
	.p2align 2
.L214:
	adrp	x3, .LANCHOR2
	mov	w0, 32
	mov	w2, w0
	str	w0, [x3, #:lo12:.LANCHOR2]
	b	.L219
	.p2align 3
.L221:
	mov	w0, -16
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	.p2align 3
.L216:
	sub	w0, w1, #24
	cmp	w0, 1
	bhi	.L213
	b	.L214
	.p2align 3
.L220:
	ldrb	w2, [x19, 22]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printk
	mov	w0, -8
	b	.L211
	.size	pvi_wf_input, .-pvi_wf_input
	.align	2
	.p2align 3,,7
	.global	pvi_wf_get_version
	.type	pvi_wf_get_version, %function
pvi_wf_get_version:
	adrp	x0, .LANCHOR0
	ldr	x3, [x0, #:lo12:.LANCHOR0]
	cbz	x3, .L254
	add	x0, x0, :lo12:.LANCHOR0
	mov	x1, 0
	add	x0, x0, 40
	.p2align 2
.L253:
	add	x2, x3, x1
	ldrb	w2, [x2, 65]
	strb	w2, [x1, x0]
	add	x1, x1, 1
	cmp	x1, 31
	bne	.L253
	strb	wzr, [x0, 31]
	ret
.L254:
	mov	x0, 0
	ret
	.size	pvi_wf_get_version, .-pvi_wf_get_version
	.align	2
	.p2align 3,,7
	.global	pvi_wf_get_wf_bit
	.type	pvi_wf_get_wf_bit, %function
pvi_wf_get_wf_bit:
	adrp	x0, .LANCHOR0
	ldr	x0, [x0, #:lo12:.LANCHOR0]
	cbz	x0, .L258
	adrp	x0, .LANCHOR2
	ldr	w0, [x0, #:lo12:.LANCHOR2]
	ret
	.p2align 3
.L258:
	mov	w0, 0
	ret
	.size	pvi_wf_get_wf_bit, .-pvi_wf_get_wf_bit
	.global	custom_mode_table
	.global	pvi_mode_table
	.section	.rodata
	.align	3
	.set	.LANCHOR1,. + 0
	.type	__func__.16954, %object
	.size	__func__.16954, 15
__func__.16954:
	.string	"get_wf_frm_num"
	.zero	1
	.type	pvi_mode_table, %object
	.size	pvi_mode_table, 81
pvi_mode_table:
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	0
	.byte	1
	.byte	7
	.byte	3
	.byte	3
	.byte	5
	.byte	6
	.byte	4
	.byte	5
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	6
	.byte	5
	.byte	0
	.byte	1
	.byte	7
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	4
	.byte	0
	.byte	1
	.byte	5
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	3
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	6
	.byte	4
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	11
	.byte	6
	.byte	10
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	4
	.data
	.align	2
	.set	.LANCHOR2,. + 0
	.type	maxpic, %object
	.size	maxpic, 4
maxpic:
	.word	16
	.type	need_pic, %object
	.size	need_pic, 4
need_pic:
	.word	16
	.type	sftemp.17049, %object
	.size	sftemp.17049, 4
sftemp.17049:
	.word	-1
	.type	stype.17048, %object
	.size	stype.17048, 4
stype.17048:
	.word	16
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	global_waveform, %object
	.size	global_waveform, 8
global_waveform:
	.zero	8
	.type	waveformdata, %object
	.size	waveformdata, 8
waveformdata:
	.zero	8
	.type	custom_mode_table, %object
	.size	custom_mode_table, 16
custom_mode_table:
	.zero	16
	.type	fix.17050, %object
	.size	fix.17050, 4
fix.17050:
	.zero	4
	.zero	4
	.type	spi_id_buffer.17086, %object
	.size	spi_id_buffer.17086, 32
spi_id_buffer.17086:
	.zero	32
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"pvi: %s %d check error\n"
.LC1:
	.string	"waveformdata is NULL\n"
	.zero	2
.LC2:
	.string	"pvi: decodec waveform error, framenum err\n"
	.zero	5
.LC3:
	.string	"pvi: unspport PVI waveform type"
.LC4:
	.string	"pvi waveform get frame number failed\n"
	.zero	2
.LC5:
	.string	"pvi : Unknow waveform version 0x%x, 0x%x, may be wrong waveform file\n"
	.zero	2
.LC6:
	.string	"pvi : input waveform version 0x%x, gray level: %d\n"
	.ident	"GCC: (Linaro GCC 6.3-2017.05) 6.3.1 20170404"
	.section	.note.GNU-stack,"",@progbits

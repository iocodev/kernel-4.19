	.arch armv8-a
	.file	"pvi_waveform.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.type	pvi_wf_get_version, %function
pvi_wf_get_version:
	.section	__patchable_function_entries,"aw",@progbits
	.align	3
	.8byte	.LPFE1
	.text
.LPFE1:
	nop
	nop
.LFB3590:
	.file 1 "drivers/gpu/drm/rockchip/ebc-linux/wflut/pvi_waveform.c"
	.loc 1 351 1 view -0
	.cfi_startproc
	.loc 1 352 2 view .LVU1
	.loc 1 352 14 is_stmt 0 view .LVU2
	adrp	x1, .LANCHOR0
	add	x1, x1, :lo12:.LANCHOR0
	.loc 1 351 1 view .LVU3
	hint	25 // paciasp
	.cfi_window_save
	.loc 1 352 14 view .LVU4
	ldr	x0, [x1, 32]
.LVL0:
	.loc 1 353 2 is_stmt 1 view .LVU5
	.loc 1 355 2 view .LVU6
	.loc 1 355 5 is_stmt 0 view .LVU7
	cbz	x0, .L1
	.loc 1 358 2 is_stmt 1 view .LVU8
	.loc 1 358 32 is_stmt 0 view .LVU9
	add	x0, x0, 65
.LVL1:
	.loc 1 358 2 view .LVU10
	ldp	x2, x3, [x0]
	stp	x2, x3, [x1]
	ldr	x2, [x0, 16]
	str	x2, [x1, 16]
	ldr	x0, [x0, 23]
	str	x0, [x1, 23]
	.loc 1 359 2 is_stmt 1 view .LVU11
	.loc 1 361 2 view .LVU12
	.loc 1 361 9 is_stmt 0 view .LVU13
	mov	x0, x1
	.loc 1 359 20 view .LVU14
	strb	wzr, [x1, 31]
.L1:
	.loc 1 362 1 view .LVU15
	hint	29 // autiasp
	.cfi_window_save
	ret
	.cfi_endproc
.LFE3590:
	.size	pvi_wf_get_version, .-pvi_wf_get_version
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"pvi: unspport PVI waveform type"
.LC1:
	.string	"pvi: %s %d check error\n"
.LC2:
	.string	"\0013pvi: decodec waveform error, framenum err\n"
.LC3:
	.string	"\0014fixed wf: %d -> %d\n"
.LC4:
	.string	"pvi waveform get frame number failed\n"
	.text
	.align	2
	.type	pvi_wf_get_lut, %function
pvi_wf_get_lut:
	.section	__patchable_function_entries
	.align	3
	.8byte	.LPFE2
	.text
.LPFE2:
	nop
	nop
.LVL2:
.LFB3588:
	.loc 1 258 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 259 2 view .LVU17
	.loc 1 260 2 view .LVU18
	.loc 1 261 2 view .LVU19
	.loc 1 262 2 view .LVU20
	.loc 1 263 2 view .LVU21
	.loc 1 265 2 view .LVU22
	.loc 1 258 1 is_stmt 0 view .LVU23
	hint	25 // paciasp
	.cfi_window_save
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.loc 1 265 6 view .LVU24
	adrp	x23, .LANCHOR0
	add	x23, x23, :lo12:.LANCHOR0
	.loc 1 258 1 view .LVU25
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	w21, w2
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	.loc 1 265 6 view .LVU26
	ldr	x2, [x23, 32]
.LVL3:
	.loc 1 265 5 view .LVU27
	cbz	x2, .L39
	mov	x22, x0
	mov	w19, w1
	.loc 1 268 2 is_stmt 1 view .LVU28
	.loc 1 268 5 is_stmt 0 view .LVU29
	cbnz	x0, .L9
	.loc 1 268 14 discriminator 1 view .LVU30
	ldr	x0, [x0, 8]
.LVL4:
	.loc 1 268 14 discriminator 1 view .LVU31
	cbz	x0, .L40
.L9:
	.loc 1 273 2 is_stmt 1 view .LVU32
	.loc 1 273 35 is_stmt 0 view .LVU33
	adrp	x20, .LANCHOR2
	.loc 1 273 19 view .LVU34
	mov	w1, 3
.LVL5:
	.loc 1 273 35 view .LVU35
	add	x24, x20, :lo12:.LANCHOR2
	.loc 1 273 19 view .LVU36
	sdiv	w4, w21, w1
	.loc 1 273 35 view .LVU37
	ldr	w0, [x20, #:lo12:.LANCHOR2]
	sdiv	w0, w0, w1
	.loc 1 273 5 view .LVU38
	cmp	w4, w0
	bne	.L10
	.loc 1 273 41 discriminator 1 view .LVU39
	ldr	w0, [x24, 4]
	cmp	w0, w19
	beq	.L41
.L10:
	.loc 1 276 2 is_stmt 1 view .LVU40
.LBB20:
.LBB21:
	.loc 1 162 6 is_stmt 0 view .LVU41
	ldrb	w1, [x2, 38]
.LBE21:
.LBE20:
	.loc 1 279 15 view .LVU42
	ldr	x0, [x22, 8]
	.loc 1 276 11 view .LVU43
	str	w3, [x24, 8]
	.loc 1 279 2 is_stmt 1 view .LVU44
	.loc 1 280 2 view .LVU45
.LVL6:
.LBB24:
.LBI20:
	.loc 1 160 12 view .LVU46
.LBB22:
	.loc 1 162 2 view .LVU47
	.loc 1 163 2 view .LVU48
	.loc 1 164 2 view .LVU49
	.loc 1 166 2 view .LVU50
	.loc 1 167 52 is_stmt 0 view .LVU51
	add	x3, x2, 48
.LVL7:
	.loc 1 167 52 view .LVU52
.LBE22:
.LBE24:
	.loc 1 279 15 view .LVU53
	str	x0, [x23, 40]
.LBB25:
.LBB23:
	.loc 1 166 2 view .LVU54
	mov	x0, 0
.LVL8:
.L11:
	.loc 1 166 2 view .LVU55
	mov	w25, w0
.LVL9:
	.loc 1 166 14 is_stmt 1 view .LVU56
	.loc 1 166 2 is_stmt 0 view .LVU57
	cmp	w1, w0
	bgt	.L13
	.loc 1 173 2 is_stmt 1 view .LVU58
	.loc 1 174 9 is_stmt 0 view .LVU59
	sub	w0, w0, #1
.LVL10:
	.loc 1 174 9 view .LVU60
	cmp	w1, w25
	csinv	w25, w0, wzr, eq
.LVL11:
	.loc 1 174 9 view .LVU61
	b	.L12
.LVL12:
.L13:
	.loc 1 167 3 is_stmt 1 view .LVU62
	.loc 1 167 52 is_stmt 0 view .LVU63
	ldrb	w4, [x3, x0]
	.loc 1 167 6 view .LVU64
	add	x0, x0, 1
.LVL13:
	.loc 1 167 6 view .LVU65
	cmp	w21, w4
	bgt	.L11
.LVL14:
.L12:
	.loc 1 176 2 is_stmt 1 view .LVU66
	.loc 1 176 2 is_stmt 0 view .LVU67
.LBE23:
.LBE25:
	.loc 1 281 2 is_stmt 1 view .LVU68
.LBB26:
.LBI26:
	.loc 1 142 11 view .LVU69
.LBB27:
	.loc 1 144 2 view .LVU70
	.loc 1 145 2 view .LVU71
	.loc 1 147 2 view .LVU72
	.loc 1 147 5 is_stmt 0 view .LVU73
	cmp	w19, 10
	bls	.L14
	.loc 1 148 3 is_stmt 1 view .LVU74
.LBB28:
	.loc 1 148 3 view .LVU75
	.loc 1 148 3 view .LVU76
	.loc 1 148 3 view .LVU77
	.loc 1 148 3 view .LVU78
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	_printk
.LVL15:
	.loc 1 148 3 is_stmt 0 view .LVU79
.LBE28:
	.loc 1 149 3 is_stmt 1 view .LVU80
	.loc 1 149 10 is_stmt 0 view .LVU81
	mov	w0, 255
.L15:
.LVL16:
	.loc 1 149 10 view .LVU82
.LBE27:
.LBE26:
	.loc 1 282 2 is_stmt 1 view .LVU83
.LBB34:
.LBI34:
	.loc 1 179 12 view .LVU84
.LBB35:
	.loc 1 181 2 view .LVU85
	.loc 1 181 17 is_stmt 0 view .LVU86
	ldr	x3, [x23, 32]
.LVL17:
	.loc 1 182 2 is_stmt 1 view .LVU87
	.loc 1 183 2 view .LVU88
	.loc 1 185 2 view .LVU89
	.loc 1 185 30 is_stmt 0 view .LVU90
	ldrb	w1, [x3, 32]
	add	x0, x1, x0, uxtw 2
.LVL18:
	.loc 1 185 10 view .LVU91
	add	x1, x3, x0
.LVL19:
	.loc 1 186 2 is_stmt 1 view .LVU92
	.loc 1 186 29 is_stmt 0 view .LVU93
	ldrb	w2, [x3, x0]
	.loc 1 186 42 view .LVU94
	ldrb	w5, [x1, 1]
	.loc 1 186 13 view .LVU95
	ldrb	w4, [x1, 3]
	.loc 1 186 55 view .LVU96
	ldrb	w1, [x1, 2]
.LVL20:
	.loc 1 186 33 view .LVU97
	add	w2, w2, w5
	.loc 1 186 46 view .LVU98
	add	w2, w2, w1
	.loc 1 186 5 view .LVU99
	cmp	w4, w2, uxtb
	beq	.L21
	.loc 1 187 3 is_stmt 1 view .LVU100
.LBB36:
	.loc 1 187 3 view .LVU101
	.loc 1 187 3 view .LVU102
	.loc 1 187 3 view .LVU103
	.loc 1 187 3 view .LVU104
	mov	w2, 187
.LVL21:
.L60:
	.loc 1 187 3 is_stmt 0 view .LVU105
.LBE36:
.LBB37:
	.loc 1 194 3 view .LVU106
	adrp	x1, .LANCHOR1
	add	x1, x1, :lo12:.LANCHOR1
	adrp	x0, .LC1
	add	x1, x1, 90
	add	x0, x0, :lo12:.LC1
	bl	_printk
.LVL22:
	.loc 1 194 3 view .LVU107
.LBE37:
	.loc 1 195 3 is_stmt 1 view .LVU108
	.loc 1 195 3 is_stmt 0 view .LVU109
.LBE35:
.LBE34:
	.loc 1 283 2 is_stmt 1 view .LVU110
.L22:
	.loc 1 284 3 view .LVU111
.LBB55:
	.loc 1 284 3 view .LVU112
	.loc 1 284 3 view .LVU113
	.loc 1 284 3 view .LVU114
	.loc 1 284 3 view .LVU115
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	_printk
.LVL23:
.LBE55:
	.loc 1 285 3 view .LVU116
	.loc 1 285 10 is_stmt 0 view .LVU117
	mov	w0, -5
.LVL24:
.L7:
	.loc 1 301 1 view .LVU118
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
.LVL25:
	.loc 1 301 1 view .LVU119
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	hint	29 // autiasp
	.cfi_window_save
	ret
.LVL26:
.L14:
	.cfi_restore_state
.LBB56:
.LBB33:
	.loc 1 150 9 is_stmt 1 view .LVU120
	ldrb	w2, [x2, 16]
	.loc 1 150 12 is_stmt 0 view .LVU121
	mov	w0, 3
	adrp	x3, .LANCHOR1
	csel	w0, w19, w0, ne
.LVL27:
	.loc 1 155 2 is_stmt 1 view .LVU122
.LBB29:
.LBI29:
	.loc 1 124 18 view .LVU123
.LBB30:
	.loc 1 126 2 view .LVU124
	.loc 1 127 2 view .LVU125
	add	x3, x3, :lo12:.LANCHOR1
	cmp	w2, 35
	beq	.L44
	bhi	.L18
	cmp	w2, 18
	beq	.L45
	bhi	.L19
	.loc 1 128 23 is_stmt 0 view .LVU126
	add	x1, x3, 80
	cmp	w2, 9
	csel	x3, x1, x3, ne
.L17:
.LVL28:
	.loc 1 139 2 is_stmt 1 view .LVU127
	.loc 1 139 2 is_stmt 0 view .LVU128
.LBE30:
.LBE29:
	.loc 1 157 2 is_stmt 1 view .LVU129
	.loc 1 157 18 is_stmt 0 view .LVU130
	ldrb	w0, [x3, w0, uxtw]
.LVL29:
	.loc 1 157 18 view .LVU131
	b	.L15
.LVL30:
.L19:
.LBB32:
.LBB31:
	.loc 1 127 2 view .LVU132
	cmp	w2, 22
	beq	.L47
	.loc 1 131 34 view .LVU133
	add	x1, x3, 30
	cmp	w2, 25
	add	x3, x3, 80
.L59:
	.loc 1 135 23 view .LVU134
	csel	x3, x3, x1, ne
	b	.L17
.L18:
	.loc 1 127 2 view .LVU135
	cmp	w2, 84
	beq	.L49
	bhi	.L20
	cmp	w2, 67
	beq	.L50
	.loc 1 133 23 view .LVU136
	add	x1, x3, 50
	cmp	w2, 72
	add	x3, x3, 80
	b	.L59
.L20:
	.loc 1 135 23 view .LVU137
	add	x1, x3, 70
	cmp	w2, 114
	add	x3, x3, 80
	b	.L59
.L44:
	.loc 1 132 23 view .LVU138
	add	x3, x3, 40
	b	.L17
.L45:
	.loc 1 127 2 view .LVU139
	add	x3, x3, 10
	b	.L17
.L47:
	.loc 1 130 23 view .LVU140
	add	x3, x3, 20
	b	.L17
.L49:
	.loc 1 134 23 view .LVU141
	add	x3, x3, 60
	b	.L17
.L50:
	.loc 1 131 34 view .LVU142
	add	x3, x3, 30
	b	.L17
.LVL31:
.L21:
	.loc 1 131 34 view .LVU143
.LBE31:
.LBE32:
.LBE33:
.LBE56:
.LBB57:
.LBB54:
	.loc 1 190 2 is_stmt 1 view .LVU144
	.loc 1 192 2 view .LVU145
	.loc 1 190 9 is_stmt 0 view .LVU146
	ldr	w1, [x3, x0]
	.loc 1 192 30 view .LVU147
	and	x0, x1, 16777215
.LVL32:
	.loc 1 192 43 view .LVU148
	lsl	w1, w25, 2
.LVL33:
	.loc 1 192 30 view .LVU149
	add	x1, x0, x1, sxtw
	.loc 1 192 10 view .LVU150
	add	x2, x3, x1
.LVL34:
	.loc 1 193 2 is_stmt 1 view .LVU151
	.loc 1 193 29 is_stmt 0 view .LVU152
	ldrb	w0, [x3, x1]
	.loc 1 193 42 view .LVU153
	ldrb	w5, [x2, 1]
	.loc 1 193 13 view .LVU154
	ldrb	w4, [x2, 3]
	.loc 1 193 55 view .LVU155
	ldrb	w2, [x2, 2]
.LVL35:
	.loc 1 193 33 view .LVU156
	add	w0, w0, w5
	.loc 1 193 46 view .LVU157
	add	w0, w0, w2
	.loc 1 193 5 view .LVU158
	cmp	w4, w0, uxtb
	beq	.L23
	.loc 1 194 3 is_stmt 1 view .LVU159
.LBB38:
	.loc 1 194 3 view .LVU160
	.loc 1 194 3 view .LVU161
	.loc 1 194 3 view .LVU162
	.loc 1 194 3 view .LVU163
	mov	w2, 194
	b	.L60
.L23:
.LBE38:
	.loc 1 197 2 view .LVU164
.LVL36:
	.loc 1 199 2 view .LVU165
	.loc 1 197 9 is_stmt 0 view .LVU166
	ldr	w0, [x3, x1]
.LBB39:
.LBB40:
	.loc 1 49 6 view .LVU167
	mov	w7, 0
.LBE40:
.LBE39:
	.loc 1 200 9 view .LVU168
	ldr	x26, [x23, 40]
	.loc 1 199 21 view .LVU169
	and	x0, x0, 16777215
	.loc 1 200 9 view .LVU170
	ldp	w28, w27, [x24, 8]
	.loc 1 199 10 view .LVU171
	add	x3, x3, x0
.LVL37:
	.loc 1 200 2 is_stmt 1 view .LVU172
.LBB52:
.LBI39:
	.loc 1 46 12 view .LVU173
.LBB50:
	.loc 1 48 2 view .LVU174
	.loc 1 49 2 view .LVU175
	.loc 1 50 2 view .LVU176
	.loc 1 51 2 view .LVU177
	.loc 1 52 2 view .LVU178
	.loc 1 53 2 view .LVU179
	.loc 1 55 2 view .LVU180
.LBB41:
	.loc 1 56 3 view .LVU181
	.loc 1 57 3 view .LVU182
	.loc 1 59 3 view .LVU183
.LBE41:
.LBE50:
.LBE52:
	.loc 1 200 9 is_stmt 0 view .LVU184
	mov	x1, x26
.LVL38:
.LBB53:
.LBB51:
	.loc 1 48 6 view .LVU185
	mov	w4, 0
	.loc 1 51 7 view .LVU186
	mov	w8, 1
	.loc 1 50 6 view .LVU187
	mov	w25, 0
.LVL39:
.L24:
.LBB43:
	.loc 1 64 3 is_stmt 1 view .LVU188
	.loc 1 64 9 is_stmt 0 view .LVU189
	ldrb	w5, [x3]
.LVL40:
	.loc 1 65 3 is_stmt 1 view .LVU190
	.loc 1 65 6 is_stmt 0 view .LVU191
	cmp	w5, 255
	beq	.L25
	.loc 1 67 10 is_stmt 1 view .LVU192
	.loc 1 67 13 is_stmt 0 view .LVU193
	cmp	w5, 252
	beq	.L26
	.loc 1 64 14 view .LVU194
	add	x3, x3, 1
.LVL41:
.L27:
	.loc 1 72 3 is_stmt 1 view .LVU195
	.loc 1 72 6 is_stmt 0 view .LVU196
	cbz	w8, .L53
	.loc 1 73 4 is_stmt 1 view .LVU197
.LVL42:
	.loc 1 73 13 is_stmt 0 view .LVU198
	ldrb	w2, [x3], 1
.LVL43:
	.loc 1 73 10 view .LVU199
	add	w2, w2, 1
.LVL44:
.L28:
	.loc 1 76 3 is_stmt 1 view .LVU200
	.loc 1 76 13 view .LVU201
	.loc 1 78 49 is_stmt 0 view .LVU202
	ubfx	x10, x5, 2, 2
	.loc 1 79 49 view .LVU203
	ubfx	x11, x5, 4, 2
	.loc 1 80 34 view .LVU204
	lsr	w12, w5, 6
	.loc 1 77 42 view .LVU205
	and	w5, w5, 3
.LVL45:
	.loc 1 76 9 view .LVU206
	mov	w9, 0
.LVL46:
.L30:
	.loc 1 77 4 is_stmt 1 view .LVU207
	.loc 1 77 24 is_stmt 0 view .LVU208
	add	w0, w7, w4, lsl 5
	.loc 1 80 15 view .LVU209
	add	w6, w4, 4
	.loc 1 77 34 view .LVU210
	strb	w5, [x1, x0]
	.loc 1 78 4 is_stmt 1 view .LVU211
.LVL47:
	.loc 1 77 15 is_stmt 0 view .LVU212
	add	w0, w4, 1
	.loc 1 78 24 view .LVU213
	add	w0, w7, w0, lsl 5
	.loc 1 78 34 view .LVU214
	strb	w10, [x1, x0]
	.loc 1 79 4 is_stmt 1 view .LVU215
.LVL48:
	.loc 1 78 15 is_stmt 0 view .LVU216
	add	w0, w4, 2
	.loc 1 79 15 view .LVU217
	add	w4, w4, 3
.LVL49:
	.loc 1 79 24 view .LVU218
	add	w0, w7, w0, lsl 5
	.loc 1 80 24 view .LVU219
	add	w4, w7, w4, lsl 5
.LVL50:
	.loc 1 79 34 view .LVU220
	strb	w11, [x1, x0]
	.loc 1 80 4 is_stmt 1 view .LVU221
.LVL51:
	.loc 1 80 34 is_stmt 0 view .LVU222
	strb	w12, [x1, x4]
	.loc 1 82 4 is_stmt 1 view .LVU223
	.loc 1 82 11 is_stmt 0 view .LVU224
	udiv	w4, w6, w27
	msub	w4, w4, w27, w6
.LVL52:
	.loc 1 83 4 is_stmt 1 view .LVU225
	.loc 1 83 7 is_stmt 0 view .LVU226
	cbnz	w4, .L29
	.loc 1 84 5 is_stmt 1 view .LVU227
	.loc 1 84 22 is_stmt 0 view .LVU228
	add	w0, w7, 1
	.loc 1 84 12 view .LVU229
	udiv	w6, w0, w27
	msub	w7, w6, w27, w0
.LVL53:
	.loc 1 85 5 is_stmt 1 view .LVU230
	.loc 1 85 8 is_stmt 0 view .LVU231
	cbnz	w7, .L29
	.loc 1 86 6 is_stmt 1 view .LVU232
	.loc 1 86 17 is_stmt 0 view .LVU233
	add	w25, w25, 1
.LVL54:
	.loc 1 87 6 is_stmt 1 view .LVU234
	.loc 1 87 10 is_stmt 0 view .LVU235
	add	x1, x1, 1024
.LVL55:
.L29:
	.loc 1 76 22 is_stmt 1 view .LVU236
	.loc 1 76 23 is_stmt 0 view .LVU237
	add	w9, w9, 1
.LVL56:
	.loc 1 76 13 is_stmt 1 view .LVU238
	.loc 1 76 3 is_stmt 0 view .LVU239
	cmp	w9, w2
	bne	.L30
	.loc 1 76 3 view .LVU240
.LBE43:
	.loc 1 53 2 is_stmt 1 view .LVU241
	.loc 1 55 2 view .LVU242
.LBB44:
	.loc 1 56 3 view .LVU243
.LVL57:
	.loc 1 57 3 view .LVU244
	.loc 1 59 3 view .LVU245
	.loc 1 59 6 is_stmt 0 view .LVU246
	cmp	w25, 254
	bls	.L24
	.loc 1 60 4 is_stmt 1 view .LVU247
.LBB42:
	.loc 1 60 4 view .LVU248
	.loc 1 60 4 view .LVU249
	.loc 1 60 4 view .LVU250
	.loc 1 60 4 view .LVU251
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	_printk
.LVL58:
	.loc 1 60 4 is_stmt 0 view .LVU252
.LBE42:
	.loc 1 61 4 is_stmt 1 view .LVU253
.L25:
	.loc 1 61 4 is_stmt 0 view .LVU254
.LBE44:
	.loc 1 94 2 is_stmt 1 view .LVU255
	.loc 1 94 5 is_stmt 0 view .LVU256
	cmp	w27, w28
	beq	.L32
.LBB45:
	.loc 1 95 3 is_stmt 1 view .LVU257
.LBB46:
	.loc 1 97 3 is_stmt 0 view .LVU258
	mov	w2, w28
.LBE46:
	.loc 1 95 7 view .LVU259
	csel	w23, w27, w28, le
.LVL59:
	.loc 1 96 3 is_stmt 1 view .LVU260
	.loc 1 97 3 view .LVU261
.LBB47:
	.loc 1 97 3 view .LVU262
	.loc 1 97 3 view .LVU263
	.loc 1 97 3 view .LVU264
	.loc 1 97 3 view .LVU265
	mov	w1, w27
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	_printk
.LVL60:
.LBE47:
	.loc 1 98 3 view .LVU266
	.loc 1 98 3 is_stmt 0 view .LVU267
	ubfiz	x2, x25, 10, 32
	add	x2, x26, x2
.LVL61:
.L33:
	.loc 1 98 15 is_stmt 1 view .LVU268
	.loc 1 98 3 is_stmt 0 view .LVU269
	cmp	x26, x2
	beq	.L32
	.loc 1 99 16 view .LVU270
	mov	w0, 0
	b	.L37
.LVL62:
.L26:
	.loc 1 99 16 view .LVU271
.LBE45:
.LBB48:
	.loc 1 68 4 is_stmt 1 view .LVU272
	.loc 1 69 10 is_stmt 0 view .LVU273
	ldrb	w5, [x3, 1]
.LVL63:
	.loc 1 68 4 view .LVU274
	eor	w8, w8, 1
.LVL64:
	.loc 1 69 4 is_stmt 1 view .LVU275
	.loc 1 69 15 is_stmt 0 view .LVU276
	add	x3, x3, 2
.LVL65:
	.loc 1 69 15 view .LVU277
	b	.L27
.L53:
	.loc 1 57 7 view .LVU278
	mov	w2, 1
	b	.L28
.LVL66:
.L34:
	.loc 1 57 7 view .LVU279
.LBE48:
.LBB49:
	.loc 1 101 6 is_stmt 1 view .LVU280
	.loc 1 101 65 is_stmt 0 view .LVU281
	lsl	w4, w1, 1
	.loc 1 101 39 view .LVU282
	ldrb	w4, [x26, x4]
	.loc 1 101 34 view .LVU283
	strb	w4, [x26, w1, uxtw]
	.loc 1 100 38 is_stmt 1 view .LVU284
.LVL67:
	.loc 1 100 38 is_stmt 0 view .LVU285
	add	w1, w1, 1
.LVL68:
.L36:
	.loc 1 100 22 is_stmt 1 view .LVU286
	.loc 1 100 5 is_stmt 0 view .LVU287
	cmp	w3, w1
	bne	.L34
	.loc 1 99 37 is_stmt 1 view .LVU288
	.loc 1 99 43 is_stmt 0 view .LVU289
	add	w0, w0, 1
.LVL69:
.L37:
	.loc 1 99 21 is_stmt 1 view .LVU290
	.loc 1 99 4 is_stmt 0 view .LVU291
	cmp	w0, w23
	beq	.L35
	lsl	w1, w0, 5
	add	w3, w23, w0, lsl 5
	b	.L36
.L35:
	.loc 1 104 4 is_stmt 1 view .LVU292
	.loc 1 104 8 is_stmt 0 view .LVU293
	add	x26, x26, 1024
.LVL70:
	.loc 1 98 32 is_stmt 1 view .LVU294
	.loc 1 98 32 is_stmt 0 view .LVU295
	b	.L33
.LVL71:
.L32:
	.loc 1 98 32 view .LVU296
.LBE49:
	.loc 1 108 2 is_stmt 1 view .LVU297
	.loc 1 108 2 is_stmt 0 view .LVU298
.LBE51:
.LBE53:
.LBE54:
.LBE57:
	.loc 1 283 2 is_stmt 1 view .LVU299
	.loc 1 283 5 is_stmt 0 view .LVU300
	tbnz	w25, #31, .L22
	.loc 1 295 2 is_stmt 1 view .LVU301
	.loc 1 296 2 view .LVU302
	.loc 1 295 20 is_stmt 0 view .LVU303
	ldr	w0, [x22]
	.loc 1 298 9 view .LVU304
	str	w21, [x20, #:lo12:.LANCHOR2]
	.loc 1 295 20 view .LVU305
	and	w0, w0, 65280
	.loc 1 297 8 view .LVU306
	str	w19, [x24, 4]
	.loc 1 296 20 view .LVU307
	orr	w0, w0, w25
	str	w0, [x22]
	.loc 1 297 2 is_stmt 1 view .LVU308
	.loc 1 298 2 view .LVU309
	.loc 1 300 2 view .LVU310
.LVL72:
.L41:
	.loc 1 274 10 is_stmt 0 view .LVU311
	mov	w0, 0
	b	.L7
.LVL73:
.L39:
	.loc 1 266 10 view .LVU312
	mov	w0, -19
.LVL74:
	.loc 1 266 10 view .LVU313
	b	.L7
.LVL75:
.L40:
	.loc 1 269 10 view .LVU314
	mov	w0, -22
	b	.L7
	.cfi_endproc
.LFE3588:
	.size	pvi_wf_get_lut, .-pvi_wf_get_lut
	.section	.rodata.str1.1
.LC5:
	.string	"pvi : input waveform version 0x%x\n"
.LC6:
	.string	"pvi : Unknow waveform version 0x%x, 0x%x, may be wrong waveform file\n"
.LC7:
	.string	"[EINK]: PVI waveform\n"
.LC8:
	.string	"[EINK]: failed to input PVI waveform\n"
	.section	.text.unlikely,"ax",@progbits
	.align	2
	.global	pvi_wf_setup
	.type	pvi_wf_setup, %function
pvi_wf_setup:
	.section	__patchable_function_entries
	.align	3
	.8byte	.LPFE3
	.section	.text.unlikely
.LPFE3:
	nop
	nop
.LVL76:
.LFB3591:
	.loc 1 370 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 370 1 is_stmt 0 view .LVU316
	hint	25 // paciasp
	.cfi_window_save
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
.LBB64:
.LBB65:
	.loc 1 313 6 view .LVU317
	adrp	x20, .LANCHOR0
	add	x20, x20, :lo12:.LANCHOR0
.LBE65:
.LBE64:
	.loc 1 370 1 view .LVU318
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	.loc 1 370 1 view .LVU319
	mov	x21, x0
	.loc 1 371 2 is_stmt 1 view .LVU320
	.loc 1 373 2 view .LVU321
.LVL77:
.LBB71:
.LBI64:
	.loc 1 309 12 view .LVU322
.LBB68:
	.loc 1 311 2 view .LVU323
	.loc 1 313 2 view .LVU324
	.loc 1 313 5 is_stmt 0 view .LVU325
	ldr	x0, [x20, 32]
.LVL78:
	.loc 1 313 5 view .LVU326
	cbnz	x0, .L62
	mov	x19, x1
	.loc 1 316 2 is_stmt 1 view .LVU327
.LBB66:
	.loc 1 316 2 view .LVU328
	.loc 1 316 2 view .LVU329
	.loc 1 316 2 view .LVU330
	.loc 1 316 2 view .LVU331
	ldrb	w1, [x1, 16]
.LVL79:
	.loc 1 316 2 is_stmt 0 view .LVU332
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	_printk
.LVL80:
.LBE66:
	.loc 1 319 2 is_stmt 1 view .LVU333
	.loc 1 319 16 is_stmt 0 view .LVU334
	ldrb	w1, [x19, 16]
	.loc 1 319 2 view .LVU335
	cmp	w1, 114
	beq	.L63
	bhi	.L64
	cmp	w1, 84
	beq	.L65
	bhi	.L64
	cmp	w1, 72
	beq	.L63
	bhi	.L64
	cmp	w1, 67
	beq	.L63
	bhi	.L64
	cmp	w1, 9
	beq	.L65
	sub	w2, w1, #18
	and	w0, w2, 255
	cmp	w0, 17
	bhi	.L64
	cmp	w2, 17
	bhi	.L64
	adrp	x0, .L66
	add	x0, x0, :lo12:.L66
	ldrb	w0, [x0,w2,uxtw]
	adr	x2, .Lrtx66
	add	x0, x2, w0, sxtb #2
	br	x0
.Lrtx66:
	.section	.rodata
	.align	0
	.align	2
.L66:
	.byte	(.L65 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L63 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L63 - .Lrtx66) / 4
	.byte	(.L63 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L63 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L64 - .Lrtx66) / 4
	.byte	(.L65 - .Lrtx66) / 4
	.section	.text.unlikely
.L63:
	.loc 1 327 3 is_stmt 1 view .LVU336
	.loc 1 327 10 is_stmt 0 view .LVU337
	adrp	x0, .LANCHOR2+12
	mov	w1, 32
	str	w1, [x0, #:lo12:.LANCHOR2+12]
.L65:
	.loc 1 332 3 is_stmt 1 view .LVU338
	.loc 1 339 2 view .LVU339
.LBE68:
.LBE71:
.LBB72:
	.loc 1 379 3 is_stmt 0 view .LVU340
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
.LBE72:
.LBB73:
.LBB69:
	.loc 1 339 22 view .LVU341
	str	x19, [x20, 32]
	.loc 1 341 2 is_stmt 1 view .LVU342
.LVL81:
	.loc 1 341 2 is_stmt 0 view .LVU343
.LBE69:
.LBE73:
	.loc 1 374 2 is_stmt 1 view .LVU344
	.loc 1 379 3 view .LVU345
.LBB74:
	.loc 1 379 3 view .LVU346
	.loc 1 379 3 view .LVU347
	.loc 1 379 3 view .LVU348
	.loc 1 379 3 view .LVU349
	bl	_printk
.LVL82:
.LBE74:
	.loc 1 382 2 view .LVU350
	.loc 1 382 11 is_stmt 0 view .LVU351
	adrp	x1, .LANCHOR2
	add	x1, x1, :lo12:.LANCHOR2
	add	x1, x1, 16
	.loc 1 383 9 view .LVU352
	mov	w0, 0
	.loc 1 382 11 view .LVU353
	str	x1, [x21, 16]
	.loc 1 383 2 is_stmt 1 view .LVU354
.LVL83:
.L61:
	.loc 1 384 1 is_stmt 0 view .LVU355
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
.LVL84:
	.loc 1 384 1 view .LVU356
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	hint	29 // autiasp
	.cfi_window_save
	ret
.LVL85:
.L64:
	.cfi_restore_state
.LBB75:
.LBB70:
	.loc 1 334 3 is_stmt 1 view .LVU357
.LBB67:
	.loc 1 334 3 view .LVU358
	.loc 1 334 3 view .LVU359
	.loc 1 334 3 view .LVU360
	.loc 1 334 3 view .LVU361
	ldrb	w2, [x19, 22]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	_printk
.LVL86:
.LBE67:
	.loc 1 336 3 view .LVU362
	.loc 1 336 3 is_stmt 0 view .LVU363
.LBE70:
.LBE75:
	.loc 1 374 2 is_stmt 1 view .LVU364
.L62:
	.loc 1 375 3 view .LVU365
.LBB76:
	.loc 1 375 3 view .LVU366
	.loc 1 375 3 view .LVU367
	.loc 1 375 3 view .LVU368
	.loc 1 375 3 view .LVU369
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_printk
.LVL87:
.LBE76:
	.loc 1 376 3 view .LVU370
	.loc 1 376 10 is_stmt 0 view .LVU371
	mov	w0, -22
	b	.L61
	.cfi_endproc
.LFE3591:
	.size	pvi_wf_setup, .-pvi_wf_setup
	.global	pvi_mode_table
	.data
	.align	3
	.set	.LANCHOR2,. + 0
	.type	sftemp.3, %object
	.size	sftemp.3, 4
sftemp.3:
	.word	-1
	.type	stype.2, %object
	.size	stype.2, 4
stype.2:
	.word	11
	.type	need_pic, %object
	.size	need_pic, 4
need_pic:
	.word	16
	.type	maxpic, %object
	.size	maxpic, 4
maxpic:
	.word	16
	.type	pvi_wf_ops, %object
	.size	pvi_wf_ops, 16
pvi_wf_ops:
	.xword	pvi_wf_get_version
	.xword	pvi_wf_get_lut
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	spi_id_buffer.0, %object
	.size	spi_id_buffer.0, 32
spi_id_buffer.0:
	.zero	32
	.type	pvi_global_waveform, %object
	.size	pvi_global_waveform, 8
pvi_global_waveform:
	.zero	8
	.type	waveformdata, %object
	.size	waveformdata, 8
waveformdata:
	.zero	8
	.section	.rodata
	.set	.LANCHOR1,. + 0
	.type	pvi_mode_table, %object
	.size	pvi_mode_table, 90
pvi_mode_table:
	.string	""
	.string	"\001\001\002\003\003\003\004\003"
	.string	""
	.string	"\001\007\003\003\005\006\004\005"
	.string	""
	.string	"\001\001\002\003\004\004\006\005"
	.string	""
	.string	"\001\007\002\003\004\005\006\004"
	.string	""
	.string	"\001\005\002\003\003\003\004\003"
	.string	""
	.string	"\001\001\002\003\004\004\006\004"
	.string	""
	.string	"\001\001\002\003\004\004\005\004"
	.string	""
	.string	"\001\001\002\003\004\013\006\n"
	.string	""
	.string	"\001\001\002\003\004\005\006\004"
	.type	__func__.1, %object
	.size	__func__.1, 19
__func__.1:
	.string	"pvi_get_wf_frm_num"
	.text
.Letext0:
	.file 2 "./include/uapi/asm-generic/int-ll64.h"
	.file 3 "./include/asm-generic/int-ll64.h"
	.file 4 "./include/linux/types.h"
	.file 5 "./include/linux/percpu.h"
	.file 6 "./arch/arm64/include/asm/processor.h"
	.file 7 "./include/linux/pid.h"
	.file 8 "./include/linux/stddef.h"
	.file 9 "./include/uapi/linux/personality.h"
	.file 10 "./include/linux/hrtimer.h"
	.file 11 "./include/linux/nodemask.h"
	.file 12 "./include/linux/mm_types_task.h"
	.file 13 "./include/uapi/linux/rseq.h"
	.file 14 "./include/linux/sched.h"
	.file 15 "./include/linux/mm_types.h"
	.file 16 "./include/linux/mmzone.h"
	.file 17 "./include/linux/sched/idle.h"
	.file 18 "./include/linux/sched/topology.h"
	.file 19 "./include/linux/slab.h"
	.file 20 "./include/uapi/linux/quota.h"
	.file 21 "./include/linux/quota.h"
	.file 22 "./include/linux/fs.h"
	.file 23 "drivers/gpu/drm/rockchip/ebc-linux/wflut/../ebc_uapi.h"
	.file 24 "drivers/gpu/drm/rockchip/ebc-linux/wflut/wf_lut.h"
	.file 25 "./arch/arm64/include/asm/stack_pointer.h"
	.file 26 "./include/linux/printk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11c5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF308
	.byte	0xc
	.4byte	.LASF309
	.4byte	.LASF310
	.4byte	.Ldebug_ranges0+0x1e0
	.8byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x8
	.4byte	0x3d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x4
	.4byte	0x36
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.byte	0x17
	.4byte	0x5c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x18
	.byte	0x18
	.4byte	0x76
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1b
	.byte	0x16
	.4byte	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.string	"u8"
	.byte	0x3
	.byte	0x11
	.byte	0xf
	.4byte	0x50
	.uleb128 0x4
	.4byte	0x9e
	.uleb128 0x7
	.string	"u16"
	.byte	0x3
	.byte	0x13
	.byte	0xf
	.4byte	0x6a
	.uleb128 0x7
	.string	"u32"
	.byte	0x3
	.byte	0x15
	.byte	0xf
	.4byte	0x84
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x8
	.byte	0xa
	.byte	0x6
	.4byte	0xe1
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1e
	.byte	0x11
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0xa
	.byte	0x8
	.uleb128 0xb
	.4byte	0x9e
	.4byte	0x10d
	.uleb128 0xc
	.4byte	0x29
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x10
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0xd
	.4byte	.LASF267
	.byte	0x19
	.byte	0x8
	.byte	0x18
	.4byte	0x29
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x5
	.byte	0x57
	.byte	0x6
	.4byte	0x14b
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0x170
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x7
	.byte	0x9
	.byte	0x6
	.4byte	0x1a1
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x9
	.byte	0xb
	.byte	0x6
	.4byte	0x213
	.uleb128 0xf
	.4byte	.LASF33
	.4byte	0x20000
	.uleb128 0xf
	.4byte	.LASF34
	.4byte	0x40000
	.uleb128 0xf
	.4byte	.LASF35
	.4byte	0x80000
	.uleb128 0xf
	.4byte	.LASF36
	.4byte	0x100000
	.uleb128 0xf
	.4byte	.LASF37
	.4byte	0x200000
	.uleb128 0xf
	.4byte	.LASF38
	.4byte	0x400000
	.uleb128 0xf
	.4byte	.LASF39
	.4byte	0x800000
	.uleb128 0xf
	.4byte	.LASF40
	.4byte	0x1000000
	.uleb128 0xf
	.4byte	.LASF41
	.4byte	0x2000000
	.uleb128 0xf
	.4byte	.LASF42
	.4byte	0x4000000
	.uleb128 0xf
	.4byte	.LASF43
	.4byte	0x8000000
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0xa
	.byte	0xaa
	.byte	0x7
	.4byte	0x25c
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0xb
	.2byte	0x18e
	.byte	0x6
	.4byte	0x2a0
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0xc
	.byte	0x1f
	.byte	0x6
	.4byte	0x2cd
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0xd
	.byte	0x19
	.byte	0x6
	.4byte	0x2f2
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0xe
	.2byte	0x122
	.byte	0x6
	.4byte	0x308
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x5
	.byte	0x4
	.4byte	0x7d
	.byte	0xe
	.2byte	0x2cf
	.byte	0x6
	.4byte	0x334
	.uleb128 0x12
	.4byte	.LASF74
	.sleb128 -1
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0xe
	.2byte	0x901
	.byte	0x6
	.4byte	0x35a
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0xf
	.2byte	0x356
	.byte	0x20
	.4byte	0x42
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x10
	.byte	0x2a
	.byte	0x6
	.4byte	0x3aa
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x10
	.byte	0x8a
	.byte	0x6
	.4byte	0x40b
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x10
	.byte	0x9d
	.byte	0x6
	.4byte	0x532
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF142
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF149
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0x29
	.byte	0
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x10
	.2byte	0x10a
	.byte	0x6
	.4byte	0x56a
	.uleb128 0x9
	.4byte	.LASF154
	.byte	0
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF156
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF159
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x10
	.2byte	0x113
	.byte	0x6
	.4byte	0x59c
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF163
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF165
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x10
	.2byte	0x222
	.byte	0x6
	.4byte	0x5ce
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x10
	.2byte	0x40a
	.byte	0x6
	.4byte	0x5ea
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x11
	.byte	0x7
	.byte	0x6
	.4byte	0x615
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF178
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x12
	.byte	0x10
	.byte	0x6
	.4byte	0x67e
	.uleb128 0x9
	.4byte	.LASF179
	.byte	0
	.uleb128 0x9
	.4byte	.LASF180
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF182
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF186
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF190
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF193
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.4byte	.LASF194
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x13
	.2byte	0x150
	.byte	0x6
	.4byte	0x6b0
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x14
	.byte	0x90
	.byte	0x6
	.4byte	0x6d1
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0
	.uleb128 0x9
	.4byte	.LASF201
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF202
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x15
	.byte	0xfd
	.byte	0x6
	.4byte	0x716
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x16
	.2byte	0x5b0
	.byte	0x6
	.4byte	0x744
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF215
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF216
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	0x36
	.4byte	0x754
	.uleb128 0xc
	.4byte	0x29
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF217
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x17
	.byte	0x1e
	.byte	0x6
	.4byte	0x7b5
	.uleb128 0x9
	.4byte	.LASF218
	.byte	0
	.uleb128 0x9
	.4byte	.LASF219
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF220
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF221
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF226
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF227
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF228
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF229
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF231
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x17
	.byte	0x2f
	.byte	0x6
	.4byte	0x7da
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF233
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF234
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF235
	.byte	0x7
	.byte	0x4
	.4byte	0x42
	.byte	0x17
	.byte	0x35
	.byte	0x6
	.4byte	0x7f9
	.uleb128 0x9
	.4byte	.LASF236
	.byte	0
	.uleb128 0x9
	.4byte	.LASF237
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF240
	.byte	0x10
	.byte	0x18
	.byte	0x14
	.byte	0x8
	.4byte	0x821
	.uleb128 0x15
	.4byte	.LASF238
	.byte	0x18
	.byte	0x15
	.byte	0x11
	.4byte	0x826
	.byte	0
	.uleb128 0x15
	.4byte	.LASF239
	.byte	0x18
	.byte	0x16
	.byte	0x8
	.4byte	0x885
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.4byte	0x821
	.uleb128 0x17
	.4byte	0x7d
	.4byte	0x84a
	.uleb128 0x18
	.4byte	0x84a
	.uleb128 0x18
	.4byte	0x754
	.uleb128 0x18
	.4byte	0x7d
	.uleb128 0x18
	.4byte	0x7d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.4byte	0x850
	.uleb128 0x14
	.4byte	.LASF241
	.byte	0x18
	.byte	0x18
	.byte	0x19
	.byte	0x8
	.4byte	0x885
	.uleb128 0x15
	.4byte	.LASF242
	.byte	0x18
	.byte	0x1a
	.byte	0xf
	.4byte	0x42
	.byte	0
	.uleb128 0x15
	.4byte	.LASF243
	.byte	0x18
	.byte	0x1b
	.byte	0x6
	.4byte	0x88b
	.byte	0x8
	.uleb128 0x19
	.string	"ops"
	.byte	0x18
	.byte	0x1c
	.byte	0x15
	.4byte	0x891
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.4byte	0x82c
	.uleb128 0x3
	.byte	0x8
	.4byte	0x9e
	.uleb128 0x3
	.byte	0x8
	.4byte	0x7f9
	.uleb128 0x14
	.4byte	.LASF244
	.byte	0x34
	.byte	0x1
	.byte	0xe
	.byte	0x8
	.4byte	0x9d0
	.uleb128 0x15
	.4byte	.LASF245
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	0xba
	.byte	0
	.uleb128 0x15
	.4byte	.LASF246
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	0xba
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF247
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	0xba
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF248
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	0x9e
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF249
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	0x9e
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF250
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	0xae
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF251
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.4byte	0x9e
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF252
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.4byte	0x9e
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF253
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.4byte	0x9e
	.byte	0x12
	.uleb128 0x15
	.4byte	.LASF254
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	0x9e
	.byte	0x13
	.uleb128 0x15
	.4byte	.LASF255
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	0x9e
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF256
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	0x9e
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF257
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	0x9e
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF258
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	0x9e
	.byte	0x17
	.uleb128 0x15
	.4byte	.LASF259
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	0xba
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF260
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	0x9e
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF261
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.4byte	0xfd
	.byte	0x1d
	.uleb128 0x19
	.string	"sc1"
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	0x9e
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF262
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	0x9d0
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF263
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	0x9e
	.byte	0x25
	.uleb128 0x15
	.4byte	.LASF264
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	0x9e
	.byte	0x26
	.uleb128 0x15
	.4byte	.LASF265
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.4byte	0x9e0
	.byte	0x27
	.uleb128 0x15
	.4byte	.LASF266
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	0x9f0
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	0x9e
	.4byte	0x9e0
	.uleb128 0xc
	.4byte	0x29
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x9e
	.4byte	0x9f0
	.uleb128 0xc
	.4byte	0x29
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x9e
	.4byte	0xa00
	.uleb128 0xc
	.4byte	0x29
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF268
	.byte	0x1
	.byte	0x29
	.byte	0xc
	.4byte	0x88b
	.uleb128 0x9
	.byte	0x3
	.8byte	waveformdata
	.uleb128 0x1a
	.4byte	.LASF269
	.byte	0x1
	.byte	0x2a
	.byte	0xc
	.4byte	0x7d
	.uleb128 0x9
	.byte	0x3
	.8byte	maxpic
	.uleb128 0x1a
	.4byte	.LASF270
	.byte	0x1
	.byte	0x2b
	.byte	0x1d
	.4byte	0xa42
	.uleb128 0x9
	.byte	0x3
	.8byte	pvi_global_waveform
	.uleb128 0x3
	.byte	0x8
	.4byte	0x897
	.uleb128 0x1a
	.4byte	.LASF271
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.4byte	0x7d
	.uleb128 0x9
	.byte	0x3
	.8byte	need_pic
	.uleb128 0xb
	.4byte	0xa9
	.4byte	0xa74
	.uleb128 0xc
	.4byte	0x29
	.byte	0x8
	.uleb128 0xc
	.4byte	0x29
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.4byte	0xa5e
	.uleb128 0x1b
	.4byte	.LASF274
	.byte	0x1
	.byte	0x70
	.byte	0xa
	.4byte	0xa74
	.uleb128 0x9
	.byte	0x3
	.8byte	pvi_mode_table
	.uleb128 0x1c
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x16c
	.byte	0x1a
	.4byte	0x7f9
	.uleb128 0x9
	.byte	0x3
	.8byte	pvi_wf_ops
	.uleb128 0x1d
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x171
	.byte	0x5
	.4byte	0x7d
	.8byte	.LFB3591
	.8byte	.LFE3591-.LFB3591
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbd
	.uleb128 0x1e
	.string	"lut"
	.byte	0x1
	.2byte	0x171
	.byte	0x23
	.4byte	0x84a
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x1f
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x171
	.byte	0x2e
	.4byte	0xfb
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.2byte	0x173
	.byte	0x6
	.4byte	0x7d
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x21
	.4byte	0xc0d
	.8byte	.LBI64
	.2byte	.LVU322
	.4byte	.Ldebug_ranges0+0x190
	.byte	0x1
	.2byte	0x175
	.byte	0x8
	.4byte	0xb82
	.uleb128 0x22
	.4byte	0xc1f
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x190
	.4byte	0xb47
	.uleb128 0x24
	.4byte	0xc2c
	.4byte	.LLST39
	.4byte	.LVUS39
	.byte	0
	.uleb128 0x25
	.8byte	.LVL80
	.4byte	0x11bc
	.4byte	0xb66
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC5
	.byte	0
	.uleb128 0x27
	.8byte	.LVL86
	.4byte	0x11bc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x25
	.8byte	.LVL82
	.4byte	0x11bc
	.4byte	0xba1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC7
	.byte	0
	.uleb128 0x27
	.8byte	.LVL87
	.4byte	0x11bc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x15e
	.byte	0x14
	.4byte	0x30
	.8byte	.LFB3590
	.8byte	.LFE3590-.LFB3590
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0d
	.uleb128 0x29
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x160
	.byte	0xe
	.4byte	0x30
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1c
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x161
	.byte	0xe
	.4byte	0x744
	.uleb128 0x9
	.byte	0x3
	.8byte	spi_id_buffer.0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x135
	.byte	0xc
	.4byte	0x7d
	.byte	0x1
	.4byte	0xc3a
	.uleb128 0x2b
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x135
	.byte	0x1f
	.4byte	0xfb
	.uleb128 0x2c
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x137
	.byte	0x17
	.4byte	0xa42
	.byte	0
	.uleb128 0x28
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x101
	.byte	0xc
	.4byte	0x7d
	.8byte	.LFB3588
	.8byte	.LFE3588-.LFB3588
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe7
	.uleb128 0x1f
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x101
	.byte	0x2c
	.4byte	0x84a
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1f
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x101
	.byte	0x45
	.4byte	0x754
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1f
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x101
	.byte	0x53
	.4byte	0x7d
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1e
	.string	"pic"
	.byte	0x1
	.2byte	0x101
	.byte	0x63
	.4byte	0x7d
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1c
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x103
	.byte	0x1a
	.4byte	0x754
	.uleb128 0x9
	.byte	0x3
	.8byte	stype.2
	.uleb128 0x1c
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x104
	.byte	0xd
	.4byte	0x7d
	.uleb128 0x9
	.byte	0x3
	.8byte	sftemp.3
	.uleb128 0x29
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x105
	.byte	0x6
	.4byte	0x7d
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x29
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x106
	.byte	0x6
	.4byte	0x7d
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x29
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x107
	.byte	0x6
	.4byte	0x7d
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x21
	.4byte	0x1063
	.8byte	.LBI20
	.2byte	.LVU46
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x118
	.byte	0xf
	.4byte	0xd74
	.uleb128 0x22
	.4byte	0x1074
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x24
	.4byte	0x1080
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x24
	.4byte	0x108c
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x24
	.4byte	0x1098
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x10a3
	.8byte	.LBI26
	.2byte	.LVU69
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x119
	.byte	0xf
	.4byte	0xe18
	.uleb128 0x22
	.4byte	0x10b4
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x24
	.4byte	0x10c0
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x24
	.4byte	0x10cc
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x2e
	.4byte	0x10df
	.8byte	.LBI29
	.2byte	.LVU123
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x9b
	.byte	0xe
	.4byte	0xdfb
	.uleb128 0x2f
	.4byte	0x10f0
	.uleb128 0x22
	.4byte	0x10f0
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x24
	.4byte	0x10fc
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.byte	0
	.uleb128 0x27
	.8byte	.LVL15
	.4byte	0x11bc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0xfe7
	.8byte	.LBI34
	.2byte	.LVU84
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x11a
	.byte	0xe
	.4byte	0xfcb
	.uleb128 0x22
	.4byte	0x1004
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x22
	.4byte	0xff8
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0xa0
	.uleb128 0x24
	.4byte	0x1010
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x24
	.4byte	0x101c
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x24
	.4byte	0x1028
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x2e
	.4byte	0x1109
	.8byte	.LBI39
	.2byte	.LVU173
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xc8
	.byte	0x9
	.4byte	0xfa1
	.uleb128 0x22
	.4byte	0x113d
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x22
	.4byte	0x1131
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x22
	.4byte	0x1125
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x22
	.4byte	0x111a
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0xd0
	.uleb128 0x24
	.4byte	0x1149
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x24
	.4byte	0x1155
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x24
	.4byte	0x1161
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x24
	.4byte	0x116d
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x24
	.4byte	0x1179
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x24
	.4byte	0x1185
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x30
	.4byte	0x118f
	.4byte	.Ldebug_ranges0+0x110
	.4byte	0xf42
	.uleb128 0x24
	.4byte	0x1194
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x24
	.4byte	0x11a0
	.4byte	.LLST33
	.4byte	.LVUS33
	.byte	0
	.uleb128 0x30
	.4byte	0x11ad
	.4byte	.Ldebug_ranges0+0x160
	.4byte	0xf84
	.uleb128 0x24
	.4byte	0x11ae
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x27
	.8byte	.LVL60
	.4byte	0x11bc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8b
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.8byte	.LVL58
	.4byte	0x11bc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.8byte	.LVL22
	.4byte	0x11bc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LANCHOR1+90
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.8byte	.LVL23
	.4byte	0x11bc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF285
	.byte	0x1
	.byte	0xb3
	.byte	0xc
	.4byte	0x7d
	.byte	0x1
	.4byte	0x1048
	.uleb128 0x32
	.4byte	.LASF287
	.byte	0x1
	.byte	0xb3
	.byte	0x23
	.4byte	0x7d
	.uleb128 0x32
	.4byte	.LASF282
	.byte	0x1
	.byte	0xb3
	.byte	0x2d
	.4byte	0x7d
	.uleb128 0x33
	.4byte	.LASF273
	.byte	0x1
	.byte	0xb5
	.byte	0x11
	.4byte	0x1048
	.uleb128 0x33
	.4byte	.LASF289
	.byte	0x1
	.byte	0xb6
	.byte	0x11
	.4byte	0x1048
	.uleb128 0x33
	.4byte	.LASF290
	.byte	0x1
	.byte	0xb7
	.byte	0x6
	.4byte	0x7d
	.uleb128 0x34
	.4byte	.LASF312
	.4byte	0x105e
	.uleb128 0x9
	.byte	0x3
	.8byte	__func__.1
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.4byte	0x5c
	.uleb128 0xb
	.4byte	0x3d
	.4byte	0x105e
	.uleb128 0xc
	.4byte	0x29
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.4byte	0x104e
	.uleb128 0x31
	.4byte	.LASF291
	.byte	0x1
	.byte	0xa0
	.byte	0xc
	.4byte	0x7d
	.byte	0x1
	.4byte	0x10a3
	.uleb128 0x32
	.4byte	.LASF266
	.byte	0x1
	.byte	0xa0
	.byte	0x22
	.4byte	0x7d
	.uleb128 0x33
	.4byte	.LASF292
	.byte	0x1
	.byte	0xa2
	.byte	0x6
	.4byte	0x7d
	.uleb128 0x33
	.4byte	.LASF293
	.byte	0x1
	.byte	0xa3
	.byte	0x6
	.4byte	0x7d
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.byte	0xa4
	.byte	0x6
	.4byte	0x7d
	.byte	0
	.uleb128 0x31
	.4byte	.LASF294
	.byte	0x1
	.byte	0x8e
	.byte	0xb
	.4byte	0x9e
	.byte	0x1
	.4byte	0x10d9
	.uleb128 0x32
	.4byte	.LASF279
	.byte	0x1
	.byte	0x8e
	.byte	0x2e
	.4byte	0x754
	.uleb128 0x33
	.4byte	.LASF295
	.byte	0x1
	.byte	0x90
	.byte	0xc
	.4byte	0x10d9
	.uleb128 0x33
	.4byte	.LASF287
	.byte	0x1
	.byte	0x91
	.byte	0x6
	.4byte	0x7d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.4byte	0xa9
	.uleb128 0x31
	.4byte	.LASF296
	.byte	0x1
	.byte	0x7c
	.byte	0x12
	.4byte	0x10d9
	.byte	0x1
	.4byte	0x1109
	.uleb128 0x32
	.4byte	.LASF273
	.byte	0x1
	.byte	0x7c
	.byte	0x3a
	.4byte	0xa42
	.uleb128 0x33
	.4byte	.LASF295
	.byte	0x1
	.byte	0x7e
	.byte	0xd
	.4byte	0x10d9
	.byte	0
	.uleb128 0x31
	.4byte	.LASF297
	.byte	0x1
	.byte	0x2e
	.byte	0xc
	.4byte	0x7d
	.byte	0x1
	.4byte	0x11bc
	.uleb128 0x36
	.string	"in"
	.byte	0x1
	.byte	0x2e
	.byte	0x1f
	.4byte	0x88b
	.uleb128 0x36
	.string	"out"
	.byte	0x1
	.byte	0x2e
	.byte	0x27
	.4byte	0x88b
	.uleb128 0x32
	.4byte	.LASF298
	.byte	0x1
	.byte	0x2e
	.byte	0x30
	.4byte	0x7d
	.uleb128 0x32
	.4byte	.LASF299
	.byte	0x1
	.byte	0x2e
	.byte	0x3f
	.4byte	0x7d
	.uleb128 0x33
	.4byte	.LASF300
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.4byte	0xba
	.uleb128 0x33
	.4byte	.LASF301
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.4byte	0xba
	.uleb128 0x33
	.4byte	.LASF302
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	0xba
	.uleb128 0x33
	.4byte	.LASF303
	.byte	0x1
	.byte	0x33
	.byte	0x7
	.4byte	0xe8
	.uleb128 0x33
	.4byte	.LASF304
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	0x88b
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.4byte	0x7d
	.uleb128 0x37
	.4byte	0x11ad
	.uleb128 0x33
	.4byte	.LASF305
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.4byte	0x9e
	.uleb128 0x33
	.4byte	.LASF306
	.byte	0x1
	.byte	0x39
	.byte	0x7
	.4byte	0x7d
	.byte	0
	.uleb128 0x38
	.uleb128 0x33
	.4byte	.LASF307
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	0x7d
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0x1a
	.byte	0x9b
	.byte	0x5
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS35:
	.uleb128 0
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 .LVU356
	.uleb128 .LVU356
	.uleb128 .LVU357
	.uleb128 .LVU357
	.uleb128 0
.LLST35:
	.8byte	.LVL76
	.8byte	.LVL78
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL78
	.8byte	.LVL84
	.2byte	0x1
	.byte	0x65
	.8byte	.LVL84
	.8byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.8byte	.LVL85
	.8byte	.LFE3591
	.2byte	0x1
	.byte	0x65
	.8byte	0
	.8byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU355
	.uleb128 .LVU355
	.uleb128 .LVU357
	.uleb128 .LVU357
	.uleb128 .LVU365
	.uleb128 .LVU365
	.uleb128 0
.LLST36:
	.8byte	.LVL76
	.8byte	.LVL79
	.2byte	0x1
	.byte	0x51
	.8byte	.LVL79
	.8byte	.LVL83
	.2byte	0x1
	.byte	0x63
	.8byte	.LVL83
	.8byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.8byte	.LVL85
	.8byte	.LVL86
	.2byte	0x1
	.byte	0x63
	.8byte	.LVL86
	.8byte	.LFE3591
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS37:
	.uleb128 .LVU343
	.uleb128 .LVU355
	.uleb128 .LVU363
	.uleb128 .LVU365
.LLST37:
	.8byte	.LVL81
	.8byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL86
	.8byte	.LVL86
	.2byte	0x3
	.byte	0x9
	.byte	0xf8
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS38:
	.uleb128 .LVU322
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU343
	.uleb128 .LVU357
	.uleb128 .LVU363
.LLST38:
	.8byte	.LVL77
	.8byte	.LVL79
	.2byte	0x1
	.byte	0x51
	.8byte	.LVL79
	.8byte	.LVL81
	.2byte	0x1
	.byte	0x63
	.8byte	.LVL85
	.8byte	.LVL86
	.2byte	0x1
	.byte	0x63
	.8byte	0
	.8byte	0
.LVUS39:
	.uleb128 .LVU324
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU355
	.uleb128 .LVU355
	.uleb128 .LVU357
	.uleb128 .LVU357
	.uleb128 .LVU365
	.uleb128 .LVU365
	.uleb128 0
.LLST39:
	.8byte	.LVL77
	.8byte	.LVL79
	.2byte	0x1
	.byte	0x51
	.8byte	.LVL79
	.8byte	.LVL83
	.2byte	0x1
	.byte	0x63
	.8byte	.LVL83
	.8byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.8byte	.LVL85
	.8byte	.LVL86
	.2byte	0x1
	.byte	0x63
	.8byte	.LVL86
	.8byte	.LFE3591
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS0:
	.uleb128 .LVU5
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST0:
	.8byte	.LVL0
	.8byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL1
	.8byte	.LFE3590
	.2byte	0x9
	.byte	0x3
	.8byte	pvi_global_waveform
	.8byte	0
	.8byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 0
.LLST1:
	.8byte	.LVL2
	.8byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL4
	.8byte	.LVL24
	.2byte	0x1
	.byte	0x66
	.8byte	.LVL24
	.8byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.8byte	.LVL26
	.8byte	.LVL73
	.2byte	0x1
	.byte	0x66
	.8byte	.LVL73
	.8byte	.LVL74
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL74
	.8byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.8byte	.LVL75
	.8byte	.LFE3588
	.2byte	0x1
	.byte	0x66
	.8byte	0
	.8byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 0
.LLST2:
	.8byte	.LVL2
	.8byte	.LVL5
	.2byte	0x1
	.byte	0x51
	.8byte	.LVL5
	.8byte	.LVL24
	.2byte	0x1
	.byte	0x63
	.8byte	.LVL24
	.8byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.8byte	.LVL26
	.8byte	.LVL73
	.2byte	0x1
	.byte	0x63
	.8byte	.LVL73
	.8byte	.LFE3588
	.2byte	0x1
	.byte	0x51
	.8byte	0
	.8byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST3:
	.8byte	.LVL2
	.8byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.8byte	.LVL3
	.8byte	.LVL25
	.2byte	0x1
	.byte	0x65
	.8byte	.LVL25
	.8byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.8byte	.LVL26
	.8byte	.LFE3588
	.2byte	0x1
	.byte	0x65
	.8byte	0
	.8byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 0
.LLST4:
	.8byte	.LVL2
	.8byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.8byte	.LVL7
	.8byte	.LVL15-1
	.2byte	0x9
	.byte	0x3
	.8byte	need_pic
	.8byte	.LVL15-1
	.8byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.8byte	.LVL26
	.8byte	.LVL31
	.2byte	0x9
	.byte	0x3
	.8byte	need_pic
	.8byte	.LVL31
	.8byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.8byte	.LVL73
	.8byte	.LFE3588
	.2byte	0x1
	.byte	0x53
	.8byte	0
	.8byte	0
.LVUS5:
	.uleb128 .LVU67
	.uleb128 .LVU111
	.uleb128 .LVU120
	.uleb128 .LVU188
.LLST5:
	.8byte	.LVL14
	.8byte	.LVL22
	.2byte	0x1
	.byte	0x69
	.8byte	.LVL26
	.8byte	.LVL39
	.2byte	0x1
	.byte	0x69
	.8byte	0
	.8byte	0
.LVUS6:
	.uleb128 .LVU82
	.uleb128 .LVU91
.LLST6:
	.8byte	.LVL16
	.8byte	.LVL18
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS7:
	.uleb128 .LVU109
	.uleb128 .LVU111
	.uleb128 .LVU298
	.uleb128 .LVU311
.LLST7:
	.8byte	.LVL22
	.8byte	.LVL22
	.2byte	0x3
	.byte	0x9
	.byte	0xea
	.byte	0x9f
	.8byte	.LVL71
	.8byte	.LVL72
	.2byte	0x1
	.byte	0x69
	.8byte	0
	.8byte	0
.LVUS8:
	.uleb128 .LVU46
	.uleb128 .LVU67
.LLST8:
	.8byte	.LVL6
	.8byte	.LVL14
	.2byte	0x1
	.byte	0x65
	.8byte	0
	.8byte	0
.LVUS9:
	.uleb128 .LVU48
	.uleb128 .LVU67
.LLST9:
	.8byte	.LVL6
	.8byte	.LVL14
	.2byte	0x1
	.byte	0x51
	.8byte	0
	.8byte	0
.LVUS10:
	.uleb128 .LVU49
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU67
.LLST10:
	.8byte	.LVL6
	.8byte	.LVL14
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.8byte	.LVL14
	.8byte	.LVL14
	.2byte	0x1
	.byte	0x69
	.8byte	0
	.8byte	0
.LVUS11:
	.uleb128 .LVU51
	.uleb128 .LVU55
	.uleb128 .LVU56
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
.LLST11:
	.8byte	.LVL6
	.8byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL9
	.8byte	.LVL10
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL10
	.8byte	.LVL11
	.2byte	0x1
	.byte	0x69
	.8byte	.LVL11
	.8byte	.LVL12
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.8byte	.LVL12
	.8byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL13
	.8byte	.LVL14
	.2byte	0x1
	.byte	0x69
	.8byte	0
	.8byte	0
.LVUS12:
	.uleb128 .LVU69
	.uleb128 .LVU82
	.uleb128 .LVU120
	.uleb128 .LVU143
.LLST12:
	.8byte	.LVL14
	.8byte	.LVL16
	.2byte	0x1
	.byte	0x63
	.8byte	.LVL26
	.8byte	.LVL31
	.2byte	0x1
	.byte	0x63
	.8byte	0
	.8byte	0
.LVUS13:
	.uleb128 .LVU128
	.uleb128 .LVU132
.LLST13:
	.8byte	.LVL28
	.8byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.8byte	0
	.8byte	0
.LVUS14:
	.uleb128 .LVU122
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU143
.LLST14:
	.8byte	.LVL27
	.8byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL29
	.8byte	.LVL30
	.2byte	0x12
	.byte	0x83
	.sleb128 0
	.byte	0x33
	.byte	0x83
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x44
	.byte	0x4f
	.byte	0x24
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.8byte	.LVL30
	.8byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.8byte	0
	.8byte	0
.LVUS15:
	.uleb128 .LVU124
	.uleb128 .LVU128
	.uleb128 .LVU132
	.uleb128 .LVU143
.LLST15:
	.8byte	.LVL27
	.8byte	.LVL28
	.2byte	0x9
	.byte	0x3
	.8byte	pvi_global_waveform
	.8byte	.LVL30
	.8byte	.LVL31
	.2byte	0x9
	.byte	0x3
	.8byte	pvi_global_waveform
	.8byte	0
	.8byte	0
.LVUS16:
	.uleb128 .LVU125
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU128
	.uleb128 .LVU132
	.uleb128 .LVU143
.LLST16:
	.8byte	.LVL27
	.8byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL28
	.8byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.8byte	.LVL30
	.8byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS17:
	.uleb128 .LVU84
	.uleb128 .LVU109
	.uleb128 .LVU143
	.uleb128 .LVU188
.LLST17:
	.8byte	.LVL16
	.8byte	.LVL22
	.2byte	0x1
	.byte	0x69
	.8byte	.LVL31
	.8byte	.LVL39
	.2byte	0x1
	.byte	0x69
	.8byte	0
	.8byte	0
.LVUS18:
	.uleb128 .LVU84
	.uleb128 .LVU91
.LLST18:
	.8byte	.LVL16
	.8byte	.LVL18
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS19:
	.uleb128 .LVU87
	.uleb128 .LVU107
	.uleb128 .LVU143
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU252
	.uleb128 .LVU271
	.uleb128 .LVU279
.LLST19:
	.8byte	.LVL17
	.8byte	.LVL22-1
	.2byte	0x1
	.byte	0x53
	.8byte	.LVL31
	.8byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.8byte	.LVL37
	.8byte	.LVL58-1
	.2byte	0x9
	.byte	0x3
	.8byte	pvi_global_waveform
	.8byte	.LVL62
	.8byte	.LVL66
	.2byte	0x9
	.byte	0x3
	.8byte	pvi_global_waveform
	.8byte	0
	.8byte	0
.LVUS20:
	.uleb128 .LVU88
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU105
	.uleb128 .LVU143
	.uleb128 .LVU148
	.uleb128 .LVU151
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU188
.LLST20:
	.8byte	.LVL17
	.8byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL19
	.8byte	.LVL20
	.2byte	0x1
	.byte	0x51
	.8byte	.LVL20
	.8byte	.LVL21
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.8byte	.LVL31
	.8byte	.LVL32
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.8byte	.LVL34
	.8byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.8byte	.LVL35
	.8byte	.LVL37
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.8byte	.LVL37
	.8byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.8byte	0
	.8byte	0
.LVUS21:
	.uleb128 .LVU89
	.uleb128 .LVU105
	.uleb128 .LVU143
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU149
	.uleb128 .LVU165
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU185
.LLST21:
	.8byte	.LVL17
	.8byte	.LVL21
	.2byte	0x8
	.byte	0x73
	.sleb128 32
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.8byte	.LVL31
	.8byte	.LVL31
	.2byte	0x8
	.byte	0x73
	.sleb128 32
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.8byte	.LVL31
	.8byte	.LVL32
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x9f
	.8byte	.LVL32
	.8byte	.LVL33
	.2byte	0x9
	.byte	0x71
	.sleb128 0
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x9f
	.8byte	.LVL36
	.8byte	.LVL37
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x9f
	.8byte	.LVL37
	.8byte	.LVL38
	.2byte	0x16
	.byte	0x3
	.8byte	pvi_global_waveform
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS22:
	.uleb128 .LVU173
	.uleb128 .LVU298
.LLST22:
	.8byte	.LVL37
	.8byte	.LVL71
	.2byte	0x1
	.byte	0x6c
	.8byte	0
	.8byte	0
.LVUS23:
	.uleb128 .LVU173
	.uleb128 .LVU298
.LLST23:
	.8byte	.LVL37
	.8byte	.LVL71
	.2byte	0x1
	.byte	0x6b
	.8byte	0
	.8byte	0
.LVUS24:
	.uleb128 .LVU173
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU252
	.uleb128 .LVU261
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 .LVU296
.LLST24:
	.8byte	.LVL37
	.8byte	.LVL39
	.2byte	0x1
	.byte	0x6a
	.8byte	.LVL39
	.8byte	.LVL58-1
	.2byte	0x1
	.byte	0x51
	.8byte	.LVL59
	.8byte	.LVL62
	.2byte	0x1
	.byte	0x6a
	.8byte	.LVL62
	.8byte	.LVL66
	.2byte	0x1
	.byte	0x51
	.8byte	.LVL66
	.8byte	.LVL71
	.2byte	0x1
	.byte	0x6a
	.8byte	0
	.8byte	0
.LVUS25:
	.uleb128 .LVU179
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU252
	.uleb128 .LVU271
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU279
.LLST25:
	.8byte	.LVL37
	.8byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.8byte	.LVL39
	.8byte	.LVL41
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.8byte	.LVL41
	.8byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.8byte	.LVL42
	.8byte	.LVL43
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.8byte	.LVL43
	.8byte	.LVL58-1
	.2byte	0x1
	.byte	0x53
	.8byte	.LVL62
	.8byte	.LVL64
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.8byte	.LVL64
	.8byte	.LVL65
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.8byte	.LVL65
	.8byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.8byte	0
	.8byte	0
.LVUS26:
	.uleb128 .LVU175
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU208
	.uleb128 .LVU208
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU252
	.uleb128 .LVU271
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 .LVU296
.LLST26:
	.8byte	.LVL37
	.8byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL39
	.8byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.8byte	.LVL46
	.8byte	.LVL47
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.8byte	.LVL47
	.8byte	.LVL48
	.2byte	0x3
	.byte	0x74
	.sleb128 2
	.byte	0x9f
	.8byte	.LVL48
	.8byte	.LVL49
	.2byte	0x3
	.byte	0x74
	.sleb128 3
	.byte	0x9f
	.8byte	.LVL49
	.8byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.8byte	.LVL50
	.8byte	.LVL51
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.8byte	.LVL51
	.8byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.8byte	.LVL52
	.8byte	.LVL58-1
	.2byte	0x1
	.byte	0x54
	.8byte	.LVL62
	.8byte	.LVL66
	.2byte	0x1
	.byte	0x54
	.8byte	.LVL66
	.8byte	.LVL71
	.2byte	0x1
	.byte	0x50
	.8byte	0
	.8byte	0
.LVUS27:
	.uleb128 .LVU176
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU252
	.uleb128 .LVU271
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 .LVU290
.LLST27:
	.8byte	.LVL37
	.8byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL39
	.8byte	.LVL58-1
	.2byte	0x1
	.byte	0x57
	.8byte	.LVL62
	.8byte	.LVL66
	.2byte	0x1
	.byte	0x57
	.8byte	.LVL66
	.8byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL67
	.8byte	.LVL68
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.8byte	.LVL68
	.8byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS28:
	.uleb128 .LVU177
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU298
.LLST28:
	.8byte	.LVL37
	.8byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL39
	.8byte	.LVL71
	.2byte	0x1
	.byte	0x69
	.8byte	0
	.8byte	0
.LVUS29:
	.uleb128 .LVU178
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU252
	.uleb128 .LVU271
	.uleb128 .LVU279
.LLST29:
	.8byte	.LVL37
	.8byte	.LVL39
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.8byte	.LVL39
	.8byte	.LVL58-1
	.2byte	0x1
	.byte	0x58
	.8byte	.LVL62
	.8byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.8byte	0
	.8byte	0
.LVUS30:
	.uleb128 .LVU179
	.uleb128 .LVU268
	.uleb128 .LVU271
	.uleb128 .LVU279
.LLST30:
	.8byte	.LVL37
	.8byte	.LVL61
	.2byte	0x1
	.byte	0x6a
	.8byte	.LVL62
	.8byte	.LVL66
	.2byte	0x1
	.byte	0x6a
	.8byte	0
	.8byte	0
.LVUS31:
	.uleb128 .LVU201
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 .LVU252
	.uleb128 .LVU267
	.uleb128 .LVU271
	.uleb128 .LVU279
	.uleb128 .LVU296
.LLST31:
	.8byte	.LVL44
	.8byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL46
	.8byte	.LVL58-1
	.2byte	0x1
	.byte	0x59
	.8byte	.LVL60
	.8byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL66
	.8byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS32:
	.uleb128 .LVU182
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU206
	.uleb128 .LVU244
	.uleb128 .LVU254
	.uleb128 .LVU271
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU279
.LLST32:
	.8byte	.LVL37
	.8byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL40
	.8byte	.LVL45
	.2byte	0x1
	.byte	0x55
	.8byte	.LVL57
	.8byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL62
	.8byte	.LVL63
	.2byte	0x1
	.byte	0x55
	.8byte	.LVL63
	.8byte	.LVL64
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.8byte	.LVL64
	.8byte	.LVL66
	.2byte	0x1
	.byte	0x55
	.8byte	0
	.8byte	0
.LVUS33:
	.uleb128 .LVU183
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU298
.LLST33:
	.8byte	.LVL37
	.8byte	.LVL44
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.8byte	.LVL44
	.8byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.8byte	.LVL57
	.8byte	.LVL71
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS34:
	.uleb128 .LVU260
	.uleb128 .LVU271
	.uleb128 .LVU279
	.uleb128 .LVU296
.LLST34:
	.8byte	.LVL59
	.8byte	.LVL62
	.2byte	0x1
	.byte	0x67
	.8byte	.LVL66
	.8byte	.LVL71
	.2byte	0x1
	.byte	0x67
	.8byte	0
	.8byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	.LFB3591
	.8byte	.LFE3591-.LFB3591
	.8byte	0
	.8byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.8byte	.LBB20
	.8byte	.LBE20
	.8byte	.LBB24
	.8byte	.LBE24
	.8byte	.LBB25
	.8byte	.LBE25
	.8byte	0
	.8byte	0
	.8byte	.LBB26
	.8byte	.LBE26
	.8byte	.LBB56
	.8byte	.LBE56
	.8byte	0
	.8byte	0
	.8byte	.LBB29
	.8byte	.LBE29
	.8byte	.LBB32
	.8byte	.LBE32
	.8byte	0
	.8byte	0
	.8byte	.LBB34
	.8byte	.LBE34
	.8byte	.LBB57
	.8byte	.LBE57
	.8byte	0
	.8byte	0
	.8byte	.LBB39
	.8byte	.LBE39
	.8byte	.LBB52
	.8byte	.LBE52
	.8byte	.LBB53
	.8byte	.LBE53
	.8byte	0
	.8byte	0
	.8byte	.LBB41
	.8byte	.LBE41
	.8byte	.LBB43
	.8byte	.LBE43
	.8byte	.LBB44
	.8byte	.LBE44
	.8byte	.LBB48
	.8byte	.LBE48
	.8byte	0
	.8byte	0
	.8byte	.LBB45
	.8byte	.LBE45
	.8byte	.LBB49
	.8byte	.LBE49
	.8byte	0
	.8byte	0
	.8byte	.LBB64
	.8byte	.LBE64
	.8byte	.LBB71
	.8byte	.LBE71
	.8byte	.LBB73
	.8byte	.LBE73
	.8byte	.LBB75
	.8byte	.LBE75
	.8byte	0
	.8byte	0
	.8byte	.Ltext0
	.8byte	.Letext0
	.8byte	.LFB3591
	.8byte	.LFE3591
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF251:
	.string	"mode_version"
.LASF166:
	.string	"zone_watermarks"
.LASF37:
	.string	"ADDR_COMPAT_LAYOUT"
.LASF79:
	.string	"RSEQ_EVENT_PREEMPT_BIT"
.LASF208:
	.string	"DQST_ALLOC_DQUOTS"
.LASF309:
	.string	"drivers/gpu/drm/rockchip/ebc-linux/wflut/pvi_waveform.c"
.LASF210:
	.string	"DQST_SYNCS"
.LASF169:
	.string	"WMARK_HIGH"
.LASF106:
	.string	"node_stat_item"
.LASF88:
	.string	"MIGRATE_HIGHATOMIC"
.LASF47:
	.string	"HRTIMER_BASE_BOOTTIME"
.LASF102:
	.string	"NR_BOUNCE"
.LASF278:
	.string	"output"
.LASF57:
	.string	"N_NORMAL_MEMORY"
.LASF108:
	.string	"NR_INACTIVE_ANON"
.LASF35:
	.string	"FDPIC_FUNCPTRS"
.LASF201:
	.string	"DQF_SYS_FILE_B"
.LASF126:
	.string	"WORKINGSET_RESTORE_FILE"
.LASF292:
	.string	"temp_num"
.LASF147:
	.string	"NR_FOLL_PIN_RELEASED"
.LASF211:
	.string	"_DQST_DQSTAT_LAST"
.LASF64:
	.string	"MM_ANONPAGES"
.LASF310:
	.string	"/home6/cmy/linux6.1/kernel"
.LASF266:
	.string	"temperture"
.LASF270:
	.string	"pvi_global_waveform"
.LASF180:
	.string	"__SD_BALANCE_EXEC"
.LASF223:
	.string	"WF_TYPE_GLR16"
.LASF62:
	.string	"NR_NODE_STATES"
.LASF119:
	.string	"WORKINGSET_REFAULT_ANON"
.LASF121:
	.string	"WORKINGSET_ACTIVATE_BASE"
.LASF150:
	.string	"NR_SECONDARY_PAGETABLE"
.LASF45:
	.string	"HRTIMER_BASE_MONOTONIC"
.LASF73:
	.string	"perf_event_task_context"
.LASF24:
	.string	"ARM64_VEC_SVE"
.LASF269:
	.string	"maxpic"
.LASF32:
	.string	"PIDTYPE_MAX"
.LASF123:
	.string	"WORKINGSET_ACTIVATE_FILE"
.LASF249:
	.string	"fpl_platform"
.LASF36:
	.string	"MMAP_PAGE_ZERO"
.LASF299:
	.string	"need_pixel"
.LASF240:
	.string	"wf_lut_ops"
.LASF293:
	.string	"level"
.LASF107:
	.string	"NR_LRU_BASE"
.LASF280:
	.string	"stype"
.LASF111:
	.string	"NR_ACTIVE_FILE"
.LASF41:
	.string	"WHOLE_SECONDS"
.LASF300:
	.string	"oldpic"
.LASF287:
	.string	"mode"
.LASF225:
	.string	"WF_TYPE_A2"
.LASF304:
	.string	"out_org"
.LASF194:
	.string	"kmalloc_cache_type"
.LASF78:
	.string	"rseq_event_mask_bits"
.LASF76:
	.string	"perf_sw_context"
.LASF237:
	.string	"EBC_UPDATE_FULL"
.LASF125:
	.string	"WORKINGSET_RESTORE_ANON"
.LASF190:
	.string	"__SD_PREFER_SIBLING"
.LASF148:
	.string	"NR_KERNEL_STACK_KB"
.LASF271:
	.string	"need_pic"
.LASF244:
	.string	"pvi_waveform"
.LASF184:
	.string	"__SD_ASYM_CPUCAPACITY"
.LASF258:
	.string	"frame_rate"
.LASF39:
	.string	"ADDR_LIMIT_32BIT"
.LASF262:
	.string	"unknown1"
.LASF265:
	.string	"unknown2"
.LASF17:
	.string	"__int128 unsigned"
.LASF157:
	.string	"LRU_ACTIVE_FILE"
.LASF245:
	.string	"checksum"
.LASF34:
	.string	"ADDR_NO_RANDOMIZE"
.LASF306:
	.string	"count"
.LASF163:
	.string	"VMSCAN_THROTTLE_NOPROGRESS"
.LASF136:
	.string	"NR_SHMEM_PMDMAPPED"
.LASF222:
	.string	"WF_TYPE_GL16"
.LASF11:
	.string	"long long unsigned int"
.LASF255:
	.string	"panel_size"
.LASF285:
	.string	"pvi_get_wf_frm_num"
.LASF241:
	.string	"wf_lut_t"
.LASF42:
	.string	"STICKY_TIMEOUTS"
.LASF118:
	.string	"WORKINGSET_REFAULT_BASE"
.LASF83:
	.string	"migratetype"
.LASF294:
	.string	"get_wf_mode_index"
.LASF156:
	.string	"LRU_INACTIVE_FILE"
.LASF120:
	.string	"WORKINGSET_REFAULT_FILE"
.LASF177:
	.string	"CPU_NEWLY_IDLE"
.LASF1:
	.string	"char"
.LASF183:
	.string	"__SD_WAKE_AFFINE"
.LASF185:
	.string	"__SD_ASYM_CPUCAPACITY_FULL"
.LASF92:
	.string	"zone_stat_item"
.LASF187:
	.string	"__SD_SHARE_PKG_RESOURCES"
.LASF305:
	.string	"value"
.LASF103:
	.string	"NR_ZSPAGES"
.LASF85:
	.string	"MIGRATE_MOVABLE"
.LASF44:
	.string	"hrtimer_base_type"
.LASF54:
	.string	"node_states"
.LASF207:
	.string	"DQST_CACHE_HITS"
.LASF219:
	.string	"WF_TYPE_GRAY2"
.LASF220:
	.string	"WF_TYPE_GRAY4"
.LASF176:
	.string	"CPU_NOT_IDLE"
.LASF94:
	.string	"NR_ZONE_LRU_BASE"
.LASF50:
	.string	"HRTIMER_BASE_REALTIME_SOFT"
.LASF290:
	.string	"offset"
.LASF46:
	.string	"HRTIMER_BASE_REALTIME"
.LASF267:
	.string	"current_stack_pointer"
.LASF142:
	.string	"NR_DIRTIED"
.LASF16:
	.string	"_Bool"
.LASF203:
	.string	"DQST_LOOKUPS"
.LASF149:
	.string	"NR_PAGETABLE"
.LASF128:
	.string	"NR_ANON_MAPPED"
.LASF171:
	.string	"NR_WMARK"
.LASF283:
	.string	"mode_index"
.LASF204:
	.string	"DQST_DROPS"
.LASF140:
	.string	"NR_VMSCAN_WRITE"
.LASF26:
	.string	"ARM64_VEC_MAX"
.LASF288:
	.string	"pvi_wf"
.LASF308:
	.ascii	"GNU C11 10.3.1 20210621 -mlittle-endian -mgeneral-regs-only "
	.ascii	"-mabi=lp64 -mbranch-protection=pac-ret+leaf -mstack-protecto"
	.ascii	"r-guard=sysreg -mstack-protector-guard-reg=sp_el0 -mstack-pr"
	.ascii	"otector-guard-offset=1280 -g -Os -std=gnu11 -fno-strict-alia"
	.ascii	"sing -fno-common -fshort-wchar -fno-PIE -fno-asynchronous-un"
	.ascii	"wind-tables -fno-unwind"
	.string	"-tables -fno-delete-null-pointer-checks -fno-allow-store-data-races -fstack-protector-strong -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-stack-clash-protection -fpatchable-function-entry=2 -fno-strict-overflow -fstack-check=no -fconserve-stack"
.LASF286:
	.string	"waveform_file"
.LASF13:
	.string	"true"
.LASF113:
	.string	"NR_SLAB_RECLAIMABLE_B"
.LASF215:
	.string	"SB_FREEZE_FS"
.LASF216:
	.string	"SB_FREEZE_COMPLETE"
.LASF289:
	.string	"wf_data"
.LASF303:
	.string	"israr"
.LASF279:
	.string	"lut_type"
.LASF178:
	.string	"CPU_MAX_IDLE_TYPES"
.LASF257:
	.string	"wfm_rev"
.LASF236:
	.string	"EBC_UPDATE_PART"
.LASF141:
	.string	"NR_VMSCAN_IMMEDIATE"
.LASF129:
	.string	"NR_FILE_MAPPED"
.LASF164:
	.string	"VMSCAN_THROTTLE_CONGESTED"
.LASF122:
	.string	"WORKINGSET_ACTIVATE_ANON"
.LASF144:
	.string	"NR_THROTTLED_WRITTEN"
.LASF152:
	.string	"NR_VM_NODE_STAT_ITEMS"
.LASF227:
	.string	"PVI_WF_MAX"
.LASF112:
	.string	"NR_UNEVICTABLE"
.LASF273:
	.string	"waveform"
.LASF97:
	.string	"NR_ZONE_INACTIVE_FILE"
.LASF139:
	.string	"NR_ANON_THPS"
.LASF138:
	.string	"NR_FILE_PMDMAPPED"
.LASF224:
	.string	"WF_TYPE_GLD16"
.LASF162:
	.string	"VMSCAN_THROTTLE_ISOLATED"
.LASF109:
	.string	"NR_ACTIVE_ANON"
.LASF243:
	.string	"data"
.LASF27:
	.string	"pid_type"
.LASF2:
	.string	"unsigned int"
.LASF311:
	.string	"pvi_wf_setup"
.LASF7:
	.string	"__u16"
.LASF56:
	.string	"N_ONLINE"
.LASF313:
	.string	"_printk"
.LASF48:
	.string	"HRTIMER_BASE_TAI"
.LASF226:
	.string	"WF_TYPE_GCC16"
.LASF198:
	.string	"KMALLOC_DMA"
.LASF274:
	.string	"pvi_mode_table"
.LASF291:
	.string	"get_wf_temp_index"
.LASF104:
	.string	"NR_FREE_CMA_PAGES"
.LASF253:
	.string	"wf_subversion"
.LASF212:
	.string	"SB_UNFROZEN"
.LASF146:
	.string	"NR_FOLL_PIN_ACQUIRED"
.LASF58:
	.string	"N_HIGH_MEMORY"
.LASF60:
	.string	"N_CPU"
.LASF238:
	.string	"get_version"
.LASF179:
	.string	"__SD_BALANCE_NEWIDLE"
.LASF10:
	.string	"long long int"
.LASF145:
	.string	"NR_KERNEL_MISC_RECLAIMABLE"
.LASF82:
	.string	"vm_fault_t"
.LASF25:
	.string	"ARM64_VEC_SME"
.LASF100:
	.string	"NR_ZONE_WRITE_PENDING"
.LASF295:
	.string	"pvi_modes"
.LASF213:
	.string	"SB_FREEZE_WRITE"
.LASF132:
	.string	"NR_WRITEBACK"
.LASF151:
	.string	"NR_SWAPCACHE"
.LASF15:
	.string	"bool"
.LASF260:
	.string	"vcom_offset"
.LASF71:
	.string	"RSEQ_CS_FLAG_NO_RESTART_ON_MIGRATE_BIT"
.LASF65:
	.string	"MM_SWAPENTS"
.LASF90:
	.string	"MIGRATE_ISOLATE"
.LASF268:
	.string	"waveformdata"
.LASF282:
	.string	"temp_index"
.LASF80:
	.string	"RSEQ_EVENT_SIGNAL_BIT"
.LASF277:
	.string	"pvi_wf_get_lut"
.LASF89:
	.string	"MIGRATE_CMA"
.LASF234:
	.string	"EBC_REFRESH_TRANS"
.LASF33:
	.string	"UNAME26"
.LASF59:
	.string	"N_MEMORY"
.LASF75:
	.string	"perf_hw_context"
.LASF172:
	.string	"ZONELIST_FALLBACK"
.LASF19:
	.string	"PCPU_FC_EMBED"
.LASF256:
	.string	"amepd_part_number"
.LASF21:
	.string	"PCPU_FC_NR"
.LASF154:
	.string	"LRU_INACTIVE_ANON"
.LASF116:
	.string	"NR_ISOLATED_FILE"
.LASF272:
	.string	"pvi_wf_ops"
.LASF205:
	.string	"DQST_READS"
.LASF68:
	.string	"rseq_cs_flags_bit"
.LASF159:
	.string	"NR_LRU_LISTS"
.LASF153:
	.string	"lru_list"
.LASF301:
	.string	"newpic"
.LASF63:
	.string	"MM_FILEPAGES"
.LASF74:
	.string	"perf_invalid_context"
.LASF214:
	.string	"SB_FREEZE_PAGEFAULT"
.LASF250:
	.string	"fpl_lot"
.LASF124:
	.string	"WORKINGSET_RESTORE_BASE"
.LASF199:
	.string	"NR_KMALLOC_TYPES"
.LASF307:
	.string	"pixel"
.LASF14:
	.string	"long int"
.LASF9:
	.string	"__u32"
.LASF30:
	.string	"PIDTYPE_PGID"
.LASF264:
	.string	"temperaturenumber"
.LASF127:
	.string	"WORKINGSET_NODERECLAIM"
.LASF195:
	.string	"KMALLOC_NORMAL"
.LASF70:
	.string	"RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL_BIT"
.LASF228:
	.string	"WF_TYPE_AUTO"
.LASF5:
	.string	"short int"
.LASF232:
	.string	"EBC_REFRESH_NORM"
.LASF52:
	.string	"HRTIMER_BASE_TAI_SOFT"
.LASF133:
	.string	"NR_WRITEBACK_TEMP"
.LASF98:
	.string	"NR_ZONE_ACTIVE_FILE"
.LASF170:
	.string	"WMARK_PROMO"
.LASF193:
	.string	"__SD_FLAG_CNT"
.LASF202:
	.string	"DQF_PRIVATE"
.LASF302:
	.string	"frame_count"
.LASF209:
	.string	"DQST_FREE_DQUOTS"
.LASF297:
	.string	"decodewaveform"
.LASF95:
	.string	"NR_ZONE_INACTIVE_ANON"
.LASF175:
	.string	"CPU_IDLE"
.LASF105:
	.string	"NR_VM_ZONE_STAT_ITEMS"
.LASF117:
	.string	"WORKINGSET_NODES"
.LASF182:
	.string	"__SD_BALANCE_WAKE"
.LASF110:
	.string	"NR_INACTIVE_FILE"
.LASF200:
	.string	"DQF_ROOT_SQUASH_B"
.LASF22:
	.string	"pcpu_fc"
.LASF81:
	.string	"RSEQ_EVENT_MIGRATE_BIT"
.LASF114:
	.string	"NR_SLAB_UNRECLAIMABLE_B"
.LASF20:
	.string	"PCPU_FC_PAGE"
.LASF239:
	.string	"get_lut"
.LASF77:
	.string	"perf_nr_task_contexts"
.LASF235:
	.string	"ebc_update_mode_t"
.LASF134:
	.string	"NR_SHMEM"
.LASF49:
	.string	"HRTIMER_BASE_MONOTONIC_SOFT"
.LASF51:
	.string	"HRTIMER_BASE_BOOTTIME_SOFT"
.LASF230:
	.string	"WF_TYPE_GRAY16"
.LASF91:
	.string	"MIGRATE_TYPES"
.LASF0:
	.string	"long unsigned int"
.LASF6:
	.string	"__u8"
.LASF28:
	.string	"PIDTYPE_PID"
.LASF231:
	.string	"ebc_refresh_mode_t"
.LASF23:
	.string	"vec_type"
.LASF276:
	.string	"pvi_wf_get_version"
.LASF130:
	.string	"NR_FILE_PAGES"
.LASF55:
	.string	"N_POSSIBLE"
.LASF247:
	.string	"serial"
.LASF66:
	.string	"MM_SHMEMPAGES"
.LASF275:
	.string	"spi_id_buffer"
.LASF281:
	.string	"sftemp"
.LASF192:
	.string	"__SD_NUMA"
.LASF101:
	.string	"NR_MLOCK"
.LASF242:
	.string	"frame_num"
.LASF38:
	.string	"READ_IMPLIES_EXEC"
.LASF4:
	.string	"unsigned char"
.LASF86:
	.string	"MIGRATE_RECLAIMABLE"
.LASF263:
	.string	"modenumber"
.LASF160:
	.string	"vmscan_throttle_state"
.LASF233:
	.string	"EBC_REFRESH_MONO"
.LASF87:
	.string	"MIGRATE_PCPTYPES"
.LASF12:
	.string	"false"
.LASF252:
	.string	"wf_version"
.LASF40:
	.string	"SHORT_INODE"
.LASF229:
	.string	"WF_TYPE_MAX"
.LASF196:
	.string	"KMALLOC_CGROUP"
.LASF137:
	.string	"NR_FILE_THPS"
.LASF246:
	.string	"file_length"
.LASF99:
	.string	"NR_ZONE_UNEVICTABLE"
.LASF93:
	.string	"NR_FREE_PAGES"
.LASF298:
	.string	"max_pixel"
.LASF221:
	.string	"WF_TYPE_GC16"
.LASF72:
	.string	"TASK_COMM_LEN"
.LASF261:
	.string	"xwia"
.LASF115:
	.string	"NR_ISOLATED_ANON"
.LASF284:
	.string	"pvi_wf_input"
.LASF254:
	.string	"wf_type"
.LASF186:
	.string	"__SD_SHARE_CPUCAPACITY"
.LASF143:
	.string	"NR_WRITTEN"
.LASF174:
	.string	"cpu_idle_type"
.LASF173:
	.string	"MAX_ZONELISTS"
.LASF18:
	.string	"PCPU_FC_AUTO"
.LASF165:
	.string	"NR_VMSCAN_THROTTLE"
.LASF69:
	.string	"RSEQ_CS_FLAG_NO_RESTART_ON_PREEMPT_BIT"
.LASF3:
	.string	"signed char"
.LASF158:
	.string	"LRU_UNEVICTABLE"
.LASF218:
	.string	"WF_TYPE_RESET"
.LASF43:
	.string	"ADDR_LIMIT_3GB"
.LASF8:
	.string	"short unsigned int"
.LASF197:
	.string	"KMALLOC_RECLAIM"
.LASF248:
	.string	"run_type"
.LASF296:
	.string	"parse_mode_version"
.LASF312:
	.string	"__func__"
.LASF259:
	.string	"reserved"
.LASF155:
	.string	"LRU_ACTIVE_ANON"
.LASF135:
	.string	"NR_SHMEM_THPS"
.LASF181:
	.string	"__SD_BALANCE_FORK"
.LASF191:
	.string	"__SD_OVERLAP"
.LASF188:
	.string	"__SD_SERIALIZE"
.LASF29:
	.string	"PIDTYPE_TGID"
.LASF84:
	.string	"MIGRATE_UNMOVABLE"
.LASF131:
	.string	"NR_FILE_DIRTY"
.LASF53:
	.string	"HRTIMER_MAX_CLOCK_BASES"
.LASF217:
	.string	"wf_lut_type"
.LASF206:
	.string	"DQST_WRITES"
.LASF67:
	.string	"NR_MM_COUNTERS"
.LASF161:
	.string	"VMSCAN_THROTTLE_WRITEBACK"
.LASF61:
	.string	"N_GENERIC_INITIATOR"
.LASF31:
	.string	"PIDTYPE_SID"
.LASF167:
	.string	"WMARK_MIN"
.LASF96:
	.string	"NR_ZONE_ACTIVE_ANON"
.LASF168:
	.string	"WMARK_LOW"
.LASF189:
	.string	"__SD_ASYM_PACKING"
	.ident	"GCC: (GNU Toolchain for the A-profile Architecture 10.3-2021.07 (arm-10.29)) 10.3.1 20210621"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align	3
	.word	4
	.word	16
	.word	5
	.string	"GNU"
	.word	3221225472
	.word	4
	.word	2
	.align	3

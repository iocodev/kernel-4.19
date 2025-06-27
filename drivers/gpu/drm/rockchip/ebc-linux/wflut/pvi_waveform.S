	.arch armv7-a
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 2
	.file	"pvi_waveform.c"
	.text
.Ltext0:
	.syntax unified
	.syntax unified
	.section	.rodata.pvi_wf_get_lut.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"pvi: unspport PVI waveform type\000"
.LC1:
	.ascii	"pvi: %s %d check error\012\000"
.LC2:
	.ascii	"\0013pvi: decodec waveform error, framenum err\012\000"
	.global	__aeabi_uidivmod
.LC3:
	.ascii	"\0014fixed wf: %d -> %d\012\000"
.LC4:
	.ascii	"pvi waveform get frame number failed\012\000"
	.thumb
	.syntax unified
	.section	.text.pvi_wf_get_lut,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pvi_wf_get_lut, %function
pvi_wf_get_lut:
	.fnstart
.LVL0:
.LFB2422:
	.file 1 "drivers/gpu/drm/rockchip/ebc-linux/wflut/pvi_waveform.c"
	.loc 1 258 1 view -0
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 259 2 view .LVU1
	.loc 1 260 2 view .LVU2
	.loc 1 261 2 view .LVU3
	.loc 1 262 2 view .LVU4
	.loc 1 263 2 view .LVU5
	.loc 1 265 2 view .LVU6
	.loc 1 258 1 is_stmt 0 view .LVU7
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI0:
	mov	r7, r0
	.loc 1 265 6 view .LVU8
	ldr	r4, .L54
	.loc 1 258 1 view .LVU9
	.pad #44
	sub	sp, sp, #44
.LCFI1:
	.loc 1 258 1 view .LVU10
	mov	r8, r1
	.loc 1 265 6 view .LVU11
	ldr	r0, [r4]
.LVL1:
	.loc 1 258 1 view .LVU12
	str	r2, [sp]
	.loc 1 265 5 view .LVU13
	cmp	r0, #0
	beq	.L32
	.loc 1 268 2 is_stmt 1 view .LVU14
	.loc 1 268 5 is_stmt 0 view .LVU15
	cbnz	r7, .L3
	.loc 1 268 14 discriminator 1 view .LVU16
	ldr	r2, [r7, #4]
.LVL2:
	.loc 1 268 14 discriminator 1 view .LVU17
	cmp	r2, #0
	beq	.L33
.L3:
	.loc 1 273 2 is_stmt 1 view .LVU18
	.loc 1 273 19 is_stmt 0 view .LVU19
	ldr	r2, .L54+4
	ldr	r1, [sp]
.LVL3:
	.loc 1 273 19 view .LVU20
	smull	r1, r5, r1, r2
	ldr	r1, [sp]
	sub	r5, r5, r1, asr #31
	.loc 1 273 35 view .LVU21
	ldr	r1, .L54+8
	ldr	r6, [r1]
	smull	r2, r1, r6, r2
	sub	r2, r1, r6, asr #31
	.loc 1 273 5 view .LVU22
	cmp	r5, r2
	bne	.L4
	.loc 1 273 51 discriminator 1 view .LVU23
	ldr	r2, .L54+12
	.loc 1 273 41 discriminator 1 view .LVU24
	ldr	r2, [r2]
	cmp	r2, r8
	beq	.L34
.L4:
	.loc 1 276 2 is_stmt 1 view .LVU25
	.loc 1 276 11 is_stmt 0 view .LVU26
	ldr	r5, .L54+16
.LBB20:
.LBB21:
	.loc 1 166 9 view .LVU27
	mov	r9, #0
.LBE21:
.LBE20:
	.loc 1 279 15 view .LVU28
	ldr	r6, .L54+20
.LBB25:
.LBB22:
	.loc 1 162 6 view .LVU29
	ldrb	r2, [r0, #38]	@ zero_extendqisi2
.LBE22:
.LBE25:
	.loc 1 276 11 view .LVU30
	str	r3, [r5]
	.loc 1 279 2 is_stmt 1 view .LVU31
	.loc 1 279 15 is_stmt 0 view .LVU32
	ldr	r3, [r7, #4]
.LVL4:
	.loc 1 279 15 view .LVU33
	str	r3, [r6]
	.loc 1 280 2 is_stmt 1 view .LVU34
.LVL5:
.LBB26:
.LBI20:
	.loc 1 160 12 view .LVU35
.LBB23:
	.loc 1 162 2 view .LVU36
	.loc 1 163 2 view .LVU37
	.loc 1 164 2 view .LVU38
	.loc 1 166 2 view .LVU39
	.loc 1 166 2 is_stmt 0 view .LVU40
	add	r3, r0, #48
.LVL6:
.L5:
	.loc 1 166 14 is_stmt 1 view .LVU41
	.loc 1 166 2 is_stmt 0 view .LVU42
	cmp	r2, r9
	bgt	.L7
	.loc 1 173 2 is_stmt 1 view .LVU43
	.loc 1 174 3 view .LVU44
	.loc 1 174 9 is_stmt 0 view .LVU45
	ite	eq
	addeq	r9, r9, #-1
.LVL7:
	.loc 1 163 6 view .LVU46
	movne	r9, #-1
.LVL8:
.L6:
	.loc 1 176 2 is_stmt 1 view .LVU47
	.loc 1 176 2 is_stmt 0 view .LVU48
.LBE23:
.LBE26:
	.loc 1 281 2 is_stmt 1 view .LVU49
.LBB27:
.LBI27:
	.loc 1 142 11 view .LVU50
.LBB28:
	.loc 1 144 2 view .LVU51
	.loc 1 145 2 view .LVU52
	.loc 1 147 2 view .LVU53
	.loc 1 147 5 is_stmt 0 view .LVU54
	cmp	r8, #10
	bls	.L8
	.loc 1 148 3 is_stmt 1 view .LVU55
.LBB29:
	.loc 1 148 3 view .LVU56
	.loc 1 148 3 view .LVU57
	.loc 1 148 3 view .LVU58
	.loc 1 148 3 view .LVU59
	ldr	r0, .L54+24
	bl	_printk
.LVL9:
	.loc 1 148 3 is_stmt 0 view .LVU60
.LBE29:
	.loc 1 149 3 is_stmt 1 view .LVU61
	.loc 1 149 10 is_stmt 0 view .LVU62
	movs	r3, #255
.L9:
.LVL10:
	.loc 1 149 10 view .LVU63
.LBE28:
.LBE27:
	.loc 1 282 2 is_stmt 1 view .LVU64
.LBB37:
.LBI37:
	.loc 1 179 12 view .LVU65
.LBB38:
	.loc 1 181 2 view .LVU66
	.loc 1 181 17 is_stmt 0 view .LVU67
	ldr	r4, [r4]
.LVL11:
	.loc 1 182 2 is_stmt 1 view .LVU68
	.loc 1 183 2 view .LVU69
	.loc 1 185 2 view .LVU70
	.loc 1 185 30 is_stmt 0 view .LVU71
	ldrb	r2, [r4, #32]	@ zero_extendqisi2
.LVL12:
	.loc 1 185 30 view .LVU72
	add	r2, r2, r3, lsl #2
.LVL13:
	.loc 1 185 10 view .LVU73
	adds	r1, r4, r2
.LVL14:
	.loc 1 186 2 is_stmt 1 view .LVU74
	.loc 1 186 29 is_stmt 0 view .LVU75
	ldrb	r3, [r4, r2]	@ zero_extendqisi2
.LVL15:
	.loc 1 186 42 view .LVU76
	ldrb	ip, [r1, #1]	@ zero_extendqisi2
	.loc 1 186 13 view .LVU77
	ldrb	r0, [r1, #3]	@ zero_extendqisi2
	.loc 1 186 55 view .LVU78
	ldrb	r1, [r1, #2]	@ zero_extendqisi2
.LVL16:
	.loc 1 186 33 view .LVU79
	add	r3, r3, ip
	.loc 1 186 46 view .LVU80
	add	r3, r3, r1
	.loc 1 186 60 view .LVU81
	uxtb	r3, r3
	.loc 1 186 5 view .LVU82
	cmp	r0, r3
	beq	.L15
	.loc 1 187 3 is_stmt 1 view .LVU83
.LBB39:
	.loc 1 187 3 view .LVU84
	.loc 1 187 3 view .LVU85
	.loc 1 187 3 view .LVU86
	.loc 1 187 3 view .LVU87
	movs	r2, #187
.LVL17:
.L53:
	.loc 1 187 3 is_stmt 0 view .LVU88
.LBE39:
.LBB40:
	.loc 1 194 3 view .LVU89
	ldr	r1, .L54+28
	ldr	r0, .L54+32
	bl	_printk
.LVL18:
.LBE40:
	.loc 1 195 3 is_stmt 1 view .LVU90
	.loc 1 195 3 is_stmt 0 view .LVU91
.LBE38:
.LBE37:
	.loc 1 283 2 is_stmt 1 view .LVU92
.L16:
	.loc 1 284 3 view .LVU93
.LBB60:
	.loc 1 284 3 view .LVU94
	.loc 1 284 3 view .LVU95
	.loc 1 284 3 view .LVU96
	.loc 1 284 3 view .LVU97
	ldr	r0, .L54+36
	bl	_printk
.LVL19:
.LBE60:
	.loc 1 285 3 view .LVU98
	.loc 1 285 10 is_stmt 0 view .LVU99
	mvn	r0, #4
.L1:
	.loc 1 301 1 view .LVU100
	add	sp, sp, #44
.LCFI2:
.LVL20:
	.loc 1 301 1 view .LVU101
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL21:
.L7:
.LCFI3:
.LBB61:
.LBB24:
	.loc 1 167 3 is_stmt 1 view .LVU102
	.loc 1 167 52 is_stmt 0 view .LVU103
	ldrb	r1, [r3], #1	@ zero_extendqisi2
	.loc 1 167 6 view .LVU104
	ldr	ip, [sp]
	cmp	ip, r1
	ble	.L6
	.loc 1 166 28 is_stmt 1 view .LVU105
	.loc 1 166 29 is_stmt 0 view .LVU106
	add	r9, r9, #1
.LVL22:
	.loc 1 166 29 view .LVU107
	b	.L5
.LVL23:
.L8:
	.loc 1 166 29 view .LVU108
.LBE24:
.LBE61:
.LBB62:
.LBB36:
	.loc 1 150 9 is_stmt 1 view .LVU109
.LBB30:
.LBB31:
	.loc 1 127 18 is_stmt 0 view .LVU110
	ldrb	r2, [r0, #16]	@ zero_extendqisi2
.LBE31:
.LBE30:
	.loc 1 150 12 view .LVU111
	ite	ne
	movne	r1, r8
	moveq	r1, #3
.LVL24:
	.loc 1 155 2 is_stmt 1 view .LVU112
.LBB34:
.LBI30:
	.loc 1 124 18 view .LVU113
.LBB32:
	.loc 1 126 2 view .LVU114
	.loc 1 127 2 view .LVU115
	cmp	r2, #35
	beq	.L37
	bhi	.L12
	cmp	r2, #18
	beq	.L38
	bhi	.L13
	.loc 1 128 23 is_stmt 0 view .LVU116
	ldr	r3, .L54+40
	sub	r0, r3, #80
.LVL25:
	.loc 1 128 23 view .LVU117
	cmp	r2, #9
	it	eq
	moveq	r3, r0
.L11:
.LVL26:
	.loc 1 139 2 is_stmt 1 view .LVU118
	.loc 1 139 2 is_stmt 0 view .LVU119
.LBE32:
.LBE34:
	.loc 1 157 2 is_stmt 1 view .LVU120
	.loc 1 157 18 is_stmt 0 view .LVU121
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
.LVL27:
	.loc 1 157 18 view .LVU122
	b	.L9
.LVL28:
.L13:
.LBB35:
.LBB33:
	.loc 1 127 2 view .LVU123
	cmp	r2, #22
	beq	.L40
	.loc 1 131 34 view .LVU124
	ldr	r3, .L54+40
	sub	r0, r3, #50
.LVL29:
	.loc 1 131 34 view .LVU125
	cmp	r2, #25
	it	eq
	moveq	r3, r0
	b	.L11
.LVL30:
.L12:
	.loc 1 127 2 view .LVU126
	cmp	r2, #84
	beq	.L42
	bhi	.L14
	cmp	r2, #67
	beq	.L43
	.loc 1 133 23 view .LVU127
	ldr	r3, .L54+40
	sub	r0, r3, #30
.LVL31:
	.loc 1 133 23 view .LVU128
	cmp	r2, #72
	it	eq
	moveq	r3, r0
	b	.L11
.LVL32:
.L14:
	.loc 1 135 23 view .LVU129
	ldr	r3, .L54+40
	sub	r0, r3, #10
.LVL33:
	.loc 1 135 23 view .LVU130
	cmp	r2, #114
	it	eq
	moveq	r3, r0
	b	.L11
.LVL34:
.L37:
	.loc 1 132 23 view .LVU131
	ldr	r3, .L54+44
	b	.L11
.L38:
	.loc 1 127 2 view .LVU132
	ldr	r3, .L54+48
	b	.L11
.L40:
	.loc 1 130 23 view .LVU133
	ldr	r3, .L54+52
	b	.L11
.L42:
	.loc 1 134 23 view .LVU134
	ldr	r3, .L54+56
	b	.L11
.L43:
	.loc 1 131 34 view .LVU135
	ldr	r3, .L54+60
	b	.L11
.LVL35:
.L15:
	.loc 1 131 34 view .LVU136
.LBE33:
.LBE35:
.LBE36:
.LBE62:
.LBB63:
.LBB59:
	.loc 1 190 2 is_stmt 1 view .LVU137
	.loc 1 192 2 view .LVU138
	.loc 1 190 9 is_stmt 0 view .LVU139
	ldr	r3, [r4, r2]
	bic	r3, r3, #-16777216
.LVL36:
	.loc 1 192 30 view .LVU140
	add	r9, r3, r9, lsl #2
.LVL37:
	.loc 1 192 10 view .LVU141
	add	r2, r4, r9
.LVL38:
	.loc 1 193 2 is_stmt 1 view .LVU142
	.loc 1 193 29 is_stmt 0 view .LVU143
	ldrb	r3, [r4, r9]	@ zero_extendqisi2
.LVL39:
	.loc 1 193 42 view .LVU144
	ldrb	r0, [r2, #1]	@ zero_extendqisi2
	.loc 1 193 13 view .LVU145
	ldrb	r1, [r2, #3]	@ zero_extendqisi2
	.loc 1 193 55 view .LVU146
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
.LVL40:
	.loc 1 193 33 view .LVU147
	add	r3, r3, r0
	.loc 1 193 46 view .LVU148
	add	r3, r3, r2
	.loc 1 193 60 view .LVU149
	uxtb	r3, r3
	.loc 1 193 5 view .LVU150
	cmp	r1, r3
	beq	.L17
	.loc 1 194 3 is_stmt 1 view .LVU151
.LBB41:
	.loc 1 194 3 view .LVU152
	.loc 1 194 3 view .LVU153
	.loc 1 194 3 view .LVU154
	.loc 1 194 3 view .LVU155
	movs	r2, #194
	b	.L53
.L17:
.LBE41:
	.loc 1 197 2 view .LVU156
.LVL41:
	.loc 1 199 2 view .LVU157
	.loc 1 197 9 is_stmt 0 view .LVU158
	ldr	r3, [r4, r9]
.LBB42:
.LBB43:
	.loc 1 49 6 view .LVU159
	movs	r2, #0
.LBE43:
.LBE42:
	.loc 1 200 9 view .LVU160
	ldr	r10, [r6]
.LBB56:
.LBB53:
	.loc 1 50 6 view .LVU161
	mov	r9, r2
.LVL42:
	.loc 1 50 6 view .LVU162
.LBE53:
.LBE56:
	.loc 1 197 9 view .LVU163
	bic	r3, r3, #-16777216
.LVL43:
	.loc 1 200 9 view .LVU164
	ldr	fp, [r5]
	.loc 1 199 10 view .LVU165
	add	r4, r4, r3
.LVL44:
	.loc 1 200 2 is_stmt 1 view .LVU166
	.loc 1 200 9 is_stmt 0 view .LVU167
	ldr	r3, .L54+64
.LVL45:
.LBB57:
.LBB54:
	.loc 1 48 6 view .LVU168
	mov	r5, r2
.LBE54:
.LBE57:
	.loc 1 200 9 view .LVU169
	str	r10, [sp, #12]
	ldr	r6, [r3]
.LVL46:
.LBB58:
.LBI42:
	.loc 1 46 12 is_stmt 1 view .LVU170
.LBB55:
	.loc 1 48 2 view .LVU171
	.loc 1 49 2 view .LVU172
	.loc 1 50 2 view .LVU173
	.loc 1 51 2 view .LVU174
	.loc 1 52 2 view .LVU175
	.loc 1 53 2 view .LVU176
	.loc 1 55 2 view .LVU177
.LBB44:
	.loc 1 56 3 view .LVU178
	.loc 1 57 3 view .LVU179
	.loc 1 59 3 view .LVU180
.LBE44:
	.loc 1 51 7 is_stmt 0 view .LVU181
	movs	r3, #1
	str	r3, [sp, #4]
.LVL47:
.L18:
.LBB46:
	.loc 1 64 3 is_stmt 1 view .LVU182
	.loc 1 64 9 is_stmt 0 view .LVU183
	ldrb	r1, [r4]	@ zero_extendqisi2
.LVL48:
	.loc 1 65 3 is_stmt 1 view .LVU184
	.loc 1 65 6 is_stmt 0 view .LVU185
	cmp	r1, #255
	beq	.L19
	.loc 1 67 10 is_stmt 1 view .LVU186
	.loc 1 67 13 is_stmt 0 view .LVU187
	cmp	r1, #252
	.loc 1 64 14 view .LVU188
	iteee	ne
	addne	r4, r4, #1
.LVL49:
	.loc 1 68 4 is_stmt 1 view .LVU189
	ldreq	r3, [sp, #4]
	.loc 1 69 10 is_stmt 0 view .LVU190
	ldrbeq	r1, [r4, #1]	@ zero_extendqisi2
.LVL50:
	.loc 1 69 15 view .LVU191
	addeq	r4, r4, #2
	.loc 1 68 4 view .LVU192
	itt	eq
	eoreq	r3, r3, #1
	streq	r3, [sp, #4]
.LVL51:
	.loc 1 69 4 is_stmt 1 view .LVU193
	.loc 1 72 3 view .LVU194
	.loc 1 72 6 is_stmt 0 view .LVU195
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L46
	.loc 1 73 4 is_stmt 1 view .LVU196
.LVL52:
	.loc 1 73 13 is_stmt 0 view .LVU197
	ldrb	r0, [r4], #1	@ zero_extendqisi2
.LVL53:
	.loc 1 73 10 view .LVU198
	adds	r3, r0, #1
.L52:
	.loc 1 57 7 view .LVU199
	str	r3, [sp, #16]
.LVL54:
	.loc 1 76 3 is_stmt 1 view .LVU200
	.loc 1 76 13 view .LVU201
	.loc 1 78 49 is_stmt 0 view .LVU202
	ubfx	r3, r1, #2, #2
.LVL55:
	.loc 1 78 49 view .LVU203
	str	r3, [sp, #20]
	.loc 1 79 49 view .LVU204
	ubfx	r3, r1, #4, #2
	str	r3, [sp, #24]
	.loc 1 80 34 view .LVU205
	lsrs	r3, r1, #6
	str	r3, [sp, #28]
	.loc 1 76 9 view .LVU206
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 77 42 view .LVU207
	and	r3, r1, #3
	str	r3, [sp, #32]
.LVL56:
.L24:
	.loc 1 77 4 is_stmt 1 view .LVU208
	.loc 1 77 34 is_stmt 0 view .LVU209
	ldr	r3, [sp, #12]
	.loc 1 77 18 view .LVU210
	lsls	r0, r5, #5
	.loc 1 77 34 view .LVU211
	str	r2, [sp, #36]
	adds	r1, r3, r2
	ldr	r3, [sp, #32]
	strb	r3, [r1, r0]
	.loc 1 78 4 is_stmt 1 view .LVU212
.LVL57:
	.loc 1 78 18 is_stmt 0 view .LVU213
	add	r0, r1, r5, lsl #5
	.loc 1 78 34 view .LVU214
	ldr	r3, [sp, #20]
	.loc 1 82 11 view .LVU215
	mov	r1, r6
	.loc 1 78 34 view .LVU216
	strb	r3, [r0, #32]
	.loc 1 79 4 is_stmt 1 view .LVU217
.LVL58:
	.loc 1 79 34 is_stmt 0 view .LVU218
	ldr	r3, [sp, #24]
	strb	r3, [r0, #64]
	.loc 1 80 4 is_stmt 1 view .LVU219
.LVL59:
	.loc 1 80 34 is_stmt 0 view .LVU220
	ldr	r3, [sp, #28]
	strb	r3, [r0, #96]
	.loc 1 82 4 is_stmt 1 view .LVU221
	.loc 1 82 11 is_stmt 0 view .LVU222
	adds	r0, r5, #4
.LVL60:
	.loc 1 82 11 view .LVU223
	bl	__aeabi_uidivmod
.LVL61:
	.loc 1 83 4 is_stmt 1 view .LVU224
	.loc 1 83 7 is_stmt 0 view .LVU225
	ldr	r2, [sp, #36]
	mov	r5, r1
	cbnz	r1, .L23
	.loc 1 84 5 is_stmt 1 view .LVU226
	.loc 1 84 12 is_stmt 0 view .LVU227
	adds	r0, r2, #1
	mov	r1, r6
.LVL62:
	.loc 1 84 12 view .LVU228
	bl	__aeabi_uidivmod
.LVL63:
	.loc 1 85 5 is_stmt 1 view .LVU229
	.loc 1 85 8 is_stmt 0 view .LVU230
	mov	r2, r1
	cbnz	r1, .L23
	.loc 1 86 6 is_stmt 1 view .LVU231
	.loc 1 87 10 is_stmt 0 view .LVU232
	ldr	r3, [sp, #12]
	.loc 1 86 17 view .LVU233
	add	r9, r9, #1
.LVL64:
	.loc 1 87 6 is_stmt 1 view .LVU234
	.loc 1 87 10 is_stmt 0 view .LVU235
	add	r3, r3, #1024
	str	r3, [sp, #12]
.LVL65:
.L23:
	.loc 1 76 22 is_stmt 1 view .LVU236
	.loc 1 76 23 is_stmt 0 view .LVU237
	ldr	r3, [sp, #8]
	.loc 1 76 3 view .LVU238
	ldr	r1, [sp, #16]
	.loc 1 76 23 view .LVU239
	adds	r3, r3, #1
	str	r3, [sp, #8]
.LVL66:
	.loc 1 76 13 is_stmt 1 view .LVU240
	.loc 1 76 3 is_stmt 0 view .LVU241
	cmp	r3, r1
	bne	.L24
	.loc 1 76 3 view .LVU242
.LBE46:
	.loc 1 53 2 is_stmt 1 view .LVU243
	.loc 1 55 2 view .LVU244
.LBB47:
	.loc 1 56 3 view .LVU245
.LVL67:
	.loc 1 57 3 view .LVU246
	.loc 1 59 3 view .LVU247
	.loc 1 59 6 is_stmt 0 view .LVU248
	cmp	r9, #254
	bls	.L18
	.loc 1 60 4 is_stmt 1 view .LVU249
.LBB45:
	.loc 1 60 4 view .LVU250
	.loc 1 60 4 view .LVU251
	.loc 1 60 4 view .LVU252
	.loc 1 60 4 view .LVU253
	ldr	r0, .L54+68
	bl	_printk
.LVL68:
	.loc 1 60 4 is_stmt 0 view .LVU254
.LBE45:
	.loc 1 61 4 is_stmt 1 view .LVU255
.L19:
	.loc 1 61 4 is_stmt 0 view .LVU256
.LBE47:
	.loc 1 94 2 is_stmt 1 view .LVU257
	.loc 1 94 5 is_stmt 0 view .LVU258
	cmp	r6, fp
	beq	.L26
.LBB48:
	.loc 1 95 3 is_stmt 1 view .LVU259
	.loc 1 95 7 is_stmt 0 view .LVU260
	cmp	r6, fp
.LBB49:
	.loc 1 97 3 view .LVU261
	ldr	r0, .L54+72
	mov	r2, fp
	mov	r1, r6
.LBE49:
	.loc 1 95 7 view .LVU262
	mov	r4, r6
	it	ge
	movge	r4, fp
.LVL69:
	.loc 1 96 3 is_stmt 1 view .LVU263
	.loc 1 97 3 view .LVU264
.LBB50:
	.loc 1 97 3 view .LVU265
	.loc 1 97 3 view .LVU266
	.loc 1 97 3 view .LVU267
	.loc 1 97 3 view .LVU268
	bl	_printk
.LVL70:
.LBE50:
	.loc 1 98 3 view .LVU269
	.loc 1 98 10 is_stmt 0 view .LVU270
	movs	r0, #0
.LVL71:
.L27:
	.loc 1 98 15 is_stmt 1 view .LVU271
	.loc 1 98 3 is_stmt 0 view .LVU272
	cmp	r0, r9
	beq	.L26
	.loc 1 98 3 view .LVU273
	mov	r3, r10
	.loc 1 101 39 view .LVU274
	rsb	r5, r10, #0
	.loc 1 99 16 view .LVU275
	movs	r1, #0
	b	.L30
.LVL72:
.L46:
	.loc 1 99 16 view .LVU276
.LBE48:
.LBB51:
	.loc 1 57 7 view .LVU277
	movs	r3, #1
	b	.L52
.LVL73:
.L28:
	.loc 1 57 7 view .LVU278
.LBE51:
.LBB52:
	.loc 1 101 6 is_stmt 1 view .LVU279
	.loc 1 101 39 is_stmt 0 view .LVU280
	ldrb	lr, [r5, r2, lsl #1]	@ zero_extendqisi2
	.loc 1 101 34 view .LVU281
	strb	lr, [r2], #1
	.loc 1 100 38 is_stmt 1 view .LVU282
.L29:
	.loc 1 100 22 view .LVU283
	.loc 1 100 5 is_stmt 0 view .LVU284
	cmp	ip, r2
	bne	.L28
	.loc 1 99 37 is_stmt 1 view .LVU285
	.loc 1 99 43 is_stmt 0 view .LVU286
	adds	r1, r1, #1
.LVL74:
	.loc 1 99 43 view .LVU287
	adds	r3, r3, #32
.LVL75:
.L30:
	.loc 1 99 21 is_stmt 1 view .LVU288
	.loc 1 99 4 is_stmt 0 view .LVU289
	cmp	r1, r4
	bne	.L47
	.loc 1 104 4 is_stmt 1 view .LVU290
	.loc 1 104 8 is_stmt 0 view .LVU291
	add	r10, r10, #1024
.LVL76:
	.loc 1 98 32 is_stmt 1 view .LVU292
	.loc 1 98 33 is_stmt 0 view .LVU293
	adds	r0, r0, #1
.LVL77:
	.loc 1 98 33 view .LVU294
	b	.L27
.L47:
	.loc 1 98 33 view .LVU295
	mov	r2, r3
	.loc 1 100 5 view .LVU296
	add	ip, r4, r3
	b	.L29
.LVL78:
.L26:
	.loc 1 100 5 view .LVU297
.LBE52:
	.loc 1 108 2 is_stmt 1 view .LVU298
	.loc 1 108 2 is_stmt 0 view .LVU299
.LBE55:
.LBE58:
.LBE59:
.LBE63:
	.loc 1 283 2 is_stmt 1 view .LVU300
	.loc 1 283 5 is_stmt 0 view .LVU301
	cmp	r9, #0
	blt	.L16
	.loc 1 295 2 is_stmt 1 view .LVU302
	.loc 1 296 2 view .LVU303
	.loc 1 295 20 is_stmt 0 view .LVU304
	ldr	r3, [r7]
	.loc 1 298 9 view .LVU305
	ldr	r2, [sp]
	.loc 1 295 20 view .LVU306
	and	r3, r3, #65280
	.loc 1 296 20 view .LVU307
	orr	r3, r3, r9
	str	r3, [r7]
	.loc 1 297 2 is_stmt 1 view .LVU308
	.loc 1 297 8 is_stmt 0 view .LVU309
	ldr	r3, .L54+12
	str	r8, [r3]
	.loc 1 298 2 is_stmt 1 view .LVU310
	.loc 1 298 9 is_stmt 0 view .LVU311
	ldr	r3, .L54+8
	str	r2, [r3]
	.loc 1 300 2 is_stmt 1 view .LVU312
.LVL79:
.L34:
	.loc 1 274 10 is_stmt 0 view .LVU313
	movs	r0, #0
	b	.L1
.LVL80:
.L32:
	.loc 1 266 10 view .LVU314
	mvn	r0, #18
	b	.L1
.LVL81:
.L33:
	.loc 1 269 10 view .LVU315
	mvn	r0, #21
	b	.L1
.L55:
	.align	2
.L54:
	.word	.LANCHOR1
	.word	1431655766
	.word	.LANCHOR2
	.word	.LANCHOR3
	.word	.LANCHOR4
	.word	.LANCHOR5
	.word	.LC0
	.word	.LANCHOR6
	.word	.LC1
	.word	.LC4
	.word	.LANCHOR0+80
	.word	.LANCHOR0+40
	.word	.LANCHOR0+10
	.word	.LANCHOR0+20
	.word	.LANCHOR0+60
	.word	.LANCHOR0+30
	.word	.LANCHOR7
	.word	.LC2
	.word	.LC3
.LFE2422:
	.fnend
	.size	pvi_wf_get_lut, .-pvi_wf_get_lut
	.section	.text.pvi_wf_get_version,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pvi_wf_get_version, %function
pvi_wf_get_version:
	.fnstart
.LFB2424:
	.loc 1 351 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 352 2 view .LVU317
	.loc 1 352 14 is_stmt 0 view .LVU318
	ldr	r3, .L63
	.loc 1 351 1 view .LVU319
	push	{r4, lr}
	.save {r4, lr}
.LCFI4:
	.loc 1 352 14 view .LVU320
	ldr	r0, [r3]
.LVL82:
	.loc 1 353 2 is_stmt 1 view .LVU321
	.loc 1 355 2 view .LVU322
	.loc 1 355 5 is_stmt 0 view .LVU323
	cbz	r0, .L56
	.loc 1 358 2 is_stmt 1 view .LVU324
	ldr	r3, .L63+4
	.loc 1 358 32 is_stmt 0 view .LVU325
	add	r2, r0, #65
	.loc 1 358 2 view .LVU326
	adds	r0, r0, #93
.LVL83:
	.loc 1 358 2 view .LVU327
	mov	r1, r3
.LVL84:
.L58:
	.loc 1 358 2 view .LVU328
	ldr	r4, [r2], #4	@ unaligned
	str	r4, [r3], #4	@ unaligned
	cmp	r2, r0
	bne	.L58
	ldrh	r0, [r2]	@ unaligned
.LVL85:
	.loc 1 358 2 view .LVU329
	strh	r0, [r3]	@ unaligned
	.loc 1 361 9 view .LVU330
	ldr	r0, .L63+4
	.loc 1 358 2 view .LVU331
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	strb	r2, [r3, #2]
	.loc 1 359 2 is_stmt 1 view .LVU332
	.loc 1 359 20 is_stmt 0 view .LVU333
	movs	r3, #0
	strb	r3, [r1, #31]
	.loc 1 361 2 is_stmt 1 view .LVU334
.L56:
	.loc 1 362 1 is_stmt 0 view .LVU335
	pop	{r4, pc}
.L64:
	.align	2
.L63:
	.word	.LANCHOR1
	.word	.LANCHOR8
.LFE2424:
	.fnend
	.size	pvi_wf_get_version, .-pvi_wf_get_version
	.section	.rodata.pvi_wf_setup.str1.1,"aMS",%progbits,1
.LC5:
	.ascii	"pvi : input waveform version 0x%x\012\000"
.LC6:
	.ascii	"pvi : Unknow waveform version 0x%x, 0x%x, may be wr"
	.ascii	"ong waveform file\012\000"
.LC7:
	.ascii	"[EINK]: PVI waveform\012\000"
.LC8:
	.ascii	"[EINK]: failed to input PVI waveform\012\000"
	.section	.text.unlikely.pvi_wf_setup,"ax",%progbits
	.align	1
	.global	pvi_wf_setup
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pvi_wf_setup, %function
pvi_wf_setup:
	.fnstart
.LVL86:
.LFB2425:
	.loc 1 370 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 371 2 view .LVU337
	.loc 1 373 2 view .LVU338
.LBB70:
.LBI70:
	.loc 1 309 12 view .LVU339
.LBB71:
	.loc 1 311 2 view .LVU340
	.loc 1 313 2 view .LVU341
.LBE71:
.LBE70:
	.loc 1 370 1 is_stmt 0 view .LVU342
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
.LCFI5:
	.loc 1 370 1 view .LVU343
	mov	r5, r0
.LBB78:
.LBB74:
	.loc 1 313 6 view .LVU344
	ldr	r6, .L87
.LBE74:
.LBE78:
	.loc 1 370 1 view .LVU345
	mov	r4, r1
.LBB79:
.LBB75:
	.loc 1 313 5 view .LVU346
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L66
	.loc 1 316 2 is_stmt 1 view .LVU347
.LBB72:
	.loc 1 316 2 view .LVU348
	.loc 1 316 2 view .LVU349
	.loc 1 316 2 view .LVU350
	.loc 1 316 2 view .LVU351
	ldrb	r1, [r1, #16]	@ zero_extendqisi2
.LVL87:
	.loc 1 316 2 is_stmt 0 view .LVU352
	ldr	r0, .L87+4
.LVL88:
	.loc 1 316 2 view .LVU353
	bl	_printk
.LVL89:
.LBE72:
	.loc 1 319 2 is_stmt 1 view .LVU354
	.loc 1 319 16 is_stmt 0 view .LVU355
	ldrb	r1, [r4, #16]	@ zero_extendqisi2
	.loc 1 319 2 view .LVU356
	cmp	r1, #114
	beq	.L67
	bhi	.L68
	cmp	r1, #84
	beq	.L69
	bhi	.L68
	cmp	r1, #72
	beq	.L67
	bhi	.L68
	cmp	r1, #67
	beq	.L67
	bhi	.L68
	cmp	r1, #9
	beq	.L69
	sub	r3, r1, #18
	uxtb	r2, r3
	cmp	r2, #17
	bhi	.L68
	cmp	r3, #17
	bhi	.L68
	tbb	[pc, r3]
.L70:
	.byte	(.L69-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L67-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L67-.L70)/2
	.byte	(.L67-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L67-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L68-.L70)/2
	.byte	(.L69-.L70)/2
	.p2align 1
.L67:
	.loc 1 327 3 is_stmt 1 view .LVU357
	.loc 1 327 10 is_stmt 0 view .LVU358
	ldr	r3, .L87+8
	movs	r2, #32
	str	r2, [r3]
.L69:
	.loc 1 332 3 is_stmt 1 view .LVU359
	.loc 1 339 2 view .LVU360
.LBE75:
.LBE79:
.LBB80:
	.loc 1 379 3 is_stmt 0 view .LVU361
	ldr	r0, .L87+12
.LBE80:
.LBB81:
.LBB76:
	.loc 1 339 22 view .LVU362
	str	r4, [r6]
	.loc 1 341 2 is_stmt 1 view .LVU363
.LVL90:
	.loc 1 341 2 is_stmt 0 view .LVU364
.LBE76:
.LBE81:
	.loc 1 374 2 is_stmt 1 view .LVU365
	.loc 1 379 3 view .LVU366
.LBB82:
	.loc 1 379 3 view .LVU367
	.loc 1 379 3 view .LVU368
	.loc 1 379 3 view .LVU369
	.loc 1 379 3 view .LVU370
	bl	_printk
.LVL91:
.LBE82:
	.loc 1 382 2 view .LVU371
	.loc 1 382 11 is_stmt 0 view .LVU372
	ldr	r3, .L87+16
	.loc 1 383 9 view .LVU373
	movs	r0, #0
	.loc 1 382 11 view .LVU374
	str	r3, [r5, #8]
	.loc 1 383 2 is_stmt 1 view .LVU375
.LVL92:
.L65:
	.loc 1 384 1 is_stmt 0 view .LVU376
	pop	{r4, r5, r6, pc}
.LVL93:
.L68:
.LBB83:
.LBB77:
	.loc 1 334 3 is_stmt 1 view .LVU377
.LBB73:
	.loc 1 334 3 view .LVU378
	.loc 1 334 3 view .LVU379
	.loc 1 334 3 view .LVU380
	.loc 1 334 3 view .LVU381
	ldrb	r2, [r4, #22]	@ zero_extendqisi2
	ldr	r0, .L87+20
	bl	_printk
.LVL94:
.LBE73:
	.loc 1 336 3 view .LVU382
	.loc 1 336 3 is_stmt 0 view .LVU383
.LBE77:
.LBE83:
	.loc 1 374 2 is_stmt 1 view .LVU384
.L66:
	.loc 1 375 3 view .LVU385
.LBB84:
	.loc 1 375 3 view .LVU386
	.loc 1 375 3 view .LVU387
	.loc 1 375 3 view .LVU388
	.loc 1 375 3 view .LVU389
	ldr	r0, .L87+24
	bl	_printk
.LVL95:
.LBE84:
	.loc 1 376 3 view .LVU390
	.loc 1 376 10 is_stmt 0 view .LVU391
	mvn	r0, #21
	b	.L65
.L88:
	.align	2
.L87:
	.word	.LANCHOR1
	.word	.LC5
	.word	.LANCHOR7
	.word	.LC7
	.word	.LANCHOR9
	.word	.LC6
	.word	.LC8
.LFE2425:
	.fnend
	.size	pvi_wf_setup, .-pvi_wf_setup
	.global	pvi_mode_table
	.section	.bss.pvi_global_waveform,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	pvi_global_waveform, %object
	.size	pvi_global_waveform, 4
pvi_global_waveform:
	.space	4
	.section	.bss.spi_id_buffer.0,"aw",%nobits
	.set	.LANCHOR8,. + 0
	.type	spi_id_buffer.0, %object
	.size	spi_id_buffer.0, 32
spi_id_buffer.0:
	.space	32
	.section	.bss.waveformdata,"aw",%nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	waveformdata, %object
	.size	waveformdata, 4
waveformdata:
	.space	4
	.section	.data.maxpic,"aw"
	.align	2
	.set	.LANCHOR7,. + 0
	.type	maxpic, %object
	.size	maxpic, 4
maxpic:
	.word	16
	.section	.data.need_pic,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	need_pic, %object
	.size	need_pic, 4
need_pic:
	.word	16
	.section	.data.pvi_wf_ops,"aw"
	.align	2
	.set	.LANCHOR9,. + 0
	.type	pvi_wf_ops, %object
	.size	pvi_wf_ops, 8
pvi_wf_ops:
	.word	pvi_wf_get_version
	.word	pvi_wf_get_lut
	.section	.data.sftemp.3,"aw"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	sftemp.3, %object
	.size	sftemp.3, 4
sftemp.3:
	.word	-1
	.section	.data.stype.2,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	stype.2, %object
	.size	stype.2, 4
stype.2:
	.word	11
	.section	.rodata.__func__.1,"a"
	.set	.LANCHOR6,. + 0
	.type	__func__.1, %object
	.size	__func__.1, 19
__func__.1:
	.ascii	"pvi_get_wf_frm_num\000"
	.section	.rodata.pvi_mode_table,"a"
	.set	.LANCHOR0,. + 0
	.type	pvi_mode_table, %object
	.size	pvi_mode_table, 90
pvi_mode_table:
	.ascii	"\000\001\001\002\003\003\003\004\003\000"
	.ascii	"\000\001\007\003\003\005\006\004\005\000"
	.ascii	"\000\001\001\002\003\004\004\006\005\000"
	.ascii	"\000\001\007\002\003\004\005\006\004\000"
	.ascii	"\000\001\005\002\003\003\003\004\003\000"
	.ascii	"\000\001\001\002\003\004\004\006\004\000"
	.ascii	"\000\001\001\002\003\004\004\005\004\000"
	.ascii	"\000\001\001\002\003\004\013\006\012\000"
	.ascii	"\000\001\001\002\003\004\005\006\004\000"
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB2422
	.4byte	.LFE2422-.LFB2422
	.byte	0x4
	.4byte	.LCFI0-.LFB2422
	.byte	0xe
	.uleb128 0x24
	.byte	0x84
	.uleb128 0x9
	.byte	0x85
	.uleb128 0x8
	.byte	0x86
	.uleb128 0x7
	.byte	0x87
	.uleb128 0x6
	.byte	0x88
	.uleb128 0x5
	.byte	0x89
	.uleb128 0x4
	.byte	0x8a
	.uleb128 0x3
	.byte	0x8b
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xa
	.byte	0xe
	.uleb128 0x24
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xb
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2424
	.4byte	.LFE2424-.LFB2424
	.byte	0x4
	.4byte	.LCFI4-.LFB2424
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2425
	.4byte	.LFE2425-.LFB2425
	.byte	0x4
	.4byte	.LCFI5-.LFB2425
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x4
	.byte	0x85
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
	.text
.Letext0:
	.file 2 "./include/uapi/asm-generic/int-ll64.h"
	.file 3 "./include/asm-generic/int-ll64.h"
	.file 4 "./include/linux/types.h"
	.file 5 "./include/linux/pid.h"
	.file 6 "./include/linux/percpu.h"
	.file 7 "./include/linux/hrtimer.h"
	.file 8 "./include/linux/nodemask.h"
	.file 9 "./include/linux/stddef.h"
	.file 10 "./include/linux/mm_types_task.h"
	.file 11 "./include/uapi/linux/rseq.h"
	.file 12 "./include/linux/sched.h"
	.file 13 "./include/linux/mm_types.h"
	.file 14 "./include/linux/mmzone.h"
	.file 15 "./include/linux/sched/topology.h"
	.file 16 "./include/linux/slab.h"
	.file 17 "drivers/gpu/drm/rockchip/ebc-linux/wflut/../ebc_uapi.h"
	.file 18 "drivers/gpu/drm/rockchip/ebc-linux/wflut/wf_lut.h"
	.file 19 "./arch/arm/include/asm/percpu.h"
	.file 20 "./include/linux/printk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf9e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF263
	.byte	0xc
	.4byte	.LASF264
	.4byte	.LASF265
	.4byte	.Ldebug_ranges0+0x110
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.4byte	0x40
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	0x39
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.byte	0x17
	.4byte	0x58
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
	.4byte	0x72
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1b
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x11
	.byte	0xf
	.4byte	0x4c
	.uleb128 0x4
	.4byte	0x9a
	.uleb128 0x7
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x13
	.byte	0xf
	.4byte	0x66
	.uleb128 0x7
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x15
	.byte	0xf
	.4byte	0x80
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0xa
	.byte	0x6
	.4byte	0xdd
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1e
	.byte	0x11
	.4byte	0xf0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0xa
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF222
	.byte	0x13
	.byte	0xa
	.byte	0x18
	.4byte	0x25
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x9
	.byte	0x6
	.4byte	0x136
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x57
	.byte	0x6
	.4byte	0x161
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0xaa
	.byte	0x7
	.4byte	0x1aa
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.2byte	0x18e
	.byte	0x6
	.4byte	0x1ee
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x1f
	.byte	0x6
	.4byte	0x21b
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x19
	.byte	0x6
	.4byte	0x240
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.2byte	0x122
	.byte	0x6
	.4byte	0x256
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.2byte	0x901
	.byte	0x6
	.4byte	0x27c
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0xd
	.2byte	0x356
	.byte	0x20
	.4byte	0x2c
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x2a
	.byte	0x6
	.4byte	0x2cc
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
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x8a
	.byte	0x6
	.4byte	0x327
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x9d
	.byte	0x6
	.4byte	0x448
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.2byte	0x10a
	.byte	0x6
	.4byte	0x480
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.2byte	0x113
	.byte	0x6
	.4byte	0x4b2
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF142
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF143
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.2byte	0x222
	.byte	0x6
	.4byte	0x4e4
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.2byte	0x40a
	.byte	0x6
	.4byte	0x500
	.uleb128 0x9
	.4byte	.LASF149
	.byte	0
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xf
	.byte	0x10
	.byte	0x6
	.4byte	0x569
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF154
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF159
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF163
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF165
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.4byte	0x39
	.4byte	0x579
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF166
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.2byte	0x150
	.byte	0x6
	.4byte	0x5ab
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x1e
	.byte	0x6
	.4byte	0x60c
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF179
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF180
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF182
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF186
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x2f
	.byte	0x6
	.4byte	0x631
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF190
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x35
	.byte	0x6
	.4byte	0x650
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.4byte	.LASF195
	.byte	0x8
	.byte	0x12
	.byte	0x14
	.byte	0x8
	.4byte	0x678
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0x12
	.byte	0x15
	.byte	0x11
	.4byte	0x67d
	.byte	0
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x12
	.byte	0x16
	.byte	0x8
	.4byte	0x6dc
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	0x33
	.uleb128 0x3
	.byte	0x4
	.4byte	0x678
	.uleb128 0x15
	.4byte	0x79
	.4byte	0x6a1
	.uleb128 0x16
	.4byte	0x6a1
	.uleb128 0x16
	.4byte	0x5ab
	.uleb128 0x16
	.4byte	0x79
	.uleb128 0x16
	.4byte	0x79
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.4byte	0x6a7
	.uleb128 0x12
	.4byte	.LASF196
	.byte	0xc
	.byte	0x12
	.byte	0x19
	.byte	0x8
	.4byte	0x6dc
	.uleb128 0x13
	.4byte	.LASF197
	.byte	0x12
	.byte	0x1a
	.byte	0xf
	.4byte	0x2c
	.byte	0
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0x12
	.byte	0x1b
	.byte	0x6
	.4byte	0x6e2
	.byte	0x4
	.uleb128 0x17
	.ascii	"ops\000"
	.byte	0x12
	.byte	0x1c
	.byte	0x15
	.4byte	0x6e8
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.4byte	0x683
	.uleb128 0x3
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x3
	.byte	0x4
	.4byte	0x650
	.uleb128 0x12
	.4byte	.LASF199
	.byte	0x34
	.byte	0x1
	.byte	0xe
	.byte	0x8
	.4byte	0x827
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	0xb6
	.byte	0
	.uleb128 0x13
	.4byte	.LASF201
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	0xb6
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF202
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	0xb6
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF203
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	0x9a
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF204
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	0x9a
	.byte	0xd
	.uleb128 0x13
	.4byte	.LASF205
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	0xaa
	.byte	0xe
	.uleb128 0x13
	.4byte	.LASF206
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.4byte	0x9a
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF207
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.4byte	0x9a
	.byte	0x11
	.uleb128 0x13
	.4byte	.LASF208
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.4byte	0x9a
	.byte	0x12
	.uleb128 0x13
	.4byte	.LASF209
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	0x9a
	.byte	0x13
	.uleb128 0x13
	.4byte	.LASF210
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	0x9a
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF211
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	0x9a
	.byte	0x15
	.uleb128 0x13
	.4byte	.LASF212
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	0x9a
	.byte	0x16
	.uleb128 0x13
	.4byte	.LASF213
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	0x9a
	.byte	0x17
	.uleb128 0x13
	.4byte	.LASF214
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	0xb6
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF215
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	0x9a
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF216
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.4byte	0x827
	.byte	0x1d
	.uleb128 0x17
	.ascii	"sc1\000"
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	0x9a
	.byte	0x20
	.uleb128 0x13
	.4byte	.LASF217
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	0x837
	.byte	0x21
	.uleb128 0x13
	.4byte	.LASF218
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	0x9a
	.byte	0x25
	.uleb128 0x13
	.4byte	.LASF219
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	0x9a
	.byte	0x26
	.uleb128 0x13
	.4byte	.LASF220
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.4byte	0x847
	.byte	0x27
	.uleb128 0x13
	.4byte	.LASF221
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	0x857
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.4byte	0x9a
	.4byte	0x837
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	0x9a
	.4byte	0x847
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	0x9a
	.4byte	0x857
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.4byte	0x9a
	.4byte	0x867
	.uleb128 0x11
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.byte	0x29
	.byte	0xc
	.4byte	0x6e2
	.uleb128 0x5
	.byte	0x3
	.4byte	waveformdata
	.uleb128 0x18
	.4byte	.LASF224
	.byte	0x1
	.byte	0x2a
	.byte	0xc
	.4byte	0x79
	.uleb128 0x5
	.byte	0x3
	.4byte	maxpic
	.uleb128 0x18
	.4byte	.LASF225
	.byte	0x1
	.byte	0x2b
	.byte	0x1d
	.4byte	0x89d
	.uleb128 0x5
	.byte	0x3
	.4byte	pvi_global_waveform
	.uleb128 0x3
	.byte	0x4
	.4byte	0x6ee
	.uleb128 0x18
	.4byte	.LASF226
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.4byte	0x79
	.uleb128 0x5
	.byte	0x3
	.4byte	need_pic
	.uleb128 0x10
	.4byte	0xa5
	.4byte	0x8cb
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.4byte	0x8b5
	.uleb128 0x19
	.4byte	.LASF229
	.byte	0x1
	.byte	0x70
	.byte	0xa
	.4byte	0x8cb
	.uleb128 0x5
	.byte	0x3
	.4byte	pvi_mode_table
	.uleb128 0x1a
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x16c
	.byte	0x1a
	.4byte	0x650
	.uleb128 0x5
	.byte	0x3
	.4byte	pvi_wf_ops
	.uleb128 0x1b
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x171
	.byte	0x5
	.4byte	0x79
	.4byte	.LFB2425
	.4byte	.LFE2425-.LFB2425
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e0
	.uleb128 0x1c
	.ascii	"lut\000"
	.byte	0x1
	.2byte	0x171
	.byte	0x23
	.4byte	0x6a1
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x1d
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x171
	.byte	0x2e
	.4byte	0xf7
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x1e
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x173
	.byte	0x6
	.4byte	0x79
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x1f
	.4byte	0xa24
	.4byte	.LBI70
	.2byte	.LVU339
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.2byte	0x175
	.byte	0x8
	.4byte	0x9b5
	.uleb128 0x20
	.4byte	0xa36
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0x98a
	.uleb128 0x22
	.4byte	0xa43
	.4byte	.LLST39
	.4byte	.LVUS39
	.byte	0
	.uleb128 0x23
	.4byte	.LVL89
	.4byte	0xf8c
	.4byte	0x9a1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x25
	.4byte	.LVL94
	.4byte	0xf8c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL91
	.4byte	0xf8c
	.4byte	0x9cc
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x25
	.4byte	.LVL95
	.4byte	0xf8c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x15e
	.byte	0x14
	.4byte	0x33
	.4byte	.LFB2424
	.4byte	.LFE2424-.LFB2424
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa24
	.uleb128 0x27
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x160
	.byte	0xe
	.4byte	0x33
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x1a
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x161
	.byte	0xe
	.4byte	0x569
	.uleb128 0x5
	.byte	0x3
	.4byte	spi_id_buffer.0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x135
	.byte	0xc
	.4byte	0x79
	.byte	0x1
	.4byte	0xa51
	.uleb128 0x29
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x135
	.byte	0x1f
	.4byte	0xf7
	.uleb128 0x2a
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x137
	.byte	0x17
	.4byte	0x89d
	.byte	0
	.uleb128 0x26
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x101
	.byte	0xc
	.4byte	0x79
	.4byte	.LFB2422
	.4byte	.LFE2422-.LFB2422
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdbb
	.uleb128 0x1d
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x101
	.byte	0x2c
	.4byte	0x6a1
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1d
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x101
	.byte	0x45
	.4byte	0x5ab
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1d
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x101
	.byte	0x53
	.4byte	0x79
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1c
	.ascii	"pic\000"
	.byte	0x1
	.2byte	0x101
	.byte	0x63
	.4byte	0x79
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1a
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x103
	.byte	0x1a
	.4byte	0x5ab
	.uleb128 0x5
	.byte	0x3
	.4byte	stype.2
	.uleb128 0x1a
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x104
	.byte	0xd
	.4byte	0x79
	.uleb128 0x5
	.byte	0x3
	.4byte	sftemp.3
	.uleb128 0x27
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x105
	.byte	0x6
	.4byte	0x79
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x27
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x106
	.byte	0x6
	.4byte	0x79
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x27
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x107
	.byte	0x6
	.4byte	0x79
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1f
	.4byte	0xe33
	.4byte	.LBI20
	.2byte	.LVU35
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x118
	.byte	0xf
	.4byte	0xb77
	.uleb128 0x20
	.4byte	0xe44
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x22
	.4byte	0xe50
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x22
	.4byte	0xe5c
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x22
	.4byte	0xe68
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0xe73
	.4byte	.LBI27
	.2byte	.LVU50
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.2byte	0x119
	.byte	0xf
	.4byte	0xc06
	.uleb128 0x20
	.4byte	0xe84
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x22
	.4byte	0xe90
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x22
	.4byte	0xe9c
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x2c
	.4byte	0xeaf
	.4byte	.LBI30
	.2byte	.LVU113
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x9b
	.byte	0xe
	.4byte	0xbf1
	.uleb128 0x20
	.4byte	0xec0
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x22
	.4byte	0xecc
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL9
	.4byte	0xf8c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0xdbb
	.4byte	.LBI37
	.2byte	.LVU65
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x11a
	.byte	0xe
	.4byte	0xda7
	.uleb128 0x20
	.4byte	0xdd8
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x20
	.4byte	0xdcc
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x22
	.4byte	0xde4
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x22
	.4byte	0xdf0
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x22
	.4byte	0xdfc
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2c
	.4byte	0xed9
	.4byte	.LBI42
	.2byte	.LVU170
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xc8
	.byte	0x9
	.4byte	0xd89
	.uleb128 0x20
	.4byte	0xf0d
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x20
	.4byte	0xf01
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x20
	.4byte	0xef5
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x20
	.4byte	0xeea
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x22
	.4byte	0xf19
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x22
	.4byte	0xf25
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x22
	.4byte	0xf31
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x22
	.4byte	0xf3d
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x22
	.4byte	0xf49
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x22
	.4byte	0xf55
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x2d
	.4byte	0xf5f
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0xd3a
	.uleb128 0x22
	.4byte	0xf64
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x22
	.4byte	0xf70
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x2e
	.4byte	.LVL61
	.4byte	0xf98
	.uleb128 0x2e
	.4byte	.LVL63
	.4byte	0xf98
	.byte	0
	.uleb128 0x2d
	.4byte	0xf7d
	.4byte	.Ldebug_ranges0+0xc8
	.4byte	0xd74
	.uleb128 0x22
	.4byte	0xf7e
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x25
	.4byte	.LVL70
	.4byte	0xf8c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL68
	.4byte	0xf8c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL18
	.4byte	0xf8c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL19
	.4byte	0xf8c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF240
	.byte	0x1
	.byte	0xb3
	.byte	0xc
	.4byte	0x79
	.byte	0x1
	.4byte	0xe18
	.uleb128 0x30
	.4byte	.LASF242
	.byte	0x1
	.byte	0xb3
	.byte	0x23
	.4byte	0x79
	.uleb128 0x30
	.4byte	.LASF237
	.byte	0x1
	.byte	0xb3
	.byte	0x2d
	.4byte	0x79
	.uleb128 0x31
	.4byte	.LASF228
	.byte	0x1
	.byte	0xb5
	.byte	0x11
	.4byte	0xe18
	.uleb128 0x31
	.4byte	.LASF244
	.byte	0x1
	.byte	0xb6
	.byte	0x11
	.4byte	0xe18
	.uleb128 0x31
	.4byte	.LASF245
	.byte	0x1
	.byte	0xb7
	.byte	0x6
	.4byte	0x79
	.uleb128 0x32
	.4byte	.LASF267
	.4byte	0xe2e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.1
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.4byte	0x58
	.uleb128 0x10
	.4byte	0x40
	.4byte	0xe2e
	.uleb128 0x11
	.4byte	0x2c
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.4byte	0xe1e
	.uleb128 0x2f
	.4byte	.LASF246
	.byte	0x1
	.byte	0xa0
	.byte	0xc
	.4byte	0x79
	.byte	0x1
	.4byte	0xe73
	.uleb128 0x30
	.4byte	.LASF221
	.byte	0x1
	.byte	0xa0
	.byte	0x22
	.4byte	0x79
	.uleb128 0x31
	.4byte	.LASF247
	.byte	0x1
	.byte	0xa2
	.byte	0x6
	.4byte	0x79
	.uleb128 0x31
	.4byte	.LASF248
	.byte	0x1
	.byte	0xa3
	.byte	0x6
	.4byte	0x79
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x1
	.byte	0xa4
	.byte	0x6
	.4byte	0x79
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF249
	.byte	0x1
	.byte	0x8e
	.byte	0xb
	.4byte	0x9a
	.byte	0x1
	.4byte	0xea9
	.uleb128 0x30
	.4byte	.LASF234
	.byte	0x1
	.byte	0x8e
	.byte	0x2e
	.4byte	0x5ab
	.uleb128 0x31
	.4byte	.LASF250
	.byte	0x1
	.byte	0x90
	.byte	0xc
	.4byte	0xea9
	.uleb128 0x31
	.4byte	.LASF242
	.byte	0x1
	.byte	0x91
	.byte	0x6
	.4byte	0x79
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x2f
	.4byte	.LASF251
	.byte	0x1
	.byte	0x7c
	.byte	0x12
	.4byte	0xea9
	.byte	0x1
	.4byte	0xed9
	.uleb128 0x30
	.4byte	.LASF228
	.byte	0x1
	.byte	0x7c
	.byte	0x3a
	.4byte	0x89d
	.uleb128 0x31
	.4byte	.LASF250
	.byte	0x1
	.byte	0x7e
	.byte	0xd
	.4byte	0xea9
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF252
	.byte	0x1
	.byte	0x2e
	.byte	0xc
	.4byte	0x79
	.byte	0x1
	.4byte	0xf8c
	.uleb128 0x34
	.ascii	"in\000"
	.byte	0x1
	.byte	0x2e
	.byte	0x1f
	.4byte	0x6e2
	.uleb128 0x34
	.ascii	"out\000"
	.byte	0x1
	.byte	0x2e
	.byte	0x27
	.4byte	0x6e2
	.uleb128 0x30
	.4byte	.LASF253
	.byte	0x1
	.byte	0x2e
	.byte	0x30
	.4byte	0x79
	.uleb128 0x30
	.4byte	.LASF254
	.byte	0x1
	.byte	0x2e
	.byte	0x3f
	.4byte	0x79
	.uleb128 0x31
	.4byte	.LASF255
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.4byte	0xb6
	.uleb128 0x31
	.4byte	.LASF256
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.4byte	0xb6
	.uleb128 0x31
	.4byte	.LASF257
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	0xb6
	.uleb128 0x31
	.4byte	.LASF258
	.byte	0x1
	.byte	0x33
	.byte	0x7
	.4byte	0xe4
	.uleb128 0x31
	.4byte	.LASF259
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	0x6e2
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.4byte	0x79
	.uleb128 0x35
	.4byte	0xf7d
	.uleb128 0x31
	.4byte	.LASF260
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.4byte	0x9a
	.uleb128 0x31
	.4byte	.LASF261
	.byte	0x1
	.byte	0x39
	.byte	0x7
	.4byte	0x79
	.byte	0
	.uleb128 0x36
	.uleb128 0x31
	.4byte	.LASF262
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.4byte	0x79
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF268
	.4byte	.LASF268
	.byte	0x14
	.byte	0x9b
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF269
	.4byte	.LASF269
	.byte	0
	.section	.debug_abbrev,"",%progbits
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS35:
	.uleb128 0
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 0
.LLST35:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL88
	.4byte	.LFE2425
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU352
	.uleb128 .LVU352
	.uleb128 0
.LLST36:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL87
	.4byte	.LFE2425
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU364
	.uleb128 .LVU376
	.uleb128 .LVU383
	.uleb128 .LVU385
.LLST37:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL94
	.2byte	0x3
	.byte	0x9
	.byte	0xf8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU339
	.uleb128 .LVU352
	.uleb128 .LVU352
	.uleb128 .LVU364
	.uleb128 .LVU377
	.uleb128 .LVU383
.LLST38:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU341
	.uleb128 .LVU352
	.uleb128 .LVU352
	.uleb128 0
.LLST39:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL87
	.4byte	.LFE2425
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU321
	.uleb128 .LVU327
	.uleb128 .LVU327
	.uleb128 .LVU328
	.uleb128 .LVU328
	.uleb128 .LVU329
.LLST34:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x5
	.byte	0x3
	.4byte	pvi_global_waveform
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0x70
	.sleb128 -93
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE2422
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LFE2422
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 .LVU315
	.uleb128 .LVU315
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL21
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE2422
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL9-1
	.2byte	0x5
	.byte	0x3
	.4byte	need_pic
	.4byte	.LVL9-1
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL35
	.2byte	0x5
	.byte	0x3
	.4byte	need_pic
	.4byte	.LVL35
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE2422
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU48
	.uleb128 .LVU88
	.uleb128 .LVU108
	.uleb128 .LVU141
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU63
	.uleb128 .LVU76
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU299
	.uleb128 .LVU313
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x9
	.byte	0xea
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU35
	.uleb128 .LVU48
	.uleb128 .LVU102
	.uleb128 .LVU108
.LLST7:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU37
	.uleb128 .LVU48
	.uleb128 .LVU102
	.uleb128 .LVU108
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU38
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU48
	.uleb128 .LVU102
	.uleb128 .LVU108
.LLST9:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU40
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU46
	.uleb128 .LVU102
	.uleb128 .LVU108
.LLST10:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU50
	.uleb128 .LVU63
	.uleb128 .LVU108
	.uleb128 .LVU136
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU119
	.uleb128 .LVU122
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU112
	.uleb128 .LVU136
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU113
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU119
	.uleb128 .LVU123
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU136
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x5
	.byte	0x3
	.4byte	pvi_global_waveform
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x5
	.byte	0x3
	.4byte	pvi_global_waveform
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x5
	.byte	0x3
	.4byte	pvi_global_waveform
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x5
	.byte	0x3
	.4byte	pvi_global_waveform
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU115
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU119
	.uleb128 .LVU123
	.uleb128 .LVU136
.LLST15:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU65
	.uleb128 .LVU88
	.uleb128 .LVU136
	.uleb128 .LVU141
.LLST16:
	.4byte	.LVL10
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU65
	.uleb128 .LVU76
.LLST17:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU68
	.uleb128 .LVU91
	.uleb128 .LVU136
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU182
.LLST18:
	.4byte	.LVL11
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x3
	.4byte	pvi_global_waveform
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU69
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU88
	.uleb128 .LVU136
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU162
	.uleb128 .LVU166
	.uleb128 .LVU182
.LLST19:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU70
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU88
	.uleb128 .LVU136
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU144
	.uleb128 .LVU157
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU168
.LLST20:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x8
	.byte	0x74
	.sleb128 32
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x8
	.byte	0x74
	.sleb128 32
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL35
	.2byte	0x8
	.byte	0x74
	.sleb128 32
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.4byte	0xffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU170
	.uleb128 .LVU299
.LLST21:
	.4byte	.LVL46
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU170
	.uleb128 .LVU299
.LLST22:
	.4byte	.LVL46
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU167
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU264
	.uleb128 .LVU264
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU297
.LLST23:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL69
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU167
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 .LVU189
	.uleb128 .LVU194
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU256
	.uleb128 .LVU276
	.uleb128 .LVU278
.LLST24:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU172
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU271
	.uleb128 .LVU276
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU297
.LLST25:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x75
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL61-1
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL62
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU173
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 .LVU254
	.uleb128 .LVU276
	.uleb128 .LVU278
.LLST26:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61-1
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL65
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU174
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU299
.LLST27:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU175
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU299
.LLST28:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU176
	.uleb128 .LVU271
	.uleb128 .LVU276
	.uleb128 .LVU278
.LLST29:
	.4byte	.LVL46
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU201
	.uleb128 .LVU208
	.uleb128 .LVU208
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 .LVU256
	.uleb128 .LVU270
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU276
	.uleb128 .LVU278
	.uleb128 .LVU297
.LLST30:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL66
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68-1
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU179
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU191
	.uleb128 .LVU194
	.uleb128 .LVU208
	.uleb128 .LVU246
	.uleb128 .LVU256
	.uleb128 .LVU276
	.uleb128 .LVU278
.LLST31:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU180
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU299
.LLST32:
	.4byte	.LVL46
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL67
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU263
	.uleb128 .LVU276
	.uleb128 .LVU278
	.uleb128 .LVU297
.LLST33:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2422
	.4byte	.LFE2422-.LFB2422
	.4byte	.LFB2424
	.4byte	.LFE2424-.LFB2424
	.4byte	.LFB2425
	.4byte	.LFE2425-.LFB2425
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	0
	.4byte	0
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	0
	.4byte	0
	.4byte	.LFB2422
	.4byte	.LFE2422
	.4byte	.LFB2424
	.4byte	.LFE2424
	.4byte	.LFB2425
	.4byte	.LFE2425
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF206:
	.ascii	"mode_version\000"
.LASF143:
	.ascii	"zone_watermarks\000"
.LASF14:
	.ascii	"long int\000"
.LASF58:
	.ascii	"RSEQ_EVENT_PREEMPT_BIT\000"
.LASF264:
	.ascii	"drivers/gpu/drm/rockchip/ebc-linux/wflut/pvi_wavefo"
	.ascii	"rm.c\000"
.LASF146:
	.ascii	"WMARK_HIGH\000"
.LASF84:
	.ascii	"node_stat_item\000"
.LASF67:
	.ascii	"MIGRATE_HIGHATOMIC\000"
.LASF31:
	.ascii	"HRTIMER_BASE_BOOTTIME\000"
.LASF81:
	.ascii	"NR_BOUNCE\000"
.LASF233:
	.ascii	"output\000"
.LASF41:
	.ascii	"N_NORMAL_MEMORY\000"
.LASF86:
	.ascii	"NR_INACTIVE_ANON\000"
.LASF104:
	.ascii	"WORKINGSET_RESTORE_FILE\000"
.LASF247:
	.ascii	"temp_num\000"
.LASF125:
	.ascii	"NR_FOLL_PIN_RELEASED\000"
.LASF269:
	.ascii	"__aeabi_uidivmod\000"
.LASF48:
	.ascii	"MM_ANONPAGES\000"
.LASF265:
	.ascii	"/home6/cmy/linux6.1/kernel\000"
.LASF221:
	.ascii	"temperture\000"
.LASF225:
	.ascii	"pvi_global_waveform\000"
.LASF152:
	.ascii	"__SD_BALANCE_EXEC\000"
.LASF178:
	.ascii	"WF_TYPE_GLR16\000"
.LASF46:
	.ascii	"NR_NODE_STATES\000"
.LASF97:
	.ascii	"WORKINGSET_REFAULT_ANON\000"
.LASF99:
	.ascii	"WORKINGSET_ACTIVATE_BASE\000"
.LASF128:
	.ascii	"NR_SECONDARY_PAGETABLE\000"
.LASF29:
	.ascii	"HRTIMER_BASE_MONOTONIC\000"
.LASF224:
	.ascii	"maxpic\000"
.LASF21:
	.ascii	"PIDTYPE_MAX\000"
.LASF101:
	.ascii	"WORKINGSET_ACTIVATE_FILE\000"
.LASF204:
	.ascii	"fpl_platform\000"
.LASF254:
	.ascii	"need_pixel\000"
.LASF195:
	.ascii	"wf_lut_ops\000"
.LASF248:
	.ascii	"level\000"
.LASF85:
	.ascii	"NR_LRU_BASE\000"
.LASF235:
	.ascii	"stype\000"
.LASF89:
	.ascii	"NR_ACTIVE_FILE\000"
.LASF255:
	.ascii	"oldpic\000"
.LASF242:
	.ascii	"mode\000"
.LASF180:
	.ascii	"WF_TYPE_A2\000"
.LASF259:
	.ascii	"out_org\000"
.LASF166:
	.ascii	"kmalloc_cache_type\000"
.LASF57:
	.ascii	"rseq_event_mask_bits\000"
.LASF192:
	.ascii	"EBC_UPDATE_FULL\000"
.LASF103:
	.ascii	"WORKINGSET_RESTORE_ANON\000"
.LASF162:
	.ascii	"__SD_PREFER_SIBLING\000"
.LASF126:
	.ascii	"NR_KERNEL_STACK_KB\000"
.LASF226:
	.ascii	"need_pic\000"
.LASF199:
	.ascii	"pvi_waveform\000"
.LASF156:
	.ascii	"__SD_ASYM_CPUCAPACITY\000"
.LASF213:
	.ascii	"frame_rate\000"
.LASF217:
	.ascii	"unknown1\000"
.LASF220:
	.ascii	"unknown2\000"
.LASF134:
	.ascii	"LRU_ACTIVE_FILE\000"
.LASF200:
	.ascii	"checksum\000"
.LASF261:
	.ascii	"count\000"
.LASF140:
	.ascii	"VMSCAN_THROTTLE_NOPROGRESS\000"
.LASF114:
	.ascii	"NR_SHMEM_PMDMAPPED\000"
.LASF177:
	.ascii	"WF_TYPE_GL16\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF210:
	.ascii	"panel_size\000"
.LASF240:
	.ascii	"pvi_get_wf_frm_num\000"
.LASF196:
	.ascii	"wf_lut_t\000"
.LASF96:
	.ascii	"WORKINGSET_REFAULT_BASE\000"
.LASF62:
	.ascii	"migratetype\000"
.LASF249:
	.ascii	"get_wf_mode_index\000"
.LASF133:
	.ascii	"LRU_INACTIVE_FILE\000"
.LASF98:
	.ascii	"WORKINGSET_REFAULT_FILE\000"
.LASF2:
	.ascii	"char\000"
.LASF155:
	.ascii	"__SD_WAKE_AFFINE\000"
.LASF157:
	.ascii	"__SD_ASYM_CPUCAPACITY_FULL\000"
.LASF71:
	.ascii	"zone_stat_item\000"
.LASF159:
	.ascii	"__SD_SHARE_PKG_RESOURCES\000"
.LASF260:
	.ascii	"value\000"
.LASF64:
	.ascii	"MIGRATE_MOVABLE\000"
.LASF28:
	.ascii	"hrtimer_base_type\000"
.LASF38:
	.ascii	"node_states\000"
.LASF174:
	.ascii	"WF_TYPE_GRAY2\000"
.LASF175:
	.ascii	"WF_TYPE_GRAY4\000"
.LASF73:
	.ascii	"NR_ZONE_LRU_BASE\000"
.LASF34:
	.ascii	"HRTIMER_BASE_REALTIME_SOFT\000"
.LASF245:
	.ascii	"offset\000"
.LASF30:
	.ascii	"HRTIMER_BASE_REALTIME\000"
.LASF222:
	.ascii	"current_stack_pointer\000"
.LASF120:
	.ascii	"NR_DIRTIED\000"
.LASF16:
	.ascii	"_Bool\000"
.LASF127:
	.ascii	"NR_PAGETABLE\000"
.LASF148:
	.ascii	"NR_WMARK\000"
.LASF238:
	.ascii	"mode_index\000"
.LASF138:
	.ascii	"VMSCAN_THROTTLE_WRITEBACK\000"
.LASF118:
	.ascii	"NR_VMSCAN_WRITE\000"
.LASF243:
	.ascii	"pvi_wf\000"
.LASF241:
	.ascii	"waveform_file\000"
.LASF13:
	.ascii	"true\000"
.LASF91:
	.ascii	"NR_SLAB_RECLAIMABLE_B\000"
.LASF244:
	.ascii	"wf_data\000"
.LASF263:
	.ascii	"GNU C11 10.3.1 20210621 -mlittle-endian -mno-fdpic "
	.ascii	"-mabi=aapcs-linux -mfpu=vfp -mtp=cp15 -mthumb -mflo"
	.ascii	"at-abi=soft -mtls-dialect=gnu -march=armv7-a -g -Os"
	.ascii	" -std=gnu11 -fno-strict-aliasing -fno-common -fshor"
	.ascii	"t-wchar -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -"
	.ascii	"funwind-tables -fno-delete-null-pointer-checks -fno"
	.ascii	"-allow-store-data-races -fstack-protector -fomit-fr"
	.ascii	"ame-pointer -fno-stack-clash-protection -fno-strict"
	.ascii	"-overflow -fstack-check=no -fconserve-stack -fplugi"
	.ascii	"n=./scripts/gcc-plugins/arm_ssp_per_task_plugin.so "
	.ascii	"-fplugin-arg-arm_ssp_per_task_plugin-offset=1288 -f"
	.ascii	"function-sections -fdata-sections\000"
.LASF258:
	.ascii	"israr\000"
.LASF234:
	.ascii	"lut_type\000"
.LASF212:
	.ascii	"wfm_rev\000"
.LASF191:
	.ascii	"EBC_UPDATE_PART\000"
.LASF119:
	.ascii	"NR_VMSCAN_IMMEDIATE\000"
.LASF107:
	.ascii	"NR_FILE_MAPPED\000"
.LASF141:
	.ascii	"VMSCAN_THROTTLE_CONGESTED\000"
.LASF100:
	.ascii	"WORKINGSET_ACTIVATE_ANON\000"
.LASF122:
	.ascii	"NR_THROTTLED_WRITTEN\000"
.LASF129:
	.ascii	"NR_VM_NODE_STAT_ITEMS\000"
.LASF182:
	.ascii	"PVI_WF_MAX\000"
.LASF90:
	.ascii	"NR_UNEVICTABLE\000"
.LASF228:
	.ascii	"waveform\000"
.LASF76:
	.ascii	"NR_ZONE_INACTIVE_FILE\000"
.LASF117:
	.ascii	"NR_ANON_THPS\000"
.LASF116:
	.ascii	"NR_FILE_PMDMAPPED\000"
.LASF179:
	.ascii	"WF_TYPE_GLD16\000"
.LASF139:
	.ascii	"VMSCAN_THROTTLE_ISOLATED\000"
.LASF87:
	.ascii	"NR_ACTIVE_ANON\000"
.LASF198:
	.ascii	"data\000"
.LASF22:
	.ascii	"pid_type\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF266:
	.ascii	"pvi_wf_setup\000"
.LASF7:
	.ascii	"__u16\000"
.LASF40:
	.ascii	"N_ONLINE\000"
.LASF268:
	.ascii	"_printk\000"
.LASF32:
	.ascii	"HRTIMER_BASE_TAI\000"
.LASF181:
	.ascii	"WF_TYPE_GCC16\000"
.LASF168:
	.ascii	"KMALLOC_DMA\000"
.LASF229:
	.ascii	"pvi_mode_table\000"
.LASF246:
	.ascii	"get_wf_temp_index\000"
.LASF82:
	.ascii	"NR_FREE_CMA_PAGES\000"
.LASF208:
	.ascii	"wf_subversion\000"
.LASF124:
	.ascii	"NR_FOLL_PIN_ACQUIRED\000"
.LASF106:
	.ascii	"NR_ANON_MAPPED\000"
.LASF44:
	.ascii	"N_CPU\000"
.LASF193:
	.ascii	"get_version\000"
.LASF151:
	.ascii	"__SD_BALANCE_NEWIDLE\000"
.LASF10:
	.ascii	"long long int\000"
.LASF123:
	.ascii	"NR_KERNEL_MISC_RECLAIMABLE\000"
.LASF61:
	.ascii	"vm_fault_t\000"
.LASF79:
	.ascii	"NR_ZONE_WRITE_PENDING\000"
.LASF250:
	.ascii	"pvi_modes\000"
.LASF110:
	.ascii	"NR_WRITEBACK\000"
.LASF15:
	.ascii	"bool\000"
.LASF215:
	.ascii	"vcom_offset\000"
.LASF42:
	.ascii	"N_HIGH_MEMORY\000"
.LASF55:
	.ascii	"RSEQ_CS_FLAG_NO_RESTART_ON_MIGRATE_BIT\000"
.LASF49:
	.ascii	"MM_SWAPENTS\000"
.LASF69:
	.ascii	"MIGRATE_ISOLATE\000"
.LASF223:
	.ascii	"waveformdata\000"
.LASF237:
	.ascii	"temp_index\000"
.LASF59:
	.ascii	"RSEQ_EVENT_SIGNAL_BIT\000"
.LASF232:
	.ascii	"pvi_wf_get_lut\000"
.LASF68:
	.ascii	"MIGRATE_CMA\000"
.LASF189:
	.ascii	"EBC_REFRESH_TRANS\000"
.LASF43:
	.ascii	"N_MEMORY\000"
.LASF149:
	.ascii	"ZONELIST_FALLBACK\000"
.LASF25:
	.ascii	"PCPU_FC_EMBED\000"
.LASF211:
	.ascii	"amepd_part_number\000"
.LASF27:
	.ascii	"PCPU_FC_NR\000"
.LASF131:
	.ascii	"LRU_INACTIVE_ANON\000"
.LASF94:
	.ascii	"NR_ISOLATED_FILE\000"
.LASF227:
	.ascii	"pvi_wf_ops\000"
.LASF52:
	.ascii	"rseq_cs_flags_bit\000"
.LASF136:
	.ascii	"NR_LRU_LISTS\000"
.LASF130:
	.ascii	"lru_list\000"
.LASF256:
	.ascii	"newpic\000"
.LASF47:
	.ascii	"MM_FILEPAGES\000"
.LASF205:
	.ascii	"fpl_lot\000"
.LASF102:
	.ascii	"WORKINGSET_RESTORE_BASE\000"
.LASF171:
	.ascii	"NR_KMALLOC_TYPES\000"
.LASF262:
	.ascii	"pixel\000"
.LASF9:
	.ascii	"__u32\000"
.LASF19:
	.ascii	"PIDTYPE_PGID\000"
.LASF219:
	.ascii	"temperaturenumber\000"
.LASF105:
	.ascii	"WORKINGSET_NODERECLAIM\000"
.LASF167:
	.ascii	"KMALLOC_NORMAL\000"
.LASF54:
	.ascii	"RSEQ_CS_FLAG_NO_RESTART_ON_SIGNAL_BIT\000"
.LASF183:
	.ascii	"WF_TYPE_AUTO\000"
.LASF5:
	.ascii	"short int\000"
.LASF187:
	.ascii	"EBC_REFRESH_NORM\000"
.LASF36:
	.ascii	"HRTIMER_BASE_TAI_SOFT\000"
.LASF111:
	.ascii	"NR_WRITEBACK_TEMP\000"
.LASF77:
	.ascii	"NR_ZONE_ACTIVE_FILE\000"
.LASF147:
	.ascii	"WMARK_PROMO\000"
.LASF165:
	.ascii	"__SD_FLAG_CNT\000"
.LASF257:
	.ascii	"frame_count\000"
.LASF252:
	.ascii	"decodewaveform\000"
.LASF74:
	.ascii	"NR_ZONE_INACTIVE_ANON\000"
.LASF83:
	.ascii	"NR_VM_ZONE_STAT_ITEMS\000"
.LASF95:
	.ascii	"WORKINGSET_NODES\000"
.LASF154:
	.ascii	"__SD_BALANCE_WAKE\000"
.LASF88:
	.ascii	"NR_INACTIVE_FILE\000"
.LASF23:
	.ascii	"pcpu_fc\000"
.LASF60:
	.ascii	"RSEQ_EVENT_MIGRATE_BIT\000"
.LASF92:
	.ascii	"NR_SLAB_UNRECLAIMABLE_B\000"
.LASF26:
	.ascii	"PCPU_FC_PAGE\000"
.LASF194:
	.ascii	"get_lut\000"
.LASF190:
	.ascii	"ebc_update_mode_t\000"
.LASF112:
	.ascii	"NR_SHMEM\000"
.LASF33:
	.ascii	"HRTIMER_BASE_MONOTONIC_SOFT\000"
.LASF35:
	.ascii	"HRTIMER_BASE_BOOTTIME_SOFT\000"
.LASF185:
	.ascii	"WF_TYPE_GRAY16\000"
.LASF70:
	.ascii	"MIGRATE_TYPES\000"
.LASF0:
	.ascii	"long unsigned int\000"
.LASF6:
	.ascii	"__u8\000"
.LASF17:
	.ascii	"PIDTYPE_PID\000"
.LASF186:
	.ascii	"ebc_refresh_mode_t\000"
.LASF231:
	.ascii	"pvi_wf_get_version\000"
.LASF108:
	.ascii	"NR_FILE_PAGES\000"
.LASF39:
	.ascii	"N_POSSIBLE\000"
.LASF202:
	.ascii	"serial\000"
.LASF50:
	.ascii	"MM_SHMEMPAGES\000"
.LASF230:
	.ascii	"spi_id_buffer\000"
.LASF236:
	.ascii	"sftemp\000"
.LASF164:
	.ascii	"__SD_NUMA\000"
.LASF80:
	.ascii	"NR_MLOCK\000"
.LASF197:
	.ascii	"frame_num\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF65:
	.ascii	"MIGRATE_RECLAIMABLE\000"
.LASF218:
	.ascii	"modenumber\000"
.LASF137:
	.ascii	"vmscan_throttle_state\000"
.LASF188:
	.ascii	"EBC_REFRESH_MONO\000"
.LASF66:
	.ascii	"MIGRATE_PCPTYPES\000"
.LASF12:
	.ascii	"false\000"
.LASF207:
	.ascii	"wf_version\000"
.LASF184:
	.ascii	"WF_TYPE_MAX\000"
.LASF169:
	.ascii	"KMALLOC_CGROUP\000"
.LASF115:
	.ascii	"NR_FILE_THPS\000"
.LASF201:
	.ascii	"file_length\000"
.LASF78:
	.ascii	"NR_ZONE_UNEVICTABLE\000"
.LASF72:
	.ascii	"NR_FREE_PAGES\000"
.LASF253:
	.ascii	"max_pixel\000"
.LASF176:
	.ascii	"WF_TYPE_GC16\000"
.LASF56:
	.ascii	"TASK_COMM_LEN\000"
.LASF216:
	.ascii	"xwia\000"
.LASF93:
	.ascii	"NR_ISOLATED_ANON\000"
.LASF239:
	.ascii	"pvi_wf_input\000"
.LASF209:
	.ascii	"wf_type\000"
.LASF158:
	.ascii	"__SD_SHARE_CPUCAPACITY\000"
.LASF121:
	.ascii	"NR_WRITTEN\000"
.LASF150:
	.ascii	"MAX_ZONELISTS\000"
.LASF24:
	.ascii	"PCPU_FC_AUTO\000"
.LASF142:
	.ascii	"NR_VMSCAN_THROTTLE\000"
.LASF53:
	.ascii	"RSEQ_CS_FLAG_NO_RESTART_ON_PREEMPT_BIT\000"
.LASF3:
	.ascii	"signed char\000"
.LASF135:
	.ascii	"LRU_UNEVICTABLE\000"
.LASF173:
	.ascii	"WF_TYPE_RESET\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF170:
	.ascii	"KMALLOC_RECLAIM\000"
.LASF203:
	.ascii	"run_type\000"
.LASF251:
	.ascii	"parse_mode_version\000"
.LASF267:
	.ascii	"__func__\000"
.LASF214:
	.ascii	"reserved\000"
.LASF132:
	.ascii	"LRU_ACTIVE_ANON\000"
.LASF113:
	.ascii	"NR_SHMEM_THPS\000"
.LASF153:
	.ascii	"__SD_BALANCE_FORK\000"
.LASF163:
	.ascii	"__SD_OVERLAP\000"
.LASF160:
	.ascii	"__SD_SERIALIZE\000"
.LASF18:
	.ascii	"PIDTYPE_TGID\000"
.LASF63:
	.ascii	"MIGRATE_UNMOVABLE\000"
.LASF109:
	.ascii	"NR_FILE_DIRTY\000"
.LASF37:
	.ascii	"HRTIMER_MAX_CLOCK_BASES\000"
.LASF172:
	.ascii	"wf_lut_type\000"
.LASF51:
	.ascii	"NR_MM_COUNTERS\000"
.LASF45:
	.ascii	"N_GENERIC_INITIATOR\000"
.LASF20:
	.ascii	"PIDTYPE_SID\000"
.LASF144:
	.ascii	"WMARK_MIN\000"
.LASF75:
	.ascii	"NR_ZONE_ACTIVE_ANON\000"
.LASF145:
	.ascii	"WMARK_LOW\000"
.LASF161:
	.ascii	"__SD_ASYM_PACKING\000"
	.ident	"GCC: (GNU Toolchain for the A-profile Architecture 10.3-2021.07 (arm-10.29)) 10.3.1 20210621"
	.section	.note.GNU-stack,"",%progbits

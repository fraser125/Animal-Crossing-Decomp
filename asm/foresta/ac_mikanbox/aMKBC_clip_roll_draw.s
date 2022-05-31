lbl_805B30A8:
/* 805B30A8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805B30AC  7C 08 02 A6 */	mflr r0
/* 805B30B0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805B30B4  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 805B30B8  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 805B30BC  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 805B30C0  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 805B30C4  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 805B30C8  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 805B30CC  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 805B30D0  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 805B30D4  39 61 00 60 */	addi r11, r1, 0x60
/* 805B30D8  4B AE 7D DD */	bl func_8009AEB4
/* 805B30DC  7C 76 1B 78 */	mr r22, r3
/* 805B30E0  7C 99 23 78 */	mr r25, r4
/* 805B30E4  7C B5 2B 78 */	mr r21, r5
/* 805B30E8  38 60 00 47 */	li r3, 0x47
/* 805B30EC  38 80 00 0A */	li r4, 0xa
/* 805B30F0  4B DE AC DD */	bl mEv_get_save_area
/* 805B30F4  28 03 00 00 */	cmplwi r3, 0
/* 805B30F8  83 B6 00 00 */	lwz r29, 0(r22)
/* 805B30FC  7E DE B3 78 */	mr r30, r22
/* 805B3100  41 82 02 44 */	beq lbl_805B3344
/* 805B3104  A0 03 00 02 */	lhz r0, 2(r3)
/* 805B3108  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 805B310C  41 82 02 38 */	beq lbl_805B3344
/* 805B3110  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B3114  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B3118  3C 63 00 02 */	addis r3, r3, 2
/* 805B311C  80 03 60 E4 */	lwz r0, 0x60e4(r3)
/* 805B3120  28 00 00 00 */	cmplwi r0, 0
/* 805B3124  40 82 00 08 */	bne lbl_805B312C
/* 805B3128  48 00 02 1C */	b lbl_805B3344
lbl_805B312C:
/* 805B312C  3C 80 81 20 */	lis r4, totakeke_str@ha /* 0x811FA0D0@ha */
/* 805B3130  7F A3 EB 78 */	mr r3, r29
/* 805B3134  38 04 A0 D0 */	addi r0, r4, totakeke_str@l /* 0x811FA0D0@l */
/* 805B3138  38 80 00 01 */	li r4, 1
/* 805B313C  7C 1A 03 78 */	mr r26, r0
/* 805B3140  4B DF CF F9 */	bl mFont_SetMatrix
/* 805B3144  3C 60 80 6C */	lis r3, page_table@ha /* 0x806C5A7C@ha */
/* 805B3148  2C 19 00 28 */	cmpwi r25, 0x28
/* 805B314C  38 63 5A 7C */	addi r3, r3, page_table@l /* 0x806C5A7C@l */
/* 805B3150  7C 83 AA 14 */	add r4, r3, r21
/* 805B3154  7C 63 A8 AE */	lbzx r3, r3, r21
/* 805B3158  8B 64 00 01 */	lbz r27, 1(r4)
/* 805B315C  41 80 00 0C */	blt lbl_805B3168
/* 805B3160  2C 19 01 BE */	cmpwi r25, 0x1be
/* 805B3164  40 81 00 0C */	ble lbl_805B3170
lbl_805B3168:
/* 805B3168  3B 20 00 00 */	li r25, 0
/* 805B316C  48 00 00 A8 */	b lbl_805B3214
lbl_805B3170:
/* 805B3170  2C 19 00 78 */	cmpwi r25, 0x78
/* 805B3174  40 80 00 4C */	bge lbl_805B31C0
/* 805B3178  38 99 FF D8 */	addi r4, r25, -40
/* 805B317C  3C 00 43 30 */	lis r0, 0x4330
/* 805B3180  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805B3184  3C A0 80 65 */	lis r5, lit_517@ha /* 0x8064A8E4@ha */
/* 805B3188  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B318C  38 85 A8 E4 */	addi r4, r5, lit_517@l /* 0x8064A8E4@l */
/* 805B3190  3C A0 80 65 */	lis r5, data_8064A8C4@ha /* 0x8064A8C4@ha */
/* 805B3194  C8 24 00 00 */	lfd f1, 0(r4)
/* 805B3198  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B319C  C0 45 A8 C4 */	lfs f2, data_8064A8C4@l(r5)  /* 0x8064A8C4@l */
/* 805B31A0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805B31A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805B31A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805B31AC  FC 00 00 1E */	fctiwz f0, f0
/* 805B31B0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805B31B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B31B8  54 19 06 3E */	clrlwi r25, r0, 0x18
/* 805B31BC  48 00 00 58 */	b lbl_805B3214
lbl_805B31C0:
/* 805B31C0  2C 19 01 6E */	cmpwi r25, 0x16e
/* 805B31C4  40 81 00 4C */	ble lbl_805B3210
/* 805B31C8  20 99 01 BE */	subfic r4, r25, 0x1be
/* 805B31CC  3C 00 43 30 */	lis r0, 0x4330
/* 805B31D0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805B31D4  3C A0 80 65 */	lis r5, lit_517@ha /* 0x8064A8E4@ha */
/* 805B31D8  90 81 00 24 */	stw r4, 0x24(r1)
/* 805B31DC  38 85 A8 E4 */	addi r4, r5, lit_517@l /* 0x8064A8E4@l */
/* 805B31E0  3C A0 80 65 */	lis r5, data_8064A8C4@ha /* 0x8064A8C4@ha */
/* 805B31E4  C8 24 00 00 */	lfd f1, 0(r4)
/* 805B31E8  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B31EC  C0 45 A8 C4 */	lfs f2, data_8064A8C4@l(r5)  /* 0x8064A8C4@l */
/* 805B31F0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805B31F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805B31F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805B31FC  FC 00 00 1E */	fctiwz f0, f0
/* 805B3200  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805B3204  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B3208  54 19 06 3E */	clrlwi r25, r0, 0x18
/* 805B320C  48 00 00 08 */	b lbl_805B3214
lbl_805B3210:
/* 805B3210  3B 20 00 FF */	li r25, 0xff
lbl_805B3214:
/* 805B3214  38 03 00 0A */	addi r0, r3, 0xa
/* 805B3218  3F E0 43 30 */	lis r31, 0x4330
/* 805B321C  7C 1B 00 50 */	subf r0, r27, r0
/* 805B3220  3C 80 80 65 */	lis r4, lit_517@ha /* 0x8064A8E4@ha */
/* 805B3224  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805B3228  CB A4 A8 E4 */	lfd f29, lit_517@l(r4)  /* 0x8064A8E4@l */
/* 805B322C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B3230  3C A0 80 65 */	lis r5, lit_511@ha /* 0x8064A8CC@ha */
/* 805B3234  38 C5 A8 CC */	addi r6, r5, lit_511@l /* 0x8064A8CC@l */
/* 805B3238  3C 80 80 65 */	lis r4, lit_515@ha /* 0x8064A8DC@ha */
/* 805B323C  93 E1 00 20 */	stw r31, 0x20(r1)
/* 805B3240  3C A0 80 65 */	lis r5, lit_510@ha /* 0x8064A8C8@ha */
/* 805B3244  39 25 A8 C8 */	addi r9, r5, lit_510@l /* 0x8064A8C8@l */
/* 805B3248  3C E0 80 6C */	lis r7, index_line_table@ha /* 0x806C5A90@ha */
/* 805B324C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805B3250  3D 00 80 65 */	lis r8, lit_512@ha /* 0x8064A8D0@ha */
/* 805B3254  C0 26 00 00 */	lfs f1, 0(r6)
/* 805B3258  3C A0 80 65 */	lis r5, lit_513@ha /* 0x8064A8D4@ha */
/* 805B325C  EC 00 E8 28 */	fsubs f0, f0, f29
/* 805B3260  38 C5 A8 D4 */	addi r6, r5, lit_513@l /* 0x8064A8D4@l */
/* 805B3264  3C A0 80 65 */	lis r5, lit_514@ha /* 0x8064A8D8@ha */
/* 805B3268  C3 89 00 00 */	lfs f28, 0(r9)
/* 805B326C  C3 C6 00 00 */	lfs f30, 0(r6)
/* 805B3270  7C 7C 1B 78 */	mr r28, r3
/* 805B3274  EC 01 00 32 */	fmuls f0, f1, f0
/* 805B3278  C3 E4 A8 DC */	lfs f31, lit_515@l(r4)  /* 0x8064A8DC@l */
/* 805B327C  3A E7 5A 90 */	addi r23, r7, index_line_table@l /* 0x806C5A90@l */
/* 805B3280  3A C8 A8 D0 */	addi r22, r8, lit_512@l /* 0x8064A8D0@l */
/* 805B3284  3B 05 A8 D8 */	addi r24, r5, lit_514@l /* 0x8064A8D8@l */
/* 805B3288  3A A0 00 00 */	li r21, 0
/* 805B328C  EF 9C 00 2A */	fadds f28, f28, f0
/* 805B3290  48 00 00 98 */	b lbl_805B3328
lbl_805B3294:
/* 805B3294  38 00 00 20 */	li r0, 0x20
/* 805B3298  7E E3 BB 78 */	mr r3, r23
/* 805B329C  C0 76 00 00 */	lfs f3, 0(r22)
/* 805B32A0  38 80 00 00 */	li r4, 0
/* 805B32A4  7C 09 03 A6 */	mtctr r0
lbl_805B32A8:
/* 805B32A8  88 03 00 00 */	lbz r0, 0(r3)
/* 805B32AC  7C 00 E0 00 */	cmpw r0, r28
/* 805B32B0  40 82 00 08 */	bne lbl_805B32B8
/* 805B32B4  EC 63 07 B2 */	fmuls f3, f3, f30
lbl_805B32B8:
/* 805B32B8  38 84 00 01 */	addi r4, r4, 1
/* 805B32BC  38 63 00 01 */	addi r3, r3, 1
/* 805B32C0  42 00 FF E8 */	bdnz lbl_805B32A8
/* 805B32C4  6E A0 80 00 */	xoris r0, r21, 0x8000
/* 805B32C8  39 40 00 01 */	li r10, 1
/* 805B32CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B32D0  FC 80 18 90 */	fmr f4, f3
/* 805B32D4  C0 38 00 00 */	lfs f1, 0(r24)
/* 805B32D8  7F C3 F3 78 */	mr r3, r30
/* 805B32DC  93 E1 00 20 */	stw r31, 0x20(r1)
/* 805B32E0  7F 44 D3 78 */	mr r4, r26
/* 805B32E4  7F 29 CB 78 */	mr r9, r25
/* 805B32E8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805B32EC  38 A0 00 19 */	li r5, 0x19
/* 805B32F0  91 41 00 08 */	stw r10, 8(r1)
/* 805B32F4  38 C0 00 FF */	li r6, 0xff
/* 805B32F8  EC 00 E8 28 */	fsubs f0, f0, f29
/* 805B32FC  38 E0 00 FF */	li r7, 0xff
/* 805B3300  91 41 00 0C */	stw r10, 0xc(r1)
/* 805B3304  39 00 00 FF */	li r8, 0xff
/* 805B3308  EC 1F 00 32 */	fmuls f0, f31, f0
/* 805B330C  91 41 00 10 */	stw r10, 0x10(r1)
/* 805B3310  39 40 00 00 */	li r10, 0
/* 805B3314  EC 5C 00 2A */	fadds f2, f28, f0
/* 805B3318  4B DF CD 59 */	bl mFont_SetLineStrings_AndSpace
/* 805B331C  3B 5A 00 19 */	addi r26, r26, 0x19
/* 805B3320  3A B5 00 01 */	addi r21, r21, 1
/* 805B3324  3B 9C 00 01 */	addi r28, r28, 1
lbl_805B3328:
/* 805B3328  2C 15 00 0A */	cmpwi r21, 0xa
/* 805B332C  40 80 00 0C */	bge lbl_805B3338
/* 805B3330  7C 1C D8 00 */	cmpw r28, r27
/* 805B3334  41 80 FF 60 */	blt lbl_805B3294
lbl_805B3338:
/* 805B3338  7F A3 EB 78 */	mr r3, r29
/* 805B333C  38 80 00 01 */	li r4, 1
/* 805B3340  4B DF CE F9 */	bl mFont_UnSetMatrix
lbl_805B3344:
/* 805B3344  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 805B3348  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 805B334C  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 805B3350  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 805B3354  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 805B3358  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 805B335C  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 805B3360  39 61 00 60 */	addi r11, r1, 0x60
/* 805B3364  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 805B3368  4B AE 7B 99 */	bl func_8009AF00
/* 805B336C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805B3370  7C 08 03 A6 */	mtlr r0
/* 805B3374  38 21 00 A0 */	addi r1, r1, 0xa0
/* 805B3378  4E 80 00 20 */	blr 

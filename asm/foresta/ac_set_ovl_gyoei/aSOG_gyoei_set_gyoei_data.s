lbl_80499940:
/* 80499940  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80499944  7C 08 02 A6 */	mflr r0
/* 80499948  90 01 00 94 */	stw r0, 0x94(r1)
/* 8049994C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80499950  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80499954  39 61 00 80 */	addi r11, r1, 0x80
/* 80499958  4B C0 15 65 */	bl func_8009AEBC
/* 8049995C  2C 05 FF FF */	cmpwi r5, -1
/* 80499960  7C 79 1B 78 */	mr r25, r3
/* 80499964  7C 9A 23 78 */	mr r26, r4
/* 80499968  3B A0 00 00 */	li r29, 0
/* 8049996C  41 82 03 7C */	beq lbl_80499CE8
/* 80499970  3C 80 81 1D */	lis r4, data_811CEE38@ha /* 0x811CEE38@ha */
/* 80499974  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80499978  38 00 00 FF */	li r0, 0xff
/* 8049997C  38 84 EE 38 */	addi r4, r4, data_811CEE38@l /* 0x811CEE38@l */
/* 80499980  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80499984  7C 09 03 A6 */	mtctr r0
lbl_80499988:
/* 80499988  B0 64 00 00 */	sth r3, 0(r4)
/* 8049998C  38 84 00 02 */	addi r4, r4, 2
/* 80499990  42 00 FF F8 */	bdnz lbl_80499988
/* 80499994  98 B9 00 00 */	stb r5, 0(r25)
/* 80499998  80 7A 00 00 */	lwz r3, 0(r26)
/* 8049999C  80 9A 00 04 */	lwz r4, 4(r26)
/* 804999A0  4B F0 CB CD */	bl mFI_GetBkNum2ColTop
/* 804999A4  7C 7B 1B 79 */	or. r27, r3, r3
/* 804999A8  3C 80 81 1D */	lis r4, data_811CEE38@ha /* 0x811CEE38@ha */
/* 804999AC  3B E4 EE 38 */	addi r31, r4, data_811CEE38@l /* 0x811CEE38@l */
/* 804999B0  41 82 02 AC */	beq lbl_80499C5C
/* 804999B4  3B C0 00 00 */	li r30, 0
/* 804999B8  7F D8 F3 78 */	mr r24, r30
lbl_804999BC:
/* 804999BC  3B 80 00 00 */	li r28, 0
lbl_804999C0:
/* 804999C0  2C 1E 00 02 */	cmpwi r30, 2
/* 804999C4  41 80 02 78 */	blt lbl_80499C3C
/* 804999C8  2C 1E 00 0E */	cmpwi r30, 0xe
/* 804999CC  40 80 02 70 */	bge lbl_80499C3C
/* 804999D0  2C 1C 00 02 */	cmpwi r28, 2
/* 804999D4  41 80 02 68 */	blt lbl_80499C3C
/* 804999D8  2C 1C 00 0E */	cmpwi r28, 0xe
/* 804999DC  40 80 02 60 */	bge lbl_80499C3C
/* 804999E0  88 79 00 00 */	lbz r3, 0(r25)
/* 804999E4  88 9B 00 03 */	lbz r4, 3(r27)
/* 804999E8  38 03 FF ED */	addi r0, r3, -19
/* 804999EC  28 00 00 19 */	cmplwi r0, 0x19
/* 804999F0  54 97 06 BE */	clrlwi r23, r4, 0x1a
/* 804999F4  41 81 02 28 */	bgt lbl_80499C1C
/* 804999F8  3C 60 80 69 */	lis r3, lit_622@ha /* 0x8068CC38@ha */
/* 804999FC  54 00 10 3A */	slwi r0, r0, 2
/* 80499A00  38 63 CC 38 */	addi r3, r3, lit_622@l /* 0x8068CC38@l */
/* 80499A04  7C 03 00 2E */	lwzx r0, r3, r0
/* 80499A08  7C 09 03 A6 */	mtctr r0
/* 80499A0C  4E 80 04 20 */	bctr 
lbl_80499A10:
/* 80499A10  28 17 00 0D */	cmplwi r23, 0xd
/* 80499A14  40 82 02 28 */	bne lbl_80499C3C
/* 80499A18  7C 1C C2 14 */	add r0, r28, r24
/* 80499A1C  3B BD 00 01 */	addi r29, r29, 1
/* 80499A20  B0 1F 00 00 */	sth r0, 0(r31)
/* 80499A24  3B FF 00 02 */	addi r31, r31, 2
/* 80499A28  48 00 02 14 */	b lbl_80499C3C
lbl_80499A2C:
/* 80499A2C  28 17 00 18 */	cmplwi r23, 0x18
/* 80499A30  40 82 02 0C */	bne lbl_80499C3C
/* 80499A34  28 17 00 0B */	cmplwi r23, 0xb
/* 80499A38  41 82 02 04 */	beq lbl_80499C3C
/* 80499A3C  80 9A 00 00 */	lwz r4, 0(r26)
/* 80499A40  7F 86 E3 78 */	mr r6, r28
/* 80499A44  80 BA 00 04 */	lwz r5, 4(r26)
/* 80499A48  7F C7 F3 78 */	mr r7, r30
/* 80499A4C  38 61 00 38 */	addi r3, r1, 0x38
/* 80499A50  4B F0 C2 A5 */	bl mFI_BkandUtNum2CenterWpos
/* 80499A54  80 E1 00 38 */	lwz r7, 0x38(r1)
/* 80499A58  3C 60 80 64 */	lis r3, lit_513@ha /* 0x80644CF4@ha */
/* 80499A5C  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 80499A60  38 A3 4C F4 */	addi r5, r3, lit_513@l /* 0x80644CF4@l */
/* 80499A64  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80499A68  38 81 00 2C */	addi r4, r1, 0x2c
/* 80499A6C  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 80499A70  38 60 00 00 */	li r3, 0
/* 80499A74  C0 25 00 00 */	lfs f1, 0(r5)
/* 80499A78  90 C1 00 30 */	stw r6, 0x30(r1)
/* 80499A7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80499A80  4B EF 5C 39 */	bl func_8038F6B8
/* 80499A84  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 80499A88  3C 60 80 69 */	lis r3, lit_621@ha /* 0x8068CC24@ha */
/* 80499A8C  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 80499A90  FF E0 08 90 */	fmr f31, f1
/* 80499A94  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80499A98  38 83 CC 24 */	addi r4, r3, lit_621@l /* 0x8068CC24@l */
/* 80499A9C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 80499AA0  38 61 00 20 */	addi r3, r1, 0x20
/* 80499AA4  38 A0 07 A5 */	li r5, 0x7a5
/* 80499AA8  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80499AAC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80499AB0  4B EF A5 09 */	bl mCoBG_GetWaterHeight_File
/* 80499AB4  EF E1 F8 28 */	fsubs f31, f1, f31
/* 80499AB8  38 61 00 38 */	addi r3, r1, 0x38
/* 80499ABC  4B EF 69 ED */	bl mCoBG_CheckSandUt_ForFish
/* 80499AC0  2C 03 00 00 */	cmpwi r3, 0
/* 80499AC4  40 82 01 78 */	bne lbl_80499C3C
/* 80499AC8  3C 60 80 64 */	lis r3, data_80644CE4@ha /* 0x80644CE4@ha */
/* 80499ACC  C0 03 4C E4 */	lfs f0, data_80644CE4@l(r3)  /* 0x80644CE4@l */
/* 80499AD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80499AD4  4C 41 13 82 */	cror 2, 1, 2
/* 80499AD8  40 82 01 64 */	bne lbl_80499C3C
/* 80499ADC  7C 1C C2 14 */	add r0, r28, r24
/* 80499AE0  3B BD 00 01 */	addi r29, r29, 1
/* 80499AE4  B0 1F 00 00 */	sth r0, 0(r31)
/* 80499AE8  3B FF 00 02 */	addi r31, r31, 2
/* 80499AEC  48 00 01 50 */	b lbl_80499C3C
lbl_80499AF0:
/* 80499AF0  7E E3 BB 78 */	mr r3, r23
/* 80499AF4  4B EF A7 D9 */	bl mCoBG_CheckWaterAttribute
/* 80499AF8  2C 03 00 00 */	cmpwi r3, 0
/* 80499AFC  41 82 01 40 */	beq lbl_80499C3C
/* 80499B00  28 17 00 18 */	cmplwi r23, 0x18
/* 80499B04  40 82 00 C0 */	bne lbl_80499BC4
/* 80499B08  28 17 00 0B */	cmplwi r23, 0xb
/* 80499B0C  41 82 00 B8 */	beq lbl_80499BC4
/* 80499B10  80 9A 00 00 */	lwz r4, 0(r26)
/* 80499B14  7F 86 E3 78 */	mr r6, r28
/* 80499B18  80 BA 00 04 */	lwz r5, 4(r26)
/* 80499B1C  7F C7 F3 78 */	mr r7, r30
/* 80499B20  38 61 00 38 */	addi r3, r1, 0x38
/* 80499B24  4B F0 C1 D1 */	bl mFI_BkandUtNum2CenterWpos
/* 80499B28  80 E1 00 38 */	lwz r7, 0x38(r1)
/* 80499B2C  3C 60 80 64 */	lis r3, lit_513@ha /* 0x80644CF4@ha */
/* 80499B30  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 80499B34  38 A3 4C F4 */	addi r5, r3, lit_513@l /* 0x80644CF4@l */
/* 80499B38  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80499B3C  38 81 00 14 */	addi r4, r1, 0x14
/* 80499B40  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80499B44  38 60 00 00 */	li r3, 0
/* 80499B48  C0 25 00 00 */	lfs f1, 0(r5)
/* 80499B4C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80499B50  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80499B54  4B EF 5B 65 */	bl func_8038F6B8
/* 80499B58  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 80499B5C  3C 60 80 69 */	lis r3, lit_621@ha /* 0x8068CC24@ha */
/* 80499B60  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 80499B64  FF E0 08 90 */	fmr f31, f1
/* 80499B68  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80499B6C  38 83 CC 24 */	addi r4, r3, lit_621@l /* 0x8068CC24@l */
/* 80499B70  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80499B74  38 61 00 08 */	addi r3, r1, 8
/* 80499B78  38 A0 07 BF */	li r5, 0x7bf
/* 80499B7C  90 C1 00 08 */	stw r6, 8(r1)
/* 80499B80  90 01 00 10 */	stw r0, 0x10(r1)
/* 80499B84  4B EF A4 35 */	bl mCoBG_GetWaterHeight_File
/* 80499B88  EF E1 F8 28 */	fsubs f31, f1, f31
/* 80499B8C  38 61 00 38 */	addi r3, r1, 0x38
/* 80499B90  4B EF 69 19 */	bl mCoBG_CheckSandUt_ForFish
/* 80499B94  2C 03 00 00 */	cmpwi r3, 0
/* 80499B98  40 82 00 A4 */	bne lbl_80499C3C
/* 80499B9C  3C 60 80 64 */	lis r3, data_80644CE4@ha /* 0x80644CE4@ha */
/* 80499BA0  C0 03 4C E4 */	lfs f0, data_80644CE4@l(r3)  /* 0x80644CE4@l */
/* 80499BA4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80499BA8  4C 41 13 82 */	cror 2, 1, 2
/* 80499BAC  40 82 00 90 */	bne lbl_80499C3C
/* 80499BB0  7C 1C C2 14 */	add r0, r28, r24
/* 80499BB4  3B BD 00 01 */	addi r29, r29, 1
/* 80499BB8  B0 1F 00 00 */	sth r0, 0(r31)
/* 80499BBC  3B FF 00 02 */	addi r31, r31, 2
/* 80499BC0  48 00 00 7C */	b lbl_80499C3C
lbl_80499BC4:
/* 80499BC4  7C 1C C2 14 */	add r0, r28, r24
/* 80499BC8  3B BD 00 01 */	addi r29, r29, 1
/* 80499BCC  B0 1F 00 00 */	sth r0, 0(r31)
/* 80499BD0  3B FF 00 02 */	addi r31, r31, 2
/* 80499BD4  48 00 00 68 */	b lbl_80499C3C
lbl_80499BD8:
/* 80499BD8  2C 1E 00 05 */	cmpwi r30, 5
/* 80499BDC  41 80 00 60 */	blt lbl_80499C3C
/* 80499BE0  2C 1E 00 0B */	cmpwi r30, 0xb
/* 80499BE4  40 80 00 58 */	bge lbl_80499C3C
/* 80499BE8  2C 1C 00 05 */	cmpwi r28, 5
/* 80499BEC  41 80 00 50 */	blt lbl_80499C3C
/* 80499BF0  2C 1C 00 0B */	cmpwi r28, 0xb
/* 80499BF4  40 80 00 48 */	bge lbl_80499C3C
/* 80499BF8  7E E3 BB 78 */	mr r3, r23
/* 80499BFC  4B EF A6 D1 */	bl mCoBG_CheckWaterAttribute
/* 80499C00  2C 03 00 00 */	cmpwi r3, 0
/* 80499C04  41 82 00 38 */	beq lbl_80499C3C
/* 80499C08  7C 1C C2 14 */	add r0, r28, r24
/* 80499C0C  3B BD 00 01 */	addi r29, r29, 1
/* 80499C10  B0 1F 00 00 */	sth r0, 0(r31)
/* 80499C14  3B FF 00 02 */	addi r31, r31, 2
/* 80499C18  48 00 00 24 */	b lbl_80499C3C
lbl_80499C1C:
/* 80499C1C  7E E3 BB 78 */	mr r3, r23
/* 80499C20  4B EF A6 AD */	bl mCoBG_CheckWaterAttribute
/* 80499C24  2C 03 00 00 */	cmpwi r3, 0
/* 80499C28  41 82 00 14 */	beq lbl_80499C3C
/* 80499C2C  7C 1C C2 14 */	add r0, r28, r24
/* 80499C30  3B BD 00 01 */	addi r29, r29, 1
/* 80499C34  B0 1F 00 00 */	sth r0, 0(r31)
/* 80499C38  3B FF 00 02 */	addi r31, r31, 2
lbl_80499C3C:
/* 80499C3C  3B 9C 00 01 */	addi r28, r28, 1
/* 80499C40  3B 7B 00 04 */	addi r27, r27, 4
/* 80499C44  2C 1C 00 10 */	cmpwi r28, 0x10
/* 80499C48  41 80 FD 78 */	blt lbl_804999C0
/* 80499C4C  3B DE 00 01 */	addi r30, r30, 1
/* 80499C50  3B 18 00 10 */	addi r24, r24, 0x10
/* 80499C54  2C 1E 00 10 */	cmpwi r30, 0x10
/* 80499C58  41 80 FD 64 */	blt lbl_804999BC
lbl_80499C5C:
/* 80499C5C  7F A0 07 35 */	extsh. r0, r29
/* 80499C60  40 82 00 0C */	bne lbl_80499C6C
/* 80499C64  38 60 00 00 */	li r3, 0
/* 80499C68  48 00 00 84 */	b lbl_80499CEC
lbl_80499C6C:
/* 80499C6C  4B BC 30 89 */	bl fqrand
/* 80499C70  7F A3 07 34 */	extsh r3, r29
/* 80499C74  3C 00 43 30 */	lis r0, 0x4330
/* 80499C78  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80499C7C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80499C80  3C 80 80 64 */	lis r4, lit_457@ha /* 0x80644CEC@ha */
/* 80499C84  38 00 00 00 */	li r0, 0
/* 80499C88  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80499C8C  3C 60 81 1D */	lis r3, data_811CEE38@ha /* 0x811CEE38@ha */
/* 80499C90  C8 44 4C EC */	lfd f2, lit_457@l(r4)  /* 0x80644CEC@l */
/* 80499C94  38 83 EE 38 */	addi r4, r3, data_811CEE38@l /* 0x811CEE38@l */
/* 80499C98  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80499C9C  38 60 00 01 */	li r3, 1
/* 80499CA0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80499CA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80499CA8  FC 00 00 1E */	fctiwz f0, f0
/* 80499CAC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80499CB0  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 80499CB4  54 A5 08 3C */	slwi r5, r5, 1
/* 80499CB8  7C E4 2A 2E */	lhzx r7, r4, r5
/* 80499CBC  54 E4 E0 06 */	slwi r4, r7, 0x1c
/* 80499CC0  54 E6 0F FE */	srwi r6, r7, 0x1f
/* 80499CC4  7C A6 20 50 */	subf r5, r6, r4
/* 80499CC8  54 A5 20 3E */	rotlwi r5, r5, 4
/* 80499CCC  7C E4 26 70 */	srawi r4, r7, 4
/* 80499CD0  7C A5 32 14 */	add r5, r5, r6
/* 80499CD4  98 B9 00 01 */	stb r5, 1(r25)
/* 80499CD8  7C 84 01 94 */	addze r4, r4
/* 80499CDC  98 99 00 02 */	stb r4, 2(r25)
/* 80499CE0  98 79 00 03 */	stb r3, 3(r25)
/* 80499CE4  90 19 00 04 */	stw r0, 4(r25)
lbl_80499CE8:
/* 80499CE8  38 60 00 01 */	li r3, 1
lbl_80499CEC:
/* 80499CEC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80499CF0  39 61 00 80 */	addi r11, r1, 0x80
/* 80499CF4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80499CF8  4B C0 12 11 */	bl func_8009AF08
/* 80499CFC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80499D00  7C 08 03 A6 */	mtlr r0
/* 80499D04  38 21 00 90 */	addi r1, r1, 0x90
/* 80499D08  4E 80 00 20 */	blr 

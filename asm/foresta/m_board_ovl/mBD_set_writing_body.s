lbl_805C5ABC:
/* 805C5ABC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805C5AC0  7C 08 02 A6 */	mflr r0
/* 805C5AC4  90 01 00 74 */	stw r0, 0x74(r1)
/* 805C5AC8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805C5ACC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805C5AD0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805C5AD4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805C5AD8  39 61 00 50 */	addi r11, r1, 0x50
/* 805C5ADC  4B AD 53 E1 */	bl func_8009AEBC
/* 805C5AE0  81 43 00 2C */	lwz r10, 0x2c(r3)
/* 805C5AE4  3C 60 80 65 */	lis r3, lit_505@ha /* 0x8064ADFC@ha */
/* 805C5AE8  7C 97 23 78 */	mr r23, r4
/* 805C5AEC  C3 C3 AD FC */	lfs f30, lit_505@l(r3)  /* 0x8064ADFC@l */
/* 805C5AF0  81 4A 09 90 */	lwz r10, 0x990(r10)
/* 805C5AF4  FF E0 08 90 */	fmr f31, f1
/* 805C5AF8  38 00 00 00 */	li r0, 0
/* 805C5AFC  7C B8 2B 78 */	mr r24, r5
/* 805C5B00  38 8A 00 52 */	addi r4, r10, 0x52
/* 805C5B04  7C D9 33 78 */	mr r25, r6
/* 805C5B08  90 81 00 18 */	stw r4, 0x18(r1)
/* 805C5B0C  7C FA 3B 78 */	mr r26, r7
/* 805C5B10  7D 1B 43 78 */	mr r27, r8
/* 805C5B14  88 6A 00 06 */	lbz r3, 6(r10)
/* 805C5B18  7D 3C 4B 78 */	mr r28, r9
/* 805C5B1C  3B A0 00 00 */	li r29, 0
/* 805C5B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C5B24  7F C4 1A 14 */	add r30, r4, r3
/* 805C5B28  90 01 00 10 */	stw r0, 0x10(r1)
lbl_805C5B2C:
/* 805C5B2C  38 00 00 00 */	li r0, 0
/* 805C5B30  83 E1 00 18 */	lwz r31, 0x18(r1)
/* 805C5B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C5B38  90 01 00 10 */	stw r0, 0x10(r1)
lbl_805C5B3C:
/* 805C5B3C  7F C4 F3 78 */	mr r4, r30
/* 805C5B40  38 61 00 18 */	addi r3, r1, 0x18
/* 805C5B44  38 A1 00 14 */	addi r5, r1, 0x14
/* 805C5B48  38 C1 00 10 */	addi r6, r1, 0x10
/* 805C5B4C  4B FF F2 61 */	bl func_805C4DAC
/* 805C5B50  2C 03 00 03 */	cmpwi r3, 3
/* 805C5B54  40 82 01 A0 */	bne lbl_805C5CF4
/* 805C5B58  2C 1D 00 05 */	cmpwi r29, 5
/* 805C5B5C  41 82 00 80 */	beq lbl_805C5BDC
/* 805C5B60  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805C5B64  7C 03 F8 40 */	cmplw r3, r31
/* 805C5B68  41 82 00 10 */	beq lbl_805C5B78
/* 805C5B6C  88 03 FF FF */	lbz r0, -1(r3)
/* 805C5B70  28 00 00 CD */	cmplwi r0, 0xcd
/* 805C5B74  41 82 00 20 */	beq lbl_805C5B94
lbl_805C5B78:
/* 805C5B78  88 63 00 00 */	lbz r3, 0(r3)
/* 805C5B7C  38 80 00 01 */	li r4, 1
/* 805C5B80  4B DE 9B 1D */	bl mFont_GetCodeWidth
/* 805C5B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C5B88  7C 00 1A 14 */	add r0, r0, r3
/* 805C5B8C  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 805C5B90  40 81 00 4C */	ble lbl_805C5BDC
lbl_805C5B94:
/* 805C5B94  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C5B98  3C 80 80 65 */	lis r4, lit_719@ha /* 0x8064AE28@ha */
/* 805C5B9C  38 A3 AD CC */	addi r5, r3, data_8064ADCC@l /* 0x8064ADCC@l */
/* 805C5BA0  C0 05 00 00 */	lfs f0, 0(r5)
/* 805C5BA4  38 A4 AE 28 */	addi r5, r4, lit_719@l /* 0x8064AE28@l */
/* 805C5BA8  3C 60 80 65 */	lis r3, lit_505@ha /* 0x8064ADFC@ha */
/* 805C5BAC  3C 80 80 65 */	lis r4, lit_720@ha /* 0x8064AE2C@ha */
/* 805C5BB0  EC 60 F8 2A */	fadds f3, f0, f31
/* 805C5BB4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805C5BB8  C0 23 AD FC */	lfs f1, lit_505@l(r3)  /* 0x8064ADFC@l */
/* 805C5BBC  C0 44 AE 2C */	lfs f2, lit_720@l(r4)  /* 0x8064AE2C@l */
/* 805C5BC0  EC 03 00 28 */	fsubs f0, f3, f0
/* 805C5BC4  D0 1A 00 00 */	stfs f0, 0(r26)
/* 805C5BC8  C0 19 00 00 */	lfs f0, 0(r25)
/* 805C5BCC  EC 01 00 2A */	fadds f0, f1, f0
/* 805C5BD0  EC 02 00 28 */	fsubs f0, f2, f0
/* 805C5BD4  D0 1B 00 00 */	stfs f0, 0(r27)
/* 805C5BD8  48 00 00 60 */	b lbl_805C5C38
lbl_805C5BDC:
/* 805C5BDC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805C5BE0  3C 00 43 30 */	lis r0, 0x4330
/* 805C5BE4  3C A0 80 65 */	lis r5, lit_483@ha /* 0x8064ADEC@ha */
/* 805C5BE8  3C C0 80 65 */	lis r6, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C5BEC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805C5BF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 805C5BF4  C8 25 AD EC */	lfd f1, lit_483@l(r5)  /* 0x8064ADEC@l */
/* 805C5BF8  3C 60 80 65 */	lis r3, lit_719@ha /* 0x8064AE28@ha */
/* 805C5BFC  90 81 00 24 */	stw r4, 0x24(r1)
/* 805C5C00  38 83 AE 28 */	addi r4, r3, lit_719@l /* 0x8064AE28@l */
/* 805C5C04  C0 66 AD CC */	lfs f3, data_8064ADCC@l(r6)  /* 0x8064ADCC@l */
/* 805C5C08  3C 60 80 65 */	lis r3, lit_720@ha /* 0x8064AE2C@ha */
/* 805C5C0C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805C5C10  EC 40 08 28 */	fsubs f2, f0, f1
/* 805C5C14  C0 04 00 00 */	lfs f0, 0(r4)
/* 805C5C18  C0 23 AE 2C */	lfs f1, lit_720@l(r3)  /* 0x8064AE2C@l */
/* 805C5C1C  EC 5F 10 2A */	fadds f2, f31, f2
/* 805C5C20  EC 43 10 2A */	fadds f2, f3, f2
/* 805C5C24  EC 02 00 28 */	fsubs f0, f2, f0
/* 805C5C28  D0 1A 00 00 */	stfs f0, 0(r26)
/* 805C5C2C  C0 19 00 00 */	lfs f0, 0(r25)
/* 805C5C30  EC 01 00 28 */	fsubs f0, f1, f0
/* 805C5C34  D0 1B 00 00 */	stfs f0, 0(r27)
lbl_805C5C38:
/* 805C5C38  80 17 00 04 */	lwz r0, 4(r23)
/* 805C5C3C  2C 00 00 01 */	cmpwi r0, 1
/* 805C5C40  41 82 00 20 */	beq lbl_805C5C60
/* 805C5C44  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805C5C48  88 03 FF FF */	lbz r0, -1(r3)
/* 805C5C4C  28 00 00 CD */	cmplwi r0, 0xcd
/* 805C5C50  40 82 00 10 */	bne lbl_805C5C60
/* 805C5C54  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805C5C58  38 03 FF FF */	addi r0, r3, -1
/* 805C5C5C  90 01 00 10 */	stw r0, 0x10(r1)
lbl_805C5C60:
/* 805C5C60  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 805C5C64  2C 05 00 00 */	cmpwi r5, 0
/* 805C5C68  41 82 00 48 */	beq lbl_805C5CB0
/* 805C5C6C  38 00 00 01 */	li r0, 1
/* 805C5C70  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C5C74  90 01 00 08 */	stw r0, 8(r1)
/* 805C5C78  38 00 00 00 */	li r0, 0
/* 805C5C7C  C0 63 AD CC */	lfs f3, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C5C80  FC 20 F8 90 */	fmr f1, f31
/* 805C5C84  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C5C88  7F 03 C3 78 */	mr r3, r24
/* 805C5C8C  FC 80 18 90 */	fmr f4, f3
/* 805C5C90  7F E4 FB 78 */	mr r4, r31
/* 805C5C94  C0 59 00 00 */	lfs f2, 0(r25)
/* 805C5C98  88 DC 00 00 */	lbz r6, 0(r28)
/* 805C5C9C  39 20 00 FF */	li r9, 0xff
/* 805C5CA0  88 FC 00 01 */	lbz r7, 1(r28)
/* 805C5CA4  89 1C 00 02 */	lbz r8, 2(r28)
/* 805C5CA8  39 40 00 00 */	li r10, 0
/* 805C5CAC  4B DE A3 FD */	bl mFont_SetLineStrings
lbl_805C5CB0:
/* 805C5CB0  20 7D 00 06 */	subfic r3, r29, 6
/* 805C5CB4  3C 00 43 30 */	lis r0, 0x4330
/* 805C5CB8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805C5CBC  3C 80 80 65 */	lis r4, lit_483@ha /* 0x8064ADEC@ha */
/* 805C5CC0  90 61 00 24 */	stw r3, 0x24(r1)
/* 805C5CC4  38 64 AD EC */	addi r3, r4, lit_483@l /* 0x8064ADEC@l */
/* 805C5CC8  3C 80 80 65 */	lis r4, lit_505@ha /* 0x8064ADFC@ha */
/* 805C5CCC  C8 23 00 00 */	lfd f1, 0(r3)
/* 805C5CD0  90 01 00 20 */	stw r0, 0x20(r1)
/* 805C5CD4  C0 44 AD FC */	lfs f2, lit_505@l(r4)  /* 0x8064ADFC@l */
/* 805C5CD8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805C5CDC  C0 79 00 00 */	lfs f3, 0(r25)
/* 805C5CE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805C5CE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C5CE8  EC 03 00 2A */	fadds f0, f3, f0
/* 805C5CEC  D0 19 00 00 */	stfs f0, 0(r25)
/* 805C5CF0  48 00 00 94 */	b lbl_805C5D84
lbl_805C5CF4:
/* 805C5CF4  2C 03 00 00 */	cmpwi r3, 0
/* 805C5CF8  41 82 FE 44 */	beq lbl_805C5B3C
/* 805C5CFC  2C 03 00 01 */	cmpwi r3, 1
/* 805C5D00  40 82 00 1C */	bne lbl_805C5D1C
/* 805C5D04  80 17 00 04 */	lwz r0, 4(r23)
/* 805C5D08  2C 00 00 01 */	cmpwi r0, 1
/* 805C5D0C  41 82 00 10 */	beq lbl_805C5D1C
/* 805C5D10  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805C5D14  38 03 FF FF */	addi r0, r3, -1
/* 805C5D18  90 01 00 10 */	stw r0, 0x10(r1)
lbl_805C5D1C:
/* 805C5D1C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 805C5D20  2C 05 00 00 */	cmpwi r5, 0
/* 805C5D24  41 82 00 48 */	beq lbl_805C5D6C
/* 805C5D28  38 00 00 01 */	li r0, 1
/* 805C5D2C  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C5D30  90 01 00 08 */	stw r0, 8(r1)
/* 805C5D34  38 00 00 00 */	li r0, 0
/* 805C5D38  C0 63 AD CC */	lfs f3, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C5D3C  FC 20 F8 90 */	fmr f1, f31
/* 805C5D40  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C5D44  7F 03 C3 78 */	mr r3, r24
/* 805C5D48  FC 80 18 90 */	fmr f4, f3
/* 805C5D4C  7F E4 FB 78 */	mr r4, r31
/* 805C5D50  C0 59 00 00 */	lfs f2, 0(r25)
/* 805C5D54  88 DC 00 00 */	lbz r6, 0(r28)
/* 805C5D58  39 20 00 FF */	li r9, 0xff
/* 805C5D5C  88 FC 00 01 */	lbz r7, 1(r28)
/* 805C5D60  89 1C 00 02 */	lbz r8, 2(r28)
/* 805C5D64  39 40 00 00 */	li r10, 0
/* 805C5D68  4B DE A3 41 */	bl mFont_SetLineStrings
lbl_805C5D6C:
/* 805C5D6C  C0 19 00 00 */	lfs f0, 0(r25)
/* 805C5D70  3B BD 00 01 */	addi r29, r29, 1
/* 805C5D74  2C 1D 00 06 */	cmpwi r29, 6
/* 805C5D78  EC 00 F0 2A */	fadds f0, f0, f30
/* 805C5D7C  D0 19 00 00 */	stfs f0, 0(r25)
/* 805C5D80  41 80 FD AC */	blt lbl_805C5B2C
lbl_805C5D84:
/* 805C5D84  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805C5D88  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805C5D8C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805C5D90  39 61 00 50 */	addi r11, r1, 0x50
/* 805C5D94  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805C5D98  4B AD 51 71 */	bl func_8009AF08
/* 805C5D9C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805C5DA0  7C 08 03 A6 */	mtlr r0
/* 805C5DA4  38 21 00 70 */	addi r1, r1, 0x70
/* 805C5DA8  4E 80 00 20 */	blr 

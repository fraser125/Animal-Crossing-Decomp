lbl_805C5DAC:
/* 805C5DAC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805C5DB0  7C 08 02 A6 */	mflr r0
/* 805C5DB4  90 01 00 84 */	stw r0, 0x84(r1)
/* 805C5DB8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805C5DBC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805C5DC0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805C5DC4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805C5DC8  39 61 00 60 */	addi r11, r1, 0x60
/* 805C5DCC  4B AD 50 F5 */	bl func_8009AEC0
/* 805C5DD0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805C5DD4  FF C0 08 90 */	fmr f30, f1
/* 805C5DD8  80 05 00 04 */	lwz r0, 4(r5)
/* 805C5DDC  FF E0 10 90 */	fmr f31, f2
/* 805C5DE0  83 E3 09 90 */	lwz r31, 0x990(r3)
/* 805C5DE4  7C 9B 23 78 */	mr r27, r4
/* 805C5DE8  2C 00 00 01 */	cmpwi r0, 1
/* 805C5DEC  88 9F 00 37 */	lbz r4, 0x37(r31)
/* 805C5DF0  3B DF 00 36 */	addi r30, r31, 0x36
/* 805C5DF4  7C DC 33 78 */	mr r28, r6
/* 805C5DF8  3B 00 00 00 */	li r24, 0
/* 805C5DFC  7C 99 23 78 */	mr r25, r4
/* 805C5E00  40 82 01 B8 */	bne lbl_805C5FB8
/* 805C5E04  80 05 00 38 */	lwz r0, 0x38(r5)
/* 805C5E08  2C 00 00 03 */	cmpwi r0, 3
/* 805C5E0C  40 82 00 48 */	bne lbl_805C5E54
/* 805C5E10  38 00 00 01 */	li r0, 1
/* 805C5E14  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C5E18  90 01 00 08 */	stw r0, 8(r1)
/* 805C5E1C  38 00 00 00 */	li r0, 0
/* 805C5E20  C0 63 AD CC */	lfs f3, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C5E24  7F 63 DB 78 */	mr r3, r27
/* 805C5E28  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C5E2C  38 9E 00 04 */	addi r4, r30, 4
/* 805C5E30  FC 80 18 90 */	fmr f4, f3
/* 805C5E34  39 20 00 FF */	li r9, 0xff
/* 805C5E38  88 BF 00 05 */	lbz r5, 5(r31)
/* 805C5E3C  39 40 00 00 */	li r10, 0
/* 805C5E40  88 DC 00 00 */	lbz r6, 0(r28)
/* 805C5E44  88 FC 00 01 */	lbz r7, 1(r28)
/* 805C5E48  89 1C 00 02 */	lbz r8, 2(r28)
/* 805C5E4C  4B DE A2 5D */	bl mFont_SetLineStrings
/* 805C5E50  48 00 02 70 */	b lbl_805C60C0
lbl_805C5E54:
/* 805C5E54  88 1F 00 00 */	lbz r0, 0(r31)
/* 805C5E58  28 00 00 00 */	cmplwi r0, 0
/* 805C5E5C  40 82 00 0C */	bne lbl_805C5E68
/* 805C5E60  3B A0 00 08 */	li r29, 8
/* 805C5E64  48 00 00 08 */	b lbl_805C5E6C
lbl_805C5E68:
/* 805C5E68  8B BF 00 03 */	lbz r29, 3(r31)
lbl_805C5E6C:
/* 805C5E6C  38 00 00 01 */	li r0, 1
/* 805C5E70  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C5E74  90 01 00 08 */	stw r0, 8(r1)
/* 805C5E78  38 00 00 00 */	li r0, 0
/* 805C5E7C  C0 63 AD CC */	lfs f3, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C5E80  7C 85 23 78 */	mr r5, r4
/* 805C5E84  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C5E88  FC 20 F0 90 */	fmr f1, f30
/* 805C5E8C  FC 40 F8 90 */	fmr f2, f31
/* 805C5E90  7F 63 DB 78 */	mr r3, r27
/* 805C5E94  FC 80 18 90 */	fmr f4, f3
/* 805C5E98  88 DC 00 00 */	lbz r6, 0(r28)
/* 805C5E9C  88 FC 00 01 */	lbz r7, 1(r28)
/* 805C5EA0  89 1C 00 02 */	lbz r8, 2(r28)
/* 805C5EA4  38 9E 00 04 */	addi r4, r30, 4
/* 805C5EA8  39 20 00 FF */	li r9, 0xff
/* 805C5EAC  39 40 00 00 */	li r10, 0
/* 805C5EB0  4B DE A1 F9 */	bl mFont_SetLineStrings
/* 805C5EB4  3B 5E 00 04 */	addi r26, r30, 4
/* 805C5EB8  48 00 00 18 */	b lbl_805C5ED0
lbl_805C5EBC:
/* 805C5EBC  88 7A 00 00 */	lbz r3, 0(r26)
/* 805C5EC0  38 80 00 01 */	li r4, 1
/* 805C5EC4  4B DE 97 D9 */	bl mFont_GetCodeWidth
/* 805C5EC8  7F 18 1A 14 */	add r24, r24, r3
/* 805C5ECC  3B 5A 00 01 */	addi r26, r26, 1
lbl_805C5ED0:
/* 805C5ED0  2C 19 00 00 */	cmpwi r25, 0
/* 805C5ED4  3B 39 FF FF */	addi r25, r25, -1
/* 805C5ED8  40 82 FF E4 */	bne lbl_805C5EBC
/* 805C5EDC  6F 03 80 00 */	xoris r3, r24, 0x8000
/* 805C5EE0  3C 00 43 30 */	lis r0, 0x4330
/* 805C5EE4  90 61 00 34 */	stw r3, 0x34(r1)
/* 805C5EE8  3C 80 80 65 */	lis r4, lit_483@ha /* 0x8064ADEC@ha */
/* 805C5EEC  C8 24 AD EC */	lfd f1, lit_483@l(r4)  /* 0x8064ADEC@l */
/* 805C5EF0  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C5EF4  90 01 00 30 */	stw r0, 0x30(r1)
/* 805C5EF8  38 80 00 01 */	li r4, 1
/* 805C5EFC  C0 63 AD CC */	lfs f3, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C5F00  FC 40 F8 90 */	fmr f2, f31
/* 805C5F04  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805C5F08  38 00 00 00 */	li r0, 0
/* 805C5F0C  90 81 00 08 */	stw r4, 8(r1)
/* 805C5F10  FC 80 18 90 */	fmr f4, f3
/* 805C5F14  EC 00 08 28 */	fsubs f0, f0, f1
/* 805C5F18  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C5F1C  7F 63 DB 78 */	mr r3, r27
/* 805C5F20  7F A5 EB 78 */	mr r5, r29
/* 805C5F24  38 9F 00 08 */	addi r4, r31, 8
/* 805C5F28  EF DE 00 2A */	fadds f30, f30, f0
/* 805C5F2C  38 C0 00 B9 */	li r6, 0xb9
/* 805C5F30  38 E0 00 00 */	li r7, 0
/* 805C5F34  39 00 00 00 */	li r8, 0
/* 805C5F38  39 20 00 FF */	li r9, 0xff
/* 805C5F3C  FC 20 F0 90 */	fmr f1, f30
/* 805C5F40  39 40 00 00 */	li r10, 0
/* 805C5F44  4B DE A1 65 */	bl mFont_SetLineStrings
/* 805C5F48  88 BE 00 01 */	lbz r5, 1(r30)
/* 805C5F4C  28 05 00 18 */	cmplwi r5, 0x18
/* 805C5F50  40 80 01 70 */	bge lbl_805C60C0
/* 805C5F54  3C 60 80 65 */	lis r3, lit_760@ha /* 0x8064AE30@ha */
/* 805C5F58  38 00 00 01 */	li r0, 1
/* 805C5F5C  38 83 AE 30 */	addi r4, r3, lit_760@l /* 0x8064AE30@l */
/* 805C5F60  90 01 00 08 */	stw r0, 8(r1)
/* 805C5F64  C0 04 00 00 */	lfs f0, 0(r4)
/* 805C5F68  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C5F6C  C0 63 AD CC */	lfs f3, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C5F70  38 00 00 00 */	li r0, 0
/* 805C5F74  EF DE 00 2A */	fadds f30, f30, f0
/* 805C5F78  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C5F7C  38 85 00 04 */	addi r4, r5, 4
/* 805C5F80  FC 40 F8 90 */	fmr f2, f31
/* 805C5F84  88 1F 00 05 */	lbz r0, 5(r31)
/* 805C5F88  FC 80 18 90 */	fmr f4, f3
/* 805C5F8C  FC 20 F0 90 */	fmr f1, f30
/* 805C5F90  88 DC 00 00 */	lbz r6, 0(r28)
/* 805C5F94  88 FC 00 01 */	lbz r7, 1(r28)
/* 805C5F98  7F 63 DB 78 */	mr r3, r27
/* 805C5F9C  89 1C 00 02 */	lbz r8, 2(r28)
/* 805C5FA0  7C 9E 22 14 */	add r4, r30, r4
/* 805C5FA4  7C A5 00 50 */	subf r5, r5, r0
/* 805C5FA8  39 20 00 FF */	li r9, 0xff
/* 805C5FAC  39 40 00 00 */	li r10, 0
/* 805C5FB0  4B DE A0 F9 */	bl mFont_SetLineStrings
/* 805C5FB4  48 00 01 0C */	b lbl_805C60C0
lbl_805C5FB8:
/* 805C5FB8  80 05 00 38 */	lwz r0, 0x38(r5)
/* 805C5FBC  2C 00 00 03 */	cmpwi r0, 3
/* 805C5FC0  41 82 00 0C */	beq lbl_805C5FCC
/* 805C5FC4  2C 00 00 04 */	cmpwi r0, 4
/* 805C5FC8  40 82 00 1C */	bne lbl_805C5FE4
lbl_805C5FCC:
/* 805C5FCC  88 BF 00 05 */	lbz r5, 5(r31)
/* 805C5FD0  38 61 00 10 */	addi r3, r1, 0x10
/* 805C5FD4  38 9E 00 04 */	addi r4, r30, 4
/* 805C5FD8  4B DF 4A 4D */	bl func_803BAA24
/* 805C5FDC  88 BF 00 05 */	lbz r5, 5(r31)
/* 805C5FE0  48 00 00 9C */	b lbl_805C607C
lbl_805C5FE4:
/* 805C5FE4  88 1E 00 02 */	lbz r0, 2(r30)
/* 805C5FE8  28 00 00 02 */	cmplwi r0, 2
/* 805C5FEC  41 82 00 14 */	beq lbl_805C6000
/* 805C5FF0  28 00 00 03 */	cmplwi r0, 3
/* 805C5FF4  41 82 00 0C */	beq lbl_805C6000
/* 805C5FF8  28 00 00 05 */	cmplwi r0, 5
/* 805C5FFC  40 82 00 1C */	bne lbl_805C6018
lbl_805C6000:
/* 805C6000  38 61 00 10 */	addi r3, r1, 0x10
/* 805C6004  38 9E 00 04 */	addi r4, r30, 4
/* 805C6008  38 A0 00 18 */	li r5, 0x18
/* 805C600C  4B DF 4A 19 */	bl func_803BAA24
/* 805C6010  38 A0 00 18 */	li r5, 0x18
/* 805C6014  48 00 00 68 */	b lbl_805C607C
lbl_805C6018:
/* 805C6018  7C 85 23 78 */	mr r5, r4
/* 805C601C  38 61 00 10 */	addi r3, r1, 0x10
/* 805C6020  38 9E 00 04 */	addi r4, r30, 4
/* 805C6024  4B DF 4A 01 */	bl func_803BAA24
/* 805C6028  88 1E 00 01 */	lbz r0, 1(r30)
/* 805C602C  38 61 00 10 */	addi r3, r1, 0x10
/* 805C6030  88 BF 00 03 */	lbz r5, 3(r31)
/* 805C6034  38 9F 00 08 */	addi r4, r31, 8
/* 805C6038  7C 63 02 14 */	add r3, r3, r0
/* 805C603C  4B DF 49 E9 */	bl func_803BAA24
/* 805C6040  88 DE 00 01 */	lbz r6, 1(r30)
/* 805C6044  28 06 00 18 */	cmplwi r6, 0x18
/* 805C6048  40 80 00 28 */	bge lbl_805C6070
/* 805C604C  88 7F 00 03 */	lbz r3, 3(r31)
/* 805C6050  38 86 00 04 */	addi r4, r6, 4
/* 805C6054  88 1F 00 05 */	lbz r0, 5(r31)
/* 805C6058  38 A1 00 10 */	addi r5, r1, 0x10
/* 805C605C  7C 63 32 14 */	add r3, r3, r6
/* 805C6060  7C 9E 22 14 */	add r4, r30, r4
/* 805C6064  7C 63 2A 14 */	add r3, r3, r5
/* 805C6068  7C A6 00 50 */	subf r5, r6, r0
/* 805C606C  4B DF 49 B9 */	bl func_803BAA24
lbl_805C6070:
/* 805C6070  88 7F 00 03 */	lbz r3, 3(r31)
/* 805C6074  88 1F 00 05 */	lbz r0, 5(r31)
/* 805C6078  7C A3 02 14 */	add r5, r3, r0
lbl_805C607C:
/* 805C607C  38 00 00 01 */	li r0, 1
/* 805C6080  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C6084  90 01 00 08 */	stw r0, 8(r1)
/* 805C6088  38 00 00 00 */	li r0, 0
/* 805C608C  C0 63 AD CC */	lfs f3, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C6090  FC 20 F0 90 */	fmr f1, f30
/* 805C6094  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C6098  FC 40 F8 90 */	fmr f2, f31
/* 805C609C  FC 80 18 90 */	fmr f4, f3
/* 805C60A0  7F 63 DB 78 */	mr r3, r27
/* 805C60A4  88 DC 00 00 */	lbz r6, 0(r28)
/* 805C60A8  88 FC 00 01 */	lbz r7, 1(r28)
/* 805C60AC  38 81 00 10 */	addi r4, r1, 0x10
/* 805C60B0  89 1C 00 02 */	lbz r8, 2(r28)
/* 805C60B4  39 20 00 FF */	li r9, 0xff
/* 805C60B8  39 40 00 00 */	li r10, 0
/* 805C60BC  4B DE 9F ED */	bl mFont_SetLineStrings
lbl_805C60C0:
/* 805C60C0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805C60C4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805C60C8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805C60CC  39 61 00 60 */	addi r11, r1, 0x60
/* 805C60D0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805C60D4  4B AD 4E 39 */	bl func_8009AF0C
/* 805C60D8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805C60DC  7C 08 03 A6 */	mtlr r0
/* 805C60E0  38 21 00 80 */	addi r1, r1, 0x80
/* 805C60E4  4E 80 00 20 */	blr 

lbl_8042AD7C:
/* 8042AD7C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8042AD80  7C 08 02 A6 */	mflr r0
/* 8042AD84  90 01 00 54 */	stw r0, 0x54(r1)
/* 8042AD88  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8042AD8C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8042AD90  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8042AD94  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8042AD98  39 61 00 30 */	addi r11, r1, 0x30
/* 8042AD9C  4B C7 01 31 */	bl func_8009AECC
/* 8042ADA0  3C A0 80 68 */	lis r5, data_80684108@ha /* 0x80684108@ha */
/* 8042ADA4  7C 7C 1B 78 */	mr r28, r3
/* 8042ADA8  7C 9D 23 78 */	mr r29, r4
/* 8042ADAC  3B C5 41 08 */	addi r30, r5, data_80684108@l /* 0x80684108@l */
/* 8042ADB0  4B FB EB B5 */	bl mSP_GetShopLevel
/* 8042ADB4  80 1C 01 A4 */	lwz r0, 0x1a4(r28)
/* 8042ADB8  54 64 08 3C */	slwi r4, r3, 1
/* 8042ADBC  38 7E 00 24 */	addi r3, r30, 0x24
/* 8042ADC0  2C 00 00 01 */	cmpwi r0, 1
/* 8042ADC4  7F E3 22 2E */	lhzx r31, r3, r4
/* 8042ADC8  40 82 00 74 */	bne lbl_8042AE3C
/* 8042ADCC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8042ADD0  3C 60 80 64 */	lis r3, lit_556@ha /* 0x8064404C@ha */
/* 8042ADD4  39 04 85 38 */	addi r8, r4, common_data@l /* 0x81138538@l */
/* 8042ADD8  C3 C3 40 4C */	lfs f30, lit_556@l(r3)  /* 0x8064404C@l */
/* 8042ADDC  3C 88 00 02 */	addis r4, r8, 2
/* 8042ADE0  38 DE 00 2C */	addi r6, r30, 0x2c
/* 8042ADE4  A0 E4 65 1E */	lhz r7, 0x651e(r4)
/* 8042ADE8  38 BE 00 3C */	addi r5, r30, 0x3c
/* 8042ADEC  38 9E 00 4C */	addi r4, r30, 0x4c
/* 8042ADF0  38 67 A0 00 */	addi r3, r7, -24576
/* 8042ADF4  1C 03 26 B0 */	mulli r0, r3, 0x26b0
/* 8042ADF8  90 7C 01 94 */	stw r3, 0x194(r28)
/* 8042ADFC  54 67 10 3A */	slwi r7, r3, 2
/* 8042AE00  7F C6 38 2E */	lwzx r30, r6, r7
/* 8042AE04  7C 68 02 14 */	add r3, r8, r0
/* 8042AE08  7F 65 38 2E */	lwzx r27, r5, r7
/* 8042AE0C  3C 63 00 01 */	addis r3, r3, 1
/* 8042AE10  7F E4 3C 2E */	lfsx f31, r4, r7
/* 8042AE14  38 63 9C E8 */	addi r3, r3, -25368
/* 8042AE18  4B FB 52 2D */	bl mPr_NullCheckPersonalID
/* 8042AE1C  38 03 FF FF */	addi r0, r3, -1
/* 8042AE20  39 00 00 03 */	li r8, 3
/* 8042AE24  30 00 FF FF */	addic r0, r0, -1
/* 8042AE28  39 20 00 02 */	li r9, 2
/* 8042AE2C  7C 60 01 10 */	subfe r3, r0, r0
/* 8042AE30  38 03 00 02 */	addi r0, r3, 2
/* 8042AE34  7C 07 03 78 */	mr r7, r0
/* 8042AE38  48 00 00 24 */	b lbl_8042AE5C
lbl_8042AE3C:
/* 8042AE3C  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80644050@ha */
/* 8042AE40  39 00 00 03 */	li r8, 3
/* 8042AE44  C3 E3 40 50 */	lfs f31, lit_557@l(r3)  /* 0x80644050@l */
/* 8042AE48  39 20 00 01 */	li r9, 1
/* 8042AE4C  3B C0 00 08 */	li r30, 8
/* 8042AE50  3B 60 00 0F */	li r27, 0xf
/* 8042AE54  FF C0 F8 90 */	fmr f30, f31
/* 8042AE58  38 E0 00 00 */	li r7, 0
lbl_8042AE5C:
/* 8042AE5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042AE60  93 61 00 08 */	stw r27, 8(r1)
/* 8042AE64  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8042AE68  7F CA F3 78 */	mr r10, r30
/* 8042AE6C  3C A4 00 02 */	addis r5, r4, 2
/* 8042AE70  7F A3 EB 78 */	mr r3, r29
/* 8042AE74  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8042AE78  7F E4 FB 78 */	mr r4, r31
/* 8042AE7C  38 C0 FF FF */	li r6, -1
/* 8042AE80  81 85 00 00 */	lwz r12, 0(r5)
/* 8042AE84  38 A0 FF FF */	li r5, -1
/* 8042AE88  7D 89 03 A6 */	mtctr r12
/* 8042AE8C  4E 80 04 21 */	bctrl 
/* 8042AE90  2C 03 00 01 */	cmpwi r3, 1
/* 8042AE94  40 82 00 40 */	bne lbl_8042AED4
/* 8042AE98  7F E4 FB 78 */	mr r4, r31
/* 8042AE9C  38 7D 1D A8 */	addi r3, r29, 0x1da8
/* 8042AEA0  38 A0 00 04 */	li r5, 4
/* 8042AEA4  4B F4 AE 9D */	bl Actor_info_fgName_search
/* 8042AEA8  90 7C 01 88 */	stw r3, 0x188(r28)
/* 8042AEAC  7F A4 EB 78 */	mr r4, r29
/* 8042AEB0  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8042AEB4  EC 00 F8 2A */	fadds f0, f0, f31
/* 8042AEB8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8042AEBC  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8042AEC0  EC 00 F0 2A */	fadds f0, f0, f30
/* 8042AEC4  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8042AEC8  7F 83 E3 78 */	mr r3, r28
/* 8042AECC  80 BC 01 78 */	lwz r5, 0x178(r28)
/* 8042AED0  48 00 06 45 */	bl aID_setupAction
lbl_8042AED4:
/* 8042AED4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8042AED8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8042AEDC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8042AEE0  39 61 00 30 */	addi r11, r1, 0x30
/* 8042AEE4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8042AEE8  4B C7 00 31 */	bl func_8009AF18
/* 8042AEEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8042AEF0  7C 08 03 A6 */	mtlr r0
/* 8042AEF4  38 21 00 50 */	addi r1, r1, 0x50
/* 8042AEF8  4E 80 00 20 */	blr 

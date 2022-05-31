lbl_805ADB84:
/* 805ADB84  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805ADB88  7C 08 02 A6 */	mflr r0
/* 805ADB8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805ADB90  39 61 00 50 */	addi r11, r1, 0x50
/* 805ADB94  4B AE D3 31 */	bl func_8009AEC4
/* 805ADB98  7C 7D 1B 78 */	mr r29, r3
/* 805ADB9C  7C 9E 23 78 */	mr r30, r4
/* 805ADBA0  C0 03 02 C8 */	lfs f0, 0x2c8(r3)
/* 805ADBA4  3B E0 00 00 */	li r31, 0
/* 805ADBA8  C0 43 02 CC */	lfs f2, 0x2cc(r3)
/* 805ADBAC  3B 80 00 00 */	li r28, 0
/* 805ADBB0  C0 23 02 D0 */	lfs f1, 0x2d0(r3)
/* 805ADBB4  FC 60 00 1E */	fctiwz f3, f0
/* 805ADBB8  C0 03 02 D4 */	lfs f0, 0x2d4(r3)
/* 805ADBBC  FC 40 10 1E */	fctiwz f2, f2
/* 805ADBC0  FC 20 08 1E */	fctiwz f1, f1
/* 805ADBC4  FC 00 00 1E */	fctiwz f0, f0
/* 805ADBC8  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 805ADBCC  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 805ADBD0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 805ADBD4  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 805ADBD8  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 805ADBDC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805ADBE0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 805ADBE4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805ADBE8  B0 A1 00 08 */	sth r5, 8(r1)
/* 805ADBEC  B0 81 00 0A */	sth r4, 0xa(r1)
/* 805ADBF0  B0 61 00 0C */	sth r3, 0xc(r1)
/* 805ADBF4  B0 01 00 0E */	sth r0, 0xe(r1)
lbl_805ADBF8:
/* 805ADBF8  7F E3 FB 78 */	mr r3, r31
/* 805ADBFC  4B FF FB 25 */	bl func_805AD720
/* 805ADC00  2C 03 00 00 */	cmpwi r3, 0
/* 805ADC04  41 82 00 78 */	beq lbl_805ADC7C
/* 805ADC08  3B 41 00 08 */	addi r26, r1, 8
/* 805ADC0C  7C 7A E2 AE */	lhax r3, r26, r28
/* 805ADC10  2C 03 00 00 */	cmpwi r3, 0
/* 805ADC14  40 82 00 60 */	bne lbl_805ADC74
/* 805ADC18  7F E3 FB 78 */	mr r3, r31
/* 805ADC1C  4B FF FB E1 */	bl aDOU_get_color
/* 805ADC20  7C 79 1B 78 */	mr r25, r3
/* 805ADC24  54 7B 10 3A */	slwi r27, r3, 2
/* 805ADC28  4B AA F0 CD */	bl fqrand
/* 805ADC2C  3C 60 80 6C */	lis r3, r_timetbl@ha /* 0x806C4EC8@ha */
/* 805ADC30  3C 80 80 6C */	lis r4, b_timetbl@ha /* 0x806C4EB8@ha */
/* 805ADC34  38 A3 4E C8 */	addi r5, r3, r_timetbl@l /* 0x806C4EC8@l */
/* 805ADC38  7F A3 EB 78 */	mr r3, r29
/* 805ADC3C  7C 45 DC 2E */	lfsx f2, r5, r27
/* 805ADC40  38 84 4E B8 */	addi r4, r4, b_timetbl@l /* 0x806C4EB8@l */
/* 805ADC44  7C 04 DC 2E */	lfsx f0, r4, r27
/* 805ADC48  7F C4 F3 78 */	mr r4, r30
/* 805ADC4C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805ADC50  7F E5 FB 78 */	mr r5, r31
/* 805ADC54  7F 26 CB 78 */	mr r6, r25
/* 805ADC58  EC 00 08 2A */	fadds f0, f0, f1
/* 805ADC5C  FC 00 00 1E */	fctiwz f0, f0
/* 805ADC60  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805ADC64  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805ADC68  7C 1A E3 2E */	sthx r0, r26, r28
/* 805ADC6C  4B FF FD 91 */	bl aDOU_setEffect_sub
/* 805ADC70  48 00 00 0C */	b lbl_805ADC7C
lbl_805ADC74:
/* 805ADC74  38 03 FF FF */	addi r0, r3, -1
/* 805ADC78  7C 1A E3 2E */	sthx r0, r26, r28
lbl_805ADC7C:
/* 805ADC7C  3B FF 00 01 */	addi r31, r31, 1
/* 805ADC80  3B 9C 00 02 */	addi r28, r28, 2
/* 805ADC84  2C 1F 00 04 */	cmpwi r31, 4
/* 805ADC88  41 80 FF 70 */	blt lbl_805ADBF8
/* 805ADC8C  A8 01 00 08 */	lha r0, 8(r1)
/* 805ADC90  3C A0 43 30 */	lis r5, 0x4330
/* 805ADC94  3C C0 80 65 */	lis r6, lit_556@ha /* 0x8064A6E4@ha */
/* 805ADC98  A8 61 00 0A */	lha r3, 0xa(r1)
/* 805ADC9C  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 805ADCA0  90 A1 00 28 */	stw r5, 0x28(r1)
/* 805ADCA4  A8 01 00 0C */	lha r0, 0xc(r1)
/* 805ADCA8  39 61 00 50 */	addi r11, r1, 0x50
/* 805ADCAC  90 81 00 2C */	stw r4, 0x2c(r1)
/* 805ADCB0  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805ADCB4  C8 66 A6 E4 */	lfd f3, lit_556@l(r6)  /* 0x8064A6E4@l */
/* 805ADCB8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 805ADCBC  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 805ADCC0  A8 01 00 0E */	lha r0, 0xe(r1)
/* 805ADCC4  EC 21 18 28 */	fsubs f1, f1, f3
/* 805ADCC8  90 81 00 24 */	stw r4, 0x24(r1)
/* 805ADCCC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805ADCD0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 805ADCD4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805ADCD8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 805ADCDC  EC 40 18 28 */	fsubs f2, f0, f3
/* 805ADCE0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 805ADCE4  D0 3D 02 C8 */	stfs f1, 0x2c8(r29)
/* 805ADCE8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805ADCEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ADCF0  EC 20 18 28 */	fsubs f1, f0, f3
/* 805ADCF4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805ADCF8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805ADCFC  D0 5D 02 CC */	stfs f2, 0x2cc(r29)
/* 805ADD00  EC 00 18 28 */	fsubs f0, f0, f3
/* 805ADD04  D0 3D 02 D0 */	stfs f1, 0x2d0(r29)
/* 805ADD08  D0 1D 02 D4 */	stfs f0, 0x2d4(r29)
/* 805ADD0C  4B AE D2 05 */	bl func_8009AF10
/* 805ADD10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805ADD14  7C 08 03 A6 */	mtlr r0
/* 805ADD18  38 21 00 50 */	addi r1, r1, 0x50
/* 805ADD1C  4E 80 00 20 */	blr 

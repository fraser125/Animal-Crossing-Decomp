lbl_80471980:
/* 80471980  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80471984  7C 08 02 A6 */	mflr r0
/* 80471988  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047198C  39 61 00 30 */	addi r11, r1, 0x30
/* 80471990  4B C2 95 3D */	bl func_8009AECC
/* 80471994  7C 7B 1B 78 */	mr r27, r3
/* 80471998  7C 9C 23 78 */	mr r28, r4
/* 8047199C  A0 63 00 00 */	lhz r3, 0(r3)
/* 804719A0  4B FF E8 01 */	bl func_804701A0
/* 804719A4  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 804719A8  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 804719AC  41 82 01 5C */	beq lbl_80471B08
/* 804719B0  7F 80 07 35 */	extsh. r0, r28
/* 804719B4  40 82 00 24 */	bne lbl_804719D8
/* 804719B8  88 1B 01 2C */	lbz r0, 0x12c(r27)
/* 804719BC  28 00 00 01 */	cmplwi r0, 1
/* 804719C0  40 82 01 48 */	bne lbl_80471B08
/* 804719C4  38 60 00 01 */	li r3, 1
/* 804719C8  38 00 00 00 */	li r0, 0
/* 804719CC  B0 7B 01 30 */	sth r3, 0x130(r27)
/* 804719D0  98 1B 01 2D */	stb r0, 0x12d(r27)
/* 804719D4  48 00 01 34 */	b lbl_80471B08
lbl_804719D8:
/* 804719D8  4B F3 32 F5 */	bl mFI_GetFieldId
/* 804719DC  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 804719E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804719E4  38 84 A0 00 */	addi r4, r4, -24576
/* 804719E8  38 00 00 37 */	li r0, 0x37
/* 804719EC  54 84 07 BE */	clrlwi r4, r4, 0x1e
/* 804719F0  3B E3 85 38 */	addi r31, r3, common_data@l /* 0x81138538@l */
/* 804719F4  1C 64 26 B0 */	mulli r3, r4, 0x26b0
/* 804719F8  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 804719FC  3F DF 00 02 */	addis r30, r31, 2
/* 80471A00  3B 80 00 00 */	li r28, 0
/* 80471A04  7C 7F 1A 14 */	add r3, r31, r3
/* 80471A08  38 C0 00 00 */	li r6, 0
/* 80471A0C  3F A3 00 01 */	addis r29, r3, 1
/* 80471A10  3B DE 32 14 */	addi r30, r30, 0x3214
/* 80471A14  3B BD C3 6C */	addi r29, r29, -15508
/* 80471A18  7C 09 03 A6 */	mtctr r0
lbl_80471A1C:
/* 80471A1C  2C 05 00 2F */	cmpwi r5, 0x2f
/* 80471A20  40 82 00 0C */	bne lbl_80471A2C
/* 80471A24  7F C4 F3 78 */	mr r4, r30
/* 80471A28  48 00 00 08 */	b lbl_80471A30
lbl_80471A2C:
/* 80471A2C  7F A4 EB 78 */	mr r4, r29
lbl_80471A30:
/* 80471A30  7C C3 2E 70 */	srawi r3, r6, 5
/* 80471A34  54 C0 06 FE */	clrlwi r0, r6, 0x1b
/* 80471A38  7C 63 01 94 */	addze r3, r3
/* 80471A3C  54 63 17 7A */	rlwinm r3, r3, 2, 0x1d, 0x1d
/* 80471A40  7C 64 18 2E */	lwzx r3, r4, r3
/* 80471A44  7C 60 04 30 */	srw r0, r3, r0
/* 80471A48  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80471A4C  41 82 00 08 */	beq lbl_80471A54
/* 80471A50  3B 9C 00 01 */	addi r28, r28, 1
lbl_80471A54:
/* 80471A54  38 C6 00 01 */	addi r6, r6, 1
/* 80471A58  42 00 FF C4 */	bdnz lbl_80471A1C
/* 80471A5C  2C 1C 00 00 */	cmpwi r28, 0
/* 80471A60  40 81 00 9C */	ble lbl_80471AFC
/* 80471A64  4B BE B2 91 */	bl fqrand
/* 80471A68  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 80471A6C  3C 00 43 30 */	lis r0, 0x4330
/* 80471A70  90 01 00 08 */	stw r0, 8(r1)
/* 80471A74  3C 80 80 64 */	lis r4, lit_888@ha /* 0x806449FC@ha */
/* 80471A78  38 A0 00 00 */	li r5, 0
/* 80471A7C  C8 44 49 FC */	lfd f2, lit_888@l(r4)  /* 0x806449FC@l */
/* 80471A80  90 61 00 0C */	stw r3, 0xc(r1)
/* 80471A84  38 00 00 37 */	li r0, 0x37
/* 80471A88  7C A6 2B 78 */	mr r6, r5
/* 80471A8C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80471A90  EC 00 10 28 */	fsubs f0, f0, f2
/* 80471A94  EC 00 00 72 */	fmuls f0, f0, f1
/* 80471A98  FC 00 00 1E */	fctiwz f0, f0
/* 80471A9C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80471AA0  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 80471AA4  7C 09 03 A6 */	mtctr r0
lbl_80471AA8:
/* 80471AA8  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80471AAC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80471AB0  40 82 00 0C */	bne lbl_80471ABC
/* 80471AB4  7F C4 F3 78 */	mr r4, r30
/* 80471AB8  48 00 00 08 */	b lbl_80471AC0
lbl_80471ABC:
/* 80471ABC  7F A4 EB 78 */	mr r4, r29
lbl_80471AC0:
/* 80471AC0  7C C3 2E 70 */	srawi r3, r6, 5
/* 80471AC4  54 C0 06 FE */	clrlwi r0, r6, 0x1b
/* 80471AC8  7C 63 01 94 */	addze r3, r3
/* 80471ACC  54 63 17 7A */	rlwinm r3, r3, 2, 0x1d, 0x1d
/* 80471AD0  7C 64 18 2E */	lwzx r3, r4, r3
/* 80471AD4  7C 60 04 30 */	srw r0, r3, r0
/* 80471AD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80471ADC  41 82 00 18 */	beq lbl_80471AF4
/* 80471AE0  7C 07 28 00 */	cmpw r7, r5
/* 80471AE4  40 82 00 0C */	bne lbl_80471AF0
/* 80471AE8  38 06 2A 00 */	addi r0, r6, 0x2a00
/* 80471AEC  B0 1B 08 44 */	sth r0, 0x844(r27)
lbl_80471AF0:
/* 80471AF0  38 A5 00 01 */	addi r5, r5, 1
lbl_80471AF4:
/* 80471AF4  38 C6 00 01 */	addi r6, r6, 1
/* 80471AF8  42 00 FF B0 */	bdnz lbl_80471AA8
lbl_80471AFC:
/* 80471AFC  38 00 00 00 */	li r0, 0
/* 80471B00  98 1B 01 2D */	stb r0, 0x12d(r27)
/* 80471B04  98 1B 01 2C */	stb r0, 0x12c(r27)
lbl_80471B08:
/* 80471B08  39 61 00 30 */	addi r11, r1, 0x30
/* 80471B0C  4B C2 94 0D */	bl func_8009AF18
/* 80471B10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80471B14  7C 08 03 A6 */	mtlr r0
/* 80471B18  38 21 00 30 */	addi r1, r1, 0x30
/* 80471B1C  4E 80 00 20 */	blr 

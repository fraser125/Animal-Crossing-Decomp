lbl_804828E4:
/* 804828E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804828E8  7C 08 02 A6 */	mflr r0
/* 804828EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804828F0  39 61 00 40 */	addi r11, r1, 0x40
/* 804828F4  4B C1 85 C5 */	bl func_8009AEB8
/* 804828F8  81 04 00 00 */	lwz r8, 0(r4)
/* 804828FC  7C B6 2B 78 */	mr r22, r5
/* 80482900  7C 9D 23 78 */	mr r29, r4
/* 80482904  7C 7E 1B 78 */	mr r30, r3
/* 80482908  80 A8 02 D0 */	lwz r5, 0x2d0(r8)
/* 8048290C  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80482910  3C E0 CE 00 */	lis r7, 0xce00
/* 80482914  38 80 00 7F */	li r4, 0x7f
/* 80482918  38 05 00 08 */	addi r0, r5, 8
/* 8048291C  3B E3 DF E8 */	addi r31, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80482920  90 08 02 D0 */	stw r0, 0x2d0(r8)
/* 80482924  7C D7 33 78 */	mr r23, r6
/* 80482928  3B 60 00 0F */	li r27, 0xf
/* 8048292C  90 E5 00 00 */	stw r7, 0(r5)
/* 80482930  90 85 00 04 */	stw r4, 4(r5)
/* 80482934  80 68 02 E0 */	lwz r3, 0x2e0(r8)
/* 80482938  38 03 00 08 */	addi r0, r3, 8
/* 8048293C  90 08 02 E0 */	stw r0, 0x2e0(r8)
/* 80482940  90 E3 00 00 */	stw r7, 0(r3)
/* 80482944  90 83 00 04 */	stw r4, 4(r3)
lbl_80482948:
/* 80482948  83 5F 00 00 */	lwz r26, 0(r31)
/* 8048294C  3B 80 00 00 */	li r28, 0
/* 80482950  83 3F 00 04 */	lwz r25, 4(r31)
/* 80482954  48 00 01 AC */	b lbl_80482B00
lbl_80482958:
/* 80482958  88 19 00 00 */	lbz r0, 0(r25)
/* 8048295C  28 00 00 01 */	cmplwi r0, 1
/* 80482960  40 82 01 94 */	bne lbl_80482AF4
/* 80482964  3C 60 80 64 */	lis r3, lit_885@ha /* 0x806449F4@ha */
/* 80482968  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 8048296C  C0 03 49 F4 */	lfs f0, lit_885@l(r3)  /* 0x806449F4@l */
/* 80482970  EC 01 00 24 */	fdivs f0, f1, f0
/* 80482974  FC 00 00 1E */	fctiwz f0, f0
/* 80482978  D8 01 00 08 */	stfd f0, 8(r1)
/* 8048297C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80482980  7C 00 D8 00 */	cmpw r0, r27
/* 80482984  40 82 01 70 */	bne lbl_80482AF4
/* 80482988  2C 16 00 00 */	cmpwi r22, 0
/* 8048298C  40 82 00 14 */	bne lbl_804829A0
/* 80482990  A0 7A 00 00 */	lhz r3, 0(r26)
/* 80482994  56 E0 04 3E */	clrlwi r0, r23, 0x10
/* 80482998  7C 03 00 40 */	cmplw r3, r0
/* 8048299C  40 82 00 1C */	bne lbl_804829B8
lbl_804829A0:
/* 804829A0  2C 16 00 01 */	cmpwi r22, 1
/* 804829A4  40 82 01 50 */	bne lbl_80482AF4
/* 804829A8  A0 7A 00 00 */	lhz r3, 0(r26)
/* 804829AC  56 E0 04 3E */	clrlwi r0, r23, 0x10
/* 804829B0  7C 03 00 40 */	cmplw r3, r0
/* 804829B4  40 82 01 40 */	bne lbl_80482AF4
lbl_804829B8:
/* 804829B8  A8 1A 08 3C */	lha r0, 0x83c(r26)
/* 804829BC  38 80 00 00 */	li r4, 0
/* 804829C0  2C 00 00 00 */	cmpwi r0, 0
/* 804829C4  41 82 00 48 */	beq lbl_80482A0C
/* 804829C8  80 1E 05 00 */	lwz r0, 0x500(r30)
/* 804829CC  2C 00 FF FF */	cmpwi r0, -1
/* 804829D0  41 82 00 3C */	beq lbl_80482A0C
/* 804829D4  41 82 00 3C */	beq lbl_80482A10
/* 804829D8  80 1E 05 18 */	lwz r0, 0x518(r30)
/* 804829DC  80 7A 00 04 */	lwz r3, 4(r26)
/* 804829E0  7C 00 18 00 */	cmpw r0, r3
/* 804829E4  41 82 00 2C */	beq lbl_80482A10
/* 804829E8  80 1E 05 3C */	lwz r0, 0x53c(r30)
/* 804829EC  7C 00 18 00 */	cmpw r0, r3
/* 804829F0  41 82 00 20 */	beq lbl_80482A10
/* 804829F4  80 1E 05 60 */	lwz r0, 0x560(r30)
/* 804829F8  7C 00 18 00 */	cmpw r0, r3
/* 804829FC  41 82 00 14 */	beq lbl_80482A10
/* 80482A00  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 80482A04  7C 00 18 00 */	cmpw r0, r3
/* 80482A08  41 82 00 08 */	beq lbl_80482A10
lbl_80482A0C:
/* 80482A0C  38 80 00 01 */	li r4, 1
lbl_80482A10:
/* 80482A10  7C 80 00 34 */	cntlzw r0, r4
/* 80482A14  A0 7A 00 00 */	lhz r3, 0(r26)
/* 80482A18  54 18 D9 7E */	srwi r24, r0, 5
/* 80482A1C  4B FF 14 7D */	bl aMR_GetAlphaEdge
/* 80482A20  80 DD 00 00 */	lwz r6, 0(r29)
/* 80482A24  3C 80 CE 00 */	lis r4, 0xce00
/* 80482A28  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80482A2C  80 66 02 D0 */	lwz r3, 0x2d0(r6)
/* 80482A30  38 03 00 08 */	addi r0, r3, 8
/* 80482A34  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 80482A38  90 83 00 00 */	stw r4, 0(r3)
/* 80482A3C  90 A3 00 04 */	stw r5, 4(r3)
/* 80482A40  80 66 02 E0 */	lwz r3, 0x2e0(r6)
/* 80482A44  38 03 00 08 */	addi r0, r3, 8
/* 80482A48  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 80482A4C  90 83 00 00 */	stw r4, 0(r3)
/* 80482A50  90 A3 00 04 */	stw r5, 4(r3)
/* 80482A54  A0 7A 00 00 */	lhz r3, 0(r26)
/* 80482A58  4B FF 14 D5 */	bl aMR_DrawDolphinMode
/* 80482A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80482A60  41 82 00 3C */	beq lbl_80482A9C
/* 80482A64  80 DD 00 00 */	lwz r6, 0(r29)
/* 80482A68  3C 60 D5 02 */	lis r3, 0xD502 /* 0xD5020001@ha */
/* 80482A6C  38 A3 00 01 */	addi r5, r3, 0x0001 /* 0xD5020001@l */
/* 80482A70  38 80 00 00 */	li r4, 0
/* 80482A74  80 66 02 D0 */	lwz r3, 0x2d0(r6)
/* 80482A78  38 03 00 08 */	addi r0, r3, 8
/* 80482A7C  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 80482A80  90 A3 00 00 */	stw r5, 0(r3)
/* 80482A84  90 83 00 04 */	stw r4, 4(r3)
/* 80482A88  80 66 02 E0 */	lwz r3, 0x2e0(r6)
/* 80482A8C  38 03 00 08 */	addi r0, r3, 8
/* 80482A90  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 80482A94  90 A3 00 00 */	stw r5, 0(r3)
/* 80482A98  90 83 00 04 */	stw r4, 4(r3)
lbl_80482A9C:
/* 80482A9C  7F 43 D3 78 */	mr r3, r26
/* 80482AA0  7F C4 F3 78 */	mr r4, r30
/* 80482AA4  7F A5 EB 78 */	mr r5, r29
/* 80482AA8  7F 06 C3 78 */	mr r6, r24
/* 80482AAC  4B FF FA 65 */	bl aMR_DrawOneFurniture
/* 80482AB0  A0 7A 00 00 */	lhz r3, 0(r26)
/* 80482AB4  4B FF 14 79 */	bl aMR_DrawDolphinMode
/* 80482AB8  2C 03 00 00 */	cmpwi r3, 0
/* 80482ABC  41 82 00 38 */	beq lbl_80482AF4
/* 80482AC0  80 DD 00 00 */	lwz r6, 0(r29)
/* 80482AC4  3C A0 D5 02 */	lis r5, 0xd502
/* 80482AC8  38 80 00 00 */	li r4, 0
/* 80482ACC  80 66 02 D0 */	lwz r3, 0x2d0(r6)
/* 80482AD0  38 03 00 08 */	addi r0, r3, 8
/* 80482AD4  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 80482AD8  90 A3 00 00 */	stw r5, 0(r3)
/* 80482ADC  90 83 00 04 */	stw r4, 4(r3)
/* 80482AE0  80 66 02 E0 */	lwz r3, 0x2e0(r6)
/* 80482AE4  38 03 00 08 */	addi r0, r3, 8
/* 80482AE8  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 80482AEC  90 A3 00 00 */	stw r5, 0(r3)
/* 80482AF0  90 83 00 04 */	stw r4, 4(r3)
lbl_80482AF4:
/* 80482AF4  3B 5A 08 58 */	addi r26, r26, 0x858
/* 80482AF8  3B 39 00 01 */	addi r25, r25, 1
/* 80482AFC  3B 9C 00 01 */	addi r28, r28, 1
lbl_80482B00:
/* 80482B00  80 1F 00 08 */	lwz r0, 8(r31)
/* 80482B04  7C 1C 00 00 */	cmpw r28, r0
/* 80482B08  41 80 FE 50 */	blt lbl_80482958
/* 80482B0C  37 7B FF FF */	addic. r27, r27, -1
/* 80482B10  40 80 FE 38 */	bge lbl_80482948
/* 80482B14  80 DD 00 00 */	lwz r6, 0(r29)
/* 80482B18  3C A0 CE 00 */	lis r5, 0xce00
/* 80482B1C  38 80 00 90 */	li r4, 0x90
/* 80482B20  80 66 02 D0 */	lwz r3, 0x2d0(r6)
/* 80482B24  38 03 00 08 */	addi r0, r3, 8
/* 80482B28  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 80482B2C  90 A3 00 00 */	stw r5, 0(r3)
/* 80482B30  90 83 00 04 */	stw r4, 4(r3)
/* 80482B34  80 66 02 E0 */	lwz r3, 0x2e0(r6)
/* 80482B38  38 03 00 08 */	addi r0, r3, 8
/* 80482B3C  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 80482B40  90 A3 00 00 */	stw r5, 0(r3)
/* 80482B44  90 83 00 04 */	stw r4, 4(r3)
/* 80482B48  39 61 00 40 */	addi r11, r1, 0x40
/* 80482B4C  4B C1 83 B9 */	bl func_8009AF04
/* 80482B50  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80482B54  7C 08 03 A6 */	mtlr r0
/* 80482B58  38 21 00 40 */	addi r1, r1, 0x40
/* 80482B5C  4E 80 00 20 */	blr 

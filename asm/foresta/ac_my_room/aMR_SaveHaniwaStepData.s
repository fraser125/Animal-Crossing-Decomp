lbl_804708D4:
/* 804708D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804708D8  7C 08 02 A6 */	mflr r0
/* 804708DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804708E0  39 61 00 40 */	addi r11, r1, 0x40
/* 804708E4  4B C2 A5 E9 */	bl func_8009AECC
/* 804708E8  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 804708EC  7C 7B 1B 78 */	mr r27, r3
/* 804708F0  3B E4 DF E8 */	addi r31, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 804708F4  3B 80 00 00 */	li r28, 0
/* 804708F8  83 DF 00 00 */	lwz r30, 0(r31)
/* 804708FC  83 BF 00 04 */	lwz r29, 4(r31)
/* 80470900  48 00 00 F0 */	b lbl_804709F0
lbl_80470904:
/* 80470904  88 1D 00 00 */	lbz r0, 0(r29)
/* 80470908  28 00 00 01 */	cmplwi r0, 1
/* 8047090C  40 82 00 D8 */	bne lbl_804709E4
/* 80470910  A0 7E 00 00 */	lhz r3, 0(r30)
/* 80470914  28 03 04 F2 */	cmplwi r3, 0x4f2
/* 80470918  40 80 00 CC */	bge lbl_804709E4
/* 8047091C  4B FF F8 85 */	bl func_804701A0
/* 80470920  28 03 00 00 */	cmplwi r3, 0
/* 80470924  41 82 00 C0 */	beq lbl_804709E4
/* 80470928  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 8047092C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80470930  41 82 00 B4 */	beq lbl_804709E4
/* 80470934  80 DE 00 08 */	lwz r6, 8(r30)
/* 80470938  38 61 00 0C */	addi r3, r1, 0xc
/* 8047093C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80470940  38 81 00 08 */	addi r4, r1, 8
/* 80470944  38 A1 00 10 */	addi r5, r1, 0x10
/* 80470948  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8047094C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80470950  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80470954  90 01 00 18 */	stw r0, 0x18(r1)
/* 80470958  4B F3 4C B5 */	bl mFI_Wpos2UtNum_inBlock
/* 8047095C  2C 03 00 00 */	cmpwi r3, 0
/* 80470960  41 82 00 84 */	beq lbl_804709E4
/* 80470964  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80470968  2C 00 00 00 */	cmpwi r0, 0
/* 8047096C  40 81 00 78 */	ble lbl_804709E4
/* 80470970  2C 00 00 09 */	cmpwi r0, 9
/* 80470974  40 80 00 70 */	bge lbl_804709E4
/* 80470978  80 01 00 08 */	lwz r0, 8(r1)
/* 8047097C  2C 00 00 00 */	cmpwi r0, 0
/* 80470980  40 81 00 64 */	ble lbl_804709E4
/* 80470984  2C 00 00 09 */	cmpwi r0, 9
/* 80470988  40 80 00 5C */	bge lbl_804709E4
/* 8047098C  A8 7E 08 3C */	lha r3, 0x83c(r30)
/* 80470990  7F 64 DB 78 */	mr r4, r27
/* 80470994  4B FF FB 6D */	bl aMR_GetHaniwaStepSaveData
/* 80470998  28 03 00 00 */	cmplwi r3, 0
/* 8047099C  41 82 00 48 */	beq lbl_804709E4
/* 804709A0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804709A4  38 00 00 0F */	li r0, 0xf
/* 804709A8  80 81 00 08 */	lwz r4, 8(r1)
/* 804709AC  38 A5 FF FF */	addi r5, r5, -1
/* 804709B0  54 A6 10 3A */	slwi r6, r5, 2
/* 804709B4  38 84 FF FF */	addi r4, r4, -1
/* 804709B8  54 85 10 3A */	slwi r5, r4, 2
/* 804709BC  7C 83 28 2E */	lwzx r4, r3, r5
/* 804709C0  7C 00 30 30 */	slw r0, r0, r6
/* 804709C4  7C 80 00 78 */	andc r0, r4, r0
/* 804709C8  7C 03 29 2E */	stwx r0, r3, r5
/* 804709CC  88 1E 01 2E */	lbz r0, 0x12e(r30)
/* 804709D0  7C 83 28 2E */	lwzx r4, r3, r5
/* 804709D4  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 804709D8  7C 00 30 30 */	slw r0, r0, r6
/* 804709DC  7C 80 03 78 */	or r0, r4, r0
/* 804709E0  7C 03 29 2E */	stwx r0, r3, r5
lbl_804709E4:
/* 804709E4  3B DE 08 58 */	addi r30, r30, 0x858
/* 804709E8  3B BD 00 01 */	addi r29, r29, 1
/* 804709EC  3B 9C 00 01 */	addi r28, r28, 1
lbl_804709F0:
/* 804709F0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804709F4  7C 1C 00 00 */	cmpw r28, r0
/* 804709F8  41 80 FF 0C */	blt lbl_80470904
/* 804709FC  39 61 00 40 */	addi r11, r1, 0x40
/* 80470A00  4B C2 A5 19 */	bl func_8009AF18
/* 80470A04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80470A08  7C 08 03 A6 */	mtlr r0
/* 80470A0C  38 21 00 40 */	addi r1, r1, 0x40
/* 80470A10  4E 80 00 20 */	blr 

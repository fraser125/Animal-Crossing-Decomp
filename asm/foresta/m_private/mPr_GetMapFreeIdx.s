lbl_803E2428:
/* 803E2428  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E242C  7C 08 02 A6 */	mflr r0
/* 803E2430  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E2434  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2438  4B CB 8A 99 */	bl func_8009AED0
/* 803E243C  7C 7C 1B 78 */	mr r28, r3
/* 803E2440  7C 9D 23 78 */	mr r29, r4
/* 803E2444  3B E0 FF FF */	li r31, -1
/* 803E2448  3B C0 00 00 */	li r30, 0
/* 803E244C  48 00 00 34 */	b lbl_803E2480
lbl_803E2450:
/* 803E2450  A0 7C 00 08 */	lhz r3, 8(r28)
/* 803E2454  4B FD 13 A1 */	bl mLd_CheckId
/* 803E2458  2C 03 00 00 */	cmpwi r3, 0
/* 803E245C  41 82 00 14 */	beq lbl_803E2470
/* 803E2460  7F 83 E3 78 */	mr r3, r28
/* 803E2464  4B FD 13 55 */	bl mLd_NullCheckLandName
/* 803E2468  2C 03 00 01 */	cmpwi r3, 1
/* 803E246C  40 82 00 0C */	bne lbl_803E2478
lbl_803E2470:
/* 803E2470  7F DF F3 78 */	mr r31, r30
/* 803E2474  48 00 00 14 */	b lbl_803E2488
lbl_803E2478:
/* 803E2478  3B 9C 00 0A */	addi r28, r28, 0xa
/* 803E247C  3B DE 00 01 */	addi r30, r30, 1
lbl_803E2480:
/* 803E2480  7C 1E E8 00 */	cmpw r30, r29
/* 803E2484  41 80 FF CC */	blt lbl_803E2450
lbl_803E2488:
/* 803E2488  7F E3 FB 78 */	mr r3, r31
/* 803E248C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2490  4B CB 8A 8D */	bl func_8009AF1C
/* 803E2494  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E2498  7C 08 03 A6 */	mtlr r0
/* 803E249C  38 21 00 20 */	addi r1, r1, 0x20
/* 803E24A0  4E 80 00 20 */	blr 

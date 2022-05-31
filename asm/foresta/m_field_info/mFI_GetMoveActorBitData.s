lbl_803A8478:
/* 803A8478  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A847C  7C 08 02 A6 */	mflr r0
/* 803A8480  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A8484  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8488  4B CF 2A 4D */	bl func_8009AED4
/* 803A848C  7C 7D 1B 78 */	mr r29, r3
/* 803A8490  7C 9E 23 78 */	mr r30, r4
/* 803A8494  3B E0 00 00 */	li r31, 0
/* 803A8498  4B FF CD 71 */	bl mFI_BlockCheck
/* 803A849C  2C 03 00 00 */	cmpwi r3, 0
/* 803A84A0  41 82 00 2C */	beq lbl_803A84CC
/* 803A84A4  7F A3 EB 78 */	mr r3, r29
/* 803A84A8  7F C4 F3 78 */	mr r4, r30
/* 803A84AC  4B FF CD 0D */	bl mFI_GetBlockNum
/* 803A84B0  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A84B4  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A84B8  80 84 00 00 */	lwz r4, 0(r4)
/* 803A84BC  1C 03 06 14 */	mulli r0, r3, 0x614
/* 803A84C0  80 64 00 74 */	lwz r3, 0x74(r4)
/* 803A84C4  7C 63 02 14 */	add r3, r3, r0
/* 803A84C8  A3 E3 06 0C */	lhz r31, 0x60c(r3)
lbl_803A84CC:
/* 803A84CC  7F E3 FB 78 */	mr r3, r31
/* 803A84D0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A84D4  4B CF 2A 4D */	bl func_8009AF20
/* 803A84D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A84DC  7C 08 03 A6 */	mtlr r0
/* 803A84E0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A84E4  4E 80 00 20 */	blr 

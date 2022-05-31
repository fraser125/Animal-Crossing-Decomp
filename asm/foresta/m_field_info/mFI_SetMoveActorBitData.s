lbl_803A856C:
/* 803A856C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A8570  7C 08 02 A6 */	mflr r0
/* 803A8574  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A8578  39 61 00 20 */	addi r11, r1, 0x20
/* 803A857C  4B CF 29 59 */	bl func_8009AED4
/* 803A8580  7C 7D 1B 78 */	mr r29, r3
/* 803A8584  7C 9E 23 78 */	mr r30, r4
/* 803A8588  7C BF 2B 78 */	mr r31, r5
/* 803A858C  4B FF CC 7D */	bl mFI_BlockCheck
/* 803A8590  2C 03 00 00 */	cmpwi r3, 0
/* 803A8594  41 82 00 2C */	beq lbl_803A85C0
/* 803A8598  7F A3 EB 78 */	mr r3, r29
/* 803A859C  7F C4 F3 78 */	mr r4, r30
/* 803A85A0  4B FF CC 19 */	bl mFI_GetBlockNum
/* 803A85A4  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A85A8  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A85AC  80 84 00 00 */	lwz r4, 0(r4)
/* 803A85B0  1C 03 06 14 */	mulli r0, r3, 0x614
/* 803A85B4  80 64 00 74 */	lwz r3, 0x74(r4)
/* 803A85B8  7C 63 02 14 */	add r3, r3, r0
/* 803A85BC  B3 E3 06 0C */	sth r31, 0x60c(r3)
lbl_803A85C0:
/* 803A85C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A85C4  4B CF 29 5D */	bl func_8009AF20
/* 803A85C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A85CC  7C 08 03 A6 */	mtlr r0
/* 803A85D0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A85D4  4E 80 00 20 */	blr 

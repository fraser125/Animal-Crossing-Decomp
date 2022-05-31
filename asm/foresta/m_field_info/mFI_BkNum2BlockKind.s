lbl_803A62E8:
/* 803A62E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A62EC  7C 08 02 A6 */	mflr r0
/* 803A62F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A62F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803A62F8  4B CF 4B DD */	bl func_8009AED4
/* 803A62FC  7C 7D 1B 78 */	mr r29, r3
/* 803A6300  7C 9E 23 78 */	mr r30, r4
/* 803A6304  3B E0 00 00 */	li r31, 0
/* 803A6308  4B FF E9 89 */	bl mFI_CheckFieldData
/* 803A630C  2C 03 00 00 */	cmpwi r3, 0
/* 803A6310  41 82 00 40 */	beq lbl_803A6350
/* 803A6314  7F A3 EB 78 */	mr r3, r29
/* 803A6318  7F C4 F3 78 */	mr r4, r30
/* 803A631C  4B FF EE ED */	bl mFI_BlockCheck
/* 803A6320  2C 03 00 00 */	cmpwi r3, 0
/* 803A6324  41 82 00 2C */	beq lbl_803A6350
/* 803A6328  7F A3 EB 78 */	mr r3, r29
/* 803A632C  7F C4 F3 78 */	mr r4, r30
/* 803A6330  4B FF EE 89 */	bl mFI_GetBlockNum
/* 803A6334  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A6338  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A633C  80 84 00 00 */	lwz r4, 0(r4)
/* 803A6340  1C 03 06 14 */	mulli r0, r3, 0x614
/* 803A6344  80 64 00 74 */	lwz r3, 0x74(r4)
/* 803A6348  7C 63 02 14 */	add r3, r3, r0
/* 803A634C  83 E3 00 14 */	lwz r31, 0x14(r3)
lbl_803A6350:
/* 803A6350  7F E3 FB 78 */	mr r3, r31
/* 803A6354  39 61 00 20 */	addi r11, r1, 0x20
/* 803A6358  4B CF 4B C9 */	bl func_8009AF20
/* 803A635C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A6360  7C 08 03 A6 */	mtlr r0
/* 803A6364  38 21 00 20 */	addi r1, r1, 0x20
/* 803A6368  4E 80 00 20 */	blr 

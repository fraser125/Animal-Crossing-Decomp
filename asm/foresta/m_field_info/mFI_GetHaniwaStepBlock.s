lbl_803A8408:
/* 803A8408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A840C  7C 08 02 A6 */	mflr r0
/* 803A8410  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A8414  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8418  4B CF 2A BD */	bl func_8009AED4
/* 803A841C  7C 7D 1B 78 */	mr r29, r3
/* 803A8420  7C 9E 23 78 */	mr r30, r4
/* 803A8424  3B E0 00 00 */	li r31, 0
/* 803A8428  4B FF CD E1 */	bl mFI_BlockCheck
/* 803A842C  2C 03 00 01 */	cmpwi r3, 1
/* 803A8430  40 82 00 2C */	bne lbl_803A845C
/* 803A8434  7F A3 EB 78 */	mr r3, r29
/* 803A8438  7F C4 F3 78 */	mr r4, r30
/* 803A843C  4B FF CD 7D */	bl mFI_GetBlockNum
/* 803A8440  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A8444  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A8448  1C 63 06 14 */	mulli r3, r3, 0x614
/* 803A844C  80 84 00 00 */	lwz r4, 0(r4)
/* 803A8450  80 04 00 74 */	lwz r0, 0x74(r4)
/* 803A8454  3B E3 06 0E */	addi r31, r3, 0x60e
/* 803A8458  7F E0 FA 14 */	add r31, r0, r31
lbl_803A845C:
/* 803A845C  7F E3 FB 78 */	mr r3, r31
/* 803A8460  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8464  4B CF 2A BD */	bl func_8009AF20
/* 803A8468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A846C  7C 08 03 A6 */	mtlr r0
/* 803A8470  38 21 00 20 */	addi r1, r1, 0x20
/* 803A8474  4E 80 00 20 */	blr 

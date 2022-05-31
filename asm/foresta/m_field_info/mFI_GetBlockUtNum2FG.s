lbl_803A74F0:
/* 803A74F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A74F4  7C 08 02 A6 */	mflr r0
/* 803A74F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A74FC  39 61 00 20 */	addi r11, r1, 0x20
/* 803A7500  4B CF 39 C9 */	bl func_8009AEC8
/* 803A7504  7C 9B 23 78 */	mr r27, r4
/* 803A7508  7C BF 2B 78 */	mr r31, r5
/* 803A750C  7C 7A 1B 78 */	mr r26, r3
/* 803A7510  7C DC 33 78 */	mr r28, r6
/* 803A7514  7C FD 3B 78 */	mr r29, r7
/* 803A7518  7F 63 DB 78 */	mr r3, r27
/* 803A751C  7F E4 FB 78 */	mr r4, r31
/* 803A7520  3B C0 00 00 */	li r30, 0
/* 803A7524  4B FF DC E5 */	bl mFI_BlockCheck
/* 803A7528  2C 03 00 00 */	cmpwi r3, 0
/* 803A752C  41 82 00 6C */	beq lbl_803A7598
/* 803A7530  2C 1C 00 00 */	cmpwi r28, 0
/* 803A7534  41 80 00 64 */	blt lbl_803A7598
/* 803A7538  2C 1C 00 10 */	cmpwi r28, 0x10
/* 803A753C  40 80 00 5C */	bge lbl_803A7598
/* 803A7540  2C 1D 00 00 */	cmpwi r29, 0
/* 803A7544  41 80 00 54 */	blt lbl_803A7598
/* 803A7548  2C 1D 00 10 */	cmpwi r29, 0x10
/* 803A754C  40 80 00 4C */	bge lbl_803A7598
/* 803A7550  7F 63 DB 78 */	mr r3, r27
/* 803A7554  7F E4 FB 78 */	mr r4, r31
/* 803A7558  4B FF DC 61 */	bl mFI_GetBlockNum
/* 803A755C  7C 7F 1B 78 */	mr r31, r3
/* 803A7560  7F 83 E3 78 */	mr r3, r28
/* 803A7564  7F A4 EB 78 */	mr r4, r29
/* 803A7568  4B FF DC 95 */	bl mFI_GetUtNum
/* 803A756C  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A7570  54 60 08 3C */	slwi r0, r3, 1
/* 803A7574  80 84 7A 58 */	lwz r4, g_fdinfo@l(r4)  /* 0x81167A58@l */
/* 803A7578  1C 7F 06 14 */	mulli r3, r31, 0x614
/* 803A757C  3B C0 00 01 */	li r30, 1
/* 803A7580  80 84 00 74 */	lwz r4, 0x74(r4)
/* 803A7584  7C 64 1A 14 */	add r3, r4, r3
/* 803A7588  80 63 05 84 */	lwz r3, 0x584(r3)
/* 803A758C  7C 03 02 2E */	lhzx r0, r3, r0
/* 803A7590  B0 1A 00 00 */	sth r0, 0(r26)
/* 803A7594  48 00 00 10 */	b lbl_803A75A4
lbl_803A7598:
/* 803A7598  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 803A759C  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 803A75A0  B0 1A 00 00 */	sth r0, 0(r26)
lbl_803A75A4:
/* 803A75A4  7F C3 F3 78 */	mr r3, r30
/* 803A75A8  39 61 00 20 */	addi r11, r1, 0x20
/* 803A75AC  4B CF 39 69 */	bl func_8009AF14
/* 803A75B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A75B4  7C 08 03 A6 */	mtlr r0
/* 803A75B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803A75BC  4E 80 00 20 */	blr 

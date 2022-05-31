lbl_80383410:
/* 80383410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80383414  7C 08 02 A6 */	mflr r0
/* 80383418  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038341C  39 61 00 20 */	addi r11, r1, 0x20
/* 80383420  4B D1 7A B5 */	bl func_8009AED4
/* 80383424  7C 7D 1B 78 */	mr r29, r3
/* 80383428  7C 9E 23 78 */	mr r30, r4
/* 8038342C  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 80383430  7C BF 2B 78 */	mr r31, r5
/* 80383434  2C 00 00 00 */	cmpwi r0, 0
/* 80383438  41 82 00 6C */	beq lbl_803834A4
/* 8038343C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80383440  7F E4 FB 78 */	mr r4, r31
/* 80383444  48 02 CC F5 */	bl mFont_SetMatrix
/* 80383448  7F A3 EB 78 */	mr r3, r29
/* 8038344C  7F C4 F3 78 */	mr r4, r30
/* 80383450  7F E5 FB 78 */	mr r5, r31
/* 80383454  48 00 1A 3D */	bl func_80384E90
/* 80383458  7F A3 EB 78 */	mr r3, r29
/* 8038345C  7F C4 F3 78 */	mr r4, r30
/* 80383460  7F E5 FB 78 */	mr r5, r31
/* 80383464  48 00 1B 4D */	bl mChoice_SetMatrixDisplay
/* 80383468  7F A3 EB 78 */	mr r3, r29
/* 8038346C  7F C4 F3 78 */	mr r4, r30
/* 80383470  7F E5 FB 78 */	mr r5, r31
/* 80383474  48 00 1C B5 */	bl mChoice_DrawWindowBody
/* 80383478  7F C3 F3 78 */	mr r3, r30
/* 8038347C  7F E4 FB 78 */	mr r4, r31
/* 80383480  48 00 1C 1D */	bl mChoice_UnSetMatrixDisplay
/* 80383484  7F A3 EB 78 */	mr r3, r29
/* 80383488  7F C4 F3 78 */	mr r4, r30
/* 8038348C  7F E5 FB 78 */	mr r5, r31
/* 80383490  48 00 1D 25 */	bl mChoice_DrawFont
/* 80383494  48 00 1B E9 */	bl mChoice_UnSetMatrix
/* 80383498  80 7E 00 00 */	lwz r3, 0(r30)
/* 8038349C  7F E4 FB 78 */	mr r4, r31
/* 803834A0  48 02 CD 99 */	bl mFont_UnSetMatrix
lbl_803834A4:
/* 803834A4  39 61 00 20 */	addi r11, r1, 0x20
/* 803834A8  4B D1 7A 79 */	bl func_8009AF20
/* 803834AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803834B0  7C 08 03 A6 */	mtlr r0
/* 803834B4  38 21 00 20 */	addi r1, r1, 0x20
/* 803834B8  4E 80 00 20 */	blr 

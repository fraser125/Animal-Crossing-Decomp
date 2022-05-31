lbl_805D8294:
/* 805D8294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D8298  7C 08 02 A6 */	mflr r0
/* 805D829C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D82A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805D82A4  4B AC 2C 31 */	bl func_8009AED4
/* 805D82A8  7C 7D 1B 78 */	mr r29, r3
/* 805D82AC  7C 9E 23 78 */	mr r30, r4
/* 805D82B0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D82B4  3B E5 04 8C */	addi r31, r5, 0x48c
/* 805D82B8  81 85 04 9C */	lwz r12, 0x49c(r5)
/* 805D82BC  7D 89 03 A6 */	mtctr r12
/* 805D82C0  4E 80 04 21 */	bctrl 
/* 805D82C4  7F A3 EB 78 */	mr r3, r29
/* 805D82C8  7F C4 F3 78 */	mr r4, r30
/* 805D82CC  7F E5 FB 78 */	mr r5, r31
/* 805D82D0  4B FF FE B5 */	bl mEE_set_dl
/* 805D82D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805D82D8  4B AC 2C 49 */	bl func_8009AF20
/* 805D82DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D82E0  7C 08 03 A6 */	mtlr r0
/* 805D82E4  38 21 00 20 */	addi r1, r1, 0x20
/* 805D82E8  4E 80 00 20 */	blr 

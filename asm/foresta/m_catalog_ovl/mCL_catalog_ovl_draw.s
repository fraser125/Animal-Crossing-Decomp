lbl_805CBCA4:
/* 805CBCA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CBCA8  7C 08 02 A6 */	mflr r0
/* 805CBCAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CBCB0  39 61 00 20 */	addi r11, r1, 0x20
/* 805CBCB4  4B AC F2 21 */	bl func_8009AED4
/* 805CBCB8  7C 7D 1B 78 */	mr r29, r3
/* 805CBCBC  7C 9E 23 78 */	mr r30, r4
/* 805CBCC0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CBCC4  3B E5 05 F4 */	addi r31, r5, 0x5f4
/* 805CBCC8  81 85 06 04 */	lwz r12, 0x604(r5)
/* 805CBCCC  7D 89 03 A6 */	mtctr r12
/* 805CBCD0  4E 80 04 21 */	bctrl 
/* 805CBCD4  7F A3 EB 78 */	mr r3, r29
/* 805CBCD8  7F E4 FB 78 */	mr r4, r31
/* 805CBCDC  7F C5 F3 78 */	mr r5, r30
/* 805CBCE0  4B FF FE E1 */	bl mCL_set_dl
/* 805CBCE4  39 61 00 20 */	addi r11, r1, 0x20
/* 805CBCE8  4B AC F2 39 */	bl func_8009AF20
/* 805CBCEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CBCF0  7C 08 03 A6 */	mtlr r0
/* 805CBCF4  38 21 00 20 */	addi r1, r1, 0x20
/* 805CBCF8  4E 80 00 20 */	blr 

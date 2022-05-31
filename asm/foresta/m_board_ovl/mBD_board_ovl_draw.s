lbl_805C6348:
/* 805C6348  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C634C  7C 08 02 A6 */	mflr r0
/* 805C6350  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C6354  39 61 00 20 */	addi r11, r1, 0x20
/* 805C6358  4B AD 4B 7D */	bl func_8009AED4
/* 805C635C  7C 7D 1B 78 */	mr r29, r3
/* 805C6360  7C 9E 23 78 */	mr r30, r4
/* 805C6364  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C6368  3B E5 03 B4 */	addi r31, r5, 0x3b4
/* 805C636C  81 85 03 C4 */	lwz r12, 0x3c4(r5)
/* 805C6370  7D 89 03 A6 */	mtctr r12
/* 805C6374  4E 80 04 21 */	bctrl 
/* 805C6378  7F A3 EB 78 */	mr r3, r29
/* 805C637C  7F C4 F3 78 */	mr r4, r30
/* 805C6380  7F E5 FB 78 */	mr r5, r31
/* 805C6384  4B FF FE F1 */	bl mBD_set_dl
/* 805C6388  39 61 00 20 */	addi r11, r1, 0x20
/* 805C638C  4B AD 4B 95 */	bl func_8009AF20
/* 805C6390  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C6394  7C 08 03 A6 */	mtlr r0
/* 805C6398  38 21 00 20 */	addi r1, r1, 0x20
/* 805C639C  4E 80 00 20 */	blr 

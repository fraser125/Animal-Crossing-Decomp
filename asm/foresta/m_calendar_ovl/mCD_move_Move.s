lbl_805C746C:
/* 805C746C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7470  7C 08 02 A6 */	mflr r0
/* 805C7474  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7478  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C747C  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805C7480  7D 89 03 A6 */	mtctr r12
/* 805C7484  4E 80 04 21 */	bctrl 
/* 805C7488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C748C  7C 08 03 A6 */	mtlr r0
/* 805C7490  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7494  4E 80 00 20 */	blr 

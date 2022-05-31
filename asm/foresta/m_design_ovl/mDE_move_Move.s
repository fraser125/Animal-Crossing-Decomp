lbl_805D51B8:
/* 805D51B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D51BC  7C 08 02 A6 */	mflr r0
/* 805D51C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D51C4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D51C8  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805D51CC  7D 89 03 A6 */	mtctr r12
/* 805D51D0  4E 80 04 21 */	bctrl 
/* 805D51D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D51D8  7C 08 03 A6 */	mtlr r0
/* 805D51DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805D51E0  4E 80 00 20 */	blr 

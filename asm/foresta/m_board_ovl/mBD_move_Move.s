lbl_805C50A4:
/* 805C50A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C50A8  7C 08 02 A6 */	mflr r0
/* 805C50AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C50B0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C50B4  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805C50B8  7D 89 03 A6 */	mtctr r12
/* 805C50BC  4E 80 04 21 */	bctrl 
/* 805C50C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C50C4  7C 08 03 A6 */	mtlr r0
/* 805C50C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805C50CC  4E 80 00 20 */	blr 

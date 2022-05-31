lbl_805C9DD0:
/* 805C9DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C9DD4  7C 08 02 A6 */	mflr r0
/* 805C9DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C9DDC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C9DE0  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805C9DE4  7D 89 03 A6 */	mtctr r12
/* 805C9DE8  4E 80 04 21 */	bctrl 
/* 805C9DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C9DF0  7C 08 03 A6 */	mtlr r0
/* 805C9DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 805C9DF8  4E 80 00 20 */	blr 

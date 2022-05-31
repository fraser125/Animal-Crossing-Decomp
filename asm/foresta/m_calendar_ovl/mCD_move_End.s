lbl_805C7ED8:
/* 805C7ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7EDC  7C 08 02 A6 */	mflr r0
/* 805C7EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7EE4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C7EE8  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805C7EEC  7D 89 03 A6 */	mtctr r12
/* 805C7EF0  4E 80 04 21 */	bctrl 
/* 805C7EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7EF8  7C 08 03 A6 */	mtlr r0
/* 805C7EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7F00  4E 80 00 20 */	blr 

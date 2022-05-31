lbl_805C3AFC:
/* 805C3AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C3B00  7C 08 02 A6 */	mflr r0
/* 805C3B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C3B08  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C3B0C  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805C3B10  7D 89 03 A6 */	mtctr r12
/* 805C3B14  4E 80 04 21 */	bctrl 
/* 805C3B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C3B1C  7C 08 03 A6 */	mtlr r0
/* 805C3B20  38 21 00 10 */	addi r1, r1, 0x10
/* 805C3B24  4E 80 00 20 */	blr 

lbl_805CC144:
/* 805CC144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CC148  7C 08 02 A6 */	mflr r0
/* 805CC14C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CC150  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CC154  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805CC158  7D 89 03 A6 */	mtctr r12
/* 805CC15C  4E 80 04 21 */	bctrl 
/* 805CC160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CC164  7C 08 03 A6 */	mtlr r0
/* 805CC168  38 21 00 10 */	addi r1, r1, 0x10
/* 805CC16C  4E 80 00 20 */	blr 

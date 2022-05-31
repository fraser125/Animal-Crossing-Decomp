lbl_805EC7B0:
/* 805EC7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC7B4  7C 08 02 A6 */	mflr r0
/* 805EC7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC7BC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805EC7C0  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805EC7C4  7D 89 03 A6 */	mtctr r12
/* 805EC7C8  4E 80 04 21 */	bctrl 
/* 805EC7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC7D0  7C 08 03 A6 */	mtlr r0
/* 805EC7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC7D8  4E 80 00 20 */	blr 

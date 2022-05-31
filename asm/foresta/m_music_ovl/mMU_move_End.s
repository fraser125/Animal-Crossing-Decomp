lbl_805E8D8C:
/* 805E8D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E8D90  7C 08 02 A6 */	mflr r0
/* 805E8D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E8D98  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E8D9C  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805E8DA0  7D 89 03 A6 */	mtctr r12
/* 805E8DA4  4E 80 04 21 */	bctrl 
/* 805E8DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E8DAC  7C 08 03 A6 */	mtlr r0
/* 805E8DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 805E8DB4  4E 80 00 20 */	blr 

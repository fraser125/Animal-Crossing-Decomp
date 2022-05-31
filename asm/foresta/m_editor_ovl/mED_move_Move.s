lbl_805DA99C:
/* 805DA99C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DA9A0  7C 08 02 A6 */	mflr r0
/* 805DA9A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DA9A8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DA9AC  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805DA9B0  7D 89 03 A6 */	mtctr r12
/* 805DA9B4  4E 80 04 21 */	bctrl 
/* 805DA9B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DA9BC  7C 08 03 A6 */	mtlr r0
/* 805DA9C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805DA9C4  4E 80 00 20 */	blr 

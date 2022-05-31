lbl_805E9CF8:
/* 805E9CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E9CFC  7C 08 02 A6 */	mflr r0
/* 805E9D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E9D04  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E9D08  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805E9D0C  7D 89 03 A6 */	mtctr r12
/* 805E9D10  4E 80 04 21 */	bctrl 
/* 805E9D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E9D18  7C 08 03 A6 */	mtlr r0
/* 805E9D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E9D20  4E 80 00 20 */	blr 

lbl_805E4D14:
/* 805E4D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E4D18  7C 08 02 A6 */	mflr r0
/* 805E4D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E4D20  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E4D24  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805E4D28  7D 89 03 A6 */	mtctr r12
/* 805E4D2C  4E 80 04 21 */	bctrl 
/* 805E4D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E4D34  7C 08 03 A6 */	mtlr r0
/* 805E4D38  38 21 00 10 */	addi r1, r1, 0x10
/* 805E4D3C  4E 80 00 20 */	blr 

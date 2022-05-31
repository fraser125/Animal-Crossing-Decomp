lbl_805E95BC:
/* 805E95BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E95C0  7C 08 02 A6 */	mflr r0
/* 805E95C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E95C8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E95CC  7C 83 23 78 */	mr r3, r4
/* 805E95D0  38 80 00 03 */	li r4, 3
/* 805E95D4  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805E95D8  7D 89 03 A6 */	mtctr r12
/* 805E95DC  4E 80 04 21 */	bctrl 
/* 805E95E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E95E4  7C 08 03 A6 */	mtlr r0
/* 805E95E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805E95EC  4E 80 00 20 */	blr 

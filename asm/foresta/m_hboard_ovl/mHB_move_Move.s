lbl_805E0A9C:
/* 805E0A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E0AA0  7C 08 02 A6 */	mflr r0
/* 805E0AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E0AA8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E0AAC  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805E0AB0  7D 89 03 A6 */	mtctr r12
/* 805E0AB4  4E 80 04 21 */	bctrl 
/* 805E0AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E0ABC  7C 08 03 A6 */	mtlr r0
/* 805E0AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 805E0AC4  4E 80 00 20 */	blr 

lbl_805D039C:
/* 805D039C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D03A0  7C 08 02 A6 */	mflr r0
/* 805D03A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D03A8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D03AC  7C 83 23 78 */	mr r3, r4
/* 805D03B0  38 80 00 02 */	li r4, 2
/* 805D03B4  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805D03B8  7D 89 03 A6 */	mtctr r12
/* 805D03BC  4E 80 04 21 */	bctrl 
/* 805D03C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D03C4  7C 08 03 A6 */	mtlr r0
/* 805D03C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805D03CC  4E 80 00 20 */	blr 
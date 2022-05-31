lbl_805EB5A0:
/* 805EB5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EB5A4  7C 08 02 A6 */	mflr r0
/* 805EB5A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EB5AC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805EB5B0  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805EB5B4  7D 89 03 A6 */	mtctr r12
/* 805EB5B8  4E 80 04 21 */	bctrl 
/* 805EB5BC  38 60 00 05 */	li r3, 5
/* 805EB5C0  4B D9 11 D1 */	bl mBGMPsComp_pause
/* 805EB5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EB5C8  7C 08 03 A6 */	mtlr r0
/* 805EB5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805EB5D0  4E 80 00 20 */	blr 

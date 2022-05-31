lbl_805FF590:
/* 805FF590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FF594  7C 08 02 A6 */	mflr r0
/* 805FF598  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FF59C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805FF5A0  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805FF5A4  7D 89 03 A6 */	mtctr r12
/* 805FF5A8  4E 80 04 21 */	bctrl 
/* 805FF5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FF5B0  7C 08 03 A6 */	mtlr r0
/* 805FF5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805FF5B8  4E 80 00 20 */	blr 

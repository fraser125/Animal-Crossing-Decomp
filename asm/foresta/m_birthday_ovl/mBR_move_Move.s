lbl_805C4698:
/* 805C4698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C469C  7C 08 02 A6 */	mflr r0
/* 805C46A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C46A4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C46A8  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805C46AC  7D 89 03 A6 */	mtctr r12
/* 805C46B0  4E 80 04 21 */	bctrl 
/* 805C46B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C46B8  7C 08 03 A6 */	mtlr r0
/* 805C46BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805C46C0  4E 80 00 20 */	blr 
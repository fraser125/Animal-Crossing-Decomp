lbl_805CC1F8:
/* 805CC1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CC1FC  7C 08 02 A6 */	mflr r0
/* 805CC200  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CC204  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CC208  81 85 05 BC */	lwz r12, 0x5bc(r5)
/* 805CC20C  7D 89 03 A6 */	mtctr r12
/* 805CC210  4E 80 04 21 */	bctrl 
/* 805CC214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CC218  7C 08 03 A6 */	mtlr r0
/* 805CC21C  38 21 00 10 */	addi r1, r1, 0x10
/* 805CC220  4E 80 00 20 */	blr 

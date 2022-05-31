lbl_805DC69C:
/* 805DC69C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC6A0  7C 08 02 A6 */	mflr r0
/* 805DC6A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC6A8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DC6AC  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805DC6B0  7D 89 03 A6 */	mtctr r12
/* 805DC6B4  4E 80 04 21 */	bctrl 
/* 805DC6B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC6BC  7C 08 03 A6 */	mtlr r0
/* 805DC6C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC6C4  4E 80 00 20 */	blr 

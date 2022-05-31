lbl_805CD8D8:
/* 805CD8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CD8DC  7C 08 02 A6 */	mflr r0
/* 805CD8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CD8E4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CD8E8  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805CD8EC  7D 89 03 A6 */	mtctr r12
/* 805CD8F0  4E 80 04 21 */	bctrl 
/* 805CD8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CD8F8  7C 08 03 A6 */	mtlr r0
/* 805CD8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805CD900  4E 80 00 20 */	blr 

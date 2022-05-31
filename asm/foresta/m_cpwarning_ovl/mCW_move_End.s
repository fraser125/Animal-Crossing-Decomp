lbl_805CEDA8:
/* 805CEDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CEDAC  7C 08 02 A6 */	mflr r0
/* 805CEDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CEDB4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CEDB8  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805CEDBC  7D 89 03 A6 */	mtctr r12
/* 805CEDC0  4E 80 04 21 */	bctrl 
/* 805CEDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CEDC8  7C 08 03 A6 */	mtlr r0
/* 805CEDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 805CEDD0  4E 80 00 20 */	blr 

lbl_80591DE0:
/* 80591DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591DE4  7C 08 02 A6 */	mflr r0
/* 80591DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591DEC  81 83 09 9C */	lwz r12, 0x99c(r3)
/* 80591DF0  7D 89 03 A6 */	mtctr r12
/* 80591DF4  4E 80 04 21 */	bctrl 
/* 80591DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591DFC  7C 08 03 A6 */	mtlr r0
/* 80591E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80591E04  4E 80 00 20 */	blr 

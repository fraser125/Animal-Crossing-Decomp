lbl_80591674:
/* 80591674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591678  7C 08 02 A6 */	mflr r0
/* 8059167C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591680  81 83 09 A0 */	lwz r12, 0x9a0(r3)
/* 80591684  7D 89 03 A6 */	mtctr r12
/* 80591688  4E 80 04 21 */	bctrl 
/* 8059168C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591690  7C 08 03 A6 */	mtlr r0
/* 80591694  38 21 00 10 */	addi r1, r1, 0x10
/* 80591698  4E 80 00 20 */	blr 

lbl_8057E704:
/* 8057E704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E708  7C 08 02 A6 */	mflr r0
/* 8057E70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E710  81 83 09 98 */	lwz r12, 0x998(r3)
/* 8057E714  7D 89 03 A6 */	mtctr r12
/* 8057E718  4E 80 04 21 */	bctrl 
/* 8057E71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E720  7C 08 03 A6 */	mtlr r0
/* 8057E724  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E728  4E 80 00 20 */	blr 

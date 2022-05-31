lbl_805BB9CC:
/* 805BB9CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BB9D0  7C 08 02 A6 */	mflr r0
/* 805BB9D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BB9D8  81 83 02 A0 */	lwz r12, 0x2a0(r3)
/* 805BB9DC  7D 89 03 A6 */	mtctr r12
/* 805BB9E0  4E 80 04 21 */	bctrl 
/* 805BB9E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BB9E8  7C 08 03 A6 */	mtlr r0
/* 805BB9EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805BB9F0  4E 80 00 20 */	blr 

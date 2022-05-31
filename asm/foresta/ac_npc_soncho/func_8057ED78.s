lbl_8057ED78:
/* 8057ED78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057ED7C  7C 08 02 A6 */	mflr r0
/* 8057ED80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057ED84  81 83 09 94 */	lwz r12, 0x994(r3)
/* 8057ED88  7D 89 03 A6 */	mtctr r12
/* 8057ED8C  4E 80 04 21 */	bctrl 
/* 8057ED90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057ED94  7C 08 03 A6 */	mtlr r0
/* 8057ED98  38 21 00 10 */	addi r1, r1, 0x10
/* 8057ED9C  4E 80 00 20 */	blr 

lbl_8056F9F8:
/* 8056F9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F9FC  7C 08 02 A6 */	mflr r0
/* 8056FA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FA04  81 83 09 9C */	lwz r12, 0x99c(r3)
/* 8056FA08  7D 89 03 A6 */	mtctr r12
/* 8056FA0C  4E 80 04 21 */	bctrl 
/* 8056FA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FA14  7C 08 03 A6 */	mtlr r0
/* 8056FA18  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FA1C  4E 80 00 20 */	blr 

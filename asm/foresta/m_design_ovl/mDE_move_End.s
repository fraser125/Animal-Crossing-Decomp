lbl_805D556C:
/* 805D556C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D5570  7C 08 02 A6 */	mflr r0
/* 805D5574  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D5578  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D557C  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805D5580  7D 89 03 A6 */	mtctr r12
/* 805D5584  4E 80 04 21 */	bctrl 
/* 805D5588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D558C  7C 08 03 A6 */	mtlr r0
/* 805D5590  38 21 00 10 */	addi r1, r1, 0x10
/* 805D5594  4E 80 00 20 */	blr 
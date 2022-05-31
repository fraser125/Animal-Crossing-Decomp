lbl_805CDBFC:
/* 805CDBFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CDC00  7C 08 02 A6 */	mflr r0
/* 805CDC04  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CDC08  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CDC0C  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805CDC10  7D 89 03 A6 */	mtctr r12
/* 805CDC14  4E 80 04 21 */	bctrl 
/* 805CDC18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CDC1C  7C 08 03 A6 */	mtlr r0
/* 805CDC20  38 21 00 10 */	addi r1, r1, 0x10
/* 805CDC24  4E 80 00 20 */	blr 

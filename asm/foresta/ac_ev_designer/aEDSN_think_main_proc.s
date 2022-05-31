lbl_8051DB8C:
/* 8051DB8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051DB90  7C 08 02 A6 */	mflr r0
/* 8051DB94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051DB98  81 83 09 98 */	lwz r12, 0x998(r3)
/* 8051DB9C  7D 89 03 A6 */	mtctr r12
/* 8051DBA0  4E 80 04 21 */	bctrl 
/* 8051DBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051DBA8  7C 08 03 A6 */	mtlr r0
/* 8051DBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8051DBB0  4E 80 00 20 */	blr 

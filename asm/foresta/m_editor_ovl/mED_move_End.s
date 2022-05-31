lbl_805DABA0:
/* 805DABA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DABA4  7C 08 02 A6 */	mflr r0
/* 805DABA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DABAC  38 00 00 00 */	li r0, 0
/* 805DABB0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DABB4  80 A5 09 8C */	lwz r5, 0x98c(r5)
/* 805DABB8  B0 05 00 22 */	sth r0, 0x22(r5)
/* 805DABBC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DABC0  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805DABC4  7D 89 03 A6 */	mtctr r12
/* 805DABC8  4E 80 04 21 */	bctrl 
/* 805DABCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DABD0  7C 08 03 A6 */	mtlr r0
/* 805DABD4  38 21 00 10 */	addi r1, r1, 0x10
/* 805DABD8  4E 80 00 20 */	blr 

lbl_805EF3E8:
/* 805EF3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EF3EC  7C 08 02 A6 */	mflr r0
/* 805EF3F0  38 A0 00 01 */	li r5, 1
/* 805EF3F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EF3F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EF3FC  7C 9F 23 78 */	mr r31, r4
/* 805EF400  93 C1 00 08 */	stw r30, 8(r1)
/* 805EF404  7C 7E 1B 78 */	mr r30, r3
/* 805EF408  80 84 00 00 */	lwz r4, 0(r4)
/* 805EF40C  4B FF DC 09 */	bl func_805ED014
/* 805EF410  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805EF414  7F C3 F3 78 */	mr r3, r30
/* 805EF418  7F E4 FB 78 */	mr r4, r31
/* 805EF41C  81 85 09 10 */	lwz r12, 0x910(r5)
/* 805EF420  7D 89 03 A6 */	mtctr r12
/* 805EF424  4E 80 04 21 */	bctrl 
/* 805EF428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EF42C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EF430  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EF434  7C 08 03 A6 */	mtlr r0
/* 805EF438  38 21 00 10 */	addi r1, r1, 0x10
/* 805EF43C  4E 80 00 20 */	blr 

lbl_803791A8:
/* 803791A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803791AC  7C 08 02 A6 */	mflr r0
/* 803791B0  38 80 00 14 */	li r4, 0x14
/* 803791B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803791B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803791BC  7C 7F 1B 78 */	mr r31, r3
/* 803791C0  4B CE 3E A9 */	bl bzero
/* 803791C4  7F E3 FB 78 */	mr r3, r31
/* 803791C8  4B FF F7 CD */	bl mBGMElem_default_set
/* 803791CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803791D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803791D4  7C 08 03 A6 */	mtlr r0
/* 803791D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803791DC  4E 80 00 20 */	blr 

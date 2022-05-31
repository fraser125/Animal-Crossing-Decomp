lbl_805E16C4:
/* 805E16C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E16C8  7C 08 02 A6 */	mflr r0
/* 805E16CC  2C 03 00 00 */	cmpwi r3, 0
/* 805E16D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E16D4  41 80 00 34 */	blt lbl_805E1708
/* 805E16D8  2C 03 00 28 */	cmpwi r3, 0x28
/* 805E16DC  40 80 00 2C */	bge lbl_805E1708
/* 805E16E0  7C 63 07 34 */	extsh r3, r3
/* 805E16E4  4B FF FF B1 */	bl mIV_ChangeIndex_mIV_to_mPlib
/* 805E16E8  4B DF 75 CD */	bl mPlib_Get_BasicItemShapeIndex_fromItemKind
/* 805E16EC  2C 03 00 00 */	cmpwi r3, 0
/* 805E16F0  41 80 00 10 */	blt lbl_805E1700
/* 805E16F4  2C 03 00 32 */	cmpwi r3, 0x32
/* 805E16F8  40 80 00 08 */	bge lbl_805E1700
/* 805E16FC  48 00 00 10 */	b lbl_805E170C
lbl_805E1700:
/* 805E1700  38 60 00 32 */	li r3, 0x32
/* 805E1704  48 00 00 08 */	b lbl_805E170C
lbl_805E1708:
/* 805E1708  38 60 FF FF */	li r3, -1
lbl_805E170C:
/* 805E170C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E1710  7C 08 03 A6 */	mtlr r0
/* 805E1714  38 21 00 10 */	addi r1, r1, 0x10
/* 805E1718  4E 80 00 20 */	blr 

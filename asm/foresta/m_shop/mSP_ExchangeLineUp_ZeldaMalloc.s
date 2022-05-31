lbl_803E9FA8:
/* 803E9FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E9FAC  7C 08 02 A6 */	mflr r0
/* 803E9FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E9FB4  4B FF FF C9 */	bl mSP_InitGoods
/* 803E9FB8  38 60 00 00 */	li r3, 0
/* 803E9FBC  4B FF EF F9 */	bl mSP_MakeGoodsList
/* 803E9FC0  4B FF FF 9D */	bl mSP_SetExchangeDay
/* 803E9FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E9FC8  7C 08 03 A6 */	mtlr r0
/* 803E9FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 803E9FD0  4E 80 00 20 */	blr 

lbl_803E9FF8:
/* 803E9FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E9FFC  7C 08 02 A6 */	mflr r0
/* 803EA000  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EA004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EA008  7C 7F 1B 78 */	mr r31, r3
/* 803EA00C  4B FF FF 71 */	bl mSP_InitGoods
/* 803EA010  7F E3 FB 78 */	mr r3, r31
/* 803EA014  4B FF EF A1 */	bl mSP_MakeGoodsList
/* 803EA018  4B FF FF 45 */	bl mSP_SetExchangeDay
/* 803EA01C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EA020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EA024  7C 08 03 A6 */	mtlr r0
/* 803EA028  38 21 00 10 */	addi r1, r1, 0x10
/* 803EA02C  4E 80 00 20 */	blr 

lbl_80552290:
/* 80552290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552294  7C 08 02 A6 */	mflr r0
/* 80552298  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055229C  A0 63 09 BA */	lhz r3, 0x9ba(r3)
/* 805522A0  4B E9 64 01 */	bl mSP_ItemNo2ItemPrice
/* 805522A4  38 80 00 03 */	li r4, 3
/* 805522A8  4B FF B6 95 */	bl aNSC_set_value_str
/* 805522AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805522B0  7C 08 03 A6 */	mtlr r0
/* 805522B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805522B8  4E 80 00 20 */	blr 

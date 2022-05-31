lbl_8054A978:
/* 8054A978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A97C  7C 08 02 A6 */	mflr r0
/* 8054A980  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A984  A0 63 09 BA */	lhz r3, 0x9ba(r3)
/* 8054A988  4B E9 DD 19 */	bl mSP_ItemNo2ItemPrice
/* 8054A98C  38 80 00 03 */	li r4, 3
/* 8054A990  4B FF B6 95 */	bl aNSC_set_value_str
/* 8054A994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A998  7C 08 03 A6 */	mtlr r0
/* 8054A99C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A9A0  4E 80 00 20 */	blr 

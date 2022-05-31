lbl_8055A964:
/* 8055A964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A968  7C 08 02 A6 */	mflr r0
/* 8055A96C  38 80 00 00 */	li r4, 0
/* 8055A970  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055A978  93 C1 00 08 */	stw r30, 8(r1)
/* 8055A97C  7C 7E 1B 78 */	mr r30, r3
/* 8055A980  A3 E3 09 B4 */	lhz r31, 0x9b4(r3)
/* 8055A984  7F E3 FB 78 */	mr r3, r31
/* 8055A988  4B FF FF 79 */	bl aNSC_set_item_name_str
/* 8055A98C  7F E3 FB 78 */	mr r3, r31
/* 8055A990  4B E8 DD 11 */	bl mSP_ItemNo2ItemPrice
/* 8055A994  7C 7F 1B 78 */	mr r31, r3
/* 8055A998  38 80 00 04 */	li r4, 4
/* 8055A99C  4B FF FF 09 */	bl aNSC_set_value_str
/* 8055A9A0  93 FE 09 AC */	stw r31, 0x9ac(r30)
/* 8055A9A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055A9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055A9AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055A9B0  7C 08 03 A6 */	mtlr r0
/* 8055A9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8055A9B8  4E 80 00 20 */	blr 

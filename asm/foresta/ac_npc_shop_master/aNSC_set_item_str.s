lbl_8057767C:
/* 8057767C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80577680  7C 08 02 A6 */	mflr r0
/* 80577684  38 80 00 00 */	li r4, 0
/* 80577688  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057768C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80577690  93 C1 00 08 */	stw r30, 8(r1)
/* 80577694  7C 7E 1B 78 */	mr r30, r3
/* 80577698  A3 E3 09 B4 */	lhz r31, 0x9b4(r3)
/* 8057769C  7F E3 FB 78 */	mr r3, r31
/* 805776A0  4B FF FF 79 */	bl aNSC_set_item_name_str
/* 805776A4  7F E3 FB 78 */	mr r3, r31
/* 805776A8  4B E7 0F F9 */	bl mSP_ItemNo2ItemPrice
/* 805776AC  7C 7F 1B 78 */	mr r31, r3
/* 805776B0  38 80 00 04 */	li r4, 4
/* 805776B4  4B FF FF 09 */	bl aNSC_set_value_str
/* 805776B8  93 FE 09 AC */	stw r31, 0x9ac(r30)
/* 805776BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805776C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805776C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805776C8  7C 08 03 A6 */	mtlr r0
/* 805776CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805776D0  4E 80 00 20 */	blr 

lbl_80581188:
/* 80581188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058118C  7C 08 02 A6 */	mflr r0
/* 80581190  38 80 00 00 */	li r4, 0
/* 80581194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80581198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058119C  93 C1 00 08 */	stw r30, 8(r1)
/* 805811A0  7C 7E 1B 78 */	mr r30, r3
/* 805811A4  A3 E3 09 B4 */	lhz r31, 0x9b4(r3)
/* 805811A8  7F E3 FB 78 */	mr r3, r31
/* 805811AC  4B FF FF 79 */	bl aNSC_set_item_name_str
/* 805811B0  7F E3 FB 78 */	mr r3, r31
/* 805811B4  4B E6 74 ED */	bl mSP_ItemNo2ItemPrice
/* 805811B8  7C 7F 1B 78 */	mr r31, r3
/* 805811BC  38 80 00 04 */	li r4, 4
/* 805811C0  4B FF FF 09 */	bl aNSC_set_value_str
/* 805811C4  93 FE 09 AC */	stw r31, 0x9ac(r30)
/* 805811C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805811CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805811D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805811D4  7C 08 03 A6 */	mtlr r0
/* 805811D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805811DC  4E 80 00 20 */	blr 

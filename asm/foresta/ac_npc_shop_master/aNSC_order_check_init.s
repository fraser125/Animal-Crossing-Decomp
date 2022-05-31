lbl_8057BF10:
/* 8057BF10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BF14  7C 08 02 A6 */	mflr r0
/* 8057BF18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BF1C  A0 63 09 BA */	lhz r3, 0x9ba(r3)
/* 8057BF20  4B E6 C7 81 */	bl mSP_ItemNo2ItemPrice
/* 8057BF24  38 80 00 03 */	li r4, 3
/* 8057BF28  4B FF B6 95 */	bl aNSC_set_value_str
/* 8057BF2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BF30  7C 08 03 A6 */	mtlr r0
/* 8057BF34  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BF38  4E 80 00 20 */	blr 

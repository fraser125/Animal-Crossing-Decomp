lbl_8055E82C:
/* 8055E82C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E830  7C 08 02 A6 */	mflr r0
/* 8055E834  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E838  A0 63 09 BA */	lhz r3, 0x9ba(r3)
/* 8055E83C  4B E8 9E 65 */	bl mSP_ItemNo2ItemPrice
/* 8055E840  38 80 00 03 */	li r4, 3
/* 8055E844  4B FF C0 61 */	bl aNSC_set_value_str
/* 8055E848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E84C  7C 08 03 A6 */	mtlr r0
/* 8055E850  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E854  4E 80 00 20 */	blr 

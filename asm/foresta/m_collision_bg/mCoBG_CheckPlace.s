lbl_8038FED8:
/* 8038FED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038FEDC  7C 08 02 A6 */	mflr r0
/* 8038FEE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038FEE4  80 A3 00 00 */	lwz r5, 0(r3)
/* 8038FEE8  80 83 00 04 */	lwz r4, 4(r3)
/* 8038FEEC  80 03 00 08 */	lwz r0, 8(r3)
/* 8038FEF0  38 61 00 08 */	addi r3, r1, 8
/* 8038FEF4  90 A1 00 08 */	stw r5, 8(r1)
/* 8038FEF8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8038FEFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8038FF00  48 01 68 0D */	bl mFI_GetUnitCol
/* 8038FF04  88 03 00 03 */	lbz r0, 3(r3)
/* 8038FF08  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 8038FF0C  4B FF FF B9 */	bl mCoBG_CheckPlace_OrgAttr
/* 8038FF10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038FF14  7C 08 03 A6 */	mtlr r0
/* 8038FF18  38 21 00 20 */	addi r1, r1, 0x20
/* 8038FF1C  4E 80 00 20 */	blr 

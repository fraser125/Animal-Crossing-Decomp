lbl_805E171C:
/* 805E171C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E1720  7C 08 02 A6 */	mflr r0
/* 805E1724  2C 03 00 00 */	cmpwi r3, 0
/* 805E1728  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E172C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E1730  41 80 00 3C */	blt lbl_805E176C
/* 805E1734  2C 03 00 28 */	cmpwi r3, 0x28
/* 805E1738  40 80 00 34 */	bge lbl_805E176C
/* 805E173C  4B FF FF 89 */	bl mIV_Get_player_item_shape_index
/* 805E1740  7C 7F 1B 79 */	or. r31, r3, r3
/* 805E1744  41 80 00 28 */	blt lbl_805E176C
/* 805E1748  2C 1F 00 32 */	cmpwi r31, 0x32
/* 805E174C  40 80 00 20 */	bge lbl_805E176C
/* 805E1750  4B DF 75 BD */	bl mPlib_Get_Item_DataPointerType
/* 805E1754  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805E1758  28 00 00 01 */	cmplwi r0, 1
/* 805E175C  40 82 00 10 */	bne lbl_805E176C
/* 805E1760  7F E3 FB 78 */	mr r3, r31
/* 805E1764  4B DF 75 25 */	bl mPlib_Get_Item_DataPointer
/* 805E1768  48 00 00 08 */	b lbl_805E1770
lbl_805E176C:
/* 805E176C  38 60 00 00 */	li r3, 0
lbl_805E1770:
/* 805E1770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E1774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E1778  7C 08 03 A6 */	mtlr r0
/* 805E177C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E1780  4E 80 00 20 */	blr 

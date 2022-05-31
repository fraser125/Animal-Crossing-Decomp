lbl_805E1844:
/* 805E1844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E1848  7C 08 02 A6 */	mflr r0
/* 805E184C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E1850  4B FF FF A5 */	bl mIV_Get_player_item_anime_index
/* 805E1854  2C 03 00 00 */	cmpwi r3, 0
/* 805E1858  41 80 00 14 */	blt lbl_805E186C
/* 805E185C  2C 03 00 32 */	cmpwi r3, 0x32
/* 805E1860  40 80 00 0C */	bge lbl_805E186C
/* 805E1864  4B DF 74 25 */	bl mPlib_Get_Item_DataPointer
/* 805E1868  48 00 00 08 */	b lbl_805E1870
lbl_805E186C:
/* 805E186C  38 60 00 00 */	li r3, 0
lbl_805E1870:
/* 805E1870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E1874  7C 08 03 A6 */	mtlr r0
/* 805E1878  38 21 00 10 */	addi r1, r1, 0x10
/* 805E187C  4E 80 00 20 */	blr 

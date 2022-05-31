lbl_8054D9FC:
/* 8054D9FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DA00  7C 08 02 A6 */	mflr r0
/* 8054DA04  38 80 00 00 */	li r4, 0
/* 8054DA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DA0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054DA10  93 C1 00 08 */	stw r30, 8(r1)
/* 8054DA14  7C 7E 1B 78 */	mr r30, r3
/* 8054DA18  A3 E3 09 B4 */	lhz r31, 0x9b4(r3)
/* 8054DA1C  7F E3 FB 78 */	mr r3, r31
/* 8054DA20  4B FF FF 79 */	bl aNSC_set_item_name_str
/* 8054DA24  7F E3 FB 78 */	mr r3, r31
/* 8054DA28  4B E9 AC 79 */	bl mSP_ItemNo2ItemPrice
/* 8054DA2C  7C 7F 1B 78 */	mr r31, r3
/* 8054DA30  38 80 00 04 */	li r4, 4
/* 8054DA34  4B FF FF 09 */	bl aNSC_set_value_str
/* 8054DA38  93 FE 09 AC */	stw r31, 0x9ac(r30)
/* 8054DA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DA40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054DA44  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054DA48  7C 08 03 A6 */	mtlr r0
/* 8054DA4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DA50  4E 80 00 20 */	blr 

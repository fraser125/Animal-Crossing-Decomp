lbl_8048FE24:
/* 8048FE24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048FE28  7C 08 02 A6 */	mflr r0
/* 8048FE2C  3C 60 81 1D */	lis r3, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048FE30  38 80 00 00 */	li r4, 0
/* 8048FE34  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048FE38  38 63 EB E0 */	addi r3, r3, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048FE3C  38 A0 00 01 */	li r5, 1
/* 8048FE40  38 C0 00 0A */	li r6, 0xa
/* 8048FE44  4B FF FF 69 */	bl aQMgr_set_random_number_item_str
/* 8048FE48  3C 60 81 1D */	lis r3, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048FE4C  38 80 00 01 */	li r4, 1
/* 8048FE50  38 63 EB E0 */	addi r3, r3, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048FE54  38 A0 00 0A */	li r5, 0xa
/* 8048FE58  38 C0 00 63 */	li r6, 0x63
/* 8048FE5C  4B FF FF 51 */	bl aQMgr_set_random_number_item_str
/* 8048FE60  3C 60 81 1D */	lis r3, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048FE64  38 80 00 02 */	li r4, 2
/* 8048FE68  38 63 EB E0 */	addi r3, r3, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048FE6C  38 A0 00 00 */	li r5, 0
/* 8048FE70  38 C0 00 09 */	li r6, 9
/* 8048FE74  4B FF FF 39 */	bl aQMgr_set_random_number_item_str
/* 8048FE78  4B F5 9A ED */	bl mSP_GetShopLevel
/* 8048FE7C  7C 64 1B 78 */	mr r4, r3
/* 8048FE80  38 61 00 08 */	addi r3, r1, 8
/* 8048FE84  38 A4 04 54 */	addi r5, r4, 0x454
/* 8048FE88  38 80 00 10 */	li r4, 0x10
/* 8048FE8C  4B F5 EE 41 */	bl mString_Load_StringFromRom
/* 8048FE90  4B F2 F8 19 */	bl func_803BF6A8
/* 8048FE94  38 A1 00 08 */	addi r5, r1, 8
/* 8048FE98  38 80 00 03 */	li r4, 3
/* 8048FE9C  38 C0 00 10 */	li r6, 0x10
/* 8048FEA0  4B F2 FF 35 */	bl mMsg_Set_item_str
/* 8048FEA4  3C 60 80 64 */	lis r3, lit_1217@ha /* 0x80644C48@ha */
/* 8048FEA8  3C C0 81 1D */	lis r6, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048FEAC  38 A3 4C 48 */	addi r5, r3, lit_1217@l /* 0x80644C48@l */
/* 8048FEB0  38 80 00 04 */	li r4, 4
/* 8048FEB4  C0 25 00 00 */	lfs f1, 0(r5)
/* 8048FEB8  38 66 EB E0 */	addi r3, r6, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048FEBC  38 A0 04 34 */	li r5, 0x434
/* 8048FEC0  38 C0 FF FF */	li r6, -1
/* 8048FEC4  4B FF FD 85 */	bl aQMgr_set_random_string
/* 8048FEC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048FECC  7C 08 03 A6 */	mtlr r0
/* 8048FED0  38 21 00 20 */	addi r1, r1, 0x20
/* 8048FED4  4E 80 00 20 */	blr 

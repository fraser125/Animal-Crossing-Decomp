lbl_80577A9C:
/* 80577A9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80577AA0  7C 08 02 A6 */	mflr r0
/* 80577AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80577AA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80577AAC  7C 9F 23 78 */	mr r31, r4
/* 80577AB0  38 80 00 02 */	li r4, 2
/* 80577AB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80577AB8  7C 7E 1B 78 */	mr r30, r3
/* 80577ABC  4B FF FB 5D */	bl aNSC_set_item_name_str
/* 80577AC0  7F E3 FB 78 */	mr r3, r31
/* 80577AC4  38 80 00 07 */	li r4, 7
/* 80577AC8  4B FF FA F5 */	bl aNSC_set_value_str
/* 80577ACC  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 80577AD0  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 80577AD4  2C 00 00 02 */	cmpwi r0, 2
/* 80577AD8  41 82 00 20 */	beq lbl_80577AF8
/* 80577ADC  40 80 00 10 */	bge lbl_80577AEC
/* 80577AE0  2C 00 00 01 */	cmpwi r0, 1
/* 80577AE4  40 80 00 48 */	bge lbl_80577B2C
/* 80577AE8  48 00 00 4C */	b lbl_80577B34
lbl_80577AEC:
/* 80577AEC  2C 00 00 04 */	cmpwi r0, 4
/* 80577AF0  40 80 00 44 */	bge lbl_80577B34
/* 80577AF4  48 00 00 38 */	b lbl_80577B2C
lbl_80577AF8:
/* 80577AF8  3C 80 80 6C */	lis r4, aNSC_item_tanni_type@ha /* 0x806C0150@ha */
/* 80577AFC  3C 60 80 6C */	lis r3, tani_string_num@ha /* 0x806C021C@ha */
/* 80577B00  54 C5 D6 BA */	rlwinm r5, r6, 0x1a, 0x1a, 0x1d
/* 80577B04  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 80577B08  38 84 01 50 */	addi r4, r4, aNSC_item_tanni_type@l /* 0x806C0150@l */
/* 80577B0C  38 63 02 1C */	addi r3, r3, tani_string_num@l /* 0x806C021C@l */
/* 80577B10  7C 84 28 2E */	lwzx r4, r4, r5
/* 80577B14  7C 04 00 AE */	lbzx r0, r4, r0
/* 80577B18  54 00 10 3A */	slwi r0, r0, 2
/* 80577B1C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80577B20  7C BF 02 14 */	add r5, r31, r0
/* 80577B24  38 A5 FF FF */	addi r5, r5, -1
/* 80577B28  48 00 00 10 */	b lbl_80577B38
lbl_80577B2C:
/* 80577B2C  38 BF 05 65 */	addi r5, r31, 0x565
/* 80577B30  48 00 00 08 */	b lbl_80577B38
lbl_80577B34:
/* 80577B34  38 BF 05 65 */	addi r5, r31, 0x565
lbl_80577B38:
/* 80577B38  38 61 00 08 */	addi r3, r1, 8
/* 80577B3C  38 80 00 10 */	li r4, 0x10
/* 80577B40  4B E7 71 8D */	bl mString_Load_StringFromRom
/* 80577B44  4B E4 7B 65 */	bl func_803BF6A8
/* 80577B48  38 A1 00 08 */	addi r5, r1, 8
/* 80577B4C  38 80 00 08 */	li r4, 8
/* 80577B50  38 C0 00 10 */	li r6, 0x10
/* 80577B54  4B E4 81 01 */	bl mMsg_Set_free_str
/* 80577B58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80577B5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80577B60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80577B64  7C 08 03 A6 */	mtlr r0
/* 80577B68  38 21 00 20 */	addi r1, r1, 0x20
/* 80577B6C  4E 80 00 20 */	blr 

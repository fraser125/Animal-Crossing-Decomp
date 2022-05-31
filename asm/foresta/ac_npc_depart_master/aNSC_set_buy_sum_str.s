lbl_8054DE1C:
/* 8054DE1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054DE20  7C 08 02 A6 */	mflr r0
/* 8054DE24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054DE28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054DE2C  7C 9F 23 78 */	mr r31, r4
/* 8054DE30  38 80 00 02 */	li r4, 2
/* 8054DE34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8054DE38  7C 7E 1B 78 */	mr r30, r3
/* 8054DE3C  4B FF FB 5D */	bl aNSC_set_item_name_str
/* 8054DE40  7F E3 FB 78 */	mr r3, r31
/* 8054DE44  38 80 00 07 */	li r4, 7
/* 8054DE48  4B FF FA F5 */	bl aNSC_set_value_str
/* 8054DE4C  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 8054DE50  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 8054DE54  2C 00 00 02 */	cmpwi r0, 2
/* 8054DE58  41 82 00 20 */	beq lbl_8054DE78
/* 8054DE5C  40 80 00 10 */	bge lbl_8054DE6C
/* 8054DE60  2C 00 00 01 */	cmpwi r0, 1
/* 8054DE64  40 80 00 48 */	bge lbl_8054DEAC
/* 8054DE68  48 00 00 4C */	b lbl_8054DEB4
lbl_8054DE6C:
/* 8054DE6C  2C 00 00 04 */	cmpwi r0, 4
/* 8054DE70  40 80 00 44 */	bge lbl_8054DEB4
/* 8054DE74  48 00 00 38 */	b lbl_8054DEAC
lbl_8054DE78:
/* 8054DE78  3C 80 80 6A */	lis r4, aNSC_item_tanni_type@ha /* 0x806A5B8C@ha */
/* 8054DE7C  3C 60 80 6A */	lis r3, tani_string_num@ha /* 0x806A5C58@ha */
/* 8054DE80  54 C5 D6 BA */	rlwinm r5, r6, 0x1a, 0x1a, 0x1d
/* 8054DE84  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 8054DE88  38 84 5B 8C */	addi r4, r4, aNSC_item_tanni_type@l /* 0x806A5B8C@l */
/* 8054DE8C  38 63 5C 58 */	addi r3, r3, tani_string_num@l /* 0x806A5C58@l */
/* 8054DE90  7C 84 28 2E */	lwzx r4, r4, r5
/* 8054DE94  7C 04 00 AE */	lbzx r0, r4, r0
/* 8054DE98  54 00 10 3A */	slwi r0, r0, 2
/* 8054DE9C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8054DEA0  7C BF 02 14 */	add r5, r31, r0
/* 8054DEA4  38 A5 FF FF */	addi r5, r5, -1
/* 8054DEA8  48 00 00 10 */	b lbl_8054DEB8
lbl_8054DEAC:
/* 8054DEAC  38 BF 05 65 */	addi r5, r31, 0x565
/* 8054DEB0  48 00 00 08 */	b lbl_8054DEB8
lbl_8054DEB4:
/* 8054DEB4  38 BF 05 65 */	addi r5, r31, 0x565
lbl_8054DEB8:
/* 8054DEB8  38 61 00 08 */	addi r3, r1, 8
/* 8054DEBC  38 80 00 10 */	li r4, 0x10
/* 8054DEC0  4B EA 0E 0D */	bl mString_Load_StringFromRom
/* 8054DEC4  4B E7 17 E5 */	bl func_803BF6A8
/* 8054DEC8  38 A1 00 08 */	addi r5, r1, 8
/* 8054DECC  38 80 00 08 */	li r4, 8
/* 8054DED0  38 C0 00 10 */	li r6, 0x10
/* 8054DED4  4B E7 1D 81 */	bl mMsg_Set_free_str
/* 8054DED8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054DEDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054DEE0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8054DEE4  7C 08 03 A6 */	mtlr r0
/* 8054DEE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8054DEEC  4E 80 00 20 */	blr 

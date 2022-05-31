lbl_804B6E00:
/* 804B6E00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B6E04  7C 08 02 A6 */	mflr r0
/* 804B6E08  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B6E0C  39 61 00 20 */	addi r11, r1, 0x20
/* 804B6E10  4B BE 40 C5 */	bl func_8009AED4
/* 804B6E14  7C 7D 1B 78 */	mr r29, r3
/* 804B6E18  3C A0 80 69 */	lis r5, type_data_table_p_a@ha /* 0x80692AC8@ha */
/* 804B6E1C  3B DD 01 74 */	addi r30, r29, 0x174
/* 804B6E20  3C 60 80 69 */	lis r3, pos_table@ha /* 0x8068FB8C@ha */
/* 804B6E24  3C DE 00 01 */	addis r6, r30, 1
/* 804B6E28  38 05 2A C8 */	addi r0, r5, type_data_table_p_a@l /* 0x80692AC8@l */
/* 804B6E2C  90 06 25 9C */	stw r0, 0x259c(r6)
/* 804B6E30  38 63 FB 8C */	addi r3, r3, pos_table@l /* 0x8068FB8C@l */
/* 804B6E34  38 00 00 00 */	li r0, 0
/* 804B6E38  7C 9F 23 78 */	mr r31, r4
/* 804B6E3C  90 66 25 A0 */	stw r3, 0x25a0(r6)
/* 804B6E40  B0 06 39 E0 */	sth r0, 0x39e0(r6)
/* 804B6E44  4B EC 80 11 */	bl Camera2_CheckCullingMode
/* 804B6E48  2C 03 00 00 */	cmpwi r3, 0
/* 804B6E4C  41 82 00 14 */	beq lbl_804B6E60
/* 804B6E50  3C 7E 00 01 */	addis r3, r30, 1
/* 804B6E54  A0 03 39 E0 */	lhz r0, 0x39e0(r3)
/* 804B6E58  60 00 00 01 */	ori r0, r0, 1
/* 804B6E5C  B0 03 39 E0 */	sth r0, 0x39e0(r3)
lbl_804B6E60:
/* 804B6E60  3C 60 80 4B */	lis r3, func_804B6D98@ha /* 0x804B6D98@ha */
/* 804B6E64  3C 9E 00 01 */	addis r4, r30, 1
/* 804B6E68  38 03 6D 98 */	addi r0, r3, func_804B6D98@l /* 0x804B6D98@l */
/* 804B6E6C  7F E3 FB 78 */	mr r3, r31
/* 804B6E70  90 04 39 D8 */	stw r0, 0x39d8(r4)
/* 804B6E74  7F A4 EB 78 */	mr r4, r29
/* 804B6E78  7F C5 F3 78 */	mr r5, r30
/* 804B6E7C  4B FF F3 C5 */	bl bg_item_common_move
/* 804B6E80  39 61 00 20 */	addi r11, r1, 0x20
/* 804B6E84  4B BE 40 9D */	bl func_8009AF20
/* 804B6E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B6E8C  7C 08 03 A6 */	mtlr r0
/* 804B6E90  38 21 00 20 */	addi r1, r1, 0x20
/* 804B6E94  4E 80 00 20 */	blr 

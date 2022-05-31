lbl_804BE184:
/* 804BE184  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BE188  7C 08 02 A6 */	mflr r0
/* 804BE18C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BE190  39 61 00 20 */	addi r11, r1, 0x20
/* 804BE194  4B BD CD 41 */	bl func_8009AED4
/* 804BE198  7C 7D 1B 78 */	mr r29, r3
/* 804BE19C  3C A0 80 69 */	lis r5, type_data_table_p_a@ha /* 0x80695A20@ha */
/* 804BE1A0  3B DD 01 74 */	addi r30, r29, 0x174
/* 804BE1A4  3C 60 80 69 */	lis r3, pos_table@ha /* 0x80692B04@ha */
/* 804BE1A8  3C DE 00 01 */	addis r6, r30, 1
/* 804BE1AC  38 05 5A 20 */	addi r0, r5, type_data_table_p_a@l /* 0x80695A20@l */
/* 804BE1B0  90 06 25 9C */	stw r0, 0x259c(r6)
/* 804BE1B4  38 63 2B 04 */	addi r3, r3, pos_table@l /* 0x80692B04@l */
/* 804BE1B8  38 00 00 00 */	li r0, 0
/* 804BE1BC  7C 9F 23 78 */	mr r31, r4
/* 804BE1C0  90 66 25 A0 */	stw r3, 0x25a0(r6)
/* 804BE1C4  B0 06 39 E0 */	sth r0, 0x39e0(r6)
/* 804BE1C8  4B EC 0C 8D */	bl Camera2_CheckCullingMode
/* 804BE1CC  2C 03 00 00 */	cmpwi r3, 0
/* 804BE1D0  41 82 00 14 */	beq lbl_804BE1E4
/* 804BE1D4  3C 7E 00 01 */	addis r3, r30, 1
/* 804BE1D8  A0 03 39 E0 */	lhz r0, 0x39e0(r3)
/* 804BE1DC  60 00 00 01 */	ori r0, r0, 1
/* 804BE1E0  B0 03 39 E0 */	sth r0, 0x39e0(r3)
lbl_804BE1E4:
/* 804BE1E4  3C 60 80 4C */	lis r3, func_804BE11C@ha /* 0x804BE11C@ha */
/* 804BE1E8  3C 9E 00 01 */	addis r4, r30, 1
/* 804BE1EC  38 03 E1 1C */	addi r0, r3, func_804BE11C@l /* 0x804BE11C@l */
/* 804BE1F0  7F E3 FB 78 */	mr r3, r31
/* 804BE1F4  90 04 39 D8 */	stw r0, 0x39d8(r4)
/* 804BE1F8  7F A4 EB 78 */	mr r4, r29
/* 804BE1FC  38 BD 01 74 */	addi r5, r29, 0x174
/* 804BE200  4B FF F3 C5 */	bl bg_item_common_move
/* 804BE204  39 61 00 20 */	addi r11, r1, 0x20
/* 804BE208  4B BD CD 19 */	bl func_8009AF20
/* 804BE20C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BE210  7C 08 03 A6 */	mtlr r0
/* 804BE214  38 21 00 20 */	addi r1, r1, 0x20
/* 804BE218  4E 80 00 20 */	blr 

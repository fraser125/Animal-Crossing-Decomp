lbl_804C5C7C:
/* 804C5C7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C5C80  7C 08 02 A6 */	mflr r0
/* 804C5C84  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C5C88  39 61 00 20 */	addi r11, r1, 0x20
/* 804C5C8C  4B BD 52 49 */	bl func_8009AED4
/* 804C5C90  7C 7D 1B 78 */	mr r29, r3
/* 804C5C94  3C A0 80 6A */	lis r5, type_data_table_p_a@ha /* 0x80698BF8@ha */
/* 804C5C98  3B DD 01 74 */	addi r30, r29, 0x174
/* 804C5C9C  3C 60 80 69 */	lis r3, pos_table@ha /* 0x80695CBC@ha */
/* 804C5CA0  3C DE 00 01 */	addis r6, r30, 1
/* 804C5CA4  38 05 8B F8 */	addi r0, r5, type_data_table_p_a@l /* 0x80698BF8@l */
/* 804C5CA8  90 06 25 9C */	stw r0, 0x259c(r6)
/* 804C5CAC  38 63 5C BC */	addi r3, r3, pos_table@l /* 0x80695CBC@l */
/* 804C5CB0  38 00 00 00 */	li r0, 0
/* 804C5CB4  7C 9F 23 78 */	mr r31, r4
/* 804C5CB8  90 66 25 A0 */	stw r3, 0x25a0(r6)
/* 804C5CBC  B0 06 39 E0 */	sth r0, 0x39e0(r6)
/* 804C5CC0  4B EB 91 95 */	bl Camera2_CheckCullingMode
/* 804C5CC4  2C 03 00 00 */	cmpwi r3, 0
/* 804C5CC8  41 82 00 14 */	beq lbl_804C5CDC
/* 804C5CCC  3C 7E 00 01 */	addis r3, r30, 1
/* 804C5CD0  A0 03 39 E0 */	lhz r0, 0x39e0(r3)
/* 804C5CD4  60 00 00 01 */	ori r0, r0, 1
/* 804C5CD8  B0 03 39 E0 */	sth r0, 0x39e0(r3)
lbl_804C5CDC:
/* 804C5CDC  3C 60 80 4C */	lis r3, func_804C5C14@ha /* 0x804C5C14@ha */
/* 804C5CE0  3C 9E 00 01 */	addis r4, r30, 1
/* 804C5CE4  38 03 5C 14 */	addi r0, r3, func_804C5C14@l /* 0x804C5C14@l */
/* 804C5CE8  7F E3 FB 78 */	mr r3, r31
/* 804C5CEC  90 04 39 D8 */	stw r0, 0x39d8(r4)
/* 804C5CF0  7F A4 EB 78 */	mr r4, r29
/* 804C5CF4  7F C5 F3 78 */	mr r5, r30
/* 804C5CF8  4B FF F3 C5 */	bl bg_item_common_move
/* 804C5CFC  39 61 00 20 */	addi r11, r1, 0x20
/* 804C5D00  4B BD 52 21 */	bl func_8009AF20
/* 804C5D04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C5D08  7C 08 03 A6 */	mtlr r0
/* 804C5D0C  38 21 00 20 */	addi r1, r1, 0x20
/* 804C5D10  4E 80 00 20 */	blr 

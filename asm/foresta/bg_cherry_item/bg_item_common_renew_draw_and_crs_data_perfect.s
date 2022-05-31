lbl_804B5E64:
/* 804B5E64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B5E68  7C 08 02 A6 */	mflr r0
/* 804B5E6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B5E70  39 61 00 30 */	addi r11, r1, 0x30
/* 804B5E74  4B BE 50 61 */	bl func_8009AED4
/* 804B5E78  7C 7D 1B 78 */	mr r29, r3
/* 804B5E7C  7C 9E 23 78 */	mr r30, r4
/* 804B5E80  7C BF 2B 78 */	mr r31, r5
/* 804B5E84  4B F2 37 BD */	bl get_player_actor_withoutCheck
/* 804B5E88  28 03 00 00 */	cmplwi r3, 0
/* 804B5E8C  41 82 00 34 */	beq lbl_804B5EC0
/* 804B5E90  80 83 00 28 */	lwz r4, 0x28(r3)
/* 804B5E94  38 A1 00 08 */	addi r5, r1, 8
/* 804B5E98  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804B5E9C  90 81 00 08 */	stw r4, 8(r1)
/* 804B5EA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B5EA4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804B5EA8  3C 7E 00 01 */	addis r3, r30, 1
/* 804B5EAC  7C 64 1B 78 */	mr r4, r3
/* 804B5EB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B5EB4  38 84 25 54 */	addi r4, r4, 0x2554
/* 804B5EB8  38 63 21 50 */	addi r3, r3, 0x2150
/* 804B5EBC  4B FF EC D9 */	bl m_GetCItTable_TreeTblChk
lbl_804B5EC0:
/* 804B5EC0  7F A3 EB 78 */	mr r3, r29
/* 804B5EC4  7F C4 F3 78 */	mr r4, r30
/* 804B5EC8  7F E5 FB 78 */	mr r5, r31
/* 804B5ECC  4B FF FC 81 */	bl bg_item_common_chg_draw_tbl_perfect
/* 804B5ED0  39 61 00 30 */	addi r11, r1, 0x30
/* 804B5ED4  4B BE 50 4D */	bl func_8009AF20
/* 804B5ED8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B5EDC  7C 08 03 A6 */	mtlr r0
/* 804B5EE0  38 21 00 30 */	addi r1, r1, 0x30
/* 804B5EE4  4E 80 00 20 */	blr 

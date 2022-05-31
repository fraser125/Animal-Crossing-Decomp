lbl_804C4CE0:
/* 804C4CE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C4CE4  7C 08 02 A6 */	mflr r0
/* 804C4CE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C4CEC  39 61 00 30 */	addi r11, r1, 0x30
/* 804C4CF0  4B BD 61 E5 */	bl func_8009AED4
/* 804C4CF4  7C 7D 1B 78 */	mr r29, r3
/* 804C4CF8  7C 9E 23 78 */	mr r30, r4
/* 804C4CFC  7C BF 2B 78 */	mr r31, r5
/* 804C4D00  4B F1 49 41 */	bl get_player_actor_withoutCheck
/* 804C4D04  28 03 00 00 */	cmplwi r3, 0
/* 804C4D08  41 82 00 34 */	beq lbl_804C4D3C
/* 804C4D0C  80 83 00 28 */	lwz r4, 0x28(r3)
/* 804C4D10  38 A1 00 08 */	addi r5, r1, 8
/* 804C4D14  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804C4D18  90 81 00 08 */	stw r4, 8(r1)
/* 804C4D1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C4D20  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804C4D24  3C 7E 00 01 */	addis r3, r30, 1
/* 804C4D28  7C 64 1B 78 */	mr r4, r3
/* 804C4D2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C4D30  38 84 25 54 */	addi r4, r4, 0x2554
/* 804C4D34  38 63 21 50 */	addi r3, r3, 0x2150
/* 804C4D38  4B FF EC D9 */	bl m_GetCItTable_TreeTblChk
lbl_804C4D3C:
/* 804C4D3C  7F A3 EB 78 */	mr r3, r29
/* 804C4D40  7F C4 F3 78 */	mr r4, r30
/* 804C4D44  7F E5 FB 78 */	mr r5, r31
/* 804C4D48  4B FF FC 81 */	bl bg_item_common_chg_draw_tbl_perfect
/* 804C4D4C  39 61 00 30 */	addi r11, r1, 0x30
/* 804C4D50  4B BD 61 D1 */	bl func_8009AF20
/* 804C4D54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C4D58  7C 08 03 A6 */	mtlr r0
/* 804C4D5C  38 21 00 30 */	addi r1, r1, 0x30
/* 804C4D60  4E 80 00 20 */	blr 

lbl_804BD1E8:
/* 804BD1E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BD1EC  7C 08 02 A6 */	mflr r0
/* 804BD1F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BD1F4  39 61 00 30 */	addi r11, r1, 0x30
/* 804BD1F8  4B BD DC DD */	bl func_8009AED4
/* 804BD1FC  7C 7D 1B 78 */	mr r29, r3
/* 804BD200  7C 9E 23 78 */	mr r30, r4
/* 804BD204  7C BF 2B 78 */	mr r31, r5
/* 804BD208  4B F1 C4 39 */	bl get_player_actor_withoutCheck
/* 804BD20C  28 03 00 00 */	cmplwi r3, 0
/* 804BD210  41 82 00 34 */	beq lbl_804BD244
/* 804BD214  80 83 00 28 */	lwz r4, 0x28(r3)
/* 804BD218  38 A1 00 08 */	addi r5, r1, 8
/* 804BD21C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804BD220  90 81 00 08 */	stw r4, 8(r1)
/* 804BD224  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BD228  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804BD22C  3C 7E 00 01 */	addis r3, r30, 1
/* 804BD230  7C 64 1B 78 */	mr r4, r3
/* 804BD234  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BD238  38 84 25 54 */	addi r4, r4, 0x2554
/* 804BD23C  38 63 21 50 */	addi r3, r3, 0x2150
/* 804BD240  4B FF EC D9 */	bl m_GetCItTable_TreeTblChk
lbl_804BD244:
/* 804BD244  7F A3 EB 78 */	mr r3, r29
/* 804BD248  7F C4 F3 78 */	mr r4, r30
/* 804BD24C  7F E5 FB 78 */	mr r5, r31
/* 804BD250  4B FF FC 81 */	bl bg_item_common_chg_draw_tbl_perfect
/* 804BD254  39 61 00 30 */	addi r11, r1, 0x30
/* 804BD258  4B BD DC C9 */	bl func_8009AF20
/* 804BD25C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BD260  7C 08 03 A6 */	mtlr r0
/* 804BD264  38 21 00 30 */	addi r1, r1, 0x30
/* 804BD268  4E 80 00 20 */	blr 

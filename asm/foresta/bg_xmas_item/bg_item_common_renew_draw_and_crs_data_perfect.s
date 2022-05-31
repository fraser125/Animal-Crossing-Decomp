lbl_804CC0F8:
/* 804CC0F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CC0FC  7C 08 02 A6 */	mflr r0
/* 804CC100  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CC104  39 61 00 30 */	addi r11, r1, 0x30
/* 804CC108  4B BC ED CD */	bl func_8009AED4
/* 804CC10C  7C 7D 1B 78 */	mr r29, r3
/* 804CC110  7C 9E 23 78 */	mr r30, r4
/* 804CC114  7C BF 2B 78 */	mr r31, r5
/* 804CC118  4B F0 D5 29 */	bl get_player_actor_withoutCheck
/* 804CC11C  28 03 00 00 */	cmplwi r3, 0
/* 804CC120  41 82 00 34 */	beq lbl_804CC154
/* 804CC124  80 83 00 28 */	lwz r4, 0x28(r3)
/* 804CC128  38 A1 00 08 */	addi r5, r1, 8
/* 804CC12C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804CC130  90 81 00 08 */	stw r4, 8(r1)
/* 804CC134  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CC138  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804CC13C  3C 7E 00 01 */	addis r3, r30, 1
/* 804CC140  7C 64 1B 78 */	mr r4, r3
/* 804CC144  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CC148  38 84 25 54 */	addi r4, r4, 0x2554
/* 804CC14C  38 63 21 50 */	addi r3, r3, 0x2150
/* 804CC150  4B FF EC D9 */	bl m_GetCItTable_TreeTblChk
lbl_804CC154:
/* 804CC154  7F A3 EB 78 */	mr r3, r29
/* 804CC158  7F C4 F3 78 */	mr r4, r30
/* 804CC15C  7F E5 FB 78 */	mr r5, r31
/* 804CC160  4B FF FC 81 */	bl bg_item_common_chg_draw_tbl_perfect
/* 804CC164  39 61 00 30 */	addi r11, r1, 0x30
/* 804CC168  4B BC ED B9 */	bl func_8009AF20
/* 804CC16C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CC170  7C 08 03 A6 */	mtlr r0
/* 804CC174  38 21 00 30 */	addi r1, r1, 0x30
/* 804CC178  4E 80 00 20 */	blr 

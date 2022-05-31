lbl_8056BDFC:
/* 8056BDFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056BE00  7C 08 02 A6 */	mflr r0
/* 8056BE04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056BE08  39 61 00 20 */	addi r11, r1, 0x20
/* 8056BE0C  4B B2 F0 C9 */	bl func_8009AED4
/* 8056BE10  7C 7D 1B 78 */	mr r29, r3
/* 8056BE14  7C 9E 23 78 */	mr r30, r4
/* 8056BE18  4B FF F7 0D */	bl aPOL2_decide_next_move_act
/* 8056BE1C  7C 60 1B 78 */	mr r0, r3
/* 8056BE20  7F A3 EB 78 */	mr r3, r29
/* 8056BE24  7C 1F 03 78 */	mr r31, r0
/* 8056BE28  7F C4 F3 78 */	mr r4, r30
/* 8056BE2C  4B FF FB 89 */	bl aPOL2_message_ctrl
/* 8056BE30  80 1D 09 94 */	lwz r0, 0x994(r29)
/* 8056BE34  7C 1F 00 00 */	cmpw r31, r0
/* 8056BE38  41 82 00 14 */	beq lbl_8056BE4C
/* 8056BE3C  7F A3 EB 78 */	mr r3, r29
/* 8056BE40  7F E4 FB 78 */	mr r4, r31
/* 8056BE44  48 00 02 BD */	bl aPOL2_setupAction
/* 8056BE48  48 00 00 10 */	b lbl_8056BE58
lbl_8056BE4C:
/* 8056BE4C  7F A3 EB 78 */	mr r3, r29
/* 8056BE50  7F C4 F3 78 */	mr r4, r30
/* 8056BE54  4B FF F8 5D */	bl aPOL2_search_player2
lbl_8056BE58:
/* 8056BE58  39 61 00 20 */	addi r11, r1, 0x20
/* 8056BE5C  4B B2 F0 C5 */	bl func_8009AF20
/* 8056BE60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056BE64  7C 08 03 A6 */	mtlr r0
/* 8056BE68  38 21 00 20 */	addi r1, r1, 0x20
/* 8056BE6C  4E 80 00 20 */	blr 

lbl_8056BCA0:
/* 8056BCA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056BCA4  7C 08 02 A6 */	mflr r0
/* 8056BCA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056BCAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8056BCB0  4B B2 F2 25 */	bl func_8009AED4
/* 8056BCB4  7C 7D 1B 78 */	mr r29, r3
/* 8056BCB8  7C 9E 23 78 */	mr r30, r4
/* 8056BCBC  4B FF F8 69 */	bl aPOL2_decide_next_move_act
/* 8056BCC0  7C 60 1B 78 */	mr r0, r3
/* 8056BCC4  7F A3 EB 78 */	mr r3, r29
/* 8056BCC8  7C 1F 03 78 */	mr r31, r0
/* 8056BCCC  7F C4 F3 78 */	mr r4, r30
/* 8056BCD0  4B FF FC E5 */	bl aPOL2_message_ctrl
/* 8056BCD4  80 1D 09 94 */	lwz r0, 0x994(r29)
/* 8056BCD8  7C 1F 00 00 */	cmpw r31, r0
/* 8056BCDC  41 82 00 14 */	beq lbl_8056BCF0
/* 8056BCE0  7F A3 EB 78 */	mr r3, r29
/* 8056BCE4  7F E4 FB 78 */	mr r4, r31
/* 8056BCE8  48 00 04 19 */	bl aPOL2_setupAction
/* 8056BCEC  48 00 00 10 */	b lbl_8056BCFC
lbl_8056BCF0:
/* 8056BCF0  7F A3 EB 78 */	mr r3, r29
/* 8056BCF4  7F C4 F3 78 */	mr r4, r30
/* 8056BCF8  4B FF F9 39 */	bl aPOL2_search_player
lbl_8056BCFC:
/* 8056BCFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8056BD00  4B B2 F2 21 */	bl func_8009AF20
/* 8056BD04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056BD08  7C 08 03 A6 */	mtlr r0
/* 8056BD0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056BD10  4E 80 00 20 */	blr 

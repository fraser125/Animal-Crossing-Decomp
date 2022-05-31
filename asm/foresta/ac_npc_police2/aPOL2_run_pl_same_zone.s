lbl_8056BD88:
/* 8056BD88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056BD8C  7C 08 02 A6 */	mflr r0
/* 8056BD90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056BD94  39 61 00 20 */	addi r11, r1, 0x20
/* 8056BD98  4B B2 F1 3D */	bl func_8009AED4
/* 8056BD9C  7C 7D 1B 78 */	mr r29, r3
/* 8056BDA0  7C 9E 23 78 */	mr r30, r4
/* 8056BDA4  4B FF F7 81 */	bl aPOL2_decide_next_move_act
/* 8056BDA8  7C 60 1B 78 */	mr r0, r3
/* 8056BDAC  7F A3 EB 78 */	mr r3, r29
/* 8056BDB0  7C 1F 03 78 */	mr r31, r0
/* 8056BDB4  7F C4 F3 78 */	mr r4, r30
/* 8056BDB8  4B FF FB FD */	bl aPOL2_message_ctrl
/* 8056BDBC  80 1D 09 94 */	lwz r0, 0x994(r29)
/* 8056BDC0  7C 1F 00 00 */	cmpw r31, r0
/* 8056BDC4  41 82 00 14 */	beq lbl_8056BDD8
/* 8056BDC8  7F A3 EB 78 */	mr r3, r29
/* 8056BDCC  7F E4 FB 78 */	mr r4, r31
/* 8056BDD0  48 00 03 31 */	bl aPOL2_setupAction
/* 8056BDD4  48 00 00 10 */	b lbl_8056BDE4
lbl_8056BDD8:
/* 8056BDD8  7F A3 EB 78 */	mr r3, r29
/* 8056BDDC  7F C4 F3 78 */	mr r4, r30
/* 8056BDE0  4B FF F8 51 */	bl aPOL2_search_player
lbl_8056BDE4:
/* 8056BDE4  39 61 00 20 */	addi r11, r1, 0x20
/* 8056BDE8  4B B2 F1 39 */	bl func_8009AF20
/* 8056BDEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056BDF0  7C 08 03 A6 */	mtlr r0
/* 8056BDF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8056BDF8  4E 80 00 20 */	blr 

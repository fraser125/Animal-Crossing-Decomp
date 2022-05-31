lbl_8056BD14:
/* 8056BD14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056BD18  7C 08 02 A6 */	mflr r0
/* 8056BD1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056BD20  39 61 00 20 */	addi r11, r1, 0x20
/* 8056BD24  4B B2 F1 B1 */	bl func_8009AED4
/* 8056BD28  7C 7D 1B 78 */	mr r29, r3
/* 8056BD2C  7C 9E 23 78 */	mr r30, r4
/* 8056BD30  4B FF F7 F5 */	bl aPOL2_decide_next_move_act
/* 8056BD34  7C 60 1B 78 */	mr r0, r3
/* 8056BD38  7F A3 EB 78 */	mr r3, r29
/* 8056BD3C  7C 1F 03 78 */	mr r31, r0
/* 8056BD40  7F C4 F3 78 */	mr r4, r30
/* 8056BD44  4B FF FC 71 */	bl aPOL2_message_ctrl
/* 8056BD48  80 1D 09 94 */	lwz r0, 0x994(r29)
/* 8056BD4C  7C 1F 00 00 */	cmpw r31, r0
/* 8056BD50  41 82 00 14 */	beq lbl_8056BD64
/* 8056BD54  7F A3 EB 78 */	mr r3, r29
/* 8056BD58  7F E4 FB 78 */	mr r4, r31
/* 8056BD5C  48 00 03 A5 */	bl aPOL2_setupAction
/* 8056BD60  48 00 00 10 */	b lbl_8056BD70
lbl_8056BD64:
/* 8056BD64  7F A3 EB 78 */	mr r3, r29
/* 8056BD68  7F C4 F3 78 */	mr r4, r30
/* 8056BD6C  4B FF F9 45 */	bl aPOL2_search_player2
lbl_8056BD70:
/* 8056BD70  39 61 00 20 */	addi r11, r1, 0x20
/* 8056BD74  4B B2 F1 AD */	bl func_8009AF20
/* 8056BD78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056BD7C  7C 08 03 A6 */	mtlr r0
/* 8056BD80  38 21 00 20 */	addi r1, r1, 0x20
/* 8056BD84  4E 80 00 20 */	blr 

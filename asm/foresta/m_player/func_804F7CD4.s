lbl_804F7CD4:
/* 804F7CD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F7CD8  7C 08 02 A6 */	mflr r0
/* 804F7CDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F7CE0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F7CE4  4B BA 31 F1 */	bl func_8009AED4
/* 804F7CE8  7C 9E 23 78 */	mr r30, r4
/* 804F7CEC  7C 7D 1B 78 */	mr r29, r3
/* 804F7CF0  7C BF 2B 78 */	mr r31, r5
/* 804F7CF4  38 80 00 3B */	li r4, 0x3b
/* 804F7CF8  4B FE 27 61 */	bl Player_actor_check_request_main_able
/* 804F7CFC  2C 03 00 00 */	cmpwi r3, 0
/* 804F7D00  41 82 00 3C */	beq lbl_804F7D3C
/* 804F7D04  7F A3 EB 78 */	mr r3, r29
/* 804F7D08  4B EE 19 39 */	bl get_player_actor_withoutCheck
/* 804F7D0C  80 DE 00 00 */	lwz r6, 0(r30)
/* 804F7D10  7F E5 FB 78 */	mr r5, r31
/* 804F7D14  80 1E 00 04 */	lwz r0, 4(r30)
/* 804F7D18  38 80 00 3B */	li r4, 0x3b
/* 804F7D1C  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 804F7D20  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 804F7D24  80 1E 00 08 */	lwz r0, 8(r30)
/* 804F7D28  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804F7D2C  7F A3 EB 78 */	mr r3, r29
/* 804F7D30  4B FD D2 E5 */	bl Player_actor_request_main_index
/* 804F7D34  38 60 00 01 */	li r3, 1
/* 804F7D38  48 00 00 08 */	b lbl_804F7D40
lbl_804F7D3C:
/* 804F7D3C  38 60 00 00 */	li r3, 0
lbl_804F7D40:
/* 804F7D40  39 61 00 20 */	addi r11, r1, 0x20
/* 804F7D44  4B BA 31 DD */	bl func_8009AF20
/* 804F7D48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F7D4C  7C 08 03 A6 */	mtlr r0
/* 804F7D50  38 21 00 20 */	addi r1, r1, 0x20
/* 804F7D54  4E 80 00 20 */	blr 

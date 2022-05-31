lbl_80507F9C:
/* 80507F9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80507FA0  7C 08 02 A6 */	mflr r0
/* 80507FA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80507FA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80507FAC  4B B9 2F 25 */	bl func_8009AED0
/* 80507FB0  7C DF 33 78 */	mr r31, r6
/* 80507FB4  7C 9D 23 78 */	mr r29, r4
/* 80507FB8  7C BE 2B 78 */	mr r30, r5
/* 80507FBC  7C 7C 1B 78 */	mr r28, r3
/* 80507FC0  7F E5 FB 78 */	mr r5, r31
/* 80507FC4  38 80 00 75 */	li r4, 0x75
/* 80507FC8  4B FD 24 91 */	bl Player_actor_check_request_main_able
/* 80507FCC  2C 03 00 00 */	cmpwi r3, 0
/* 80507FD0  41 82 00 40 */	beq lbl_80508010
/* 80507FD4  7F 83 E3 78 */	mr r3, r28
/* 80507FD8  4B ED 16 69 */	bl get_player_actor_withoutCheck
/* 80507FDC  80 DD 00 00 */	lwz r6, 0(r29)
/* 80507FE0  7F E5 FB 78 */	mr r5, r31
/* 80507FE4  80 1D 00 04 */	lwz r0, 4(r29)
/* 80507FE8  38 80 00 75 */	li r4, 0x75
/* 80507FEC  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 80507FF0  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 80507FF4  80 1D 00 08 */	lwz r0, 8(r29)
/* 80507FF8  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 80507FFC  B3 C3 0D 6C */	sth r30, 0xd6c(r3)
/* 80508000  7F 83 E3 78 */	mr r3, r28
/* 80508004  4B FC D0 11 */	bl Player_actor_request_main_index
/* 80508008  38 60 00 01 */	li r3, 1
/* 8050800C  48 00 00 08 */	b lbl_80508014
lbl_80508010:
/* 80508010  38 60 00 00 */	li r3, 0
lbl_80508014:
/* 80508014  39 61 00 20 */	addi r11, r1, 0x20
/* 80508018  4B B9 2F 05 */	bl func_8009AF1C
/* 8050801C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80508020  7C 08 03 A6 */	mtlr r0
/* 80508024  38 21 00 20 */	addi r1, r1, 0x20
/* 80508028  4E 80 00 20 */	blr 

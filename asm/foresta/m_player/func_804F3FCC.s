lbl_804F3FCC:
/* 804F3FCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F3FD0  7C 08 02 A6 */	mflr r0
/* 804F3FD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F3FD8  39 61 00 20 */	addi r11, r1, 0x20
/* 804F3FDC  4B BA 6E F9 */	bl func_8009AED4
/* 804F3FE0  7C 9E 23 78 */	mr r30, r4
/* 804F3FE4  7C 7D 1B 78 */	mr r29, r3
/* 804F3FE8  7C BF 2B 78 */	mr r31, r5
/* 804F3FEC  38 80 00 2F */	li r4, 0x2f
/* 804F3FF0  4B FE 64 69 */	bl Player_actor_check_request_main_able
/* 804F3FF4  2C 03 00 00 */	cmpwi r3, 0
/* 804F3FF8  41 82 00 28 */	beq lbl_804F4020
/* 804F3FFC  7F A3 EB 78 */	mr r3, r29
/* 804F4000  4B EE 56 41 */	bl get_player_actor_withoutCheck
/* 804F4004  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 804F4008  7F A3 EB 78 */	mr r3, r29
/* 804F400C  7F E5 FB 78 */	mr r5, r31
/* 804F4010  38 80 00 2F */	li r4, 0x2f
/* 804F4014  4B FE 10 01 */	bl Player_actor_request_main_index
/* 804F4018  38 60 00 01 */	li r3, 1
/* 804F401C  48 00 00 08 */	b lbl_804F4024
lbl_804F4020:
/* 804F4020  38 60 00 00 */	li r3, 0
lbl_804F4024:
/* 804F4024  39 61 00 20 */	addi r11, r1, 0x20
/* 804F4028  4B BA 6E F9 */	bl func_8009AF20
/* 804F402C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F4030  7C 08 03 A6 */	mtlr r0
/* 804F4034  38 21 00 20 */	addi r1, r1, 0x20
/* 804F4038  4E 80 00 20 */	blr 

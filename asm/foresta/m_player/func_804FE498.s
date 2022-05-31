lbl_804FE498:
/* 804FE498  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FE49C  7C 08 02 A6 */	mflr r0
/* 804FE4A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FE4A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FE4A8  4B B9 CA 2D */	bl func_8009AED4
/* 804FE4AC  7C 9E 23 78 */	mr r30, r4
/* 804FE4B0  7C 7D 1B 78 */	mr r29, r3
/* 804FE4B4  7C BF 2B 78 */	mr r31, r5
/* 804FE4B8  38 80 00 50 */	li r4, 0x50
/* 804FE4BC  4B FD BF 9D */	bl Player_actor_check_request_main_able
/* 804FE4C0  2C 03 00 00 */	cmpwi r3, 0
/* 804FE4C4  41 82 00 28 */	beq lbl_804FE4EC
/* 804FE4C8  7F A3 EB 78 */	mr r3, r29
/* 804FE4CC  4B ED B1 75 */	bl get_player_actor_withoutCheck
/* 804FE4D0  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 804FE4D4  7F A3 EB 78 */	mr r3, r29
/* 804FE4D8  7F E5 FB 78 */	mr r5, r31
/* 804FE4DC  38 80 00 50 */	li r4, 0x50
/* 804FE4E0  4B FD 6B 35 */	bl Player_actor_request_main_index
/* 804FE4E4  38 60 00 01 */	li r3, 1
/* 804FE4E8  48 00 00 08 */	b lbl_804FE4F0
lbl_804FE4EC:
/* 804FE4EC  38 60 00 00 */	li r3, 0
lbl_804FE4F0:
/* 804FE4F0  39 61 00 20 */	addi r11, r1, 0x20
/* 804FE4F4  4B B9 CA 2D */	bl func_8009AF20
/* 804FE4F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FE4FC  7C 08 03 A6 */	mtlr r0
/* 804FE500  38 21 00 20 */	addi r1, r1, 0x20
/* 804FE504  4E 80 00 20 */	blr 

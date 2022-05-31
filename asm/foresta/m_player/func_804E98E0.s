lbl_804E98E0:
/* 804E98E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E98E4  7C 08 02 A6 */	mflr r0
/* 804E98E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E98EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E98F0  4B BB 15 E1 */	bl func_8009AED0
/* 804E98F4  7C DF 33 78 */	mr r31, r6
/* 804E98F8  7C 9D 23 78 */	mr r29, r4
/* 804E98FC  7C BE 2B 78 */	mr r30, r5
/* 804E9900  7C 7C 1B 78 */	mr r28, r3
/* 804E9904  7F E5 FB 78 */	mr r5, r31
/* 804E9908  38 80 00 11 */	li r4, 0x11
/* 804E990C  4B FF 0B 4D */	bl Player_actor_check_request_main_able
/* 804E9910  2C 03 00 00 */	cmpwi r3, 0
/* 804E9914  41 82 00 2C */	beq lbl_804E9940
/* 804E9918  7F 83 E3 78 */	mr r3, r28
/* 804E991C  4B EE FD 25 */	bl get_player_actor_withoutCheck
/* 804E9920  93 A3 0D 60 */	stw r29, 0xd60(r3)
/* 804E9924  7F E5 FB 78 */	mr r5, r31
/* 804E9928  38 80 00 11 */	li r4, 0x11
/* 804E992C  93 C3 0D 64 */	stw r30, 0xd64(r3)
/* 804E9930  7F 83 E3 78 */	mr r3, r28
/* 804E9934  4B FE B6 E1 */	bl Player_actor_request_main_index
/* 804E9938  38 60 00 01 */	li r3, 1
/* 804E993C  48 00 00 08 */	b lbl_804E9944
lbl_804E9940:
/* 804E9940  38 60 00 00 */	li r3, 0
lbl_804E9944:
/* 804E9944  39 61 00 20 */	addi r11, r1, 0x20
/* 804E9948  4B BB 15 D5 */	bl func_8009AF1C
/* 804E994C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E9950  7C 08 03 A6 */	mtlr r0
/* 804E9954  38 21 00 20 */	addi r1, r1, 0x20
/* 804E9958  4E 80 00 20 */	blr 

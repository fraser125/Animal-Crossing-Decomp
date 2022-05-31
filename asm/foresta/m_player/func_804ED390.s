lbl_804ED390:
/* 804ED390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804ED394  7C 08 02 A6 */	mflr r0
/* 804ED398  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ED39C  39 61 00 20 */	addi r11, r1, 0x20
/* 804ED3A0  4B BA DB 29 */	bl func_8009AEC8
/* 804ED3A4  7C 7A 1B 78 */	mr r26, r3
/* 804ED3A8  7C 9B 23 78 */	mr r27, r4
/* 804ED3AC  7C BC 2B 78 */	mr r28, r5
/* 804ED3B0  7C DD 33 78 */	mr r29, r6
/* 804ED3B4  7C FE 3B 78 */	mr r30, r7
/* 804ED3B8  7D 1F 43 78 */	mr r31, r8
/* 804ED3BC  38 60 00 1E */	li r3, 0x1e
/* 804ED3C0  4B FE D0 19 */	bl Player_actor_check_able_request_main_index_for_reset
/* 804ED3C4  2C 03 00 00 */	cmpwi r3, 0
/* 804ED3C8  40 82 00 60 */	bne lbl_804ED428
/* 804ED3CC  7F 43 D3 78 */	mr r3, r26
/* 804ED3D0  4B EE C2 71 */	bl get_player_actor_withoutCheck
/* 804ED3D4  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 804ED3D8  38 80 00 1E */	li r4, 0x1e
/* 804ED3DC  38 A0 00 08 */	li r5, 8
/* 804ED3E0  B3 63 0D 64 */	sth r27, 0xd64(r3)
/* 804ED3E4  80 DC 00 00 */	lwz r6, 0(r28)
/* 804ED3E8  80 1C 00 04 */	lwz r0, 4(r28)
/* 804ED3EC  90 C3 0D 68 */	stw r6, 0xd68(r3)
/* 804ED3F0  90 03 0D 6C */	stw r0, 0xd6c(r3)
/* 804ED3F4  80 1C 00 08 */	lwz r0, 8(r28)
/* 804ED3F8  90 03 0D 70 */	stw r0, 0xd70(r3)
/* 804ED3FC  80 DD 00 00 */	lwz r6, 0(r29)
/* 804ED400  80 1D 00 04 */	lwz r0, 4(r29)
/* 804ED404  90 C3 0D 74 */	stw r6, 0xd74(r3)
/* 804ED408  90 03 0D 78 */	stw r0, 0xd78(r3)
/* 804ED40C  80 1D 00 08 */	lwz r0, 8(r29)
/* 804ED410  90 03 0D 7C */	stw r0, 0xd7c(r3)
/* 804ED414  93 E3 0D 80 */	stw r31, 0xd80(r3)
/* 804ED418  7F 43 D3 78 */	mr r3, r26
/* 804ED41C  4B FE 7B F9 */	bl Player_actor_request_main_index
/* 804ED420  38 60 00 01 */	li r3, 1
/* 804ED424  48 00 00 08 */	b lbl_804ED42C
lbl_804ED428:
/* 804ED428  38 60 00 00 */	li r3, 0
lbl_804ED42C:
/* 804ED42C  39 61 00 20 */	addi r11, r1, 0x20
/* 804ED430  4B BA DA E5 */	bl func_8009AF14
/* 804ED434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804ED438  7C 08 03 A6 */	mtlr r0
/* 804ED43C  38 21 00 20 */	addi r1, r1, 0x20
/* 804ED440  4E 80 00 20 */	blr 

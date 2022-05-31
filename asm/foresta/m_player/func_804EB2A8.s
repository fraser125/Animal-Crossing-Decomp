lbl_804EB2A8:
/* 804EB2A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EB2AC  7C 08 02 A6 */	mflr r0
/* 804EB2B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EB2B4  39 61 00 20 */	addi r11, r1, 0x20
/* 804EB2B8  4B BA FC 15 */	bl func_8009AECC
/* 804EB2BC  7C 7B 1B 78 */	mr r27, r3
/* 804EB2C0  7C 9C 23 78 */	mr r28, r4
/* 804EB2C4  7C BD 2B 78 */	mr r29, r5
/* 804EB2C8  7C DE 33 78 */	mr r30, r6
/* 804EB2CC  7C FF 3B 78 */	mr r31, r7
/* 804EB2D0  4B EE E3 A1 */	bl mPlib_get_player_actor_main_index
/* 804EB2D4  2C 03 00 13 */	cmpwi r3, 0x13
/* 804EB2D8  40 82 00 5C */	bne lbl_804EB334
/* 804EB2DC  7F 63 DB 78 */	mr r3, r27
/* 804EB2E0  7F E5 FB 78 */	mr r5, r31
/* 804EB2E4  38 80 00 17 */	li r4, 0x17
/* 804EB2E8  4B FE F1 71 */	bl Player_actor_check_request_main_able
/* 804EB2EC  2C 03 00 00 */	cmpwi r3, 0
/* 804EB2F0  41 82 00 44 */	beq lbl_804EB334
/* 804EB2F4  7F 63 DB 78 */	mr r3, r27
/* 804EB2F8  4B EE E3 49 */	bl get_player_actor_withoutCheck
/* 804EB2FC  B3 83 0D 60 */	sth r28, 0xd60(r3)
/* 804EB300  7F E5 FB 78 */	mr r5, r31
/* 804EB304  38 80 00 17 */	li r4, 0x17
/* 804EB308  80 DD 00 00 */	lwz r6, 0(r29)
/* 804EB30C  80 1D 00 04 */	lwz r0, 4(r29)
/* 804EB310  90 C3 0D 64 */	stw r6, 0xd64(r3)
/* 804EB314  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804EB318  80 1D 00 08 */	lwz r0, 8(r29)
/* 804EB31C  90 03 0D 6C */	stw r0, 0xd6c(r3)
/* 804EB320  93 C3 0D 70 */	stw r30, 0xd70(r3)
/* 804EB324  7F 63 DB 78 */	mr r3, r27
/* 804EB328  4B FE 9C ED */	bl Player_actor_request_main_index
/* 804EB32C  38 60 00 01 */	li r3, 1
/* 804EB330  48 00 00 08 */	b lbl_804EB338
lbl_804EB334:
/* 804EB334  38 60 00 00 */	li r3, 0
lbl_804EB338:
/* 804EB338  39 61 00 20 */	addi r11, r1, 0x20
/* 804EB33C  4B BA FB DD */	bl func_8009AF18
/* 804EB340  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EB344  7C 08 03 A6 */	mtlr r0
/* 804EB348  38 21 00 20 */	addi r1, r1, 0x20
/* 804EB34C  4E 80 00 20 */	blr 

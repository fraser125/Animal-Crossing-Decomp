lbl_804F848C:
/* 804F848C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F8490  7C 08 02 A6 */	mflr r0
/* 804F8494  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F8498  39 61 00 20 */	addi r11, r1, 0x20
/* 804F849C  4B BA 2A 31 */	bl func_8009AECC
/* 804F84A0  7C FF 3B 78 */	mr r31, r7
/* 804F84A4  7C 9C 23 78 */	mr r28, r4
/* 804F84A8  7C BD 2B 78 */	mr r29, r5
/* 804F84AC  7C 7B 1B 78 */	mr r27, r3
/* 804F84B0  7C DE 33 78 */	mr r30, r6
/* 804F84B4  7F E5 FB 78 */	mr r5, r31
/* 804F84B8  38 80 00 3C */	li r4, 0x3c
/* 804F84BC  4B FE 1F 9D */	bl Player_actor_check_request_main_able
/* 804F84C0  2C 03 00 00 */	cmpwi r3, 0
/* 804F84C4  41 82 00 44 */	beq lbl_804F8508
/* 804F84C8  7F 63 DB 78 */	mr r3, r27
/* 804F84CC  4B EE 11 75 */	bl get_player_actor_withoutCheck
/* 804F84D0  80 DC 00 00 */	lwz r6, 0(r28)
/* 804F84D4  7F E5 FB 78 */	mr r5, r31
/* 804F84D8  80 1C 00 04 */	lwz r0, 4(r28)
/* 804F84DC  38 80 00 3C */	li r4, 0x3c
/* 804F84E0  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 804F84E4  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 804F84E8  80 1C 00 08 */	lwz r0, 8(r28)
/* 804F84EC  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804F84F0  B3 A3 0D 6C */	sth r29, 0xd6c(r3)
/* 804F84F4  93 C3 0D 70 */	stw r30, 0xd70(r3)
/* 804F84F8  7F 63 DB 78 */	mr r3, r27
/* 804F84FC  4B FD CB 19 */	bl Player_actor_request_main_index
/* 804F8500  38 60 00 01 */	li r3, 1
/* 804F8504  48 00 00 08 */	b lbl_804F850C
lbl_804F8508:
/* 804F8508  38 60 00 00 */	li r3, 0
lbl_804F850C:
/* 804F850C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F8510  4B BA 2A 09 */	bl func_8009AF18
/* 804F8514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F8518  7C 08 03 A6 */	mtlr r0
/* 804F851C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F8520  4E 80 00 20 */	blr 

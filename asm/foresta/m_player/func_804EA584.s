lbl_804EA584:
/* 804EA584  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EA588  7C 08 02 A6 */	mflr r0
/* 804EA58C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EA590  39 61 00 20 */	addi r11, r1, 0x20
/* 804EA594  4B BB 09 39 */	bl func_8009AECC
/* 804EA598  7C 7B 1B 78 */	mr r27, r3
/* 804EA59C  7C 9C 23 78 */	mr r28, r4
/* 804EA5A0  7C BD 2B 78 */	mr r29, r5
/* 804EA5A4  7C DE 33 78 */	mr r30, r6
/* 804EA5A8  7C FF 3B 78 */	mr r31, r7
/* 804EA5AC  4B EE F0 C5 */	bl mPlib_get_player_actor_main_index
/* 804EA5B0  2C 03 00 13 */	cmpwi r3, 0x13
/* 804EA5B4  40 82 00 5C */	bne lbl_804EA610
/* 804EA5B8  7F 63 DB 78 */	mr r3, r27
/* 804EA5BC  7F E5 FB 78 */	mr r5, r31
/* 804EA5C0  38 80 00 14 */	li r4, 0x14
/* 804EA5C4  4B FE FE 95 */	bl Player_actor_check_request_main_able
/* 804EA5C8  2C 03 00 00 */	cmpwi r3, 0
/* 804EA5CC  41 82 00 44 */	beq lbl_804EA610
/* 804EA5D0  7F 63 DB 78 */	mr r3, r27
/* 804EA5D4  4B EE F0 6D */	bl get_player_actor_withoutCheck
/* 804EA5D8  93 83 0D 60 */	stw r28, 0xd60(r3)
/* 804EA5DC  7F E5 FB 78 */	mr r5, r31
/* 804EA5E0  38 80 00 14 */	li r4, 0x14
/* 804EA5E4  B3 A3 0D 64 */	sth r29, 0xd64(r3)
/* 804EA5E8  80 DE 00 00 */	lwz r6, 0(r30)
/* 804EA5EC  80 1E 00 04 */	lwz r0, 4(r30)
/* 804EA5F0  90 C3 0D 68 */	stw r6, 0xd68(r3)
/* 804EA5F4  90 03 0D 6C */	stw r0, 0xd6c(r3)
/* 804EA5F8  80 1E 00 08 */	lwz r0, 8(r30)
/* 804EA5FC  90 03 0D 70 */	stw r0, 0xd70(r3)
/* 804EA600  7F 63 DB 78 */	mr r3, r27
/* 804EA604  4B FE AA 11 */	bl Player_actor_request_main_index
/* 804EA608  38 60 00 01 */	li r3, 1
/* 804EA60C  48 00 00 08 */	b lbl_804EA614
lbl_804EA610:
/* 804EA610  38 60 00 00 */	li r3, 0
lbl_804EA614:
/* 804EA614  39 61 00 20 */	addi r11, r1, 0x20
/* 804EA618  4B BB 09 01 */	bl func_8009AF18
/* 804EA61C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EA620  7C 08 03 A6 */	mtlr r0
/* 804EA624  38 21 00 20 */	addi r1, r1, 0x20
/* 804EA628  4E 80 00 20 */	blr 

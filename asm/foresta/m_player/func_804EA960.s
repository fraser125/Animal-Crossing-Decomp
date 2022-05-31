lbl_804EA960:
/* 804EA960  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804EA964  7C 08 02 A6 */	mflr r0
/* 804EA968  90 01 00 34 */	stw r0, 0x34(r1)
/* 804EA96C  39 61 00 30 */	addi r11, r1, 0x30
/* 804EA970  4B BB 05 55 */	bl func_8009AEC4
/* 804EA974  7C 79 1B 78 */	mr r25, r3
/* 804EA978  7C 9A 23 78 */	mr r26, r4
/* 804EA97C  7C BB 2B 78 */	mr r27, r5
/* 804EA980  7C DC 33 78 */	mr r28, r6
/* 804EA984  7C FD 3B 78 */	mr r29, r7
/* 804EA988  7D 1E 43 78 */	mr r30, r8
/* 804EA98C  7D 3F 4B 78 */	mr r31, r9
/* 804EA990  4B EE EC E1 */	bl mPlib_get_player_actor_main_index
/* 804EA994  2C 03 00 13 */	cmpwi r3, 0x13
/* 804EA998  40 82 00 8C */	bne lbl_804EAA24
/* 804EA99C  7F 23 CB 78 */	mr r3, r25
/* 804EA9A0  7F E5 FB 78 */	mr r5, r31
/* 804EA9A4  38 80 00 15 */	li r4, 0x15
/* 804EA9A8  4B FE FA B1 */	bl Player_actor_check_request_main_able
/* 804EA9AC  2C 03 00 00 */	cmpwi r3, 0
/* 804EA9B0  41 82 00 74 */	beq lbl_804EAA24
/* 804EA9B4  7F 23 CB 78 */	mr r3, r25
/* 804EA9B8  4B EE EC 89 */	bl get_player_actor_withoutCheck
/* 804EA9BC  93 43 0D 60 */	stw r26, 0xd60(r3)
/* 804EA9C0  7F E5 FB 78 */	mr r5, r31
/* 804EA9C4  38 80 00 15 */	li r4, 0x15
/* 804EA9C8  B3 63 0D 64 */	sth r27, 0xd64(r3)
/* 804EA9CC  80 DC 00 00 */	lwz r6, 0(r28)
/* 804EA9D0  80 1C 00 04 */	lwz r0, 4(r28)
/* 804EA9D4  90 C3 0D 68 */	stw r6, 0xd68(r3)
/* 804EA9D8  90 03 0D 6C */	stw r0, 0xd6c(r3)
/* 804EA9DC  80 1C 00 08 */	lwz r0, 8(r28)
/* 804EA9E0  90 03 0D 70 */	stw r0, 0xd70(r3)
/* 804EA9E4  80 DD 00 00 */	lwz r6, 0(r29)
/* 804EA9E8  80 1D 00 04 */	lwz r0, 4(r29)
/* 804EA9EC  90 C3 0D 74 */	stw r6, 0xd74(r3)
/* 804EA9F0  90 03 0D 78 */	stw r0, 0xd78(r3)
/* 804EA9F4  80 1D 00 08 */	lwz r0, 8(r29)
/* 804EA9F8  90 03 0D 7C */	stw r0, 0xd7c(r3)
/* 804EA9FC  80 DE 00 00 */	lwz r6, 0(r30)
/* 804EAA00  80 1E 00 04 */	lwz r0, 4(r30)
/* 804EAA04  90 C3 0D 80 */	stw r6, 0xd80(r3)
/* 804EAA08  90 03 0D 84 */	stw r0, 0xd84(r3)
/* 804EAA0C  80 1E 00 08 */	lwz r0, 8(r30)
/* 804EAA10  90 03 0D 88 */	stw r0, 0xd88(r3)
/* 804EAA14  7F 23 CB 78 */	mr r3, r25
/* 804EAA18  4B FE A5 FD */	bl Player_actor_request_main_index
/* 804EAA1C  38 60 00 01 */	li r3, 1
/* 804EAA20  48 00 00 08 */	b lbl_804EAA28
lbl_804EAA24:
/* 804EAA24  38 60 00 00 */	li r3, 0
lbl_804EAA28:
/* 804EAA28  39 61 00 30 */	addi r11, r1, 0x30
/* 804EAA2C  4B BB 04 E5 */	bl func_8009AF10
/* 804EAA30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804EAA34  7C 08 03 A6 */	mtlr r0
/* 804EAA38  38 21 00 30 */	addi r1, r1, 0x30
/* 804EAA3C  4E 80 00 20 */	blr 

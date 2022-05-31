lbl_804F7290:
/* 804F7290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F7294  7C 08 02 A6 */	mflr r0
/* 804F7298  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F729C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F72A0  4B BA 3C 31 */	bl func_8009AED0
/* 804F72A4  7C DF 33 78 */	mr r31, r6
/* 804F72A8  7C 9D 23 78 */	mr r29, r4
/* 804F72AC  7C BE 2B 78 */	mr r30, r5
/* 804F72B0  7C 7C 1B 78 */	mr r28, r3
/* 804F72B4  7F E5 FB 78 */	mr r5, r31
/* 804F72B8  38 80 00 3A */	li r4, 0x3a
/* 804F72BC  4B FE 31 9D */	bl Player_actor_check_request_main_able
/* 804F72C0  2C 03 00 00 */	cmpwi r3, 0
/* 804F72C4  41 82 00 40 */	beq lbl_804F7304
/* 804F72C8  7F 83 E3 78 */	mr r3, r28
/* 804F72CC  4B EE 23 75 */	bl get_player_actor_withoutCheck
/* 804F72D0  80 DD 00 00 */	lwz r6, 0(r29)
/* 804F72D4  7F E5 FB 78 */	mr r5, r31
/* 804F72D8  80 1D 00 04 */	lwz r0, 4(r29)
/* 804F72DC  38 80 00 3A */	li r4, 0x3a
/* 804F72E0  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 804F72E4  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 804F72E8  80 1D 00 08 */	lwz r0, 8(r29)
/* 804F72EC  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804F72F0  B3 C3 0D 6C */	sth r30, 0xd6c(r3)
/* 804F72F4  7F 83 E3 78 */	mr r3, r28
/* 804F72F8  4B FD DD 1D */	bl Player_actor_request_main_index
/* 804F72FC  38 60 00 01 */	li r3, 1
/* 804F7300  48 00 00 08 */	b lbl_804F7308
lbl_804F7304:
/* 804F7304  38 60 00 00 */	li r3, 0
lbl_804F7308:
/* 804F7308  39 61 00 20 */	addi r11, r1, 0x20
/* 804F730C  4B BA 3C 11 */	bl func_8009AF1C
/* 804F7310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F7314  7C 08 03 A6 */	mtlr r0
/* 804F7318  38 21 00 20 */	addi r1, r1, 0x20
/* 804F731C  4E 80 00 20 */	blr 

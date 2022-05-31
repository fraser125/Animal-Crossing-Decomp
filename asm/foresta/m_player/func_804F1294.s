lbl_804F1294:
/* 804F1294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F1298  7C 08 02 A6 */	mflr r0
/* 804F129C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F12A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F12A4  4B BA 9C 29 */	bl func_8009AECC
/* 804F12A8  7C FF 3B 78 */	mr r31, r7
/* 804F12AC  7C 9C 23 78 */	mr r28, r4
/* 804F12B0  7C BD 2B 78 */	mr r29, r5
/* 804F12B4  7C 7B 1B 78 */	mr r27, r3
/* 804F12B8  7C DE 33 78 */	mr r30, r6
/* 804F12BC  7F E5 FB 78 */	mr r5, r31
/* 804F12C0  38 80 00 28 */	li r4, 0x28
/* 804F12C4  4B FE 91 95 */	bl Player_actor_check_request_main_able
/* 804F12C8  2C 03 00 00 */	cmpwi r3, 0
/* 804F12CC  41 82 00 44 */	beq lbl_804F1310
/* 804F12D0  7F 63 DB 78 */	mr r3, r27
/* 804F12D4  4B EE 83 6D */	bl get_player_actor_withoutCheck
/* 804F12D8  38 63 0D 60 */	addi r3, r3, 0xd60
/* 804F12DC  38 00 00 01 */	li r0, 1
/* 804F12E0  90 03 00 18 */	stw r0, 0x18(r3)
/* 804F12E4  7F 84 E3 78 */	mr r4, r28
/* 804F12E8  7F A5 EB 78 */	mr r5, r29
/* 804F12EC  7F C7 F3 78 */	mr r7, r30
/* 804F12F0  38 C0 00 00 */	li r6, 0
/* 804F12F4  4B FF F7 99 */	bl func_804F0A8C
/* 804F12F8  7F 63 DB 78 */	mr r3, r27
/* 804F12FC  7F E5 FB 78 */	mr r5, r31
/* 804F1300  38 80 00 28 */	li r4, 0x28
/* 804F1304  4B FE 3D 11 */	bl Player_actor_request_main_index
/* 804F1308  38 60 00 01 */	li r3, 1
/* 804F130C  48 00 00 08 */	b lbl_804F1314
lbl_804F1310:
/* 804F1310  38 60 00 00 */	li r3, 0
lbl_804F1314:
/* 804F1314  39 61 00 20 */	addi r11, r1, 0x20
/* 804F1318  4B BA 9C 01 */	bl func_8009AF18
/* 804F131C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F1320  7C 08 03 A6 */	mtlr r0
/* 804F1324  38 21 00 20 */	addi r1, r1, 0x20
/* 804F1328  4E 80 00 20 */	blr 

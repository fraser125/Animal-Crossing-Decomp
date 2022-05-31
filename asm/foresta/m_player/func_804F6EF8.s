lbl_804F6EF8:
/* 804F6EF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F6EFC  7C 08 02 A6 */	mflr r0
/* 804F6F00  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F6F04  39 61 00 20 */	addi r11, r1, 0x20
/* 804F6F08  4B BA 3F C5 */	bl func_8009AECC
/* 804F6F0C  7C DE 33 78 */	mr r30, r6
/* 804F6F10  7C 9C 23 78 */	mr r28, r4
/* 804F6F14  7C BD 2B 78 */	mr r29, r5
/* 804F6F18  7C 7B 1B 78 */	mr r27, r3
/* 804F6F1C  7F C5 F3 78 */	mr r5, r30
/* 804F6F20  38 80 00 39 */	li r4, 0x39
/* 804F6F24  4B FE 35 35 */	bl Player_actor_check_request_main_able
/* 804F6F28  2C 03 00 00 */	cmpwi r3, 0
/* 804F6F2C  41 82 00 30 */	beq lbl_804F6F5C
/* 804F6F30  7F 63 DB 78 */	mr r3, r27
/* 804F6F34  4B EE 27 0D */	bl get_player_actor_withoutCheck
/* 804F6F38  7C 7F 1B 78 */	mr r31, r3
/* 804F6F3C  7F 63 DB 78 */	mr r3, r27
/* 804F6F40  7F C5 F3 78 */	mr r5, r30
/* 804F6F44  38 80 00 39 */	li r4, 0x39
/* 804F6F48  4B FD E0 CD */	bl Player_actor_request_main_index
/* 804F6F4C  B3 9F 0D 60 */	sth r28, 0xd60(r31)
/* 804F6F50  38 60 00 01 */	li r3, 1
/* 804F6F54  93 BF 0D 64 */	stw r29, 0xd64(r31)
/* 804F6F58  48 00 00 08 */	b lbl_804F6F60
lbl_804F6F5C:
/* 804F6F5C  38 60 00 00 */	li r3, 0
lbl_804F6F60:
/* 804F6F60  39 61 00 20 */	addi r11, r1, 0x20
/* 804F6F64  4B BA 3F B5 */	bl func_8009AF18
/* 804F6F68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F6F6C  7C 08 03 A6 */	mtlr r0
/* 804F6F70  38 21 00 20 */	addi r1, r1, 0x20
/* 804F6F74  4E 80 00 20 */	blr 

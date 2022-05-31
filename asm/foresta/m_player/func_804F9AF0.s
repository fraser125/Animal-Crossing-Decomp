lbl_804F9AF0:
/* 804F9AF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F9AF4  7C 08 02 A6 */	mflr r0
/* 804F9AF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F9AFC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9B00  4B BA 13 CD */	bl func_8009AECC
/* 804F9B04  7C FF 3B 78 */	mr r31, r7
/* 804F9B08  7C 9C 23 78 */	mr r28, r4
/* 804F9B0C  7C BD 2B 78 */	mr r29, r5
/* 804F9B10  7C 7B 1B 78 */	mr r27, r3
/* 804F9B14  7C DE 33 78 */	mr r30, r6
/* 804F9B18  7F E5 FB 78 */	mr r5, r31
/* 804F9B1C  38 80 00 3F */	li r4, 0x3f
/* 804F9B20  4B FE 09 39 */	bl Player_actor_check_request_main_able
/* 804F9B24  2C 03 00 00 */	cmpwi r3, 0
/* 804F9B28  41 82 00 44 */	beq lbl_804F9B6C
/* 804F9B2C  7F 63 DB 78 */	mr r3, r27
/* 804F9B30  4B ED FB 11 */	bl get_player_actor_withoutCheck
/* 804F9B34  80 DC 00 00 */	lwz r6, 0(r28)
/* 804F9B38  7F E5 FB 78 */	mr r5, r31
/* 804F9B3C  80 1C 00 04 */	lwz r0, 4(r28)
/* 804F9B40  38 80 00 3F */	li r4, 0x3f
/* 804F9B44  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 804F9B48  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 804F9B4C  80 1C 00 08 */	lwz r0, 8(r28)
/* 804F9B50  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804F9B54  B3 A3 0D 6C */	sth r29, 0xd6c(r3)
/* 804F9B58  93 C3 0D 70 */	stw r30, 0xd70(r3)
/* 804F9B5C  7F 63 DB 78 */	mr r3, r27
/* 804F9B60  4B FD B4 B5 */	bl Player_actor_request_main_index
/* 804F9B64  38 60 00 01 */	li r3, 1
/* 804F9B68  48 00 00 08 */	b lbl_804F9B70
lbl_804F9B6C:
/* 804F9B6C  38 60 00 00 */	li r3, 0
lbl_804F9B70:
/* 804F9B70  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9B74  4B BA 13 A5 */	bl func_8009AF18
/* 804F9B78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F9B7C  7C 08 03 A6 */	mtlr r0
/* 804F9B80  38 21 00 20 */	addi r1, r1, 0x20
/* 804F9B84  4E 80 00 20 */	blr 

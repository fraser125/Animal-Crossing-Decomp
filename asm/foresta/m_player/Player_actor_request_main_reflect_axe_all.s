lbl_804F0AB4:
/* 804F0AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F0AB8  7C 08 02 A6 */	mflr r0
/* 804F0ABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F0AC0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F0AC4  4B BA A4 05 */	bl func_8009AEC8
/* 804F0AC8  7D 1F 43 78 */	mr r31, r8
/* 804F0ACC  7C 9B 23 78 */	mr r27, r4
/* 804F0AD0  7C BC 2B 78 */	mr r28, r5
/* 804F0AD4  7C 7A 1B 78 */	mr r26, r3
/* 804F0AD8  7C DD 33 78 */	mr r29, r6
/* 804F0ADC  7C FE 3B 78 */	mr r30, r7
/* 804F0AE0  7F E5 FB 78 */	mr r5, r31
/* 804F0AE4  38 80 00 27 */	li r4, 0x27
/* 804F0AE8  4B FE 99 71 */	bl Player_actor_check_request_main_able
/* 804F0AEC  2C 03 00 00 */	cmpwi r3, 0
/* 804F0AF0  41 82 00 3C */	beq lbl_804F0B2C
/* 804F0AF4  7F 43 D3 78 */	mr r3, r26
/* 804F0AF8  4B EE 8B 49 */	bl get_player_actor_withoutCheck
/* 804F0AFC  7F 64 DB 78 */	mr r4, r27
/* 804F0B00  7F 85 E3 78 */	mr r5, r28
/* 804F0B04  7F A6 EB 78 */	mr r6, r29
/* 804F0B08  7F C7 F3 78 */	mr r7, r30
/* 804F0B0C  38 63 0D 60 */	addi r3, r3, 0xd60
/* 804F0B10  4B FF FF 7D */	bl func_804F0A8C
/* 804F0B14  7F 43 D3 78 */	mr r3, r26
/* 804F0B18  7F E5 FB 78 */	mr r5, r31
/* 804F0B1C  38 80 00 27 */	li r4, 0x27
/* 804F0B20  4B FE 44 F5 */	bl Player_actor_request_main_index
/* 804F0B24  38 60 00 01 */	li r3, 1
/* 804F0B28  48 00 00 08 */	b lbl_804F0B30
lbl_804F0B2C:
/* 804F0B2C  38 60 00 00 */	li r3, 0
lbl_804F0B30:
/* 804F0B30  39 61 00 20 */	addi r11, r1, 0x20
/* 804F0B34  4B BA A3 E1 */	bl func_8009AF14
/* 804F0B38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F0B3C  7C 08 03 A6 */	mtlr r0
/* 804F0B40  38 21 00 20 */	addi r1, r1, 0x20
/* 804F0B44  4E 80 00 20 */	blr 

lbl_804E9EB8:
/* 804E9EB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E9EBC  7C 08 02 A6 */	mflr r0
/* 804E9EC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E9EC4  39 61 00 28 */	addi r11, r1, 0x28
/* 804E9EC8  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 804E9ECC  4B BB 0F F9 */	bl func_8009AEC4
/* 804E9ED0  FF E0 08 90 */	fmr f31, f1
/* 804E9ED4  7C 9A 23 78 */	mr r26, r4
/* 804E9ED8  7D 1E 43 78 */	mr r30, r8
/* 804E9EDC  7C BB 2B 78 */	mr r27, r5
/* 804E9EE0  7C 79 1B 78 */	mr r25, r3
/* 804E9EE4  7C DC 33 78 */	mr r28, r6
/* 804E9EE8  7C FD 3B 78 */	mr r29, r7
/* 804E9EEC  7F C5 F3 78 */	mr r5, r30
/* 804E9EF0  38 80 00 13 */	li r4, 0x13
/* 804E9EF4  4B FF 05 65 */	bl Player_actor_check_request_main_able
/* 804E9EF8  2C 03 00 00 */	cmpwi r3, 0
/* 804E9EFC  41 82 00 68 */	beq lbl_804E9F64
/* 804E9F00  7F 23 CB 78 */	mr r3, r25
/* 804E9F04  4B FF FF 61 */	bl func_804E9E64
/* 804E9F08  2C 03 00 00 */	cmpwi r3, 0
/* 804E9F0C  41 82 00 58 */	beq lbl_804E9F64
/* 804E9F10  7F 23 CB 78 */	mr r3, r25
/* 804E9F14  4B EE F7 2D */	bl get_player_actor_withoutCheck
/* 804E9F18  7C 7F 1B 78 */	mr r31, r3
/* 804E9F1C  7F 63 DB 78 */	mr r3, r27
/* 804E9F20  93 5F 0D 60 */	stw r26, 0xd60(r31)
/* 804E9F24  4B FE D2 75 */	bl Player_actor_Get_Angle_fromIndex
/* 804E9F28  B0 7F 0D 64 */	sth r3, 0xd64(r31)
/* 804E9F2C  7F 23 CB 78 */	mr r3, r25
/* 804E9F30  7F C5 F3 78 */	mr r5, r30
/* 804E9F34  38 80 00 13 */	li r4, 0x13
/* 804E9F38  80 DC 00 00 */	lwz r6, 0(r28)
/* 804E9F3C  80 1C 00 04 */	lwz r0, 4(r28)
/* 804E9F40  90 DF 0D 68 */	stw r6, 0xd68(r31)
/* 804E9F44  90 1F 0D 6C */	stw r0, 0xd6c(r31)
/* 804E9F48  80 1C 00 08 */	lwz r0, 8(r28)
/* 804E9F4C  90 1F 0D 70 */	stw r0, 0xd70(r31)
/* 804E9F50  D3 FF 0D 74 */	stfs f31, 0xd74(r31)
/* 804E9F54  93 BF 0D 78 */	stw r29, 0xd78(r31)
/* 804E9F58  4B FE B0 BD */	bl Player_actor_request_main_index
/* 804E9F5C  38 60 00 01 */	li r3, 1
/* 804E9F60  48 00 00 08 */	b lbl_804E9F68
lbl_804E9F64:
/* 804E9F64  38 60 00 00 */	li r3, 0
lbl_804E9F68:
/* 804E9F68  39 61 00 28 */	addi r11, r1, 0x28
/* 804E9F6C  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 804E9F70  4B BB 0F A1 */	bl func_8009AF10
/* 804E9F74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E9F78  7C 08 03 A6 */	mtlr r0
/* 804E9F7C  38 21 00 30 */	addi r1, r1, 0x30
/* 804E9F80  4E 80 00 20 */	blr 

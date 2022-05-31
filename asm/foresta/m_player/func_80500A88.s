lbl_80500A88:
/* 80500A88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80500A8C  7C 08 02 A6 */	mflr r0
/* 80500A90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80500A94  39 61 00 20 */	addi r11, r1, 0x20
/* 80500A98  4B B9 A4 31 */	bl func_8009AEC8
/* 80500A9C  7D 1F 43 78 */	mr r31, r8
/* 80500AA0  7C 9B 23 78 */	mr r27, r4
/* 80500AA4  7C BC 2B 78 */	mr r28, r5
/* 80500AA8  7C 7A 1B 78 */	mr r26, r3
/* 80500AAC  7C DD 33 78 */	mr r29, r6
/* 80500AB0  7C FE 3B 78 */	mr r30, r7
/* 80500AB4  7F E5 FB 78 */	mr r5, r31
/* 80500AB8  38 80 00 59 */	li r4, 0x59
/* 80500ABC  4B FD 99 9D */	bl Player_actor_check_request_main_able
/* 80500AC0  2C 03 00 00 */	cmpwi r3, 0
/* 80500AC4  41 82 00 48 */	beq lbl_80500B0C
/* 80500AC8  7F 43 D3 78 */	mr r3, r26
/* 80500ACC  4B ED 8B 75 */	bl get_player_actor_withoutCheck
/* 80500AD0  80 DB 00 00 */	lwz r6, 0(r27)
/* 80500AD4  7F E5 FB 78 */	mr r5, r31
/* 80500AD8  80 1B 00 04 */	lwz r0, 4(r27)
/* 80500ADC  38 80 00 59 */	li r4, 0x59
/* 80500AE0  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 80500AE4  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 80500AE8  80 1B 00 08 */	lwz r0, 8(r27)
/* 80500AEC  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 80500AF0  B3 83 0D 6C */	sth r28, 0xd6c(r3)
/* 80500AF4  93 A3 0D 70 */	stw r29, 0xd70(r3)
/* 80500AF8  93 C3 0D 74 */	stw r30, 0xd74(r3)
/* 80500AFC  7F 43 D3 78 */	mr r3, r26
/* 80500B00  4B FD 45 15 */	bl Player_actor_request_main_index
/* 80500B04  38 60 00 01 */	li r3, 1
/* 80500B08  48 00 00 08 */	b lbl_80500B10
lbl_80500B0C:
/* 80500B0C  38 60 00 00 */	li r3, 0
lbl_80500B10:
/* 80500B10  39 61 00 20 */	addi r11, r1, 0x20
/* 80500B14  4B B9 A4 01 */	bl func_8009AF14
/* 80500B18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80500B1C  7C 08 03 A6 */	mtlr r0
/* 80500B20  38 21 00 20 */	addi r1, r1, 0x20
/* 80500B24  4E 80 00 20 */	blr 

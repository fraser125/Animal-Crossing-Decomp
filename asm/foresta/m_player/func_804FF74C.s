lbl_804FF74C:
/* 804FF74C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FF750  7C 08 02 A6 */	mflr r0
/* 804FF754  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FF758  39 61 00 30 */	addi r11, r1, 0x30
/* 804FF75C  4B B9 B7 69 */	bl func_8009AEC4
/* 804FF760  7D 1E 43 78 */	mr r30, r8
/* 804FF764  7C 9A 23 78 */	mr r26, r4
/* 804FF768  7C BB 2B 78 */	mr r27, r5
/* 804FF76C  7C 79 1B 78 */	mr r25, r3
/* 804FF770  7C DC 33 78 */	mr r28, r6
/* 804FF774  7C FD 3B 78 */	mr r29, r7
/* 804FF778  7F C5 F3 78 */	mr r5, r30
/* 804FF77C  38 80 00 54 */	li r4, 0x54
/* 804FF780  4B FD AC D9 */	bl Player_actor_check_request_main_able
/* 804FF784  2C 03 00 00 */	cmpwi r3, 0
/* 804FF788  41 82 00 60 */	beq lbl_804FF7E8
/* 804FF78C  7F 23 CB 78 */	mr r3, r25
/* 804FF790  4B ED 9E B1 */	bl get_player_actor_withoutCheck
/* 804FF794  7C 7F 1B 78 */	mr r31, r3
/* 804FF798  7F 23 CB 78 */	mr r3, r25
/* 804FF79C  7F C5 F3 78 */	mr r5, r30
/* 804FF7A0  38 80 00 54 */	li r4, 0x54
/* 804FF7A4  4B FD 58 71 */	bl Player_actor_request_main_index
/* 804FF7A8  80 9A 00 00 */	lwz r4, 0(r26)
/* 804FF7AC  38 60 00 01 */	li r3, 1
/* 804FF7B0  80 1A 00 04 */	lwz r0, 4(r26)
/* 804FF7B4  90 9F 0D 60 */	stw r4, 0xd60(r31)
/* 804FF7B8  90 1F 0D 64 */	stw r0, 0xd64(r31)
/* 804FF7BC  80 1A 00 08 */	lwz r0, 8(r26)
/* 804FF7C0  90 1F 0D 68 */	stw r0, 0xd68(r31)
/* 804FF7C4  80 9B 00 00 */	lwz r4, 0(r27)
/* 804FF7C8  80 1B 00 04 */	lwz r0, 4(r27)
/* 804FF7CC  90 9F 0D 6C */	stw r4, 0xd6c(r31)
/* 804FF7D0  90 1F 0D 70 */	stw r0, 0xd70(r31)
/* 804FF7D4  80 1B 00 08 */	lwz r0, 8(r27)
/* 804FF7D8  90 1F 0D 74 */	stw r0, 0xd74(r31)
/* 804FF7DC  93 BF 0D 7C */	stw r29, 0xd7c(r31)
/* 804FF7E0  B3 9F 0D 78 */	sth r28, 0xd78(r31)
/* 804FF7E4  48 00 00 08 */	b lbl_804FF7EC
lbl_804FF7E8:
/* 804FF7E8  38 60 00 00 */	li r3, 0
lbl_804FF7EC:
/* 804FF7EC  39 61 00 30 */	addi r11, r1, 0x30
/* 804FF7F0  4B B9 B7 21 */	bl func_8009AF10
/* 804FF7F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FF7F8  7C 08 03 A6 */	mtlr r0
/* 804FF7FC  38 21 00 30 */	addi r1, r1, 0x30
/* 804FF800  4E 80 00 20 */	blr 

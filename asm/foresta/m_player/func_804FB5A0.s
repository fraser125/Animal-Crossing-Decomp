lbl_804FB5A0:
/* 804FB5A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FB5A4  7C 08 02 A6 */	mflr r0
/* 804FB5A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FB5AC  39 61 00 30 */	addi r11, r1, 0x30
/* 804FB5B0  4B B9 F9 11 */	bl func_8009AEC0
/* 804FB5B4  7D 3E 4B 78 */	mr r30, r9
/* 804FB5B8  7C 99 23 78 */	mr r25, r4
/* 804FB5BC  7C BA 2B 78 */	mr r26, r5
/* 804FB5C0  7C 78 1B 78 */	mr r24, r3
/* 804FB5C4  7C DB 33 78 */	mr r27, r6
/* 804FB5C8  7C FC 3B 78 */	mr r28, r7
/* 804FB5CC  7D 1D 43 78 */	mr r29, r8
/* 804FB5D0  7F C5 F3 78 */	mr r5, r30
/* 804FB5D4  38 80 00 44 */	li r4, 0x44
/* 804FB5D8  4B FD EE 81 */	bl Player_actor_check_request_main_able
/* 804FB5DC  2C 03 00 00 */	cmpwi r3, 0
/* 804FB5E0  41 82 00 3C */	beq lbl_804FB61C
/* 804FB5E4  7F 03 C3 78 */	mr r3, r24
/* 804FB5E8  4B ED E0 59 */	bl get_player_actor_withoutCheck
/* 804FB5EC  7C 7F 1B 78 */	mr r31, r3
/* 804FB5F0  7F 03 C3 78 */	mr r3, r24
/* 804FB5F4  7F C5 F3 78 */	mr r5, r30
/* 804FB5F8  38 80 00 44 */	li r4, 0x44
/* 804FB5FC  4B FD 9A 19 */	bl Player_actor_request_main_index
/* 804FB600  93 3F 0D 60 */	stw r25, 0xd60(r31)
/* 804FB604  38 60 00 01 */	li r3, 1
/* 804FB608  93 5F 0D 64 */	stw r26, 0xd64(r31)
/* 804FB60C  93 7F 0D 68 */	stw r27, 0xd68(r31)
/* 804FB610  B3 9F 0D 6C */	sth r28, 0xd6c(r31)
/* 804FB614  93 BF 0D 70 */	stw r29, 0xd70(r31)
/* 804FB618  48 00 00 08 */	b lbl_804FB620
lbl_804FB61C:
/* 804FB61C  38 60 00 00 */	li r3, 0
lbl_804FB620:
/* 804FB620  39 61 00 30 */	addi r11, r1, 0x30
/* 804FB624  4B B9 F8 E9 */	bl func_8009AF0C
/* 804FB628  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FB62C  7C 08 03 A6 */	mtlr r0
/* 804FB630  38 21 00 30 */	addi r1, r1, 0x30
/* 804FB634  4E 80 00 20 */	blr 

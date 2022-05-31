lbl_804FB2AC:
/* 804FB2AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FB2B0  7C 08 02 A6 */	mflr r0
/* 804FB2B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FB2B8  39 61 00 30 */	addi r11, r1, 0x30
/* 804FB2BC  4B B9 FC 05 */	bl func_8009AEC0
/* 804FB2C0  7D 3E 4B 78 */	mr r30, r9
/* 804FB2C4  7C 99 23 78 */	mr r25, r4
/* 804FB2C8  7C BA 2B 78 */	mr r26, r5
/* 804FB2CC  7C 78 1B 78 */	mr r24, r3
/* 804FB2D0  7C DB 33 78 */	mr r27, r6
/* 804FB2D4  7C FC 3B 78 */	mr r28, r7
/* 804FB2D8  7D 1D 43 78 */	mr r29, r8
/* 804FB2DC  7F C5 F3 78 */	mr r5, r30
/* 804FB2E0  38 80 00 43 */	li r4, 0x43
/* 804FB2E4  4B FD F1 75 */	bl Player_actor_check_request_main_able
/* 804FB2E8  2C 03 00 00 */	cmpwi r3, 0
/* 804FB2EC  41 82 00 3C */	beq lbl_804FB328
/* 804FB2F0  7F 03 C3 78 */	mr r3, r24
/* 804FB2F4  4B ED E3 4D */	bl get_player_actor_withoutCheck
/* 804FB2F8  7C 7F 1B 78 */	mr r31, r3
/* 804FB2FC  7F 03 C3 78 */	mr r3, r24
/* 804FB300  7F C5 F3 78 */	mr r5, r30
/* 804FB304  38 80 00 43 */	li r4, 0x43
/* 804FB308  4B FD 9D 0D */	bl Player_actor_request_main_index
/* 804FB30C  93 3F 0D 60 */	stw r25, 0xd60(r31)
/* 804FB310  38 60 00 01 */	li r3, 1
/* 804FB314  93 5F 0D 64 */	stw r26, 0xd64(r31)
/* 804FB318  93 7F 0D 68 */	stw r27, 0xd68(r31)
/* 804FB31C  B3 9F 0D 6C */	sth r28, 0xd6c(r31)
/* 804FB320  93 BF 0D 70 */	stw r29, 0xd70(r31)
/* 804FB324  48 00 00 08 */	b lbl_804FB32C
lbl_804FB328:
/* 804FB328  38 60 00 00 */	li r3, 0
lbl_804FB32C:
/* 804FB32C  39 61 00 30 */	addi r11, r1, 0x30
/* 804FB330  4B B9 FB DD */	bl func_8009AF0C
/* 804FB334  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FB338  7C 08 03 A6 */	mtlr r0
/* 804FB33C  38 21 00 30 */	addi r1, r1, 0x30
/* 804FB340  4E 80 00 20 */	blr 

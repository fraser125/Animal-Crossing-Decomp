lbl_804FB8CC:
/* 804FB8CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FB8D0  7C 08 02 A6 */	mflr r0
/* 804FB8D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FB8D8  39 61 00 30 */	addi r11, r1, 0x30
/* 804FB8DC  4B B9 F5 E5 */	bl func_8009AEC0
/* 804FB8E0  7D 3E 4B 78 */	mr r30, r9
/* 804FB8E4  7C 99 23 78 */	mr r25, r4
/* 804FB8E8  7C BA 2B 78 */	mr r26, r5
/* 804FB8EC  7C 78 1B 78 */	mr r24, r3
/* 804FB8F0  7C DB 33 78 */	mr r27, r6
/* 804FB8F4  7C FC 3B 78 */	mr r28, r7
/* 804FB8F8  7D 1D 43 78 */	mr r29, r8
/* 804FB8FC  7F C5 F3 78 */	mr r5, r30
/* 804FB900  38 80 00 45 */	li r4, 0x45
/* 804FB904  4B FD EB 55 */	bl Player_actor_check_request_main_able
/* 804FB908  2C 03 00 00 */	cmpwi r3, 0
/* 804FB90C  41 82 00 3C */	beq lbl_804FB948
/* 804FB910  7F 03 C3 78 */	mr r3, r24
/* 804FB914  4B ED DD 2D */	bl get_player_actor_withoutCheck
/* 804FB918  7C 7F 1B 78 */	mr r31, r3
/* 804FB91C  7F 03 C3 78 */	mr r3, r24
/* 804FB920  7F C5 F3 78 */	mr r5, r30
/* 804FB924  38 80 00 45 */	li r4, 0x45
/* 804FB928  4B FD 96 ED */	bl Player_actor_request_main_index
/* 804FB92C  93 3F 0D 60 */	stw r25, 0xd60(r31)
/* 804FB930  38 60 00 01 */	li r3, 1
/* 804FB934  93 5F 0D 64 */	stw r26, 0xd64(r31)
/* 804FB938  93 7F 0D 68 */	stw r27, 0xd68(r31)
/* 804FB93C  B3 9F 0D 6C */	sth r28, 0xd6c(r31)
/* 804FB940  93 BF 0D 70 */	stw r29, 0xd70(r31)
/* 804FB944  48 00 00 08 */	b lbl_804FB94C
lbl_804FB948:
/* 804FB948  38 60 00 00 */	li r3, 0
lbl_804FB94C:
/* 804FB94C  39 61 00 30 */	addi r11, r1, 0x30
/* 804FB950  4B B9 F5 BD */	bl func_8009AF0C
/* 804FB954  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FB958  7C 08 03 A6 */	mtlr r0
/* 804FB95C  38 21 00 30 */	addi r1, r1, 0x30
/* 804FB960  4E 80 00 20 */	blr 

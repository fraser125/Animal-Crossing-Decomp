lbl_804EF368:
/* 804EF368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EF36C  7C 08 02 A6 */	mflr r0
/* 804EF370  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EF374  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF378  4B BA BB 5D */	bl func_8009AED4
/* 804EF37C  7C 9E 23 78 */	mr r30, r4
/* 804EF380  7C 7D 1B 78 */	mr r29, r3
/* 804EF384  7C BF 2B 78 */	mr r31, r5
/* 804EF388  38 80 00 23 */	li r4, 0x23
/* 804EF38C  4B FE B0 CD */	bl Player_actor_check_request_main_able
/* 804EF390  2C 03 00 00 */	cmpwi r3, 0
/* 804EF394  41 82 00 28 */	beq lbl_804EF3BC
/* 804EF398  7F A3 EB 78 */	mr r3, r29
/* 804EF39C  4B EE A2 A5 */	bl get_player_actor_withoutCheck
/* 804EF3A0  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 804EF3A4  7F A3 EB 78 */	mr r3, r29
/* 804EF3A8  7F E5 FB 78 */	mr r5, r31
/* 804EF3AC  38 80 00 23 */	li r4, 0x23
/* 804EF3B0  4B FE 5C 65 */	bl Player_actor_request_main_index
/* 804EF3B4  38 60 00 01 */	li r3, 1
/* 804EF3B8  48 00 00 08 */	b lbl_804EF3C0
lbl_804EF3BC:
/* 804EF3BC  38 60 00 00 */	li r3, 0
lbl_804EF3C0:
/* 804EF3C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF3C4  4B BA BB 5D */	bl func_8009AF20
/* 804EF3C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EF3CC  7C 08 03 A6 */	mtlr r0
/* 804EF3D0  38 21 00 20 */	addi r1, r1, 0x20
/* 804EF3D4  4E 80 00 20 */	blr 

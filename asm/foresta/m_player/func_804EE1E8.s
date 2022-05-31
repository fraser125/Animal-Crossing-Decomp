lbl_804EE1E8:
/* 804EE1E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EE1EC  7C 08 02 A6 */	mflr r0
/* 804EE1F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EE1F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE1F8  4B BA CC D9 */	bl func_8009AED0
/* 804EE1FC  7C 7C 1B 78 */	mr r28, r3
/* 804EE200  7C 9D 23 78 */	mr r29, r4
/* 804EE204  7C BE 2B 78 */	mr r30, r5
/* 804EE208  7C DF 33 78 */	mr r31, r6
/* 804EE20C  38 60 00 20 */	li r3, 0x20
/* 804EE210  4B FE C1 C9 */	bl Player_actor_check_able_request_main_index_for_reset
/* 804EE214  2C 03 00 00 */	cmpwi r3, 0
/* 804EE218  40 82 00 44 */	bne lbl_804EE25C
/* 804EE21C  7F 83 E3 78 */	mr r3, r28
/* 804EE220  4B EE B4 21 */	bl get_player_actor_withoutCheck
/* 804EE224  93 A3 0D 60 */	stw r29, 0xd60(r3)
/* 804EE228  38 80 00 20 */	li r4, 0x20
/* 804EE22C  38 A0 00 08 */	li r5, 8
/* 804EE230  B3 C3 0D 64 */	sth r30, 0xd64(r3)
/* 804EE234  80 DF 00 00 */	lwz r6, 0(r31)
/* 804EE238  80 1F 00 04 */	lwz r0, 4(r31)
/* 804EE23C  90 C3 0D 68 */	stw r6, 0xd68(r3)
/* 804EE240  90 03 0D 6C */	stw r0, 0xd6c(r3)
/* 804EE244  80 1F 00 08 */	lwz r0, 8(r31)
/* 804EE248  90 03 0D 70 */	stw r0, 0xd70(r3)
/* 804EE24C  7F 83 E3 78 */	mr r3, r28
/* 804EE250  4B FE 6D C5 */	bl Player_actor_request_main_index
/* 804EE254  38 60 00 01 */	li r3, 1
/* 804EE258  48 00 00 08 */	b lbl_804EE260
lbl_804EE25C:
/* 804EE25C  38 60 00 00 */	li r3, 0
lbl_804EE260:
/* 804EE260  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE264  4B BA CC B9 */	bl func_8009AF1C
/* 804EE268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EE26C  7C 08 03 A6 */	mtlr r0
/* 804EE270  38 21 00 20 */	addi r1, r1, 0x20
/* 804EE274  4E 80 00 20 */	blr 

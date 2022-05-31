lbl_8051D20C:
/* 8051D20C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051D210  7C 08 02 A6 */	mflr r0
/* 8051D214  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051D218  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D21C  4B B7 DC B9 */	bl func_8009AED4
/* 8051D220  7C 7D 1B 78 */	mr r29, r3
/* 8051D224  7C 9E 23 78 */	mr r30, r4
/* 8051D228  4B EA 24 81 */	bl func_803BF6A8
/* 8051D22C  7C 7F 1B 78 */	mr r31, r3
/* 8051D230  4B EA 3A 69 */	bl mMsg_Check_MainNormalContinue
/* 8051D234  2C 03 00 01 */	cmpwi r3, 1
/* 8051D238  40 82 00 68 */	bne lbl_8051D2A0
/* 8051D23C  7F E3 FB 78 */	mr r3, r31
/* 8051D240  4B EA 3B 01 */	bl mMsg_Set_LockContinue
/* 8051D244  7F C3 F3 78 */	mr r3, r30
/* 8051D248  4B EB C4 29 */	bl mPlib_get_player_actor_main_index
/* 8051D24C  2C 03 00 41 */	cmpwi r3, 0x41
/* 8051D250  40 82 00 50 */	bne lbl_8051D2A0
/* 8051D254  4B EC 07 95 */	bl mPlib_Check_now_handin_item
/* 8051D258  2C 03 00 00 */	cmpwi r3, 0
/* 8051D25C  41 82 00 28 */	beq lbl_8051D284
/* 8051D260  4B E7 B6 31 */	bl mDemo_Get_talk_turn
/* 8051D264  7C 7F 1B 78 */	mr r31, r3
/* 8051D268  4B E7 B1 91 */	bl mDemo_Get_talk_actor
/* 8051D26C  7C 64 1B 78 */	mr r4, r3
/* 8051D270  7F C3 F3 78 */	mr r3, r30
/* 8051D274  7F E5 FB 78 */	mr r5, r31
/* 8051D278  38 C0 00 01 */	li r6, 1
/* 8051D27C  4B EB D0 81 */	bl mPlib_request_main_talk_type1
/* 8051D280  48 00 00 20 */	b lbl_8051D2A0
lbl_8051D284:
/* 8051D284  7F E3 FB 78 */	mr r3, r31
/* 8051D288  4B EA 3A C5 */	bl mMsg_Unset_LockContinue
/* 8051D28C  38 60 00 00 */	li r3, 0
/* 8051D290  4B E7 B4 E1 */	bl mDemo_Set_talk_change_player
/* 8051D294  7F A3 EB 78 */	mr r3, r29
/* 8051D298  38 80 00 05 */	li r4, 5
/* 8051D29C  48 00 02 FD */	bl aEDSN_change_talk_proc
lbl_8051D2A0:
/* 8051D2A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D2A4  4B B7 DC 7D */	bl func_8009AF20
/* 8051D2A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051D2AC  7C 08 03 A6 */	mtlr r0
/* 8051D2B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8051D2B4  4E 80 00 20 */	blr 

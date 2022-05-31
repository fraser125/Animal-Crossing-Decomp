lbl_8051D0FC:
/* 8051D0FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051D100  7C 08 02 A6 */	mflr r0
/* 8051D104  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051D108  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D10C  4B B7 DD C1 */	bl func_8009AECC
/* 8051D110  7C 7B 1B 78 */	mr r27, r3
/* 8051D114  7C 9C 23 78 */	mr r28, r4
/* 8051D118  4B EA 25 91 */	bl func_803BF6A8
/* 8051D11C  7C 60 1B 78 */	mr r0, r3
/* 8051D120  38 60 00 04 */	li r3, 4
/* 8051D124  7C 1F 03 78 */	mr r31, r0
/* 8051D128  38 80 00 09 */	li r4, 9
/* 8051D12C  4B E7 B3 51 */	bl mDemo_Get_OrderValue
/* 8051D130  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 8051D134  7F E3 FB 78 */	mr r3, r31
/* 8051D138  4B EA 3B 61 */	bl mMsg_Check_MainNormalContinue
/* 8051D13C  2C 03 00 01 */	cmpwi r3, 1
/* 8051D140  40 82 00 B4 */	bne lbl_8051D1F4
/* 8051D144  2C 1E 00 00 */	cmpwi r30, 0
/* 8051D148  41 82 00 AC */	beq lbl_8051D1F4
/* 8051D14C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051D150  3B C0 00 05 */	li r30, 5
/* 8051D154  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051D158  38 80 00 00 */	li r4, 0
/* 8051D15C  3C 63 00 02 */	addis r3, r3, 2
/* 8051D160  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8051D164  4B EC 35 C5 */	bl mPr_GetPossessionItemIdx
/* 8051D168  2C 03 FF FF */	cmpwi r3, -1
/* 8051D16C  41 82 00 64 */	beq lbl_8051D1D0
/* 8051D170  3B A0 00 13 */	li r29, 0x13
/* 8051D174  4B EC 08 75 */	bl mPlib_Check_now_handin_item
/* 8051D178  2C 03 00 00 */	cmpwi r3, 0
/* 8051D17C  41 82 00 20 */	beq lbl_8051D19C
/* 8051D180  7F 83 E3 78 */	mr r3, r28
/* 8051D184  4B EB C4 ED */	bl mPlib_get_player_actor_main_index
/* 8051D188  2C 03 00 41 */	cmpwi r3, 0x41
/* 8051D18C  40 82 00 10 */	bne lbl_8051D19C
/* 8051D190  3B A0 00 1A */	li r29, 0x1a
/* 8051D194  3B C0 00 01 */	li r30, 1
/* 8051D198  48 00 00 0C */	b lbl_8051D1A4
lbl_8051D19C:
/* 8051D19C  38 60 00 00 */	li r3, 0
/* 8051D1A0  4B E7 B5 D1 */	bl mDemo_Set_talk_change_player
lbl_8051D1A4:
/* 8051D1A4  38 60 00 01 */	li r3, 1
/* 8051D1A8  4B E7 B6 11 */	bl mDemo_Set_talk_return_demo_wait
/* 8051D1AC  7F 63 DB 78 */	mr r3, r27
/* 8051D1B0  7F A4 EB 78 */	mr r4, r29
/* 8051D1B4  4B FF FF 29 */	bl aEDSN_get_msg_no
/* 8051D1B8  7C 64 1B 78 */	mr r4, r3
/* 8051D1BC  7F E3 FB 78 */	mr r3, r31
/* 8051D1C0  4B EA 2E 05 */	bl mMsg_Set_continue_msg_num
/* 8051D1C4  38 60 00 08 */	li r3, 8
/* 8051D1C8  4B E7 D2 7D */	bl mDemo_KeepCamera
/* 8051D1CC  48 00 00 0C */	b lbl_8051D1D8
lbl_8051D1D0:
/* 8051D1D0  38 00 00 00 */	li r0, 0
/* 8051D1D4  98 1B 09 95 */	stb r0, 0x995(r27)
lbl_8051D1D8:
/* 8051D1D8  7F 63 DB 78 */	mr r3, r27
/* 8051D1DC  7F C4 F3 78 */	mr r4, r30
/* 8051D1E0  48 00 03 B9 */	bl aEDSN_change_talk_proc
/* 8051D1E4  38 60 00 04 */	li r3, 4
/* 8051D1E8  38 80 00 09 */	li r4, 9
/* 8051D1EC  38 A0 00 00 */	li r5, 0
/* 8051D1F0  4B E7 B2 49 */	bl mDemo_Set_OrderValue
lbl_8051D1F4:
/* 8051D1F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D1F8  4B B7 DD 21 */	bl func_8009AF18
/* 8051D1FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051D200  7C 08 03 A6 */	mtlr r0
/* 8051D204  38 21 00 20 */	addi r1, r1, 0x20
/* 8051D208  4E 80 00 20 */	blr 

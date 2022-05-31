lbl_805051B4:
/* 805051B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805051B8  7C 08 02 A6 */	mflr r0
/* 805051BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805051C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805051C4  4B EB A4 E5 */	bl func_803BF6A8
/* 805051C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805051CC  7C 7F 1B 78 */	mr r31, r3
/* 805051D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805051D4  3C 84 00 03 */	addis r4, r4, 3
/* 805051D8  88 04 85 BF */	lbz r0, -0x7a41(r4)
/* 805051DC  2C 00 00 01 */	cmpwi r0, 1
/* 805051E0  41 82 00 08 */	beq lbl_805051E8
/* 805051E4  48 00 00 0C */	b lbl_805051F0
lbl_805051E8:
/* 805051E8  38 60 17 B6 */	li r3, 0x17b6
/* 805051EC  48 00 00 08 */	b lbl_805051F4
lbl_805051F0:
/* 805051F0  38 60 17 B7 */	li r3, 0x17b7
lbl_805051F4:
/* 805051F4  4B E9 33 21 */	bl mDemo_Set_msg_num
/* 805051F8  38 60 00 00 */	li r3, 0
/* 805051FC  4B E9 35 2D */	bl mDemo_Set_talk_display_name
/* 80505200  38 60 00 05 */	li r3, 5
/* 80505204  4B E9 37 1D */	bl mDemo_Set_camera
/* 80505208  4B E9 51 AD */	bl mDemo_Set_ListenAble
/* 8050520C  7F E3 FB 78 */	mr r3, r31
/* 80505210  4B EB BB 31 */	bl mMsg_Set_LockContinue
/* 80505214  38 60 00 B9 */	li r3, 0xb9
/* 80505218  38 A0 00 F5 */	li r5, 0xf5
/* 8050521C  38 80 00 50 */	li r4, 0x50
/* 80505220  38 00 00 FF */	li r0, 0xff
/* 80505224  98 61 00 08 */	stb r3, 8(r1)
/* 80505228  38 61 00 08 */	addi r3, r1, 8
/* 8050522C  98 A1 00 09 */	stb r5, 9(r1)
/* 80505230  98 81 00 0A */	stb r4, 0xa(r1)
/* 80505234  98 01 00 0B */	stb r0, 0xb(r1)
/* 80505238  4B E9 36 99 */	bl mDemo_Set_talk_window_color
/* 8050523C  4B E7 E3 05 */	bl func_80383540
/* 80505240  4B E7 E9 35 */	bl mChoice_Clear_ChoseNum
/* 80505244  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80505248  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050524C  7C 08 03 A6 */	mtlr r0
/* 80505250  38 21 00 20 */	addi r1, r1, 0x20
/* 80505254  4E 80 00 20 */	blr 

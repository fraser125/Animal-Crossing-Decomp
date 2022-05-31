lbl_805B9A58:
/* 805B9A58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B9A5C  7C 08 02 A6 */	mflr r0
/* 805B9A60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B9A64  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9A68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B9A6C  3C 63 00 02 */	addis r3, r3, 2
/* 805B9A70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B9A74  83 E3 61 1C */	lwz r31, 0x611c(r3)
/* 805B9A78  4B E3 13 15 */	bl mSP_CheckFukubikiDay
/* 805B9A7C  2C 03 00 00 */	cmpwi r3, 0
/* 805B9A80  41 82 00 2C */	beq lbl_805B9AAC
/* 805B9A84  2C 1F 54 60 */	cmpwi r31, 0x5460
/* 805B9A88  41 80 00 1C */	blt lbl_805B9AA4
/* 805B9A8C  4B E3 0C 85 */	bl mSP_ShopOpen
/* 805B9A90  30 03 FF FF */	addic r0, r3, -1
/* 805B9A94  7C 60 01 10 */	subfe r3, r0, r0
/* 805B9A98  38 03 07 D7 */	addi r0, r3, 0x7d7
/* 805B9A9C  7C 03 03 78 */	mr r3, r0
/* 805B9AA0  48 00 00 64 */	b lbl_805B9B04
lbl_805B9AA4:
/* 805B9AA4  38 60 07 CD */	li r3, 0x7cd
/* 805B9AA8  48 00 00 5C */	b lbl_805B9B04
lbl_805B9AAC:
/* 805B9AAC  4B E3 0C 65 */	bl mSP_ShopOpen
/* 805B9AB0  2C 03 00 03 */	cmpwi r3, 3
/* 805B9AB4  41 82 00 44 */	beq lbl_805B9AF8
/* 805B9AB8  40 80 00 18 */	bge lbl_805B9AD0
/* 805B9ABC  2C 03 00 02 */	cmpwi r3, 2
/* 805B9AC0  40 80 00 40 */	bge lbl_805B9B00
/* 805B9AC4  2C 03 00 00 */	cmpwi r3, 0
/* 805B9AC8  40 80 00 18 */	bge lbl_805B9AE0
/* 805B9ACC  48 00 00 34 */	b lbl_805B9B00
lbl_805B9AD0:
/* 805B9AD0  2C 03 00 05 */	cmpwi r3, 5
/* 805B9AD4  41 82 00 1C */	beq lbl_805B9AF0
/* 805B9AD8  40 80 00 28 */	bge lbl_805B9B00
/* 805B9ADC  48 00 00 0C */	b lbl_805B9AE8
lbl_805B9AE0:
/* 805B9AE0  38 60 07 CD */	li r3, 0x7cd
/* 805B9AE4  48 00 00 20 */	b lbl_805B9B04
lbl_805B9AE8:
/* 805B9AE8  38 60 07 D1 */	li r3, 0x7d1
/* 805B9AEC  48 00 00 18 */	b lbl_805B9B04
lbl_805B9AF0:
/* 805B9AF0  38 60 07 D9 */	li r3, 0x7d9
/* 805B9AF4  48 00 00 10 */	b lbl_805B9B04
lbl_805B9AF8:
/* 805B9AF8  38 60 07 D8 */	li r3, 0x7d8
/* 805B9AFC  48 00 00 08 */	b lbl_805B9B04
lbl_805B9B00:
/* 805B9B00  38 60 07 CD */	li r3, 0x7cd
lbl_805B9B04:
/* 805B9B04  4B DD EA 11 */	bl mDemo_Set_msg_num
/* 805B9B08  38 60 00 00 */	li r3, 0
/* 805B9B0C  4B DD EC 1D */	bl mDemo_Set_talk_display_name
/* 805B9B10  38 60 00 01 */	li r3, 1
/* 805B9B14  4B DD EE 0D */	bl mDemo_Set_camera
/* 805B9B18  38 60 00 01 */	li r3, 1
/* 805B9B1C  4B E2 3F 09 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 805B9B20  4B DE 08 95 */	bl mDemo_Set_ListenAble
/* 805B9B24  38 60 00 91 */	li r3, 0x91
/* 805B9B28  38 A0 00 3C */	li r5, 0x3c
/* 805B9B2C  38 80 00 28 */	li r4, 0x28
/* 805B9B30  38 00 00 FF */	li r0, 0xff
/* 805B9B34  98 61 00 08 */	stb r3, 8(r1)
/* 805B9B38  38 61 00 08 */	addi r3, r1, 8
/* 805B9B3C  98 A1 00 09 */	stb r5, 9(r1)
/* 805B9B40  98 81 00 0A */	stb r4, 0xa(r1)
/* 805B9B44  98 01 00 0B */	stb r0, 0xb(r1)
/* 805B9B48  4B DD ED 89 */	bl mDemo_Set_talk_window_color
/* 805B9B4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B9B50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B9B54  7C 08 03 A6 */	mtlr r0
/* 805B9B58  38 21 00 20 */	addi r1, r1, 0x20
/* 805B9B5C  4E 80 00 20 */	blr 

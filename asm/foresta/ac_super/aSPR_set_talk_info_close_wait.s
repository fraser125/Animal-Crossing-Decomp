lbl_805BD388:
/* 805BD388  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BD38C  7C 08 02 A6 */	mflr r0
/* 805BD390  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BD394  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BD398  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BD39C  3C 63 00 02 */	addis r3, r3, 2
/* 805BD3A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BD3A4  83 E3 61 1C */	lwz r31, 0x611c(r3)
/* 805BD3A8  4B E2 D9 E5 */	bl mSP_CheckFukubikiDay
/* 805BD3AC  2C 03 00 00 */	cmpwi r3, 0
/* 805BD3B0  41 82 00 2C */	beq lbl_805BD3DC
/* 805BD3B4  2C 1F 54 60 */	cmpwi r31, 0x5460
/* 805BD3B8  41 80 00 1C */	blt lbl_805BD3D4
/* 805BD3BC  4B E2 D3 55 */	bl mSP_ShopOpen
/* 805BD3C0  30 03 FF FF */	addic r0, r3, -1
/* 805BD3C4  7C 60 01 10 */	subfe r3, r0, r0
/* 805BD3C8  38 03 07 D7 */	addi r0, r3, 0x7d7
/* 805BD3CC  7C 03 03 78 */	mr r3, r0
/* 805BD3D0  48 00 00 64 */	b lbl_805BD434
lbl_805BD3D4:
/* 805BD3D4  38 60 07 CF */	li r3, 0x7cf
/* 805BD3D8  48 00 00 5C */	b lbl_805BD434
lbl_805BD3DC:
/* 805BD3DC  4B E2 D3 35 */	bl mSP_ShopOpen
/* 805BD3E0  2C 03 00 03 */	cmpwi r3, 3
/* 805BD3E4  41 82 00 44 */	beq lbl_805BD428
/* 805BD3E8  40 80 00 18 */	bge lbl_805BD400
/* 805BD3EC  2C 03 00 02 */	cmpwi r3, 2
/* 805BD3F0  40 80 00 40 */	bge lbl_805BD430
/* 805BD3F4  2C 03 00 00 */	cmpwi r3, 0
/* 805BD3F8  40 80 00 18 */	bge lbl_805BD410
/* 805BD3FC  48 00 00 34 */	b lbl_805BD430
lbl_805BD400:
/* 805BD400  2C 03 00 05 */	cmpwi r3, 5
/* 805BD404  41 82 00 1C */	beq lbl_805BD420
/* 805BD408  40 80 00 28 */	bge lbl_805BD430
/* 805BD40C  48 00 00 0C */	b lbl_805BD418
lbl_805BD410:
/* 805BD410  38 60 07 CF */	li r3, 0x7cf
/* 805BD414  48 00 00 20 */	b lbl_805BD434
lbl_805BD418:
/* 805BD418  38 60 07 D3 */	li r3, 0x7d3
/* 805BD41C  48 00 00 18 */	b lbl_805BD434
lbl_805BD420:
/* 805BD420  38 60 07 D9 */	li r3, 0x7d9
/* 805BD424  48 00 00 10 */	b lbl_805BD434
lbl_805BD428:
/* 805BD428  38 60 07 D8 */	li r3, 0x7d8
/* 805BD42C  48 00 00 08 */	b lbl_805BD434
lbl_805BD430:
/* 805BD430  38 60 07 CF */	li r3, 0x7cf
lbl_805BD434:
/* 805BD434  4B DD B0 E1 */	bl mDemo_Set_msg_num
/* 805BD438  38 60 00 00 */	li r3, 0
/* 805BD43C  4B DD B2 ED */	bl mDemo_Set_talk_display_name
/* 805BD440  38 60 00 01 */	li r3, 1
/* 805BD444  4B DD B4 DD */	bl mDemo_Set_camera
/* 805BD448  38 60 00 01 */	li r3, 1
/* 805BD44C  4B E2 05 D9 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 805BD450  4B DD CF 65 */	bl mDemo_Set_ListenAble
/* 805BD454  38 60 00 91 */	li r3, 0x91
/* 805BD458  38 A0 00 3C */	li r5, 0x3c
/* 805BD45C  38 80 00 28 */	li r4, 0x28
/* 805BD460  38 00 00 FF */	li r0, 0xff
/* 805BD464  98 61 00 08 */	stb r3, 8(r1)
/* 805BD468  38 61 00 08 */	addi r3, r1, 8
/* 805BD46C  98 A1 00 09 */	stb r5, 9(r1)
/* 805BD470  98 81 00 0A */	stb r4, 0xa(r1)
/* 805BD474  98 01 00 0B */	stb r0, 0xb(r1)
/* 805BD478  4B DD B4 59 */	bl mDemo_Set_talk_window_color
/* 805BD47C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BD480  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BD484  7C 08 03 A6 */	mtlr r0
/* 805BD488  38 21 00 20 */	addi r1, r1, 0x20
/* 805BD48C  4E 80 00 20 */	blr 

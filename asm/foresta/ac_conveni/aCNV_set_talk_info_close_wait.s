lbl_805AAE4C:
/* 805AAE4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AAE50  7C 08 02 A6 */	mflr r0
/* 805AAE54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AAE58  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AAE5C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805AAE60  3C 63 00 02 */	addis r3, r3, 2
/* 805AAE64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AAE68  83 E3 61 1C */	lwz r31, 0x611c(r3)
/* 805AAE6C  4B E3 FF 21 */	bl mSP_CheckFukubikiDay
/* 805AAE70  2C 03 00 00 */	cmpwi r3, 0
/* 805AAE74  41 82 00 2C */	beq lbl_805AAEA0
/* 805AAE78  2C 1F 54 60 */	cmpwi r31, 0x5460
/* 805AAE7C  41 80 00 1C */	blt lbl_805AAE98
/* 805AAE80  4B E3 F8 91 */	bl mSP_ShopOpen
/* 805AAE84  30 03 FF FF */	addic r0, r3, -1
/* 805AAE88  7C 60 01 10 */	subfe r3, r0, r0
/* 805AAE8C  38 03 07 D7 */	addi r0, r3, 0x7d7
/* 805AAE90  7C 03 03 78 */	mr r3, r0
/* 805AAE94  48 00 00 64 */	b lbl_805AAEF8
lbl_805AAE98:
/* 805AAE98  38 60 07 CE */	li r3, 0x7ce
/* 805AAE9C  48 00 00 5C */	b lbl_805AAEF8
lbl_805AAEA0:
/* 805AAEA0  4B E3 F8 71 */	bl mSP_ShopOpen
/* 805AAEA4  2C 03 00 03 */	cmpwi r3, 3
/* 805AAEA8  41 82 00 44 */	beq lbl_805AAEEC
/* 805AAEAC  40 80 00 18 */	bge lbl_805AAEC4
/* 805AAEB0  2C 03 00 02 */	cmpwi r3, 2
/* 805AAEB4  40 80 00 40 */	bge lbl_805AAEF4
/* 805AAEB8  2C 03 00 00 */	cmpwi r3, 0
/* 805AAEBC  40 80 00 18 */	bge lbl_805AAED4
/* 805AAEC0  48 00 00 34 */	b lbl_805AAEF4
lbl_805AAEC4:
/* 805AAEC4  2C 03 00 05 */	cmpwi r3, 5
/* 805AAEC8  41 82 00 1C */	beq lbl_805AAEE4
/* 805AAECC  40 80 00 28 */	bge lbl_805AAEF4
/* 805AAED0  48 00 00 0C */	b lbl_805AAEDC
lbl_805AAED4:
/* 805AAED4  38 60 07 CE */	li r3, 0x7ce
/* 805AAED8  48 00 00 20 */	b lbl_805AAEF8
lbl_805AAEDC:
/* 805AAEDC  38 60 07 D2 */	li r3, 0x7d2
/* 805AAEE0  48 00 00 18 */	b lbl_805AAEF8
lbl_805AAEE4:
/* 805AAEE4  38 60 07 D9 */	li r3, 0x7d9
/* 805AAEE8  48 00 00 10 */	b lbl_805AAEF8
lbl_805AAEEC:
/* 805AAEEC  38 60 07 D8 */	li r3, 0x7d8
/* 805AAEF0  48 00 00 08 */	b lbl_805AAEF8
lbl_805AAEF4:
/* 805AAEF4  38 60 07 CD */	li r3, 0x7cd
lbl_805AAEF8:
/* 805AAEF8  4B DE D6 1D */	bl mDemo_Set_msg_num
/* 805AAEFC  38 60 00 00 */	li r3, 0
/* 805AAF00  4B DE D8 29 */	bl mDemo_Set_talk_display_name
/* 805AAF04  38 60 00 01 */	li r3, 1
/* 805AAF08  4B DE DA 19 */	bl mDemo_Set_camera
/* 805AAF0C  38 60 00 01 */	li r3, 1
/* 805AAF10  4B E3 2B 15 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 805AAF14  4B DE F4 A1 */	bl mDemo_Set_ListenAble
/* 805AAF18  38 60 00 91 */	li r3, 0x91
/* 805AAF1C  38 A0 00 3C */	li r5, 0x3c
/* 805AAF20  38 80 00 28 */	li r4, 0x28
/* 805AAF24  38 00 00 FF */	li r0, 0xff
/* 805AAF28  98 61 00 08 */	stb r3, 8(r1)
/* 805AAF2C  38 61 00 08 */	addi r3, r1, 8
/* 805AAF30  98 A1 00 09 */	stb r5, 9(r1)
/* 805AAF34  98 81 00 0A */	stb r4, 0xa(r1)
/* 805AAF38  98 01 00 0B */	stb r0, 0xb(r1)
/* 805AAF3C  4B DE D9 95 */	bl mDemo_Set_talk_window_color
/* 805AAF40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AAF44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AAF48  7C 08 03 A6 */	mtlr r0
/* 805AAF4C  38 21 00 20 */	addi r1, r1, 0x20
/* 805AAF50  4E 80 00 20 */	blr 

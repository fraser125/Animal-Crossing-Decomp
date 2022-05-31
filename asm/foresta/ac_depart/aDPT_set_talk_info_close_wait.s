lbl_805ACC28:
/* 805ACC28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805ACC2C  7C 08 02 A6 */	mflr r0
/* 805ACC30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805ACC34  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ACC38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805ACC3C  3C 63 00 02 */	addis r3, r3, 2
/* 805ACC40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805ACC44  83 E3 61 1C */	lwz r31, 0x611c(r3)
/* 805ACC48  4B E3 E1 45 */	bl mSP_CheckFukubikiDay
/* 805ACC4C  2C 03 00 00 */	cmpwi r3, 0
/* 805ACC50  41 82 00 2C */	beq lbl_805ACC7C
/* 805ACC54  2C 1F 54 60 */	cmpwi r31, 0x5460
/* 805ACC58  41 80 00 1C */	blt lbl_805ACC74
/* 805ACC5C  4B E3 DA B5 */	bl mSP_ShopOpen
/* 805ACC60  30 03 FF FF */	addic r0, r3, -1
/* 805ACC64  7C 60 01 10 */	subfe r3, r0, r0
/* 805ACC68  38 03 07 D7 */	addi r0, r3, 0x7d7
/* 805ACC6C  7C 03 03 78 */	mr r3, r0
/* 805ACC70  48 00 00 64 */	b lbl_805ACCD4
lbl_805ACC74:
/* 805ACC74  38 60 07 D0 */	li r3, 0x7d0
/* 805ACC78  48 00 00 5C */	b lbl_805ACCD4
lbl_805ACC7C:
/* 805ACC7C  4B E3 DA 95 */	bl mSP_ShopOpen
/* 805ACC80  2C 03 00 03 */	cmpwi r3, 3
/* 805ACC84  41 82 00 44 */	beq lbl_805ACCC8
/* 805ACC88  40 80 00 18 */	bge lbl_805ACCA0
/* 805ACC8C  2C 03 00 02 */	cmpwi r3, 2
/* 805ACC90  40 80 00 40 */	bge lbl_805ACCD0
/* 805ACC94  2C 03 00 00 */	cmpwi r3, 0
/* 805ACC98  40 80 00 18 */	bge lbl_805ACCB0
/* 805ACC9C  48 00 00 34 */	b lbl_805ACCD0
lbl_805ACCA0:
/* 805ACCA0  2C 03 00 05 */	cmpwi r3, 5
/* 805ACCA4  41 82 00 1C */	beq lbl_805ACCC0
/* 805ACCA8  40 80 00 28 */	bge lbl_805ACCD0
/* 805ACCAC  48 00 00 0C */	b lbl_805ACCB8
lbl_805ACCB0:
/* 805ACCB0  38 60 07 D0 */	li r3, 0x7d0
/* 805ACCB4  48 00 00 20 */	b lbl_805ACCD4
lbl_805ACCB8:
/* 805ACCB8  38 60 07 D4 */	li r3, 0x7d4
/* 805ACCBC  48 00 00 18 */	b lbl_805ACCD4
lbl_805ACCC0:
/* 805ACCC0  38 60 07 D9 */	li r3, 0x7d9
/* 805ACCC4  48 00 00 10 */	b lbl_805ACCD4
lbl_805ACCC8:
/* 805ACCC8  38 60 07 D8 */	li r3, 0x7d8
/* 805ACCCC  48 00 00 08 */	b lbl_805ACCD4
lbl_805ACCD0:
/* 805ACCD0  38 60 07 D0 */	li r3, 0x7d0
lbl_805ACCD4:
/* 805ACCD4  4B DE B8 41 */	bl mDemo_Set_msg_num
/* 805ACCD8  38 60 00 00 */	li r3, 0
/* 805ACCDC  4B DE BA 4D */	bl mDemo_Set_talk_display_name
/* 805ACCE0  38 60 00 01 */	li r3, 1
/* 805ACCE4  4B DE BC 3D */	bl mDemo_Set_camera
/* 805ACCE8  38 60 00 01 */	li r3, 1
/* 805ACCEC  4B E3 0D 39 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 805ACCF0  4B DE D6 C5 */	bl mDemo_Set_ListenAble
/* 805ACCF4  38 60 00 91 */	li r3, 0x91
/* 805ACCF8  38 A0 00 3C */	li r5, 0x3c
/* 805ACCFC  38 80 00 28 */	li r4, 0x28
/* 805ACD00  38 00 00 FF */	li r0, 0xff
/* 805ACD04  98 61 00 08 */	stb r3, 8(r1)
/* 805ACD08  38 61 00 08 */	addi r3, r1, 8
/* 805ACD0C  98 A1 00 09 */	stb r5, 9(r1)
/* 805ACD10  98 81 00 0A */	stb r4, 0xa(r1)
/* 805ACD14  98 01 00 0B */	stb r0, 0xb(r1)
/* 805ACD18  4B DE BB B9 */	bl mDemo_Set_talk_window_color
/* 805ACD1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805ACD20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805ACD24  7C 08 03 A6 */	mtlr r0
/* 805ACD28  38 21 00 20 */	addi r1, r1, 0x20
/* 805ACD2C  4E 80 00 20 */	blr 

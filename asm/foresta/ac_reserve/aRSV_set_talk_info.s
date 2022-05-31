lbl_805B8BF4:
/* 805B8BF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B8BF8  7C 08 02 A6 */	mflr r0
/* 805B8BFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B8C00  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805B8C04  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805B8C08  7C 7E 1B 78 */	mr r30, r3
/* 805B8C0C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 805B8C10  2C 00 00 42 */	cmpwi r0, 0x42
/* 805B8C14  40 82 00 10 */	bne lbl_805B8C24
/* 805B8C18  38 60 2B 42 */	li r3, 0x2b42
/* 805B8C1C  4B DD F8 F9 */	bl mDemo_Set_msg_num
/* 805B8C20  48 00 00 80 */	b lbl_805B8CA0
lbl_805B8C24:
/* 805B8C24  2C 00 00 06 */	cmpwi r0, 6
/* 805B8C28  41 80 00 6C */	blt lbl_805B8C94
/* 805B8C2C  2C 00 00 08 */	cmpwi r0, 8
/* 805B8C30  41 81 00 64 */	bgt lbl_805B8C94
/* 805B8C34  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B8C38  38 61 00 14 */	addi r3, r1, 0x14
/* 805B8C3C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B8C40  3F E4 00 02 */	addis r31, r4, 2
/* 805B8C44  A0 9F 06 88 */	lhz r4, 0x688(r31)
/* 805B8C48  4B DF CD 5D */	bl mIN_copy_name_str
/* 805B8C4C  A0 7F 06 88 */	lhz r3, 0x688(r31)
/* 805B8C50  4B DF CE C9 */	bl mIN_get_item_article
/* 805B8C54  7C 7F 1B 78 */	mr r31, r3
/* 805B8C58  4B E0 6A 51 */	bl func_803BF6A8
/* 805B8C5C  7F E7 FB 78 */	mr r7, r31
/* 805B8C60  38 A1 00 14 */	addi r5, r1, 0x14
/* 805B8C64  38 80 00 00 */	li r4, 0
/* 805B8C68  38 C0 00 10 */	li r6, 0x10
/* 805B8C6C  4B E0 70 C1 */	bl mMsg_Set_free_str_art
/* 805B8C70  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D008@ha */
/* 805B8C74  38 61 00 0C */	addi r3, r1, 0xc
/* 805B8C78  38 84 D0 08 */	addi r4, r4, 0xD008 /* 0x0000D008@l */
/* 805B8C7C  4B E1 8E 7D */	bl mNpc_GetActorWorldName
/* 805B8C80  4B E0 6A 29 */	bl func_803BF6A8
/* 805B8C84  38 A1 00 0C */	addi r5, r1, 0xc
/* 805B8C88  38 80 00 01 */	li r4, 1
/* 805B8C8C  38 C0 00 08 */	li r6, 8
/* 805B8C90  4B E0 6F C5 */	bl mMsg_Set_free_str
lbl_805B8C94:
/* 805B8C94  80 7E 02 B8 */	lwz r3, 0x2b8(r30)
/* 805B8C98  38 63 2B 2D */	addi r3, r3, 0x2b2d
/* 805B8C9C  4B DD F8 79 */	bl mDemo_Set_msg_num
lbl_805B8CA0:
/* 805B8CA0  38 60 00 00 */	li r3, 0
/* 805B8CA4  4B DD FA 85 */	bl mDemo_Set_talk_display_name
/* 805B8CA8  38 60 00 01 */	li r3, 1
/* 805B8CAC  4B DD FC 75 */	bl mDemo_Set_camera
/* 805B8CB0  38 60 00 01 */	li r3, 1
/* 805B8CB4  4B E2 4D 71 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 805B8CB8  4B DE 16 FD */	bl mDemo_Set_ListenAble
/* 805B8CBC  38 60 00 91 */	li r3, 0x91
/* 805B8CC0  38 A0 00 3C */	li r5, 0x3c
/* 805B8CC4  38 80 00 28 */	li r4, 0x28
/* 805B8CC8  38 00 00 FF */	li r0, 0xff
/* 805B8CCC  98 61 00 08 */	stb r3, 8(r1)
/* 805B8CD0  38 61 00 08 */	addi r3, r1, 8
/* 805B8CD4  98 A1 00 09 */	stb r5, 9(r1)
/* 805B8CD8  98 81 00 0A */	stb r4, 0xa(r1)
/* 805B8CDC  98 01 00 0B */	stb r0, 0xb(r1)
/* 805B8CE0  4B DD FB F1 */	bl mDemo_Set_talk_window_color
/* 805B8CE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B8CE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805B8CEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805B8CF0  7C 08 03 A6 */	mtlr r0
/* 805B8CF4  38 21 00 30 */	addi r1, r1, 0x30
/* 805B8CF8  4E 80 00 20 */	blr 

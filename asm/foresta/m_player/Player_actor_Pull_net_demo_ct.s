lbl_804F3A2C:
/* 804F3A2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F3A30  7C 08 02 A6 */	mflr r0
/* 804F3A34  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F3A38  39 61 00 30 */	addi r11, r1, 0x30
/* 804F3A3C  4B BA 74 99 */	bl func_8009AED4
/* 804F3A40  7C 7D 1B 78 */	mr r29, r3
/* 804F3A44  4B EC BC 65 */	bl func_803BF6A8
/* 804F3A48  83 DD 0E 70 */	lwz r30, 0xe70(r29)
/* 804F3A4C  7C 7F 1B 78 */	mr r31, r3
/* 804F3A50  88 9D 0E 74 */	lbz r4, 0xe74(r29)
/* 804F3A54  38 60 0A 2C */	li r3, 0xa2c
/* 804F3A58  28 1E 00 00 */	cmplwi r30, 0
/* 804F3A5C  41 82 01 10 */	beq lbl_804F3B6C
/* 804F3A60  7C 80 07 75 */	extsb. r0, r4
/* 804F3A64  80 7D 0F 2C */	lwz r3, 0xf2c(r29)
/* 804F3A68  80 BD 0C F8 */	lwz r5, 0xcf8(r29)
/* 804F3A6C  41 82 00 0C */	beq lbl_804F3A78
/* 804F3A70  38 00 00 01 */	li r0, 1
/* 804F3A74  98 1D 0E 75 */	stb r0, 0xe75(r29)
lbl_804F3A78:
/* 804F3A78  2C 03 00 28 */	cmpwi r3, 0x28
/* 804F3A7C  40 82 00 64 */	bne lbl_804F3AE0
/* 804F3A80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F3A84  38 80 2D 28 */	li r4, 0x2d28
/* 804F3A88  38 E3 85 38 */	addi r7, r3, common_data@l /* 0x81138538@l */
/* 804F3A8C  38 A0 2D 2C */	li r5, 0x2d2c
/* 804F3A90  3C 67 00 02 */	addis r3, r7, 2
/* 804F3A94  38 C0 00 00 */	li r6, 0
/* 804F3A98  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 804F3A9C  1C 00 24 40 */	mulli r0, r0, 0x2440
/* 804F3AA0  7C 67 02 14 */	add r3, r7, r0
/* 804F3AA4  38 63 00 20 */	addi r3, r3, 0x20
/* 804F3AA8  4B EE CE 79 */	bl mPr_GetPossessionItemIdxKindWithCond
/* 804F3AAC  2C 03 FF FF */	cmpwi r3, -1
/* 804F3AB0  40 82 00 0C */	bne lbl_804F3ABC
/* 804F3AB4  38 60 2F 03 */	li r3, 0x2f03
/* 804F3AB8  48 00 00 B4 */	b lbl_804F3B6C
lbl_804F3ABC:
/* 804F3ABC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804F3AC0  54 60 08 3C */	slwi r0, r3, 1
/* 804F3AC4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804F3AC8  3C 63 00 02 */	addis r3, r3, 2
/* 804F3ACC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804F3AD0  7C 63 02 14 */	add r3, r3, r0
/* 804F3AD4  A0 63 00 68 */	lhz r3, 0x68(r3)
/* 804F3AD8  38 63 01 DC */	addi r3, r3, 0x1dc
/* 804F3ADC  48 00 00 90 */	b lbl_804F3B6C
lbl_804F3AE0:
/* 804F3AE0  2C 05 00 2D */	cmpwi r5, 0x2d
/* 804F3AE4  40 82 00 84 */	bne lbl_804F3B68
/* 804F3AE8  80 1D 0D 1C */	lwz r0, 0xd1c(r29)
/* 804F3AEC  2C 00 00 00 */	cmpwi r0, 0
/* 804F3AF0  41 82 00 70 */	beq lbl_804F3B60
/* 804F3AF4  7C 80 07 75 */	extsb. r0, r4
/* 804F3AF8  41 82 00 34 */	beq lbl_804F3B2C
/* 804F3AFC  2C 03 00 00 */	cmpwi r3, 0
/* 804F3B00  41 82 00 18 */	beq lbl_804F3B18
/* 804F3B04  38 61 00 0C */	addi r3, r1, 0xc
/* 804F3B08  38 80 2D 08 */	li r4, 0x2d08
/* 804F3B0C  4B EC 1E 99 */	bl mIN_copy_name_str
/* 804F3B10  38 60 2D 08 */	li r3, 0x2d08
/* 804F3B14  48 00 00 28 */	b lbl_804F3B3C
lbl_804F3B18:
/* 804F3B18  38 61 00 0C */	addi r3, r1, 0xc
/* 804F3B1C  38 80 2D 26 */	li r4, 0x2d26
/* 804F3B20  4B EC 1E 85 */	bl mIN_copy_name_str
/* 804F3B24  38 60 2D 26 */	li r3, 0x2d26
/* 804F3B28  48 00 00 14 */	b lbl_804F3B3C
lbl_804F3B2C:
/* 804F3B2C  A0 9E 02 1C */	lhz r4, 0x21c(r30)
/* 804F3B30  38 61 00 0C */	addi r3, r1, 0xc
/* 804F3B34  4B EC 1E 71 */	bl mIN_copy_name_str
/* 804F3B38  A0 7E 02 1C */	lhz r3, 0x21c(r30)
lbl_804F3B3C:
/* 804F3B3C  4B EC 1F DD */	bl mIN_get_item_article
/* 804F3B40  7C 67 1B 78 */	mr r7, r3
/* 804F3B44  7F E3 FB 78 */	mr r3, r31
/* 804F3B48  38 A1 00 0C */	addi r5, r1, 0xc
/* 804F3B4C  38 80 00 00 */	li r4, 0
/* 804F3B50  38 C0 00 10 */	li r6, 0x10
/* 804F3B54  4B EC C2 FD */	bl mMsg_Set_item_str_art
/* 804F3B58  38 60 0A 4E */	li r3, 0xa4e
/* 804F3B5C  48 00 00 10 */	b lbl_804F3B6C
lbl_804F3B60:
/* 804F3B60  4B FF FE B5 */	bl Player_actor_Get_mushi_msg_num
/* 804F3B64  48 00 00 08 */	b lbl_804F3B6C
lbl_804F3B68:
/* 804F3B68  4B FF FE AD */	bl Player_actor_Get_mushi_msg_num
lbl_804F3B6C:
/* 804F3B6C  4B EA 49 A9 */	bl mDemo_Set_msg_num
/* 804F3B70  38 60 00 00 */	li r3, 0
/* 804F3B74  4B EA 4B B5 */	bl mDemo_Set_talk_display_name
/* 804F3B78  38 60 00 05 */	li r3, 5
/* 804F3B7C  4B EA 4D A5 */	bl mDemo_Set_camera
/* 804F3B80  4B EA 68 35 */	bl mDemo_Set_ListenAble
/* 804F3B84  7F E3 FB 78 */	mr r3, r31
/* 804F3B88  4B EC D1 B9 */	bl mMsg_Set_LockContinue
/* 804F3B8C  38 60 00 B9 */	li r3, 0xb9
/* 804F3B90  38 A0 00 F5 */	li r5, 0xf5
/* 804F3B94  38 80 00 50 */	li r4, 0x50
/* 804F3B98  38 00 00 FF */	li r0, 0xff
/* 804F3B9C  98 61 00 08 */	stb r3, 8(r1)
/* 804F3BA0  38 61 00 08 */	addi r3, r1, 8
/* 804F3BA4  98 A1 00 09 */	stb r5, 9(r1)
/* 804F3BA8  98 81 00 0A */	stb r4, 0xa(r1)
/* 804F3BAC  98 01 00 0B */	stb r0, 0xb(r1)
/* 804F3BB0  4B EA 4D 21 */	bl mDemo_Set_talk_window_color
/* 804F3BB4  4B E8 F9 8D */	bl func_80383540
/* 804F3BB8  4B E8 FF BD */	bl mChoice_Clear_ChoseNum
/* 804F3BBC  38 60 00 28 */	li r3, 0x28
/* 804F3BC0  38 80 01 68 */	li r4, 0x168
/* 804F3BC4  4B E8 7E 0D */	bl mBGMPsComp_make_ps_fanfare
/* 804F3BC8  39 61 00 30 */	addi r11, r1, 0x30
/* 804F3BCC  4B BA 73 55 */	bl func_8009AF20
/* 804F3BD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F3BD4  7C 08 03 A6 */	mtlr r0
/* 804F3BD8  38 21 00 30 */	addi r1, r1, 0x30
/* 804F3BDC  4E 80 00 20 */	blr 

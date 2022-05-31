lbl_804FA4B0:
/* 804FA4B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FA4B4  7C 08 02 A6 */	mflr r0
/* 804FA4B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FA4BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804FA4C0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804FA4C4  7C 7E 1B 78 */	mr r30, r3
/* 804FA4C8  4B EC 51 E1 */	bl func_803BF6A8
/* 804FA4CC  A3 DE 0D 24 */	lhz r30, 0xd24(r30)
/* 804FA4D0  7C 7F 1B 78 */	mr r31, r3
/* 804FA4D4  38 61 00 0C */	addi r3, r1, 0xc
/* 804FA4D8  7F C4 F3 78 */	mr r4, r30
/* 804FA4DC  4B EB B4 C9 */	bl mIN_copy_name_str
/* 804FA4E0  7F C3 F3 78 */	mr r3, r30
/* 804FA4E4  4B EB B6 35 */	bl mIN_get_item_article
/* 804FA4E8  7C 67 1B 78 */	mr r7, r3
/* 804FA4EC  7F E3 FB 78 */	mr r3, r31
/* 804FA4F0  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FA4F4  38 80 00 00 */	li r4, 0
/* 804FA4F8  38 C0 00 10 */	li r6, 0x10
/* 804FA4FC  4B EC 59 55 */	bl mMsg_Set_item_str_art
/* 804FA500  38 60 17 AF */	li r3, 0x17af
/* 804FA504  4B E9 E0 11 */	bl mDemo_Set_msg_num
/* 804FA508  38 60 00 00 */	li r3, 0
/* 804FA50C  4B E9 E2 1D */	bl mDemo_Set_talk_display_name
/* 804FA510  38 60 00 05 */	li r3, 5
/* 804FA514  4B E9 E4 0D */	bl mDemo_Set_camera
/* 804FA518  4B E9 FE 9D */	bl mDemo_Set_ListenAble
/* 804FA51C  7F E3 FB 78 */	mr r3, r31
/* 804FA520  4B EC 68 21 */	bl mMsg_Set_LockContinue
/* 804FA524  38 60 00 B9 */	li r3, 0xb9
/* 804FA528  38 A0 00 F5 */	li r5, 0xf5
/* 804FA52C  38 80 00 50 */	li r4, 0x50
/* 804FA530  38 00 00 FF */	li r0, 0xff
/* 804FA534  98 61 00 08 */	stb r3, 8(r1)
/* 804FA538  38 61 00 08 */	addi r3, r1, 8
/* 804FA53C  98 A1 00 09 */	stb r5, 9(r1)
/* 804FA540  98 81 00 0A */	stb r4, 0xa(r1)
/* 804FA544  98 01 00 0B */	stb r0, 0xb(r1)
/* 804FA548  4B E9 E3 89 */	bl mDemo_Set_talk_window_color
/* 804FA54C  4B E8 8F F5 */	bl func_80383540
/* 804FA550  4B E8 96 25 */	bl mChoice_Clear_ChoseNum
/* 804FA554  38 60 00 28 */	li r3, 0x28
/* 804FA558  38 80 01 68 */	li r4, 0x168
/* 804FA55C  4B E8 14 75 */	bl mBGMPsComp_make_ps_fanfare
/* 804FA560  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FA564  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804FA568  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804FA56C  7C 08 03 A6 */	mtlr r0
/* 804FA570  38 21 00 30 */	addi r1, r1, 0x30
/* 804FA574  4E 80 00 20 */	blr 

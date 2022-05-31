lbl_803EFC90:
/* 803EFC90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EFC94  7C 08 02 A6 */	mflr r0
/* 803EFC98  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EFC9C  39 61 00 20 */	addi r11, r1, 0x20
/* 803EFCA0  4B CA B2 31 */	bl func_8009AED0
/* 803EFCA4  3C A0 80 66 */	lis r5, SubmenuArea_dlftbl@ha /* 0x8065DCEC@ha */
/* 803EFCA8  81 83 00 30 */	lwz r12, 0x30(r3)
/* 803EFCAC  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803EFCB0  7C 7C 1B 78 */	mr r28, r3
/* 803EFCB4  38 05 DC EC */	addi r0, r5, SubmenuArea_dlftbl@l /* 0x8065DCEC@l */
/* 803EFCB8  83 C4 52 F0 */	lwz r30, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 803EFCBC  7C 1F 03 78 */	mr r31, r0
/* 803EFCC0  7D 89 03 A6 */	mtctr r12
/* 803EFCC4  4E 80 04 21 */	bctrl 
/* 803EFCC8  38 80 00 00 */	li r4, 0
/* 803EFCCC  38 00 00 02 */	li r0, 2
/* 803EFCD0  90 9C 00 0C */	stw r4, 0xc(r28)
/* 803EFCD4  38 60 00 01 */	li r3, 1
/* 803EFCD8  90 9C 00 04 */	stw r4, 4(r28)
/* 803EFCDC  90 1C 00 20 */	stw r0, 0x20(r28)
/* 803EFCE0  98 9C 01 62 */	stb r4, 0x162(r28)
/* 803EFCE4  48 01 51 51 */	bl SetGameFrame
/* 803EFCE8  80 1C 00 00 */	lwz r0, 0(r28)
/* 803EFCEC  2C 00 00 04 */	cmpwi r0, 4
/* 803EFCF0  41 82 00 80 */	beq lbl_803EFD70
/* 803EFCF4  4B FC F9 B5 */	bl func_803BF6A8
/* 803EFCF8  38 00 00 00 */	li r0, 0
/* 803EFCFC  7C 7D 1B 78 */	mr r29, r3
/* 803EFD00  90 1C 00 00 */	stw r0, 0(r28)
/* 803EFD04  38 7E 01 10 */	addi r3, r30, 0x110
/* 803EFD08  48 00 0B F1 */	bl mSc_dmacopy_all_exchange_bank
/* 803EFD0C  7F E3 FB 78 */	mr r3, r31
/* 803EFD10  7F 84 E3 78 */	mr r4, r28
/* 803EFD14  4B FF F7 A5 */	bl SubmenuArea_DoUnlink
/* 803EFD18  7F 83 E3 78 */	mr r3, r28
/* 803EFD1C  4B FF F8 E1 */	bl load_player
/* 803EFD20  7F C3 F3 78 */	mr r3, r30
/* 803EFD24  4B FF F7 5D */	bl mSM_load_player_anime
/* 803EFD28  38 00 00 01 */	li r0, 1
/* 803EFD2C  98 1C 01 66 */	stb r0, 0x166(r28)
/* 803EFD30  88 1C 01 63 */	lbz r0, 0x163(r28)
/* 803EFD34  28 00 00 0C */	cmplwi r0, 0xc
/* 803EFD38  40 82 00 10 */	bne lbl_803EFD48
/* 803EFD3C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 803EFD40  80 63 02 D4 */	lwz r3, 0x2d4(r3)
/* 803EFD44  4B FE A1 91 */	bl mPlib_request_main_demo_wait_from_submenu
lbl_803EFD48:
/* 803EFD48  7F A3 EB 78 */	mr r3, r29
/* 803EFD4C  4B FC FA 8D */	bl mMsg_Check_main_hide
/* 803EFD50  2C 03 00 00 */	cmpwi r3, 0
/* 803EFD54  40 82 00 1C */	bne lbl_803EFD70
/* 803EFD58  7F A3 EB 78 */	mr r3, r29
/* 803EFD5C  4B FC FA 09 */	bl mMsg_Check_not_series_main_wait
/* 803EFD60  2C 03 00 00 */	cmpwi r3, 0
/* 803EFD64  41 82 00 0C */	beq lbl_803EFD70
/* 803EFD68  7F A3 EB 78 */	mr r3, r29
/* 803EFD6C  4B FD 27 A9 */	bl mMsg_sound_spec_change_voice
lbl_803EFD70:
/* 803EFD70  39 61 00 20 */	addi r11, r1, 0x20
/* 803EFD74  4B CA B1 A9 */	bl func_8009AF1C
/* 803EFD78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EFD7C  7C 08 03 A6 */	mtlr r0
/* 803EFD80  38 21 00 20 */	addi r1, r1, 0x20
/* 803EFD84  4E 80 00 20 */	blr 

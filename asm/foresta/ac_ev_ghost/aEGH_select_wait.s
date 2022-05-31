lbl_8051FAA4:
/* 8051FAA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051FAA8  7C 08 02 A6 */	mflr r0
/* 8051FAAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051FAB0  39 61 00 30 */	addi r11, r1, 0x30
/* 8051FAB4  4B B7 B4 21 */	bl func_8009AED4
/* 8051FAB8  7C 7D 1B 78 */	mr r29, r3
/* 8051FABC  38 60 00 04 */	li r3, 4
/* 8051FAC0  38 80 00 09 */	li r4, 9
/* 8051FAC4  4B E7 89 B9 */	bl mDemo_Get_OrderValue
/* 8051FAC8  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 8051FACC  4B E9 FB DD */	bl func_803BF6A8
/* 8051FAD0  7C 60 1B 78 */	mr r0, r3
/* 8051FAD4  38 60 00 72 */	li r3, 0x72
/* 8051FAD8  7C 1E 03 78 */	mr r30, r0
/* 8051FADC  38 80 00 36 */	li r4, 0x36
/* 8051FAE0  4B E7 E2 ED */	bl mEv_get_save_area
/* 8051FAE4  2C 1F 00 01 */	cmpwi r31, 1
/* 8051FAE8  7C 7F 1B 78 */	mr r31, r3
/* 8051FAEC  40 82 01 44 */	bne lbl_8051FC30
/* 8051FAF0  4B E9 FB B9 */	bl func_803BF6A8
/* 8051FAF4  4B EA 11 A5 */	bl mMsg_Check_MainNormalContinue
/* 8051FAF8  2C 03 00 00 */	cmpwi r3, 0
/* 8051FAFC  41 82 01 34 */	beq lbl_8051FC30
/* 8051FB00  38 00 00 01 */	li r0, 1
/* 8051FB04  38 60 00 04 */	li r3, 4
/* 8051FB08  98 1D 09 A4 */	stb r0, 0x9a4(r29)
/* 8051FB0C  38 80 00 09 */	li r4, 9
/* 8051FB10  38 A0 00 00 */	li r5, 0
/* 8051FB14  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8051FB18  60 00 80 00 */	ori r0, r0, 0x8000
/* 8051FB1C  B0 1F 00 02 */	sth r0, 2(r31)
/* 8051FB20  4B E7 89 19 */	bl mDemo_Set_OrderValue
/* 8051FB24  4B E6 3A 1D */	bl func_80383540
/* 8051FB28  4B E6 40 45 */	bl mChoice_Get_ChoseNum
/* 8051FB2C  2C 03 00 01 */	cmpwi r3, 1
/* 8051FB30  41 82 00 A8 */	beq lbl_8051FBD8
/* 8051FB34  40 80 00 10 */	bge lbl_8051FB44
/* 8051FB38  2C 03 00 00 */	cmpwi r3, 0
/* 8051FB3C  40 80 00 14 */	bge lbl_8051FB50
/* 8051FB40  48 00 00 F0 */	b lbl_8051FC30
lbl_8051FB44:
/* 8051FB44  2C 03 00 03 */	cmpwi r3, 3
/* 8051FB48  40 80 00 E8 */	bge lbl_8051FC30
/* 8051FB4C  48 00 00 A4 */	b lbl_8051FBF0
lbl_8051FB50:
/* 8051FB50  38 60 00 08 */	li r3, 8
/* 8051FB54  38 80 00 0A */	li r4, 0xa
/* 8051FB58  4B E8 86 79 */	bl mFI_GetItemNumField
/* 8051FB5C  28 03 00 32 */	cmplwi r3, 0x32
/* 8051FB60  40 80 00 14 */	bge lbl_8051FB74
/* 8051FB64  7F C3 F3 78 */	mr r3, r30
/* 8051FB68  38 80 2E F1 */	li r4, 0x2ef1
/* 8051FB6C  4B EA 04 59 */	bl mMsg_Set_continue_msg_num
/* 8051FB70  48 00 00 58 */	b lbl_8051FBC8
lbl_8051FB74:
/* 8051FB74  28 03 00 96 */	cmplwi r3, 0x96
/* 8051FB78  40 80 00 14 */	bge lbl_8051FB8C
/* 8051FB7C  7F C3 F3 78 */	mr r3, r30
/* 8051FB80  38 80 2E F2 */	li r4, 0x2ef2
/* 8051FB84  4B EA 04 41 */	bl mMsg_Set_continue_msg_num
/* 8051FB88  48 00 00 40 */	b lbl_8051FBC8
lbl_8051FB8C:
/* 8051FB8C  28 03 01 C2 */	cmplwi r3, 0x1c2
/* 8051FB90  40 80 00 14 */	bge lbl_8051FBA4
/* 8051FB94  7F C3 F3 78 */	mr r3, r30
/* 8051FB98  38 80 2E F3 */	li r4, 0x2ef3
/* 8051FB9C  4B EA 04 29 */	bl mMsg_Set_continue_msg_num
/* 8051FBA0  48 00 00 28 */	b lbl_8051FBC8
lbl_8051FBA4:
/* 8051FBA4  28 03 03 84 */	cmplwi r3, 0x384
/* 8051FBA8  40 80 00 14 */	bge lbl_8051FBBC
/* 8051FBAC  7F C3 F3 78 */	mr r3, r30
/* 8051FBB0  38 80 2E F4 */	li r4, 0x2ef4
/* 8051FBB4  4B EA 04 11 */	bl mMsg_Set_continue_msg_num
/* 8051FBB8  48 00 00 10 */	b lbl_8051FBC8
lbl_8051FBBC:
/* 8051FBBC  7F C3 F3 78 */	mr r3, r30
/* 8051FBC0  38 80 2E F5 */	li r4, 0x2ef5
/* 8051FBC4  4B EA 04 01 */	bl mMsg_Set_continue_msg_num
lbl_8051FBC8:
/* 8051FBC8  7F A3 EB 78 */	mr r3, r29
/* 8051FBCC  38 80 00 05 */	li r4, 5
/* 8051FBD0  48 00 02 21 */	bl aEGH_change_talk_proc
/* 8051FBD4  48 00 00 5C */	b lbl_8051FC30
lbl_8051FBD8:
/* 8051FBD8  7F A3 EB 78 */	mr r3, r29
/* 8051FBDC  38 80 00 03 */	li r4, 3
/* 8051FBE0  48 00 02 11 */	bl aEGH_change_talk_proc
/* 8051FBE4  38 00 00 00 */	li r0, 0
/* 8051FBE8  98 1D 09 AB */	stb r0, 0x9ab(r29)
/* 8051FBEC  48 00 00 44 */	b lbl_8051FC30
lbl_8051FBF0:
/* 8051FBF0  7F A3 EB 78 */	mr r3, r29
/* 8051FBF4  38 80 00 04 */	li r4, 4
/* 8051FBF8  48 00 01 F9 */	bl aEGH_change_talk_proc
/* 8051FBFC  4B FF FC 09 */	bl aEGH_not_collect_get
/* 8051FC00  B0 7D 09 9C */	sth r3, 0x99c(r29)
/* 8051FC04  38 61 00 08 */	addi r3, r1, 8
/* 8051FC08  A0 9D 09 9C */	lhz r4, 0x99c(r29)
/* 8051FC0C  4B E9 5D 99 */	bl mIN_copy_name_str
/* 8051FC10  A0 7D 09 9C */	lhz r3, 0x99c(r29)
/* 8051FC14  4B E9 5F 05 */	bl mIN_get_item_article
/* 8051FC18  7C 67 1B 78 */	mr r7, r3
/* 8051FC1C  7F C3 F3 78 */	mr r3, r30
/* 8051FC20  38 A1 00 08 */	addi r5, r1, 8
/* 8051FC24  38 80 00 00 */	li r4, 0
/* 8051FC28  38 C0 00 10 */	li r6, 0x10
/* 8051FC2C  4B EA 02 25 */	bl mMsg_Set_item_str_art
lbl_8051FC30:
/* 8051FC30  39 61 00 30 */	addi r11, r1, 0x30
/* 8051FC34  4B B7 B2 ED */	bl func_8009AF20
/* 8051FC38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051FC3C  7C 08 03 A6 */	mtlr r0
/* 8051FC40  38 21 00 30 */	addi r1, r1, 0x30
/* 8051FC44  4E 80 00 20 */	blr 

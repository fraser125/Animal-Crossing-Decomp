lbl_8042FB18:
/* 8042FB18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042FB1C  7C 08 02 A6 */	mflr r0
/* 8042FB20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042FB24  39 61 00 20 */	addi r11, r1, 0x20
/* 8042FB28  4B C6 B3 AD */	bl func_8009AED4
/* 8042FB2C  7C 7D 1B 78 */	mr r29, r3
/* 8042FB30  3C 7D 00 01 */	addis r3, r29, 1
/* 8042FB34  80 03 4D 24 */	lwz r0, 0x4d24(r3)
/* 8042FB38  54 00 10 3A */	slwi r0, r0, 2
/* 8042FB3C  7C 63 02 14 */	add r3, r3, r0
/* 8042FB40  AB C3 4D 2A */	lha r30, 0x4d2a(r3)
/* 8042FB44  A8 63 4D 28 */	lha r3, 0x4d28(r3)
/* 8042FB48  4B F9 95 21 */	bl mNT_FishIdx2FishItemNo
/* 8042FB4C  3C 80 81 1D */	lis r4, item_name@ha /* 0x811CDFBC@ha */
/* 8042FB50  7C 7F 1B 78 */	mr r31, r3
/* 8042FB54  38 64 DF BC */	addi r3, r4, item_name@l /* 0x811CDFBC@l */
/* 8042FB58  7F E4 FB 78 */	mr r4, r31
/* 8042FB5C  4B F8 5E 49 */	bl mIN_copy_name_str
/* 8042FB60  7F E3 FB 78 */	mr r3, r31
/* 8042FB64  4B F8 5F B5 */	bl mIN_get_item_article
/* 8042FB68  7C 7F 1B 78 */	mr r31, r3
/* 8042FB6C  4B F8 FB 3D */	bl func_803BF6A8
/* 8042FB70  3C 80 81 1D */	lis r4, item_name@ha /* 0x811CDFBC@ha */
/* 8042FB74  7F E7 FB 78 */	mr r7, r31
/* 8042FB78  38 A4 DF BC */	addi r5, r4, item_name@l /* 0x811CDFBC@l */
/* 8042FB7C  38 C0 00 10 */	li r6, 0x10
/* 8042FB80  38 80 00 00 */	li r4, 0
/* 8042FB84  4B F9 02 CD */	bl mMsg_Set_item_str_art
/* 8042FB88  2C 1E 00 01 */	cmpwi r30, 1
/* 8042FB8C  41 80 00 34 */	blt lbl_8042FBC0
/* 8042FB90  2C 1E 00 04 */	cmpwi r30, 4
/* 8042FB94  41 81 00 2C */	bgt lbl_8042FBC0
/* 8042FB98  4B F8 FB 11 */	bl func_803BF6A8
/* 8042FB9C  38 1E FF FF */	addi r0, r30, -1
/* 8042FBA0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8042FBA4  1C E0 24 40 */	mulli r7, r0, 0x2440
/* 8042FBA8  38 80 00 00 */	li r4, 0
/* 8042FBAC  38 05 85 38 */	addi r0, r5, common_data@l /* 0x81138538@l */
/* 8042FBB0  38 C0 00 08 */	li r6, 8
/* 8042FBB4  7C A0 3A 14 */	add r5, r0, r7
/* 8042FBB8  38 A5 00 20 */	addi r5, r5, 0x20
/* 8042FBBC  4B F9 00 99 */	bl mMsg_Set_free_str
lbl_8042FBC0:
/* 8042FBC0  3C 9D 00 01 */	addis r4, r29, 1
/* 8042FBC4  80 64 4D 20 */	lwz r3, 0x4d20(r4)
/* 8042FBC8  80 84 4D 24 */	lwz r4, 0x4d24(r4)
/* 8042FBCC  38 03 FF FF */	addi r0, r3, -1
/* 8042FBD0  7C 04 00 00 */	cmpw r4, r0
/* 8042FBD4  40 80 00 24 */	bge lbl_8042FBF8
/* 8042FBD8  2C 1E 00 01 */	cmpwi r30, 1
/* 8042FBDC  41 80 00 14 */	blt lbl_8042FBF0
/* 8042FBE0  2C 1E 00 04 */	cmpwi r30, 4
/* 8042FBE4  41 81 00 0C */	bgt lbl_8042FBF0
/* 8042FBE8  38 60 2F A2 */	li r3, 0x2fa2
/* 8042FBEC  48 00 00 28 */	b lbl_8042FC14
lbl_8042FBF0:
/* 8042FBF0  38 60 2F A3 */	li r3, 0x2fa3
/* 8042FBF4  48 00 00 20 */	b lbl_8042FC14
lbl_8042FBF8:
/* 8042FBF8  2C 1E 00 01 */	cmpwi r30, 1
/* 8042FBFC  41 80 00 14 */	blt lbl_8042FC10
/* 8042FC00  2C 1E 00 04 */	cmpwi r30, 4
/* 8042FC04  41 81 00 0C */	bgt lbl_8042FC10
/* 8042FC08  38 60 2F 9F */	li r3, 0x2f9f
/* 8042FC0C  48 00 00 08 */	b lbl_8042FC14
lbl_8042FC10:
/* 8042FC10  38 60 2F A0 */	li r3, 0x2fa0
lbl_8042FC14:
/* 8042FC14  39 61 00 20 */	addi r11, r1, 0x20
/* 8042FC18  4B C6 B3 09 */	bl func_8009AF20
/* 8042FC1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042FC20  7C 08 03 A6 */	mtlr r0
/* 8042FC24  38 21 00 20 */	addi r1, r1, 0x20
/* 8042FC28  4E 80 00 20 */	blr 

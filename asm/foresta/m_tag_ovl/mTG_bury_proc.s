lbl_805F7574:
/* 805F7574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F7578  7C 08 02 A6 */	mflr r0
/* 805F757C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F7580  39 61 00 20 */	addi r11, r1, 0x20
/* 805F7584  4B AA 39 45 */	bl func_8009AEC8
/* 805F7588  7C 7A 1B 78 */	mr r26, r3
/* 805F758C  7C 9B 23 78 */	mr r27, r4
/* 805F7590  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805F7594  80 64 09 7C */	lwz r3, 0x97c(r4)
/* 805F7598  83 C4 09 88 */	lwz r30, 0x988(r4)
/* 805F759C  38 63 00 08 */	addi r3, r3, 8
/* 805F75A0  4B FF 85 C1 */	bl mTG_get_table_idx
/* 805F75A4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F75A8  7C 7D 1B 78 */	mr r29, r3
/* 805F75AC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805F75B0  3F E4 00 02 */	addis r31, r4, 2
/* 805F75B4  57 A0 08 3C */	slwi r0, r29, 1
/* 805F75B8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F75BC  7C 63 02 14 */	add r3, r3, r0
/* 805F75C0  A3 83 00 68 */	lhz r28, 0x68(r3)
/* 805F75C4  7F 83 E3 78 */	mr r3, r28
/* 805F75C8  4B FF DB 65 */	bl mTG_island_check_plant_plant
/* 805F75CC  7F 83 E3 78 */	mr r3, r28
/* 805F75D0  4B FF DB B1 */	bl mTG_island_check_fruit_plant
/* 805F75D4  4B DA FB 05 */	bl mFI_CheckInIsland
/* 805F75D8  2C 03 00 00 */	cmpwi r3, 0
/* 805F75DC  41 82 00 3C */	beq lbl_805F7618
/* 805F75E0  7F 83 E3 78 */	mr r3, r28
/* 805F75E4  38 80 00 00 */	li r4, 0
/* 805F75E8  38 A0 00 11 */	li r5, 0x11
/* 805F75EC  38 C0 00 00 */	li r6, 0
/* 805F75F0  4B DF 12 D1 */	bl mSP_SearchItemCategoryPriority
/* 805F75F4  2C 03 00 00 */	cmpwi r3, 0
/* 805F75F8  40 82 00 68 */	bne lbl_805F7660
/* 805F75FC  7F 83 E3 78 */	mr r3, r28
/* 805F7600  38 80 00 00 */	li r4, 0
/* 805F7604  38 A0 00 0F */	li r5, 0xf
/* 805F7608  38 C0 00 00 */	li r6, 0
/* 805F760C  4B DF 12 B5 */	bl mSP_SearchItemCategoryPriority
/* 805F7610  2C 03 00 00 */	cmpwi r3, 0
/* 805F7614  40 82 00 4C */	bne lbl_805F7660
lbl_805F7618:
/* 805F7618  7F 84 E3 78 */	mr r4, r28
/* 805F761C  38 7E 03 C8 */	addi r3, r30, 0x3c8
/* 805F7620  38 A0 00 00 */	li r5, 0
/* 805F7624  4B DE 23 21 */	bl mPlib_request_main_putin_scoop_from_submenu
/* 805F7628  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F762C  7F A4 EB 78 */	mr r4, r29
/* 805F7630  38 A0 00 00 */	li r5, 0
/* 805F7634  38 C0 00 00 */	li r6, 0
/* 805F7638  4B DE 97 F1 */	bl mPr_SetPossessionItem
/* 805F763C  7F 43 D3 78 */	mr r3, r26
/* 805F7640  38 80 00 00 */	li r4, 0
/* 805F7644  38 A0 00 00 */	li r5, 0
/* 805F7648  4B FF 81 6D */	bl mTG_return_tag_init
/* 805F764C  7F 43 D3 78 */	mr r3, r26
/* 805F7650  7F 64 DB 78 */	mr r4, r27
/* 805F7654  38 A0 00 01 */	li r5, 1
/* 805F7658  4B FF B9 BD */	bl mTG_close_window
/* 805F765C  48 00 00 14 */	b lbl_805F7670
lbl_805F7660:
/* 805F7660  7F 43 D3 78 */	mr r3, r26
/* 805F7664  7F 64 DB 78 */	mr r4, r27
/* 805F7668  38 A0 00 18 */	li r5, 0x18
/* 805F766C  4B FF B7 B5 */	bl mTG_open_warning_window
lbl_805F7670:
/* 805F7670  39 61 00 20 */	addi r11, r1, 0x20
/* 805F7674  4B AA 38 A1 */	bl func_8009AF14
/* 805F7678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F767C  7C 08 03 A6 */	mtlr r0
/* 805F7680  38 21 00 20 */	addi r1, r1, 0x20
/* 805F7684  4E 80 00 20 */	blr 

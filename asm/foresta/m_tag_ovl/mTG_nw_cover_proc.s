lbl_805F49A4:
/* 805F49A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F49A8  7C 08 02 A6 */	mflr r0
/* 805F49AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F49B0  39 61 00 30 */	addi r11, r1, 0x30
/* 805F49B4  4B AA 65 11 */	bl func_8009AEC4
/* 805F49B8  7C 7C 1B 78 */	mr r28, r3
/* 805F49BC  7C 9D 23 78 */	mr r29, r4
/* 805F49C0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F49C4  83 63 09 7C */	lwz r27, 0x97c(r3)
/* 805F49C8  83 E3 09 88 */	lwz r31, 0x988(r3)
/* 805F49CC  38 7B 00 08 */	addi r3, r27, 8
/* 805F49D0  4B FF B1 91 */	bl mTG_get_table_idx
/* 805F49D4  80 1B 02 64 */	lwz r0, 0x264(r27)
/* 805F49D8  7C 7A 1B 78 */	mr r26, r3
/* 805F49DC  3B C0 00 01 */	li r30, 1
/* 805F49E0  3B 20 00 00 */	li r25, 0
/* 805F49E4  2C 00 00 01 */	cmpwi r0, 1
/* 805F49E8  40 82 00 08 */	bne lbl_805F49F0
/* 805F49EC  3B 20 00 01 */	li r25, 1
lbl_805F49F0:
/* 805F49F0  4B DF 25 31 */	bl mRmTp_CheckWallIsMyOriginalInThisScene
/* 805F49F4  2C 03 00 00 */	cmpwi r3, 0
/* 805F49F8  41 82 00 7C */	beq lbl_805F4A74
/* 805F49FC  2C 19 00 00 */	cmpwi r25, 0
/* 805F4A00  41 82 00 3C */	beq lbl_805F4A3C
/* 805F4A04  7F 83 E3 78 */	mr r3, r28
/* 805F4A08  7F 44 D3 78 */	mr r4, r26
/* 805F4A0C  4B FF 4E 15 */	bl mNW_get_image_no
/* 805F4A10  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F4A14  54 65 07 7E */	clrlwi r5, r3, 0x1d
/* 805F4A18  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805F4A1C  3C 83 00 02 */	addis r4, r3, 2
/* 805F4A20  38 65 00 48 */	addi r3, r5, 0x48
/* 805F4A24  80 A4 60 A8 */	lwz r5, 0x60a8(r4)
/* 805F4A28  38 80 00 01 */	li r4, 1
/* 805F4A2C  81 85 00 14 */	lwz r12, 0x14(r5)
/* 805F4A30  7D 89 03 A6 */	mtctr r12
/* 805F4A34  4E 80 04 21 */	bctrl 
/* 805F4A38  48 00 00 FC */	b lbl_805F4B34
lbl_805F4A3C:
/* 805F4A3C  7F 83 E3 78 */	mr r3, r28
/* 805F4A40  7F 44 D3 78 */	mr r4, r26
/* 805F4A44  4B FF 4D DD */	bl mNW_get_image_no
/* 805F4A48  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F4A4C  54 65 07 7E */	clrlwi r5, r3, 0x1d
/* 805F4A50  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805F4A54  3C 83 00 02 */	addis r4, r3, 2
/* 805F4A58  38 65 00 48 */	addi r3, r5, 0x48
/* 805F4A5C  80 A4 60 A8 */	lwz r5, 0x60a8(r4)
/* 805F4A60  38 80 00 00 */	li r4, 0
/* 805F4A64  81 85 00 14 */	lwz r12, 0x14(r5)
/* 805F4A68  7D 89 03 A6 */	mtctr r12
/* 805F4A6C  4E 80 04 21 */	bctrl 
/* 805F4A70  48 00 00 C4 */	b lbl_805F4B34
lbl_805F4A74:
/* 805F4A74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F4A78  38 80 00 00 */	li r4, 0
/* 805F4A7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F4A80  3F 63 00 02 */	addis r27, r3, 2
/* 805F4A84  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 805F4A88  4B DE BC A1 */	bl mPr_GetPossessionItemIdx
/* 805F4A8C  2C 03 00 00 */	cmpwi r3, 0
/* 805F4A90  41 80 00 90 */	blt lbl_805F4B20
/* 805F4A94  2C 19 00 00 */	cmpwi r25, 0
/* 805F4A98  54 63 08 3C */	slwi r3, r3, 1
/* 805F4A9C  83 7B 61 3C */	lwz r27, 0x613c(r27)
/* 805F4AA0  3B 23 00 68 */	addi r25, r3, 0x68
/* 805F4AA4  41 82 00 40 */	beq lbl_805F4AE4
/* 805F4AA8  7F 83 E3 78 */	mr r3, r28
/* 805F4AAC  7F 44 D3 78 */	mr r4, r26
/* 805F4AB0  4B FF 4D 71 */	bl mNW_get_image_no
/* 805F4AB4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F4AB8  54 65 07 7E */	clrlwi r5, r3, 0x1d
/* 805F4ABC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805F4AC0  3C 83 00 02 */	addis r4, r3, 2
/* 805F4AC4  38 65 00 48 */	addi r3, r5, 0x48
/* 805F4AC8  80 A4 60 A8 */	lwz r5, 0x60a8(r4)
/* 805F4ACC  38 80 00 01 */	li r4, 1
/* 805F4AD0  81 85 00 14 */	lwz r12, 0x14(r5)
/* 805F4AD4  7D 89 03 A6 */	mtctr r12
/* 805F4AD8  4E 80 04 21 */	bctrl 
/* 805F4ADC  7C 7B CB 2E */	sthx r3, r27, r25
/* 805F4AE0  48 00 00 54 */	b lbl_805F4B34
lbl_805F4AE4:
/* 805F4AE4  7F 83 E3 78 */	mr r3, r28
/* 805F4AE8  7F 44 D3 78 */	mr r4, r26
/* 805F4AEC  4B FF 4D 35 */	bl mNW_get_image_no
/* 805F4AF0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F4AF4  54 65 07 7E */	clrlwi r5, r3, 0x1d
/* 805F4AF8  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805F4AFC  3C 83 00 02 */	addis r4, r3, 2
/* 805F4B00  38 65 00 48 */	addi r3, r5, 0x48
/* 805F4B04  80 A4 60 A8 */	lwz r5, 0x60a8(r4)
/* 805F4B08  38 80 00 00 */	li r4, 0
/* 805F4B0C  81 85 00 14 */	lwz r12, 0x14(r5)
/* 805F4B10  7D 89 03 A6 */	mtctr r12
/* 805F4B14  4E 80 04 21 */	bctrl 
/* 805F4B18  7C 7B CB 2E */	sthx r3, r27, r25
/* 805F4B1C  48 00 00 18 */	b lbl_805F4B34
lbl_805F4B20:
/* 805F4B20  7F 83 E3 78 */	mr r3, r28
/* 805F4B24  7F A4 EB 78 */	mr r4, r29
/* 805F4B28  38 A0 00 12 */	li r5, 0x12
/* 805F4B2C  4B FF E2 F5 */	bl mTG_open_warning_window
/* 805F4B30  3B C0 00 00 */	li r30, 0
lbl_805F4B34:
/* 805F4B34  2C 1E 00 00 */	cmpwi r30, 0
/* 805F4B38  41 82 00 34 */	beq lbl_805F4B6C
/* 805F4B3C  28 1F 00 00 */	cmplwi r31, 0
/* 805F4B40  41 82 00 0C */	beq lbl_805F4B4C
/* 805F4B44  38 00 00 01 */	li r0, 1
/* 805F4B48  98 1F 05 EA */	stb r0, 0x5ea(r31)
lbl_805F4B4C:
/* 805F4B4C  7F 83 E3 78 */	mr r3, r28
/* 805F4B50  38 80 00 00 */	li r4, 0
/* 805F4B54  38 A0 00 00 */	li r5, 0
/* 805F4B58  4B FF AC 5D */	bl mTG_return_tag_init
/* 805F4B5C  7F 83 E3 78 */	mr r3, r28
/* 805F4B60  7F A4 EB 78 */	mr r4, r29
/* 805F4B64  38 A0 00 00 */	li r5, 0
/* 805F4B68  4B FF E4 AD */	bl mTG_close_window
lbl_805F4B6C:
/* 805F4B6C  39 61 00 30 */	addi r11, r1, 0x30
/* 805F4B70  4B AA 63 A1 */	bl func_8009AF10
/* 805F4B74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F4B78  7C 08 03 A6 */	mtlr r0
/* 805F4B7C  38 21 00 30 */	addi r1, r1, 0x30
/* 805F4B80  4E 80 00 20 */	blr 

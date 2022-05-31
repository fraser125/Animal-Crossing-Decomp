lbl_803E3950:
/* 803E3950  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 803E3954  7C 08 02 A6 */	mflr r0
/* 803E3958  90 01 01 54 */	stw r0, 0x154(r1)
/* 803E395C  39 61 01 50 */	addi r11, r1, 0x150
/* 803E3960  4B CB 75 69 */	bl func_8009AEC8
/* 803E3964  7C 7A 1B 78 */	mr r26, r3
/* 803E3968  7C 9B 23 78 */	mr r27, r4
/* 803E396C  3B DA 00 0E */	addi r30, r26, 0xe
/* 803E3970  3B 80 00 00 */	li r28, 0
/* 803E3974  7F C3 F3 78 */	mr r3, r30
/* 803E3978  4B FF C6 CD */	bl mPr_NullCheckPersonalID
/* 803E397C  2C 03 00 00 */	cmpwi r3, 0
/* 803E3980  40 82 00 8C */	bne lbl_803E3A0C
/* 803E3984  7F C3 F3 78 */	mr r3, r30
/* 803E3988  4B FF CD 21 */	bl mPr_GetPrivateIdx
/* 803E398C  2C 03 FF FF */	cmpwi r3, -1
/* 803E3990  41 82 00 7C */	beq lbl_803E3A0C
/* 803E3994  4B FC FC 25 */	bl mHS_get_arrange_idx
/* 803E3998  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803E399C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E39A0  7F C3 F3 78 */	mr r3, r30
/* 803E39A4  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803E39A8  7C 80 2A 14 */	add r4, r0, r5
/* 803E39AC  3F A4 00 01 */	addis r29, r4, 1
/* 803E39B0  3B BD 9C E8 */	addi r29, r29, -25368
/* 803E39B4  7F A4 EB 78 */	mr r4, r29
/* 803E39B8  4B FF C7 8D */	bl mPr_CheckCmpPersonalID
/* 803E39BC  2C 03 00 01 */	cmpwi r3, 1
/* 803E39C0  40 82 00 4C */	bne lbl_803E3A0C
/* 803E39C4  38 7D 1A 30 */	addi r3, r29, 0x1a30
/* 803E39C8  38 80 00 0A */	li r4, 0xa
/* 803E39CC  4B FD 8E D9 */	bl mMl_chk_mail_free_space
/* 803E39D0  7C 7F 1B 78 */	mr r31, r3
/* 803E39D4  2C 1F FF FF */	cmpwi r31, -1
/* 803E39D8  41 82 00 34 */	beq lbl_803E3A0C
/* 803E39DC  88 DA 00 24 */	lbz r6, 0x24(r26)
/* 803E39E0  7F C4 F3 78 */	mr r4, r30
/* 803E39E4  A0 FA 00 26 */	lhz r7, 0x26(r26)
/* 803E39E8  7F 65 DB 78 */	mr r5, r27
/* 803E39EC  38 61 00 08 */	addi r3, r1, 8
/* 803E39F0  4B FF FE 4D */	bl mQst_GetRemailData
/* 803E39F4  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 803E39F8  38 81 00 08 */	addi r4, r1, 8
/* 803E39FC  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 803E3A00  7C 7D 1A 14 */	add r3, r29, r3
/* 803E3A04  4B FD 8F 71 */	bl mMl_copy_mail
/* 803E3A08  3B 80 00 01 */	li r28, 1
lbl_803E3A0C:
/* 803E3A0C  7F 83 E3 78 */	mr r3, r28
/* 803E3A10  39 61 01 50 */	addi r11, r1, 0x150
/* 803E3A14  4B CB 75 01 */	bl func_8009AF14
/* 803E3A18  80 01 01 54 */	lwz r0, 0x154(r1)
/* 803E3A1C  7C 08 03 A6 */	mtlr r0
/* 803E3A20  38 21 01 50 */	addi r1, r1, 0x150
/* 803E3A24  4E 80 00 20 */	blr 

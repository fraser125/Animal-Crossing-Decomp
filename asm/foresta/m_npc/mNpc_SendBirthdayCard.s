lbl_803CE364:
/* 803CE364  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CE368  7C 08 02 A6 */	mflr r0
/* 803CE36C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CE370  39 61 00 20 */	addi r11, r1, 0x20
/* 803CE374  4B CC CB 55 */	bl func_8009AEC8
/* 803CE378  3C C0 81 17 */	lis r6, l_npc_mail@ha /* 0x8116B428@ha */
/* 803CE37C  7C 7A 1B 78 */	mr r26, r3
/* 803CE380  38 06 B4 28 */	addi r0, r6, l_npc_mail@l /* 0x8116B428@l */
/* 803CE384  7C BB 2B 78 */	mr r27, r5
/* 803CE388  7C 83 23 78 */	mr r3, r4
/* 803CE38C  3B 80 00 00 */	li r28, 0
/* 803CE390  7C 1E 03 78 */	mr r30, r0
/* 803CE394  4B FE 52 25 */	bl mHS_get_arrange_idx
/* 803CE398  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803CE39C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CE3A0  7F 43 D3 78 */	mr r3, r26
/* 803CE3A4  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803CE3A8  7C 80 2A 14 */	add r4, r0, r5
/* 803CE3AC  3F A4 00 01 */	addis r29, r4, 1
/* 803CE3B0  3B BD 9C E8 */	addi r29, r29, -25368
/* 803CE3B4  48 01 1C 91 */	bl mPr_NullCheckPersonalID
/* 803CE3B8  2C 03 00 00 */	cmpwi r3, 0
/* 803CE3BC  40 82 00 90 */	bne lbl_803CE44C
/* 803CE3C0  7F 43 D3 78 */	mr r3, r26
/* 803CE3C4  7F A4 EB 78 */	mr r4, r29
/* 803CE3C8  48 01 1D 7D */	bl mPr_CheckCmpPersonalID
/* 803CE3CC  2C 03 00 01 */	cmpwi r3, 1
/* 803CE3D0  40 82 00 7C */	bne lbl_803CE44C
/* 803CE3D4  7F C3 F3 78 */	mr r3, r30
/* 803CE3D8  4B FE E3 29 */	bl mMl_clear_mail
/* 803CE3DC  38 7D 1A 30 */	addi r3, r29, 0x1a30
/* 803CE3E0  38 80 00 0A */	li r4, 0xa
/* 803CE3E4  4B FE E4 C1 */	bl mMl_chk_mail_free_space
/* 803CE3E8  7C 7F 1B 78 */	mr r31, r3
/* 803CE3EC  2C 1F FF FF */	cmpwi r31, -1
/* 803CE3F0  41 82 00 30 */	beq lbl_803CE420
/* 803CE3F4  7F C3 F3 78 */	mr r3, r30
/* 803CE3F8  7F 44 D3 78 */	mr r4, r26
/* 803CE3FC  7F 65 DB 78 */	mr r5, r27
/* 803CE400  4B FF FE 89 */	bl mNpc_GetBirthdayCard
/* 803CE404  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 803CE408  7F C4 F3 78 */	mr r4, r30
/* 803CE40C  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 803CE410  7C 7D 1A 14 */	add r3, r29, r3
/* 803CE414  4B FE E5 61 */	bl mMl_copy_mail
/* 803CE418  3B 80 00 01 */	li r28, 1
/* 803CE41C  48 00 00 30 */	b lbl_803CE44C
lbl_803CE420:
/* 803CE420  48 01 0A 45 */	bl mPO_get_keep_mail_sum
/* 803CE424  2C 03 00 05 */	cmpwi r3, 5
/* 803CE428  40 80 00 24 */	bge lbl_803CE44C
/* 803CE42C  7F C3 F3 78 */	mr r3, r30
/* 803CE430  7F 44 D3 78 */	mr r4, r26
/* 803CE434  7F 65 DB 78 */	mr r5, r27
/* 803CE438  4B FF FE 51 */	bl mNpc_GetBirthdayCard
/* 803CE43C  7F C3 F3 78 */	mr r3, r30
/* 803CE440  38 80 00 00 */	li r4, 0
/* 803CE444  48 01 0C 1D */	bl mPO_receipt_proc
/* 803CE448  7C 7C 1B 78 */	mr r28, r3
lbl_803CE44C:
/* 803CE44C  7F 83 E3 78 */	mr r3, r28
/* 803CE450  39 61 00 20 */	addi r11, r1, 0x20
/* 803CE454  4B CC CA C1 */	bl func_8009AF14
/* 803CE458  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CE45C  7C 08 03 A6 */	mtlr r0
/* 803CE460  38 21 00 20 */	addi r1, r1, 0x20
/* 803CE464  4E 80 00 20 */	blr 

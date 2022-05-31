lbl_803E13F8:
/* 803E13F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E13FC  7C 08 02 A6 */	mflr r0
/* 803E1400  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E1404  39 61 00 30 */	addi r11, r1, 0x30
/* 803E1408  4B CB 9A B9 */	bl func_8009AEC0
/* 803E140C  3D 00 81 17 */	lis r8, l_mpr_mail@ha /* 0x811712B8@ha */
/* 803E1410  7C 78 1B 78 */	mr r24, r3
/* 803E1414  38 08 12 B8 */	addi r0, r8, l_mpr_mail@l /* 0x811712B8@l */
/* 803E1418  7C B9 2B 78 */	mr r25, r5
/* 803E141C  7C DA 33 78 */	mr r26, r6
/* 803E1420  7C FB 3B 78 */	mr r27, r7
/* 803E1424  7C 1E 03 78 */	mr r30, r0
/* 803E1428  7C 83 23 78 */	mr r3, r4
/* 803E142C  3B 80 00 00 */	li r28, 0
/* 803E1430  4B FD 21 89 */	bl mHS_get_arrange_idx
/* 803E1434  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803E1438  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E143C  7F 03 C3 78 */	mr r3, r24
/* 803E1440  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803E1444  7C 80 2A 14 */	add r4, r0, r5
/* 803E1448  3F A4 00 01 */	addis r29, r4, 1
/* 803E144C  3B BD 9C E8 */	addi r29, r29, -25368
/* 803E1450  7F A4 EB 78 */	mr r4, r29
/* 803E1454  4B FF EC F1 */	bl mPr_CheckCmpPersonalID
/* 803E1458  2C 03 00 01 */	cmpwi r3, 1
/* 803E145C  40 82 00 84 */	bne lbl_803E14E0
/* 803E1460  38 7D 1A 30 */	addi r3, r29, 0x1a30
/* 803E1464  38 80 00 0A */	li r4, 0xa
/* 803E1468  4B FD B4 3D */	bl mMl_chk_mail_free_space
/* 803E146C  7C 7F 1B 78 */	mr r31, r3
/* 803E1470  2C 1F FF FF */	cmpwi r31, -1
/* 803E1474  41 82 00 38 */	beq lbl_803E14AC
/* 803E1478  7F C3 F3 78 */	mr r3, r30
/* 803E147C  7F 04 C3 78 */	mr r4, r24
/* 803E1480  7F 25 CB 78 */	mr r5, r25
/* 803E1484  7F 46 D3 78 */	mr r6, r26
/* 803E1488  7F 67 DB 78 */	mr r7, r27
/* 803E148C  4B FF FE E5 */	bl mPr_GetMotherMail
/* 803E1490  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 803E1494  7F C4 F3 78 */	mr r4, r30
/* 803E1498  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 803E149C  7C 7D 1A 14 */	add r3, r29, r3
/* 803E14A0  4B FD B4 D5 */	bl mMl_copy_mail
/* 803E14A4  3B 80 00 01 */	li r28, 1
/* 803E14A8  48 00 00 38 */	b lbl_803E14E0
lbl_803E14AC:
/* 803E14AC  4B FF D9 B9 */	bl mPO_get_keep_mail_sum
/* 803E14B0  2C 03 00 05 */	cmpwi r3, 5
/* 803E14B4  40 80 00 2C */	bge lbl_803E14E0
/* 803E14B8  7F C3 F3 78 */	mr r3, r30
/* 803E14BC  7F 04 C3 78 */	mr r4, r24
/* 803E14C0  7F 25 CB 78 */	mr r5, r25
/* 803E14C4  7F 46 D3 78 */	mr r6, r26
/* 803E14C8  7F 67 DB 78 */	mr r7, r27
/* 803E14CC  4B FF FE A5 */	bl mPr_GetMotherMail
/* 803E14D0  7F C3 F3 78 */	mr r3, r30
/* 803E14D4  38 80 00 00 */	li r4, 0
/* 803E14D8  4B FF DB 89 */	bl mPO_receipt_proc
/* 803E14DC  7C 7C 1B 78 */	mr r28, r3
lbl_803E14E0:
/* 803E14E0  7F 83 E3 78 */	mr r3, r28
/* 803E14E4  39 61 00 30 */	addi r11, r1, 0x30
/* 803E14E8  4B CB 9A 25 */	bl func_8009AF0C
/* 803E14EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E14F0  7C 08 03 A6 */	mtlr r0
/* 803E14F4  38 21 00 30 */	addi r1, r1, 0x30
/* 803E14F8  4E 80 00 20 */	blr 

lbl_803FF28C:
/* 803FF28C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FF290  7C 08 02 A6 */	mflr r0
/* 803FF294  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FF298  39 61 00 30 */	addi r11, r1, 0x30
/* 803FF29C  4B C9 BC 21 */	bl func_8009AEBC
/* 803FF2A0  7C 9B 23 78 */	mr r27, r4
/* 803FF2A4  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803FF2A8  83 C4 00 04 */	lwz r30, 4(r4)
/* 803FF2AC  7C 7A 1B 78 */	mr r26, r3
/* 803FF2B0  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 803FF2B4  83 3B 00 08 */	lwz r25, 8(r27)
/* 803FF2B8  83 BB 00 0C */	lwz r29, 0xc(r27)
/* 803FF2BC  4B FD 13 D5 */	bl mNpc_GetInAnimalP
/* 803FF2C0  2C 1D 00 05 */	cmpwi r29, 5
/* 803FF2C4  7C 77 1B 78 */	mr r23, r3
/* 803FF2C8  3B 80 00 01 */	li r28, 1
/* 803FF2CC  41 80 00 10 */	blt lbl_803FF2DC
/* 803FF2D0  38 00 00 00 */	li r0, 0
/* 803FF2D4  3B A0 00 00 */	li r29, 0
/* 803FF2D8  90 1B 00 0C */	stw r0, 0xc(r27)
lbl_803FF2DC:
/* 803FF2DC  2C 1D 00 04 */	cmpwi r29, 4
/* 803FF2E0  41 82 00 70 */	beq lbl_803FF350
/* 803FF2E4  40 80 00 B0 */	bge lbl_803FF394
/* 803FF2E8  2C 1D 00 03 */	cmpwi r29, 3
/* 803FF2EC  40 80 00 08 */	bge lbl_803FF2F4
/* 803FF2F0  48 00 00 A4 */	b lbl_803FF394
lbl_803FF2F4:
/* 803FF2F4  4B FE 1D CD */	bl mPr_GetForeignerP
/* 803FF2F8  7C 60 1B 78 */	mr r0, r3
/* 803FF2FC  7F 43 D3 78 */	mr r3, r26
/* 803FF300  7C 18 03 78 */	mr r24, r0
/* 803FF304  7E E5 BB 78 */	mr r5, r23
/* 803FF308  7F 04 C3 78 */	mr r4, r24
/* 803FF30C  7F 26 CB 78 */	mr r6, r25
/* 803FF310  4B FF FE 59 */	bl mCD_LoadPrivate_idx
/* 803FF314  7C 7C 1B 78 */	mr r28, r3
/* 803FF318  2C 1C 00 01 */	cmpwi r28, 1
/* 803FF31C  40 82 00 78 */	bne lbl_803FF394
/* 803FF320  7F 03 C3 78 */	mr r3, r24
/* 803FF324  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 803FF328  4B FE 1D A5 */	bl mPr_LoadPak_and_SetPrivateInfo2
/* 803FF32C  1C B9 00 34 */	mulli r5, r25, 0x34
/* 803FF330  3C 80 81 1A */	lis r4, l_mcd_card_private_table@ha /* 0x81198814@ha */
/* 803FF334  3C 60 81 1A */	lis r3, l_mcd_card_private@ha /* 0x81198BF0@ha */
/* 803FF338  38 04 88 14 */	addi r0, r4, l_mcd_card_private_table@l /* 0x81198814@l */
/* 803FF33C  7C 80 2A 14 */	add r4, r0, r5
/* 803FF340  38 63 8B F0 */	addi r3, r3, l_mcd_card_private@l /* 0x81198BF0@l */
/* 803FF344  38 A4 00 14 */	addi r5, r4, 0x14
/* 803FF348  4B FF B2 D5 */	bl mCD_SetCardPrivateTable
/* 803FF34C  48 00 00 48 */	b lbl_803FF394
lbl_803FF350:
/* 803FF350  4B FE 1D 71 */	bl mPr_GetForeignerP
/* 803FF354  3C 80 81 1A */	lis r4, l_mcd_foreigner_file@ha /* 0x81198C38@ha */
/* 803FF358  7C 79 1B 78 */	mr r25, r3
/* 803FF35C  38 84 8C 38 */	addi r4, r4, l_mcd_foreigner_file@l /* 0x81198C38@l */
/* 803FF360  38 84 00 20 */	addi r4, r4, 0x20
/* 803FF364  4B FE 12 BD */	bl mPr_CopyPrivateInfo
/* 803FF368  28 17 00 00 */	cmplwi r23, 0
/* 803FF36C  41 82 00 1C */	beq lbl_803FF388
/* 803FF370  3C 60 81 1A */	lis r3, l_mcd_foreigner_file@ha /* 0x81198C38@ha */
/* 803FF374  7E E4 BB 78 */	mr r4, r23
/* 803FF378  38 63 8C 38 */	addi r3, r3, l_mcd_foreigner_file@l /* 0x81198C38@l */
/* 803FF37C  38 A0 09 88 */	li r5, 0x988
/* 803FF380  38 63 24 60 */	addi r3, r3, 0x2460
/* 803FF384  4B C5 DC 99 */	bl func_8005D01C
lbl_803FF388:
/* 803FF388  7F 23 CB 78 */	mr r3, r25
/* 803FF38C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 803FF390  4B FE 1D 3D */	bl mPr_LoadPak_and_SetPrivateInfo2
lbl_803FF394:
/* 803FF394  2C 1C 00 01 */	cmpwi r28, 1
/* 803FF398  40 82 02 38 */	bne lbl_803FF5D0
/* 803FF39C  3C 60 80 66 */	lis r3, init_mode_table@ha /* 0x8065E9F0@ha */
/* 803FF3A0  57 A0 10 3A */	slwi r0, r29, 2
/* 803FF3A4  38 83 E9 F0 */	addi r4, r3, init_mode_table@l /* 0x8065E9F0@l */
/* 803FF3A8  7F E3 FB 78 */	mr r3, r31
/* 803FF3AC  7C A4 00 2E */	lwzx r5, r4, r0
/* 803FF3B0  7F C4 F3 78 */	mr r4, r30
/* 803FF3B4  4B FE F8 15 */	bl mSDI_StartDataInit
/* 803FF3B8  3C A0 81 17 */	lis r5, l_mcd_keep_startCond@ha /* 0x81171614@ha */
/* 803FF3BC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FF3C0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803FF3C4  93 A5 16 14 */	stw r29, l_mcd_keep_startCond@l(r5)  /* 0x81171614@l */
/* 803FF3C8  3F E4 00 03 */	addis r31, r4, 3
/* 803FF3CC  2C 1D 00 02 */	cmpwi r29, 2
/* 803FF3D0  A0 1F 85 96 */	lhz r0, -0x7a6a(r31)
/* 803FF3D4  7C 7C 1B 78 */	mr r28, r3
/* 803FF3D8  90 1A 01 84 */	stw r0, 0x184(r26)
/* 803FF3DC  41 82 00 24 */	beq lbl_803FF400
/* 803FF3E0  40 80 00 14 */	bge lbl_803FF3F4
/* 803FF3E4  2C 1D 00 00 */	cmpwi r29, 0
/* 803FF3E8  41 82 00 18 */	beq lbl_803FF400
/* 803FF3EC  40 80 00 40 */	bge lbl_803FF42C
/* 803FF3F0  48 00 01 D8 */	b lbl_803FF5C8
lbl_803FF3F4:
/* 803FF3F4  2C 1D 00 05 */	cmpwi r29, 5
/* 803FF3F8  40 80 01 D0 */	bge lbl_803FF5C8
/* 803FF3FC  48 00 00 C4 */	b lbl_803FF4C0
lbl_803FF400:
/* 803FF400  38 00 00 0A */	li r0, 0xa
/* 803FF404  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FF408  90 1B 00 00 */	stw r0, 0(r27)
/* 803FF40C  38 00 00 00 */	li r0, 0
/* 803FF410  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FF414  3B 80 00 01 */	li r28, 1
/* 803FF418  90 1A 00 00 */	stw r0, 0(r26)
/* 803FF41C  90 1A 00 CC */	stw r0, 0xcc(r26)
/* 803FF420  A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 803FF424  B0 1F 85 96 */	sth r0, -0x7a6a(r31)
/* 803FF428  48 00 01 AC */	b lbl_803FF5D4
lbl_803FF42C:
/* 803FF42C  1C 1E 24 40 */	mulli r0, r30, 0x2440
/* 803FF430  7C 64 02 14 */	add r3, r4, r0
/* 803FF434  3B 43 00 20 */	addi r26, r3, 0x20
/* 803FF438  7F 43 D3 78 */	mr r3, r26
/* 803FF43C  4B FE 0C 09 */	bl mPr_NullCheckPersonalID
/* 803FF440  2C 03 00 00 */	cmpwi r3, 0
/* 803FF444  40 82 00 44 */	bne lbl_803FF488
/* 803FF448  7F 43 D3 78 */	mr r3, r26
/* 803FF44C  4B FF D8 65 */	bl mCD_SetResetInfo
/* 803FF450  7F 43 D3 78 */	mr r3, r26
/* 803FF454  4B FF D8 11 */	bl mCD_SetResetCode
/* 803FF458  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FF45C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FF460  3C 63 00 03 */	addis r3, r3, 3
/* 803FF464  88 03 85 C0 */	lbz r0, -0x7a40(r3)
/* 803FF468  2C 00 00 01 */	cmpwi r0, 1
/* 803FF46C  40 82 00 0C */	bne lbl_803FF478
/* 803FF470  38 00 00 00 */	li r0, 0
/* 803FF474  98 1A 10 86 */	stb r0, 0x1086(r26)
lbl_803FF478:
/* 803FF478  80 7B 00 00 */	lwz r3, 0(r27)
/* 803FF47C  3B 80 00 01 */	li r28, 1
/* 803FF480  38 03 00 01 */	addi r0, r3, 1
/* 803FF484  90 1B 00 00 */	stw r0, 0(r27)
lbl_803FF488:
/* 803FF488  38 00 00 00 */	li r0, 0
/* 803FF48C  90 1B 00 14 */	stw r0, 0x14(r27)
/* 803FF490  48 00 6F 29 */	bl lbRTC_HardTime
/* 803FF494  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803FF498  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803FF49C  3C A5 00 02 */	addis r5, r5, 2
/* 803FF4A0  90 85 41 9C */	stw r4, 0x419c(r5)
/* 803FF4A4  90 65 41 98 */	stw r3, 0x4198(r5)
/* 803FF4A8  4B FF D8 7D */	bl mCD_get_land_copyProtect
/* 803FF4AC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FF4B0  B0 7F 85 96 */	sth r3, -0x7a6a(r31)
/* 803FF4B4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803FF4B8  B0 64 00 1A */	sth r3, 0x1a(r4)
/* 803FF4BC  48 00 01 18 */	b lbl_803FF5D4
lbl_803FF4C0:
/* 803FF4C0  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 803FF4C4  4B FB 46 2D */	bl mLd_PlayerManKindCheckNo
/* 803FF4C8  2C 03 00 00 */	cmpwi r3, 0
/* 803FF4CC  40 82 00 54 */	bne lbl_803FF520
/* 803FF4D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FF4D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FF4D8  3C 63 00 02 */	addis r3, r3, 2
/* 803FF4DC  83 43 61 3C */	lwz r26, 0x613c(r3)
/* 803FF4E0  28 1A 00 00 */	cmplwi r26, 0
/* 803FF4E4  41 82 00 1C */	beq lbl_803FF500
/* 803FF4E8  7F 43 D3 78 */	mr r3, r26
/* 803FF4EC  4B FF D7 C5 */	bl mCD_SetResetInfo
/* 803FF4F0  7F 43 D3 78 */	mr r3, r26
/* 803FF4F4  4B FF D7 71 */	bl mCD_SetResetCode
/* 803FF4F8  38 60 00 03 */	li r3, 3
/* 803FF4FC  4B FE 7E E1 */	bl mRmTp_SetDefaultLightSwitchData
lbl_803FF500:
/* 803FF500  2C 1D 00 03 */	cmpwi r29, 3
/* 803FF504  40 82 00 10 */	bne lbl_803FF514
/* 803FF508  38 00 00 01 */	li r0, 1
/* 803FF50C  90 1B 00 14 */	stw r0, 0x14(r27)
/* 803FF510  48 00 00 78 */	b lbl_803FF588
lbl_803FF514:
/* 803FF514  38 00 00 00 */	li r0, 0
/* 803FF518  90 1B 00 14 */	stw r0, 0x14(r27)
/* 803FF51C  48 00 00 6C */	b lbl_803FF588
lbl_803FF520:
/* 803FF520  4B FF FA 6D */	bl mCD_GetSaveFilePrivateP
/* 803FF524  7C 7A 1B 79 */	or. r26, r3, r3
/* 803FF528  41 82 00 10 */	beq lbl_803FF538
/* 803FF52C  4B FF D7 85 */	bl mCD_SetResetInfo
/* 803FF530  7F 43 D3 78 */	mr r3, r26
/* 803FF534  4B FF D7 31 */	bl mCD_SetResetCode
lbl_803FF538:
/* 803FF538  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FF53C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FF540  3C 63 00 02 */	addis r3, r3, 2
/* 803FF544  83 43 61 3C */	lwz r26, 0x613c(r3)
/* 803FF548  28 1A 00 00 */	cmplwi r26, 0
/* 803FF54C  41 82 00 14 */	beq lbl_803FF560
/* 803FF550  7F 43 D3 78 */	mr r3, r26
/* 803FF554  4B FF D7 5D */	bl mCD_SetResetInfo
/* 803FF558  7F 43 D3 78 */	mr r3, r26
/* 803FF55C  4B FF D7 09 */	bl mCD_SetResetCode
lbl_803FF560:
/* 803FF560  3C 60 81 1A */	lis r3, l_mcd_foreigner_file@ha /* 0x81198C38@ha */
/* 803FF564  38 63 8C 38 */	addi r3, r3, l_mcd_foreigner_file@l /* 0x81198C38@l */
/* 803FF568  4B FF F9 B9 */	bl mCD_SetCopyProtect
/* 803FF56C  2C 1D 00 03 */	cmpwi r29, 3
/* 803FF570  40 82 00 10 */	bne lbl_803FF580
/* 803FF574  38 00 00 02 */	li r0, 2
/* 803FF578  90 1B 00 14 */	stw r0, 0x14(r27)
/* 803FF57C  48 00 00 0C */	b lbl_803FF588
lbl_803FF580:
/* 803FF580  38 00 00 00 */	li r0, 0
/* 803FF584  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_803FF588:
/* 803FF588  48 00 6E 31 */	bl lbRTC_HardTime
/* 803FF58C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803FF590  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803FF594  3C A5 00 02 */	addis r5, r5, 2
/* 803FF598  90 85 41 9C */	stw r4, 0x419c(r5)
/* 803FF59C  90 65 41 98 */	stw r3, 0x4198(r5)
/* 803FF5A0  4B FF D7 85 */	bl mCD_get_land_copyProtect
/* 803FF5A4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FF5A8  B0 7F 85 96 */	sth r3, -0x7a6a(r31)
/* 803FF5AC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803FF5B0  3B 80 00 01 */	li r28, 1
/* 803FF5B4  B0 64 00 1A */	sth r3, 0x1a(r4)
/* 803FF5B8  80 7B 00 00 */	lwz r3, 0(r27)
/* 803FF5BC  38 03 00 01 */	addi r0, r3, 1
/* 803FF5C0  90 1B 00 00 */	stw r0, 0(r27)
/* 803FF5C4  48 00 00 10 */	b lbl_803FF5D4
lbl_803FF5C8:
/* 803FF5C8  3B 80 FF FF */	li r28, -1
/* 803FF5CC  48 00 00 08 */	b lbl_803FF5D4
lbl_803FF5D0:
/* 803FF5D0  3B 80 FF FF */	li r28, -1
lbl_803FF5D4:
/* 803FF5D4  7F 83 E3 78 */	mr r3, r28
/* 803FF5D8  39 61 00 30 */	addi r11, r1, 0x30
/* 803FF5DC  4B C9 B9 2D */	bl func_8009AF08
/* 803FF5E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FF5E4  7C 08 03 A6 */	mtlr r0
/* 803FF5E8  38 21 00 30 */	addi r1, r1, 0x30
/* 803FF5EC  4E 80 00 20 */	blr 

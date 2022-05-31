lbl_803FD99C:
/* 803FD99C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803FD9A0  7C 08 02 A6 */	mflr r0
/* 803FD9A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 803FD9A8  39 61 00 60 */	addi r11, r1, 0x60
/* 803FD9AC  4B C9 D4 F9 */	bl func_8009AEA4
/* 803FD9B0  3C 60 81 19 */	lis r3, l_memMgr@ha /* 0x81197638@ha */
/* 803FD9B4  3A 20 00 09 */	li r17, 9
/* 803FD9B8  38 63 76 38 */	addi r3, r3, l_memMgr@l /* 0x81197638@l */
/* 803FD9BC  3B 00 00 00 */	li r24, 0
/* 803FD9C0  7C 7B 1B 78 */	mr r27, r3
/* 803FD9C4  3A C0 FF FF */	li r22, -1
/* 803FD9C8  3B 43 00 54 */	addi r26, r3, 0x54
/* 803FD9CC  38 83 00 14 */	addi r4, r3, 0x14
/* 803FD9D0  38 A0 00 01 */	li r5, 1
/* 803FD9D4  38 C0 00 02 */	li r6, 2
/* 803FD9D8  4B FF E0 51 */	bl mCD_bg_get_area_common
/* 803FD9DC  3C 80 81 19 */	lis r4, l_memMgr@ha /* 0x81197638@ha */
/* 803FD9E0  2C 03 00 01 */	cmpwi r3, 1
/* 803FD9E4  38 64 76 38 */	addi r3, r4, l_memMgr@l /* 0x81197638@l */
/* 803FD9E8  83 23 00 0C */	lwz r25, 0xc(r3)
/* 803FD9EC  40 82 03 5C */	bne lbl_803FDD48
/* 803FD9F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FD9F4  3E 79 00 01 */	addis r19, r25, 1
/* 803FD9F8  3B A3 85 38 */	addi r29, r3, common_data@l /* 0x81138538@l */
/* 803FD9FC  3A 21 00 0C */	addi r17, r1, 0xc
/* 803FDA00  3E 9D 00 03 */	addis r20, r29, 3
/* 803FDA04  3B 81 00 08 */	addi r28, r1, 8
/* 803FDA08  3A A0 00 00 */	li r21, 0
/* 803FDA0C  3B E0 00 00 */	li r31, 0
/* 803FDA10  3B C0 00 00 */	li r30, 0
lbl_803FDA14:
/* 803FDA14  38 60 00 00 */	li r3, 0
/* 803FDA18  38 00 00 09 */	li r0, 9
/* 803FDA1C  7C 71 F1 2E */	stwx r3, r17, r30
/* 803FDA20  3A E0 00 00 */	li r23, 0
/* 803FDA24  3A 40 00 00 */	li r18, 0
/* 803FDA28  7C 1C A9 AE */	stbx r0, r28, r21
lbl_803FDA2C:
/* 803FDA2C  38 72 00 01 */	addi r3, r18, 1
/* 803FDA30  90 7B 00 04 */	stw r3, 4(r27)
/* 803FDA34  4B FF CA 25 */	bl mCD_get_size
/* 803FDA38  7C 64 1B 78 */	mr r4, r3
/* 803FDA3C  7F 23 CB 78 */	mr r3, r25
/* 803FDA40  90 9B 00 08 */	stw r4, 8(r27)
/* 803FDA44  4B C5 F6 25 */	bl bzero
/* 803FDA48  80 9B 00 04 */	lwz r4, 4(r27)
/* 803FDA4C  7F 23 CB 78 */	mr r3, r25
/* 803FDA50  7E A5 AB 78 */	mr r5, r21
/* 803FDA54  38 DA 00 74 */	addi r6, r26, 0x74
/* 803FDA58  4B FF CF 69 */	bl mCD_load_file
/* 803FDA5C  2C 03 00 01 */	cmpwi r3, 1
/* 803FDA60  40 82 00 B8 */	bne lbl_803FDB18
/* 803FDA64  A0 93 91 2A */	lhz r4, -0x6ed6(r19)
/* 803FDA68  7F 23 CB 78 */	mr r3, r25
/* 803FDA6C  4B FA EB 21 */	bl mFRm_CheckSaveData_common
/* 803FDA70  2C 03 00 00 */	cmpwi r3, 0
/* 803FDA74  41 82 00 88 */	beq lbl_803FDAFC
/* 803FDA78  80 9B 00 08 */	lwz r4, 8(r27)
/* 803FDA7C  7F 23 CB 78 */	mr r3, r25
/* 803FDA80  4B FA EA 7D */	bl mFRm_ReturnCheckSum
/* 803FDA84  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FDA88  40 82 00 68 */	bne lbl_803FDAF0
/* 803FDA8C  80 19 00 00 */	lwz r0, 0(r25)
/* 803FDA90  2C 00 00 06 */	cmpwi r0, 6
/* 803FDA94  41 82 00 0C */	beq lbl_803FDAA0
/* 803FDA98  2C 00 00 05 */	cmpwi r0, 5
/* 803FDA9C  40 82 00 54 */	bne lbl_803FDAF0
lbl_803FDAA0:
/* 803FDAA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FDAA4  3C A0 00 02 */	lis r5, 0x0002 /* 0x00026000@ha */
/* 803FDAA8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803FDAAC  7F 23 CB 78 */	mr r3, r25
/* 803FDAB0  38 A5 60 00 */	addi r5, r5, 0x6000 /* 0x00026000@l */
/* 803FDAB4  4B C5 F5 69 */	bl func_8005D01C
/* 803FDAB8  A0 7D 00 1A */	lhz r3, 0x1a(r29)
/* 803FDABC  38 00 00 00 */	li r0, 0
/* 803FDAC0  2C 12 00 01 */	cmpwi r18, 1
/* 803FDAC4  7C 1C A9 AE */	stbx r0, r28, r21
/* 803FDAC8  7E B6 AB 78 */	mr r22, r21
/* 803FDACC  3B 00 00 01 */	li r24, 1
/* 803FDAD0  B0 74 85 96 */	sth r3, -0x7a6a(r20)
/* 803FDAD4  40 82 00 10 */	bne lbl_803FDAE4
/* 803FDAD8  38 60 00 05 */	li r3, 5
/* 803FDADC  4B FF 9B 65 */	bl mCD_OnErrInfo
/* 803FDAE0  48 00 01 5C */	b lbl_803FDC3C
lbl_803FDAE4:
/* 803FDAE4  38 60 00 05 */	li r3, 5
/* 803FDAE8  4B FF 9B 81 */	bl mCD_OffErrInfo
/* 803FDAEC  48 00 01 50 */	b lbl_803FDC3C
lbl_803FDAF0:
/* 803FDAF0  38 00 00 02 */	li r0, 2
/* 803FDAF4  7C 1C A9 AE */	stbx r0, r28, r21
/* 803FDAF8  48 00 01 38 */	b lbl_803FDC30
lbl_803FDAFC:
/* 803FDAFC  7C 1C A8 AE */	lbzx r0, r28, r21
/* 803FDB00  28 00 00 09 */	cmplwi r0, 9
/* 803FDB04  40 82 01 2C */	bne lbl_803FDC30
/* 803FDB08  38 00 00 00 */	li r0, 0
/* 803FDB0C  3A F7 00 01 */	addi r23, r23, 1
/* 803FDB10  7C 1C A9 AE */	stbx r0, r28, r21
/* 803FDB14  48 00 01 1C */	b lbl_803FDC30
lbl_803FDB18:
/* 803FDB18  80 1A 00 74 */	lwz r0, 0x74(r26)
/* 803FDB1C  2C 00 FF FC */	cmpwi r0, -4
/* 803FDB20  40 82 00 DC */	bne lbl_803FDBFC
/* 803FDB24  3C 60 80 66 */	lis r3, l_mCD_land_file_name_dummy@ha /* 0x8065E6A8@ha */
/* 803FDB28  80 9A 00 7C */	lwz r4, 0x7c(r26)
/* 803FDB2C  38 63 E6 A8 */	addi r3, r3, l_mCD_land_file_name_dummy@l /* 0x8065E6A8@l */
/* 803FDB30  7E A5 AB 78 */	mr r5, r21
/* 803FDB34  38 DA 00 74 */	addi r6, r26, 0x74
/* 803FDB38  4B FF B1 45 */	bl mCD_find_fg
/* 803FDB3C  2C 03 00 01 */	cmpwi r3, 1
/* 803FDB40  40 82 00 10 */	bne lbl_803FDB50
/* 803FDB44  38 00 00 00 */	li r0, 0
/* 803FDB48  7C 1C A9 AE */	stbx r0, r28, r21
/* 803FDB4C  48 00 00 F0 */	b lbl_803FDC3C
lbl_803FDB50:
/* 803FDB50  38 60 00 00 */	li r3, 0
/* 803FDB54  48 00 00 18 */	b lbl_803FDB6C
lbl_803FDB58:
/* 803FDB58  80 DA 00 7C */	lwz r6, 0x7c(r26)
/* 803FDB5C  7E A4 AB 78 */	mr r4, r21
/* 803FDB60  38 7A 00 70 */	addi r3, r26, 0x70
/* 803FDB64  38 BA 00 74 */	addi r5, r26, 0x74
/* 803FDB68  4B FF A1 D5 */	bl mCD_get_space_bg
lbl_803FDB6C:
/* 803FDB6C  2C 03 00 00 */	cmpwi r3, 0
/* 803FDB70  41 82 FF E8 */	beq lbl_803FDB58
/* 803FDB74  2C 03 00 01 */	cmpwi r3, 1
/* 803FDB78  40 82 00 70 */	bne lbl_803FDBE8
/* 803FDB7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00072000@ha */
/* 803FDB80  80 9A 00 70 */	lwz r4, 0x70(r26)
/* 803FDB84  38 03 20 00 */	addi r0, r3, 0x2000 /* 0x00072000@l */
/* 803FDB88  7C 04 00 00 */	cmpw r4, r0
/* 803FDB8C  41 80 00 50 */	blt lbl_803FDBDC
/* 803FDB90  80 9A 00 7C */	lwz r4, 0x7c(r26)
/* 803FDB94  7E A3 AB 78 */	mr r3, r21
/* 803FDB98  4B FF D2 59 */	bl mCD_CheckPassportFile_slot
/* 803FDB9C  2C 03 00 01 */	cmpwi r3, 1
/* 803FDBA0  40 82 00 10 */	bne lbl_803FDBB0
/* 803FDBA4  38 00 00 01 */	li r0, 1
/* 803FDBA8  7C 1C A9 AE */	stbx r0, r28, r21
/* 803FDBAC  48 00 00 90 */	b lbl_803FDC3C
lbl_803FDBB0:
/* 803FDBB0  80 7A 00 7C */	lwz r3, 0x7c(r26)
/* 803FDBB4  7E A4 AB 78 */	mr r4, r21
/* 803FDBB8  4B FF 9E 8D */	bl mCD_get_file_num
/* 803FDBBC  2C 03 00 7F */	cmpwi r3, 0x7f
/* 803FDBC0  41 80 00 10 */	blt lbl_803FDBD0
/* 803FDBC4  38 00 00 03 */	li r0, 3
/* 803FDBC8  7C 1C A9 AE */	stbx r0, r28, r21
/* 803FDBCC  48 00 00 70 */	b lbl_803FDC3C
lbl_803FDBD0:
/* 803FDBD0  38 00 00 00 */	li r0, 0
/* 803FDBD4  7C 1C A9 AE */	stbx r0, r28, r21
/* 803FDBD8  48 00 00 64 */	b lbl_803FDC3C
lbl_803FDBDC:
/* 803FDBDC  38 00 00 07 */	li r0, 7
/* 803FDBE0  7C 1C A9 AE */	stbx r0, r28, r21
/* 803FDBE4  48 00 00 58 */	b lbl_803FDC3C
lbl_803FDBE8:
/* 803FDBE8  80 7A 00 74 */	lwz r3, 0x74(r26)
/* 803FDBEC  4B FF C6 C9 */	bl mCD_TransErrorCode
/* 803FDBF0  4B FF FC 39 */	bl mCD_TransErrCodeToCond
/* 803FDBF4  7C 7C A9 AE */	stbx r3, r28, r21
/* 803FDBF8  48 00 00 44 */	b lbl_803FDC3C
lbl_803FDBFC:
/* 803FDBFC  7E A4 AB 78 */	mr r4, r21
/* 803FDC00  38 60 20 00 */	li r3, 0x2000
/* 803FDC04  4B FF 9D 29 */	bl mCD_check_sector_size
/* 803FDC08  2C 03 00 00 */	cmpwi r3, 0
/* 803FDC0C  40 82 00 10 */	bne lbl_803FDC1C
/* 803FDC10  38 00 00 06 */	li r0, 6
/* 803FDC14  7C 1C A9 AE */	stbx r0, r28, r21
/* 803FDC18  48 00 00 24 */	b lbl_803FDC3C
lbl_803FDC1C:
/* 803FDC1C  80 7A 00 74 */	lwz r3, 0x74(r26)
/* 803FDC20  4B FF C7 39 */	bl mCD_TransErrorCode_nes
/* 803FDC24  4B FF FC 05 */	bl mCD_TransErrCodeToCond
/* 803FDC28  7C 7C A9 AE */	stbx r3, r28, r21
/* 803FDC2C  48 00 00 10 */	b lbl_803FDC3C
lbl_803FDC30:
/* 803FDC30  3A 52 00 01 */	addi r18, r18, 1
/* 803FDC34  2C 12 00 02 */	cmpwi r18, 2
/* 803FDC38  41 80 FD F4 */	blt lbl_803FDA2C
lbl_803FDC3C:
/* 803FDC3C  2C 18 00 01 */	cmpwi r24, 1
/* 803FDC40  41 82 00 4C */	beq lbl_803FDC8C
/* 803FDC44  2C 17 00 01 */	cmpwi r23, 1
/* 803FDC48  40 82 00 2C */	bne lbl_803FDC74
/* 803FDC4C  2C 16 FF FF */	cmpwi r22, -1
/* 803FDC50  40 82 00 24 */	bne lbl_803FDC74
/* 803FDC54  3C 60 81 1A */	lis r3, noLand_code_2962@ha /* 0x8119CC7C@ha */
/* 803FDC58  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 803FDC5C  38 03 CC 7C */	addi r0, r3, noLand_code_2962@l /* 0x8119CC7C@l */
/* 803FDC60  7E A5 AB 78 */	mr r5, r21
/* 803FDC64  7C 60 FA 14 */	add r3, r0, r31
/* 803FDC68  4B FF D4 75 */	bl mCD_check_noLand_file
/* 803FDC6C  7C 71 F1 2E */	stwx r3, r17, r30
/* 803FDC70  7E B6 AB 78 */	mr r22, r21
lbl_803FDC74:
/* 803FDC74  3A B5 00 01 */	addi r21, r21, 1
/* 803FDC78  3B FF 00 10 */	addi r31, r31, 0x10
/* 803FDC7C  2C 15 00 02 */	cmpwi r21, 2
/* 803FDC80  3B DE 00 04 */	addi r30, r30, 4
/* 803FDC84  3B 5A 00 94 */	addi r26, r26, 0x94
/* 803FDC88  41 80 FD 8C */	blt lbl_803FDA14
lbl_803FDC8C:
/* 803FDC8C  2C 18 00 00 */	cmpwi r24, 0
/* 803FDC90  40 82 00 94 */	bne lbl_803FDD24
/* 803FDC94  2C 16 FF FF */	cmpwi r22, -1
/* 803FDC98  41 82 00 64 */	beq lbl_803FDCFC
/* 803FDC9C  56 C0 10 3A */	slwi r0, r22, 2
/* 803FDCA0  38 61 00 0C */	addi r3, r1, 0xc
/* 803FDCA4  7C 03 00 2E */	lwzx r0, r3, r0
/* 803FDCA8  2C 00 00 01 */	cmpwi r0, 1
/* 803FDCAC  40 82 00 48 */	bne lbl_803FDCF4
/* 803FDCB0  3C A0 81 1A */	lis r5, noLand_code_2962@ha /* 0x8119CC7C@ha */
/* 803FDCB4  3C 60 81 1A */	lis r3, l_keep_noLandCode@ha /* 0x8119CC38@ha */
/* 803FDCB8  38 83 CC 38 */	addi r4, r3, l_keep_noLandCode@l /* 0x8119CC38@l */
/* 803FDCBC  38 05 CC 7C */	addi r0, r5, noLand_code_2962@l /* 0x8119CC7C@l */
/* 803FDCC0  56 C3 20 36 */	slwi r3, r22, 4
/* 803FDCC4  38 A0 00 08 */	li r5, 8
/* 803FDCC8  7C 60 1A 14 */	add r3, r0, r3
/* 803FDCCC  4B C5 F3 51 */	bl func_8005D01C
/* 803FDCD0  1C 96 00 94 */	mulli r4, r22, 0x94
/* 803FDCD4  7F 63 DB 78 */	mr r3, r27
/* 803FDCD8  7E C5 B3 78 */	mr r5, r22
/* 803FDCDC  3A 20 00 00 */	li r17, 0
/* 803FDCE0  38 84 00 54 */	addi r4, r4, 0x54
/* 803FDCE4  38 C0 00 00 */	li r6, 0
/* 803FDCE8  7C 9B 22 14 */	add r4, r27, r4
/* 803FDCEC  4B FF FB 95 */	bl mCD_load_set_others_common
/* 803FDCF0  48 00 00 58 */	b lbl_803FDD48
lbl_803FDCF4:
/* 803FDCF4  3A 20 00 02 */	li r17, 2
/* 803FDCF8  48 00 00 50 */	b lbl_803FDD48
lbl_803FDCFC:
/* 803FDCFC  88 61 00 08 */	lbz r3, 8(r1)
/* 803FDD00  88 01 00 09 */	lbz r0, 9(r1)
/* 803FDD04  7C 03 00 40 */	cmplw r3, r0
/* 803FDD08  40 81 00 10 */	ble lbl_803FDD18
/* 803FDD0C  7C 11 03 78 */	mr r17, r0
/* 803FDD10  3A C0 00 01 */	li r22, 1
/* 803FDD14  48 00 00 34 */	b lbl_803FDD48
lbl_803FDD18:
/* 803FDD18  7C 71 1B 78 */	mr r17, r3
/* 803FDD1C  3A C0 00 00 */	li r22, 0
/* 803FDD20  48 00 00 28 */	b lbl_803FDD48
lbl_803FDD24:
/* 803FDD24  1C 96 00 94 */	mulli r4, r22, 0x94
/* 803FDD28  38 61 00 08 */	addi r3, r1, 8
/* 803FDD2C  7E 23 B0 AE */	lbzx r17, r3, r22
/* 803FDD30  7F 63 DB 78 */	mr r3, r27
/* 803FDD34  7E C5 B3 78 */	mr r5, r22
/* 803FDD38  38 84 00 54 */	addi r4, r4, 0x54
/* 803FDD3C  7C 9B 22 14 */	add r4, r27, r4
/* 803FDD40  38 C0 00 01 */	li r6, 1
/* 803FDD44  4B FF FB 3D */	bl mCD_load_set_others_common
lbl_803FDD48:
/* 803FDD48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FDD4C  2C 16 FF FF */	cmpwi r22, -1
/* 803FDD50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FDD54  3C 63 00 03 */	addis r3, r3, 3
/* 803FDD58  9A 23 88 7C */	stb r17, -0x7784(r3)
/* 803FDD5C  41 82 00 0C */	beq lbl_803FDD68
/* 803FDD60  9A C3 DB A8 */	stb r22, -0x2458(r3)
/* 803FDD64  48 00 00 0C */	b lbl_803FDD70
lbl_803FDD68:
/* 803FDD68  38 00 00 00 */	li r0, 0
/* 803FDD6C  98 03 DB A8 */	stb r0, -0x2458(r3)
lbl_803FDD70:
/* 803FDD70  7F 63 DB 78 */	mr r3, r27
/* 803FDD74  4B FF C7 59 */	bl mCD_ClearMemMgr_com2
/* 803FDD78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FDD7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FDD80  3C 83 00 01 */	addis r4, r3, 1
/* 803FDD84  A0 84 91 2A */	lhz r4, -0x6ed6(r4)
/* 803FDD88  4B FA E8 05 */	bl mFRm_CheckSaveData_common
/* 803FDD8C  2C 03 00 00 */	cmpwi r3, 0
/* 803FDD90  41 82 00 28 */	beq lbl_803FDDB8
/* 803FDD94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FDD98  84 03 85 38 */	lwzu r0, common_data@l(r3)  /* 0x81138538@l */
/* 803FDD9C  2C 00 00 05 */	cmpwi r0, 5
/* 803FDDA0  40 82 00 18 */	bne lbl_803FDDB8
/* 803FDDA4  3C 83 00 02 */	addis r4, r3, 2
/* 803FDDA8  38 63 00 0A */	addi r3, r3, 0xa
/* 803FDDAC  38 A0 00 08 */	li r5, 8
/* 803FDDB0  38 84 41 A0 */	addi r4, r4, 0x41a0
/* 803FDDB4  4B C5 F2 69 */	bl func_8005D01C
lbl_803FDDB8:
/* 803FDDB8  39 61 00 60 */	addi r11, r1, 0x60
/* 803FDDBC  4B C9 D1 35 */	bl func_8009AEF0
/* 803FDDC0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803FDDC4  7C 08 03 A6 */	mtlr r0
/* 803FDDC8  38 21 00 60 */	addi r1, r1, 0x60
/* 803FDDCC  4E 80 00 20 */	blr 

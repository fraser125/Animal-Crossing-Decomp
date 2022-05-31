lbl_80403200:
/* 80403200  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80403204  7C 08 02 A6 */	mflr r0
/* 80403208  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8040320C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80403210  4B C9 7C A9 */	bl func_8009AEB8
/* 80403214  3C 60 81 17 */	lis r3, l_keepSave_set@ha /* 0x81171610@ha */
/* 80403218  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8040321C  80 03 16 10 */	lwz r0, l_keepSave_set@l(r3)  /* 0x81171610@l */
/* 80403220  3C A0 81 17 */	lis r5, l_keepSave@ha /* 0x81171638@ha */
/* 80403224  3B E4 85 38 */	addi r31, r4, common_data@l /* 0x81138538@l */
/* 80403228  2C 00 00 01 */	cmpwi r0, 1
/* 8040322C  38 65 16 38 */	addi r3, r5, l_keepSave@l /* 0x81171638@l */
/* 80403230  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 80403234  7C 7E 1B 78 */	mr r30, r3
/* 80403238  40 82 03 CC */	bne lbl_80403604
/* 8040323C  3C 63 00 01 */	addis r3, r3, 1
/* 80403240  A0 63 91 2A */	lhz r3, -0x6ed6(r3)
/* 80403244  4B FB 05 B1 */	bl mLd_CheckId
/* 80403248  2C 03 00 01 */	cmpwi r3, 1
/* 8040324C  40 82 03 B8 */	bne lbl_80403604
/* 80403250  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 80403254  7F C3 F3 78 */	mr r3, r30
/* 80403258  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 8040325C  4B FA 92 A1 */	bl mFRm_ReturnCheckSum
/* 80403260  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80403264  40 82 03 A0 */	bne lbl_80403604
/* 80403268  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8040326C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80403270  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80403274  38 A0 00 5C */	li r5, 0x5c
/* 80403278  3F 83 00 03 */	addis r28, r3, 3
/* 8040327C  3B 9C DB 46 */	addi r28, r28, -9402
/* 80403280  7F 83 E3 78 */	mr r3, r28
/* 80403284  4B C5 9D 99 */	bl func_8005D01C
/* 80403288  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8040328C  38 81 00 0C */	addi r4, r1, 0xc
/* 80403290  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80403294  38 A0 00 04 */	li r5, 4
/* 80403298  3F 63 00 02 */	addis r27, r3, 2
/* 8040329C  3F 43 00 03 */	addis r26, r3, 3
/* 804032A0  82 FB 60 04 */	lwz r23, 0x6004(r27)
/* 804032A4  3B 5A 85 92 */	addi r26, r26, -31342
/* 804032A8  A2 DB 65 1E */	lhz r22, 0x651e(r27)
/* 804032AC  7F 43 D3 78 */	mr r3, r26
/* 804032B0  4B C5 9D 6D */	bl func_8005D01C
/* 804032B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804032B8  38 81 00 10 */	addi r4, r1, 0x10
/* 804032BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804032C0  38 A0 00 2C */	li r5, 0x2c
/* 804032C4  3F 23 00 02 */	addis r25, r3, 2
/* 804032C8  3B 39 61 10 */	addi r25, r25, 0x6110
/* 804032CC  7F 23 CB 78 */	mr r3, r25
/* 804032D0  4B C5 9D 4D */	bl func_8005D01C
/* 804032D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804032D8  38 81 00 08 */	addi r4, r1, 8
/* 804032DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804032E0  38 A0 00 04 */	li r5, 4
/* 804032E4  3F 03 00 02 */	addis r24, r3, 2
/* 804032E8  3B 18 61 4C */	addi r24, r24, 0x614c
/* 804032EC  7F 03 C3 78 */	mr r3, r24
/* 804032F0  4B C5 9D 2D */	bl func_8005D01C
/* 804032F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804032F8  3C 80 00 03 */	lis r4, 0x0003 /* 0x0002DC00@ha */
/* 804032FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80403300  38 84 DC 00 */	addi r4, r4, 0xDC00 /* 0x0002DC00@l */
/* 80403304  4B C5 9D 65 */	bl bzero
/* 80403308  7F 84 E3 78 */	mr r4, r28
/* 8040330C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80403310  38 A0 00 5C */	li r5, 0x5c
/* 80403314  4B C5 9D 09 */	bl func_8005D01C
/* 80403318  B2 DB 65 1E */	sth r22, 0x651e(r27)
/* 8040331C  7F 44 D3 78 */	mr r4, r26
/* 80403320  38 61 00 0C */	addi r3, r1, 0xc
/* 80403324  38 A0 00 04 */	li r5, 4
/* 80403328  92 FB 60 04 */	stw r23, 0x6004(r27)
/* 8040332C  4B C5 9C F1 */	bl func_8005D01C
/* 80403330  7F 24 CB 78 */	mr r4, r25
/* 80403334  38 61 00 10 */	addi r3, r1, 0x10
/* 80403338  38 A0 00 2C */	li r5, 0x2c
/* 8040333C  4B C5 9C E1 */	bl func_8005D01C
/* 80403340  7F 04 C3 78 */	mr r4, r24
/* 80403344  38 61 00 08 */	addi r3, r1, 8
/* 80403348  38 A0 00 04 */	li r5, 4
/* 8040334C  4B C5 9C D1 */	bl func_8005D01C
/* 80403350  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80403354  3C A0 00 02 */	lis r5, 0x0002 /* 0x00026000@ha */
/* 80403358  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8040335C  7F C3 F3 78 */	mr r3, r30
/* 80403360  38 A5 60 00 */	addi r5, r5, 0x6000 /* 0x00026000@l */
/* 80403364  4B C5 9C B9 */	bl func_8005D01C
/* 80403368  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8040336C  38 00 00 01 */	li r0, 1
/* 80403370  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 80403374  A0 85 00 1A */	lhz r4, 0x1a(r5)
/* 80403378  3C 65 00 03 */	addis r3, r5, 3
/* 8040337C  3F 05 00 02 */	addis r24, r5, 2
/* 80403380  B0 83 85 96 */	sth r4, -0x7a6a(r3)
/* 80403384  82 D8 61 30 */	lwz r22, 0x6130(r24)
/* 80403388  93 BF 00 14 */	stw r29, 0x14(r31)
/* 8040338C  90 18 61 30 */	stw r0, 0x6130(r24)
/* 80403390  4B FF 09 85 */	bl mTM_rtcTime_limit_check
/* 80403394  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80403398  92 D8 61 30 */	stw r22, 0x6130(r24)
/* 8040339C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804033A0  3C 63 00 02 */	addis r3, r3, 2
/* 804033A4  38 63 61 20 */	addi r3, r3, 0x6120
/* 804033A8  48 00 33 75 */	bl lbRTC_GetTime
/* 804033AC  3C A0 81 1A */	lis r5, l_mcd_foreigner_file@ha /* 0x81198C38@ha */
/* 804033B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804033B4  38 C5 8C 38 */	addi r6, r5, l_mcd_foreigner_file@l /* 0x81198C38@l */
/* 804033B8  38 80 00 04 */	li r4, 4
/* 804033BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804033C0  38 00 00 00 */	li r0, 0
/* 804033C4  3C A3 00 02 */	addis r5, r3, 2
/* 804033C8  38 C6 00 20 */	addi r6, r6, 0x20
/* 804033CC  98 85 60 03 */	stb r4, 0x6003(r5)
/* 804033D0  3C 63 00 03 */	addis r3, r3, 3
/* 804033D4  38 80 00 08 */	li r4, 8
/* 804033D8  90 C5 61 3C */	stw r6, 0x613c(r5)
/* 804033DC  98 03 DB 40 */	stb r0, -0x24c0(r3)
/* 804033E0  38 63 DB D8 */	addi r3, r3, -9256
/* 804033E4  4B C5 9C 85 */	bl bzero
/* 804033E8  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 804033EC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804033F0  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 804033F4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804033F8  80 64 00 00 */	lwz r3, 0(r4)
/* 804033FC  80 04 00 04 */	lwz r0, 4(r4)
/* 80403400  3C A5 00 03 */	addis r5, r5, 3
/* 80403404  90 65 88 6C */	stw r3, -0x7794(r5)
/* 80403408  90 05 88 70 */	stw r0, -0x7790(r5)
/* 8040340C  80 04 00 08 */	lwz r0, 8(r4)
/* 80403410  90 05 88 74 */	stw r0, -0x778c(r5)
/* 80403414  4B FE FF DD */	bl mTM_clear_renew_is
/* 80403418  4B F9 75 11 */	bl mEv_ClearEventInfo
/* 8040341C  4B F9 BB 39 */	bl mEv_toland_clear_common
/* 80403420  4B FC D2 49 */	bl mNpc_ClearInAnimal
/* 80403424  4B FC D9 A5 */	bl mNpc_FirstClearGoodbyMail
/* 80403428  4B FF 71 C9 */	bl mCD_ClearCardPrivateTable
/* 8040342C  4B FD FC A5 */	bl mQst_ClearGrabItemInfo
/* 80403430  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80403434  38 80 01 00 */	li r4, 0x100
/* 80403438  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8040343C  3C 63 00 02 */	addis r3, r3, 2
/* 80403440  38 63 66 A8 */	addi r3, r3, 0x66a8
/* 80403444  4B C5 9C 25 */	bl bzero
/* 80403448  4B FB 07 89 */	bl func_803B3BD0
/* 8040344C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80403450  38 80 01 2A */	li r4, 0x12a
/* 80403454  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80403458  3C 63 00 02 */	addis r3, r3, 2
/* 8040345C  38 63 65 24 */	addi r3, r3, 0x6524
/* 80403460  4B C5 9C 09 */	bl bzero
/* 80403464  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80403468  38 00 00 00 */	li r0, 0
/* 8040346C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80403470  3C 63 00 02 */	addis r3, r3, 2
/* 80403474  B0 03 66 4E */	sth r0, 0x664e(r3)
/* 80403478  B0 03 66 50 */	sth r0, 0x6650(r3)
/* 8040347C  4B FC E3 DD */	bl mNpc_ClearCacheName
/* 80403480  4B FF 46 BD */	bl mCD_StartSetCardBgInfo
/* 80403484  4B FF 70 E5 */	bl mCD_ClearMemMgr
/* 80403488  4B FF 70 A5 */	bl mCD_ClearKeepLand
/* 8040348C  4B FF 71 65 */	bl mCD_ClearCardPrivateTable
/* 80403490  3C 60 81 1A */	lis r3, l_mcd_card_private@ha /* 0x81198BF0@ha */
/* 80403494  38 80 00 01 */	li r4, 1
/* 80403498  38 63 8B F0 */	addi r3, r3, l_mcd_card_private@l /* 0x81198BF0@l */
/* 8040349C  4B FF 70 F5 */	bl mCD_ClearCardPrivateTable_com
/* 804034A0  4B FF 76 05 */	bl mCD_clear_all_control
/* 804034A4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804034A8  3C 60 81 1A */	lis r3, l_keep_noLandCode@ha /* 0x8119CC38@ha */
/* 804034AC  3C 80 80 66 */	lis r4, l_mcd_copy_protect@ha /* 0x8065E484@ha */
/* 804034B0  38 05 FF FF */	addi r0, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804034B4  38 63 CC 38 */	addi r3, r3, l_keep_noLandCode@l /* 0x8119CC38@l */
/* 804034B8  B0 04 E4 84 */	sth r0, l_mcd_copy_protect@l(r4)  /* 0x8065E484@l */
/* 804034BC  4B FF 71 FD */	bl mCD_ClearNoLandProtectCode
/* 804034C0  4B FF 41 49 */	bl func_803F7608
/* 804034C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804034C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804034CC  3C 83 00 01 */	addis r4, r3, 1
/* 804034D0  A0 84 91 2A */	lhz r4, -0x6ed6(r4)
/* 804034D4  4B FA 90 B9 */	bl mFRm_CheckSaveData_common
/* 804034D8  2C 03 00 00 */	cmpwi r3, 0
/* 804034DC  41 82 00 28 */	beq lbl_80403504
/* 804034E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804034E4  84 03 85 38 */	lwzu r0, common_data@l(r3)  /* 0x81138538@l */
/* 804034E8  2C 00 00 05 */	cmpwi r0, 5
/* 804034EC  40 82 00 18 */	bne lbl_80403504
/* 804034F0  3C 83 00 02 */	addis r4, r3, 2
/* 804034F4  38 63 00 0A */	addi r3, r3, 0xa
/* 804034F8  38 A0 00 08 */	li r5, 8
/* 804034FC  38 84 41 A0 */	addi r4, r4, 0x41a0
/* 80403500  4B C5 9B 1D */	bl func_8005D01C
lbl_80403504:
/* 80403504  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80403508  3C 60 81 17 */	lis r3, l_keepSave@ha /* 0x81171638@ha */
/* 8040350C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80403510  38 00 00 01 */	li r0, 1
/* 80403514  3C A5 00 02 */	addis r5, r5, 2
/* 80403518  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 8040351C  98 05 65 21 */	stb r0, 0x6521(r5)
/* 80403520  38 63 16 38 */	addi r3, r3, l_keepSave@l /* 0x81171638@l */
/* 80403524  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 80403528  4B C5 9B 41 */	bl bzero
/* 8040352C  3C 80 81 17 */	lis r4, l_keepSave_set@ha /* 0x81171610@ha */
/* 80403530  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 80403534  3B A3 E7 74 */	addi r29, r3, l_aram_real_size_32_table@l /* 0x8065E774@l */
/* 80403538  38 00 00 00 */	li r0, 0
/* 8040353C  38 A4 16 10 */	addi r5, r4, l_keepSave_set@l /* 0x81171610@l */
/* 80403540  3C 60 81 1A */	lis r3, l_keepMail@ha /* 0x8119CCB8@ha */
/* 80403544  80 9D 00 04 */	lwz r4, 4(r29)
/* 80403548  38 63 CC B8 */	addi r3, r3, l_keepMail@l /* 0x8119CCB8@l */
/* 8040354C  90 05 00 00 */	stw r0, 0(r5)
/* 80403550  4B FA 8F AD */	bl mFRm_ReturnCheckSum
/* 80403554  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80403558  40 82 00 18 */	bne lbl_80403570
/* 8040355C  3C 60 81 1A */	lis r3, l_keepMail@ha /* 0x8119CCB8@ha */
/* 80403560  80 9D 00 04 */	lwz r4, 4(r29)
/* 80403564  38 63 CC B8 */	addi r3, r3, l_keepMail@l /* 0x8119CCB8@l */
/* 80403568  38 A0 00 01 */	li r5, 1
/* 8040356C  4B FF 6A 71 */	bl mCD_save_data_main_to_aram
lbl_80403570:
/* 80403570  3C 60 81 1A */	lis r3, l_keepMail@ha /* 0x8119CCB8@ha */
/* 80403574  38 63 CC B8 */	addi r3, r3, l_keepMail@l /* 0x8119CCB8@l */
/* 80403578  4B FF 6B 15 */	bl mCD_set_init_mail_data
/* 8040357C  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 80403580  3C A0 81 1B */	lis r5, l_keepOriginal@ha /* 0x811A8CB8@ha */
/* 80403584  38 83 E7 74 */	addi r4, r3, l_aram_real_size_32_table@l /* 0x8065E774@l */
/* 80403588  80 84 00 00 */	lwz r4, 0(r4)
/* 8040358C  38 65 8C B8 */	addi r3, r5, l_keepOriginal@l /* 0x811A8CB8@l */
/* 80403590  4B FA 8F 6D */	bl mFRm_ReturnCheckSum
/* 80403594  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80403598  40 82 00 20 */	bne lbl_804035B8
/* 8040359C  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 804035A0  3C C0 81 1B */	lis r6, l_keepOriginal@ha /* 0x811A8CB8@ha */
/* 804035A4  38 83 E7 74 */	addi r4, r3, l_aram_real_size_32_table@l /* 0x8065E774@l */
/* 804035A8  38 A0 00 00 */	li r5, 0
/* 804035AC  80 84 00 00 */	lwz r4, 0(r4)
/* 804035B0  38 66 8C B8 */	addi r3, r6, l_keepOriginal@l /* 0x811A8CB8@l */
/* 804035B4  4B FF 6A 29 */	bl mCD_save_data_main_to_aram
lbl_804035B8:
/* 804035B8  3C 60 81 1B */	lis r3, l_keepOriginal@ha /* 0x811A8CB8@ha */
/* 804035BC  38 63 8C B8 */	addi r3, r3, l_keepOriginal@l /* 0x811A8CB8@l */
/* 804035C0  4B FF 6B 49 */	bl mCD_set_init_original_data
/* 804035C4  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 804035C8  3C 80 81 1B */	lis r4, l_keepDiary@ha /* 0x811B6CB8@ha */
/* 804035CC  3B A3 E7 74 */	addi r29, r3, l_aram_real_size_32_table@l /* 0x8065E774@l */
/* 804035D0  38 64 6C B8 */	addi r3, r4, l_keepDiary@l /* 0x811B6CB8@l */
/* 804035D4  80 9D 00 08 */	lwz r4, 8(r29)
/* 804035D8  4B FA 8F 25 */	bl mFRm_ReturnCheckSum
/* 804035DC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 804035E0  40 82 00 18 */	bne lbl_804035F8
/* 804035E4  3C 60 81 1B */	lis r3, l_keepDiary@ha /* 0x811B6CB8@ha */
/* 804035E8  80 9D 00 08 */	lwz r4, 8(r29)
/* 804035EC  38 63 6C B8 */	addi r3, r3, l_keepDiary@l /* 0x811B6CB8@l */
/* 804035F0  38 A0 00 02 */	li r5, 2
/* 804035F4  4B FF 69 E9 */	bl mCD_save_data_main_to_aram
lbl_804035F8:
/* 804035F8  3C 60 81 1B */	lis r3, l_keepDiary@ha /* 0x811B6CB8@ha */
/* 804035FC  38 63 6C B8 */	addi r3, r3, l_keepDiary@l /* 0x811B6CB8@l */
/* 80403600  4B FF 6B 95 */	bl mCD_set_init_diary_data
lbl_80403604:
/* 80403604  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80403608  4B C9 78 FD */	bl func_8009AF04
/* 8040360C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80403610  7C 08 03 A6 */	mtlr r0
/* 80403614  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80403618  4E 80 00 20 */	blr 

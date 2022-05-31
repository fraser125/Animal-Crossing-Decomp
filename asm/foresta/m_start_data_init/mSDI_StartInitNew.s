lbl_803EE1C4:
/* 803EE1C4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803EE1C8  7C 08 02 A6 */	mflr r0
/* 803EE1CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 803EE1D0  39 61 00 50 */	addi r11, r1, 0x50
/* 803EE1D4  4B CA CC E1 */	bl func_8009AEB4
/* 803EE1D8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803EE1DC  38 00 00 0F */	li r0, 0xf
/* 803EE1E0  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 803EE1E4  7C 78 1B 78 */	mr r24, r3
/* 803EE1E8  3C 66 00 02 */	addis r3, r6, 2
/* 803EE1EC  7C 95 23 78 */	mr r21, r4
/* 803EE1F0  3F 66 00 01 */	addis r27, r6, 1
/* 803EE1F4  90 03 66 A4 */	stw r0, 0x66a4(r3)
/* 803EE1F8  7C B9 2B 78 */	mr r25, r5
/* 803EE1FC  3B 40 00 00 */	li r26, 0
/* 803EE200  38 63 61 20 */	addi r3, r3, 0x6120
/* 803EE204  3B 7B 74 38 */	addi r27, r27, 0x7438
/* 803EE208  48 01 85 15 */	bl lbRTC_GetTime
/* 803EE20C  3C 60 80 66 */	lis r3, lit_535@ha /* 0x8065DC90@ha */
/* 803EE210  7E A4 AB 78 */	mr r4, r21
/* 803EE214  38 63 DC 90 */	addi r3, r3, lit_535@l /* 0x8065DC90@l */
/* 803EE218  4C C6 31 82 */	crclr 6
/* 803EE21C  4B C6 EE 75 */	bl osSyncPrintf
/* 803EE220  1F D5 24 40 */	mulli r30, r21, 0x2440
/* 803EE224  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE228  38 00 00 00 */	li r0, 0
/* 803EE22C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803EE230  7C 64 F2 14 */	add r3, r4, r30
/* 803EE234  3F E4 00 02 */	addis r31, r4, 2
/* 803EE238  38 83 00 20 */	addi r4, r3, 0x20
/* 803EE23C  9A BF 60 03 */	stb r21, 0x6003(r31)
/* 803EE240  7F E3 FB 78 */	mr r3, r31
/* 803EE244  90 9F 61 3C */	stw r4, 0x613c(r31)
/* 803EE248  38 63 06 88 */	addi r3, r3, 0x688
/* 803EE24C  98 04 00 14 */	stb r0, 0x14(r4)
/* 803EE250  4B FF FB 8D */	bl decide_fruit
/* 803EE254  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE258  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE25C  3C 63 00 02 */	addis r3, r3, 2
/* 803EE260  38 63 41 84 */	addi r3, r3, 0x4184
/* 803EE264  4B FB 56 0D */	bl mFM_DecideBgTexIdx
/* 803EE268  4B FB 31 F5 */	bl mFAs_ClearGoodField
/* 803EE26C  2C 19 00 00 */	cmpwi r25, 0
/* 803EE270  40 82 00 08 */	bne lbl_803EE278
/* 803EE274  7F 1A C3 78 */	mr r26, r24
lbl_803EE278:
/* 803EE278  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE27C  38 80 03 C0 */	li r4, 0x3c0
/* 803EE280  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE284  3C 63 00 02 */	addis r3, r3, 2
/* 803EE288  38 63 0F 1C */	addi r3, r3, 0xf1c
/* 803EE28C  4B C6 ED DD */	bl bzero
/* 803EE290  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE294  38 00 00 00 */	li r0, 0
/* 803EE298  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE29C  38 80 19 00 */	li r4, 0x1900
/* 803EE2A0  3C 63 00 02 */	addis r3, r3, 2
/* 803EE2A4  3B A3 25 40 */	addi r29, r3, 0x2540
/* 803EE2A8  98 03 13 94 */	stb r0, 0x1394(r3)
/* 803EE2AC  7F A3 EB 78 */	mr r3, r29
/* 803EE2B0  4B C6 ED B9 */	bl bzero
/* 803EE2B4  7F 43 D3 78 */	mr r3, r26
/* 803EE2B8  4B FB 5F 99 */	bl mFM_InitFgCombiSaveData
/* 803EE2BC  4B FF FE 41 */	bl mSDI_PullTree
/* 803EE2C0  4B FF FE AD */	bl mSDI_PullTreeUnderPlayerBlock
/* 803EE2C4  7F 43 D3 78 */	mr r3, r26
/* 803EE2C8  4B FB 5E 79 */	bl mFM_SetBlockKindLoadCombi
/* 803EE2CC  4B F8 5C 81 */	bl mAGrw_ChangeTree2FruitTree
/* 803EE2D0  4B F8 5D 11 */	bl mAGrw_ChangeTree2Cedar
/* 803EE2D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE2D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE2DC  3B 83 00 20 */	addi r28, r3, 0x20
/* 803EE2E0  4B FD 0E 49 */	bl func_803BF128
/* 803EE2E4  4B FC 58 C9 */	bl mLd_LandDataInit
/* 803EE2E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE2EC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE2F0  3C 63 00 02 */	addis r3, r3, 2
/* 803EE2F4  38 63 04 98 */	addi r3, r3, 0x498
/* 803EE2F8  4B FA C5 F5 */	bl mEv_ClearEventSaveInfo
/* 803EE2FC  38 78 20 AC */	addi r3, r24, 0x20ac
/* 803EE300  4B FA F1 B9 */	bl mEv_init
/* 803EE304  7F 23 CB 78 */	mr r3, r25
/* 803EE308  4B FE 3D FD */	bl mNpc_InitNpcAllInfo
/* 803EE30C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE310  3A A0 00 00 */	li r21, 0
/* 803EE314  3A C3 85 38 */	addi r22, r3, common_data@l /* 0x81138538@l */
/* 803EE318  3B 20 00 00 */	li r25, 0
/* 803EE31C  3A E0 00 00 */	li r23, 0
lbl_803EE320:
/* 803EE320  7F 83 E3 78 */	mr r3, r28
/* 803EE324  4B FF 1E F5 */	bl mPr_ClearPrivateInfo
/* 803EE328  7C 76 BA 14 */	add r3, r22, r23
/* 803EE32C  38 80 00 06 */	li r4, 6
/* 803EE330  3C 63 00 01 */	addis r3, r3, 1
/* 803EE334  9A A3 9D 14 */	stb r21, -0x62ec(r3)
/* 803EE338  9A A3 9D 16 */	stb r21, -0x62ea(r3)
/* 803EE33C  38 63 9D 0E */	addi r3, r3, -25330
/* 803EE340  4B C6 ED 29 */	bl bzero
/* 803EE344  7C 76 CA 14 */	add r3, r22, r25
/* 803EE348  3C 63 00 02 */	addis r3, r3, 2
/* 803EE34C  38 63 12 E4 */	addi r3, r3, 0x12e4
/* 803EE350  4B FF 2F 55 */	bl mPr_ClearMotherMailInfo
/* 803EE354  3A B5 00 01 */	addi r21, r21, 1
/* 803EE358  3B 39 00 0E */	addi r25, r25, 0xe
/* 803EE35C  2C 15 00 04 */	cmpwi r21, 4
/* 803EE360  3A F7 26 B0 */	addi r23, r23, 0x26b0
/* 803EE364  3B 9C 24 40 */	addi r28, r28, 0x2440
/* 803EE368  41 80 FF B8 */	blt lbl_803EE320
/* 803EE36C  3C 7E FF FF */	addis r3, r30, 0xffff
/* 803EE370  38 63 6F 00 */	addi r3, r3, 0x6f00
/* 803EE374  7C 7C 1A 14 */	add r3, r28, r3
/* 803EE378  4B FF 21 89 */	bl mPr_InitPrivateInfo
/* 803EE37C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE380  7F 64 DB 78 */	mr r4, r27
/* 803EE384  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE388  38 A0 FF FF */	li r5, -1
/* 803EE38C  38 63 00 19 */	addi r3, r3, 0x19
/* 803EE390  4B FE 25 D5 */	bl mNpc_SetRemoveAnimalNo
/* 803EE394  4B FF FA DD */	bl title_game_haniwa_data_init
/* 803EE398  7F 43 D3 78 */	mr r3, r26
/* 803EE39C  4B FF 09 15 */	bl mPB_police_box_init
/* 803EE3A0  48 00 3A D5 */	bl mSN_snowman_init
/* 803EE3A4  4B FC 51 FD */	bl func_803B35A0
/* 803EE3A8  4B FB 0C 2D */	bl mGH_animal_return_init
/* 803EE3AC  4B FB 0E 61 */	bl mMC_mask_cat_init
/* 803EE3B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE3B4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE3B8  3C 63 00 02 */	addis r3, r3, 2
/* 803EE3BC  38 63 3F 20 */	addi r3, r3, 0x3f20
/* 803EE3C0  48 1E 95 11 */	bl mDE_maskcat_init
/* 803EE3C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE3C8  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803EE3CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE3D0  3C 63 00 02 */	addis r3, r3, 2
/* 803EE3D4  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803EE3D8  38 63 12 DC */	addi r3, r3, 0x12dc
/* 803EE3DC  48 01 8E 59 */	bl lbRTC_TimeCopy
/* 803EE3E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE3E4  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803EE3E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE3EC  3C 63 00 02 */	addis r3, r3, 2
/* 803EE3F0  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803EE3F4  38 63 13 7E */	addi r3, r3, 0x137e
/* 803EE3F8  48 01 8E 3D */	bl lbRTC_TimeCopy
/* 803EE3FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE400  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803EE404  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE408  3C 63 00 02 */	addis r3, r3, 2
/* 803EE40C  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803EE410  38 63 13 86 */	addi r3, r3, 0x1386
/* 803EE414  48 01 8E 21 */	bl lbRTC_TimeCopy
/* 803EE418  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE41C  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803EE420  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE424  3C 63 00 02 */	addis r3, r3, 2
/* 803EE428  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803EE42C  38 63 41 A0 */	addi r3, r3, 0x41a0
/* 803EE430  48 01 8E 05 */	bl lbRTC_TimeCopy
/* 803EE434  4B C6 E8 C1 */	bl fqrand
/* 803EE438  3C 80 80 64 */	lis r4, lit_536@ha /* 0x806431FC@ha */
/* 803EE43C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE440  C0 04 31 FC */	lfs f0, lit_536@l(r4)  /* 0x806431FC@l */
/* 803EE444  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE448  3C E3 00 02 */	addis r7, r3, 2
/* 803EE44C  38 00 00 FF */	li r0, 0xff
/* 803EE450  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EE454  98 07 3E 21 */	stb r0, 0x3e21(r7)
/* 803EE458  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 803EE45C  38 80 00 00 */	li r4, 0
/* 803EE460  98 07 3E 22 */	stb r0, 0x3e22(r7)
/* 803EE464  38 A0 21 00 */	li r5, 0x2100
/* 803EE468  FC 00 00 1E */	fctiwz f0, f0
/* 803EE46C  38 C0 00 02 */	li r6, 2
/* 803EE470  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EE474  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803EE478  98 07 0F 18 */	stb r0, 0xf18(r7)
/* 803EE47C  4B FF 29 AD */	bl mPr_SetPossessionItem
/* 803EE480  4B C6 E8 75 */	bl fqrand
/* 803EE484  3C 60 80 64 */	lis r3, lit_537@ha /* 0x80643200@ha */
/* 803EE488  C0 03 32 00 */	lfs f0, lit_537@l(r3)  /* 0x80643200@l */
/* 803EE48C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EE490  FC 00 00 1E */	fctiwz f0, f0
/* 803EE494  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803EE498  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803EE49C  38 83 00 01 */	addi r4, r3, 1
/* 803EE4A0  2C 04 00 04 */	cmpwi r4, 4
/* 803EE4A4  41 80 00 08 */	blt lbl_803EE4AC
/* 803EE4A8  38 84 00 01 */	addi r4, r4, 1
lbl_803EE4AC:
/* 803EE4AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE4B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE4B4  3C 63 00 02 */	addis r3, r3, 2
/* 803EE4B8  98 83 41 8A */	stb r4, 0x418a(r3)
/* 803EE4BC  4B F9 6F 99 */	bl mCkRh_InitGokiSaveData_AllRoom
/* 803EE4C0  4B FD B4 79 */	bl mNW_InitMyOriginal
/* 803EE4C4  4B FD B6 89 */	bl mNW_InitNeedleworkData
/* 803EE4C8  38 78 20 AC */	addi r3, r24, 0x20ac
/* 803EE4CC  4B FA F0 99 */	bl mEv_2nd_init
/* 803EE4D0  7F A3 EB 78 */	mr r3, r29
/* 803EE4D4  4B FC 59 49 */	bl mISL_init
/* 803EE4D8  4B FF F9 01 */	bl func_803EDDD8
/* 803EE4DC  38 60 00 01 */	li r3, 1
/* 803EE4E0  4B FF 8E FD */	bl mRmTp_SetDefaultLightSwitchData
/* 803EE4E4  4B FB CF 6D */	bl mFI_PullTanukiPathTrees
/* 803EE4E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE4EC  38 00 00 00 */	li r0, 0
/* 803EE4F0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803EE4F4  38 60 00 01 */	li r3, 1
/* 803EE4F8  3C 84 00 03 */	addis r4, r4, 3
/* 803EE4FC  98 04 DB E1 */	stb r0, -0x241f(r4)
/* 803EE500  39 61 00 50 */	addi r11, r1, 0x50
/* 803EE504  4B CA C9 FD */	bl func_8009AF00
/* 803EE508  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803EE50C  7C 08 03 A6 */	mtlr r0
/* 803EE510  38 21 00 50 */	addi r1, r1, 0x50
/* 803EE514  4E 80 00 20 */	blr 

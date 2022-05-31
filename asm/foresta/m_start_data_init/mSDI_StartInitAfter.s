lbl_803EE934:
/* 803EE934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EE938  7C 08 02 A6 */	mflr r0
/* 803EE93C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EE940  39 61 00 20 */	addi r11, r1, 0x20
/* 803EE944  4B CA C5 8D */	bl func_8009AED0
/* 803EE948  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803EE94C  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 803EE950  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 803EE954  7C 7D 1B 78 */	mr r29, r3
/* 803EE958  38 07 FF FF */	addi r0, r7, 0xFFFF /* 0x0000FFFF@l */
/* 803EE95C  7C 9E 23 78 */	mr r30, r4
/* 803EE960  3C 66 00 02 */	addis r3, r6, 2
/* 803EE964  7C BF 2B 78 */	mr r31, r5
/* 803EE968  B0 03 65 1C */	sth r0, 0x651c(r3)
/* 803EE96C  7F BC EB 78 */	mr r28, r29
/* 803EE970  4B FA BC 7D */	bl mEA_InitLetterCardE
/* 803EE974  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE978  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 803EE97C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE980  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 803EE984  3C 63 00 02 */	addis r3, r3, 2
/* 803EE988  B0 03 65 1E */	sth r0, 0x651e(r3)
/* 803EE98C  4B FC 45 E5 */	bl mHm_SetNowHome
/* 803EE990  4B FD CF 1D */	bl mNpc_RenewalAnimalMemory
/* 803EE994  4B FE 40 29 */	bl mNpc_ForceRemove
/* 803EE998  48 00 4B 4D */	bl mTM_renewal_renew_time
/* 803EE99C  4B FA BF 8D */	bl mEv_ClearEventInfo
/* 803EE9A0  4B FC BE 79 */	bl mEnv_DecideWeather_NormalGameStart
/* 803EE9A4  4B FC E7 85 */	bl mMl_start_send_mail
/* 803EE9A8  7F 83 E3 78 */	mr r3, r28
/* 803EE9AC  4B FF 13 D5 */	bl mPO_first_work
/* 803EE9B0  48 00 4A 1D */	bl mTM_set_season
/* 803EE9B4  48 12 0F 99 */	bl mAGrw_ClearAllShine_Stone
/* 803EE9B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE9BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE9C0  3C 63 00 02 */	addis r3, r3, 2
/* 803EE9C4  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 803EE9C8  48 12 12 75 */	bl mAGrw_RestoreStoneShine
/* 803EE9CC  4B FB 36 8D */	bl mFAs_SetFieldRank
/* 803EE9D0  38 7C 20 AC */	addi r3, r28, 0x20ac
/* 803EE9D4  4B FA EB 91 */	bl mEv_2nd_init
/* 803EE9D8  4B FE 3E 15 */	bl mNpc_Grow
/* 803EE9DC  4B FC 76 F5 */	bl Kabu_manager
/* 803EE9E0  4B FE 0F F1 */	bl mNpc_InitNpcData
/* 803EE9E4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE9E8  38 80 00 0F */	li r4, 0xf
/* 803EE9EC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE9F0  3F 83 00 02 */	addis r28, r3, 2
/* 803EE9F4  3B 9C 61 64 */	addi r28, r28, 0x6164
/* 803EE9F8  7F 83 E3 78 */	mr r3, r28
/* 803EE9FC  4B FE 10 2D */	bl mNpc_InitNpcList
/* 803EEA00  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EEA04  7F 83 E3 78 */	mr r3, r28
/* 803EEA08  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EEA0C  7F E6 FB 78 */	mr r6, r31
/* 803EEA10  3C 84 00 01 */	addis r4, r4, 1
/* 803EEA14  38 A0 00 0F */	li r5, 0xf
/* 803EEA18  38 84 74 38 */	addi r4, r4, 0x7438
/* 803EEA1C  4B FE 10 9D */	bl mNpc_SetNpcList
/* 803EEA20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EEA24  38 80 00 01 */	li r4, 1
/* 803EEA28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EEA2C  3C 63 00 02 */	addis r3, r3, 2
/* 803EEA30  38 63 64 E4 */	addi r3, r3, 0x64e4
/* 803EEA34  4B FE 0F F5 */	bl mNpc_InitNpcList
/* 803EEA38  4B FE 4B 05 */	bl mNpc_ClearTalkInfo
/* 803EEA3C  2C 1E 00 01 */	cmpwi r30, 1
/* 803EEA40  40 82 00 08 */	bne lbl_803EEA48
/* 803EEA44  4B FB 5B 7D */	bl mFM_RenewalReserve
lbl_803EEA48:
/* 803EEA48  4B FD FE 85 */	bl mNpc_ChangePresentCloth
/* 803EEA4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EEA50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EEA54  3C 63 00 02 */	addis r3, r3, 2
/* 803EEA58  38 63 66 9C */	addi r3, r3, 0x669c
/* 803EEA5C  4B FF 3F D5 */	bl mQst_ClearNotSaveQuest
/* 803EEA60  4B FB 06 91 */	bl mGH_check_delete
/* 803EEA64  4B FB 08 CD */	bl mMC_check_delete
/* 803EEA68  7F A3 EB 78 */	mr r3, r29
/* 803EEA6C  7F E4 FB 78 */	mr r4, r31
/* 803EEA70  4B FB 60 61 */	bl mFM_SetIslandNpcRoomData
/* 803EEA74  4B F8 EB 55 */	bl mCD_calendar_wellcome_on
/* 803EEA78  38 60 1E 58 */	li r3, 0x1e58
/* 803EEA7C  4B FF 21 51 */	bl mPr_SetItemCollectBit
/* 803EEA80  38 60 30 FC */	li r3, 0x30fc
/* 803EEA84  4B FF 21 49 */	bl mPr_SetItemCollectBit
/* 803EEA88  38 60 30 F8 */	li r3, 0x30f8
/* 803EEA8C  4B FF 21 41 */	bl mPr_SetItemCollectBit
/* 803EEA90  4B FE 8C AD */	bl mNPS_set_all_schedule_area
/* 803EEA94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EEA98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EEA9C  3C 63 00 02 */	addis r3, r3, 2
/* 803EEAA0  38 63 67 A8 */	addi r3, r3, 0x67a8
/* 803EEAA4  4B FE 99 B1 */	bl mNpcW_InitNpcWalk
/* 803EEAA8  4B FC 47 25 */	bl mHm_CheckRehouseOrder
/* 803EEAAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EEAB0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EEAB4  3C 63 00 02 */	addis r3, r3, 2
/* 803EEAB8  38 63 61 45 */	addi r3, r3, 0x6145
/* 803EEABC  4B FF F3 6D */	bl decide_fish_location
/* 803EEAC0  7F A3 EB 78 */	mr r3, r29
/* 803EEAC4  48 00 47 25 */	bl mTRC_init
/* 803EEAC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EEACC  38 00 00 00 */	li r0, 0
/* 803EEAD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EEAD4  3C 63 00 03 */	addis r3, r3, 3
/* 803EEAD8  98 03 88 3A */	stb r0, -0x77c6(r3)
/* 803EEADC  4B FD BF 89 */	bl mNtc_auto_nwrite_time_ct
/* 803EEAE0  4B FF 32 D1 */	bl mPr_SendMailFromMother
/* 803EEAE4  4B FD F0 91 */	bl mNpc_Remail
/* 803EEAE8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EEAEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EEAF0  3F 83 00 02 */	addis r28, r3, 2
/* 803EEAF4  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 803EEAF8  4B FF 35 11 */	bl mPr_SendForeingerAnimalMail
/* 803EEAFC  4B FF 35 A9 */	bl mPr_StartSetCompleteTalkInfo
/* 803EEB00  4B FD 77 25 */	bl mMsm_SendInformationMail
/* 803EEB04  4B FD 88 05 */	bl mMsm_SendCompMail
/* 803EEB08  4B FB B9 51 */	bl mFI_SetFirstSetShell
/* 803EEB0C  4B FD 9B B1 */	bl mMsr_FirstClearMushroom
/* 803EEB10  48 00 33 1D */	bl mSN_decide_msg
/* 803EEB14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EEB18  80 DC 61 3C */	lwz r6, 0x613c(r28)
/* 803EEB1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EEB20  38 80 00 08 */	li r4, 8
/* 803EEB24  3C A3 00 01 */	addis r5, r3, 1
/* 803EEB28  38 66 11 DC */	addi r3, r6, 0x11dc
/* 803EEB2C  38 A5 91 20 */	addi r5, r5, -28384
/* 803EEB30  4B FF 3B 21 */	bl mPr_RenewalMapInfo
/* 803EEB34  4B FF C3 9D */	bl mSP_SetTanukiShopStatus
/* 803EEB38  4B FC B4 8D */	bl mEnv_DecideTodayWindPowerRange
/* 803EEB3C  38 60 00 00 */	li r3, 0
/* 803EEB40  4B FB C8 15 */	bl mFI_SetClimate
/* 803EEB44  4B FC 52 55 */	bl mISL_RestoreIsland
/* 803EEB48  4B FE 83 51 */	bl mNpc_SendHPMail
/* 803EEB4C  39 61 00 20 */	addi r11, r1, 0x20
/* 803EEB50  4B CA C3 CD */	bl func_8009AF1C
/* 803EEB54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EEB58  7C 08 03 A6 */	mtlr r0
/* 803EEB5C  38 21 00 20 */	addi r1, r1, 0x20
/* 803EEB60  4E 80 00 20 */	blr 

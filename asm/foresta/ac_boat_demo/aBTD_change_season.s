lbl_804151C8:
/* 804151C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804151CC  7C 08 02 A6 */	mflr r0
/* 804151D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804151D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804151D8  7C 9F 23 78 */	mr r31, r4
/* 804151DC  80 03 01 90 */	lwz r0, 0x190(r3)
/* 804151E0  2C 00 00 01 */	cmpwi r0, 1
/* 804151E4  40 82 00 2C */	bne lbl_80415210
/* 804151E8  38 60 00 00 */	li r3, 0
/* 804151EC  4B F9 61 69 */	bl mFI_SetClimate
/* 804151F0  4B F8 F7 49 */	bl mFM_returnSeason
/* 804151F4  48 1E C8 11 */	bl aWeather_RequestChangeWeatherFromIsland
/* 804151F8  4B FB FF D5 */	bl mNpc_ClearIslandPresentFtrInfo
/* 804151FC  38 60 00 00 */	li r3, 0
/* 80415200  4B FB F1 9D */	bl mNpc_SetIslandGetLetter
/* 80415204  38 60 00 00 */	li r3, 0
/* 80415208  4B FB F1 B1 */	bl mNpc_SetIslandCheckFtrMsg
/* 8041520C  48 00 00 4C */	b lbl_80415258
lbl_80415210:
/* 80415210  38 60 00 01 */	li r3, 1
/* 80415214  4B F9 61 41 */	bl mFI_SetClimate
/* 80415218  4B F8 F6 C1 */	bl mFM_toSummer
/* 8041521C  48 1E C7 A9 */	bl aWeather_RequestChangeWeatherToIsland
/* 80415220  4B F9 EB 05 */	bl mISL_ChangeBG
/* 80415224  4B FD 23 8D */	bl mRmTp_DecideCottageDefaultLightSwitch
/* 80415228  4B FD 68 35 */	bl mSP_SelectRandomItemToAGB
/* 8041522C  4B F9 EC D9 */	bl mISL_ClearNowPlayerAction
/* 80415230  4B FB FF C5 */	bl mNpc_SetIslandPresentFtr
/* 80415234  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80415238  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041523C  3C 63 00 02 */	addis r3, r3, 2
/* 80415240  38 63 34 40 */	addi r3, r3, 0x3440
/* 80415244  4B FB EC 1D */	bl mNpc_SetIslandRoomFtr
/* 80415248  38 60 00 00 */	li r3, 0
/* 8041524C  4B FB F1 51 */	bl mNpc_SetIslandGetLetter
/* 80415250  38 60 00 00 */	li r3, 0
/* 80415254  4B FB F1 65 */	bl mNpc_SetIslandCheckFtrMsg
lbl_80415258:
/* 80415258  7F E3 FB 78 */	mr r3, r31
/* 8041525C  4B F6 36 1D */	bl mBI_change_bg_item
/* 80415260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415268  7C 08 03 A6 */	mtlr r0
/* 8041526C  38 21 00 10 */	addi r1, r1, 0x10
/* 80415270  4E 80 00 20 */	blr 

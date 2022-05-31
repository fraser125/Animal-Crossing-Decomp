lbl_80472FA4:
/* 80472FA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80472FA8  7C 08 02 A6 */	mflr r0
/* 80472FAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80472FB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80472FB4  4B C2 7F 21 */	bl func_8009AED4
/* 80472FB8  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80472FBC  7C 9E 23 78 */	mr r30, r4
/* 80472FC0  7C 7F 1B 78 */	mr r31, r3
/* 80472FC4  38 80 00 0C */	li r4, 0xc
/* 80472FC8  38 65 DF E8 */	addi r3, r5, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80472FCC  4B BE A0 9D */	bl bzero
/* 80472FD0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80472FD4  7F E3 FB 78 */	mr r3, r31
/* 80472FD8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80472FDC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80472FE0  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80472FE4  4B FF F7 31 */	bl aMR_SetClip
/* 80472FE8  4B FF FD 5D */	bl aMR_InitFurnitureWork
/* 80472FEC  38 7F 04 CC */	addi r3, r31, 0x4cc
/* 80472FF0  48 00 47 61 */	bl func_80477750
/* 80472FF4  3C 80 80 47 */	lis r4, aMR_GokiInfoCt@ha /* 0x804772F8@ha */
/* 80472FF8  7F E3 FB 78 */	mr r3, r31
/* 80472FFC  38 04 72 F8 */	addi r0, r4, aMR_GokiInfoCt@l /* 0x804772F8@l */
/* 80473000  90 1F 04 B8 */	stw r0, 0x4b8(r31)
/* 80473004  4B FF FC 0D */	bl aMR_MakeRoomInfo
/* 80473008  7F E3 FB 78 */	mr r3, r31
/* 8047300C  4B FF FB 01 */	bl aMR_GetSavedWaltzTempo
/* 80473010  4B FF F5 ED */	bl aMR_GetSceneFurnitureMax
/* 80473014  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80473018  3B A4 DF E8 */	addi r29, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047301C  90 7D 00 08 */	stw r3, 8(r29)
/* 80473020  7F E3 FB 78 */	mr r3, r31
/* 80473024  4B FF F6 25 */	bl aMR_SecureFurnitureRam
/* 80473028  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047302C  80 9D 00 08 */	lwz r4, 8(r29)
/* 80473030  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80473034  80 63 00 00 */	lwz r3, 0(r3)
/* 80473038  4B FF F6 7D */	bl aMR_InitFurnitureTable
/* 8047303C  4B FF F3 D5 */	bl aMR_InitFurnitureActorExistTable
/* 80473040  7F E3 FB 78 */	mr r3, r31
/* 80473044  7F C4 F3 78 */	mr r4, r30
/* 80473048  4B FF F4 B1 */	bl aMR_SecureFurnitureBank
/* 8047304C  7F E3 FB 78 */	mr r3, r31
/* 80473050  4B FF E4 5D */	bl aMR_InitHaniwaOnTable
/* 80473054  38 00 00 00 */	li r0, 0
/* 80473058  B0 1F 01 74 */	sth r0, 0x174(r31)
/* 8047305C  4B FF F3 E5 */	bl aMR_InitFurnitureBankTable
/* 80473060  7F E3 FB 78 */	mr r3, r31
/* 80473064  7F C4 F3 78 */	mr r4, r30
/* 80473068  38 A0 00 00 */	li r5, 0
/* 8047306C  4B FF F3 1D */	bl aMR_MakeFurnitureActor
/* 80473070  7F E3 FB 78 */	mr r3, r31
/* 80473074  7F C4 F3 78 */	mr r4, r30
/* 80473078  38 A0 00 01 */	li r5, 1
/* 8047307C  4B FF F3 0D */	bl aMR_MakeFurnitureActor
/* 80473080  38 00 FF FF */	li r0, -1
/* 80473084  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80473088  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047308C  90 1F 05 00 */	stw r0, 0x500(r31)
/* 80473090  3C 63 00 03 */	addis r3, r3, 3
/* 80473094  38 00 00 01 */	li r0, 1
/* 80473098  98 03 85 C2 */	stb r0, -0x7a3e(r3)
/* 8047309C  4B FF F7 F1 */	bl aMR_MakeItemDataInFurniture
/* 804730A0  4B FF FC F5 */	bl aMR_DeleteMusicWhichMusicBoxDontHave
/* 804730A4  7F C3 F3 78 */	mr r3, r30
/* 804730A8  7F E4 FB 78 */	mr r4, r31
/* 804730AC  4B FF F3 B9 */	bl aMR_InitDummyKeyAnime
/* 804730B0  38 00 00 01 */	li r0, 1
/* 804730B4  38 A0 00 00 */	li r5, 0
/* 804730B8  98 1F 01 D0 */	stb r0, 0x1d0(r31)
/* 804730BC  38 00 FF FF */	li r0, -1
/* 804730C0  7F E3 FB 78 */	mr r3, r31
/* 804730C4  B0 BF 03 54 */	sth r5, 0x354(r31)
/* 804730C8  B0 BF 03 56 */	sth r5, 0x356(r31)
/* 804730CC  B0 BF 03 EC */	sth r5, 0x3ec(r31)
/* 804730D0  A8 9F 03 EC */	lha r4, 0x3ec(r31)
/* 804730D4  B0 9F 03 EE */	sth r4, 0x3ee(r31)
/* 804730D8  98 BF 04 6C */	stb r5, 0x46c(r31)
/* 804730DC  90 1F 04 64 */	stw r0, 0x464(r31)
/* 804730E0  90 1F 04 68 */	stw r0, 0x468(r31)
/* 804730E4  4B FF F9 11 */	bl aMR_ClearSwitchSaveData
/* 804730E8  4B FF FB B5 */	bl aMR_OneMDFurnitureSwitchOn
/* 804730EC  4B FF FD E9 */	bl aMR_SetMDIslandNPC
/* 804730F0  38 00 00 00 */	li r0, 0
/* 804730F4  90 1F 04 84 */	stw r0, 0x484(r31)
/* 804730F8  90 1F 04 90 */	stw r0, 0x490(r31)
/* 804730FC  4B F1 28 25 */	bl mCkRh_InitCanLookGokiCount
/* 80473100  39 61 00 20 */	addi r11, r1, 0x20
/* 80473104  4B C2 7E 1D */	bl func_8009AF20
/* 80473108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047310C  7C 08 03 A6 */	mtlr r0
/* 80473110  38 21 00 20 */	addi r1, r1, 0x20
/* 80473114  4E 80 00 20 */	blr 

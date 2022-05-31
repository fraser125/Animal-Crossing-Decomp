lbl_803EE6F0:
/* 803EE6F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EE6F4  7C 08 02 A6 */	mflr r0
/* 803EE6F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EE6FC  39 61 00 20 */	addi r11, r1, 0x20
/* 803EE700  4B CA C7 C9 */	bl func_8009AEC8
/* 803EE704  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803EE708  38 00 00 10 */	li r0, 0x10
/* 803EE70C  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 803EE710  7C 7E 1B 78 */	mr r30, r3
/* 803EE714  3C 66 00 02 */	addis r3, r6, 2
/* 803EE718  7C 9F 23 78 */	mr r31, r4
/* 803EE71C  3F 86 00 01 */	addis r28, r6, 1
/* 803EE720  90 03 66 A4 */	stw r0, 0x66a4(r3)
/* 803EE724  7C BA 2B 78 */	mr r26, r5
/* 803EE728  3B A0 00 00 */	li r29, 0
/* 803EE72C  38 63 61 20 */	addi r3, r3, 0x6120
/* 803EE730  3B 9C 74 38 */	addi r28, r28, 0x7438
/* 803EE734  48 01 7F E9 */	bl lbRTC_GetTime
/* 803EE738  4B FB DE BD */	bl mFRm_CheckSaveData
/* 803EE73C  2C 03 00 01 */	cmpwi r3, 1
/* 803EE740  40 82 00 E4 */	bne lbl_803EE824
/* 803EE744  1C 9F 24 40 */	mulli r4, r31, 0x2440
/* 803EE748  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE74C  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803EE750  7C 60 22 14 */	add r3, r0, r4
/* 803EE754  3B 63 00 20 */	addi r27, r3, 0x20
/* 803EE758  7F 63 DB 78 */	mr r3, r27
/* 803EE75C  4B FF 1E F5 */	bl mPr_CheckPrivate
/* 803EE760  2C 03 00 01 */	cmpwi r3, 1
/* 803EE764  41 82 00 C0 */	beq lbl_803EE824
/* 803EE768  7F 63 DB 78 */	mr r3, r27
/* 803EE76C  4B FF 1D 95 */	bl mPr_InitPrivateInfo
/* 803EE770  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EE774  7F 63 DB 78 */	mr r3, r27
/* 803EE778  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803EE77C  38 80 00 00 */	li r4, 0
/* 803EE780  3F A5 00 02 */	addis r29, r5, 2
/* 803EE784  38 A0 21 00 */	li r5, 0x2100
/* 803EE788  93 7D 61 3C */	stw r27, 0x613c(r29)
/* 803EE78C  38 C0 00 02 */	li r6, 2
/* 803EE790  4B FF 26 99 */	bl mPr_SetPossessionItem
/* 803EE794  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EE798  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 803EE79C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EE7A0  38 00 00 00 */	li r0, 0
/* 803EE7A4  3C 84 00 02 */	addis r4, r4, 2
/* 803EE7A8  9B E4 60 03 */	stb r31, 0x6003(r4)
/* 803EE7AC  98 03 00 14 */	stb r0, 0x14(r3)
/* 803EE7B0  88 64 60 03 */	lbz r3, 0x6003(r4)
/* 803EE7B4  4B FD B1 C1 */	bl mNW_InitOneMyOriginal
/* 803EE7B8  4B F9 6B B9 */	bl mCkRh_InitGokiSaveData_InitNewPlayer
/* 803EE7BC  2C 1A 00 00 */	cmpwi r26, 0
/* 803EE7C0  40 82 00 20 */	bne lbl_803EE7E0
/* 803EE7C4  7F C3 F3 78 */	mr r3, r30
/* 803EE7C8  4B FB 59 79 */	bl mFM_SetBlockKindLoadCombi
/* 803EE7CC  38 7E 20 AC */	addi r3, r30, 0x20ac
/* 803EE7D0  4B FA ED 45 */	bl mEv_init_force
/* 803EE7D4  7F C3 F3 78 */	mr r3, r30
/* 803EE7D8  4B FF B0 01 */	bl mSP_ExchangeLineUp_InGame
/* 803EE7DC  48 00 00 1C */	b lbl_803EE7F8
lbl_803EE7E0:
/* 803EE7E0  38 60 00 00 */	li r3, 0
/* 803EE7E4  4B FB 59 5D */	bl mFM_SetBlockKindLoadCombi
/* 803EE7E8  38 7E 20 AC */	addi r3, r30, 0x20ac
/* 803EE7EC  4B FA ED 29 */	bl mEv_init_force
/* 803EE7F0  38 60 00 00 */	li r3, 0
/* 803EE7F4  4B FF AF E5 */	bl mSP_ExchangeLineUp_InGame
lbl_803EE7F8:
/* 803EE7F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE7FC  7F 84 E3 78 */	mr r4, r28
/* 803EE800  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE804  38 A0 FF FF */	li r5, -1
/* 803EE808  38 63 00 19 */	addi r3, r3, 0x19
/* 803EE80C  4B FE 21 59 */	bl mNpc_SetRemoveAnimalNo
/* 803EE810  4B FF F7 59 */	bl mSDI_ClearMoneyPlayerHomeStationBlock
/* 803EE814  38 60 00 01 */	li r3, 1
/* 803EE818  4B FF 8B C5 */	bl mRmTp_SetDefaultLightSwitchData
/* 803EE81C  4B FB CC 35 */	bl mFI_PullTanukiPathTrees
/* 803EE820  3B A0 00 01 */	li r29, 1
lbl_803EE824:
/* 803EE824  7F A3 EB 78 */	mr r3, r29
/* 803EE828  39 61 00 20 */	addi r11, r1, 0x20
/* 803EE82C  4B CA C6 E9 */	bl func_8009AF14
/* 803EE830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EE834  7C 08 03 A6 */	mtlr r0
/* 803EE838  38 21 00 20 */	addi r1, r1, 0x20
/* 803EE83C  4E 80 00 20 */	blr 

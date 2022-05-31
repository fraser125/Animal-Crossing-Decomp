lbl_803EE518:
/* 803EE518  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EE51C  7C 08 02 A6 */	mflr r0
/* 803EE520  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EE524  39 61 00 20 */	addi r11, r1, 0x20
/* 803EE528  4B CA C9 A1 */	bl func_8009AEC8
/* 803EE52C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803EE530  7C 7C 1B 78 */	mr r28, r3
/* 803EE534  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 803EE538  2C 05 00 00 */	cmpwi r5, 0
/* 803EE53C  3F C3 00 01 */	addis r30, r3, 1
/* 803EE540  7C 9D 23 78 */	mr r29, r4
/* 803EE544  7F 9F E3 78 */	mr r31, r28
/* 803EE548  3B 60 00 00 */	li r27, 0
/* 803EE54C  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803EE550  41 82 00 08 */	beq lbl_803EE558
/* 803EE554  3B E0 00 00 */	li r31, 0
lbl_803EE558:
/* 803EE558  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE55C  38 00 00 07 */	li r0, 7
/* 803EE560  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE564  3C 63 00 02 */	addis r3, r3, 2
/* 803EE568  90 03 66 A4 */	stw r0, 0x66a4(r3)
/* 803EE56C  38 63 61 20 */	addi r3, r3, 0x6120
/* 803EE570  48 01 81 AD */	bl lbRTC_GetTime
/* 803EE574  4B FB E0 81 */	bl mFRm_CheckSaveData
/* 803EE578  2C 03 00 01 */	cmpwi r3, 1
/* 803EE57C  40 82 01 58 */	bne lbl_803EE6D4
/* 803EE580  1C 9D 24 40 */	mulli r4, r29, 0x2440
/* 803EE584  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE588  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803EE58C  7C 60 22 14 */	add r3, r0, r4
/* 803EE590  3B 43 00 20 */	addi r26, r3, 0x20
/* 803EE594  7F 43 D3 78 */	mr r3, r26
/* 803EE598  4B FF 20 B9 */	bl mPr_CheckPrivate
/* 803EE59C  2C 03 00 01 */	cmpwi r3, 1
/* 803EE5A0  40 82 01 34 */	bne lbl_803EE6D4
/* 803EE5A4  88 1A 10 86 */	lbz r0, 0x1086(r26)
/* 803EE5A8  28 00 00 01 */	cmplwi r0, 1
/* 803EE5AC  40 82 00 74 */	bne lbl_803EE620
/* 803EE5B0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EE5B4  7F E3 FB 78 */	mr r3, r31
/* 803EE5B8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EE5BC  3C 84 00 02 */	addis r4, r4, 2
/* 803EE5C0  93 44 61 3C */	stw r26, 0x613c(r4)
/* 803EE5C4  9B A4 60 03 */	stb r29, 0x6003(r4)
/* 803EE5C8  4B FB 5B 79 */	bl mFM_SetBlockKindLoadCombi
/* 803EE5CC  38 7C 20 AC */	addi r3, r28, 0x20ac
/* 803EE5D0  4B FA EF 45 */	bl mEv_init_force
/* 803EE5D4  7F E3 FB 78 */	mr r3, r31
/* 803EE5D8  7F A4 EB 78 */	mr r4, r29
/* 803EE5DC  4B FC 32 45 */	bl mHsRm_GetHuusuiRoom
/* 803EE5E0  7F A3 EB 78 */	mr r3, r29
/* 803EE5E4  4B F9 70 31 */	bl mCkRh_DecideNowGokiFamilyCount
/* 803EE5E8  7F E3 FB 78 */	mr r3, r31
/* 803EE5EC  4B FF B1 ED */	bl mSP_ExchangeLineUp_InGame
/* 803EE5F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE5F4  7F C4 F3 78 */	mr r4, r30
/* 803EE5F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE5FC  38 A0 FF FF */	li r5, -1
/* 803EE600  38 63 00 19 */	addi r3, r3, 0x19
/* 803EE604  4B FE 23 61 */	bl mNpc_SetRemoveAnimalNo
/* 803EE608  7F E3 FB 78 */	mr r3, r31
/* 803EE60C  4B FD 09 E1 */	bl mMkRm_MarkRoom
/* 803EE610  38 60 00 02 */	li r3, 2
/* 803EE614  4B FF 8D C9 */	bl mRmTp_SetDefaultLightSwitchData
/* 803EE618  3B 60 00 01 */	li r27, 1
/* 803EE61C  48 00 00 B8 */	b lbl_803EE6D4
lbl_803EE620:
/* 803EE620  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE624  38 00 00 01 */	li r0, 1
/* 803EE628  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803EE62C  3C 85 00 03 */	addis r4, r5, 3
/* 803EE630  7F E3 FB 78 */	mr r3, r31
/* 803EE634  98 04 85 C0 */	stb r0, -0x7a40(r4)
/* 803EE638  3C 85 00 02 */	addis r4, r5, 2
/* 803EE63C  98 1A 10 86 */	stb r0, 0x1086(r26)
/* 803EE640  93 44 61 3C */	stw r26, 0x613c(r4)
/* 803EE644  9B A4 60 03 */	stb r29, 0x6003(r4)
/* 803EE648  4B FB 5A F9 */	bl mFM_SetBlockKindLoadCombi
/* 803EE64C  38 7C 20 AC */	addi r3, r28, 0x20ac
/* 803EE650  4B FA EE C5 */	bl mEv_init_force
/* 803EE654  7F E3 FB 78 */	mr r3, r31
/* 803EE658  7F A4 EB 78 */	mr r4, r29
/* 803EE65C  4B FC 31 C5 */	bl mHsRm_GetHuusuiRoom
/* 803EE660  7F A3 EB 78 */	mr r3, r29
/* 803EE664  4B F9 6F B1 */	bl mCkRh_DecideNowGokiFamilyCount
/* 803EE668  7F E3 FB 78 */	mr r3, r31
/* 803EE66C  4B FF B1 6D */	bl mSP_ExchangeLineUp_InGame
/* 803EE670  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE674  7F C4 F3 78 */	mr r4, r30
/* 803EE678  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE67C  38 A0 FF FF */	li r5, -1
/* 803EE680  38 63 00 19 */	addi r3, r3, 0x19
/* 803EE684  4B FE 22 E1 */	bl mNpc_SetRemoveAnimalNo
/* 803EE688  38 7A 00 68 */	addi r3, r26, 0x68
/* 803EE68C  38 80 00 1E */	li r4, 0x1e
/* 803EE690  4B C6 E9 D9 */	bl bzero
/* 803EE694  38 00 00 00 */	li r0, 0
/* 803EE698  38 7A 00 94 */	addi r3, r26, 0x94
/* 803EE69C  98 1A 00 86 */	stb r0, 0x86(r26)
/* 803EE6A0  38 80 00 0F */	li r4, 0xf
/* 803EE6A4  98 1A 00 87 */	stb r0, 0x87(r26)
/* 803EE6A8  90 1A 00 88 */	stw r0, 0x88(r26)
/* 803EE6AC  90 1A 00 8C */	stw r0, 0x8c(r26)
/* 803EE6B0  4B FF 42 39 */	bl mQst_ClearDelivery
/* 803EE6B4  38 7A 02 EC */	addi r3, r26, 0x2ec
/* 803EE6B8  38 80 00 05 */	li r4, 5
/* 803EE6BC  4B FF 42 91 */	bl mQst_ClearErrand
/* 803EE6C0  7F E3 FB 78 */	mr r3, r31
/* 803EE6C4  4B FD 09 29 */	bl mMkRm_MarkRoom
/* 803EE6C8  38 60 00 02 */	li r3, 2
/* 803EE6CC  4B FF 8D 11 */	bl mRmTp_SetDefaultLightSwitchData
/* 803EE6D0  3B 60 00 01 */	li r27, 1
lbl_803EE6D4:
/* 803EE6D4  7F 63 DB 78 */	mr r3, r27
/* 803EE6D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803EE6DC  4B CA C8 39 */	bl func_8009AF14
/* 803EE6E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EE6E4  7C 08 03 A6 */	mtlr r0
/* 803EE6E8  38 21 00 20 */	addi r1, r1, 0x20
/* 803EE6EC  4E 80 00 20 */	blr 

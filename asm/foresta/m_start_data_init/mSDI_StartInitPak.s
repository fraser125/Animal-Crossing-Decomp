lbl_803EE840:
/* 803EE840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EE844  7C 08 02 A6 */	mflr r0
/* 803EE848  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EE84C  39 61 00 20 */	addi r11, r1, 0x20
/* 803EE850  4B CA C6 7D */	bl func_8009AECC
/* 803EE854  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803EE858  7C 7B 1B 78 */	mr r27, r3
/* 803EE85C  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 803EE860  2C 05 00 01 */	cmpwi r5, 1
/* 803EE864  3F C3 00 01 */	addis r30, r3, 1
/* 803EE868  7C 9C 23 78 */	mr r28, r4
/* 803EE86C  7F 7F DB 78 */	mr r31, r27
/* 803EE870  3B A0 00 00 */	li r29, 0
/* 803EE874  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803EE878  40 82 00 08 */	bne lbl_803EE880
/* 803EE87C  3B E0 00 00 */	li r31, 0
lbl_803EE880:
/* 803EE880  2C 1C 00 05 */	cmpwi r28, 5
/* 803EE884  40 80 00 18 */	bge lbl_803EE89C
/* 803EE888  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE88C  38 00 00 07 */	li r0, 7
/* 803EE890  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE894  3C 63 00 02 */	addis r3, r3, 2
/* 803EE898  90 03 66 A4 */	stw r0, 0x66a4(r3)
lbl_803EE89C:
/* 803EE89C  4B FB DD 59 */	bl mFRm_CheckSaveData
/* 803EE8A0  2C 03 00 01 */	cmpwi r3, 1
/* 803EE8A4  40 82 00 6C */	bne lbl_803EE910
/* 803EE8A8  7F E3 FB 78 */	mr r3, r31
/* 803EE8AC  4B FB 58 95 */	bl mFM_SetBlockKindLoadCombi
/* 803EE8B0  38 7B 20 AC */	addi r3, r27, 0x20ac
/* 803EE8B4  4B FA EC 61 */	bl mEv_init_force
/* 803EE8B8  7F E3 FB 78 */	mr r3, r31
/* 803EE8BC  7F 84 E3 78 */	mr r4, r28
/* 803EE8C0  4B FC 2F 61 */	bl mHsRm_GetHuusuiRoom
/* 803EE8C4  7F 83 E3 78 */	mr r3, r28
/* 803EE8C8  4B F9 6D 4D */	bl mCkRh_DecideNowGokiFamilyCount
/* 803EE8CC  7F E3 FB 78 */	mr r3, r31
/* 803EE8D0  4B FF AF 09 */	bl mSP_ExchangeLineUp_InGame
/* 803EE8D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EE8D8  7F C4 F3 78 */	mr r4, r30
/* 803EE8DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EE8E0  38 A0 FF FF */	li r5, -1
/* 803EE8E4  38 63 00 19 */	addi r3, r3, 0x19
/* 803EE8E8  4B FE 20 7D */	bl mNpc_SetRemoveAnimalNo
/* 803EE8EC  4B FE 1D A5 */	bl mNpc_GetInAnimalP
/* 803EE8F0  4B FE 2B 55 */	bl mNpc_SetReturnAnimal
/* 803EE8F4  4B FE 28 39 */	bl mNpc_SendRegisteredGoodbyMail
/* 803EE8F8  7F E3 FB 78 */	mr r3, r31
/* 803EE8FC  4B FD 06 F1 */	bl mMkRm_MarkRoom
/* 803EE900  4B FA C4 D1 */	bl mEv_SetGateway
/* 803EE904  38 60 00 02 */	li r3, 2
/* 803EE908  4B FF 8A D5 */	bl mRmTp_SetDefaultLightSwitchData
/* 803EE90C  3B A0 00 01 */	li r29, 1
lbl_803EE910:
/* 803EE910  7F A3 EB 78 */	mr r3, r29
/* 803EE914  39 61 00 20 */	addi r11, r1, 0x20
/* 803EE918  4B CA C6 01 */	bl func_8009AF18
/* 803EE91C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EE920  7C 08 03 A6 */	mtlr r0
/* 803EE924  38 21 00 20 */	addi r1, r1, 0x20
/* 803EE928  4E 80 00 20 */	blr 

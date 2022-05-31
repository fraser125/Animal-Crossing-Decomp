lbl_80569A84:
/* 80569A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80569A88  7C 08 02 A6 */	mflr r0
/* 80569A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80569A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80569A94  83 E3 09 A4 */	lwz r31, 0x9a4(r3)
/* 80569A98  7F E3 FB 78 */	mr r3, r31
/* 80569A9C  4B E4 9B 1D */	bl mHS_get_arrange_idx
/* 80569AA0  4B FF DB 31 */	bl mPO_clear_delivery_mail
/* 80569AA4  1C 9F 24 40 */	mulli r4, r31, 0x2440
/* 80569AA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80569AAC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80569AB0  7C 60 22 14 */	add r3, r0, r4
/* 80569AB4  38 63 00 20 */	addi r3, r3, 0x20
/* 80569AB8  4B E7 67 61 */	bl mPr_ClearPrivateInfo
/* 80569ABC  7F E3 FB 78 */	mr r3, r31
/* 80569AC0  4B E4 9A F9 */	bl mHS_get_arrange_idx
/* 80569AC4  4B E4 92 DD */	bl func_803B2DA0
/* 80569AC8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80569ACC  4B E5 E1 A1 */	bl mMmd_DeletePresentedByPlayer
/* 80569AD0  7F E3 FB 78 */	mr r3, r31
/* 80569AD4  4B E3 0F 89 */	bl mEv_ClearPersonalEventFlag
/* 80569AD8  4B E3 54 FD */	bl mGH_animal_return_init
/* 80569ADC  7F E3 FB 78 */	mr r3, r31
/* 80569AE0  4B E8 42 1D */	bl mSC_LightHouse_Delete_Player
/* 80569AE4  7F E3 FB 78 */	mr r3, r31
/* 80569AE8  4B E6 C2 F1 */	bl mNpc_AllClearHPMailPlayerIdx
/* 80569AEC  7F E3 FB 78 */	mr r3, r31
/* 80569AF0  4B E6 03 25 */	bl mNW_InitPrivateOriginalData
/* 80569AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80569AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80569AFC  7C 08 03 A6 */	mtlr r0
/* 80569B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80569B04  4E 80 00 20 */	blr 

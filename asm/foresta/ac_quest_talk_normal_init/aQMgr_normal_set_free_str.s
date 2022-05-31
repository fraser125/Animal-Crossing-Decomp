lbl_80492854:
/* 80492854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80492858  7C 08 02 A6 */	mflr r0
/* 8049285C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80492860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80492864  80 63 01 78 */	lwz r3, 0x178(r3)
/* 80492868  80 63 00 00 */	lwz r3, 0(r3)
/* 8049286C  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 80492870  28 1F 00 00 */	cmplwi r31, 0
/* 80492874  41 82 00 78 */	beq lbl_804928EC
/* 80492878  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049287C  38 80 00 0A */	li r4, 0xa
/* 80492880  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80492884  3C 63 00 02 */	addis r3, r3, 2
/* 80492888  A0 63 06 88 */	lhz r3, 0x688(r3)
/* 8049288C  4B F5 0E 15 */	bl mQst_SetItemNameFreeStr
/* 80492890  38 7F 00 04 */	addi r3, r31, 4
/* 80492894  38 80 00 0B */	li r4, 0xb
/* 80492898  4B F2 11 71 */	bl mLd_SetFreeStrLandMuraName
/* 8049289C  4B F2 CE 0D */	bl func_803BF6A8
/* 804928A0  38 BF 08 D0 */	addi r5, r31, 0x8d0
/* 804928A4  38 80 00 0C */	li r4, 0xc
/* 804928A8  38 C0 00 08 */	li r6, 8
/* 804928AC  4B F2 D3 A9 */	bl mMsg_Set_free_str
/* 804928B0  7F E3 FB 78 */	mr r3, r31
/* 804928B4  38 80 00 01 */	li r4, 1
/* 804928B8  4B F3 A1 E5 */	bl mNpc_GetOtherAnimalPersonalID
/* 804928BC  28 03 00 00 */	cmplwi r3, 0
/* 804928C0  41 82 00 2C */	beq lbl_804928EC
/* 804928C4  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 804928C8  7C 64 1B 78 */	mr r4, r3
/* 804928CC  38 65 EC 94 */	addi r3, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 804928D0  4B F3 F0 81 */	bl mNpc_GetNpcWorldNameAnm
/* 804928D4  4B F2 CD D5 */	bl func_803BF6A8
/* 804928D8  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 804928DC  38 80 00 0D */	li r4, 0xd
/* 804928E0  38 A5 EC 94 */	addi r5, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 804928E4  38 C0 00 08 */	li r6, 8
/* 804928E8  4B F2 D3 6D */	bl mMsg_Set_free_str
lbl_804928EC:
/* 804928EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804928F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804928F4  7C 08 03 A6 */	mtlr r0
/* 804928F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804928FC  4E 80 00 20 */	blr 

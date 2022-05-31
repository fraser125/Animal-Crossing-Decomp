lbl_80570E4C:
/* 80570E4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80570E50  7C 08 02 A6 */	mflr r0
/* 80570E54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80570E58  39 61 00 20 */	addi r11, r1, 0x20
/* 80570E5C  4B B2 A0 79 */	bl func_8009AED4
/* 80570E60  7C 7D 1B 78 */	mr r29, r3
/* 80570E64  38 60 00 04 */	li r3, 4
/* 80570E68  38 80 00 09 */	li r4, 9
/* 80570E6C  4B E2 76 11 */	bl mDemo_Get_OrderValue
/* 80570E70  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80570E74  41 82 00 9C */	beq lbl_80570F10
/* 80570E78  4B E7 2C F1 */	bl mQst_GetFirstJobData
/* 80570E7C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80570E80  7C 7F 1B 78 */	mr r31, r3
/* 80570E84  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80570E88  A0 9F 00 28 */	lhz r4, 0x28(r31)
/* 80570E8C  3F C3 00 02 */	addis r30, r3, 2
/* 80570E90  38 A0 00 02 */	li r5, 2
/* 80570E94  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80570E98  4B E6 F8 D9 */	bl mPr_GetPossessionItemIdxWithCond
/* 80570E9C  7C 64 1B 78 */	mr r4, r3
/* 80570EA0  2C 04 FF FF */	cmpwi r4, -1
/* 80570EA4  40 82 00 08 */	bne lbl_80570EAC
/* 80570EA8  38 80 00 00 */	li r4, 0
lbl_80570EAC:
/* 80570EAC  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80570EB0  38 A0 00 00 */	li r5, 0
/* 80570EB4  38 C0 00 00 */	li r6, 0
/* 80570EB8  4B E6 FF 71 */	bl mPr_SetPossessionItem
/* 80570EBC  38 60 00 04 */	li r3, 4
/* 80570EC0  38 80 00 09 */	li r4, 9
/* 80570EC4  38 A0 00 00 */	li r5, 0
/* 80570EC8  4B E2 75 71 */	bl mDemo_Set_OrderValue
/* 80570ECC  4B E4 E7 DD */	bl func_803BF6A8
/* 80570ED0  4B E4 FE 71 */	bl mMsg_Set_LockContinue
/* 80570ED4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80570ED8  A0 9F 00 28 */	lhz r4, 0x28(r31)
/* 80570EDC  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80570EE0  38 A0 00 07 */	li r5, 7
/* 80570EE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80570EE8  38 C0 00 00 */	li r6, 0
/* 80570EEC  38 E0 00 00 */	li r7, 0
/* 80570EF0  4B E6 95 71 */	bl mPlib_request_main_give_type1
/* 80570EF4  88 1F 00 00 */	lbz r0, 0(r31)
/* 80570EF8  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 80570EFC  38 63 FF FD */	addi r3, r3, -3
/* 80570F00  4B FF FA 1D */	bl aNRG2_setup_job
/* 80570F04  7F A3 EB 78 */	mr r3, r29
/* 80570F08  38 80 00 0C */	li r4, 0xc
/* 80570F0C  48 00 03 A9 */	bl aNRG2_change_talk_proc
lbl_80570F10:
/* 80570F10  39 61 00 20 */	addi r11, r1, 0x20
/* 80570F14  4B B2 A0 0D */	bl func_8009AF20
/* 80570F18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80570F1C  7C 08 03 A6 */	mtlr r0
/* 80570F20  38 21 00 20 */	addi r1, r1, 0x20
/* 80570F24  4E 80 00 20 */	blr 

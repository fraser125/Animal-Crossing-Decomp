lbl_8056F1DC:
/* 8056F1DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F1E0  7C 08 02 A6 */	mflr r0
/* 8056F1E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F1E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056F1EC  7C 9F 23 78 */	mr r31, r4
/* 8056F1F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8056F1F4  7C 7E 1B 78 */	mr r30, r3
/* 8056F1F8  4B E5 04 B1 */	bl func_803BF6A8
/* 8056F1FC  4B E5 05 45 */	bl mMsg_Check_main_wait
/* 8056F200  2C 03 00 01 */	cmpwi r3, 1
/* 8056F204  40 82 00 4C */	bne lbl_8056F250
/* 8056F208  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056F20C  38 80 21 00 */	li r4, 0x2100
/* 8056F210  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056F214  38 A0 00 02 */	li r5, 2
/* 8056F218  3C 63 00 02 */	addis r3, r3, 2
/* 8056F21C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8056F220  4B E7 15 51 */	bl mPr_GetPossessionItemIdxWithCond
/* 8056F224  7C 60 1B 78 */	mr r0, r3
/* 8056F228  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 8056F22C  7C 06 03 78 */	mr r6, r0
/* 8056F230  38 80 00 01 */	li r4, 1
/* 8056F234  38 A0 00 04 */	li r5, 4
/* 8056F238  4B E8 04 A5 */	bl mSM_open_submenu
/* 8056F23C  4B E5 04 6D */	bl func_803BF6A8
/* 8056F240  4B E5 1B 01 */	bl mMsg_Set_LockContinue
/* 8056F244  7F C3 F3 78 */	mr r3, r30
/* 8056F248  38 80 00 02 */	li r4, 2
/* 8056F24C  48 00 01 8D */	bl aNRG_demand_payment_change_talk_proc
lbl_8056F250:
/* 8056F250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056F258  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056F25C  7C 08 03 A6 */	mtlr r0
/* 8056F260  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F264  4E 80 00 20 */	blr 

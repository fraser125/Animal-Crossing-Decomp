lbl_80574DA0:
/* 80574DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80574DA4  7C 08 02 A6 */	mflr r0
/* 80574DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80574DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80574DB0  7C 9F 23 78 */	mr r31, r4
/* 80574DB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80574DB8  7C 7E 1B 78 */	mr r30, r3
/* 80574DBC  4B E4 A8 ED */	bl func_803BF6A8
/* 80574DC0  4B E4 A9 81 */	bl mMsg_Check_main_wait
/* 80574DC4  2C 03 00 01 */	cmpwi r3, 1
/* 80574DC8  40 82 00 44 */	bne lbl_80574E0C
/* 80574DCC  38 60 00 04 */	li r3, 4
/* 80574DD0  38 80 00 09 */	li r4, 9
/* 80574DD4  38 A0 00 00 */	li r5, 0
/* 80574DD8  4B E2 36 61 */	bl mDemo_Set_OrderValue
/* 80574DDC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80574DE0  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 80574DE4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80574DE8  38 C0 00 00 */	li r6, 0
/* 80574DEC  3C E5 00 02 */	addis r7, r5, 2
/* 80574DF0  38 80 00 04 */	li r4, 4
/* 80574DF4  38 A0 00 06 */	li r5, 6
/* 80574DF8  38 E7 25 40 */	addi r7, r7, 0x2540
/* 80574DFC  4B E7 A9 09 */	bl mSM_open_submenu_new
/* 80574E00  7F C3 F3 78 */	mr r3, r30
/* 80574E04  38 80 00 06 */	li r4, 6
/* 80574E08  48 00 11 65 */	bl aSEN_change_talk_proc
lbl_80574E0C:
/* 80574E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80574E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80574E14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80574E18  7C 08 03 A6 */	mtlr r0
/* 80574E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80574E20  4E 80 00 20 */	blr 

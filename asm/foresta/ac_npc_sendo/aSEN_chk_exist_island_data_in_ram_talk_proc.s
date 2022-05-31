lbl_80574C6C:
/* 80574C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80574C70  7C 08 02 A6 */	mflr r0
/* 80574C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80574C78  39 61 00 20 */	addi r11, r1, 0x20
/* 80574C7C  4B B2 62 59 */	bl func_8009AED4
/* 80574C80  7C 7D 1B 78 */	mr r29, r3
/* 80574C84  38 60 00 04 */	li r3, 4
/* 80574C88  38 80 00 09 */	li r4, 9
/* 80574C8C  4B E2 37 F1 */	bl mDemo_Get_OrderValue
/* 80574C90  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80574C94  41 82 00 A4 */	beq lbl_80574D38
/* 80574C98  4B FF FD D1 */	bl aSEN_chk_exist_island_data_in_ram
/* 80574C9C  2C 03 00 00 */	cmpwi r3, 0
/* 80574CA0  40 82 00 0C */	bne lbl_80574CAC
/* 80574CA4  3B E0 00 00 */	li r31, 0
/* 80574CA8  48 00 00 1C */	b lbl_80574CC4
lbl_80574CAC:
/* 80574CAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80574CB0  3B E0 00 01 */	li r31, 1
/* 80574CB4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80574CB8  3C 63 00 02 */	addis r3, r3, 2
/* 80574CBC  38 63 25 40 */	addi r3, r3, 0x2540
/* 80574CC0  4B E3 EF 3D */	bl mISL_KeepIsland
lbl_80574CC4:
/* 80574CC4  2C 1F FF FF */	cmpwi r31, -1
/* 80574CC8  41 82 00 70 */	beq lbl_80574D38
/* 80574CCC  4B E4 A9 DD */	bl func_803BF6A8
/* 80574CD0  7C 60 1B 78 */	mr r0, r3
/* 80574CD4  38 60 00 04 */	li r3, 4
/* 80574CD8  7C 1E 03 78 */	mr r30, r0
/* 80574CDC  38 80 00 09 */	li r4, 9
/* 80574CE0  38 A0 00 00 */	li r5, 0
/* 80574CE4  4B E2 37 55 */	bl mDemo_Set_OrderValue
/* 80574CE8  7F A3 EB 78 */	mr r3, r29
/* 80574CEC  4B FF FE 25 */	bl aSEN_setup_pl_ride_on
/* 80574CF0  7F C3 F3 78 */	mr r3, r30
/* 80574CF4  4B E4 C0 59 */	bl mMsg_Unset_LockContinue
/* 80574CF8  3C 60 80 6C */	lis r3, msg_no_714@ha /* 0x806BF85C@ha */
/* 80574CFC  57 E0 10 3A */	slwi r0, r31, 2
/* 80574D00  38 83 F8 5C */	addi r4, r3, msg_no_714@l /* 0x806BF85C@l */
/* 80574D04  7F A3 EB 78 */	mr r3, r29
/* 80574D08  7C 84 00 2E */	lwzx r4, r4, r0
/* 80574D0C  4B FF FB 89 */	bl aSEN_get_msg_no
/* 80574D10  7C 64 1B 78 */	mr r4, r3
/* 80574D14  7F C3 F3 78 */	mr r3, r30
/* 80574D18  4B E4 BC 81 */	bl mMsg_ChangeMsgData
/* 80574D1C  7F C3 F3 78 */	mr r3, r30
/* 80574D20  4B E4 C0 09 */	bl mMsg_Set_ForceNext
/* 80574D24  3C 80 80 6C */	lis r4, next_talk_idx_713@ha /* 0x806BF858@ha */
/* 80574D28  7F A3 EB 78 */	mr r3, r29
/* 80574D2C  38 84 F8 58 */	addi r4, r4, next_talk_idx_713@l /* 0x806BF858@l */
/* 80574D30  7C 84 F8 AE */	lbzx r4, r4, r31
/* 80574D34  48 00 12 39 */	bl aSEN_change_talk_proc
lbl_80574D38:
/* 80574D38  39 61 00 20 */	addi r11, r1, 0x20
/* 80574D3C  4B B2 61 E5 */	bl func_8009AF20
/* 80574D40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80574D44  7C 08 03 A6 */	mtlr r0
/* 80574D48  38 21 00 20 */	addi r1, r1, 0x20
/* 80574D4C  4E 80 00 20 */	blr 

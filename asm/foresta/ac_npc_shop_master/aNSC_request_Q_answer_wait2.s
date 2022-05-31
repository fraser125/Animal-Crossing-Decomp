lbl_80579C58:
/* 80579C58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80579C5C  7C 08 02 A6 */	mflr r0
/* 80579C60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80579C64  39 61 00 20 */	addi r11, r1, 0x20
/* 80579C68  4B B2 12 69 */	bl func_8009AED0
/* 80579C6C  7C 7E 1B 78 */	mr r30, r3
/* 80579C70  7C 9F 23 78 */	mr r31, r4
/* 80579C74  38 60 00 04 */	li r3, 4
/* 80579C78  38 80 00 09 */	li r4, 9
/* 80579C7C  4B E1 E8 01 */	bl mDemo_Get_OrderValue
/* 80579C80  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 80579C84  4B E4 5A 25 */	bl func_803BF6A8
/* 80579C88  2C 1D 00 00 */	cmpwi r29, 0
/* 80579C8C  7C 7C 1B 78 */	mr r28, r3
/* 80579C90  41 82 01 40 */	beq lbl_80579DD0
/* 80579C94  4B E4 70 05 */	bl mMsg_Check_MainNormalContinue
/* 80579C98  2C 03 00 01 */	cmpwi r3, 1
/* 80579C9C  40 82 01 34 */	bne lbl_80579DD0
/* 80579CA0  4B E0 98 A1 */	bl func_80383540
/* 80579CA4  4B E0 9E C9 */	bl mChoice_Get_ChoseNum
/* 80579CA8  2C 03 00 01 */	cmpwi r3, 1
/* 80579CAC  41 82 00 58 */	beq lbl_80579D04
/* 80579CB0  40 80 00 10 */	bge lbl_80579CC0
/* 80579CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80579CB8  40 80 00 14 */	bge lbl_80579CCC
/* 80579CBC  48 00 00 C4 */	b lbl_80579D80
lbl_80579CC0:
/* 80579CC0  2C 03 00 03 */	cmpwi r3, 3
/* 80579CC4  40 80 00 BC */	bge lbl_80579D80
/* 80579CC8  48 00 00 5C */	b lbl_80579D24
lbl_80579CCC:
/* 80579CCC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80579CD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80579CD4  3C 63 00 02 */	addis r3, r3, 2
/* 80579CD8  88 03 61 24 */	lbz r0, 0x6124(r3)
/* 80579CDC  28 00 00 00 */	cmplwi r0, 0
/* 80579CE0  40 82 00 0C */	bne lbl_80579CEC
/* 80579CE4  3B A0 00 00 */	li r29, 0
/* 80579CE8  48 00 00 9C */	b lbl_80579D84
lbl_80579CEC:
/* 80579CEC  4B E3 C3 C5 */	bl Kabu_get_price
/* 80579CF0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80579CF4  38 80 00 01 */	li r4, 1
/* 80579CF8  4B FF D8 C5 */	bl aNSC_set_value_str
/* 80579CFC  3B A0 00 01 */	li r29, 1
/* 80579D00  48 00 00 84 */	b lbl_80579D84
lbl_80579D04:
/* 80579D04  7F C3 F3 78 */	mr r3, r30
/* 80579D08  4B FF DC E9 */	bl aNSC_check_possession_item_make_password
/* 80579D0C  2C 03 00 01 */	cmpwi r3, 1
/* 80579D10  40 82 00 0C */	bne lbl_80579D1C
/* 80579D14  3B A0 00 02 */	li r29, 2
/* 80579D18  48 00 00 6C */	b lbl_80579D84
lbl_80579D1C:
/* 80579D1C  3B A0 00 03 */	li r29, 3
/* 80579D20  48 00 00 64 */	b lbl_80579D84
lbl_80579D24:
/* 80579D24  4B E3 9D E5 */	bl mLd_PlayerManKindCheck
/* 80579D28  2C 03 00 00 */	cmpwi r3, 0
/* 80579D2C  40 82 00 4C */	bne lbl_80579D78
/* 80579D30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80579D34  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80579D38  3C 64 00 03 */	addis r3, r4, 3
/* 80579D3C  80 03 DB EC */	lwz r0, -0x2414(r3)
/* 80579D40  2C 00 00 03 */	cmpwi r0, 3
/* 80579D44  41 80 00 0C */	blt lbl_80579D50
/* 80579D48  3B A0 00 04 */	li r29, 4
/* 80579D4C  48 00 00 38 */	b lbl_80579D84
lbl_80579D50:
/* 80579D50  3C 64 00 02 */	addis r3, r4, 2
/* 80579D54  38 80 00 00 */	li r4, 0
/* 80579D58  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80579D5C  4B E6 69 CD */	bl mPr_GetPossessionItemIdx
/* 80579D60  2C 03 FF FF */	cmpwi r3, -1
/* 80579D64  41 82 00 0C */	beq lbl_80579D70
/* 80579D68  3B A0 00 05 */	li r29, 5
/* 80579D6C  48 00 00 18 */	b lbl_80579D84
lbl_80579D70:
/* 80579D70  3B A0 00 06 */	li r29, 6
/* 80579D74  48 00 00 10 */	b lbl_80579D84
lbl_80579D78:
/* 80579D78  3B A0 00 07 */	li r29, 7
/* 80579D7C  48 00 00 08 */	b lbl_80579D84
lbl_80579D80:
/* 80579D80  3B A0 00 08 */	li r29, 8
lbl_80579D84:
/* 80579D84  38 60 00 04 */	li r3, 4
/* 80579D88  38 80 00 09 */	li r4, 9
/* 80579D8C  38 A0 00 00 */	li r5, 0
/* 80579D90  4B E1 E6 A9 */	bl mDemo_Set_OrderValue
/* 80579D94  3C 60 80 6C */	lis r3, msg_no_1446@ha /* 0x806C0290@ha */
/* 80579D98  57 BD 10 3A */	slwi r29, r29, 2
/* 80579D9C  38 63 02 90 */	addi r3, r3, msg_no_1446@l /* 0x806C0290@l */
/* 80579DA0  7C 63 E8 2E */	lwzx r3, r3, r29
/* 80579DA4  4B FF E4 D9 */	bl aNSC_get_msg_no
/* 80579DA8  7C 65 1B 78 */	mr r5, r3
/* 80579DAC  7F 83 E3 78 */	mr r3, r28
/* 80579DB0  7F C4 F3 78 */	mr r4, r30
/* 80579DB4  4B FF E5 11 */	bl aNSC_Set_continue_msg_num
/* 80579DB8  3C 80 80 6C */	lis r4, next_act_idx_1447@ha /* 0x806C02B4@ha */
/* 80579DBC  7F C3 F3 78 */	mr r3, r30
/* 80579DC0  38 A4 02 B4 */	addi r5, r4, next_act_idx_1447@l /* 0x806C02B4@l */
/* 80579DC4  7F E4 FB 78 */	mr r4, r31
/* 80579DC8  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80579DCC  48 00 26 E9 */	bl aNSC_setupAction
lbl_80579DD0:
/* 80579DD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80579DD4  4B B2 11 49 */	bl func_8009AF1C
/* 80579DD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80579DDC  7C 08 03 A6 */	mtlr r0
/* 80579DE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80579DE4  4E 80 00 20 */	blr 

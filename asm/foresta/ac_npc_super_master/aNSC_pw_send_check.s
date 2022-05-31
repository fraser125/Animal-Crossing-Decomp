lbl_80584CA8:
/* 80584CA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80584CAC  7C 08 02 A6 */	mflr r0
/* 80584CB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80584CB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80584CB8  4B B1 62 19 */	bl func_8009AED0
/* 80584CBC  7C 7C 1B 78 */	mr r28, r3
/* 80584CC0  7C 9D 23 78 */	mr r29, r4
/* 80584CC4  4B E3 A9 E5 */	bl func_803BF6A8
/* 80584CC8  7C 60 1B 78 */	mr r0, r3
/* 80584CCC  38 60 01 32 */	li r3, 0x132
/* 80584CD0  7C 1E 03 78 */	mr r30, r0
/* 80584CD4  4B FF D0 B5 */	bl aNSC_get_msg_no
/* 80584CD8  7C 7F 1B 78 */	mr r31, r3
/* 80584CDC  7F C3 F3 78 */	mr r3, r30
/* 80584CE0  4B E3 B2 ED */	bl mMsg_Get_msg_num
/* 80584CE4  7C 03 F8 00 */	cmpw r3, r31
/* 80584CE8  40 82 00 D4 */	bne lbl_80584DBC
/* 80584CEC  7F C3 F3 78 */	mr r3, r30
/* 80584CF0  4B E3 BF A9 */	bl mMsg_Check_MainNormalContinue
/* 80584CF4  2C 03 00 00 */	cmpwi r3, 0
/* 80584CF8  41 82 00 C4 */	beq lbl_80584DBC
/* 80584CFC  3B E0 FF FF */	li r31, -1
/* 80584D00  4B DF E8 41 */	bl func_80383540
/* 80584D04  4B DF EE 69 */	bl mChoice_Get_ChoseNum
/* 80584D08  2C 03 00 01 */	cmpwi r3, 1
/* 80584D0C  41 82 00 78 */	beq lbl_80584D84
/* 80584D10  40 80 00 10 */	bge lbl_80584D20
/* 80584D14  2C 03 00 00 */	cmpwi r3, 0
/* 80584D18  40 80 00 14 */	bge lbl_80584D2C
/* 80584D1C  48 00 00 74 */	b lbl_80584D90
lbl_80584D20:
/* 80584D20  2C 03 00 03 */	cmpwi r3, 3
/* 80584D24  40 80 00 6C */	bge lbl_80584D90
/* 80584D28  48 00 00 64 */	b lbl_80584D8C
lbl_80584D2C:
/* 80584D2C  83 FD 1F 60 */	lwz r31, 0x1f60(r29)
/* 80584D30  38 7C 09 D8 */	addi r3, r28, 0x9d8
/* 80584D34  A1 1C 09 F4 */	lhz r8, 0x9f4(r28)
/* 80584D38  38 DC 09 D0 */	addi r6, r28, 0x9d0
/* 80584D3C  38 FC 09 C8 */	addi r7, r28, 0x9c8
/* 80584D40  38 80 00 04 */	li r4, 4
/* 80584D44  38 A0 00 01 */	li r5, 1
/* 80584D48  39 20 00 00 */	li r9, 0
/* 80584D4C  39 40 00 00 */	li r10, 0
/* 80584D50  4B E3 92 35 */	bl mMpswd_make_password
/* 80584D54  7F 83 E3 78 */	mr r3, r28
/* 80584D58  4B FF C4 89 */	bl aNSC_set_pw_password_str
/* 80584D5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80584D60  88 9F 00 02 */	lbz r4, 2(r31)
/* 80584D64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80584D68  38 A0 00 00 */	li r5, 0
/* 80584D6C  3C 63 00 02 */	addis r3, r3, 2
/* 80584D70  38 C0 00 00 */	li r6, 0
/* 80584D74  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80584D78  4B E5 C0 B1 */	bl mPr_SetPossessionItem
/* 80584D7C  3B E0 00 00 */	li r31, 0
/* 80584D80  48 00 00 10 */	b lbl_80584D90
lbl_80584D84:
/* 80584D84  3B E0 00 01 */	li r31, 1
/* 80584D88  48 00 00 08 */	b lbl_80584D90
lbl_80584D8C:
/* 80584D8C  3B E0 00 02 */	li r31, 2
lbl_80584D90:
/* 80584D90  2C 1F FF FF */	cmpwi r31, -1
/* 80584D94  41 82 00 28 */	beq lbl_80584DBC
/* 80584D98  7F C3 F3 78 */	mr r3, r30
/* 80584D9C  4B E3 BF 8D */	bl mMsg_Set_ForceNext
/* 80584DA0  3C 60 80 6C */	lis r3, next_act_idx_1845@ha /* 0x806C1920@ha */
/* 80584DA4  57 E0 10 3A */	slwi r0, r31, 2
/* 80584DA8  38 83 19 20 */	addi r4, r3, next_act_idx_1845@l /* 0x806C1920@l */
/* 80584DAC  7F 83 E3 78 */	mr r3, r28
/* 80584DB0  7C A4 00 2E */	lwzx r5, r4, r0
/* 80584DB4  7F A4 EB 78 */	mr r4, r29
/* 80584DB8  48 00 12 09 */	bl aNSC_setupAction
lbl_80584DBC:
/* 80584DBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80584DC0  4B B1 61 5D */	bl func_8009AF1C
/* 80584DC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80584DC8  7C 08 03 A6 */	mtlr r0
/* 80584DCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80584DD0  4E 80 00 20 */	blr 

lbl_8055DC14:
/* 8055DC14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055DC18  7C 08 02 A6 */	mflr r0
/* 8055DC1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055DC20  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DC24  4B B3 D2 AD */	bl func_8009AED0
/* 8055DC28  7C 7C 1B 78 */	mr r28, r3
/* 8055DC2C  7C 9D 23 78 */	mr r29, r4
/* 8055DC30  4B E6 1A 79 */	bl func_803BF6A8
/* 8055DC34  7C 60 1B 78 */	mr r0, r3
/* 8055DC38  38 60 01 32 */	li r3, 0x132
/* 8055DC3C  7C 1E 03 78 */	mr r30, r0
/* 8055DC40  4B FF D9 9D */	bl aNSC_get_msg_no
/* 8055DC44  7C 7F 1B 78 */	mr r31, r3
/* 8055DC48  7F C3 F3 78 */	mr r3, r30
/* 8055DC4C  4B E6 23 81 */	bl mMsg_Get_msg_num
/* 8055DC50  7C 03 F8 00 */	cmpw r3, r31
/* 8055DC54  40 82 00 D4 */	bne lbl_8055DD28
/* 8055DC58  7F C3 F3 78 */	mr r3, r30
/* 8055DC5C  4B E6 30 3D */	bl mMsg_Check_MainNormalContinue
/* 8055DC60  2C 03 00 00 */	cmpwi r3, 0
/* 8055DC64  41 82 00 C4 */	beq lbl_8055DD28
/* 8055DC68  3B E0 FF FF */	li r31, -1
/* 8055DC6C  4B E2 58 D5 */	bl func_80383540
/* 8055DC70  4B E2 5E FD */	bl mChoice_Get_ChoseNum
/* 8055DC74  2C 03 00 01 */	cmpwi r3, 1
/* 8055DC78  41 82 00 78 */	beq lbl_8055DCF0
/* 8055DC7C  40 80 00 10 */	bge lbl_8055DC8C
/* 8055DC80  2C 03 00 00 */	cmpwi r3, 0
/* 8055DC84  40 80 00 14 */	bge lbl_8055DC98
/* 8055DC88  48 00 00 74 */	b lbl_8055DCFC
lbl_8055DC8C:
/* 8055DC8C  2C 03 00 03 */	cmpwi r3, 3
/* 8055DC90  40 80 00 6C */	bge lbl_8055DCFC
/* 8055DC94  48 00 00 64 */	b lbl_8055DCF8
lbl_8055DC98:
/* 8055DC98  83 FD 1F 60 */	lwz r31, 0x1f60(r29)
/* 8055DC9C  38 7C 09 D8 */	addi r3, r28, 0x9d8
/* 8055DCA0  A1 1C 09 F4 */	lhz r8, 0x9f4(r28)
/* 8055DCA4  38 DC 09 D0 */	addi r6, r28, 0x9d0
/* 8055DCA8  38 FC 09 C8 */	addi r7, r28, 0x9c8
/* 8055DCAC  38 80 00 04 */	li r4, 4
/* 8055DCB0  38 A0 00 01 */	li r5, 1
/* 8055DCB4  39 20 00 00 */	li r9, 0
/* 8055DCB8  39 40 00 00 */	li r10, 0
/* 8055DCBC  4B E6 02 C9 */	bl mMpswd_make_password
/* 8055DCC0  7F 83 E3 78 */	mr r3, r28
/* 8055DCC4  4B FF CC F9 */	bl aNSC_set_pw_password_str
/* 8055DCC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055DCCC  88 9F 00 02 */	lbz r4, 2(r31)
/* 8055DCD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055DCD4  38 A0 00 00 */	li r5, 0
/* 8055DCD8  3C 63 00 02 */	addis r3, r3, 2
/* 8055DCDC  38 C0 00 00 */	li r6, 0
/* 8055DCE0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8055DCE4  4B E8 31 45 */	bl mPr_SetPossessionItem
/* 8055DCE8  3B E0 00 00 */	li r31, 0
/* 8055DCEC  48 00 00 10 */	b lbl_8055DCFC
lbl_8055DCF0:
/* 8055DCF0  3B E0 00 01 */	li r31, 1
/* 8055DCF4  48 00 00 08 */	b lbl_8055DCFC
lbl_8055DCF8:
/* 8055DCF8  3B E0 00 02 */	li r31, 2
lbl_8055DCFC:
/* 8055DCFC  2C 1F FF FF */	cmpwi r31, -1
/* 8055DD00  41 82 00 28 */	beq lbl_8055DD28
/* 8055DD04  7F C3 F3 78 */	mr r3, r30
/* 8055DD08  4B E6 30 21 */	bl mMsg_Set_ForceNext
/* 8055DD0C  3C 60 80 6B */	lis r3, next_act_idx_1702@ha /* 0x806A9FA8@ha */
/* 8055DD10  57 E0 10 3A */	slwi r0, r31, 2
/* 8055DD14  38 83 9F A8 */	addi r4, r3, next_act_idx_1702@l /* 0x806A9FA8@l */
/* 8055DD18  7F 83 E3 78 */	mr r3, r28
/* 8055DD1C  7C A4 00 2E */	lwzx r5, r4, r0
/* 8055DD20  7F A4 EB 78 */	mr r4, r29
/* 8055DD24  48 00 10 AD */	bl aNSC_setupAction
lbl_8055DD28:
/* 8055DD28  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DD2C  4B B3 D1 F1 */	bl func_8009AF1C
/* 8055DD30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055DD34  7C 08 03 A6 */	mtlr r0
/* 8055DD38  38 21 00 20 */	addi r1, r1, 0x20
/* 8055DD3C  4E 80 00 20 */	blr 

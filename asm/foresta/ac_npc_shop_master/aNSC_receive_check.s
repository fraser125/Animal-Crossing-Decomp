lbl_8057A510:
/* 8057A510  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057A514  7C 08 02 A6 */	mflr r0
/* 8057A518  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057A51C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A520  4B B2 09 B5 */	bl func_8009AED4
/* 8057A524  7C 7D 1B 78 */	mr r29, r3
/* 8057A528  7C 9E 23 78 */	mr r30, r4
/* 8057A52C  4B E4 51 7D */	bl func_803BF6A8
/* 8057A530  7C 7F 1B 78 */	mr r31, r3
/* 8057A534  4B E4 5A 99 */	bl mMsg_Get_msg_num
/* 8057A538  80 1D 09 C4 */	lwz r0, 0x9c4(r29)
/* 8057A53C  7C 00 18 00 */	cmpw r0, r3
/* 8057A540  40 82 00 5C */	bne lbl_8057A59C
/* 8057A544  7F E3 FB 78 */	mr r3, r31
/* 8057A548  4B E4 67 51 */	bl mMsg_Check_MainNormalContinue
/* 8057A54C  2C 03 00 00 */	cmpwi r3, 0
/* 8057A550  41 82 00 4C */	beq lbl_8057A59C
/* 8057A554  83 FE 1F 60 */	lwz r31, 0x1f60(r30)
/* 8057A558  4B E0 8F E9 */	bl func_80383540
/* 8057A55C  4B E0 96 11 */	bl mChoice_Get_ChoseNum
/* 8057A560  2C 03 00 00 */	cmpwi r3, 0
/* 8057A564  41 82 00 08 */	beq lbl_8057A56C
/* 8057A568  48 00 00 24 */	b lbl_8057A58C
lbl_8057A56C:
/* 8057A56C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057A570  88 9F 00 02 */	lbz r4, 2(r31)
/* 8057A574  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057A578  38 A0 00 00 */	li r5, 0
/* 8057A57C  3C 63 00 02 */	addis r3, r3, 2
/* 8057A580  38 C0 00 00 */	li r6, 0
/* 8057A584  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8057A588  4B E6 68 A1 */	bl mPr_SetPossessionItem
lbl_8057A58C:
/* 8057A58C  7F A3 EB 78 */	mr r3, r29
/* 8057A590  7F C4 F3 78 */	mr r4, r30
/* 8057A594  38 A0 00 0D */	li r5, 0xd
/* 8057A598  48 00 1F 1D */	bl aNSC_setupAction
lbl_8057A59C:
/* 8057A59C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A5A0  4B B2 09 81 */	bl func_8009AF20
/* 8057A5A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057A5A8  7C 08 03 A6 */	mtlr r0
/* 8057A5AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8057A5B0  4E 80 00 20 */	blr 

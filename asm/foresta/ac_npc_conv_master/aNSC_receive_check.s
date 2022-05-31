lbl_80548F78:
/* 80548F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80548F7C  7C 08 02 A6 */	mflr r0
/* 80548F80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80548F84  39 61 00 20 */	addi r11, r1, 0x20
/* 80548F88  4B B5 1F 4D */	bl func_8009AED4
/* 80548F8C  7C 7D 1B 78 */	mr r29, r3
/* 80548F90  7C 9E 23 78 */	mr r30, r4
/* 80548F94  4B E7 67 15 */	bl func_803BF6A8
/* 80548F98  7C 7F 1B 78 */	mr r31, r3
/* 80548F9C  4B E7 70 31 */	bl mMsg_Get_msg_num
/* 80548FA0  80 1D 09 C4 */	lwz r0, 0x9c4(r29)
/* 80548FA4  7C 00 18 00 */	cmpw r0, r3
/* 80548FA8  40 82 00 5C */	bne lbl_80549004
/* 80548FAC  7F E3 FB 78 */	mr r3, r31
/* 80548FB0  4B E7 7C E9 */	bl mMsg_Check_MainNormalContinue
/* 80548FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80548FB8  41 82 00 4C */	beq lbl_80549004
/* 80548FBC  83 FE 1F 60 */	lwz r31, 0x1f60(r30)
/* 80548FC0  4B E3 A5 81 */	bl func_80383540
/* 80548FC4  4B E3 AB A9 */	bl mChoice_Get_ChoseNum
/* 80548FC8  2C 03 00 00 */	cmpwi r3, 0
/* 80548FCC  41 82 00 08 */	beq lbl_80548FD4
/* 80548FD0  48 00 00 24 */	b lbl_80548FF4
lbl_80548FD4:
/* 80548FD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80548FD8  88 9F 00 02 */	lbz r4, 2(r31)
/* 80548FDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80548FE0  38 A0 00 00 */	li r5, 0
/* 80548FE4  3C 63 00 02 */	addis r3, r3, 2
/* 80548FE8  38 C0 00 00 */	li r6, 0
/* 80548FEC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80548FF0  4B E9 7E 39 */	bl mPr_SetPossessionItem
lbl_80548FF4:
/* 80548FF4  7F A3 EB 78 */	mr r3, r29
/* 80548FF8  7F C4 F3 78 */	mr r4, r30
/* 80548FFC  38 A0 00 0D */	li r5, 0xd
/* 80549000  48 00 1F 1D */	bl aNSC_setupAction
lbl_80549004:
/* 80549004  39 61 00 20 */	addi r11, r1, 0x20
/* 80549008  4B B5 1F 19 */	bl func_8009AF20
/* 8054900C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80549010  7C 08 03 A6 */	mtlr r0
/* 80549014  38 21 00 20 */	addi r1, r1, 0x20
/* 80549018  4E 80 00 20 */	blr 

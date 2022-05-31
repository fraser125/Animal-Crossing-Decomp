lbl_8055C5BC:
/* 8055C5BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055C5C0  7C 08 02 A6 */	mflr r0
/* 8055C5C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055C5C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8055C5CC  4B B3 E9 05 */	bl func_8009AED0
/* 8055C5D0  7C 7C 1B 78 */	mr r28, r3
/* 8055C5D4  7C 9D 23 78 */	mr r29, r4
/* 8055C5D8  38 60 00 04 */	li r3, 4
/* 8055C5DC  38 80 00 09 */	li r4, 9
/* 8055C5E0  4B E3 BE 9D */	bl mDemo_Get_OrderValue
/* 8055C5E4  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 8055C5E8  4B E6 30 C1 */	bl func_803BF6A8
/* 8055C5EC  2C 1F 00 00 */	cmpwi r31, 0
/* 8055C5F0  7C 7E 1B 78 */	mr r30, r3
/* 8055C5F4  41 82 00 C4 */	beq lbl_8055C6B8
/* 8055C5F8  4B E6 46 A1 */	bl mMsg_Check_MainNormalContinue
/* 8055C5FC  2C 03 00 01 */	cmpwi r3, 1
/* 8055C600  40 82 00 B8 */	bne lbl_8055C6B8
/* 8055C604  38 60 00 17 */	li r3, 0x17
/* 8055C608  4B FF EF D5 */	bl aNSC_get_msg_no
/* 8055C60C  4B E3 BF 09 */	bl mDemo_Set_msg_num
/* 8055C610  4B E2 6F 31 */	bl func_80383540
/* 8055C614  4B E2 75 59 */	bl mChoice_Get_ChoseNum
/* 8055C618  2C 03 00 01 */	cmpwi r3, 1
/* 8055C61C  41 82 00 28 */	beq lbl_8055C644
/* 8055C620  40 80 00 10 */	bge lbl_8055C630
/* 8055C624  2C 03 00 00 */	cmpwi r3, 0
/* 8055C628  40 80 00 14 */	bge lbl_8055C63C
/* 8055C62C  48 00 00 3C */	b lbl_8055C668
lbl_8055C630:
/* 8055C630  2C 03 00 03 */	cmpwi r3, 3
/* 8055C634  40 80 00 34 */	bge lbl_8055C668
/* 8055C638  48 00 00 28 */	b lbl_8055C660
lbl_8055C63C:
/* 8055C63C  3B E0 00 01 */	li r31, 1
/* 8055C640  48 00 00 2C */	b lbl_8055C66C
lbl_8055C644:
/* 8055C644  4B FF E1 2D */	bl aNSC_getP_free_ftr_order
/* 8055C648  28 03 00 00 */	cmplwi r3, 0
/* 8055C64C  40 82 00 0C */	bne lbl_8055C658
/* 8055C650  3B E0 00 02 */	li r31, 2
/* 8055C654  48 00 00 18 */	b lbl_8055C66C
lbl_8055C658:
/* 8055C658  3B E0 00 03 */	li r31, 3
/* 8055C65C  48 00 00 10 */	b lbl_8055C66C
lbl_8055C660:
/* 8055C660  3B E0 00 00 */	li r31, 0
/* 8055C664  48 00 00 08 */	b lbl_8055C66C
lbl_8055C668:
/* 8055C668  3B E0 00 04 */	li r31, 4
lbl_8055C66C:
/* 8055C66C  38 60 00 04 */	li r3, 4
/* 8055C670  38 80 00 09 */	li r4, 9
/* 8055C674  38 A0 00 00 */	li r5, 0
/* 8055C678  4B E3 BD C1 */	bl mDemo_Set_OrderValue
/* 8055C67C  3C 60 80 6B */	lis r3, msg_no_1325@ha /* 0x806A9E34@ha */
/* 8055C680  57 FF 10 3A */	slwi r31, r31, 2
/* 8055C684  38 63 9E 34 */	addi r3, r3, msg_no_1325@l /* 0x806A9E34@l */
/* 8055C688  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8055C68C  4B FF EF 51 */	bl aNSC_get_msg_no
/* 8055C690  7C 65 1B 78 */	mr r5, r3
/* 8055C694  7F C3 F3 78 */	mr r3, r30
/* 8055C698  7F 84 E3 78 */	mr r4, r28
/* 8055C69C  4B FF EF 79 */	bl aNSC_Set_continue_msg_num
/* 8055C6A0  3C 80 80 6B */	lis r4, next_act_idx_1326@ha /* 0x806A9E48@ha */
/* 8055C6A4  7F 83 E3 78 */	mr r3, r28
/* 8055C6A8  38 A4 9E 48 */	addi r5, r4, next_act_idx_1326@l /* 0x806A9E48@l */
/* 8055C6AC  7F A4 EB 78 */	mr r4, r29
/* 8055C6B0  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8055C6B4  48 00 27 1D */	bl aNSC_setupAction
lbl_8055C6B8:
/* 8055C6B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8055C6BC  4B B3 E8 61 */	bl func_8009AF1C
/* 8055C6C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055C6C4  7C 08 03 A6 */	mtlr r0
/* 8055C6C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8055C6CC  4E 80 00 20 */	blr 

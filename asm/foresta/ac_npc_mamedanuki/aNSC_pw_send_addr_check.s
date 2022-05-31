lbl_8055DA10:
/* 8055DA10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055DA14  7C 08 02 A6 */	mflr r0
/* 8055DA18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055DA1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DA20  4B B3 D4 B1 */	bl func_8009AED0
/* 8055DA24  7C 7C 1B 78 */	mr r28, r3
/* 8055DA28  7C 9D 23 78 */	mr r29, r4
/* 8055DA2C  4B E6 1C 7D */	bl func_803BF6A8
/* 8055DA30  7C 60 1B 78 */	mr r0, r3
/* 8055DA34  38 60 01 2F */	li r3, 0x12f
/* 8055DA38  7C 1E 03 78 */	mr r30, r0
/* 8055DA3C  4B FF DB A1 */	bl aNSC_get_msg_no
/* 8055DA40  7C 7F 1B 78 */	mr r31, r3
/* 8055DA44  7F C3 F3 78 */	mr r3, r30
/* 8055DA48  4B E6 25 85 */	bl mMsg_Get_msg_num
/* 8055DA4C  7C 03 F8 00 */	cmpw r3, r31
/* 8055DA50  40 82 00 84 */	bne lbl_8055DAD4
/* 8055DA54  7F C3 F3 78 */	mr r3, r30
/* 8055DA58  4B E6 32 41 */	bl mMsg_Check_MainNormalContinue
/* 8055DA5C  2C 03 00 00 */	cmpwi r3, 0
/* 8055DA60  41 82 00 74 */	beq lbl_8055DAD4
/* 8055DA64  3B E0 FF FF */	li r31, -1
/* 8055DA68  4B E2 5A D9 */	bl func_80383540
/* 8055DA6C  4B E2 61 01 */	bl mChoice_Get_ChoseNum
/* 8055DA70  2C 03 00 01 */	cmpwi r3, 1
/* 8055DA74  41 82 00 28 */	beq lbl_8055DA9C
/* 8055DA78  40 80 00 10 */	bge lbl_8055DA88
/* 8055DA7C  2C 03 00 00 */	cmpwi r3, 0
/* 8055DA80  40 80 00 14 */	bge lbl_8055DA94
/* 8055DA84  48 00 00 24 */	b lbl_8055DAA8
lbl_8055DA88:
/* 8055DA88  2C 03 00 03 */	cmpwi r3, 3
/* 8055DA8C  40 80 00 1C */	bge lbl_8055DAA8
/* 8055DA90  48 00 00 14 */	b lbl_8055DAA4
lbl_8055DA94:
/* 8055DA94  3B E0 00 00 */	li r31, 0
/* 8055DA98  48 00 00 10 */	b lbl_8055DAA8
lbl_8055DA9C:
/* 8055DA9C  3B E0 00 01 */	li r31, 1
/* 8055DAA0  48 00 00 08 */	b lbl_8055DAA8
lbl_8055DAA4:
/* 8055DAA4  3B E0 00 02 */	li r31, 2
lbl_8055DAA8:
/* 8055DAA8  2C 1F FF FF */	cmpwi r31, -1
/* 8055DAAC  41 82 00 28 */	beq lbl_8055DAD4
/* 8055DAB0  7F C3 F3 78 */	mr r3, r30
/* 8055DAB4  4B E6 32 75 */	bl mMsg_Set_ForceNext
/* 8055DAB8  3C 60 80 6B */	lis r3, next_act_idx_1669@ha /* 0x806A9F8C@ha */
/* 8055DABC  57 E0 10 3A */	slwi r0, r31, 2
/* 8055DAC0  38 83 9F 8C */	addi r4, r3, next_act_idx_1669@l /* 0x806A9F8C@l */
/* 8055DAC4  7F 83 E3 78 */	mr r3, r28
/* 8055DAC8  7C A4 00 2E */	lwzx r5, r4, r0
/* 8055DACC  7F A4 EB 78 */	mr r4, r29
/* 8055DAD0  48 00 13 01 */	bl aNSC_setupAction
lbl_8055DAD4:
/* 8055DAD4  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DAD8  4B B3 D4 45 */	bl func_8009AF1C
/* 8055DADC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055DAE0  7C 08 03 A6 */	mtlr r0
/* 8055DAE4  38 21 00 20 */	addi r1, r1, 0x20
/* 8055DAE8  4E 80 00 20 */	blr 

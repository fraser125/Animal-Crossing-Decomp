lbl_8057B49C:
/* 8057B49C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057B4A0  7C 08 02 A6 */	mflr r0
/* 8057B4A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057B4A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B4AC  4B B1 FA 21 */	bl func_8009AECC
/* 8057B4B0  7C 7B 1B 78 */	mr r27, r3
/* 8057B4B4  7C 9C 23 78 */	mr r28, r4
/* 8057B4B8  4B E4 41 F1 */	bl func_803BF6A8
/* 8057B4BC  7C 60 1B 78 */	mr r0, r3
/* 8057B4C0  38 60 01 39 */	li r3, 0x139
/* 8057B4C4  7C 1D 03 78 */	mr r29, r0
/* 8057B4C8  4B FF CD B5 */	bl aNSC_get_msg_no
/* 8057B4CC  7C 7E 1B 78 */	mr r30, r3
/* 8057B4D0  38 60 01 44 */	li r3, 0x144
/* 8057B4D4  4B FF CD A9 */	bl aNSC_get_msg_no
/* 8057B4D8  7C 7F 1B 78 */	mr r31, r3
/* 8057B4DC  7F A3 EB 78 */	mr r3, r29
/* 8057B4E0  4B E4 4A ED */	bl mMsg_Get_msg_num
/* 8057B4E4  7C 03 F0 00 */	cmpw r3, r30
/* 8057B4E8  41 82 00 0C */	beq lbl_8057B4F4
/* 8057B4EC  7C 03 F8 00 */	cmpw r3, r31
/* 8057B4F0  40 82 00 88 */	bne lbl_8057B578
lbl_8057B4F4:
/* 8057B4F4  7F A3 EB 78 */	mr r3, r29
/* 8057B4F8  4B E4 57 A1 */	bl mMsg_Check_MainNormalContinue
/* 8057B4FC  2C 03 00 00 */	cmpwi r3, 0
/* 8057B500  41 82 00 78 */	beq lbl_8057B578
/* 8057B504  3B C0 FF FF */	li r30, -1
/* 8057B508  4B E0 80 39 */	bl func_80383540
/* 8057B50C  4B E0 86 61 */	bl mChoice_Get_ChoseNum
/* 8057B510  2C 03 00 01 */	cmpwi r3, 1
/* 8057B514  41 82 00 1C */	beq lbl_8057B530
/* 8057B518  40 80 00 34 */	bge lbl_8057B54C
/* 8057B51C  2C 03 00 00 */	cmpwi r3, 0
/* 8057B520  40 80 00 08 */	bge lbl_8057B528
/* 8057B524  48 00 00 28 */	b lbl_8057B54C
lbl_8057B528:
/* 8057B528  3B C0 00 00 */	li r30, 0
/* 8057B52C  48 00 00 20 */	b lbl_8057B54C
lbl_8057B530:
/* 8057B530  3B C0 00 01 */	li r30, 1
/* 8057B534  38 60 01 3A */	li r3, 0x13a
/* 8057B538  4B FF CD 45 */	bl aNSC_get_msg_no
/* 8057B53C  7C 65 1B 78 */	mr r5, r3
/* 8057B540  7F A3 EB 78 */	mr r3, r29
/* 8057B544  7F 64 DB 78 */	mr r4, r27
/* 8057B548  4B FF CD BD */	bl aNSC_ChangeMsgData
lbl_8057B54C:
/* 8057B54C  2C 1E FF FF */	cmpwi r30, -1
/* 8057B550  41 82 00 28 */	beq lbl_8057B578
/* 8057B554  7F A3 EB 78 */	mr r3, r29
/* 8057B558  4B E4 57 D1 */	bl mMsg_Set_ForceNext
/* 8057B55C  3C 60 80 6C */	lis r3, next_act_idx_1850@ha /* 0x806C0440@ha */
/* 8057B560  57 C0 10 3A */	slwi r0, r30, 2
/* 8057B564  38 83 04 40 */	addi r4, r3, next_act_idx_1850@l /* 0x806C0440@l */
/* 8057B568  7F 63 DB 78 */	mr r3, r27
/* 8057B56C  7C A4 00 2E */	lwzx r5, r4, r0
/* 8057B570  7F 84 E3 78 */	mr r4, r28
/* 8057B574  48 00 0F 41 */	bl aNSC_setupAction
lbl_8057B578:
/* 8057B578  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B57C  4B B1 F9 9D */	bl func_8009AF18
/* 8057B580  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057B584  7C 08 03 A6 */	mtlr r0
/* 8057B588  38 21 00 20 */	addi r1, r1, 0x20
/* 8057B58C  4E 80 00 20 */	blr 

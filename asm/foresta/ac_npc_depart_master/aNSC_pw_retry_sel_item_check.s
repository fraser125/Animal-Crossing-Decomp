lbl_80551648:
/* 80551648  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055164C  7C 08 02 A6 */	mflr r0
/* 80551650  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551654  39 61 00 20 */	addi r11, r1, 0x20
/* 80551658  4B B4 98 79 */	bl func_8009AED0
/* 8055165C  7C 7C 1B 78 */	mr r28, r3
/* 80551660  7C 9D 23 78 */	mr r29, r4
/* 80551664  4B E6 E0 45 */	bl func_803BF6A8
/* 80551668  7C 60 1B 78 */	mr r0, r3
/* 8055166C  38 60 01 31 */	li r3, 0x131
/* 80551670  7C 1E 03 78 */	mr r30, r0
/* 80551674  4B FF CF 89 */	bl aNSC_get_msg_no
/* 80551678  7C 7F 1B 78 */	mr r31, r3
/* 8055167C  7F C3 F3 78 */	mr r3, r30
/* 80551680  4B E6 E9 4D */	bl mMsg_Get_msg_num
/* 80551684  7C 03 F8 00 */	cmpw r3, r31
/* 80551688  40 82 00 70 */	bne lbl_805516F8
/* 8055168C  7F C3 F3 78 */	mr r3, r30
/* 80551690  4B E6 F6 09 */	bl mMsg_Check_MainNormalContinue
/* 80551694  2C 03 00 00 */	cmpwi r3, 0
/* 80551698  41 82 00 60 */	beq lbl_805516F8
/* 8055169C  3B E0 FF FF */	li r31, -1
/* 805516A0  4B E3 1E A1 */	bl func_80383540
/* 805516A4  4B E3 24 C9 */	bl mChoice_Get_ChoseNum
/* 805516A8  2C 03 00 01 */	cmpwi r3, 1
/* 805516AC  41 82 00 1C */	beq lbl_805516C8
/* 805516B0  40 80 00 1C */	bge lbl_805516CC
/* 805516B4  2C 03 00 00 */	cmpwi r3, 0
/* 805516B8  40 80 00 08 */	bge lbl_805516C0
/* 805516BC  48 00 00 10 */	b lbl_805516CC
lbl_805516C0:
/* 805516C0  3B E0 00 00 */	li r31, 0
/* 805516C4  48 00 00 08 */	b lbl_805516CC
lbl_805516C8:
/* 805516C8  3B E0 00 01 */	li r31, 1
lbl_805516CC:
/* 805516CC  2C 1F FF FF */	cmpwi r31, -1
/* 805516D0  41 82 00 28 */	beq lbl_805516F8
/* 805516D4  7F C3 F3 78 */	mr r3, r30
/* 805516D8  4B E6 F6 51 */	bl mMsg_Set_ForceNext
/* 805516DC  3C 60 80 6A */	lis r3, next_act_idx_1845@ha /* 0x806A5E24@ha */
/* 805516E0  57 E0 10 3A */	slwi r0, r31, 2
/* 805516E4  38 83 5E 24 */	addi r4, r3, next_act_idx_1845@l /* 0x806A5E24@l */
/* 805516E8  7F 83 E3 78 */	mr r3, r28
/* 805516EC  7C A4 00 2E */	lwzx r5, r4, r0
/* 805516F0  7F A4 EB 78 */	mr r4, r29
/* 805516F4  48 00 11 41 */	bl aNSC_setupAction
lbl_805516F8:
/* 805516F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805516FC  4B B4 98 21 */	bl func_8009AF1C
/* 80551700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80551704  7C 08 03 A6 */	mtlr r0
/* 80551708  38 21 00 20 */	addi r1, r1, 0x20
/* 8055170C  4E 80 00 20 */	blr 

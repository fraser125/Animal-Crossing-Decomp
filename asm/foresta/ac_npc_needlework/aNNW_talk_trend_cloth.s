lbl_80563640:
/* 80563640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563644  7C 08 02 A6 */	mflr r0
/* 80563648  38 80 00 09 */	li r4, 9
/* 8056364C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563654  93 C1 00 08 */	stw r30, 8(r1)
/* 80563658  7C 7E 1B 78 */	mr r30, r3
/* 8056365C  38 60 00 04 */	li r3, 4
/* 80563660  4B E3 4E 1D */	bl mDemo_Get_OrderValue
/* 80563664  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80563668  4B E5 C0 41 */	bl func_803BF6A8
/* 8056366C  2C 1F 00 00 */	cmpwi r31, 0
/* 80563670  7C 7F 1B 78 */	mr r31, r3
/* 80563674  41 82 00 38 */	beq lbl_805636AC
/* 80563678  4B E5 D6 21 */	bl mMsg_Check_MainNormalContinue
/* 8056367C  2C 03 00 01 */	cmpwi r3, 1
/* 80563680  40 82 00 2C */	bne lbl_805636AC
/* 80563684  4B FF E7 8D */	bl aNNW_set_trend_umbrella_message
/* 80563688  7F E3 FB 78 */	mr r3, r31
/* 8056368C  4B E5 D6 9D */	bl mMsg_Set_ForceNext
/* 80563690  7F C3 F3 78 */	mr r3, r30
/* 80563694  38 80 00 41 */	li r4, 0x41
/* 80563698  48 00 0D F1 */	bl aNNW_change_talk_proc
/* 8056369C  38 60 00 04 */	li r3, 4
/* 805636A0  38 80 00 09 */	li r4, 9
/* 805636A4  38 A0 00 00 */	li r5, 0
/* 805636A8  4B E3 4D 91 */	bl mDemo_Set_OrderValue
lbl_805636AC:
/* 805636AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805636B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805636B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805636B8  7C 08 03 A6 */	mtlr r0
/* 805636BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805636C0  4E 80 00 20 */	blr 

lbl_80562618:
/* 80562618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056261C  7C 08 02 A6 */	mflr r0
/* 80562620  38 80 00 09 */	li r4, 9
/* 80562624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80562628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056262C  93 C1 00 08 */	stw r30, 8(r1)
/* 80562630  7C 7E 1B 78 */	mr r30, r3
/* 80562634  38 60 00 04 */	li r3, 4
/* 80562638  4B E3 5E 45 */	bl mDemo_Get_OrderValue
/* 8056263C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80562640  4B E5 D0 69 */	bl func_803BF6A8
/* 80562644  2C 1F 00 00 */	cmpwi r31, 0
/* 80562648  7C 7F 1B 78 */	mr r31, r3
/* 8056264C  41 82 00 88 */	beq lbl_805626D4
/* 80562650  4B E5 E6 49 */	bl mMsg_Check_MainNormalContinue
/* 80562654  2C 03 00 01 */	cmpwi r3, 1
/* 80562658  40 82 00 7C */	bne lbl_805626D4
/* 8056265C  4B E2 0E E5 */	bl func_80383540
/* 80562660  4B E2 15 0D */	bl mChoice_Get_ChoseNum
/* 80562664  2C 03 00 01 */	cmpwi r3, 1
/* 80562668  41 82 00 14 */	beq lbl_8056267C
/* 8056266C  40 80 00 58 */	bge lbl_805626C4
/* 80562670  2C 03 00 00 */	cmpwi r3, 0
/* 80562674  40 80 00 18 */	bge lbl_8056268C
/* 80562678  48 00 00 4C */	b lbl_805626C4
lbl_8056267C:
/* 8056267C  7F C3 F3 78 */	mr r3, r30
/* 80562680  38 80 00 01 */	li r4, 1
/* 80562684  48 00 1E 05 */	bl aNNW_change_talk_proc
/* 80562688  48 00 00 3C */	b lbl_805626C4
lbl_8056268C:
/* 8056268C  38 60 01 5E */	li r3, 0x15e
/* 80562690  4B E8 89 01 */	bl mSP_money_check
/* 80562694  2C 03 00 00 */	cmpwi r3, 0
/* 80562698  41 82 00 14 */	beq lbl_805626AC
/* 8056269C  7F C3 F3 78 */	mr r3, r30
/* 805626A0  38 80 00 0D */	li r4, 0xd
/* 805626A4  48 00 1D E5 */	bl aNNW_change_talk_proc
/* 805626A8  48 00 00 1C */	b lbl_805626C4
lbl_805626AC:
/* 805626AC  7F E3 FB 78 */	mr r3, r31
/* 805626B0  38 80 2F E7 */	li r4, 0x2fe7
/* 805626B4  4B E5 D9 11 */	bl mMsg_Set_continue_msg_num
/* 805626B8  7F C3 F3 78 */	mr r3, r30
/* 805626BC  38 80 00 01 */	li r4, 1
/* 805626C0  48 00 1D C9 */	bl aNNW_change_talk_proc
lbl_805626C4:
/* 805626C4  38 60 00 04 */	li r3, 4
/* 805626C8  38 80 00 09 */	li r4, 9
/* 805626CC  38 A0 00 00 */	li r5, 0
/* 805626D0  4B E3 5D 69 */	bl mDemo_Set_OrderValue
lbl_805626D4:
/* 805626D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805626D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805626DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805626E0  7C 08 03 A6 */	mtlr r0
/* 805626E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805626E8  4E 80 00 20 */	blr 

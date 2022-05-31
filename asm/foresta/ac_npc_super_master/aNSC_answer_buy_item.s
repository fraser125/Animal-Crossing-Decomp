lbl_80583968:
/* 80583968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058396C  7C 08 02 A6 */	mflr r0
/* 80583970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80583974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80583978  7C 9F 23 78 */	mr r31, r4
/* 8058397C  38 80 00 09 */	li r4, 9
/* 80583980  93 C1 00 08 */	stw r30, 8(r1)
/* 80583984  7C 7E 1B 78 */	mr r30, r3
/* 80583988  38 60 00 04 */	li r3, 4
/* 8058398C  4B E1 4A F1 */	bl mDemo_Get_OrderValue
/* 80583990  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80583994  41 82 00 38 */	beq lbl_805839CC
/* 80583998  4B E3 BD 11 */	bl func_803BF6A8
/* 8058399C  4B E3 D2 FD */	bl mMsg_Check_MainNormalContinue
/* 805839A0  2C 03 00 00 */	cmpwi r3, 0
/* 805839A4  41 82 00 28 */	beq lbl_805839CC
/* 805839A8  38 60 00 04 */	li r3, 4
/* 805839AC  38 80 00 09 */	li r4, 9
/* 805839B0  38 A0 00 00 */	li r5, 0
/* 805839B4  4B E1 4A 85 */	bl mDemo_Set_OrderValue
/* 805839B8  80 BE 09 94 */	lwz r5, 0x994(r30)
/* 805839BC  7F C3 F3 78 */	mr r3, r30
/* 805839C0  7F E4 FB 78 */	mr r4, r31
/* 805839C4  38 A5 00 01 */	addi r5, r5, 1
/* 805839C8  48 00 25 F9 */	bl aNSC_setupAction
lbl_805839CC:
/* 805839CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805839D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805839D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805839D8  7C 08 03 A6 */	mtlr r0
/* 805839DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805839E0  4E 80 00 20 */	blr 

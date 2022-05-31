lbl_80549ADC:
/* 80549ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80549AE0  7C 08 02 A6 */	mflr r0
/* 80549AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80549AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80549AEC  7C 9F 23 78 */	mr r31, r4
/* 80549AF0  38 80 00 09 */	li r4, 9
/* 80549AF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80549AF8  7C 7E 1B 78 */	mr r30, r3
/* 80549AFC  38 60 00 04 */	li r3, 4
/* 80549B00  4B E4 E9 7D */	bl mDemo_Get_OrderValue
/* 80549B04  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80549B08  41 82 00 34 */	beq lbl_80549B3C
/* 80549B0C  4B E7 5B 9D */	bl func_803BF6A8
/* 80549B10  4B E7 71 89 */	bl mMsg_Check_MainNormalContinue
/* 80549B14  2C 03 00 01 */	cmpwi r3, 1
/* 80549B18  40 82 00 24 */	bne lbl_80549B3C
/* 80549B1C  38 60 00 04 */	li r3, 4
/* 80549B20  38 80 00 09 */	li r4, 9
/* 80549B24  38 A0 00 00 */	li r5, 0
/* 80549B28  4B E4 E9 11 */	bl mDemo_Set_OrderValue
/* 80549B2C  7F C3 F3 78 */	mr r3, r30
/* 80549B30  7F E4 FB 78 */	mr r4, r31
/* 80549B34  38 A0 00 2F */	li r5, 0x2f
/* 80549B38  48 00 13 E5 */	bl aNSC_setupAction
lbl_80549B3C:
/* 80549B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80549B40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80549B44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80549B48  7C 08 03 A6 */	mtlr r0
/* 80549B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80549B50  4E 80 00 20 */	blr 

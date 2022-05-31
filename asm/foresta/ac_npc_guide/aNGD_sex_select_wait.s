lbl_80553A8C:
/* 80553A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553A90  7C 08 02 A6 */	mflr r0
/* 80553A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553A98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80553A9C  7C 9F 23 78 */	mr r31, r4
/* 80553AA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80553AA4  7C 7E 1B 78 */	mr r30, r3
/* 80553AA8  4B E6 BC 01 */	bl func_803BF6A8
/* 80553AAC  4B E6 D1 ED */	bl mMsg_Check_MainNormalContinue
/* 80553AB0  2C 03 00 01 */	cmpwi r3, 1
/* 80553AB4  40 82 00 50 */	bne lbl_80553B04
/* 80553AB8  4B E2 FA 89 */	bl func_80383540
/* 80553ABC  4B E3 00 B1 */	bl mChoice_Get_ChoseNum
/* 80553AC0  2C 03 00 02 */	cmpwi r3, 2
/* 80553AC4  41 82 00 28 */	beq lbl_80553AEC
/* 80553AC8  40 80 00 3C */	bge lbl_80553B04
/* 80553ACC  2C 03 00 00 */	cmpwi r3, 0
/* 80553AD0  40 80 00 08 */	bge lbl_80553AD8
/* 80553AD4  48 00 00 30 */	b lbl_80553B04
lbl_80553AD8:
/* 80553AD8  7F C3 F3 78 */	mr r3, r30
/* 80553ADC  7F E4 FB 78 */	mr r4, r31
/* 80553AE0  38 A0 00 0E */	li r5, 0xe
/* 80553AE4  48 00 0E 25 */	bl aNGD_setupAction
/* 80553AE8  48 00 00 1C */	b lbl_80553B04
lbl_80553AEC:
/* 80553AEC  38 00 00 0B */	li r0, 0xb
/* 80553AF0  7F C3 F3 78 */	mr r3, r30
/* 80553AF4  90 1E 09 98 */	stw r0, 0x998(r30)
/* 80553AF8  7F E4 FB 78 */	mr r4, r31
/* 80553AFC  38 A0 00 04 */	li r5, 4
/* 80553B00  48 00 0E 09 */	bl aNGD_setupAction
lbl_80553B04:
/* 80553B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80553B0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80553B10  7C 08 03 A6 */	mtlr r0
/* 80553B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80553B18  4E 80 00 20 */	blr 

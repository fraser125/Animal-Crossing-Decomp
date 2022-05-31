lbl_80562264:
/* 80562264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80562268  7C 08 02 A6 */	mflr r0
/* 8056226C  38 80 00 09 */	li r4, 9
/* 80562270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80562274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80562278  93 C1 00 08 */	stw r30, 8(r1)
/* 8056227C  7C 7E 1B 78 */	mr r30, r3
/* 80562280  38 60 00 04 */	li r3, 4
/* 80562284  4B E3 61 F9 */	bl mDemo_Get_OrderValue
/* 80562288  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 8056228C  4B E5 D4 1D */	bl func_803BF6A8
/* 80562290  2C 1F 00 00 */	cmpwi r31, 0
/* 80562294  41 82 00 34 */	beq lbl_805622C8
/* 80562298  4B E5 EA 01 */	bl mMsg_Check_MainNormalContinue
/* 8056229C  2C 03 00 01 */	cmpwi r3, 1
/* 805622A0  40 82 00 28 */	bne lbl_805622C8
/* 805622A4  4B E2 12 9D */	bl func_80383540
/* 805622A8  4B E2 18 C5 */	bl mChoice_Get_ChoseNum
/* 805622AC  7C 64 1B 78 */	mr r4, r3
/* 805622B0  7F C3 F3 78 */	mr r3, r30
/* 805622B4  4B FF FE 1D */	bl aNNW_set_5_ways
/* 805622B8  38 60 00 04 */	li r3, 4
/* 805622BC  38 80 00 09 */	li r4, 9
/* 805622C0  38 A0 00 00 */	li r5, 0
/* 805622C4  4B E3 61 75 */	bl mDemo_Set_OrderValue
lbl_805622C8:
/* 805622C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805622CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805622D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805622D4  7C 08 03 A6 */	mtlr r0
/* 805622D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805622DC  4E 80 00 20 */	blr 

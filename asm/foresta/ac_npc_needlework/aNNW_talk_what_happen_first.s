lbl_8056215C:
/* 8056215C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80562160  7C 08 02 A6 */	mflr r0
/* 80562164  38 80 00 09 */	li r4, 9
/* 80562168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056216C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80562170  93 C1 00 08 */	stw r30, 8(r1)
/* 80562174  7C 7E 1B 78 */	mr r30, r3
/* 80562178  38 60 00 04 */	li r3, 4
/* 8056217C  4B E3 63 01 */	bl mDemo_Get_OrderValue
/* 80562180  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80562184  4B E5 D5 25 */	bl func_803BF6A8
/* 80562188  2C 1F 00 00 */	cmpwi r31, 0
/* 8056218C  7C 7F 1B 78 */	mr r31, r3
/* 80562190  41 82 00 38 */	beq lbl_805621C8
/* 80562194  4B E5 EB 05 */	bl mMsg_Check_MainNormalContinue
/* 80562198  2C 03 00 01 */	cmpwi r3, 1
/* 8056219C  40 82 00 2C */	bne lbl_805621C8
/* 805621A0  4B E2 13 A1 */	bl func_80383540
/* 805621A4  4B E2 19 C9 */	bl mChoice_Get_ChoseNum
/* 805621A8  7C 65 1B 78 */	mr r5, r3
/* 805621AC  7F C3 F3 78 */	mr r3, r30
/* 805621B0  7F E4 FB 78 */	mr r4, r31
/* 805621B4  4B FF FE 31 */	bl aNNW_set_6_ways
/* 805621B8  38 60 00 04 */	li r3, 4
/* 805621BC  38 80 00 09 */	li r4, 9
/* 805621C0  38 A0 00 00 */	li r5, 0
/* 805621C4  4B E3 62 75 */	bl mDemo_Set_OrderValue
lbl_805621C8:
/* 805621C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805621CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805621D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805621D4  7C 08 03 A6 */	mtlr r0
/* 805621D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805621DC  4E 80 00 20 */	blr 

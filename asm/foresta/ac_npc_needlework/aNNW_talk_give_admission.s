lbl_80562E78:
/* 80562E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80562E7C  7C 08 02 A6 */	mflr r0
/* 80562E80  38 80 00 09 */	li r4, 9
/* 80562E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80562E88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80562E8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80562E90  7C 7E 1B 78 */	mr r30, r3
/* 80562E94  38 60 00 04 */	li r3, 4
/* 80562E98  4B E3 55 E5 */	bl mDemo_Get_OrderValue
/* 80562E9C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80562EA0  4B E5 C8 09 */	bl func_803BF6A8
/* 80562EA4  2C 1F 00 00 */	cmpwi r31, 0
/* 80562EA8  41 82 00 80 */	beq lbl_80562F28
/* 80562EAC  4B E5 DD ED */	bl mMsg_Check_MainNormalContinue
/* 80562EB0  2C 03 00 01 */	cmpwi r3, 1
/* 80562EB4  40 82 00 74 */	bne lbl_80562F28
/* 80562EB8  38 60 00 04 */	li r3, 4
/* 80562EBC  38 80 00 09 */	li r4, 9
/* 80562EC0  38 A0 00 00 */	li r5, 0
/* 80562EC4  4B E3 55 75 */	bl mDemo_Set_OrderValue
/* 80562EC8  4B E2 06 79 */	bl func_80383540
/* 80562ECC  4B E2 0C A1 */	bl mChoice_Get_ChoseNum
/* 80562ED0  2C 03 00 01 */	cmpwi r3, 1
/* 80562ED4  41 82 00 38 */	beq lbl_80562F0C
/* 80562ED8  40 80 00 10 */	bge lbl_80562EE8
/* 80562EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80562EE0  40 80 00 14 */	bge lbl_80562EF4
/* 80562EE4  48 00 00 44 */	b lbl_80562F28
lbl_80562EE8:
/* 80562EE8  2C 03 00 03 */	cmpwi r3, 3
/* 80562EEC  40 80 00 3C */	bge lbl_80562F28
/* 80562EF0  48 00 00 2C */	b lbl_80562F1C
lbl_80562EF4:
/* 80562EF4  88 9E 09 B2 */	lbz r4, 0x9b2(r30)
/* 80562EF8  7F C3 F3 78 */	mr r3, r30
/* 80562EFC  38 04 00 01 */	addi r0, r4, 1
/* 80562F00  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80562F04  48 00 15 85 */	bl aNNW_change_talk_proc
/* 80562F08  48 00 00 20 */	b lbl_80562F28
lbl_80562F0C:
/* 80562F0C  7F C3 F3 78 */	mr r3, r30
/* 80562F10  38 80 00 16 */	li r4, 0x16
/* 80562F14  48 00 15 75 */	bl aNNW_change_talk_proc
/* 80562F18  48 00 00 10 */	b lbl_80562F28
lbl_80562F1C:
/* 80562F1C  7F C3 F3 78 */	mr r3, r30
/* 80562F20  38 80 00 41 */	li r4, 0x41
/* 80562F24  48 00 15 65 */	bl aNNW_change_talk_proc
lbl_80562F28:
/* 80562F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80562F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80562F30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80562F34  7C 08 03 A6 */	mtlr r0
/* 80562F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80562F3C  4E 80 00 20 */	blr 

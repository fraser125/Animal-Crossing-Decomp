lbl_80562F40:
/* 80562F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80562F44  7C 08 02 A6 */	mflr r0
/* 80562F48  38 80 00 09 */	li r4, 9
/* 80562F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80562F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80562F54  93 C1 00 08 */	stw r30, 8(r1)
/* 80562F58  7C 7E 1B 78 */	mr r30, r3
/* 80562F5C  38 60 00 04 */	li r3, 4
/* 80562F60  4B E3 55 1D */	bl mDemo_Get_OrderValue
/* 80562F64  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80562F68  4B E5 C7 41 */	bl func_803BF6A8
/* 80562F6C  2C 1F 00 00 */	cmpwi r31, 0
/* 80562F70  41 82 00 8C */	beq lbl_80562FFC
/* 80562F74  4B E5 DD 25 */	bl mMsg_Check_MainNormalContinue
/* 80562F78  2C 03 00 01 */	cmpwi r3, 1
/* 80562F7C  40 82 00 80 */	bne lbl_80562FFC
/* 80562F80  38 60 00 04 */	li r3, 4
/* 80562F84  38 80 00 09 */	li r4, 9
/* 80562F88  38 A0 00 00 */	li r5, 0
/* 80562F8C  4B E3 54 AD */	bl mDemo_Set_OrderValue
/* 80562F90  4B E2 05 B1 */	bl func_80383540
/* 80562F94  4B E2 0B D9 */	bl mChoice_Get_ChoseNum
/* 80562F98  2C 03 00 02 */	cmpwi r3, 2
/* 80562F9C  41 82 00 44 */	beq lbl_80562FE0
/* 80562FA0  40 80 00 14 */	bge lbl_80562FB4
/* 80562FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80562FA8  41 82 00 18 */	beq lbl_80562FC0
/* 80562FAC  40 80 00 24 */	bge lbl_80562FD0
/* 80562FB0  48 00 00 4C */	b lbl_80562FFC
lbl_80562FB4:
/* 80562FB4  2C 03 00 04 */	cmpwi r3, 4
/* 80562FB8  40 80 00 44 */	bge lbl_80562FFC
/* 80562FBC  48 00 00 34 */	b lbl_80562FF0
lbl_80562FC0:
/* 80562FC0  7F C3 F3 78 */	mr r3, r30
/* 80562FC4  38 80 00 22 */	li r4, 0x22
/* 80562FC8  48 00 14 C1 */	bl aNNW_change_talk_proc
/* 80562FCC  48 00 00 30 */	b lbl_80562FFC
lbl_80562FD0:
/* 80562FD0  7F C3 F3 78 */	mr r3, r30
/* 80562FD4  38 80 00 28 */	li r4, 0x28
/* 80562FD8  48 00 14 B1 */	bl aNNW_change_talk_proc
/* 80562FDC  48 00 00 20 */	b lbl_80562FFC
lbl_80562FE0:
/* 80562FE0  7F C3 F3 78 */	mr r3, r30
/* 80562FE4  38 80 00 42 */	li r4, 0x42
/* 80562FE8  48 00 14 A1 */	bl aNNW_change_talk_proc
/* 80562FEC  48 00 00 10 */	b lbl_80562FFC
lbl_80562FF0:
/* 80562FF0  7F C3 F3 78 */	mr r3, r30
/* 80562FF4  38 80 00 01 */	li r4, 1
/* 80562FF8  48 00 14 91 */	bl aNNW_change_talk_proc
lbl_80562FFC:
/* 80562FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563004  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563008  7C 08 03 A6 */	mtlr r0
/* 8056300C  38 21 00 10 */	addi r1, r1, 0x10
/* 80563010  4E 80 00 20 */	blr 

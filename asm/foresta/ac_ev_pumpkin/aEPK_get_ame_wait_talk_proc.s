lbl_80522F7C:
/* 80522F7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522F80  7C 08 02 A6 */	mflr r0
/* 80522F84  38 80 00 01 */	li r4, 1
/* 80522F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522F8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80522F90  7C 7F 1B 78 */	mr r31, r3
/* 80522F94  38 60 00 04 */	li r3, 4
/* 80522F98  4B E7 54 E5 */	bl mDemo_Get_OrderValue
/* 80522F9C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80522FA0  2C 00 00 03 */	cmpwi r0, 3
/* 80522FA4  40 82 00 34 */	bne lbl_80522FD8
/* 80522FA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80522FAC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80522FB0  3C 63 00 02 */	addis r3, r3, 2
/* 80522FB4  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80522FB8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80522FBC  28 00 00 00 */	cmplwi r0, 0
/* 80522FC0  41 82 00 18 */	beq lbl_80522FD8
/* 80522FC4  4B E9 C6 E5 */	bl func_803BF6A8
/* 80522FC8  4B E9 DD 79 */	bl mMsg_Set_LockContinue
/* 80522FCC  7F E3 FB 78 */	mr r3, r31
/* 80522FD0  38 80 00 0B */	li r4, 0xb
/* 80522FD4  48 00 02 0D */	bl aEPK_change_talk_proc
lbl_80522FD8:
/* 80522FD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522FDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80522FE0  7C 08 03 A6 */	mtlr r0
/* 80522FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80522FE8  4E 80 00 20 */	blr 

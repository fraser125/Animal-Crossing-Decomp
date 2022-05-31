lbl_80551E80:
/* 80551E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551E84  7C 08 02 A6 */	mflr r0
/* 80551E88  38 80 00 09 */	li r4, 9
/* 80551E8C  38 A0 00 00 */	li r5, 0
/* 80551E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80551E98  7C 7F 1B 78 */	mr r31, r3
/* 80551E9C  38 60 00 04 */	li r3, 4
/* 80551EA0  4B E4 65 99 */	bl mDemo_Set_OrderValue
/* 80551EA4  7F E3 FB 78 */	mr r3, r31
/* 80551EA8  4B FF B8 85 */	bl aNSC_set_walk_spd
/* 80551EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80551EB4  7C 08 03 A6 */	mtlr r0
/* 80551EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80551EBC  4E 80 00 20 */	blr 

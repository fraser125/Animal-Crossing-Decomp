lbl_80493D84:
/* 80493D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493D88  7C 08 02 A6 */	mflr r0
/* 80493D8C  3C 60 80 69 */	lis r3, l_remove_yes@ha /* 0x8068B540@ha */
/* 80493D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493D94  54 80 10 3A */	slwi r0, r4, 2
/* 80493D98  38 83 B5 40 */	addi r4, r3, l_remove_yes@l /* 0x8068B540@l */
/* 80493D9C  38 60 00 03 */	li r3, 3
/* 80493DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80493DA4  7F E4 00 2E */	lwzx r31, r4, r0
/* 80493DA8  4B F5 06 29 */	bl mQst_GetRandom
/* 80493DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493DB0  7C 7F 1A 14 */	add r3, r31, r3
/* 80493DB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80493DB8  7C 08 03 A6 */	mtlr r0
/* 80493DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80493DC0  4E 80 00 20 */	blr 

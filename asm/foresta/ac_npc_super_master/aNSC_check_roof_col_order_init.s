lbl_8058560C:
/* 8058560C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585610  7C 08 02 A6 */	mflr r0
/* 80585614  38 80 00 09 */	li r4, 9
/* 80585618  38 A0 00 00 */	li r5, 0
/* 8058561C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585624  7C 7F 1B 78 */	mr r31, r3
/* 80585628  38 60 00 04 */	li r3, 4
/* 8058562C  4B E1 2E 0D */	bl mDemo_Set_OrderValue
/* 80585630  7F E3 FB 78 */	mr r3, r31
/* 80585634  4B FF B8 85 */	bl aNSC_set_walk_spd
/* 80585638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058563C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80585640  7C 08 03 A6 */	mtlr r0
/* 80585644  38 21 00 10 */	addi r1, r1, 0x10
/* 80585648  4E 80 00 20 */	blr 

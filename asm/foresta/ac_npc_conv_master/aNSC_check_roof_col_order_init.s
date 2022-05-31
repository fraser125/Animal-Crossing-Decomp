lbl_8054A568:
/* 8054A568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A56C  7C 08 02 A6 */	mflr r0
/* 8054A570  38 80 00 09 */	li r4, 9
/* 8054A574  38 A0 00 00 */	li r5, 0
/* 8054A578  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A57C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A580  7C 7F 1B 78 */	mr r31, r3
/* 8054A584  38 60 00 04 */	li r3, 4
/* 8054A588  4B E4 DE B1 */	bl mDemo_Set_OrderValue
/* 8054A58C  7F E3 FB 78 */	mr r3, r31
/* 8054A590  4B FF B8 85 */	bl aNSC_set_walk_spd
/* 8054A594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054A59C  7C 08 03 A6 */	mtlr r0
/* 8054A5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A5A4  4E 80 00 20 */	blr 

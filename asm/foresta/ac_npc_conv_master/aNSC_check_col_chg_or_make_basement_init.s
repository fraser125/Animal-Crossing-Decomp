lbl_8054A548:
/* 8054A548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A54C  7C 08 02 A6 */	mflr r0
/* 8054A550  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A554  4B FF B8 C1 */	bl aNSC_set_walk_spd
/* 8054A558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A55C  7C 08 03 A6 */	mtlr r0
/* 8054A560  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A564  4E 80 00 20 */	blr 

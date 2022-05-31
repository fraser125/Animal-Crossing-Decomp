lbl_80576A70:
/* 80576A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576A74  7C 08 02 A6 */	mflr r0
/* 80576A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576A7C  4B FF FB 2D */	bl aNSS_set_walk_spd
/* 80576A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576A84  7C 08 03 A6 */	mtlr r0
/* 80576A88  38 21 00 10 */	addi r1, r1, 0x10
/* 80576A8C  4E 80 00 20 */	blr 

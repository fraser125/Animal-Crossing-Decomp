lbl_8057BA98:
/* 8057BA98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BA9C  7C 08 02 A6 */	mflr r0
/* 8057BAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BAA4  4B FF B9 09 */	bl aNSC_set_walk_spd
/* 8057BAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BAAC  7C 08 03 A6 */	mtlr r0
/* 8057BAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BAB4  4E 80 00 20 */	blr 

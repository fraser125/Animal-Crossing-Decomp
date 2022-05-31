lbl_8057BAE0:
/* 8057BAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BAE4  7C 08 02 A6 */	mflr r0
/* 8057BAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BAEC  4B FF B8 C1 */	bl aNSC_set_walk_spd
/* 8057BAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BAF4  7C 08 03 A6 */	mtlr r0
/* 8057BAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BAFC  4E 80 00 20 */	blr 

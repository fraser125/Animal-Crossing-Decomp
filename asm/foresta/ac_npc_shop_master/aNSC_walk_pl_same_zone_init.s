lbl_8057C3FC:
/* 8057C3FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C400  7C 08 02 A6 */	mflr r0
/* 8057C404  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C408  4B FF AF A5 */	bl aNSC_set_walk_spd
/* 8057C40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C410  7C 08 03 A6 */	mtlr r0
/* 8057C414  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C418  4E 80 00 20 */	blr 

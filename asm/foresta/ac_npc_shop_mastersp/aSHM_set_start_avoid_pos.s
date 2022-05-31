lbl_8057C928:
/* 8057C928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C92C  7C 08 02 A6 */	mflr r0
/* 8057C930  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C934  38 00 00 00 */	li r0, 0
/* 8057C938  B0 83 09 B0 */	sth r4, 0x9b0(r3)
/* 8057C93C  B0 03 09 B2 */	sth r0, 0x9b2(r3)
/* 8057C940  4B FF FF C5 */	bl aSHM_set_avoid_pos
/* 8057C944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C948  7C 08 03 A6 */	mtlr r0
/* 8057C94C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C950  4E 80 00 20 */	blr 

lbl_8057E1BC:
/* 8057E1BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E1C0  7C 08 02 A6 */	mflr r0
/* 8057E1C4  38 80 00 09 */	li r4, 9
/* 8057E1C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E1CC  38 00 00 17 */	li r0, 0x17
/* 8057E1D0  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8057E1D4  4B FF E7 55 */	bl aSHM_set_start_avoid_pos
/* 8057E1D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E1DC  7C 08 03 A6 */	mtlr r0
/* 8057E1E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E1E4  4E 80 00 20 */	blr 

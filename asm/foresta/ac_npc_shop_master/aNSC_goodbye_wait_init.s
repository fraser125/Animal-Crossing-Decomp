lbl_8057C43C:
/* 8057C43C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C440  7C 08 02 A6 */	mflr r0
/* 8057C444  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C448  4B FF AF 49 */	bl aNSC_set_stop_spd
/* 8057C44C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C450  7C 08 03 A6 */	mtlr r0
/* 8057C454  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C458  4E 80 00 20 */	blr 

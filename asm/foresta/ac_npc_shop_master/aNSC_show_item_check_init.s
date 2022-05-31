lbl_8057C188:
/* 8057C188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C18C  7C 08 02 A6 */	mflr r0
/* 8057C190  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C194  4B FF B1 FD */	bl aNSC_set_stop_spd
/* 8057C198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C19C  7C 08 03 A6 */	mtlr r0
/* 8057C1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C1A4  4E 80 00 20 */	blr 

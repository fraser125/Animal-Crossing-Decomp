lbl_8057BCA4:
/* 8057BCA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BCA8  7C 08 02 A6 */	mflr r0
/* 8057BCAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BCB0  4B FF B6 E1 */	bl aNSC_set_stop_spd
/* 8057BCB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BCB8  7C 08 03 A6 */	mtlr r0
/* 8057BCBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BCC0  4E 80 00 20 */	blr 

lbl_805855A4:
/* 805855A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805855A8  7C 08 02 A6 */	mflr r0
/* 805855AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805855B0  4B FF B9 09 */	bl aNSC_set_walk_spd
/* 805855B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805855B8  7C 08 03 A6 */	mtlr r0
/* 805855BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805855C0  4E 80 00 20 */	blr 

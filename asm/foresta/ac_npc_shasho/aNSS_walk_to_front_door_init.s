lbl_805769B4:
/* 805769B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805769B8  7C 08 02 A6 */	mflr r0
/* 805769BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805769C0  4B FF FB E9 */	bl aNSS_set_walk_spd
/* 805769C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805769C8  7C 08 03 A6 */	mtlr r0
/* 805769CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805769D0  4E 80 00 20 */	blr 

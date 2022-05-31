lbl_805857B0:
/* 805857B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805857B4  7C 08 02 A6 */	mflr r0
/* 805857B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805857BC  4B FF B6 E1 */	bl aNSC_set_stop_spd
/* 805857C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805857C4  7C 08 03 A6 */	mtlr r0
/* 805857C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805857CC  4E 80 00 20 */	blr 

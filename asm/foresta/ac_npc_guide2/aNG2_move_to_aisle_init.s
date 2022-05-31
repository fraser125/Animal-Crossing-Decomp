lbl_805562E0:
/* 805562E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805562E4  7C 08 02 A6 */	mflr r0
/* 805562E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805562EC  4B FF ED 91 */	bl aNG2_set_walk_spd2
/* 805562F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805562F4  7C 08 03 A6 */	mtlr r0
/* 805562F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805562FC  4E 80 00 20 */	blr 

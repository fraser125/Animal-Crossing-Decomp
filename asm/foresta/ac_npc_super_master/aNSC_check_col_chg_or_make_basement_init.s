lbl_805855EC:
/* 805855EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805855F0  7C 08 02 A6 */	mflr r0
/* 805855F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805855F8  4B FF B8 C1 */	bl aNSC_set_walk_spd
/* 805855FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585600  7C 08 03 A6 */	mtlr r0
/* 80585604  38 21 00 10 */	addi r1, r1, 0x10
/* 80585608  4E 80 00 20 */	blr 

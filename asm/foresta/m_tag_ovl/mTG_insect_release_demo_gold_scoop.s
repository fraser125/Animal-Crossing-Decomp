lbl_805F76F8:
/* 805F76F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F76FC  7C 08 02 A6 */	mflr r0
/* 805F7700  38 80 00 01 */	li r4, 1
/* 805F7704  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F7708  4B FF FF 81 */	bl mTG_insect_release_sub
/* 805F770C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F7710  7C 08 03 A6 */	mtlr r0
/* 805F7714  38 21 00 10 */	addi r1, r1, 0x10
/* 805F7718  4E 80 00 20 */	blr 

lbl_805F771C:
/* 805F771C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F7720  7C 08 02 A6 */	mflr r0
/* 805F7724  38 80 00 00 */	li r4, 0
/* 805F7728  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F772C  4B FF FF 5D */	bl mTG_insect_release_sub
/* 805F7730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F7734  7C 08 03 A6 */	mtlr r0
/* 805F7738  38 21 00 10 */	addi r1, r1, 0x10
/* 805F773C  4E 80 00 20 */	blr 

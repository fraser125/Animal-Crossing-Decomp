lbl_805545D8:
/* 805545D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805545DC  7C 08 02 A6 */	mflr r0
/* 805545E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805545E4  38 00 00 01 */	li r0, 1
/* 805545E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805545EC  7C 7F 1B 78 */	mr r31, r3
/* 805545F0  90 03 09 CC */	stw r0, 0x9cc(r3)
/* 805545F4  4B FF EB 79 */	bl aNGD_set_walk_spd2
/* 805545F8  3C 60 80 65 */	lis r3, lit_541@ha /* 0x80649540@ha */
/* 805545FC  C0 03 95 40 */	lfs f0, lit_541@l(r3)  /* 0x80649540@l */
/* 80554600  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 80554604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055460C  7C 08 03 A6 */	mtlr r0
/* 80554610  38 21 00 10 */	addi r1, r1, 0x10
/* 80554614  4E 80 00 20 */	blr 

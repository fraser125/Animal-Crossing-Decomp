lbl_805A7474:
/* 805A7474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7478  7C 08 02 A6 */	mflr r0
/* 805A747C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7484  7C 7F 1B 78 */	mr r31, r3
/* 805A7488  4B FF FF 31 */	bl aBT_up_down_proc
/* 805A748C  7F E3 FB 78 */	mr r3, r31
/* 805A7490  4B DC CE 85 */	bl Actor_position_moveF
/* 805A7494  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805A7498  3C 60 80 65 */	lis r3, lit_549@ha /* 0x8064A4EC@ha */
/* 805A749C  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 805A74A0  38 83 A4 EC */	addi r4, r3, lit_549@l /* 0x8064A4EC@l */
/* 805A74A4  C0 44 00 00 */	lfs f2, 0(r4)
/* 805A74A8  3C 60 80 65 */	lis r3, lit_450@ha /* 0x8064A4CC@ha */
/* 805A74AC  EC 20 18 28 */	fsubs f1, f0, f3
/* 805A74B0  C0 03 A4 CC */	lfs f0, lit_450@l(r3)  /* 0x8064A4CC@l */
/* 805A74B4  EC 21 10 28 */	fsubs f1, f1, f2
/* 805A74B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A74BC  40 80 00 0C */	bge lbl_805A74C8
/* 805A74C0  EC 02 18 2A */	fadds f0, f2, f3
/* 805A74C4  D0 1F 00 2C */	stfs f0, 0x2c(r31)
lbl_805A74C8:
/* 805A74C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A74CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A74D0  7C 08 03 A6 */	mtlr r0
/* 805A74D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A74D8  4E 80 00 20 */	blr 

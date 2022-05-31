lbl_805A5480:
/* 805A5480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5484  7C 08 02 A6 */	mflr r0
/* 805A5488  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A548C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A5490  7C 7F 1B 78 */	mr r31, r3
/* 805A5494  A8 63 00 36 */	lha r3, 0x36(r3)
/* 805A5498  4B E1 56 59 */	bl sin_s
/* 805A549C  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A54A0  3C 60 80 6C */	lis r3, hosei@ha /* 0x806C4248@ha */
/* 805A54A4  38 63 42 48 */	addi r3, r3, hosei@l /* 0x806C4248@l */
/* 805A54A8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805A54AC  54 00 10 3A */	slwi r0, r0, 2
/* 805A54B0  7C 43 04 2E */	lfsx f2, r3, r0
/* 805A54B4  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A54B8  EC 00 08 2A */	fadds f0, f0, f1
/* 805A54BC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805A54C0  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 805A54C4  4B E1 55 D9 */	bl cos_s
/* 805A54C8  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A54CC  3C 60 80 6C */	lis r3, hosei@ha /* 0x806C4248@ha */
/* 805A54D0  38 63 42 48 */	addi r3, r3, hosei@l /* 0x806C4248@l */
/* 805A54D4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805A54D8  54 00 10 3A */	slwi r0, r0, 2
/* 805A54DC  7C 43 04 2E */	lfsx f2, r3, r0
/* 805A54E0  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A54E4  EC 00 08 2A */	fadds f0, f0, f1
/* 805A54E8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805A54EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A54F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A54F4  7C 08 03 A6 */	mtlr r0
/* 805A54F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A54FC  4E 80 00 20 */	blr 

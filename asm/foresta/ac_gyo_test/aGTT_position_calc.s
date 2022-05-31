lbl_805A3518:
/* 805A3518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A351C  7C 08 02 A6 */	mflr r0
/* 805A3520  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A3528  7C 7F 1B 78 */	mr r31, r3
/* 805A352C  A8 63 00 36 */	lha r3, 0x36(r3)
/* 805A3530  4B E1 75 C1 */	bl sin_s
/* 805A3534  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A3538  3C 60 80 6C */	lis r3, hosei@ha /* 0x806C3EF8@ha */
/* 805A353C  38 63 3E F8 */	addi r3, r3, hosei@l /* 0x806C3EF8@l */
/* 805A3540  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805A3544  54 00 10 3A */	slwi r0, r0, 2
/* 805A3548  7C 43 04 2E */	lfsx f2, r3, r0
/* 805A354C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A3550  EC 00 08 2A */	fadds f0, f0, f1
/* 805A3554  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805A3558  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 805A355C  4B E1 75 41 */	bl cos_s
/* 805A3560  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A3564  3C 60 80 6C */	lis r3, hosei@ha /* 0x806C3EF8@ha */
/* 805A3568  38 63 3E F8 */	addi r3, r3, hosei@l /* 0x806C3EF8@l */
/* 805A356C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805A3570  54 00 10 3A */	slwi r0, r0, 2
/* 805A3574  7C 43 04 2E */	lfsx f2, r3, r0
/* 805A3578  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A357C  EC 00 08 2A */	fadds f0, f0, f1
/* 805A3580  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805A3584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A3588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A358C  7C 08 03 A6 */	mtlr r0
/* 805A3590  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3594  4E 80 00 20 */	blr 

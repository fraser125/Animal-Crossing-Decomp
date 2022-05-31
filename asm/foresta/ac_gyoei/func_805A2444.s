lbl_805A2444:
/* 805A2444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2448  7C 08 02 A6 */	mflr r0
/* 805A244C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2454  7C 7F 1B 78 */	mr r31, r3
/* 805A2458  38 7F 00 3C */	addi r3, r31, 0x3c
/* 805A245C  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A2460  4B E1 8A 5D */	bl xyz_t_move
/* 805A2464  3C 60 80 65 */	lis r3, lit_509@ha /* 0x8064A354@ha */
/* 805A2468  C0 5F 02 1C */	lfs f2, 0x21c(r31)
/* 805A246C  C0 03 A3 54 */	lfs f0, lit_509@l(r3)  /* 0x8064A354@l */
/* 805A2470  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A2474  4C 40 13 82 */	cror 2, 0, 2
/* 805A2478  40 82 00 18 */	bne lbl_805A2490
/* 805A247C  3C 60 80 65 */	lis r3, lit_617@ha /* 0x8064A388@ha */
/* 805A2480  C0 03 A3 88 */	lfs f0, lit_617@l(r3)  /* 0x8064A388@l */
/* 805A2484  EC 02 00 2A */	fadds f0, f2, f0
/* 805A2488  D0 1F 02 1C */	stfs f0, 0x21c(r31)
/* 805A248C  48 00 00 2C */	b lbl_805A24B8
lbl_805A2490:
/* 805A2490  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A2494  3C 60 80 6C */	lis r3, dec_step@ha /* 0x806C3A18@ha */
/* 805A2498  3C 80 80 65 */	lis r4, lit_618@ha /* 0x8064A38C@ha */
/* 805A249C  54 00 10 3A */	slwi r0, r0, 2
/* 805A24A0  38 63 3A 18 */	addi r3, r3, dec_step@l /* 0x806C3A18@l */
/* 805A24A4  C0 24 A3 8C */	lfs f1, lit_618@l(r4)  /* 0x8064A38C@l */
/* 805A24A8  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A24AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A24B0  EC 02 00 28 */	fsubs f0, f2, f0
/* 805A24B4  D0 1F 02 1C */	stfs f0, 0x21c(r31)
lbl_805A24B8:
/* 805A24B8  3C 60 80 65 */	lis r3, lit_618@ha /* 0x8064A38C@ha */
/* 805A24BC  C0 1F 01 EC */	lfs f0, 0x1ec(r31)
/* 805A24C0  C0 43 A3 8C */	lfs f2, lit_618@l(r3)  /* 0x8064A38C@l */
/* 805A24C4  38 7F 00 74 */	addi r3, r31, 0x74
/* 805A24C8  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 805A24CC  EC 42 00 32 */	fmuls f2, f2, f0
/* 805A24D0  4B E1 87 99 */	bl chase_f
/* 805A24D4  7F E3 FB 78 */	mr r3, r31
/* 805A24D8  4B DD 1E 3D */	bl Actor_position_moveF
/* 805A24DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A24E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A24E4  7C 08 03 A6 */	mtlr r0
/* 805A24E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A24EC  4E 80 00 20 */	blr 

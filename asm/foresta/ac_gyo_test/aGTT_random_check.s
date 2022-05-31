lbl_805A339C:
/* 805A339C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A33A0  7C 08 02 A6 */	mflr r0
/* 805A33A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A33A8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805A33AC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805A33B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A33B4  FF E0 08 90 */	fmr f31, f1
/* 805A33B8  3B E0 00 00 */	li r31, 0
/* 805A33BC  4B AB 99 39 */	bl fqrand
/* 805A33C0  3C 60 80 65 */	lis r3, lit_524@ha /* 0x8064A3D4@ha */
/* 805A33C4  EC 3F 00 72 */	fmuls f1, f31, f1
/* 805A33C8  C0 03 A3 D4 */	lfs f0, lit_524@l(r3)  /* 0x8064A3D4@l */
/* 805A33CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A33D0  40 80 00 08 */	bge lbl_805A33D8
/* 805A33D4  3B E0 00 01 */	li r31, 1
lbl_805A33D8:
/* 805A33D8  7F E3 FB 78 */	mr r3, r31
/* 805A33DC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805A33E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A33E4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805A33E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A33EC  7C 08 03 A6 */	mtlr r0
/* 805A33F0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A33F4  4E 80 00 20 */	blr 

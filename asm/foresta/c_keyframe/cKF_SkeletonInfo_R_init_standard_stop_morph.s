lbl_80370B70:
/* 80370B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80370B74  7C 08 02 A6 */	mflr r0
/* 80370B78  7C A7 2B 78 */	mr r7, r5
/* 80370B7C  3C A0 80 64 */	lis r5, lit_540@ha /* 0x80641194@ha */
/* 80370B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80370B84  7C 88 23 78 */	mr r8, r4
/* 80370B88  3C 00 43 30 */	lis r0, 0x4330
/* 80370B8C  3C C0 80 64 */	lis r6, data_80641174@ha /* 0x80641174@ha */
/* 80370B90  A8 84 00 12 */	lha r4, 0x12(r4)
/* 80370B94  FC A0 08 90 */	fmr f5, f1
/* 80370B98  C0 26 11 74 */	lfs f1, data_80641174@l(r6)  /* 0x80641174@l */
/* 80370B9C  38 C0 00 00 */	li r6, 0
/* 80370BA0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80370BA4  90 01 00 08 */	stw r0, 8(r1)
/* 80370BA8  C8 45 11 94 */	lfd f2, lit_540@l(r5)  /* 0x80641194@l */
/* 80370BAC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80370BB0  3C 80 80 64 */	lis r4, lit_597@ha /* 0x806411A4@ha */
/* 80370BB4  38 A4 11 A4 */	addi r5, r4, lit_597@l /* 0x806411A4@l */
/* 80370BB8  FC 60 08 90 */	fmr f3, f1
/* 80370BBC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80370BC0  C0 85 00 00 */	lfs f4, 0(r5)
/* 80370BC4  7D 05 43 78 */	mr r5, r8
/* 80370BC8  EC 40 10 28 */	fsubs f2, f0, f2
/* 80370BCC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80370BD0  48 00 01 05 */	bl cKF_SkeletonInfo_R_init
/* 80370BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370BD8  7C 08 03 A6 */	mtlr r0
/* 80370BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80370BE0  4E 80 00 20 */	blr 
lbl_80370AF4:
/* 80370AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80370AF8  7C 08 02 A6 */	mflr r0
/* 80370AFC  3D 00 80 64 */	lis r8, data_80641174@ha /* 0x80641174@ha */
/* 80370B00  3C C0 80 64 */	lis r6, lit_540@ha /* 0x80641194@ha */
/* 80370B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80370B08  7C 89 23 78 */	mr r9, r4
/* 80370B0C  3C 00 43 30 */	lis r0, 0x4330
/* 80370B10  C0 28 11 74 */	lfs f1, data_80641174@l(r8)  /* 0x80641174@l */
/* 80370B14  A8 84 00 12 */	lha r4, 0x12(r4)
/* 80370B18  7C A7 2B 78 */	mr r7, r5
/* 80370B1C  90 01 00 08 */	stw r0, 8(r1)
/* 80370B20  3C A0 80 64 */	lis r5, lit_597@ha /* 0x806411A4@ha */
/* 80370B24  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80370B28  C8 46 11 94 */	lfd f2, lit_540@l(r6)  /* 0x80641194@l */
/* 80370B2C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80370B30  38 C5 11 A4 */	addi r6, r5, lit_597@l /* 0x806411A4@l */
/* 80370B34  3C 80 80 64 */	lis r4, lit_449@ha /* 0x80641178@ha */
/* 80370B38  C0 86 00 00 */	lfs f4, 0(r6)
/* 80370B3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80370B40  38 A4 11 78 */	addi r5, r4, lit_449@l /* 0x80641178@l */
/* 80370B44  C0 A5 00 00 */	lfs f5, 0(r5)
/* 80370B48  FC 60 08 90 */	fmr f3, f1
/* 80370B4C  EC 40 10 28 */	fsubs f2, f0, f2
/* 80370B50  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80370B54  7D 25 4B 78 */	mr r5, r9
/* 80370B58  38 C0 00 00 */	li r6, 0
/* 80370B5C  48 00 01 79 */	bl cKF_SkeletonInfo_R_init
/* 80370B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370B64  7C 08 03 A6 */	mtlr r0
/* 80370B68  38 21 00 10 */	addi r1, r1, 0x10
/* 80370B6C  4E 80 00 20 */	blr 

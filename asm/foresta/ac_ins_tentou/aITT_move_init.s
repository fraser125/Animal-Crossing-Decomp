lbl_805A030C:
/* 805A030C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A0310  3C 00 43 30 */	lis r0, 0x4330
/* 805A0314  3D 00 80 65 */	lis r8, lit_413@ha /* 0x8064A25C@ha */
/* 805A0318  38 C0 00 3C */	li r6, 0x3c
/* 805A031C  80 E4 20 90 */	lwz r7, 0x2090(r4)
/* 805A0320  3C 80 80 65 */	lis r4, lit_587@ha /* 0x8064A2AC@ha */
/* 805A0324  C8 64 A2 AC */	lfd f3, lit_587@l(r4)  /* 0x8064A2AC@l */
/* 805A0328  3C 80 80 65 */	lis r4, lit_471@ha /* 0x8064A268@ha */
/* 805A032C  7C A7 33 96 */	divwu r5, r7, r6
/* 805A0330  90 01 00 08 */	stw r0, 8(r1)
/* 805A0334  C0 88 A2 5C */	lfs f4, lit_413@l(r8)  /* 0x8064A25C@l */
/* 805A0338  C0 04 A2 68 */	lfs f0, lit_471@l(r4)  /* 0x8064A268@l */
/* 805A033C  7C 05 31 D6 */	mullw r0, r5, r6
/* 805A0340  3C A0 80 65 */	lis r5, lit_584@ha /* 0x8064A2A4@ha */
/* 805A0344  C0 25 A2 A4 */	lfs f1, lit_584@l(r5)  /* 0x8064A2A4@l */
/* 805A0348  7C C0 38 50 */	subf r6, r0, r7
/* 805A034C  38 C6 00 5A */	addi r6, r6, 0x5a
/* 805A0350  38 00 00 00 */	li r0, 0
/* 805A0354  6C C5 80 00 */	xoris r5, r6, 0x8000
/* 805A0358  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805A035C  C8 41 00 08 */	lfd f2, 8(r1)
/* 805A0360  EC 42 18 28 */	fsubs f2, f2, f3
/* 805A0364  EC 44 00 B2 */	fmuls f2, f4, f2
/* 805A0368  FC 40 10 1E */	fctiwz f2, f2
/* 805A036C  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 805A0370  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805A0374  90 83 02 28 */	stw r4, 0x228(r3)
/* 805A0378  90 03 02 3C */	stw r0, 0x23c(r3)
/* 805A037C  D0 23 01 EC */	stfs f1, 0x1ec(r3)
/* 805A0380  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 805A0384  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 805A0388  2C 00 00 20 */	cmpwi r0, 0x20
/* 805A038C  40 82 00 24 */	bne lbl_805A03B0
/* 805A0390  3C 80 80 65 */	lis r4, lit_585@ha /* 0x8064A2A8@ha */
/* 805A0394  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 805A0398  C0 24 A2 A8 */	lfs f1, lit_585@l(r4)  /* 0x8064A2A8@l */
/* 805A039C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A03A0  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 805A03A4  C0 03 01 E8 */	lfs f0, 0x1e8(r3)
/* 805A03A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A03AC  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
lbl_805A03B0:
/* 805A03B0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A03B4  4E 80 00 20 */	blr 

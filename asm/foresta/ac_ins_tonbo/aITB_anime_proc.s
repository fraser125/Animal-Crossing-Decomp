lbl_805A0C20:
/* 805A0C20  3C A0 80 65 */	lis r5, lit_412@ha /* 0x8064A2D8@ha */
/* 805A0C24  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064A2F0@ha */
/* 805A0C28  C0 43 01 E0 */	lfs f2, 0x1e0(r3)
/* 805A0C2C  C0 25 A2 D8 */	lfs f1, lit_412@l(r5)  /* 0x8064A2D8@l */
/* 805A0C30  C0 04 A2 F0 */	lfs f0, lit_526@l(r4)  /* 0x8064A2F0@l */
/* 805A0C34  EC 22 08 2A */	fadds f1, f2, f1
/* 805A0C38  D0 23 01 E0 */	stfs f1, 0x1e0(r3)
/* 805A0C3C  C0 23 01 E0 */	lfs f1, 0x1e0(r3)
/* 805A0C40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A0C44  4C 41 13 82 */	cror 2, 1, 2
/* 805A0C48  4C 82 00 20 */	bnelr 
/* 805A0C4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805A0C50  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 805A0C54  4E 80 00 20 */	blr 

lbl_805C000C:
/* 805C000C  C0 43 02 CC */	lfs f2, 0x2cc(r3)
/* 805C0010  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064AC70@ha */
/* 805C0014  C0 04 AC 70 */	lfs f0, lit_523@l(r4)  /* 0x8064AC70@l */
/* 805C0018  FC 20 12 10 */	fabs f1, f2
/* 805C001C  FC 20 08 18 */	frsp f1, f1
/* 805C0020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0024  40 80 00 18 */	bge lbl_805C003C
/* 805C0028  3C 80 80 65 */	lis r4, lit_524@ha /* 0x8064AC74@ha */
/* 805C002C  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 805C0030  C0 24 AC 74 */	lfs f1, lit_524@l(r4)  /* 0x8064AC74@l */
/* 805C0034  EC 21 00 2A */	fadds f1, f1, f0
/* 805C0038  4E 80 00 20 */	blr 
lbl_805C003C:
/* 805C003C  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 805C0040  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 805C0044  4C 80 00 20 */	bgelr 
/* 805C0048  EC 02 08 28 */	fsubs f0, f2, f1
/* 805C004C  3C 60 80 65 */	lis r3, lit_437@ha /* 0x8064AC44@ha */
/* 805C0050  C0 43 AC 44 */	lfs f2, lit_437@l(r3)  /* 0x8064AC44@l */
/* 805C0054  FC 00 00 50 */	fneg f0, f0
/* 805C0058  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C005C  EC 21 00 2A */	fadds f1, f1, f0
/* 805C0060  4E 80 00 20 */	blr 

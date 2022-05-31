lbl_805C0620:
/* 805C0620  C0 44 00 74 */	lfs f2, 0x74(r4)
/* 805C0624  3C 80 80 65 */	lis r4, lit_461@ha /* 0x8064AC98@ha */
/* 805C0628  C0 04 AC 98 */	lfs f0, lit_461@l(r4)  /* 0x8064AC98@l */
/* 805C062C  FC 20 12 10 */	fabs f1, f2
/* 805C0630  FC 20 08 18 */	frsp f1, f1
/* 805C0634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0638  40 80 00 18 */	bge lbl_805C0650
/* 805C063C  3C 80 80 65 */	lis r4, lit_462@ha /* 0x8064AC9C@ha */
/* 805C0640  C0 03 02 CC */	lfs f0, 0x2cc(r3)
/* 805C0644  C0 24 AC 9C */	lfs f1, lit_462@l(r4)  /* 0x8064AC9C@l */
/* 805C0648  EC 21 00 2A */	fadds f1, f1, f0
/* 805C064C  4E 80 00 20 */	blr 
lbl_805C0650:
/* 805C0650  C0 23 02 CC */	lfs f1, 0x2cc(r3)
/* 805C0654  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 805C0658  4C 80 00 20 */	bgelr 
/* 805C065C  EC 02 08 28 */	fsubs f0, f2, f1
/* 805C0660  3C 60 80 65 */	lis r3, lit_463@ha /* 0x8064ACA0@ha */
/* 805C0664  C0 43 AC A0 */	lfs f2, lit_463@l(r3)  /* 0x8064ACA0@l */
/* 805C0668  FC 00 00 50 */	fneg f0, f0
/* 805C066C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C0670  EC 21 00 2A */	fadds f1, f1, f0
/* 805C0674  4E 80 00 20 */	blr 

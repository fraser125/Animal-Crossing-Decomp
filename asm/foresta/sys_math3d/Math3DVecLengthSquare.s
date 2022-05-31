lbl_80408DF8:
/* 80408DF8  C0 23 00 00 */	lfs f1, 0(r3)
/* 80408DFC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80408E00  EC 21 00 72 */	fmuls f1, f1, f1
/* 80408E04  C0 43 00 08 */	lfs f2, 8(r3)
/* 80408E08  EC 00 00 32 */	fmuls f0, f0, f0
/* 80408E0C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80408E10  EC 01 00 2A */	fadds f0, f1, f0
/* 80408E14  EC 22 00 2A */	fadds f1, f2, f0
/* 80408E18  4E 80 00 20 */	blr 

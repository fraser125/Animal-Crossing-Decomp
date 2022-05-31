lbl_8038A99C:
/* 8038A99C  C0 25 00 04 */	lfs f1, 4(r5)
/* 8038A9A0  C0 44 00 04 */	lfs f2, 4(r4)
/* 8038A9A4  C0 66 00 04 */	lfs f3, 4(r6)
/* 8038A9A8  C0 07 00 04 */	lfs f0, 4(r7)
/* 8038A9AC  EC 81 10 28 */	fsubs f4, f1, f2
/* 8038A9B0  C1 06 00 00 */	lfs f8, 0(r6)
/* 8038A9B4  EC 22 18 28 */	fsubs f1, f2, f3
/* 8038A9B8  C0 47 00 00 */	lfs f2, 0(r7)
/* 8038A9BC  EC C0 18 28 */	fsubs f6, f0, f3
/* 8038A9C0  C0 E4 00 00 */	lfs f7, 0(r4)
/* 8038A9C4  EC A2 40 28 */	fsubs f5, f2, f8
/* 8038A9C8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8038A9CC  EC 68 38 28 */	fsubs f3, f8, f7
/* 8038A9D0  ED 00 38 28 */	fsubs f8, f0, f7
/* 8038A9D4  EC 45 00 72 */	fmuls f2, f5, f1
/* 8038A9D8  EC 63 01 B2 */	fmuls f3, f3, f6
/* 8038A9DC  EC 26 02 32 */	fmuls f1, f6, f8
/* 8038A9E0  EC 04 01 72 */	fmuls f0, f4, f5
/* 8038A9E4  EC 43 10 2A */	fadds f2, f3, f2
/* 8038A9E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038A9EC  EC 02 00 24 */	fdivs f0, f2, f0
/* 8038A9F0  EC 20 02 32 */	fmuls f1, f0, f8
/* 8038A9F4  EC 00 01 32 */	fmuls f0, f0, f4
/* 8038A9F8  EC 27 08 2A */	fadds f1, f7, f1
/* 8038A9FC  D0 23 00 00 */	stfs f1, 0(r3)
/* 8038AA00  C0 24 00 04 */	lfs f1, 4(r4)
/* 8038AA04  EC 01 00 2A */	fadds f0, f1, f0
/* 8038AA08  D0 03 00 04 */	stfs f0, 4(r3)
/* 8038AA0C  4E 80 00 20 */	blr 

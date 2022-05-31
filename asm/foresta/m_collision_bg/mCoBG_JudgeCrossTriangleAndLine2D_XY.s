lbl_8038A250:
/* 8038A250  C0 85 00 04 */	lfs f4, 4(r5)
/* 8038A254  C0 26 00 00 */	lfs f1, 0(r6)
/* 8038A258  C0 07 00 00 */	lfs f0, 0(r7)
/* 8038A25C  C0 A5 00 00 */	lfs f5, 0(r5)
/* 8038A260  EC 44 00 72 */	fmuls f2, f4, f1
/* 8038A264  C0 66 00 04 */	lfs f3, 4(r6)
/* 8038A268  EC 04 00 32 */	fmuls f0, f4, f0
/* 8038A26C  C0 27 00 04 */	lfs f1, 4(r7)
/* 8038A270  EC 65 00 F2 */	fmuls f3, f5, f3
/* 8038A274  EC 25 00 72 */	fmuls f1, f5, f1
/* 8038A278  EC 43 10 28 */	fsubs f2, f3, f2
/* 8038A27C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038A280  EC 02 00 32 */	fmuls f0, f2, f0
/* 8038A284  D0 03 00 00 */	stfs f0, 0(r3)
/* 8038A288  C0 87 00 04 */	lfs f4, 4(r7)
/* 8038A28C  C0 25 00 00 */	lfs f1, 0(r5)
/* 8038A290  C0 06 00 00 */	lfs f0, 0(r6)
/* 8038A294  C0 A7 00 00 */	lfs f5, 0(r7)
/* 8038A298  EC 44 00 72 */	fmuls f2, f4, f1
/* 8038A29C  C0 65 00 04 */	lfs f3, 4(r5)
/* 8038A2A0  EC 04 00 32 */	fmuls f0, f4, f0
/* 8038A2A4  C0 26 00 04 */	lfs f1, 4(r6)
/* 8038A2A8  EC 65 00 F2 */	fmuls f3, f5, f3
/* 8038A2AC  EC 25 00 72 */	fmuls f1, f5, f1
/* 8038A2B0  EC 43 10 28 */	fsubs f2, f3, f2
/* 8038A2B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038A2B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8038A2BC  D0 04 00 00 */	stfs f0, 0(r4)
/* 8038A2C0  4E 80 00 20 */	blr 

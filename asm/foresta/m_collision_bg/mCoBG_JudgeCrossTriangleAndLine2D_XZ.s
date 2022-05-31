lbl_8038A2C4:
/* 8038A2C4  C0 85 00 08 */	lfs f4, 8(r5)
/* 8038A2C8  C0 26 00 00 */	lfs f1, 0(r6)
/* 8038A2CC  C0 07 00 00 */	lfs f0, 0(r7)
/* 8038A2D0  C0 A5 00 00 */	lfs f5, 0(r5)
/* 8038A2D4  EC 44 00 72 */	fmuls f2, f4, f1
/* 8038A2D8  C0 66 00 08 */	lfs f3, 8(r6)
/* 8038A2DC  EC 04 00 32 */	fmuls f0, f4, f0
/* 8038A2E0  C0 27 00 08 */	lfs f1, 8(r7)
/* 8038A2E4  EC 65 00 F2 */	fmuls f3, f5, f3
/* 8038A2E8  EC 25 00 72 */	fmuls f1, f5, f1
/* 8038A2EC  EC 43 10 28 */	fsubs f2, f3, f2
/* 8038A2F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038A2F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8038A2F8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8038A2FC  C0 87 00 08 */	lfs f4, 8(r7)
/* 8038A300  C0 25 00 00 */	lfs f1, 0(r5)
/* 8038A304  C0 06 00 00 */	lfs f0, 0(r6)
/* 8038A308  C0 A7 00 00 */	lfs f5, 0(r7)
/* 8038A30C  EC 44 00 72 */	fmuls f2, f4, f1
/* 8038A310  C0 65 00 08 */	lfs f3, 8(r5)
/* 8038A314  EC 04 00 32 */	fmuls f0, f4, f0
/* 8038A318  C0 26 00 08 */	lfs f1, 8(r6)
/* 8038A31C  EC 65 00 F2 */	fmuls f3, f5, f3
/* 8038A320  EC 25 00 72 */	fmuls f1, f5, f1
/* 8038A324  EC 43 10 28 */	fsubs f2, f3, f2
/* 8038A328  EC 01 00 28 */	fsubs f0, f1, f0
/* 8038A32C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8038A330  D0 04 00 00 */	stfs f0, 0(r4)
/* 8038A334  4E 80 00 20 */	blr 

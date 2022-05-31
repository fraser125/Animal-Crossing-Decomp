lbl_803BAFAC:
/* 803BAFAC  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BAFB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 803BAFB4  D0 03 00 00 */	stfs f0, 0(r3)
/* 803BAFB8  C0 03 00 04 */	lfs f0, 4(r3)
/* 803BAFBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803BAFC0  D0 03 00 04 */	stfs f0, 4(r3)
/* 803BAFC4  C0 03 00 08 */	lfs f0, 8(r3)
/* 803BAFC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803BAFCC  D0 03 00 08 */	stfs f0, 8(r3)
/* 803BAFD0  4E 80 00 20 */	blr 

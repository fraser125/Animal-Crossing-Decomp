lbl_803BAF78:
/* 803BAF78  C0 23 00 00 */	lfs f1, 0(r3)
/* 803BAF7C  C0 04 00 00 */	lfs f0, 0(r4)
/* 803BAF80  EC 01 00 28 */	fsubs f0, f1, f0
/* 803BAF84  D0 05 00 00 */	stfs f0, 0(r5)
/* 803BAF88  C0 23 00 04 */	lfs f1, 4(r3)
/* 803BAF8C  C0 04 00 04 */	lfs f0, 4(r4)
/* 803BAF90  EC 01 00 28 */	fsubs f0, f1, f0
/* 803BAF94  D0 05 00 04 */	stfs f0, 4(r5)
/* 803BAF98  C0 23 00 08 */	lfs f1, 8(r3)
/* 803BAF9C  C0 04 00 08 */	lfs f0, 8(r4)
/* 803BAFA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 803BAFA4  D0 05 00 08 */	stfs f0, 8(r5)
/* 803BAFA8  4E 80 00 20 */	blr 

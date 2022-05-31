lbl_803BAF44:
/* 803BAF44  C0 23 00 00 */	lfs f1, 0(r3)
/* 803BAF48  C0 04 00 00 */	lfs f0, 0(r4)
/* 803BAF4C  EC 01 00 2A */	fadds f0, f1, f0
/* 803BAF50  D0 05 00 00 */	stfs f0, 0(r5)
/* 803BAF54  C0 23 00 04 */	lfs f1, 4(r3)
/* 803BAF58  C0 04 00 04 */	lfs f0, 4(r4)
/* 803BAF5C  EC 01 00 2A */	fadds f0, f1, f0
/* 803BAF60  D0 05 00 04 */	stfs f0, 4(r5)
/* 803BAF64  C0 23 00 08 */	lfs f1, 8(r3)
/* 803BAF68  C0 04 00 08 */	lfs f0, 8(r4)
/* 803BAF6C  EC 01 00 2A */	fadds f0, f1, f0
/* 803BAF70  D0 05 00 08 */	stfs f0, 8(r5)
/* 803BAF74  4E 80 00 20 */	blr 

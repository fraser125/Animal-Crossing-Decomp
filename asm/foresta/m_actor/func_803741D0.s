lbl_803741D0:
/* 803741D0  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 803741D4  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 803741D8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 803741DC  EC 00 08 2A */	fadds f0, f0, f1
/* 803741E0  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 803741E4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 803741E8  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 803741EC  A8 03 00 34 */	lha r0, 0x34(r3)
/* 803741F0  B0 03 00 54 */	sth r0, 0x54(r3)
/* 803741F4  A8 03 00 36 */	lha r0, 0x36(r3)
/* 803741F8  B0 03 00 56 */	sth r0, 0x56(r3)
/* 803741FC  A8 03 00 38 */	lha r0, 0x38(r3)
/* 80374200  B0 03 00 58 */	sth r0, 0x58(r3)
/* 80374204  4E 80 00 20 */	blr 
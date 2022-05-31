lbl_803F1A78:
/* 803F1A78  3C A0 80 64 */	lis r5, lit_352@ha /* 0x80643228@ha */
/* 803F1A7C  3C 80 80 64 */	lis r4, data_80643224@ha /* 0x80643224@ha */
/* 803F1A80  C0 85 32 28 */	lfs f4, lit_352@l(r5)  /* 0x80643228@l */
/* 803F1A84  C0 04 32 24 */	lfs f0, data_80643224@l(r4)  /* 0x80643224@l */
/* 803F1A88  D0 83 00 04 */	stfs f4, 4(r3)
/* 803F1A8C  D0 83 00 08 */	stfs f4, 8(r3)
/* 803F1A90  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 803F1A94  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 803F1A98  D0 83 00 18 */	stfs f4, 0x18(r3)
/* 803F1A9C  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 803F1AA0  D0 83 00 20 */	stfs f4, 0x20(r3)
/* 803F1AA4  D0 83 00 24 */	stfs f4, 0x24(r3)
/* 803F1AA8  D0 83 00 2C */	stfs f4, 0x2c(r3)
/* 803F1AAC  D0 03 00 00 */	stfs f0, 0(r3)
/* 803F1AB0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 803F1AB4  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 803F1AB8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 803F1ABC  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 803F1AC0  D0 43 00 34 */	stfs f2, 0x34(r3)
/* 803F1AC4  D0 63 00 38 */	stfs f3, 0x38(r3)
/* 803F1AC8  4E 80 00 20 */	blr 

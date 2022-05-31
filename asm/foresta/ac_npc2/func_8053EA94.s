lbl_8053EA94:
/* 8053EA94  80 A3 01 7C */	lwz r5, 0x17c(r3)
/* 8053EA98  38 00 00 00 */	li r0, 0
/* 8053EA9C  3C 80 80 65 */	lis r4, lit_1773@ha /* 0x8064940C@ha */
/* 8053EAA0  98 05 08 E8 */	stb r0, 0x8e8(r5)
/* 8053EAA4  C0 24 94 0C */	lfs f1, lit_1773@l(r4)  /* 0x8064940C@l */
/* 8053EAA8  80 63 01 80 */	lwz r3, 0x180(r3)
/* 8053EAAC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8053EAB0  EC 01 00 2A */	fadds f0, f1, f0
/* 8053EAB4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8053EAB8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8053EABC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8053EAC0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8053EAC4  EC 01 00 2A */	fadds f0, f1, f0
/* 8053EAC8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8053EACC  4E 80 00 20 */	blr 

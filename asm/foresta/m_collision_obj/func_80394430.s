lbl_80394430:
/* 80394430  C0 23 00 04 */	lfs f1, 4(r3)
/* 80394434  3C A0 80 64 */	lis r5, data_80641BFC@ha /* 0x80641BFC@ha */
/* 80394438  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8039443C  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80394440  EC 01 00 2A */	fadds f0, f1, f0
/* 80394444  C0 65 1B FC */	lfs f3, data_80641BFC@l(r5)  /* 0x80641BFC@l */
/* 80394448  EC 02 00 2A */	fadds f0, f2, f0
/* 8039444C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80394450  D0 04 00 00 */	stfs f0, 0(r4)
/* 80394454  C0 23 00 08 */	lfs f1, 8(r3)
/* 80394458  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8039445C  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80394460  EC 01 00 2A */	fadds f0, f1, f0
/* 80394464  EC 02 00 2A */	fadds f0, f2, f0
/* 80394468  EC 03 00 32 */	fmuls f0, f3, f0
/* 8039446C  D0 04 00 04 */	stfs f0, 4(r4)
/* 80394470  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80394474  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80394478  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 8039447C  EC 01 00 2A */	fadds f0, f1, f0
/* 80394480  EC 02 00 2A */	fadds f0, f2, f0
/* 80394484  EC 03 00 32 */	fmuls f0, f3, f0
/* 80394488  D0 04 00 08 */	stfs f0, 8(r4)
/* 8039448C  4E 80 00 20 */	blr 
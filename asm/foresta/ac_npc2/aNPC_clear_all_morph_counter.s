lbl_8053B478:
/* 8053B478  3C 80 80 65 */	lis r4, data_80649374@ha /* 0x80649374@ha */
/* 8053B47C  C0 04 93 74 */	lfs f0, data_80649374@l(r4)  /* 0x80649374@l */
/* 8053B480  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 8053B484  D0 03 03 84 */	stfs f0, 0x384(r3)
/* 8053B488  D0 03 05 40 */	stfs f0, 0x540(r3)
/* 8053B48C  4E 80 00 20 */	blr 
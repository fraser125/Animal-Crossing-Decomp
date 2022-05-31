lbl_8059A9E0:
/* 8059A9E0  3C A0 80 65 */	lis r5, lit_463@ha /* 0x80649FBC@ha */
/* 8059A9E4  3C 80 80 65 */	lis r4, lit_464@ha /* 0x80649FC0@ha */
/* 8059A9E8  C0 43 01 E0 */	lfs f2, 0x1e0(r3)
/* 8059A9EC  C0 25 9F BC */	lfs f1, lit_463@l(r5)  /* 0x80649FBC@l */
/* 8059A9F0  C0 04 9F C0 */	lfs f0, lit_464@l(r4)  /* 0x80649FC0@l */
/* 8059A9F4  EC 22 08 2A */	fadds f1, f2, f1
/* 8059A9F8  D0 23 01 E0 */	stfs f1, 0x1e0(r3)
/* 8059A9FC  C0 23 01 E0 */	lfs f1, 0x1e0(r3)
/* 8059AA00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059AA04  4C 41 13 82 */	cror 2, 1, 2
/* 8059AA08  4C 82 00 20 */	bnelr 
/* 8059AA0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059AA10  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 8059AA14  4E 80 00 20 */	blr 

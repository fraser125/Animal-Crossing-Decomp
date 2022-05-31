lbl_8059D3B0:
/* 8059D3B0  C0 63 02 4C */	lfs f3, 0x24c(r3)
/* 8059D3B4  3C 80 80 65 */	lis r4, lit_480@ha /* 0x8064A154@ha */
/* 8059D3B8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8059D3BC  38 00 00 01 */	li r0, 1
/* 8059D3C0  C0 43 02 50 */	lfs f2, 0x250(r3)
/* 8059D3C4  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8059D3C8  EC 63 00 28 */	fsubs f3, f3, f0
/* 8059D3CC  C0 04 A1 54 */	lfs f0, lit_480@l(r4)  /* 0x8064A154@l */
/* 8059D3D0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8059D3D4  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8059D3D8  EC 21 00 72 */	fmuls f1, f1, f1
/* 8059D3DC  EC 22 08 2A */	fadds f1, f2, f1
/* 8059D3E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059D3E4  4C 41 13 82 */	cror 2, 1, 2
/* 8059D3E8  40 82 00 08 */	bne lbl_8059D3F0
/* 8059D3EC  38 00 00 00 */	li r0, 0
lbl_8059D3F0:
/* 8059D3F0  7C 03 03 78 */	mr r3, r0
/* 8059D3F4  4E 80 00 20 */	blr 

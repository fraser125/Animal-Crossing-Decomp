lbl_8040D404:
/* 8040D404  3C A0 81 1C */	lis r5, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040D408  C0 43 00 00 */	lfs f2, 0(r3)
/* 8040D40C  38 A5 77 A4 */	addi r5, r5, Matrix_now@l /* 0x811C77A4@l */
/* 8040D410  C0 03 00 04 */	lfs f0, 4(r3)
/* 8040D414  80 A5 00 00 */	lwz r5, 0(r5)
/* 8040D418  C0 83 00 08 */	lfs f4, 8(r3)
/* 8040D41C  C0 65 00 00 */	lfs f3, 0(r5)
/* 8040D420  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 8040D424  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8040D428  C0 65 00 20 */	lfs f3, 0x20(r5)
/* 8040D42C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8040D430  C0 A5 00 30 */	lfs f5, 0x30(r5)
/* 8040D434  EC 23 01 32 */	fmuls f1, f3, f4
/* 8040D438  EC 02 00 2A */	fadds f0, f2, f0
/* 8040D43C  EC 01 00 2A */	fadds f0, f1, f0
/* 8040D440  EC 05 00 2A */	fadds f0, f5, f0
/* 8040D444  D0 04 00 00 */	stfs f0, 0(r4)
/* 8040D448  C0 65 00 04 */	lfs f3, 4(r5)
/* 8040D44C  C0 43 00 00 */	lfs f2, 0(r3)
/* 8040D450  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8040D454  C0 03 00 04 */	lfs f0, 4(r3)
/* 8040D458  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8040D45C  C0 65 00 24 */	lfs f3, 0x24(r5)
/* 8040D460  EC 01 00 32 */	fmuls f0, f1, f0
/* 8040D464  C0 23 00 08 */	lfs f1, 8(r3)
/* 8040D468  C0 85 00 34 */	lfs f4, 0x34(r5)
/* 8040D46C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8040D470  EC 02 00 2A */	fadds f0, f2, f0
/* 8040D474  EC 01 00 2A */	fadds f0, f1, f0
/* 8040D478  EC 04 00 2A */	fadds f0, f4, f0
/* 8040D47C  D0 04 00 04 */	stfs f0, 4(r4)
/* 8040D480  C0 65 00 08 */	lfs f3, 8(r5)
/* 8040D484  C0 43 00 00 */	lfs f2, 0(r3)
/* 8040D488  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 8040D48C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8040D490  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8040D494  C0 65 00 28 */	lfs f3, 0x28(r5)
/* 8040D498  EC 01 00 32 */	fmuls f0, f1, f0
/* 8040D49C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8040D4A0  C0 85 00 38 */	lfs f4, 0x38(r5)
/* 8040D4A4  EC 23 00 72 */	fmuls f1, f3, f1
/* 8040D4A8  EC 02 00 2A */	fadds f0, f2, f0
/* 8040D4AC  EC 01 00 2A */	fadds f0, f1, f0
/* 8040D4B0  EC 04 00 2A */	fadds f0, f4, f0
/* 8040D4B4  D0 04 00 08 */	stfs f0, 8(r4)
/* 8040D4B8  4E 80 00 20 */	blr 

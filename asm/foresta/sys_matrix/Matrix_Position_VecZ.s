lbl_8040D530:
/* 8040D530  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040D534  38 84 77 A4 */	addi r4, r4, Matrix_now@l /* 0x811C77A4@l */
/* 8040D538  80 84 00 00 */	lwz r4, 0(r4)
/* 8040D53C  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8040D540  C0 44 00 30 */	lfs f2, 0x30(r4)
/* 8040D544  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040D548  EC 02 00 2A */	fadds f0, f2, f0
/* 8040D54C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8040D550  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8040D554  C0 44 00 34 */	lfs f2, 0x34(r4)
/* 8040D558  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040D55C  EC 02 00 2A */	fadds f0, f2, f0
/* 8040D560  D0 03 00 04 */	stfs f0, 4(r3)
/* 8040D564  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 8040D568  C0 44 00 38 */	lfs f2, 0x38(r4)
/* 8040D56C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040D570  EC 02 00 2A */	fadds f0, f2, f0
/* 8040D574  D0 03 00 08 */	stfs f0, 8(r3)
/* 8040D578  4E 80 00 20 */	blr 

lbl_8040D4E4:
/* 8040D4E4  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040D4E8  38 84 77 A4 */	addi r4, r4, Matrix_now@l /* 0x811C77A4@l */
/* 8040D4EC  80 84 00 00 */	lwz r4, 0(r4)
/* 8040D4F0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8040D4F4  C0 44 00 30 */	lfs f2, 0x30(r4)
/* 8040D4F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040D4FC  EC 02 00 2A */	fadds f0, f2, f0
/* 8040D500  D0 03 00 00 */	stfs f0, 0(r3)
/* 8040D504  C0 04 00 04 */	lfs f0, 4(r4)
/* 8040D508  C0 44 00 34 */	lfs f2, 0x34(r4)
/* 8040D50C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040D510  EC 02 00 2A */	fadds f0, f2, f0
/* 8040D514  D0 03 00 04 */	stfs f0, 4(r3)
/* 8040D518  C0 04 00 08 */	lfs f0, 8(r4)
/* 8040D51C  C0 44 00 38 */	lfs f2, 0x38(r4)
/* 8040D520  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040D524  EC 02 00 2A */	fadds f0, f2, f0
/* 8040D528  D0 03 00 08 */	stfs f0, 8(r3)
/* 8040D52C  4E 80 00 20 */	blr 

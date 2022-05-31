lbl_8040D4BC:
/* 8040D4BC  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040D4C0  38 84 77 A4 */	addi r4, r4, Matrix_now@l /* 0x811C77A4@l */
/* 8040D4C4  80 84 00 00 */	lwz r4, 0(r4)
/* 8040D4C8  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 8040D4CC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8040D4D0  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 8040D4D4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8040D4D8  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 8040D4DC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8040D4E0  4E 80 00 20 */	blr 

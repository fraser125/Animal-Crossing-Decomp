lbl_8038ABA8:
/* 8038ABA8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8038ABAC  3C C0 80 64 */	lis r6, data_806419A4@ha /* 0x806419A4@ha */
/* 8038ABB0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8038ABB4  C0 A5 00 04 */	lfs f5, 4(r5)
/* 8038ABB8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8038ABBC  EC 82 00 32 */	fmuls f4, f2, f0
/* 8038ABC0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8038ABC4  EC 65 00 72 */	fmuls f3, f5, f1
/* 8038ABC8  C0 24 00 04 */	lfs f1, 4(r4)
/* 8038ABCC  EC 42 00 32 */	fmuls f2, f2, f0
/* 8038ABD0  C0 06 19 A4 */	lfs f0, data_806419A4@l(r6)  /* 0x806419A4@l */
/* 8038ABD4  EC 25 00 72 */	fmuls f1, f5, f1
/* 8038ABD8  EC 64 18 2A */	fadds f3, f4, f3
/* 8038ABDC  EC 22 08 2A */	fadds f1, f2, f1
/* 8038ABE0  FC 40 18 50 */	fneg f2, f3
/* 8038ABE4  EC 22 08 2A */	fadds f1, f2, f1
/* 8038ABE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038ABEC  4C 41 13 82 */	cror 2, 1, 2
/* 8038ABF0  7C 00 00 26 */	mfcr r0
/* 8038ABF4  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 8038ABF8  4E 80 00 20 */	blr 

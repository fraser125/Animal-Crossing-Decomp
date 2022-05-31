lbl_80468EC4:
/* 80468EC4  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 80468EC8  3C 80 80 64 */	lis r4, kumo_top_pos@ha /* 0x80644874@ha */
/* 80468ECC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80468ED0  3C A0 80 64 */	lis r5, lit_586@ha /* 0x80644634@ha */
/* 80468ED4  38 84 48 74 */	addi r4, r4, kumo_top_pos@l /* 0x80644874@l */
/* 80468ED8  EC 41 00 2A */	fadds f2, f1, f0
/* 80468EDC  C0 25 46 34 */	lfs f1, lit_586@l(r5)  /* 0x80644634@l */
/* 80468EE0  C0 04 00 04 */	lfs f0, 4(r4)
/* 80468EE4  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 80468EE8  EC 21 00 2A */	fadds f1, f1, f0
/* 80468EEC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80468EF0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80468EF4  4C 81 00 20 */	blelr 
/* 80468EF8  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80468EFC  4E 80 00 20 */	blr 

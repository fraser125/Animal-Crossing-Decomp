lbl_8059D294:
/* 8059D294  80 E3 02 40 */	lwz r7, 0x240(r3)
/* 8059D298  3C C0 80 6C */	lis r6, drt_table@ha /* 0x806C34E8@ha */
/* 8059D29C  3C 80 80 65 */	lis r4, lit_458@ha /* 0x8064A14C@ha */
/* 8059D2A0  3C A0 80 65 */	lis r5, lit_445@ha /* 0x8064A148@ha */
/* 8059D2A4  54 E0 10 3A */	slwi r0, r7, 2
/* 8059D2A8  38 C6 34 E8 */	addi r6, r6, drt_table@l /* 0x806C34E8@l */
/* 8059D2AC  C0 04 A1 4C */	lfs f0, lit_458@l(r4)  /* 0x8064A14C@l */
/* 8059D2B0  3C 80 80 65 */	lis r4, lit_459@ha /* 0x8064A150@ha */
/* 8059D2B4  7C 86 04 2E */	lfsx f4, r6, r0
/* 8059D2B8  38 C5 A1 48 */	addi r6, r5, lit_445@l /* 0x8064A148@l */
/* 8059D2BC  3C A0 80 6C */	lis r5, data_806C34E0@ha /* 0x806C34E0@ha */
/* 8059D2C0  C0 26 00 00 */	lfs f1, 0(r6)
/* 8059D2C4  EC 00 01 32 */	fmuls f0, f0, f4
/* 8059D2C8  38 A5 34 E0 */	addi r5, r5, data_806C34E0@l /* 0x806C34E0@l */
/* 8059D2CC  C0 63 00 64 */	lfs f3, 0x64(r3)
/* 8059D2D0  7C 45 04 2E */	lfsx f2, r5, r0
/* 8059D2D4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8059D2D8  C0 04 A1 50 */	lfs f0, lit_459@l(r4)  /* 0x8064A150@l */
/* 8059D2DC  EC 63 08 2A */	fadds f3, f3, f1
/* 8059D2E0  EC 22 18 28 */	fsubs f1, f2, f3
/* 8059D2E4  EC 24 00 72 */	fmuls f1, f4, f1
/* 8059D2E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059D2EC  4C 40 13 82 */	cror 2, 0, 2
/* 8059D2F0  40 82 00 14 */	bne lbl_8059D304
/* 8059D2F4  68 E0 00 01 */	xori r0, r7, 1
/* 8059D2F8  FC 60 10 90 */	fmr f3, f2
/* 8059D2FC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8059D300  90 03 02 40 */	stw r0, 0x240(r3)
lbl_8059D304:
/* 8059D304  D0 63 00 60 */	stfs f3, 0x60(r3)
/* 8059D308  D0 63 00 64 */	stfs f3, 0x64(r3)
/* 8059D30C  4E 80 00 20 */	blr 

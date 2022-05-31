lbl_805BA998:
/* 805BA998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA99C  7C 08 02 A6 */	mflr r0
/* 805BA9A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA9A4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805BA9A8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805BA9AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BA9B0  3C 80 80 65 */	lis r4, lit_598@ha /* 0x8064AB1C@ha */
/* 805BA9B4  3C C0 80 65 */	lis r6, lit_484@ha /* 0x8064AAFC@ha */
/* 805BA9B8  C0 84 AB 1C */	lfs f4, lit_598@l(r4)  /* 0x8064AB1C@l */
/* 805BA9BC  3C A0 80 65 */	lis r5, lit_483@ha /* 0x8064AAF8@ha */
/* 805BA9C0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 805BA9C4  7C 7F 1B 78 */	mr r31, r3
/* 805BA9C8  FC A0 20 90 */	fmr f5, f4
/* 805BA9CC  C0 46 AA FC */	lfs f2, lit_484@l(r6)  /* 0x8064AAFC@l */
/* 805BA9D0  C0 65 AA F8 */	lfs f3, lit_483@l(r5)  /* 0x8064AAF8@l */
/* 805BA9D4  4B E0 0C 29 */	bl get_percent_forAccelBrake
/* 805BA9D8  3C 80 80 65 */	lis r4, lit_599@ha /* 0x8064AB20@ha */
/* 805BA9DC  3C 60 80 65 */	lis r3, aSHR_present_init_pos@ha /* 0x8064AB04@ha */
/* 805BA9E0  38 A4 AB 20 */	addi r5, r4, lit_599@l /* 0x8064AB20@l */
/* 805BA9E4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 805BA9E8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805BA9EC  3C 80 80 65 */	lis r4, aSHR_present_aim_pos@ha /* 0x8064AB10@ha */
/* 805BA9F0  FF E0 08 90 */	fmr f31, f1
/* 805BA9F4  38 63 AB 04 */	addi r3, r3, aSHR_present_init_pos@l /* 0x8064AB04@l */
/* 805BA9F8  EC 02 00 2A */	fadds f0, f2, f0
/* 805BA9FC  38 84 AB 10 */	addi r4, r4, aSHR_present_aim_pos@l /* 0x8064AB10@l */
/* 805BAA00  7F E5 FB 78 */	mr r5, r31
/* 805BAA04  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 805BAA08  4B E4 E0 15 */	bl Math3DInDivPos2
/* 805BAA0C  3C 60 80 65 */	lis r3, lit_483@ha /* 0x8064AAF8@ha */
/* 805BAA10  C0 03 AA F8 */	lfs f0, lit_483@l(r3)  /* 0x8064AAF8@l */
/* 805BAA14  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805BAA18  4C 41 13 82 */	cror 2, 1, 2
/* 805BAA1C  40 82 00 0C */	bne lbl_805BAA28
/* 805BAA20  38 00 00 01 */	li r0, 1
/* 805BAA24  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_805BAA28:
/* 805BAA28  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805BAA2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BAA30  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805BAA34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BAA38  7C 08 03 A6 */	mtlr r0
/* 805BAA3C  38 21 00 20 */	addi r1, r1, 0x20
/* 805BAA40  4E 80 00 20 */	blr 

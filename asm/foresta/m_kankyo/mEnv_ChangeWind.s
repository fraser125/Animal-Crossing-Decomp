lbl_803BA0B0:
/* 803BA0B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BA0B4  7C 08 02 A6 */	mflr r0
/* 803BA0B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BA0BC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 803BA0C0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 803BA0C4  38 60 00 75 */	li r3, 0x75
/* 803BA0C8  4B FE 38 3D */	bl mEv_check_schedule
/* 803BA0CC  2C 03 00 00 */	cmpwi r3, 0
/* 803BA0D0  41 82 00 40 */	beq lbl_803BA110
/* 803BA0D4  3C C0 80 64 */	lis r6, lit_603@ha /* 0x8064245C@ha */
/* 803BA0D8  3C 80 80 64 */	lis r4, lit_545@ha /* 0x8064244C@ha */
/* 803BA0DC  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803BA0E0  3C A0 80 65 */	lis r5, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA0E4  C0 46 24 5C */	lfs f2, lit_603@l(r6)  /* 0x8064245C@l */
/* 803BA0E8  38 A5 63 34 */	addi r5, r5, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA0EC  C0 24 24 4C */	lfs f1, lit_545@l(r4)  /* 0x8064244C@l */
/* 803BA0F0  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803BA0F4  D0 45 00 04 */	stfs f2, 4(r5)
/* 803BA0F8  D0 45 00 08 */	stfs f2, 8(r5)
/* 803BA0FC  D0 25 00 18 */	stfs f1, 0x18(r5)
/* 803BA100  D0 25 00 1C */	stfs f1, 0x1c(r5)
/* 803BA104  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 803BA108  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 803BA10C  48 00 00 70 */	b lbl_803BA17C
lbl_803BA110:
/* 803BA110  4B CA 2B E5 */	bl fqrand
/* 803BA114  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80642460@ha */
/* 803BA118  3C 60 80 64 */	lis r3, lit_605@ha /* 0x80642464@ha */
/* 803BA11C  C0 44 24 60 */	lfs f2, lit_604@l(r4)  /* 0x80642460@l */
/* 803BA120  C0 03 24 64 */	lfs f0, lit_605@l(r3)  /* 0x80642464@l */
/* 803BA124  EC 22 00 72 */	fmuls f1, f2, f1
/* 803BA128  EF E1 00 28 */	fsubs f31, f1, f0
/* 803BA12C  4B CA 2B C9 */	bl fqrand
/* 803BA130  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA134  3C 60 80 64 */	lis r3, lit_606@ha /* 0x80642468@ha */
/* 803BA138  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA13C  C0 83 24 68 */	lfs f4, lit_606@l(r3)  /* 0x80642468@l */
/* 803BA140  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 803BA144  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803BA148  EC 7F 20 24 */	fdivs f3, f31, f4
/* 803BA14C  C0 A4 00 08 */	lfs f5, 8(r4)
/* 803BA150  EC 40 30 28 */	fsubs f2, f0, f6
/* 803BA154  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 803BA158  D0 64 00 0C */	stfs f3, 0xc(r4)
/* 803BA15C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 803BA160  EC 45 F8 2A */	fadds f2, f5, f31
/* 803BA164  EC 26 08 2A */	fadds f1, f6, f1
/* 803BA168  D0 44 00 04 */	stfs f2, 4(r4)
/* 803BA16C  EC 01 00 28 */	fsubs f0, f1, f0
/* 803BA170  D0 24 00 18 */	stfs f1, 0x18(r4)
/* 803BA174  EC 00 20 24 */	fdivs f0, f0, f4
/* 803BA178  D0 04 00 20 */	stfs f0, 0x20(r4)
lbl_803BA17C:
/* 803BA17C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 803BA180  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BA184  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 803BA188  7C 08 03 A6 */	mtlr r0
/* 803BA18C  38 21 00 20 */	addi r1, r1, 0x20
/* 803BA190  4E 80 00 20 */	blr 

lbl_803BA194:
/* 803BA194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BA198  7C 08 02 A6 */	mflr r0
/* 803BA19C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BA1A0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 803BA1A4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 803BA1A8  38 60 00 75 */	li r3, 0x75
/* 803BA1AC  4B FE 37 59 */	bl mEv_check_schedule
/* 803BA1B0  2C 03 00 00 */	cmpwi r3, 0
/* 803BA1B4  41 82 00 2C */	beq lbl_803BA1E0
/* 803BA1B8  3C 80 80 64 */	lis r4, lit_603@ha /* 0x8064245C@ha */
/* 803BA1BC  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803BA1C0  38 A4 24 5C */	addi r5, r4, lit_603@l /* 0x8064245C@l */
/* 803BA1C4  C0 03 24 4C */	lfs f0, lit_545@l(r3)  /* 0x8064244C@l */
/* 803BA1C8  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA1CC  C0 25 00 00 */	lfs f1, 0(r5)
/* 803BA1D0  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA1D4  D0 24 00 04 */	stfs f1, 4(r4)
/* 803BA1D8  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 803BA1DC  48 00 00 3C */	b lbl_803BA218
lbl_803BA1E0:
/* 803BA1E0  4B CA 2B 15 */	bl fqrand
/* 803BA1E4  3C 60 80 64 */	lis r3, lit_615@ha /* 0x8064246C@ha */
/* 803BA1E8  C0 03 24 6C */	lfs f0, lit_615@l(r3)  /* 0x8064246C@l */
/* 803BA1EC  EF E0 00 72 */	fmuls f31, f0, f1
/* 803BA1F0  4B CA 2B 05 */	bl fqrand
/* 803BA1F4  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA1F8  38 63 63 34 */	addi r3, r3, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA1FC  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 803BA200  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 803BA204  D3 E3 00 04 */	stfs f31, 4(r3)
/* 803BA208  EC 00 10 28 */	fsubs f0, f0, f2
/* 803BA20C  EC 01 00 32 */	fmuls f0, f1, f0
/* 803BA210  EC 02 00 2A */	fadds f0, f2, f0
/* 803BA214  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_803BA218:
/* 803BA218  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA21C  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803BA220  38 A4 63 34 */	addi r5, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA224  C0 23 24 48 */	lfs f1, lit_544@l(r3)  /* 0x80642448@l */
/* 803BA228  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008CA0@ha */
/* 803BA22C  C0 45 00 04 */	lfs f2, 4(r5)
/* 803BA230  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 803BA234  38 04 8C A0 */	addi r0, r4, 0x8CA0 /* 0x00008CA0@l */
/* 803BA238  38 60 00 00 */	li r3, 0
/* 803BA23C  90 05 00 00 */	stw r0, 0(r5)
/* 803BA240  90 65 00 24 */	stw r3, 0x24(r5)
/* 803BA244  D0 45 00 08 */	stfs f2, 8(r5)
/* 803BA248  D0 25 00 0C */	stfs f1, 0xc(r5)
/* 803BA24C  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 803BA250  D0 25 00 20 */	stfs f1, 0x20(r5)
/* 803BA254  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 803BA258  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BA25C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 803BA260  7C 08 03 A6 */	mtlr r0
/* 803BA264  38 21 00 20 */	addi r1, r1, 0x20
/* 803BA268  4E 80 00 20 */	blr 

lbl_8054D1A4:
/* 8054D1A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054D1A8  7C 08 02 A6 */	mflr r0
/* 8054D1AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054D1B0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8054D1B4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8054D1B8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8054D1BC  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8054D1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054D1C4  7C 7F 1B 78 */	mr r31, r3
/* 8054D1C8  7C 83 23 78 */	mr r3, r4
/* 8054D1CC  4B E8 C4 75 */	bl get_player_actor_withoutCheck
/* 8054D1D0  28 03 00 00 */	cmplwi r3, 0
/* 8054D1D4  41 82 00 88 */	beq lbl_8054D25C
/* 8054D1D8  88 1F 09 A3 */	lbz r0, 0x9a3(r31)
/* 8054D1DC  3C 80 80 6A */	lis r4, posX@ha /* 0x806A54DC@ha */
/* 8054D1E0  3C 60 80 6A */	lis r3, posZ@ha /* 0x806A5500@ha */
/* 8054D1E4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8054D1E8  54 00 10 3A */	slwi r0, r0, 2
/* 8054D1EC  38 84 54 DC */	addi r4, r4, posX@l /* 0x806A54DC@l */
/* 8054D1F0  38 63 55 00 */	addi r3, r3, posZ@l /* 0x806A5500@l */
/* 8054D1F4  7C 64 04 2E */	lfsx f3, r4, r0
/* 8054D1F8  7C 23 04 2E */	lfsx f1, r3, r0
/* 8054D1FC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8054D200  EF E3 10 28 */	fsubs f31, f3, f2
/* 8054D204  EF C1 00 28 */	fsubs f30, f1, f0
/* 8054D208  FC 40 F8 90 */	fmr f2, f31
/* 8054D20C  FC 20 F0 90 */	fmr f1, f30
/* 8054D210  4B EB ED F1 */	bl atans_table
/* 8054D214  7C 60 1B 78 */	mr r0, r3
/* 8054D218  38 7F 00 DE */	addi r3, r31, 0xde
/* 8054D21C  7C 04 07 34 */	extsh r4, r0
/* 8054D220  38 A0 08 00 */	li r5, 0x800
/* 8054D224  4B E6 D9 21 */	bl chase_angle
/* 8054D228  EC 5F 07 F2 */	fmuls f2, f31, f31
/* 8054D22C  3C 60 80 65 */	lis r3, lit_479@ha /* 0x806494D4@ha */
/* 8054D230  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 8054D234  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8054D238  C0 03 94 D4 */	lfs f0, lit_479@l(r3)  /* 0x806494D4@l */
/* 8054D23C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8054D240  EC 22 08 2A */	fadds f1, f2, f1
/* 8054D244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054D248  40 80 00 14 */	bge lbl_8054D25C
/* 8054D24C  88 7F 09 A4 */	lbz r3, 0x9a4(r31)
/* 8054D250  88 9F 09 A2 */	lbz r4, 0x9a2(r31)
/* 8054D254  4B FF FE A1 */	bl aNDM_get_next_zone
/* 8054D258  98 7F 09 A3 */	stb r3, 0x9a3(r31)
lbl_8054D25C:
/* 8054D25C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8054D260  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8054D264  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8054D268  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8054D26C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054D270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054D274  7C 08 03 A6 */	mtlr r0
/* 8054D278  38 21 00 30 */	addi r1, r1, 0x30
/* 8054D27C  4E 80 00 20 */	blr 

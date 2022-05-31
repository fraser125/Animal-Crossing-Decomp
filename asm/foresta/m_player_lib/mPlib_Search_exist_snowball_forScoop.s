lbl_803DC3D4:
/* 803DC3D4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803DC3D8  7C 08 02 A6 */	mflr r0
/* 803DC3DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 803DC3E0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803DC3E4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803DC3E8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 803DC3EC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 803DC3F0  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 803DC3F4  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 803DC3F8  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 803DC3FC  F3 81 00 18 */	psq_st f28, 24(r1), 0, 0 /* qr0 */
/* 803DC400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DC404  83 E3 1D D8 */	lwz r31, 0x1dd8(r3)
/* 803DC408  C3 E4 00 00 */	lfs f31, 0(r4)
/* 803DC40C  C3 C4 00 04 */	lfs f30, 4(r4)
/* 803DC410  C3 A4 00 08 */	lfs f29, 8(r4)
/* 803DC414  48 00 00 BC */	b lbl_803DC4D0
lbl_803DC418:
/* 803DC418  A8 1F 00 00 */	lha r0, 0(r31)
/* 803DC41C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 803DC420  40 82 00 AC */	bne lbl_803DC4CC
/* 803DC424  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 803DC428  3C 60 80 64 */	lis r3, lit_1088@ha /* 0x80642FE0@ha */
/* 803DC42C  EC 20 F0 28 */	fsubs f1, f0, f30
/* 803DC430  C0 03 2F E0 */	lfs f0, lit_1088@l(r3)  /* 0x80642FE0@l */
/* 803DC434  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803DC438  4C 41 13 82 */	cror 2, 1, 2
/* 803DC43C  40 82 00 0C */	bne lbl_803DC448
/* 803DC440  FC 60 08 90 */	fmr f3, f1
/* 803DC444  48 00 00 08 */	b lbl_803DC44C
lbl_803DC448:
/* 803DC448  FC 60 08 50 */	fneg f3, f1
lbl_803DC44C:
/* 803DC44C  3C 60 80 64 */	lis r3, lit_1502@ha /* 0x80642FFC@ha */
/* 803DC450  3C A0 80 64 */	lis r5, lit_1501@ha /* 0x80642FF8@ha */
/* 803DC454  38 83 2F FC */	addi r4, r3, lit_1502@l /* 0x80642FFC@l */
/* 803DC458  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 803DC45C  C0 24 00 00 */	lfs f1, 0(r4)
/* 803DC460  3C 60 80 64 */	lis r3, lit_1500@ha /* 0x80642FF4@ha */
/* 803DC464  C0 45 2F F8 */	lfs f2, lit_1501@l(r5)  /* 0x80642FF8@l */
/* 803DC468  EC 21 00 32 */	fmuls f1, f1, f0
/* 803DC46C  C0 03 2F F4 */	lfs f0, lit_1500@l(r3)  /* 0x80642FF4@l */
/* 803DC470  EC 82 08 2A */	fadds f4, f2, f1
/* 803DC474  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 803DC478  40 80 00 08 */	bge lbl_803DC480
/* 803DC47C  48 00 00 08 */	b lbl_803DC484
lbl_803DC480:
/* 803DC480  FC 80 00 90 */	fmr f4, f0
lbl_803DC484:
/* 803DC484  3C 60 80 64 */	lis r3, lit_1503@ha /* 0x80643000@ha */
/* 803DC488  C0 03 30 00 */	lfs f0, lit_1503@l(r3)  /* 0x80643000@l */
/* 803DC48C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 803DC490  4C 40 13 82 */	cror 2, 0, 2
/* 803DC494  40 82 00 38 */	bne lbl_803DC4CC
/* 803DC498  3C 60 80 64 */	lis r3, lit_1500@ha /* 0x80642FF4@ha */
/* 803DC49C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 803DC4A0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 803DC4A4  C0 63 2F F4 */	lfs f3, lit_1500@l(r3)  /* 0x80642FF4@l */
/* 803DC4A8  EC 21 F8 28 */	fsubs f1, f1, f31
/* 803DC4AC  EC 40 E8 28 */	fsubs f2, f0, f29
/* 803DC4B0  EF 84 18 2A */	fadds f28, f4, f3
/* 803DC4B4  48 02 C7 E5 */	bl Math3DVecLengthSquare2D
/* 803DC4B8  EC 1C 07 32 */	fmuls f0, f28, f28
/* 803DC4BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803DC4C0  40 80 00 0C */	bge lbl_803DC4CC
/* 803DC4C4  7F E3 FB 78 */	mr r3, r31
/* 803DC4C8  48 00 00 14 */	b lbl_803DC4DC
lbl_803DC4CC:
/* 803DC4CC  83 FF 01 58 */	lwz r31, 0x158(r31)
lbl_803DC4D0:
/* 803DC4D0  28 1F 00 00 */	cmplwi r31, 0
/* 803DC4D4  40 82 FF 44 */	bne lbl_803DC418
/* 803DC4D8  38 60 00 00 */	li r3, 0
lbl_803DC4DC:
/* 803DC4DC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803DC4E0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803DC4E4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 803DC4E8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 803DC4EC  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 803DC4F0  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 803DC4F4  E3 81 00 18 */	psq_l f28, 24(r1), 0, 0 /* qr0 */
/* 803DC4F8  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 803DC4FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803DC500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DC504  7C 08 03 A6 */	mtlr r0
/* 803DC508  38 21 00 50 */	addi r1, r1, 0x50
/* 803DC50C  4E 80 00 20 */	blr 

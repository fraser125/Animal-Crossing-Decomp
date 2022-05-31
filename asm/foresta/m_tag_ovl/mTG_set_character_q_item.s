lbl_805FEBFC:
/* 805FEBFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805FEC00  7C 08 02 A6 */	mflr r0
/* 805FEC04  90 01 00 44 */	stw r0, 0x44(r1)
/* 805FEC08  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805FEC0C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805FEC10  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805FEC14  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805FEC18  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 805FEC1C  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 805FEC20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FEC24  93 C1 00 08 */	stw r30, 8(r1)
/* 805FEC28  7C DF 33 78 */	mr r31, r6
/* 805FEC2C  3C C0 80 65 */	lis r6, lit_5367@ha /* 0x8064B904@ha */
/* 805FEC30  C3 FF 00 44 */	lfs f31, 0x44(r31)
/* 805FEC34  7C 9E 23 78 */	mr r30, r4
/* 805FEC38  C0 06 B9 04 */	lfs f0, lit_5367@l(r6)  /* 0x8064B904@l */
/* 805FEC3C  FC 60 FA 10 */	fabs f3, f31
/* 805FEC40  FC 60 18 18 */	frsp f3, f3
/* 805FEC44  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805FEC48  41 80 00 B0 */	blt lbl_805FECF8
/* 805FEC4C  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 805FEC50  3C C0 80 65 */	lis r6, lit_5368@ha /* 0x8064B908@ha */
/* 805FEC54  C0 9F 00 2C */	lfs f4, 0x2c(r31)
/* 805FEC58  3C 80 80 65 */	lis r4, lit_1072@ha /* 0x8064B8A4@ha */
/* 805FEC5C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805FEC60  38 E6 B9 08 */	addi r7, r6, lit_5368@l /* 0x8064B908@l */
/* 805FEC64  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805FEC68  EC 85 20 2A */	fadds f4, f5, f4
/* 805FEC6C  C0 BF 00 0C */	lfs f5, 0xc(r31)
/* 805FEC70  38 C4 B8 A4 */	addi r6, r4, lit_1072@l /* 0x8064B8A4@l */
/* 805FEC74  EC 03 00 2A */	fadds f0, f3, f0
/* 805FEC78  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 805FEC7C  EC A5 08 2A */	fadds f5, f5, f1
/* 805FEC80  EC 9F 01 32 */	fmuls f4, f31, f4
/* 805FEC84  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FEC88  EC 23 10 2A */	fadds f1, f3, f2
/* 805FEC8C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 805FEC90  C0 C7 00 00 */	lfs f6, 0(r7)
/* 805FEC94  EC 65 20 2A */	fadds f3, f5, f4
/* 805FEC98  C0 46 00 00 */	lfs f2, 0(r6)
/* 805FEC9C  7C A3 2B 78 */	mr r3, r5
/* 805FECA0  EC 01 00 2A */	fadds f0, f1, f0
/* 805FECA4  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805FECA8  EF C6 18 2A */	fadds f30, f6, f3
/* 805FECAC  EF A2 00 28 */	fsubs f29, f2, f0
/* 805FECB0  7D 89 03 A6 */	mtctr r12
/* 805FECB4  4E 80 04 21 */	bctrl 
/* 805FECB8  3C 60 80 65 */	lis r3, lit_875@ha /* 0x8064B86C@ha */
/* 805FECBC  3C 80 80 65 */	lis r4, lit_5369@ha /* 0x8064B90C@ha */
/* 805FECC0  38 A3 B8 6C */	addi r5, r3, lit_875@l /* 0x8064B86C@l */
/* 805FECC4  C0 84 B9 0C */	lfs f4, lit_5369@l(r4)  /* 0x8064B90C@l */
/* 805FECC8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805FECCC  3C 60 80 65 */	lis r3, lit_707@ha /* 0x8064B864@ha */
/* 805FECD0  FC 20 F0 90 */	fmr f1, f30
/* 805FECD4  7F E4 FB 78 */	mr r4, r31
/* 805FECD8  EF FF 00 32 */	fmuls f31, f31, f0
/* 805FECDC  C0 03 B8 64 */	lfs f0, lit_707@l(r3)  /* 0x8064B864@l */
/* 805FECE0  FC 40 E8 90 */	fmr f2, f29
/* 805FECE4  7F C3 F3 78 */	mr r3, r30
/* 805FECE8  FC 60 F8 90 */	fmr f3, f31
/* 805FECEC  EC 84 07 F2 */	fmuls f4, f4, f31
/* 805FECF0  EC A0 07 F2 */	fmuls f5, f0, f31
/* 805FECF4  4B FF F7 CD */	bl mTG_set_questItemInfo
lbl_805FECF8:
/* 805FECF8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805FECFC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805FED00  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805FED04  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805FED08  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 805FED0C  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 805FED10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FED14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805FED18  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FED1C  7C 08 03 A6 */	mtlr r0
/* 805FED20  38 21 00 40 */	addi r1, r1, 0x40
/* 805FED24  4E 80 00 20 */	blr 

lbl_8059C154:
/* 8059C154  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059C158  7C 08 02 A6 */	mflr r0
/* 8059C15C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059C160  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8059C164  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8059C168  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8059C16C  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8059C170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059C174  93 C1 00 08 */	stw r30, 8(r1)
/* 8059C178  7C 7E 1B 78 */	mr r30, r3
/* 8059C17C  80 03 02 34 */	lwz r0, 0x234(r3)
/* 8059C180  7C 1F 07 34 */	extsh r31, r0
/* 8059C184  7F E3 FB 78 */	mr r3, r31
/* 8059C188  4B E1 E9 69 */	bl sin_s
/* 8059C18C  C0 1E 02 44 */	lfs f0, 0x244(r30)
/* 8059C190  38 1F 01 80 */	addi r0, r31, 0x180
/* 8059C194  7C 03 07 34 */	extsh r3, r0
/* 8059C198  EF E0 00 72 */	fmuls f31, f0, f1
/* 8059C19C  7C 00 07 35 */	extsh. r0, r0
/* 8059C1A0  90 7E 02 34 */	stw r3, 0x234(r30)
/* 8059C1A4  40 80 00 24 */	bge lbl_8059C1C8
/* 8059C1A8  7F E0 07 35 */	extsh. r0, r31
/* 8059C1AC  41 80 00 1C */	blt lbl_8059C1C8
/* 8059C1B0  4B AC 0B 45 */	bl fqrand
/* 8059C1B4  3C 60 80 65 */	lis r3, lit_447@ha /* 0x8064A0C8@ha */
/* 8059C1B8  C0 43 A0 C8 */	lfs f2, lit_447@l(r3)  /* 0x8064A0C8@l */
/* 8059C1BC  EC 02 00 72 */	fmuls f0, f2, f1
/* 8059C1C0  EC 02 00 2A */	fadds f0, f2, f0
/* 8059C1C4  D0 1E 02 44 */	stfs f0, 0x244(r30)
lbl_8059C1C8:
/* 8059C1C8  38 7F 01 80 */	addi r3, r31, 0x180
/* 8059C1CC  4B E1 E9 25 */	bl sin_s
/* 8059C1D0  3C 60 80 65 */	lis r3, lit_448@ha /* 0x8064A0CC@ha */
/* 8059C1D4  C0 7E 02 44 */	lfs f3, 0x244(r30)
/* 8059C1D8  C0 43 A0 CC */	lfs f2, lit_448@l(r3)  /* 0x8064A0CC@l */
/* 8059C1DC  38 7E 02 48 */	addi r3, r30, 0x248
/* 8059C1E0  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 8059C1E4  EF C3 00 72 */	fmuls f30, f3, f1
/* 8059C1E8  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 8059C1EC  EC 42 00 32 */	fmuls f2, f2, f0
/* 8059C1F0  4B E1 EA 79 */	bl chase_f
/* 8059C1F4  EC 1E F8 28 */	fsubs f0, f30, f31
/* 8059C1F8  C0 3E 02 48 */	lfs f1, 0x248(r30)
/* 8059C1FC  EC 01 00 2A */	fadds f0, f1, f0
/* 8059C200  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8059C204  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8059C208  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8059C20C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8059C210  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8059C214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059C218  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059C21C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059C220  7C 08 03 A6 */	mtlr r0
/* 8059C224  38 21 00 30 */	addi r1, r1, 0x30
/* 8059C228  4E 80 00 20 */	blr 

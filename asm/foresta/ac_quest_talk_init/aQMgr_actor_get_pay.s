lbl_8048B064:
/* 8048B064  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048B068  7C 08 02 A6 */	mflr r0
/* 8048B06C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048B070  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8048B074  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8048B078  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8048B07C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8048B080  3C 80 80 64 */	lis r4, lit_969@ha /* 0x80644BCC@ha */
/* 8048B084  7C 7F 1B 78 */	mr r31, r3
/* 8048B088  C3 E4 4B CC */	lfs f31, lit_969@l(r4)  /* 0x80644BCC@l */
/* 8048B08C  4B BD 1C 69 */	bl fqrand
/* 8048B090  3C 60 80 64 */	lis r3, lit_866@ha /* 0x80644BC0@ha */
/* 8048B094  C0 03 4B C0 */	lfs f0, lit_866@l(r3)  /* 0x80644BC0@l */
/* 8048B098  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048B09C  FC 00 00 1E */	fctiwz f0, f0
/* 8048B0A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8048B0A4  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 8048B0A8  4B BD 1C 4D */	bl fqrand
/* 8048B0AC  3C 60 80 69 */	lis r3, plus_minus@ha /* 0x8068B148@ha */
/* 8048B0B0  3C 80 80 64 */	lis r4, data_80644BBC@ha /* 0x80644BBC@ha */
/* 8048B0B4  57 C0 10 3A */	slwi r0, r30, 2
/* 8048B0B8  C0 44 4B BC */	lfs f2, data_80644BBC@l(r4)  /* 0x80644BBC@l */
/* 8048B0BC  38 63 B1 48 */	addi r3, r3, plus_minus@l /* 0x8068B148@l */
/* 8048B0C0  7C 03 04 2E */	lfsx f0, r3, r0
/* 8048B0C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8048B0C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048B0CC  EF FF 00 2A */	fadds f31, f31, f0
/* 8048B0D0  4B F5 5E D9 */	bl mPr_GetMoneyPower
/* 8048B0D4  7C 63 07 34 */	extsh r3, r3
/* 8048B0D8  4B FF FF 01 */	bl aQMgr_actor_get_rate
/* 8048B0DC  28 03 02 BC */	cmplwi r3, 0x2bc
/* 8048B0E0  40 81 00 08 */	ble lbl_8048B0E8
/* 8048B0E4  38 60 02 BC */	li r3, 0x2bc
lbl_8048B0E8:
/* 8048B0E8  3C 00 43 30 */	lis r0, 0x4330
/* 8048B0EC  90 61 00 14 */	stw r3, 0x14(r1)
/* 8048B0F0  3C 80 80 64 */	lis r4, lit_973@ha /* 0x80644BD4@ha */
/* 8048B0F4  3C A0 80 64 */	lis r5, lit_969@ha /* 0x80644BCC@ha */
/* 8048B0F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8048B0FC  3C 60 80 64 */	lis r3, lit_970@ha /* 0x80644BD0@ha */
/* 8048B100  C8 64 4B D4 */	lfd f3, lit_973@l(r4)  /* 0x80644BD4@l */
/* 8048B104  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8048B108  C0 45 4B CC */	lfs f2, lit_969@l(r5)  /* 0x80644BCC@l */
/* 8048B10C  EC 00 18 28 */	fsubs f0, f0, f3
/* 8048B110  C0 23 4B D0 */	lfs f1, lit_970@l(r3)  /* 0x80644BD0@l */
/* 8048B114  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8048B118  EC 42 00 2A */	fadds f2, f2, f0
/* 8048B11C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8048B120  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8048B124  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 8048B128  EC 00 18 28 */	fsubs f0, f0, f3
/* 8048B12C  EC 22 08 24 */	fdivs f1, f2, f1
/* 8048B130  EC 20 00 72 */	fmuls f1, f0, f1
/* 8048B134  4B C0 FC 71 */	bl func_8009ADA4
/* 8048B138  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8048B13C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048B140  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8048B144  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8048B148  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8048B14C  7C 08 03 A6 */	mtlr r0
/* 8048B150  38 21 00 40 */	addi r1, r1, 0x40
/* 8048B154  4E 80 00 20 */	blr 

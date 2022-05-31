lbl_804CF868:
/* 804CF868  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CF86C  7C 08 02 A6 */	mflr r0
/* 804CF870  2C 03 00 00 */	cmpwi r3, 0
/* 804CF874  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CF878  40 82 00 60 */	bne lbl_804CF8D8
/* 804CF87C  54 83 70 22 */	slwi r3, r4, 0xe
/* 804CF880  3C 00 43 30 */	lis r0, 0x4330
/* 804CF884  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804CF888  3C 80 80 64 */	lis r4, lit_407@ha /* 0x8064635C@ha */
/* 804CF88C  90 61 00 0C */	stw r3, 0xc(r1)
/* 804CF890  3C 60 80 64 */	lis r3, lit_404@ha /* 0x80646350@ha */
/* 804CF894  C8 44 63 5C */	lfd f2, lit_407@l(r4)  /* 0x8064635C@l */
/* 804CF898  90 01 00 08 */	stw r0, 8(r1)
/* 804CF89C  C0 03 63 50 */	lfs f0, lit_404@l(r3)  /* 0x80646350@l */
/* 804CF8A0  C8 21 00 08 */	lfd f1, 8(r1)
/* 804CF8A4  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF8A8  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CF8AC  FC 00 00 1E */	fctiwz f0, f0
/* 804CF8B0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804CF8B4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804CF8B8  4B EE B2 39 */	bl sin_s
/* 804CF8BC  3C 80 80 64 */	lis r4, lit_403@ha /* 0x8064634C@ha */
/* 804CF8C0  3C 60 80 64 */	lis r3, lit_392@ha /* 0x8064633C@ha */
/* 804CF8C4  C0 44 63 4C */	lfs f2, lit_403@l(r4)  /* 0x8064634C@l */
/* 804CF8C8  C0 03 63 3C */	lfs f0, lit_392@l(r3)  /* 0x8064633C@l */
/* 804CF8CC  EC 22 00 72 */	fmuls f1, f2, f1
/* 804CF8D0  EC 20 00 72 */	fmuls f1, f0, f1
/* 804CF8D4  48 00 00 5C */	b lbl_804CF930
lbl_804CF8D8:
/* 804CF8D8  54 83 70 22 */	slwi r3, r4, 0xe
/* 804CF8DC  3C 00 43 30 */	lis r0, 0x4330
/* 804CF8E0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804CF8E4  3C 80 80 64 */	lis r4, lit_407@ha /* 0x8064635C@ha */
/* 804CF8E8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 804CF8EC  3C 60 80 64 */	lis r3, lit_405@ha /* 0x80646354@ha */
/* 804CF8F0  C8 44 63 5C */	lfd f2, lit_407@l(r4)  /* 0x8064635C@l */
/* 804CF8F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CF8F8  C0 03 63 54 */	lfs f0, lit_405@l(r3)  /* 0x80646354@l */
/* 804CF8FC  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 804CF900  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF904  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CF908  FC 00 00 1E */	fctiwz f0, f0
/* 804CF90C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804CF910  80 61 00 24 */	lwz r3, 0x24(r1)
/* 804CF914  4B EE B1 DD */	bl sin_s
/* 804CF918  3C 80 80 64 */	lis r4, lit_403@ha /* 0x8064634C@ha */
/* 804CF91C  3C 60 80 64 */	lis r3, lit_392@ha /* 0x8064633C@ha */
/* 804CF920  C0 44 63 4C */	lfs f2, lit_403@l(r4)  /* 0x8064634C@l */
/* 804CF924  C0 03 63 3C */	lfs f0, lit_392@l(r3)  /* 0x8064633C@l */
/* 804CF928  EC 22 00 72 */	fmuls f1, f2, f1
/* 804CF92C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804CF930:
/* 804CF930  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CF934  7C 08 03 A6 */	mtlr r0
/* 804CF938  38 21 00 30 */	addi r1, r1, 0x30
/* 804CF93C  4E 80 00 20 */	blr 

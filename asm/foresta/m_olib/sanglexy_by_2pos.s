lbl_803D889C:
/* 803D889C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D88A0  7C 08 02 A6 */	mflr r0
/* 803D88A4  7C 85 23 78 */	mr r5, r4
/* 803D88A8  7C 64 1B 78 */	mr r4, r3
/* 803D88AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D88B0  38 61 00 10 */	addi r3, r1, 0x10
/* 803D88B4  4B FF FF 4D */	bl func_803D8800
/* 803D88B8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803D88BC  3C 60 80 64 */	lis r3, lit_404@ha /* 0x80642920@ha */
/* 803D88C0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803D88C4  38 00 00 00 */	li r0, 0
/* 803D88C8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 803D88CC  3C 80 80 64 */	lis r4, lit_403@ha /* 0x8064291C@ha */
/* 803D88D0  C0 43 29 20 */	lfs f2, lit_404@l(r3)  /* 0x80642920@l */
/* 803D88D4  3C C0 80 64 */	lis r6, lit_402@ha /* 0x80642918@ha */
/* 803D88D8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 803D88DC  38 A4 29 1C */	addi r5, r4, lit_403@l /* 0x8064291C@l */
/* 803D88E0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 803D88E4  54 04 80 1E */	slwi r4, r0, 0x10
/* 803D88E8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 803D88EC  C0 65 00 00 */	lfs f3, 0(r5)
/* 803D88F0  EC 22 00 72 */	fmuls f1, f2, f1
/* 803D88F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 803D88F8  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 803D88FC  C0 46 29 18 */	lfs f2, lit_402@l(r6)  /* 0x80642918@l */
/* 803D8900  EC 23 00 72 */	fmuls f1, f3, f1
/* 803D8904  B0 01 00 0C */	sth r0, 0xc(r1)
/* 803D8908  EC 03 00 32 */	fmuls f0, f3, f0
/* 803D890C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 803D8910  EC 22 08 2A */	fadds f1, f2, f1
/* 803D8914  EC 02 00 2A */	fadds f0, f2, f0
/* 803D8918  FC 20 08 1E */	fctiwz f1, f1
/* 803D891C  FC 00 00 1E */	fctiwz f0, f0
/* 803D8920  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803D8924  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803D8928  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 803D892C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D8930  B0 61 00 08 */	sth r3, 8(r1)
/* 803D8934  B0 01 00 0A */	sth r0, 0xa(r1)
/* 803D8938  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D893C  80 61 00 08 */	lwz r3, 8(r1)
/* 803D8940  7C 08 03 A6 */	mtlr r0
/* 803D8944  38 21 00 40 */	addi r1, r1, 0x40
/* 803D8948  4E 80 00 20 */	blr 

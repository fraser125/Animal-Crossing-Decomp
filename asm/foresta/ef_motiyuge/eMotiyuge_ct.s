lbl_806176AC:
/* 806176AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806176B0  7C 08 02 A6 */	mflr r0
/* 806176B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806176B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806176BC  7C 7F 1B 78 */	mr r31, r3
/* 806176C0  4B A4 56 6D */	bl fqrand2
/* 806176C4  3C 60 80 65 */	lis r3, lit_383@ha /* 0x8064C7A0@ha */
/* 806176C8  3C 80 80 65 */	lis r4, data_8064C79C@ha /* 0x8064C79C@ha */
/* 806176CC  38 A3 C7 A0 */	addi r5, r3, lit_383@l /* 0x8064C7A0@l */
/* 806176D0  C0 44 C7 9C */	lfs f2, data_8064C79C@l(r4)  /* 0x8064C79C@l */
/* 806176D4  C0 05 00 00 */	lfs f0, 0(r5)
/* 806176D8  3C 60 80 65 */	lis r3, lit_384@ha /* 0x8064C7A4@ha */
/* 806176DC  38 80 00 00 */	li r4, 0
/* 806176E0  38 00 00 1E */	li r0, 0x1e
/* 806176E4  EC 20 00 72 */	fmuls f1, f0, f1
/* 806176E8  C0 03 C7 A4 */	lfs f0, lit_384@l(r3)  /* 0x8064C7A4@l */
/* 806176EC  EC 22 00 72 */	fmuls f1, f2, f1
/* 806176F0  FC 20 08 1E */	fctiwz f1, f1
/* 806176F4  D8 21 00 08 */	stfd f1, 8(r1)
/* 806176F8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 806176FC  B0 7F 00 4C */	sth r3, 0x4c(r31)
/* 80617700  B0 9F 00 4E */	sth r4, 0x4e(r31)
/* 80617704  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80617708  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8061770C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80617710  B0 1F 00 00 */	sth r0, 0(r31)
/* 80617714  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80617718  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061771C  7C 08 03 A6 */	mtlr r0
/* 80617720  38 21 00 20 */	addi r1, r1, 0x20
/* 80617724  4E 80 00 20 */	blr 
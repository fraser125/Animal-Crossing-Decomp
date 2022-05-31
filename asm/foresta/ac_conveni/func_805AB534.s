lbl_805AB534:
/* 805AB534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB538  2C 05 00 01 */	cmpwi r5, 1
/* 805AB53C  80 E3 00 00 */	lwz r7, 0(r3)
/* 805AB540  40 82 00 58 */	bne lbl_805AB598
/* 805AB544  3C 60 80 65 */	lis r3, lit_687@ha /* 0x8064A658@ha */
/* 805AB548  C0 08 02 C8 */	lfs f0, 0x2c8(r8)
/* 805AB54C  C0 23 A6 58 */	lfs f1, lit_687@l(r3)  /* 0x8064A658@l */
/* 805AB550  3C 80 80 65 */	lis r4, lit_686@ha /* 0x8064A654@ha */
/* 805AB554  38 64 A6 54 */	addi r3, r4, lit_686@l /* 0x8064A654@l */
/* 805AB558  80 A7 02 D0 */	lwz r5, 0x2d0(r7)
/* 805AB55C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805AB560  C0 43 00 00 */	lfs f2, 0(r3)
/* 805AB564  7C A4 2B 78 */	mr r4, r5
/* 805AB568  38 00 DC 00 */	li r0, -9216
/* 805AB56C  38 A5 00 08 */	addi r5, r5, 8
/* 805AB570  EC 02 00 2A */	fadds f0, f2, f0
/* 805AB574  FC 00 00 1E */	fctiwz f0, f0
/* 805AB578  D8 01 00 08 */	stfd f0, 8(r1)
/* 805AB57C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805AB580  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805AB584  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 805AB588  90 64 00 00 */	stw r3, 0(r4)
/* 805AB58C  90 04 00 04 */	stw r0, 4(r4)
/* 805AB590  90 A7 02 D0 */	stw r5, 0x2d0(r7)
/* 805AB594  48 00 00 14 */	b lbl_805AB5A8
lbl_805AB598:
/* 805AB598  2C 05 00 06 */	cmpwi r5, 6
/* 805AB59C  40 82 00 0C */	bne lbl_805AB5A8
/* 805AB5A0  38 00 00 00 */	li r0, 0
/* 805AB5A4  90 06 00 00 */	stw r0, 0(r6)
lbl_805AB5A8:
/* 805AB5A8  38 60 00 01 */	li r3, 1
/* 805AB5AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB5B0  4E 80 00 20 */	blr 

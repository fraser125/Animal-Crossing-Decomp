lbl_8059B7AC:
/* 8059B7AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059B7B0  7C 08 02 A6 */	mflr r0
/* 8059B7B4  2C 04 00 00 */	cmpwi r4, 0
/* 8059B7B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059B7BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059B7C0  7C 7F 1B 78 */	mr r31, r3
/* 8059B7C4  40 82 00 4C */	bne lbl_8059B810
/* 8059B7C8  4B AC 15 2D */	bl fqrand
/* 8059B7CC  3C 60 80 65 */	lis r3, lit_530@ha /* 0x8064A05C@ha */
/* 8059B7D0  3C 80 80 65 */	lis r4, lit_529@ha /* 0x8064A058@ha */
/* 8059B7D4  38 A3 A0 5C */	addi r5, r3, lit_530@l /* 0x8064A05C@l */
/* 8059B7D8  C0 44 A0 58 */	lfs f2, lit_529@l(r4)  /* 0x8064A058@l */
/* 8059B7DC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059B7E0  3C 60 80 65 */	lis r3, lit_528@ha /* 0x8064A054@ha */
/* 8059B7E4  80 1F 02 3C */	lwz r0, 0x23c(r31)
/* 8059B7E8  EC 20 00 72 */	fmuls f1, f0, f1
/* 8059B7EC  C0 03 A0 54 */	lfs f0, lit_528@l(r3)  /* 0x8064A054@l */
/* 8059B7F0  EC 22 08 2A */	fadds f1, f2, f1
/* 8059B7F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059B7F8  FC 00 00 1E */	fctiwz f0, f0
/* 8059B7FC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059B800  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059B804  7C 00 1A 14 */	add r0, r0, r3
/* 8059B808  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 8059B80C  48 00 00 1C */	b lbl_8059B828
lbl_8059B810:
/* 8059B810  80 9F 02 3C */	lwz r4, 0x23c(r31)
/* 8059B814  3C 60 80 65 */	lis r3, lit_531@ha /* 0x8064A060@ha */
/* 8059B818  C0 03 A0 60 */	lfs f0, lit_531@l(r3)  /* 0x8064A060@l */
/* 8059B81C  38 04 04 00 */	addi r0, r4, 0x400
/* 8059B820  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 8059B824  D0 1F 00 74 */	stfs f0, 0x74(r31)
lbl_8059B828:
/* 8059B828  80 1F 02 3C */	lwz r0, 0x23c(r31)
/* 8059B82C  7C 03 07 34 */	extsh r3, r0
/* 8059B830  4B E1 F2 C1 */	bl sin_s
/* 8059B834  3C 60 80 65 */	lis r3, lit_470@ha /* 0x8064A03C@ha */
/* 8059B838  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 8059B83C  C0 43 A0 3C */	lfs f2, lit_470@l(r3)  /* 0x8064A03C@l */
/* 8059B840  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8059B844  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059B848  EC 23 08 2A */	fadds f1, f3, f1
/* 8059B84C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059B850  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 8059B854  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059B858  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059B85C  7C 08 03 A6 */	mtlr r0
/* 8059B860  38 21 00 20 */	addi r1, r1, 0x20
/* 8059B864  4E 80 00 20 */	blr 

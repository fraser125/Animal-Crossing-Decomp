lbl_80604338:
/* 80604338  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060433C  7C 08 02 A6 */	mflr r0
/* 80604340  90 01 00 34 */	stw r0, 0x34(r1)
/* 80604344  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80604348  7C 7F 1B 78 */	mr r31, r3
/* 8060434C  4B A5 89 A9 */	bl fqrand
/* 80604350  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064BB2C@ha */
/* 80604354  C0 03 BB 2C */	lfs f0, lit_405@l(r3)  /* 0x8064BB2C@l */
/* 80604358  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060435C  FC 00 00 1E */	fctiwz f0, f0
/* 80604360  D8 01 00 08 */	stfd f0, 8(r1)
/* 80604364  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80604368  B0 1F 00 22 */	sth r0, 0x22(r31)
/* 8060436C  4B A5 89 89 */	bl fqrand
/* 80604370  3C 60 80 65 */	lis r3, lit_406@ha /* 0x8064BB30@ha */
/* 80604374  C0 03 BB 30 */	lfs f0, lit_406@l(r3)  /* 0x8064BB30@l */
/* 80604378  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060437C  FC 00 00 1E */	fctiwz f0, f0
/* 80604380  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80604384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80604388  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 8060438C  4B A5 89 69 */	bl fqrand
/* 80604390  3C 60 80 65 */	lis r3, lit_406@ha /* 0x8064BB30@ha */
/* 80604394  C0 03 BB 30 */	lfs f0, lit_406@l(r3)  /* 0x8064BB30@l */
/* 80604398  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060439C  FC 00 00 1E */	fctiwz f0, f0
/* 806043A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806043A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806043A8  B0 1F 00 26 */	sth r0, 0x26(r31)
/* 806043AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806043B0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806043B4  7C 08 03 A6 */	mtlr r0
/* 806043B8  38 21 00 30 */	addi r1, r1, 0x30
/* 806043BC  4E 80 00 20 */	blr 

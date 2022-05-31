lbl_8060D86C:
/* 8060D86C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060D870  7C 08 02 A6 */	mflr r0
/* 8060D874  3C A0 80 65 */	lis r5, data_8064C0F4@ha /* 0x8064C0F4@ha */
/* 8060D878  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C0F8@ha */
/* 8060D87C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060D880  38 00 00 6E */	li r0, 0x6e
/* 8060D884  C0 25 C0 F4 */	lfs f1, data_8064C0F4@l(r5)  /* 0x8064C0F4@l */
/* 8060D888  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8060D88C  7C 7F 1B 78 */	mr r31, r3
/* 8060D890  C0 04 C0 F8 */	lfs f0, lit_385@l(r4)  /* 0x8064C0F8@l */
/* 8060D894  B0 03 00 00 */	sth r0, 0(r3)
/* 8060D898  38 00 00 00 */	li r0, 0
/* 8060D89C  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8060D8A0  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8060D8A4  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 8060D8A8  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8060D8AC  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 8060D8B0  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 8060D8B4  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8060D8B8  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8060D8BC  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8060D8C0  4B A4 F4 35 */	bl fqrand
/* 8060D8C4  3C 60 80 65 */	lis r3, lit_386@ha /* 0x8064C0FC@ha */
/* 8060D8C8  C0 03 C0 FC */	lfs f0, lit_386@l(r3)  /* 0x8064C0FC@l */
/* 8060D8CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060D8D0  FC 00 00 1E */	fctiwz f0, f0
/* 8060D8D4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8060D8D8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8060D8DC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8060D8E0  B0 1F 00 52 */	sth r0, 0x52(r31)
/* 8060D8E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060D8E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8060D8EC  7C 08 03 A6 */	mtlr r0
/* 8060D8F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8060D8F4  4E 80 00 20 */	blr 

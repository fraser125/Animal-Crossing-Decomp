lbl_80453CA8:
/* 80453CA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80453CAC  7C 08 02 A6 */	mflr r0
/* 80453CB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80453CB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80453CB8  7C 7F 1B 78 */	mr r31, r3
/* 80453CBC  4B C0 90 39 */	bl fqrand
/* 80453CC0  3C 80 80 64 */	lis r4, data_80644244@ha /* 0x80644244@ha */
/* 80453CC4  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 80453CC8  C0 44 42 44 */	lfs f2, data_80644244@l(r4)  /* 0x80644244@l */
/* 80453CCC  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 80453CD0  EC 22 08 2A */	fadds f1, f2, f1
/* 80453CD4  A8 1F 06 3A */	lha r0, 0x63a(r31)
/* 80453CD8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80453CDC  FC 00 00 1E */	fctiwz f0, f0
/* 80453CE0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80453CE4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80453CE8  7C 63 07 34 */	extsh r3, r3
/* 80453CEC  7C 00 1A 14 */	add r0, r0, r3
/* 80453CF0  B0 1F 06 3A */	sth r0, 0x63a(r31)
/* 80453CF4  4B C0 90 01 */	bl fqrand
/* 80453CF8  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80453CFC  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80453D00  38 A3 42 5C */	addi r5, r3, lit_471@l /* 0x8064425C@l */
/* 80453D04  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 80453D08  C0 05 00 00 */	lfs f0, 0(r5)
/* 80453D0C  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 80453D10  A8 1F 06 3C */	lha r0, 0x63c(r31)
/* 80453D14  EC 20 00 72 */	fmuls f1, f0, f1
/* 80453D18  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 80453D1C  EC 22 08 2A */	fadds f1, f2, f1
/* 80453D20  EC 00 00 72 */	fmuls f0, f0, f1
/* 80453D24  FC 00 00 1E */	fctiwz f0, f0
/* 80453D28  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80453D2C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80453D30  7C 63 07 34 */	extsh r3, r3
/* 80453D34  7C 00 1A 14 */	add r0, r0, r3
/* 80453D38  B0 1F 06 3C */	sth r0, 0x63c(r31)
/* 80453D3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80453D40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80453D44  7C 08 03 A6 */	mtlr r0
/* 80453D48  38 21 00 20 */	addi r1, r1, 0x20
/* 80453D4C  4E 80 00 20 */	blr 

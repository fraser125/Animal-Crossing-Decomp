lbl_803BAE48:
/* 803BAE48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BAE4C  7C 08 02 A6 */	mflr r0
/* 803BAE50  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BAE54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BAE58  7C 9F 23 78 */	mr r31, r4
/* 803BAE5C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BAE60  7C 7E 1B 78 */	mr r30, r3
/* 803BAE64  4B CA 1E 91 */	bl fqrand
/* 803BAE68  7F E3 07 34 */	extsh r3, r31
/* 803BAE6C  3C 00 43 30 */	lis r0, 0x4330
/* 803BAE70  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803BAE74  3C 80 80 64 */	lis r4, lit_401@ha /* 0x8064255C@ha */
/* 803BAE78  90 61 00 0C */	stw r3, 0xc(r1)
/* 803BAE7C  C8 44 25 5C */	lfd f2, lit_401@l(r4)  /* 0x8064255C@l */
/* 803BAE80  90 01 00 08 */	stw r0, 8(r1)
/* 803BAE84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BAE88  C8 01 00 08 */	lfd f0, 8(r1)
/* 803BAE8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 803BAE90  EC 00 00 72 */	fmuls f0, f0, f1
/* 803BAE94  FC 00 00 1E */	fctiwz f0, f0
/* 803BAE98  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803BAE9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BAEA0  7C 1E 02 14 */	add r0, r30, r0
/* 803BAEA4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BAEA8  7C 03 07 34 */	extsh r3, r0
/* 803BAEAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BAEB0  7C 08 03 A6 */	mtlr r0
/* 803BAEB4  38 21 00 20 */	addi r1, r1, 0x20
/* 803BAEB8  4E 80 00 20 */	blr 

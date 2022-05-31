lbl_803EAC88:
/* 803EAC88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EAC8C  7C 08 02 A6 */	mflr r0
/* 803EAC90  2C 03 00 00 */	cmpwi r3, 0
/* 803EAC94  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EAC98  38 00 00 0D */	li r0, 0xd
/* 803EAC9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803EACA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803EACA4  40 82 00 08 */	bne lbl_803EACAC
/* 803EACA8  38 00 00 0C */	li r0, 0xc
lbl_803EACAC:
/* 803EACAC  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 803EACB0  7F C3 F3 78 */	mr r3, r30
/* 803EACB4  4B FF FE F1 */	bl mSP_CountBirth
/* 803EACB8  7C 7F 1B 78 */	mr r31, r3
/* 803EACBC  4B C7 20 39 */	bl fqrand
/* 803EACC0  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 803EACC4  3C 00 43 30 */	lis r0, 0x4330
/* 803EACC8  90 61 00 0C */	stw r3, 0xc(r1)
/* 803EACCC  3C 80 80 64 */	lis r4, lit_562@ha /* 0x8064318C@ha */
/* 803EACD0  C8 44 31 8C */	lfd f2, lit_562@l(r4)  /* 0x8064318C@l */
/* 803EACD4  7F C3 F3 78 */	mr r3, r30
/* 803EACD8  90 01 00 08 */	stw r0, 8(r1)
/* 803EACDC  C8 01 00 08 */	lfd f0, 8(r1)
/* 803EACE0  EC 00 10 28 */	fsubs f0, f0, f2
/* 803EACE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EACE8  FC 00 00 1E */	fctiwz f0, f0
/* 803EACEC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803EACF0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803EACF4  4B FF FF 11 */	bl mSP_FtrBirthIdx2ItemNo
/* 803EACF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EACFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803EAD00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803EAD04  7C 08 03 A6 */	mtlr r0
/* 803EAD08  38 21 00 20 */	addi r1, r1, 0x20
/* 803EAD0C  4E 80 00 20 */	blr 

lbl_805DBD74:
/* 805DBD74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805DBD78  7C 08 02 A6 */	mflr r0
/* 805DBD7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805DBD80  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805DBD84  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805DBD88  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805DBD8C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805DBD90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805DBD94  A8 03 00 20 */	lha r0, 0x20(r3)
/* 805DBD98  FF C0 08 90 */	fmr f30, f1
/* 805DBD9C  7C 9F 23 78 */	mr r31, r4
/* 805DBDA0  2C 00 FF FF */	cmpwi r0, -1
/* 805DBDA4  41 82 00 DC */	beq lbl_805DBE80
/* 805DBDA8  3C A0 80 65 */	lis r5, lit_2004@ha /* 0x8064B26C@ha */
/* 805DBDAC  98 01 00 10 */	stb r0, 0x10(r1)
/* 805DBDB0  38 E5 B2 6C */	addi r7, r5, lit_2004@l /* 0x8064B26C@l */
/* 805DBDB4  3C 80 80 65 */	lis r4, lit_2005@ha /* 0x8064B270@ha */
/* 805DBDB8  38 A4 B2 70 */	addi r5, r4, lit_2005@l /* 0x8064B270@l */
/* 805DBDBC  C0 27 00 00 */	lfs f1, 0(r7)
/* 805DBDC0  38 00 00 00 */	li r0, 0
/* 805DBDC4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805DBDC8  90 01 00 08 */	stw r0, 8(r1)
/* 805DBDCC  3C 80 80 65 */	lis r4, lit_1859@ha /* 0x8064B22C@ha */
/* 805DBDD0  EF E1 10 28 */	fsubs f31, f1, f2
/* 805DBDD4  3C C0 80 65 */	lis r6, lit_1979@ha /* 0x8064B258@ha */
/* 805DBDD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DBDDC  EC 00 F0 2A */	fadds f0, f0, f30
/* 805DBDE0  C0 26 B2 58 */	lfs f1, lit_1979@l(r6)  /* 0x8064B258@l */
/* 805DBDE4  38 C0 00 E1 */	li r6, 0xe1
/* 805DBDE8  C0 64 B2 2C */	lfs f3, lit_1859@l(r4)  /* 0x8064B22C@l */
/* 805DBDEC  FC 40 F8 90 */	fmr f2, f31
/* 805DBDF0  A8 A3 00 16 */	lha r5, 0x16(r3)
/* 805DBDF4  EC 21 00 2A */	fadds f1, f1, f0
/* 805DBDF8  80 03 00 28 */	lwz r0, 0x28(r3)
/* 805DBDFC  FC 80 18 90 */	fmr f4, f3
/* 805DBE00  38 85 FF FF */	addi r4, r5, -1
/* 805DBE04  7F E3 FB 78 */	mr r3, r31
/* 805DBE08  38 A0 00 01 */	li r5, 1
/* 805DBE0C  7C 80 22 14 */	add r4, r0, r4
/* 805DBE10  38 E0 00 C3 */	li r7, 0xc3
/* 805DBE14  39 00 00 C3 */	li r8, 0xc3
/* 805DBE18  39 20 00 FF */	li r9, 0xff
/* 805DBE1C  39 40 00 00 */	li r10, 0
/* 805DBE20  4B DD 42 89 */	bl mFont_SetLineStrings
/* 805DBE24  3C 60 80 65 */	lis r3, lit_2006@ha /* 0x8064B274@ha */
/* 805DBE28  3C A0 80 65 */	lis r5, lit_1979@ha /* 0x8064B258@ha */
/* 805DBE2C  38 83 B2 74 */	addi r4, r3, lit_2006@l /* 0x8064B274@l */
/* 805DBE30  38 00 00 00 */	li r0, 0
/* 805DBE34  C0 04 00 00 */	lfs f0, 0(r4)
/* 805DBE38  3C 60 80 65 */	lis r3, lit_1859@ha /* 0x8064B22C@ha */
/* 805DBE3C  C0 63 B2 2C */	lfs f3, lit_1859@l(r3)  /* 0x8064B22C@l */
/* 805DBE40  FC 40 F8 90 */	fmr f2, f31
/* 805DBE44  EC 00 F0 2A */	fadds f0, f0, f30
/* 805DBE48  C0 25 B2 58 */	lfs f1, lit_1979@l(r5)  /* 0x8064B258@l */
/* 805DBE4C  90 01 00 08 */	stw r0, 8(r1)
/* 805DBE50  FC 80 18 90 */	fmr f4, f3
/* 805DBE54  7F E3 FB 78 */	mr r3, r31
/* 805DBE58  EC 21 00 2A */	fadds f1, f1, f0
/* 805DBE5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DBE60  38 81 00 10 */	addi r4, r1, 0x10
/* 805DBE64  38 A0 00 01 */	li r5, 1
/* 805DBE68  38 C0 00 FF */	li r6, 0xff
/* 805DBE6C  38 E0 00 FF */	li r7, 0xff
/* 805DBE70  39 00 00 FF */	li r8, 0xff
/* 805DBE74  39 20 00 FF */	li r9, 0xff
/* 805DBE78  39 40 00 00 */	li r10, 0
/* 805DBE7C  4B DD 42 2D */	bl mFont_SetLineStrings
lbl_805DBE80:
/* 805DBE80  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805DBE84  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805DBE88  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805DBE8C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805DBE90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805DBE94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805DBE98  7C 08 03 A6 */	mtlr r0
/* 805DBE9C  38 21 00 40 */	addi r1, r1, 0x40
/* 805DBEA0  4E 80 00 20 */	blr 

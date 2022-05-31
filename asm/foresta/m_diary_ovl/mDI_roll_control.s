lbl_805CFC98:
/* 805CFC98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CFC9C  7C 08 02 A6 */	mflr r0
/* 805CFCA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CFCA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805CFCA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805CFCAC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CFCB0  83 E3 09 8C */	lwz r31, 0x98c(r3)
/* 805CFCB4  83 C3 09 E8 */	lwz r30, 0x9e8(r3)
/* 805CFCB8  28 1F 00 00 */	cmplwi r31, 0
/* 805CFCBC  41 82 01 CC */	beq lbl_805CFE88
/* 805CFCC0  A8 7F 00 24 */	lha r3, 0x24(r31)
/* 805CFCC4  88 1E 00 05 */	lbz r0, 5(r30)
/* 805CFCC8  38 A3 00 02 */	addi r5, r3, 2
/* 805CFCCC  7C 00 28 51 */	subf. r0, r0, r5
/* 805CFCD0  40 80 00 18 */	bge lbl_805CFCE8
/* 805CFCD4  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805CFCD8  98 BE 00 05 */	stb r5, 5(r30)
/* 805CFCDC  C0 03 B0 B0 */	lfs f0, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805CFCE0  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805CFCE4  48 00 00 1C */	b lbl_805CFD00
lbl_805CFCE8:
/* 805CFCE8  2C 00 00 00 */	cmpwi r0, 0
/* 805CFCEC  40 81 00 14 */	ble lbl_805CFD00
/* 805CFCF0  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805CFCF4  98 BE 00 05 */	stb r5, 5(r30)
/* 805CFCF8  C0 03 B0 B0 */	lfs f0, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805CFCFC  D0 04 00 24 */	stfs f0, 0x24(r4)
lbl_805CFD00:
/* 805CFD00  88 DE 00 05 */	lbz r6, 5(r30)
/* 805CFD04  3C 00 43 30 */	lis r0, 0x4330
/* 805CFD08  3C A0 80 65 */	lis r5, lit_626@ha /* 0x8064B0DC@ha */
/* 805CFD0C  90 01 00 08 */	stw r0, 8(r1)
/* 805CFD10  38 C6 FF FE */	addi r6, r6, -2
/* 805CFD14  C8 25 B0 DC */	lfd f1, lit_626@l(r5)  /* 0x8064B0DC@l */
/* 805CFD18  54 C0 20 36 */	slwi r0, r6, 4
/* 805CFD1C  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 805CFD20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805CFD24  3C 60 80 65 */	lis r3, lit_616@ha /* 0x8064B0B4@ha */
/* 805CFD28  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CFD2C  C8 01 00 08 */	lfd f0, 8(r1)
/* 805CFD30  EC 20 08 28 */	fsubs f1, f0, f1
/* 805CFD34  C0 03 B0 B4 */	lfs f0, lit_616@l(r3)  /* 0x8064B0B4@l */
/* 805CFD38  EC 41 10 28 */	fsubs f2, f1, f2
/* 805CFD3C  FC 40 12 10 */	fabs f2, f2
/* 805CFD40  FC 40 10 18 */	frsp f2, f2
/* 805CFD44  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805CFD48  40 81 01 30 */	ble lbl_805CFE78
/* 805CFD4C  88 1F 00 34 */	lbz r0, 0x34(r31)
/* 805CFD50  28 00 00 03 */	cmplwi r0, 3
/* 805CFD54  40 82 00 18 */	bne lbl_805CFD6C
/* 805CFD58  38 60 00 03 */	li r3, 3
/* 805CFD5C  38 00 00 02 */	li r0, 2
/* 805CFD60  B0 7E 00 1E */	sth r3, 0x1e(r30)
/* 805CFD64  B0 1E 00 20 */	sth r0, 0x20(r30)
/* 805CFD68  48 00 00 1C */	b lbl_805CFD84
lbl_805CFD6C:
/* 805CFD6C  28 00 00 02 */	cmplwi r0, 2
/* 805CFD70  40 82 00 14 */	bne lbl_805CFD84
/* 805CFD74  38 60 00 02 */	li r3, 2
/* 805CFD78  38 00 00 06 */	li r0, 6
/* 805CFD7C  B0 7E 00 1E */	sth r3, 0x1e(r30)
/* 805CFD80  B0 1E 00 20 */	sth r0, 0x20(r30)
lbl_805CFD84:
/* 805CFD84  A8 1E 00 1E */	lha r0, 0x1e(r30)
/* 805CFD88  2C 00 00 03 */	cmpwi r0, 3
/* 805CFD8C  40 82 00 14 */	bne lbl_805CFDA0
/* 805CFD90  3C 60 80 65 */	lis r3, lit_617@ha /* 0x8064B0B8@ha */
/* 805CFD94  C0 03 B0 B8 */	lfs f0, lit_617@l(r3)  /* 0x8064B0B8@l */
/* 805CFD98  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805CFD9C  48 00 00 90 */	b lbl_805CFE2C
lbl_805CFDA0:
/* 805CFDA0  2C 00 00 02 */	cmpwi r0, 2
/* 805CFDA4  40 82 00 14 */	bne lbl_805CFDB8
/* 805CFDA8  3C 60 80 65 */	lis r3, lit_618@ha /* 0x8064B0BC@ha */
/* 805CFDAC  C0 03 B0 BC */	lfs f0, lit_618@l(r3)  /* 0x8064B0BC@l */
/* 805CFDB0  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805CFDB4  48 00 00 78 */	b lbl_805CFE2C
lbl_805CFDB8:
/* 805CFDB8  3C 60 80 65 */	lis r3, lit_619@ha /* 0x8064B0C0@ha */
/* 805CFDBC  C0 03 B0 C0 */	lfs f0, lit_619@l(r3)  /* 0x8064B0C0@l */
/* 805CFDC0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805CFDC4  40 81 00 2C */	ble lbl_805CFDF0
/* 805CFDC8  3C 60 80 65 */	lis r3, lit_620@ha /* 0x8064B0C4@ha */
/* 805CFDCC  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 805CFDD0  C0 43 B0 C4 */	lfs f2, lit_620@l(r3)  /* 0x8064B0C4@l */
/* 805CFDD4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805CFDD8  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805CFDDC  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 805CFDE0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805CFDE4  40 81 00 48 */	ble lbl_805CFE2C
/* 805CFDE8  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 805CFDEC  48 00 00 40 */	b lbl_805CFE2C
lbl_805CFDF0:
/* 805CFDF0  3C 60 80 65 */	lis r3, lit_622@ha /* 0x8064B0CC@ha */
/* 805CFDF4  C0 03 B0 CC */	lfs f0, lit_622@l(r3)  /* 0x8064B0CC@l */
/* 805CFDF8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805CFDFC  40 80 00 30 */	bge lbl_805CFE2C
/* 805CFE00  3C A0 80 65 */	lis r5, data_8064B0AC@ha /* 0x8064B0AC@ha */
/* 805CFE04  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805CFE08  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 805CFE0C  C0 45 B0 AC */	lfs f2, data_8064B0AC@l(r5)  /* 0x8064B0AC@l */
/* 805CFE10  C0 03 B0 B0 */	lfs f0, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805CFE14  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805CFE18  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 805CFE1C  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805CFE20  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805CFE24  40 80 00 08 */	bge lbl_805CFE2C
/* 805CFE28  D0 04 00 24 */	stfs f0, 0x24(r4)
lbl_805CFE2C:
/* 805CFE2C  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805CFE30  38 64 00 1C */	addi r3, r4, 0x1c
/* 805CFE34  4B DE AE 35 */	bl chase_f
/* 805CFE38  88 1F 00 34 */	lbz r0, 0x34(r31)
/* 805CFE3C  28 00 00 03 */	cmplwi r0, 3
/* 805CFE40  41 82 00 48 */	beq lbl_805CFE88
/* 805CFE44  28 00 00 02 */	cmplwi r0, 2
/* 805CFE48  41 82 00 40 */	beq lbl_805CFE88
/* 805CFE4C  A8 7E 00 20 */	lha r3, 0x20(r30)
/* 805CFE50  2C 03 00 00 */	cmpwi r3, 0
/* 805CFE54  40 81 00 34 */	ble lbl_805CFE88
/* 805CFE58  38 03 FF FF */	addi r0, r3, -1
/* 805CFE5C  B0 1E 00 20 */	sth r0, 0x20(r30)
/* 805CFE60  A8 1E 00 20 */	lha r0, 0x20(r30)
/* 805CFE64  2C 00 00 00 */	cmpwi r0, 0
/* 805CFE68  41 81 00 20 */	bgt lbl_805CFE88
/* 805CFE6C  38 00 00 00 */	li r0, 0
/* 805CFE70  B0 1E 00 1E */	sth r0, 0x1e(r30)
/* 805CFE74  48 00 00 14 */	b lbl_805CFE88
lbl_805CFE78:
/* 805CFE78  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805CFE7C  D0 24 00 1C */	stfs f1, 0x1c(r4)
/* 805CFE80  C0 03 B0 D4 */	lfs f0, lit_624@l(r3)  /* 0x8064B0D4@l */
/* 805CFE84  D0 04 00 24 */	stfs f0, 0x24(r4)
lbl_805CFE88:
/* 805CFE88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CFE8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805CFE90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805CFE94  7C 08 03 A6 */	mtlr r0
/* 805CFE98  38 21 00 20 */	addi r1, r1, 0x20
/* 805CFE9C  4E 80 00 20 */	blr 

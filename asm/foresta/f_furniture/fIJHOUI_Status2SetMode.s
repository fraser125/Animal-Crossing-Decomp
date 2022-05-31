lbl_8062FDA4:
/* 8062FDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062FDA8  7C 08 02 A6 */	mflr r0
/* 8062FDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062FDB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062FDB4  7C 9F 23 78 */	mr r31, r4
/* 8062FDB8  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8062FDBC  28 00 00 0B */	cmplwi r0, 0xb
/* 8062FDC0  41 81 00 D8 */	bgt lbl_8062FE98
/* 8062FDC4  3C 60 80 6D */	lis r3, lit_899@ha /* 0x806D60C0@ha */
/* 8062FDC8  54 00 10 3A */	slwi r0, r0, 2
/* 8062FDCC  38 63 60 C0 */	addi r3, r3, lit_899@l /* 0x806D60C0@l */
/* 8062FDD0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8062FDD4  7C 09 03 A6 */	mtctr r0
/* 8062FDD8  4E 80 04 20 */	bctr 
lbl_8062FDDC:
/* 8062FDDC  38 00 00 00 */	li r0, 0
/* 8062FDE0  B0 1F 08 2C */	sth r0, 0x82c(r31)
/* 8062FDE4  48 00 00 B4 */	b lbl_8062FE98
lbl_8062FDE8:
/* 8062FDE8  A8 7F 08 2C */	lha r3, 0x82c(r31)
/* 8062FDEC  38 03 00 01 */	addi r0, r3, 1
/* 8062FDF0  B0 1F 08 2C */	sth r0, 0x82c(r31)
/* 8062FDF4  A8 1F 08 2C */	lha r0, 0x82c(r31)
/* 8062FDF8  2C 00 00 08 */	cmpwi r0, 8
/* 8062FDFC  40 82 00 9C */	bne lbl_8062FE98
/* 8062FE00  38 00 00 00 */	li r0, 0
/* 8062FE04  B0 1F 08 2E */	sth r0, 0x82e(r31)
/* 8062FE08  A8 7F 08 2E */	lha r3, 0x82e(r31)
/* 8062FE0C  4B D8 AC E5 */	bl sin_s
/* 8062FE10  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8062FE14  3C 60 80 65 */	lis r3, lit_897@ha /* 0x8064D2A8@ha */
/* 8062FE18  38 83 D2 A8 */	addi r4, r3, lit_897@l /* 0x8064D2A8@l */
/* 8062FE1C  EC 40 00 72 */	fmuls f2, f0, f1
/* 8062FE20  C0 24 00 00 */	lfs f1, 0(r4)
/* 8062FE24  3C 60 80 65 */	lis r3, lit_898@ha /* 0x8064D2AC@ha */
/* 8062FE28  C0 03 D2 AC */	lfs f0, lit_898@l(r3)  /* 0x8064D2AC@l */
/* 8062FE2C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8062FE30  D0 3F 08 34 */	stfs f1, 0x834(r31)
/* 8062FE34  C0 3F 08 34 */	lfs f1, 0x834(r31)
/* 8062FE38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062FE3C  40 80 00 5C */	bge lbl_8062FE98
/* 8062FE40  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 8062FE44  48 00 00 54 */	b lbl_8062FE98
lbl_8062FE48:
/* 8062FE48  A8 7F 08 2C */	lha r3, 0x82c(r31)
/* 8062FE4C  38 03 00 01 */	addi r0, r3, 1
/* 8062FE50  B0 1F 08 2C */	sth r0, 0x82c(r31)
/* 8062FE54  A8 1F 08 2C */	lha r0, 0x82c(r31)
/* 8062FE58  2C 00 00 08 */	cmpwi r0, 8
/* 8062FE5C  40 82 00 3C */	bne lbl_8062FE98
/* 8062FE60  38 00 00 00 */	li r0, 0
/* 8062FE64  B0 1F 08 2E */	sth r0, 0x82e(r31)
/* 8062FE68  A8 7F 08 2E */	lha r3, 0x82e(r31)
/* 8062FE6C  4B D8 AC 85 */	bl sin_s
/* 8062FE70  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8062FE74  3C 60 80 65 */	lis r3, lit_897@ha /* 0x8064D2A8@ha */
/* 8062FE78  EC 00 00 72 */	fmuls f0, f0, f1
/* 8062FE7C  C0 23 D2 A8 */	lfs f1, lit_897@l(r3)  /* 0x8064D2A8@l */
/* 8062FE80  EC 01 00 2A */	fadds f0, f1, f0
/* 8062FE84  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 8062FE88  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8062FE8C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8062FE90  40 81 00 08 */	ble lbl_8062FE98
/* 8062FE94  D0 3F 08 34 */	stfs f1, 0x834(r31)
lbl_8062FE98:
/* 8062FE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062FE9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062FEA0  7C 08 03 A6 */	mtlr r0
/* 8062FEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062FEA8  4E 80 00 20 */	blr 

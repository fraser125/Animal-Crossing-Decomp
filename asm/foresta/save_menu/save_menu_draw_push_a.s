lbl_8062CD7C:
/* 8062CD7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8062CD80  7C 08 02 A6 */	mflr r0
/* 8062CD84  3C 80 80 65 */	lis r4, lit_473@ha /* 0x8064D1A4@ha */
/* 8062CD88  90 01 00 34 */	stw r0, 0x34(r1)
/* 8062CD8C  38 E4 D1 A4 */	addi r7, r4, lit_473@l /* 0x8064D1A4@l */
/* 8062CD90  38 80 00 01 */	li r4, 1
/* 8062CD94  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8062CD98  7C 7F 1B 78 */	mr r31, r3
/* 8062CD9C  80 C7 00 00 */	lwz r6, 0(r7)
/* 8062CDA0  80 A7 00 04 */	lwz r5, 4(r7)
/* 8062CDA4  80 67 00 08 */	lwz r3, 8(r7)
/* 8062CDA8  88 07 00 0C */	lbz r0, 0xc(r7)
/* 8062CDAC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8062CDB0  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8062CDB4  90 61 00 20 */	stw r3, 0x20(r1)
/* 8062CDB8  98 01 00 24 */	stb r0, 0x24(r1)
/* 8062CDBC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062CDC0  4B D8 33 79 */	bl mFont_SetMatrix
/* 8062CDC4  38 A0 00 01 */	li r5, 1
/* 8062CDC8  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064D1BC@ha */
/* 8062CDCC  90 A1 00 08 */	stw r5, 8(r1)
/* 8062CDD0  38 00 00 00 */	li r0, 0
/* 8062CDD4  C0 63 D1 BC */	lfs f3, lit_477@l(r3)  /* 0x8064D1BC@l */
/* 8062CDD8  3C 80 80 65 */	lis r4, lit_475@ha /* 0x8064D1B4@ha */
/* 8062CDDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062CDE0  3C 60 80 65 */	lis r3, lit_476@ha /* 0x8064D1B8@ha */
/* 8062CDE4  FC 80 18 90 */	fmr f4, f3
/* 8062CDE8  C0 24 D1 B4 */	lfs f1, lit_475@l(r4)  /* 0x8064D1B4@l */
/* 8062CDEC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8062CDF0  38 81 00 18 */	addi r4, r1, 0x18
/* 8062CDF4  C0 43 D1 B8 */	lfs f2, lit_476@l(r3)  /* 0x8064D1B8@l */
/* 8062CDF8  7F E3 FB 78 */	mr r3, r31
/* 8062CDFC  38 A0 00 0D */	li r5, 0xd
/* 8062CE00  38 C0 00 C8 */	li r6, 0xc8
/* 8062CE04  38 E0 00 C8 */	li r7, 0xc8
/* 8062CE08  39 00 00 C8 */	li r8, 0xc8
/* 8062CE0C  39 20 00 FF */	li r9, 0xff
/* 8062CE10  39 40 00 00 */	li r10, 0
/* 8062CE14  4B D8 32 5D */	bl mFont_SetLineStrings_AndSpace
/* 8062CE18  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062CE1C  38 80 00 01 */	li r4, 1
/* 8062CE20  4B D8 34 19 */	bl mFont_UnSetMatrix
/* 8062CE24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8062CE28  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8062CE2C  7C 08 03 A6 */	mtlr r0
/* 8062CE30  38 21 00 30 */	addi r1, r1, 0x30
/* 8062CE34  4E 80 00 20 */	blr 

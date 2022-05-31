lbl_8059ED40:
/* 8059ED40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059ED44  7C 08 02 A6 */	mflr r0
/* 8059ED48  3C 80 80 65 */	lis r4, lit_576@ha /* 0x8064A1A8@ha */
/* 8059ED4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059ED50  38 00 04 B0 */	li r0, 0x4b0
/* 8059ED54  C0 04 A1 A8 */	lfs f0, lit_576@l(r4)  /* 0x8064A1A8@l */
/* 8059ED58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059ED5C  7C 7F 1B 78 */	mr r31, r3
/* 8059ED60  90 03 02 28 */	stw r0, 0x228(r3)
/* 8059ED64  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8059ED68  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 8059ED6C  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 8059ED70  4B AB DF 85 */	bl fqrand
/* 8059ED74  3C 80 80 65 */	lis r4, lit_445@ha /* 0x8064A188@ha */
/* 8059ED78  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064A1CC@ha */
/* 8059ED7C  C0 44 A1 88 */	lfs f2, lit_445@l(r4)  /* 0x8064A188@l */
/* 8059ED80  C0 03 A1 CC */	lfs f0, lit_624@l(r3)  /* 0x8064A1CC@l */
/* 8059ED84  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059ED88  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059ED8C  FC 00 00 1E */	fctiwz f0, f0
/* 8059ED90  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059ED94  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059ED98  38 03 01 33 */	addi r0, r3, 0x133
/* 8059ED9C  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 8059EDA0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8059EDA4  D0 1F 02 48 */	stfs f0, 0x248(r31)
/* 8059EDA8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8059EDAC  D0 1F 02 4C */	stfs f0, 0x24c(r31)
/* 8059EDB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059EDB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059EDB8  7C 08 03 A6 */	mtlr r0
/* 8059EDBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8059EDC0  4E 80 00 20 */	blr 

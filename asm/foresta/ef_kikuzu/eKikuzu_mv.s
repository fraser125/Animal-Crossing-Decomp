lbl_80613DC0:
/* 80613DC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80613DC4  7C 08 02 A6 */	mflr r0
/* 80613DC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80613DCC  38 81 00 08 */	addi r4, r1, 8
/* 80613DD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80613DD4  7C 7F 1B 78 */	mr r31, r3
/* 80613DD8  3C 60 80 65 */	lis r3, lit_393@ha /* 0x8064C57C@ha */
/* 80613DDC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80613DE0  C0 23 C5 7C */	lfs f1, lit_393@l(r3)  /* 0x8064C57C@l */
/* 80613DE4  38 60 00 00 */	li r3, 0
/* 80613DE8  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80613DEC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80613DF0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80613DF4  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 80613DF8  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80613DFC  90 A1 00 08 */	stw r5, 8(r1)
/* 80613E00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80613E04  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80613E08  90 01 00 10 */	stw r0, 0x10(r1)
/* 80613E0C  4B D7 B8 AD */	bl func_8038F6B8
/* 80613E10  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80613E14  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 80613E18  7C 65 1B 78 */	mr r5, r3
/* 80613E1C  38 9F 00 28 */	addi r4, r31, 0x28
/* 80613E20  4B DA 71 25 */	bl xyz_t_add
/* 80613E24  38 7F 00 10 */	addi r3, r31, 0x10
/* 80613E28  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80613E2C  7C 65 1B 78 */	mr r5, r3
/* 80613E30  4B DA 71 15 */	bl xyz_t_add
/* 80613E34  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 80613E38  A8 1F 00 4E */	lha r0, 0x4e(r31)
/* 80613E3C  7C 03 02 14 */	add r0, r3, r0
/* 80613E40  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80613E44  A8 7F 00 50 */	lha r3, 0x50(r31)
/* 80613E48  A8 1F 00 52 */	lha r0, 0x52(r31)
/* 80613E4C  7C 03 02 14 */	add r0, r3, r0
/* 80613E50  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 80613E54  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80613E58  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80613E5C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80613E60  40 80 00 7C */	bge lbl_80613EDC
/* 80613E64  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80613E68  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80613E6C  4C 41 13 82 */	cror 2, 1, 2
/* 80613E70  40 82 00 6C */	bne lbl_80613EDC
/* 80613E74  3C 60 80 65 */	lis r3, lit_393@ha /* 0x8064C57C@ha */
/* 80613E78  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80613E7C  C0 03 C5 7C */	lfs f0, lit_393@l(r3)  /* 0x8064C57C@l */
/* 80613E80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80613E84  40 80 00 58 */	bge lbl_80613EDC
/* 80613E88  D0 5F 00 14 */	stfs f2, 0x14(r31)
/* 80613E8C  3C 60 80 65 */	lis r3, lit_418@ha /* 0x8064C588@ha */
/* 80613E90  38 83 C5 88 */	addi r4, r3, lit_418@l /* 0x8064C588@l */
/* 80613E94  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80613E98  3C 60 80 65 */	lis r3, lit_419@ha /* 0x8064C58C@ha */
/* 80613E9C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80613EA0  C0 03 C5 8C */	lfs f0, lit_419@l(r3)  /* 0x8064C58C@l */
/* 80613EA4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80613EA8  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80613EAC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80613EB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80613EB4  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80613EB8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80613EBC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80613EC0  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80613EC4  A8 1F 00 4E */	lha r0, 0x4e(r31)
/* 80613EC8  7C 00 0E 70 */	srawi r0, r0, 1
/* 80613ECC  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 80613ED0  A8 1F 00 52 */	lha r0, 0x52(r31)
/* 80613ED4  7C 00 0E 70 */	srawi r0, r0, 1
/* 80613ED8  B0 1F 00 52 */	sth r0, 0x52(r31)
lbl_80613EDC:
/* 80613EDC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80613EE0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80613EE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80613EE8  40 80 00 64 */	bge lbl_80613F4C
/* 80613EEC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80613EF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80613EF4  4C 41 13 82 */	cror 2, 1, 2
/* 80613EF8  40 82 00 54 */	bne lbl_80613F4C
/* 80613EFC  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80613F00  3C 60 80 65 */	lis r3, lit_419@ha /* 0x8064C58C@ha */
/* 80613F04  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80613F08  C0 23 C5 8C */	lfs f1, lit_419@l(r3)  /* 0x8064C58C@l */
/* 80613F0C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80613F10  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80613F14  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80613F18  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80613F1C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80613F20  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80613F24  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80613F28  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80613F2C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80613F30  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80613F34  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80613F38  EC 00 00 72 */	fmuls f0, f0, f1
/* 80613F3C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80613F40  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80613F44  EC 00 00 72 */	fmuls f0, f0, f1
/* 80613F48  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_80613F4C:
/* 80613F4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80613F50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80613F54  7C 08 03 A6 */	mtlr r0
/* 80613F58  38 21 00 20 */	addi r1, r1, 0x20
/* 80613F5C  4E 80 00 20 */	blr 

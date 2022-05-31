lbl_80619D8C:
/* 80619D8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80619D90  7C 08 02 A6 */	mflr r0
/* 80619D94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80619D98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80619D9C  7C 7F 1B 78 */	mr r31, r3
/* 80619DA0  A8 63 00 4C */	lha r3, 0x4c(r3)
/* 80619DA4  38 03 01 A0 */	addi r0, r3, 0x1a0
/* 80619DA8  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80619DAC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80619DB0  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 80619DB4  FC 00 00 1E */	fctiwz f0, f0
/* 80619DB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80619DBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80619DC0  7C 03 02 14 */	add r0, r3, r0
/* 80619DC4  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 80619DC8  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 80619DCC  4B DA 0D 25 */	bl sin_s
/* 80619DD0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80619DD4  3C C0 80 65 */	lis r6, lit_393@ha /* 0x8064C988@ha */
/* 80619DD8  3C 60 80 65 */	lis r3, lit_392@ha /* 0x8064C984@ha */
/* 80619DDC  3C A0 80 65 */	lis r5, lit_394@ha /* 0x8064C98C@ha */
/* 80619DE0  EC 20 00 72 */	fmuls f1, f0, f1
/* 80619DE4  C0 03 C9 84 */	lfs f0, lit_392@l(r3)  /* 0x8064C984@l */
/* 80619DE8  38 E6 C9 88 */	addi r7, r6, lit_393@l /* 0x8064C988@l */
/* 80619DEC  3C 80 80 65 */	lis r4, lit_395@ha /* 0x8064C990@ha */
/* 80619DF0  38 C5 C9 8C */	addi r6, r5, lit_394@l /* 0x8064C98C@l */
/* 80619DF4  3C 60 80 65 */	lis r3, lit_396@ha /* 0x8064C994@ha */
/* 80619DF8  EC 40 08 28 */	fsubs f2, f0, f1
/* 80619DFC  38 A4 C9 90 */	addi r5, r4, lit_395@l /* 0x8064C990@l */
/* 80619E00  EC 00 08 2A */	fadds f0, f0, f1
/* 80619E04  38 83 C9 94 */	addi r4, r3, lit_396@l /* 0x8064C994@l */
/* 80619E08  C0 27 00 00 */	lfs f1, 0(r7)
/* 80619E0C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80619E10  D0 5F 00 20 */	stfs f2, 0x20(r31)
/* 80619E14  C0 46 00 00 */	lfs f2, 0(r6)
/* 80619E18  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80619E1C  C0 65 00 00 */	lfs f3, 0(r5)
/* 80619E20  C0 84 00 00 */	lfs f4, 0(r4)
/* 80619E24  4B DA 13 8D */	bl add_calc
/* 80619E28  3C C0 80 65 */	lis r6, lit_397@ha /* 0x8064C998@ha */
/* 80619E2C  3C A0 80 65 */	lis r5, lit_394@ha /* 0x8064C98C@ha */
/* 80619E30  3C 80 80 65 */	lis r4, lit_398@ha /* 0x8064C99C@ha */
/* 80619E34  3C 60 80 65 */	lis r3, lit_399@ha /* 0x8064C9A0@ha */
/* 80619E38  38 E6 C9 98 */	addi r7, r6, lit_397@l /* 0x8064C998@l */
/* 80619E3C  38 C5 C9 8C */	addi r6, r5, lit_394@l /* 0x8064C98C@l */
/* 80619E40  38 A4 C9 9C */	addi r5, r4, lit_398@l /* 0x8064C99C@l */
/* 80619E44  38 83 C9 A0 */	addi r4, r3, lit_399@l /* 0x8064C9A0@l */
/* 80619E48  C0 27 00 00 */	lfs f1, 0(r7)
/* 80619E4C  38 7F 00 28 */	addi r3, r31, 0x28
/* 80619E50  C0 46 00 00 */	lfs f2, 0(r6)
/* 80619E54  C0 65 00 00 */	lfs f3, 0(r5)
/* 80619E58  C0 84 00 00 */	lfs f4, 0(r4)
/* 80619E5C  4B DA 13 55 */	bl add_calc
/* 80619E60  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80619E64  7F E3 FB 78 */	mr r3, r31
/* 80619E68  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80619E6C  38 80 00 16 */	li r4, 0x16
/* 80619E70  3C C5 00 02 */	addis r6, r5, 2
/* 80619E74  38 A0 00 64 */	li r5, 0x64
/* 80619E78  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 80619E7C  81 86 00 10 */	lwz r12, 0x10(r6)
/* 80619E80  7D 89 03 A6 */	mtctr r12
/* 80619E84  4E 80 04 21 */	bctrl 
/* 80619E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80619E8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80619E90  7C 08 03 A6 */	mtlr r0
/* 80619E94  38 21 00 20 */	addi r1, r1, 0x20
/* 80619E98  4E 80 00 20 */	blr 

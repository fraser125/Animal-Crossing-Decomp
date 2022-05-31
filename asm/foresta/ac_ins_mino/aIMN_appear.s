lbl_8059E5B0:
/* 8059E5B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059E5B4  7C 08 02 A6 */	mflr r0
/* 8059E5B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059E5BC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8059E5C0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8059E5C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E5C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8059E5CC  80 03 02 30 */	lwz r0, 0x230(r3)
/* 8059E5D0  3C A0 80 6C */	lis r5, data_806C3538@ha /* 0x806C3538@ha */
/* 8059E5D4  7C 9E 23 78 */	mr r30, r4
/* 8059E5D8  7C 7F 1B 78 */	mr r31, r3
/* 8059E5DC  38 85 35 38 */	addi r4, r5, data_806C3538@l /* 0x806C3538@l */
/* 8059E5E0  54 00 10 3A */	slwi r0, r0, 2
/* 8059E5E4  7F E4 04 2E */	lfsx f31, r4, r0
/* 8059E5E8  4B FF FC 7D */	bl aIMN_check_cut_tree
/* 8059E5EC  2C 03 00 01 */	cmpwi r3, 1
/* 8059E5F0  40 82 00 18 */	bne lbl_8059E608
/* 8059E5F4  7F E3 FB 78 */	mr r3, r31
/* 8059E5F8  7F C5 F3 78 */	mr r5, r30
/* 8059E5FC  38 80 00 09 */	li r4, 9
/* 8059E600  48 00 09 ED */	bl aIMN_setupAction
/* 8059E604  48 00 00 98 */	b lbl_8059E69C
lbl_8059E608:
/* 8059E608  C0 1F 02 44 */	lfs f0, 0x244(r31)
/* 8059E60C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8059E610  40 80 00 6C */	bge lbl_8059E67C
/* 8059E614  3C 60 80 65 */	lis r3, lit_576@ha /* 0x8064A1A8@ha */
/* 8059E618  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 8059E61C  C0 03 A1 A8 */	lfs f0, lit_576@l(r3)  /* 0x8064A1A8@l */
/* 8059E620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059E624  40 80 00 70 */	bge lbl_8059E694
/* 8059E628  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8059E62C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059E630  40 80 00 64 */	bge lbl_8059E694
/* 8059E634  3C 60 80 65 */	lis r3, lit_577@ha /* 0x8064A1AC@ha */
/* 8059E638  C0 03 A1 AC */	lfs f0, lit_577@l(r3)  /* 0x8064A1AC@l */
/* 8059E63C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059E640  40 81 00 18 */	ble lbl_8059E658
/* 8059E644  7F E3 FB 78 */	mr r3, r31
/* 8059E648  7F C5 F3 78 */	mr r5, r30
/* 8059E64C  38 80 00 04 */	li r4, 4
/* 8059E650  48 00 09 9D */	bl aIMN_setupAction
/* 8059E654  48 00 00 40 */	b lbl_8059E694
lbl_8059E658:
/* 8059E658  3C 80 80 65 */	lis r4, lit_578@ha /* 0x8064A1B0@ha */
/* 8059E65C  FC 20 08 50 */	fneg f1, f1
/* 8059E660  C0 44 A1 B0 */	lfs f2, lit_578@l(r4)  /* 0x8064A1B0@l */
/* 8059E664  3C 60 80 65 */	lis r3, lit_579@ha /* 0x8064A1B4@ha */
/* 8059E668  C0 03 A1 B4 */	lfs f0, lit_579@l(r3)  /* 0x8064A1B4@l */
/* 8059E66C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059E670  D0 3F 01 EC */	stfs f1, 0x1ec(r31)
/* 8059E674  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 8059E678  48 00 00 1C */	b lbl_8059E694
lbl_8059E67C:
/* 8059E67C  3C 80 80 65 */	lis r4, lit_580@ha /* 0x8064A1B8@ha */
/* 8059E680  3C 60 80 65 */	lis r3, lit_581@ha /* 0x8064A1BC@ha */
/* 8059E684  C0 24 A1 B8 */	lfs f1, lit_580@l(r4)  /* 0x8064A1B8@l */
/* 8059E688  C0 03 A1 BC */	lfs f0, lit_581@l(r3)  /* 0x8064A1BC@l */
/* 8059E68C  D0 3F 01 EC */	stfs f1, 0x1ec(r31)
/* 8059E690  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
lbl_8059E694:
/* 8059E694  7F E3 FB 78 */	mr r3, r31
/* 8059E698  4B FF FB 71 */	bl aIMN_calc_twist_angl
lbl_8059E69C:
/* 8059E69C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8059E6A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059E6A4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8059E6A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059E6AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059E6B0  7C 08 03 A6 */	mtlr r0
/* 8059E6B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8059E6B8  4E 80 00 20 */	blr 

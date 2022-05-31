lbl_8037EAE4:
/* 8037EAE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8037EAE8  7C 08 02 A6 */	mflr r0
/* 8037EAEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8037EAF0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8037EAF4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8037EAF8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8037EAFC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8037EB00  39 61 00 40 */	addi r11, r1, 0x40
/* 8037EB04  4B D1 C3 D1 */	bl func_8009AED4
/* 8037EB08  7C 9E 23 78 */	mr r30, r4
/* 8037EB0C  7C 7D 1B 78 */	mr r29, r3
/* 8037EB10  7C BF 2B 78 */	mr r31, r5
/* 8037EB14  38 81 00 08 */	addi r4, r1, 8
/* 8037EB18  4B FF F7 89 */	bl Camera2_GetLongBorderScale
/* 8037EB1C  7F A3 EB 78 */	mr r3, r29
/* 8037EB20  38 81 00 28 */	addi r4, r1, 0x28
/* 8037EB24  38 A1 00 24 */	addi r5, r1, 0x24
/* 8037EB28  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8037EB2C  38 E1 00 20 */	addi r7, r1, 0x20
/* 8037EB30  4B FF F7 9D */	bl Camera2_GetBorder
/* 8037EB34  3C 80 80 64 */	lis r4, lit_508@ha /* 0x8064136C@ha */
/* 8037EB38  7F A3 EB 78 */	mr r3, r29
/* 8037EB3C  38 A4 13 6C */	addi r5, r4, lit_508@l /* 0x8064136C@l */
/* 8037EB40  38 81 00 18 */	addi r4, r1, 0x18
/* 8037EB44  C0 25 00 00 */	lfs f1, 0(r5)
/* 8037EB48  38 A1 00 14 */	addi r5, r1, 0x14
/* 8037EB4C  38 C1 00 0C */	addi r6, r1, 0xc
/* 8037EB50  38 E1 00 10 */	addi r7, r1, 0x10
/* 8037EB54  4B FF F5 CD */	bl Camera2_GetBorderScale
/* 8037EB58  80 7E 00 00 */	lwz r3, 0(r30)
/* 8037EB5C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8037EB60  90 7F 00 00 */	stw r3, 0(r31)
/* 8037EB64  90 1F 00 04 */	stw r0, 4(r31)
/* 8037EB68  80 1E 00 08 */	lwz r0, 8(r30)
/* 8037EB6C  90 1F 00 08 */	stw r0, 8(r31)
/* 8037EB70  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8037EB74  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8037EB78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037EB7C  40 80 00 6C */	bge lbl_8037EBE8
/* 8037EB80  7F A3 EB 78 */	mr r3, r29
/* 8037EB84  4B FF F5 55 */	bl Camera2_BorderSize
/* 8037EB88  C0 01 00 08 */	lfs f0, 8(r1)
/* 8037EB8C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8037EB90  EC 20 00 72 */	fmuls f1, f0, f1
/* 8037EB94  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8037EB98  EC 22 08 28 */	fsubs f1, f2, f1
/* 8037EB9C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8037EBA0  40 80 00 30 */	bge lbl_8037EBD0
/* 8037EBA4  7F A3 EB 78 */	mr r3, r29
/* 8037EBA8  4B FF F5 31 */	bl Camera2_BorderSize
/* 8037EBAC  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 8037EBB0  C0 41 00 08 */	lfs f2, 8(r1)
/* 8037EBB4  C0 63 13 6C */	lfs f3, lit_508@l(r3)  /* 0x8064136C@l */
/* 8037EBB8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8037EBBC  EC 43 10 2A */	fadds f2, f3, f2
/* 8037EBC0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8037EBC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8037EBC8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8037EBCC  48 00 00 8C */	b lbl_8037EC58
lbl_8037EBD0:
/* 8037EBD0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8037EBD4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8037EBD8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8037EBDC  40 80 00 7C */	bge lbl_8037EC58
/* 8037EBE0  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8037EBE4  48 00 00 74 */	b lbl_8037EC58
lbl_8037EBE8:
/* 8037EBE8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8037EBEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037EBF0  40 81 00 68 */	ble lbl_8037EC58
/* 8037EBF4  7F A3 EB 78 */	mr r3, r29
/* 8037EBF8  4B FF F4 E1 */	bl Camera2_BorderSize
/* 8037EBFC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8037EC00  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8037EC04  EC 20 00 72 */	fmuls f1, f0, f1
/* 8037EC08  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8037EC0C  EC 22 08 2A */	fadds f1, f2, f1
/* 8037EC10  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8037EC14  40 81 00 30 */	ble lbl_8037EC44
/* 8037EC18  7F A3 EB 78 */	mr r3, r29
/* 8037EC1C  4B FF F4 BD */	bl Camera2_BorderSize
/* 8037EC20  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 8037EC24  C0 41 00 08 */	lfs f2, 8(r1)
/* 8037EC28  C0 63 13 6C */	lfs f3, lit_508@l(r3)  /* 0x8064136C@l */
/* 8037EC2C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8037EC30  EC 43 10 2A */	fadds f2, f3, f2
/* 8037EC34  EC 22 00 72 */	fmuls f1, f2, f1
/* 8037EC38  EC 00 08 2A */	fadds f0, f0, f1
/* 8037EC3C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8037EC40  48 00 00 18 */	b lbl_8037EC58
lbl_8037EC44:
/* 8037EC44  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8037EC48  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8037EC4C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8037EC50  40 81 00 08 */	ble lbl_8037EC58
/* 8037EC54  D0 3F 00 00 */	stfs f1, 0(r31)
lbl_8037EC58:
/* 8037EC58  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8037EC5C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8037EC60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037EC64  40 80 00 94 */	bge lbl_8037ECF8
/* 8037EC68  7F A3 EB 78 */	mr r3, r29
/* 8037EC6C  4B FF F4 6D */	bl Camera2_BorderSize
/* 8037EC70  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80641390@ha */
/* 8037EC74  C0 61 00 08 */	lfs f3, 8(r1)
/* 8037EC78  C0 83 13 90 */	lfs f4, lit_587@l(r3)  /* 0x80641390@l */
/* 8037EC7C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8037EC80  EC 24 08 2A */	fadds f1, f4, f1
/* 8037EC84  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8037EC88  EC 23 00 72 */	fmuls f1, f3, f1
/* 8037EC8C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8037EC90  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8037EC94  40 80 00 4C */	bge lbl_8037ECE0
/* 8037EC98  4B FF EE 4D */	bl Camera2_GetUnderBorderAdjust
/* 8037EC9C  FF E0 08 90 */	fmr f31, f1
/* 8037ECA0  C3 C1 00 08 */	lfs f30, 8(r1)
/* 8037ECA4  7F A3 EB 78 */	mr r3, r29
/* 8037ECA8  4B FF F4 31 */	bl Camera2_BorderSize
/* 8037ECAC  3C 80 80 64 */	lis r4, lit_508@ha /* 0x8064136C@ha */
/* 8037ECB0  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80641390@ha */
/* 8037ECB4  C0 64 13 6C */	lfs f3, lit_508@l(r4)  /* 0x8064136C@l */
/* 8037ECB8  C0 03 13 90 */	lfs f0, lit_587@l(r3)  /* 0x80641390@l */
/* 8037ECBC  EC 63 F0 2A */	fadds f3, f3, f30
/* 8037ECC0  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8037ECC4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8037ECC8  EC 23 00 72 */	fmuls f1, f3, f1
/* 8037ECCC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8037ECD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8037ECD4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8037ECD8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8037ECDC  48 00 00 B4 */	b lbl_8037ED90
lbl_8037ECE0:
/* 8037ECE0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8037ECE4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8037ECE8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8037ECEC  40 80 00 A4 */	bge lbl_8037ED90
/* 8037ECF0  D0 3F 00 08 */	stfs f1, 8(r31)
/* 8037ECF4  48 00 00 9C */	b lbl_8037ED90
lbl_8037ECF8:
/* 8037ECF8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8037ECFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037ED00  40 81 00 90 */	ble lbl_8037ED90
/* 8037ED04  4B FF ED E1 */	bl Camera2_GetUnderBorderAdjust
/* 8037ED08  FF E0 08 90 */	fmr f31, f1
/* 8037ED0C  7F A3 EB 78 */	mr r3, r29
/* 8037ED10  4B FF F3 C9 */	bl Camera2_BorderSize
/* 8037ED14  EC 61 F8 2A */	fadds f3, f1, f31
/* 8037ED18  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8037ED1C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8037ED20  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8037ED24  EC 42 18 2A */	fadds f2, f2, f3
/* 8037ED28  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8037ED2C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8037ED30  40 81 00 4C */	ble lbl_8037ED7C
/* 8037ED34  4B FF ED B1 */	bl Camera2_GetUnderBorderAdjust
/* 8037ED38  C0 01 00 08 */	lfs f0, 8(r1)
/* 8037ED3C  7F A3 EB 78 */	mr r3, r29
/* 8037ED40  EF E0 00 72 */	fmuls f31, f0, f1
/* 8037ED44  4B FF F3 95 */	bl Camera2_BorderSize
/* 8037ED48  3C 80 80 64 */	lis r4, lit_508@ha /* 0x8064136C@ha */
/* 8037ED4C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8037ED50  C0 64 13 6C */	lfs f3, lit_508@l(r4)  /* 0x8064136C@l */
/* 8037ED54  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80641390@ha */
/* 8037ED58  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8037ED5C  EC 63 00 2A */	fadds f3, f3, f0
/* 8037ED60  C0 03 13 90 */	lfs f0, lit_587@l(r3)  /* 0x80641390@l */
/* 8037ED64  EC 23 00 72 */	fmuls f1, f3, f1
/* 8037ED68  EC 22 08 2A */	fadds f1, f2, f1
/* 8037ED6C  EC 00 08 2A */	fadds f0, f0, f1
/* 8037ED70  EC 00 F8 2A */	fadds f0, f0, f31
/* 8037ED74  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8037ED78  48 00 00 18 */	b lbl_8037ED90
lbl_8037ED7C:
/* 8037ED7C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8037ED80  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8037ED84  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8037ED88  40 81 00 08 */	ble lbl_8037ED90
/* 8037ED8C  D0 3F 00 08 */	stfs f1, 8(r31)
lbl_8037ED90:
/* 8037ED90  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8037ED94  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8037ED98  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8037ED9C  39 61 00 40 */	addi r11, r1, 0x40
/* 8037EDA0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8037EDA4  4B D1 C1 7D */	bl func_8009AF20
/* 8037EDA8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8037EDAC  7C 08 03 A6 */	mtlr r0
/* 8037EDB0  38 21 00 60 */	addi r1, r1, 0x60
/* 8037EDB4  4E 80 00 20 */	blr 

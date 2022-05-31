lbl_8037E58C:
/* 8037E58C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037E590  7C 08 02 A6 */	mflr r0
/* 8037E594  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037E598  39 61 00 30 */	addi r11, r1, 0x30
/* 8037E59C  4B D1 C9 39 */	bl func_8009AED4
/* 8037E5A0  3C E0 80 64 */	lis r7, lit_474@ha /* 0x80641354@ha */
/* 8037E5A4  7C DF 33 78 */	mr r31, r6
/* 8037E5A8  C0 07 13 54 */	lfs f0, lit_474@l(r7)  /* 0x80641354@l */
/* 8037E5AC  7C BE 2B 78 */	mr r30, r5
/* 8037E5B0  7C 9D 23 78 */	mr r29, r4
/* 8037E5B4  38 81 00 14 */	addi r4, r1, 0x14
/* 8037E5B8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8037E5BC  38 A1 00 10 */	addi r5, r1, 0x10
/* 8037E5C0  38 C1 00 08 */	addi r6, r1, 8
/* 8037E5C4  38 E1 00 0C */	addi r7, r1, 0xc
/* 8037E5C8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8037E5CC  4B FF FD 01 */	bl Camera2_GetBorder
/* 8037E5D0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8037E5D4  3C 60 80 64 */	lis r3, lit_658@ha /* 0x806413A8@ha */
/* 8037E5D8  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8037E5DC  38 83 13 A8 */	addi r4, r3, lit_658@l /* 0x806413A8@l */
/* 8037E5E0  C0 44 00 00 */	lfs f2, 0(r4)
/* 8037E5E4  3C 60 80 64 */	lis r3, data_8064134C@ha /* 0x8064134C@ha */
/* 8037E5E8  EC 00 18 2A */	fadds f0, f0, f3
/* 8037E5EC  C0 81 00 08 */	lfs f4, 8(r1)
/* 8037E5F0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8037E5F4  EC A2 00 32 */	fmuls f5, f2, f0
/* 8037E5F8  C0 03 13 4C */	lfs f0, data_8064134C@l(r3)  /* 0x8064134C@l */
/* 8037E5FC  EC 24 08 2A */	fadds f1, f4, f1
/* 8037E600  EC 65 18 28 */	fsubs f3, f5, f3
/* 8037E604  EC 42 00 72 */	fmuls f2, f2, f1
/* 8037E608  FC 20 1A 10 */	fabs f1, f3
/* 8037E60C  EC 82 20 28 */	fsubs f4, f2, f4
/* 8037E610  FC 20 08 18 */	frsp f1, f1
/* 8037E614  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037E618  41 80 00 18 */	blt lbl_8037E630
/* 8037E61C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8037E620  EC 00 28 28 */	fsubs f0, f0, f5
/* 8037E624  EC 00 18 24 */	fdivs f0, f0, f3
/* 8037E628  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8037E62C  48 00 00 10 */	b lbl_8037E63C
lbl_8037E630:
/* 8037E630  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 8037E634  C0 03 13 54 */	lfs f0, lit_474@l(r3)  /* 0x80641354@l */
/* 8037E638  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_8037E63C:
/* 8037E63C  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 8037E640  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8037E644  C0 03 13 6C */	lfs f0, lit_508@l(r3)  /* 0x8064136C@l */
/* 8037E648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037E64C  40 81 00 08 */	ble lbl_8037E654
/* 8037E650  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_8037E654:
/* 8037E654  3C 60 80 64 */	lis r3, lit_659@ha /* 0x806413AC@ha */
/* 8037E658  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8037E65C  C0 03 13 AC */	lfs f0, lit_659@l(r3)  /* 0x806413AC@l */
/* 8037E660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037E664  40 80 00 08 */	bge lbl_8037E66C
/* 8037E668  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_8037E66C:
/* 8037E66C  FC 20 22 10 */	fabs f1, f4
/* 8037E670  3C 60 80 64 */	lis r3, data_8064134C@ha /* 0x8064134C@ha */
/* 8037E674  C0 03 13 4C */	lfs f0, data_8064134C@l(r3)  /* 0x8064134C@l */
/* 8037E678  FC 20 08 18 */	frsp f1, f1
/* 8037E67C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037E680  41 80 00 18 */	blt lbl_8037E698
/* 8037E684  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8037E688  EC 00 10 28 */	fsubs f0, f0, f2
/* 8037E68C  EC 00 20 24 */	fdivs f0, f0, f4
/* 8037E690  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8037E694  48 00 00 10 */	b lbl_8037E6A4
lbl_8037E698:
/* 8037E698  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 8037E69C  C0 03 13 54 */	lfs f0, lit_474@l(r3)  /* 0x80641354@l */
/* 8037E6A0  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8037E6A4:
/* 8037E6A4  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 8037E6A8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8037E6AC  C0 03 13 6C */	lfs f0, lit_508@l(r3)  /* 0x8064136C@l */
/* 8037E6B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037E6B4  40 81 00 08 */	ble lbl_8037E6BC
/* 8037E6B8  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8037E6BC:
/* 8037E6BC  3C 60 80 64 */	lis r3, lit_659@ha /* 0x806413AC@ha */
/* 8037E6C0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8037E6C4  C0 03 13 AC */	lfs f0, lit_659@l(r3)  /* 0x806413AC@l */
/* 8037E6C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037E6CC  40 80 00 08 */	bge lbl_8037E6D4
/* 8037E6D0  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8037E6D4:
/* 8037E6D4  39 61 00 30 */	addi r11, r1, 0x30
/* 8037E6D8  4B D1 C8 49 */	bl func_8009AF20
/* 8037E6DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037E6E0  7C 08 03 A6 */	mtlr r0
/* 8037E6E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8037E6E8  4E 80 00 20 */	blr 

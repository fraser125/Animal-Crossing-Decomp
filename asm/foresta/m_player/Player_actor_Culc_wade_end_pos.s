lbl_804DD4E4:
/* 804DD4E4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804DD4E8  7C 08 02 A6 */	mflr r0
/* 804DD4EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 804DD4F0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804DD4F4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804DD4F8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804DD4FC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804DD500  80 C3 00 00 */	lwz r6, 0(r3)
/* 804DD504  7C 9F 23 78 */	mr r31, r4
/* 804DD508  80 03 00 04 */	lwz r0, 4(r3)
/* 804DD50C  7C BE 2B 78 */	mr r30, r5
/* 804DD510  FF E0 08 90 */	fmr f31, f1
/* 804DD514  38 81 00 08 */	addi r4, r1, 8
/* 804DD518  90 DF 00 00 */	stw r6, 0(r31)
/* 804DD51C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 804DD520  90 1F 00 04 */	stw r0, 4(r31)
/* 804DD524  80 03 00 08 */	lwz r0, 8(r3)
/* 804DD528  90 1F 00 08 */	stw r0, 8(r31)
/* 804DD52C  80 E3 00 00 */	lwz r7, 0(r3)
/* 804DD530  80 C3 00 04 */	lwz r6, 4(r3)
/* 804DD534  80 03 00 08 */	lwz r0, 8(r3)
/* 804DD538  38 61 00 0C */	addi r3, r1, 0xc
/* 804DD53C  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 804DD540  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804DD544  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DD548  4B EC 82 19 */	bl mFI_Wpos2BlockNum
/* 804DD54C  2C 03 00 00 */	cmpwi r3, 0
/* 804DD550  41 82 01 3C */	beq lbl_804DD68C
/* 804DD554  3C 60 80 64 */	lis r3, local_border_pos@ha /* 0x80647B98@ha */
/* 804DD558  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804DD55C  39 23 7B 98 */	addi r9, r3, local_border_pos@l /* 0x80647B98@l */
/* 804DD560  80 C1 00 08 */	lwz r6, 8(r1)
/* 804DD564  81 09 00 00 */	lwz r8, 0(r9)
/* 804DD568  38 61 00 28 */	addi r3, r1, 0x28
/* 804DD56C  80 E9 00 04 */	lwz r7, 4(r9)
/* 804DD570  38 81 00 10 */	addi r4, r1, 0x10
/* 804DD574  80 09 00 08 */	lwz r0, 8(r9)
/* 804DD578  91 01 00 10 */	stw r8, 0x10(r1)
/* 804DD57C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 804DD580  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DD584  4B EC 84 91 */	bl mFI_LposInBKtoWpos
/* 804DD588  2C 1E 00 03 */	cmpwi r30, 3
/* 804DD58C  41 82 00 50 */	beq lbl_804DD5DC
/* 804DD590  40 80 00 4C */	bge lbl_804DD5DC
/* 804DD594  2C 1E 00 01 */	cmpwi r30, 1
/* 804DD598  40 80 00 08 */	bge lbl_804DD5A0
/* 804DD59C  48 00 00 40 */	b lbl_804DD5DC
lbl_804DD5A0:
/* 804DD5A0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804DD5A4  3C 60 80 64 */	lis r3, lit_1074@ha /* 0x80646A10@ha */
/* 804DD5A8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804DD5AC  EC 60 F8 2A */	fadds f3, f0, f31
/* 804DD5B0  C0 23 6A 10 */	lfs f1, lit_1074@l(r3)  /* 0x80646A10@l */
/* 804DD5B4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804DD5B8  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 804DD5BC  EC 01 00 2A */	fadds f0, f1, f0
/* 804DD5C0  40 80 00 0C */	bge lbl_804DD5CC
/* 804DD5C4  D0 7F 00 08 */	stfs f3, 8(r31)
/* 804DD5C8  48 00 00 4C */	b lbl_804DD614
lbl_804DD5CC:
/* 804DD5CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804DD5D0  40 81 00 44 */	ble lbl_804DD614
/* 804DD5D4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804DD5D8  48 00 00 3C */	b lbl_804DD614
lbl_804DD5DC:
/* 804DD5DC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804DD5E0  3C 60 80 64 */	lis r3, lit_1074@ha /* 0x80646A10@ha */
/* 804DD5E4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804DD5E8  EC 60 F8 2A */	fadds f3, f0, f31
/* 804DD5EC  C0 23 6A 10 */	lfs f1, lit_1074@l(r3)  /* 0x80646A10@l */
/* 804DD5F0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804DD5F4  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 804DD5F8  EC 01 00 2A */	fadds f0, f1, f0
/* 804DD5FC  40 80 00 0C */	bge lbl_804DD608
/* 804DD600  D0 7F 00 00 */	stfs f3, 0(r31)
/* 804DD604  48 00 00 10 */	b lbl_804DD614
lbl_804DD608:
/* 804DD608  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804DD60C  40 81 00 08 */	ble lbl_804DD614
/* 804DD610  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_804DD614:
/* 804DD614  2C 1E 00 02 */	cmpwi r30, 2
/* 804DD618  41 82 00 3C */	beq lbl_804DD654
/* 804DD61C  40 80 00 10 */	bge lbl_804DD62C
/* 804DD620  2C 1E 00 01 */	cmpwi r30, 1
/* 804DD624  40 80 00 14 */	bge lbl_804DD638
/* 804DD628  48 00 00 4C */	b lbl_804DD674
lbl_804DD62C:
/* 804DD62C  2C 1E 00 04 */	cmpwi r30, 4
/* 804DD630  40 80 00 44 */	bge lbl_804DD674
/* 804DD634  48 00 00 30 */	b lbl_804DD664
lbl_804DD638:
/* 804DD638  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804DD63C  3C 60 80 64 */	lis r3, lit_1074@ha /* 0x80646A10@ha */
/* 804DD640  C0 23 6A 10 */	lfs f1, lit_1074@l(r3)  /* 0x80646A10@l */
/* 804DD644  EC 00 F8 2A */	fadds f0, f0, f31
/* 804DD648  EC 01 00 2A */	fadds f0, f1, f0
/* 804DD64C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 804DD650  48 00 00 3C */	b lbl_804DD68C
lbl_804DD654:
/* 804DD654  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804DD658  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804DD65C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 804DD660  48 00 00 2C */	b lbl_804DD68C
lbl_804DD664:
/* 804DD664  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804DD668  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804DD66C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804DD670  48 00 00 1C */	b lbl_804DD68C
lbl_804DD674:
/* 804DD674  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804DD678  3C 60 80 64 */	lis r3, lit_1074@ha /* 0x80646A10@ha */
/* 804DD67C  C0 23 6A 10 */	lfs f1, lit_1074@l(r3)  /* 0x80646A10@l */
/* 804DD680  EC 00 F8 2A */	fadds f0, f0, f31
/* 804DD684  EC 01 00 2A */	fadds f0, f1, f0
/* 804DD688  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_804DD68C:
/* 804DD68C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804DD690  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804DD694  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804DD698  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804DD69C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804DD6A0  7C 08 03 A6 */	mtlr r0
/* 804DD6A4  38 21 00 50 */	addi r1, r1, 0x50
/* 804DD6A8  4E 80 00 20 */	blr 

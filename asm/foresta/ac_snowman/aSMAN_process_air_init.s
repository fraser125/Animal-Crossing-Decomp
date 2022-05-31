lbl_804A63A4:
/* 804A63A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A63A8  7C 08 02 A6 */	mflr r0
/* 804A63AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A63B0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804A63B4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804A63B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A63BC  7C 7F 1B 78 */	mr r31, r3
/* 804A63C0  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A63C4  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804A63C8  38 81 00 08 */	addi r4, r1, 8
/* 804A63CC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A63D0  C0 23 5C 8C */	lfs f1, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A63D4  38 60 00 00 */	li r3, 0
/* 804A63D8  90 A1 00 08 */	stw r5, 8(r1)
/* 804A63DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A63E0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A63E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A63E8  4B EE 92 D1 */	bl func_8038F6B8
/* 804A63EC  3C 60 80 64 */	lis r3, lit_644@ha /* 0x80645CC4@ha */
/* 804A63F0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804A63F4  C0 63 5C C4 */	lfs f3, lit_644@l(r3)  /* 0x80645CC4@l */
/* 804A63F8  3C 80 80 64 */	lis r4, lit_469@ha /* 0x80645C90@ha */
/* 804A63FC  C0 5F 01 D0 */	lfs f2, 0x1d0(r31)
/* 804A6400  EC 00 08 28 */	fsubs f0, f0, f1
/* 804A6404  38 64 5C 90 */	addi r3, r4, lit_469@l /* 0x80645C90@l */
/* 804A6408  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80645C9C@ha */
/* 804A640C  EC 23 00 B2 */	fmuls f1, f3, f2
/* 804A6410  C0 43 00 00 */	lfs f2, 0(r3)
/* 804A6414  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 804A6418  C0 84 5C 9C */	lfs f4, lit_472@l(r4)  /* 0x80645C9C@l */
/* 804A641C  EC 02 08 2A */	fadds f0, f2, f1
/* 804A6420  EF E4 00 32 */	fmuls f31, f4, f0
/* 804A6424  40 81 00 10 */	ble lbl_804A6434
/* 804A6428  38 9F 00 28 */	addi r4, r31, 0x28
/* 804A642C  38 60 04 3D */	li r3, 0x43d
/* 804A6430  48 18 7B 79 */	bl sAdo_OngenTrgStart
lbl_804A6434:
/* 804A6434  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804A6438  3C 60 80 64 */	lis r3, lit_471@ha /* 0x80645C98@ha */
/* 804A643C  38 83 5C 98 */	addi r4, r3, lit_471@l /* 0x80645C98@l */
/* 804A6440  D0 1F 01 C0 */	stfs f0, 0x1c0(r31)
/* 804A6444  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80645C94@ha */
/* 804A6448  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A644C  C0 03 5C 94 */	lfs f0, lit_470@l(r3)  /* 0x80645C94@l */
/* 804A6450  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 804A6454  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 804A6458  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804A645C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804A6460  40 80 00 08 */	bge lbl_804A6468
/* 804A6464  D3 FF 00 74 */	stfs f31, 0x74(r31)
lbl_804A6468:
/* 804A6468  3C 80 80 64 */	lis r4, lit_1319@ha /* 0x80645D98@ha */
/* 804A646C  3C 60 80 4A */	lis r3, aSMAN_process_air@ha /* 0x804A649C@ha */
/* 804A6470  C0 04 5D 98 */	lfs f0, lit_1319@l(r4)  /* 0x80645D98@l */
/* 804A6474  38 03 64 9C */	addi r0, r3, aSMAN_process_air@l /* 0x804A649C@l */
/* 804A6478  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 804A647C  90 1F 01 90 */	stw r0, 0x190(r31)
/* 804A6480  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804A6484  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A6488  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804A648C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A6490  7C 08 03 A6 */	mtlr r0
/* 804A6494  38 21 00 30 */	addi r1, r1, 0x30
/* 804A6498  4E 80 00 20 */	blr 

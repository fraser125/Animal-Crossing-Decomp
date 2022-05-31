lbl_803BACDC:
/* 803BACDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BACE0  7C 08 02 A6 */	mflr r0
/* 803BACE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BACE8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803BACEC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 803BACF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BACF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BACF8  FF E0 08 90 */	fmr f31, f1
/* 803BACFC  7C 7E 1B 78 */	mr r30, r3
/* 803BAD00  7C 9F 23 78 */	mr r31, r4
/* 803BAD04  38 A1 00 08 */	addi r5, r1, 8
/* 803BAD08  7F E3 FB 78 */	mr r3, r31
/* 803BAD0C  7F C4 F3 78 */	mr r4, r30
/* 803BAD10  48 00 02 69 */	bl xyz_t_sub
/* 803BAD14  38 61 00 08 */	addi r3, r1, 8
/* 803BAD18  48 04 E1 05 */	bl Math3DVecLength
/* 803BAD1C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 803BAD20  40 81 00 4C */	ble lbl_803BAD6C
/* 803BAD24  EC 7F 08 24 */	fdivs f3, f31, f1
/* 803BAD28  C0 01 00 08 */	lfs f0, 8(r1)
/* 803BAD2C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 803BAD30  EC 03 00 32 */	fmuls f0, f3, f0
/* 803BAD34  EC 21 F8 28 */	fsubs f1, f1, f31
/* 803BAD38  EC 02 00 2A */	fadds f0, f2, f0
/* 803BAD3C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 803BAD40  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803BAD44  C0 5E 00 04 */	lfs f2, 4(r30)
/* 803BAD48  EC 03 00 32 */	fmuls f0, f3, f0
/* 803BAD4C  EC 02 00 2A */	fadds f0, f2, f0
/* 803BAD50  D0 1E 00 04 */	stfs f0, 4(r30)
/* 803BAD54  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 803BAD58  C0 5E 00 08 */	lfs f2, 8(r30)
/* 803BAD5C  EC 03 00 32 */	fmuls f0, f3, f0
/* 803BAD60  EC 02 00 2A */	fadds f0, f2, f0
/* 803BAD64  D0 1E 00 08 */	stfs f0, 8(r30)
/* 803BAD68  48 00 00 18 */	b lbl_803BAD80
lbl_803BAD6C:
/* 803BAD6C  7F C3 F3 78 */	mr r3, r30
/* 803BAD70  7F E4 FB 78 */	mr r4, r31
/* 803BAD74  48 00 01 49 */	bl xyz_t_move
/* 803BAD78  3C 60 80 64 */	lis r3, lit_450@ha /* 0x80642564@ha */
/* 803BAD7C  C0 23 25 64 */	lfs f1, lit_450@l(r3)  /* 0x80642564@l */
lbl_803BAD80:
/* 803BAD80  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 803BAD84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BAD88  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803BAD8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BAD90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BAD94  7C 08 03 A6 */	mtlr r0
/* 803BAD98  38 21 00 30 */	addi r1, r1, 0x30
/* 803BAD9C  4E 80 00 20 */	blr 

lbl_803DC284:
/* 803DC284  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803DC288  7C 08 02 A6 */	mflr r0
/* 803DC28C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803DC290  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803DC294  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803DC298  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803DC29C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 803DC2A0  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 803DC2A4  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 803DC2A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DC2AC  FF A0 08 90 */	fmr f29, f1
/* 803DC2B0  83 E3 1D D0 */	lwz r31, 0x1dd0(r3)
/* 803DC2B4  C3 E4 00 00 */	lfs f31, 0(r4)
/* 803DC2B8  C3 C4 00 08 */	lfs f30, 8(r4)
/* 803DC2BC  48 00 00 38 */	b lbl_803DC2F4
lbl_803DC2C0:
/* 803DC2C0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 803DC2C4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 803DC2C8  EC 21 F8 28 */	fsubs f1, f1, f31
/* 803DC2CC  EC 40 F0 28 */	fsubs f2, f0, f30
/* 803DC2D0  48 02 C9 C9 */	bl Math3DVecLengthSquare2D
/* 803DC2D4  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 803DC2D8  40 80 00 18 */	bge lbl_803DC2F0
/* 803DC2DC  88 1F 08 30 */	lbz r0, 0x830(r31)
/* 803DC2E0  28 00 00 00 */	cmplwi r0, 0
/* 803DC2E4  40 82 00 0C */	bne lbl_803DC2F0
/* 803DC2E8  7F E3 FB 78 */	mr r3, r31
/* 803DC2EC  48 00 00 14 */	b lbl_803DC300
lbl_803DC2F0:
/* 803DC2F0  83 FF 01 58 */	lwz r31, 0x158(r31)
lbl_803DC2F4:
/* 803DC2F4  28 1F 00 00 */	cmplwi r31, 0
/* 803DC2F8  40 82 FF C8 */	bne lbl_803DC2C0
/* 803DC2FC  38 60 00 00 */	li r3, 0
lbl_803DC300:
/* 803DC300  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803DC304  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803DC308  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803DC30C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803DC310  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 803DC314  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 803DC318  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803DC31C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DC320  7C 08 03 A6 */	mtlr r0
/* 803DC324  38 21 00 40 */	addi r1, r1, 0x40
/* 803DC328  4E 80 00 20 */	blr 

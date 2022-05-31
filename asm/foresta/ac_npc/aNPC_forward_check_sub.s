lbl_8052F620:
/* 8052F620  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8052F624  7C 08 02 A6 */	mflr r0
/* 8052F628  90 01 00 64 */	stw r0, 0x64(r1)
/* 8052F62C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8052F630  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8052F634  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8052F638  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8052F63C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8052F640  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8052F644  7C 7E 1B 78 */	mr r30, r3
/* 8052F648  3C 60 80 6A */	lis r3, chk_x_table@ha /* 0x806A20AC@ha */
/* 8052F64C  AB FE 00 36 */	lha r31, 0x36(r30)
/* 8052F650  54 80 10 3A */	slwi r0, r4, 2
/* 8052F654  38 63 20 AC */	addi r3, r3, chk_x_table@l /* 0x806A20AC@l */
/* 8052F658  7F C3 04 2E */	lfsx f30, r3, r0
/* 8052F65C  7F E3 FB 78 */	mr r3, r31
/* 8052F660  4B E8 B4 91 */	bl sin_s
/* 8052F664  FF E0 08 90 */	fmr f31, f1
/* 8052F668  7F E3 FB 78 */	mr r3, r31
/* 8052F66C  4B E8 B4 31 */	bl cos_s
/* 8052F670  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8052F674  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8052F678  EC 1E 07 F2 */	fmuls f0, f30, f31
/* 8052F67C  7F C3 F3 78 */	mr r3, r30
/* 8052F680  38 81 00 14 */	addi r4, r1, 0x14
/* 8052F684  38 A1 00 08 */	addi r5, r1, 8
/* 8052F688  EC 22 08 2A */	fadds f1, f2, f1
/* 8052F68C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8052F690  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8052F694  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 8052F698  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8052F69C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8052F6A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052F6A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8052F6A8  90 C1 00 08 */	stw r6, 8(r1)
/* 8052F6AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052F6B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8052F6B4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8052F6B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052F6BC  88 DE 09 17 */	lbz r6, 0x917(r30)
/* 8052F6C0  4B FF FB 65 */	bl aNPC_moveRangeCheck
/* 8052F6C4  2C 03 00 01 */	cmpwi r3, 1
/* 8052F6C8  40 82 00 18 */	bne lbl_8052F6E0
/* 8052F6CC  3C 80 80 65 */	lis r4, data_80649274@ha /* 0x80649274@ha */
/* 8052F6D0  38 61 00 20 */	addi r3, r1, 0x20
/* 8052F6D4  C0 24 92 74 */	lfs f1, data_80649274@l(r4)  /* 0x80649274@l */
/* 8052F6D8  4B E6 1C 8D */	bl mCoBG_Wpos2GroundCheckOnly
/* 8052F6DC  48 00 00 24 */	b lbl_8052F700
lbl_8052F6E0:
/* 8052F6E0  88 1E 09 59 */	lbz r0, 0x959(r30)
/* 8052F6E4  28 00 00 03 */	cmplwi r0, 3
/* 8052F6E8  40 82 00 10 */	bne lbl_8052F6F8
/* 8052F6EC  3C 60 80 65 */	lis r3, lit_1660@ha /* 0x806492B8@ha */
/* 8052F6F0  C0 23 92 B8 */	lfs f1, lit_1660@l(r3)  /* 0x806492B8@l */
/* 8052F6F4  48 00 00 0C */	b lbl_8052F700
lbl_8052F6F8:
/* 8052F6F8  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 8052F6FC  C0 23 92 74 */	lfs f1, data_80649274@l(r3)  /* 0x80649274@l */
lbl_8052F700:
/* 8052F700  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8052F704  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8052F708  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8052F70C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8052F710  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8052F714  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052F718  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8052F71C  7C 08 03 A6 */	mtlr r0
/* 8052F720  38 21 00 60 */	addi r1, r1, 0x60
/* 8052F724  4E 80 00 20 */	blr 

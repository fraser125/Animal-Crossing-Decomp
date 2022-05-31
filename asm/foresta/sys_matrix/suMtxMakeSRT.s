lbl_8040E3D8:
/* 8040E3D8  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8040E3DC  7C 08 02 A6 */	mflr r0
/* 8040E3E0  90 01 01 34 */	stw r0, 0x134(r1)
/* 8040E3E4  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 8040E3E8  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 8040E3EC  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 8040E3F0  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 8040E3F4  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 8040E3F8  F3 A1 01 08 */	psq_st f29, 264(r1), 0, 0 /* qr0 */
/* 8040E3FC  DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 8040E400  F3 81 00 F8 */	psq_st f28, 248(r1), 0, 0 /* qr0 */
/* 8040E404  DB 61 00 E0 */	stfd f27, 0xe0(r1)
/* 8040E408  F3 61 00 E8 */	psq_st f27, 232(r1), 0, 0 /* qr0 */
/* 8040E40C  DB 41 00 D0 */	stfd f26, 0xd0(r1)
/* 8040E410  F3 41 00 D8 */	psq_st f26, 216(r1), 0, 0 /* qr0 */
/* 8040E414  DB 21 00 C0 */	stfd f25, 0xc0(r1)
/* 8040E418  F3 21 00 C8 */	psq_st f25, 200(r1), 0, 0 /* qr0 */
/* 8040E41C  DB 01 00 B0 */	stfd f24, 0xb0(r1)
/* 8040E420  F3 01 00 B8 */	psq_st f24, 184(r1), 0, 0 /* qr0 */
/* 8040E424  DA E1 00 A0 */	stfd f23, 0xa0(r1)
/* 8040E428  F2 E1 00 A8 */	psq_st f23, 168(r1), 0, 0 /* qr0 */
/* 8040E42C  DA C1 00 90 */	stfd f22, 0x90(r1)
/* 8040E430  F2 C1 00 98 */	psq_st f22, 152(r1), 0, 0 /* qr0 */
/* 8040E434  DA A1 00 80 */	stfd f21, 0x80(r1)
/* 8040E438  F2 A1 00 88 */	psq_st f21, 136(r1), 0, 0 /* qr0 */
/* 8040E43C  39 61 00 80 */	addi r11, r1, 0x80
/* 8040E440  4B C8 CA 91 */	bl func_8009AED0
/* 8040E444  FE A0 08 90 */	fmr f21, f1
/* 8040E448  7C 9C 23 78 */	mr r28, r4
/* 8040E44C  FE C0 10 90 */	fmr f22, f2
/* 8040E450  7C 7F 1B 78 */	mr r31, r3
/* 8040E454  FE E0 18 90 */	fmr f23, f3
/* 8040E458  7C BD 2B 78 */	mr r29, r5
/* 8040E45C  FF 00 20 90 */	fmr f24, f4
/* 8040E460  7C DE 33 78 */	mr r30, r6
/* 8040E464  FF 20 28 90 */	fmr f25, f5
/* 8040E468  7F 83 E3 78 */	mr r3, r28
/* 8040E46C  FF 40 30 90 */	fmr f26, f6
/* 8040E470  4B FA C6 81 */	bl sin_s
/* 8040E474  FF 60 08 90 */	fmr f27, f1
/* 8040E478  7F A3 EB 78 */	mr r3, r29
/* 8040E47C  4B FA C6 75 */	bl sin_s
/* 8040E480  FF 80 08 90 */	fmr f28, f1
/* 8040E484  7F C3 F3 78 */	mr r3, r30
/* 8040E488  4B FA C6 69 */	bl sin_s
/* 8040E48C  FF A0 08 90 */	fmr f29, f1
/* 8040E490  7F 83 E3 78 */	mr r3, r28
/* 8040E494  4B FA C6 09 */	bl cos_s
/* 8040E498  FF C0 08 90 */	fmr f30, f1
/* 8040E49C  7F A3 EB 78 */	mr r3, r29
/* 8040E4A0  4B FA C5 FD */	bl cos_s
/* 8040E4A4  FF E0 08 90 */	fmr f31, f1
/* 8040E4A8  7F C3 F3 78 */	mr r3, r30
/* 8040E4AC  4B FA C5 F1 */	bl cos_s
/* 8040E4B0  EC 7F 00 72 */	fmuls f3, f31, f1
/* 8040E4B4  3C 60 80 64 */	lis r3, lit_492@ha /* 0x80643744@ha */
/* 8040E4B8  EC 5F 07 72 */	fmuls f2, f31, f29
/* 8040E4BC  C0 03 37 44 */	lfs f0, lit_492@l(r3)  /* 0x80643744@l */
/* 8040E4C0  ED 1B 07 32 */	fmuls f8, f27, f28
/* 8040E4C4  EC 75 00 F2 */	fmuls f3, f21, f3
/* 8040E4C8  EC 55 00 B2 */	fmuls f2, f21, f2
/* 8040E4CC  FC 80 E0 50 */	fneg f4, f28
/* 8040E4D0  EC A0 00 F2 */	fmuls f5, f0, f3
/* 8040E4D4  EC C0 00 B2 */	fmuls f6, f0, f2
/* 8040E4D8  EC 61 02 32 */	fmuls f3, f1, f8
/* 8040E4DC  FC E0 28 1E */	fctiwz f7, f5
/* 8040E4E0  EC 5E 07 72 */	fmuls f2, f30, f29
/* 8040E4E4  EC A4 05 72 */	fmuls f5, f4, f21
/* 8040E4E8  D8 E1 00 08 */	stfd f7, 8(r1)
/* 8040E4EC  FC C0 30 1E */	fctiwz f6, f6
/* 8040E4F0  EC 83 10 28 */	fsubs f4, f3, f2
/* 8040E4F4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8040E4F8  EC A0 01 72 */	fmuls f5, f0, f5
/* 8040E4FC  EC 7D 02 32 */	fmuls f3, f29, f8
/* 8040E500  D8 C1 00 10 */	stfd f6, 0x10(r1)
/* 8040E504  EC 5E 00 72 */	fmuls f2, f30, f1
/* 8040E508  EC 96 01 32 */	fmuls f4, f22, f4
/* 8040E50C  54 80 84 3E */	srwi r0, r4, 0x10
/* 8040E510  B0 1F 00 00 */	sth r0, 0(r31)
/* 8040E514  EC 43 10 2A */	fadds f2, f3, f2
/* 8040E518  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8040E51C  FC A0 28 1E */	fctiwz f5, f5
/* 8040E520  EC 80 01 32 */	fmuls f4, f0, f4
/* 8040E524  B0 9F 00 20 */	sth r4, 0x20(r31)
/* 8040E528  EC 76 00 B2 */	fmuls f3, f22, f2
/* 8040E52C  D8 A1 00 18 */	stfd f5, 0x18(r1)
/* 8040E530  54 60 84 3E */	srwi r0, r3, 0x10
/* 8040E534  FC C0 20 1E */	fctiwz f6, f4
/* 8040E538  EC 5B 07 F2 */	fmuls f2, f27, f31
/* 8040E53C  B0 1F 00 02 */	sth r0, 2(r31)
/* 8040E540  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8040E544  EC A0 00 F2 */	fmuls f5, f0, f3
/* 8040E548  EC FE 07 32 */	fmuls f7, f30, f28
/* 8040E54C  EC 96 00 B2 */	fmuls f4, f22, f2
/* 8040E550  FC A0 28 1E */	fctiwz f5, f5
/* 8040E554  B0 7F 00 22 */	sth r3, 0x22(r31)
/* 8040E558  54 A0 84 3E */	srwi r0, r5, 0x10
/* 8040E55C  EC 61 01 F2 */	fmuls f3, f1, f7
/* 8040E560  EC 5B 07 72 */	fmuls f2, f27, f29
/* 8040E564  D8 C1 00 20 */	stfd f6, 0x20(r1)
/* 8040E568  EC 43 10 2A */	fadds f2, f3, f2
/* 8040E56C  B0 1F 00 04 */	sth r0, 4(r31)
/* 8040E570  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8040E574  EC 60 01 32 */	fmuls f3, f0, f4
/* 8040E578  D8 A1 00 28 */	stfd f5, 0x28(r1)
/* 8040E57C  EC 57 00 B2 */	fmuls f2, f23, f2
/* 8040E580  FC 60 18 1E */	fctiwz f3, f3
/* 8040E584  B0 BF 00 24 */	sth r5, 0x24(r31)
/* 8040E588  54 60 84 3E */	srwi r0, r3, 0x10
/* 8040E58C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8040E590  B0 1F 00 08 */	sth r0, 8(r31)
/* 8040E594  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8040E598  B0 7F 00 28 */	sth r3, 0x28(r31)
/* 8040E59C  54 80 84 3E */	srwi r0, r4, 0x10
/* 8040E5A0  D8 61 00 30 */	stfd f3, 0x30(r1)
/* 8040E5A4  FC 40 10 1E */	fctiwz f2, f2
/* 8040E5A8  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 8040E5AC  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8040E5B0  B0 9F 00 2A */	sth r4, 0x2a(r31)
/* 8040E5B4  54 60 84 3E */	srwi r0, r3, 0x10
/* 8040E5B8  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 8040E5BC  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 8040E5C0  B0 7F 00 2C */	sth r3, 0x2c(r31)
/* 8040E5C4  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8040E5C8  EC 5B 00 72 */	fmuls f2, f27, f1
/* 8040E5CC  54 80 84 3E */	srwi r0, r4, 0x10
/* 8040E5D0  EC 7D 01 F2 */	fmuls f3, f29, f7
/* 8040E5D4  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 8040E5D8  EC 3E 07 F2 */	fmuls f1, f30, f31
/* 8040E5DC  38 60 00 00 */	li r3, 0
/* 8040E5E0  EC 63 10 28 */	fsubs f3, f3, f2
/* 8040E5E4  B0 9F 00 30 */	sth r4, 0x30(r31)
/* 8040E5E8  EC 57 00 72 */	fmuls f2, f23, f1
/* 8040E5EC  38 00 00 01 */	li r0, 1
/* 8040E5F0  EC 20 06 32 */	fmuls f1, f0, f24
/* 8040E5F4  EC 97 00 F2 */	fmuls f4, f23, f3
/* 8040E5F8  EC 60 00 B2 */	fmuls f3, f0, f2
/* 8040E5FC  FC 40 08 1E */	fctiwz f2, f1
/* 8040E600  EC 80 01 32 */	fmuls f4, f0, f4
/* 8040E604  EC 20 06 72 */	fmuls f1, f0, f25
/* 8040E608  D8 41 00 50 */	stfd f2, 0x50(r1)
/* 8040E60C  FC 60 18 1E */	fctiwz f3, f3
/* 8040E610  FC 40 20 1E */	fctiwz f2, f4
/* 8040E614  FC 20 08 1E */	fctiwz f1, f1
/* 8040E618  81 01 00 54 */	lwz r8, 0x54(r1)
/* 8040E61C  D8 61 00 48 */	stfd f3, 0x48(r1)
/* 8040E620  EC 00 06 B2 */	fmuls f0, f0, f26
/* 8040E624  55 05 84 3E */	srwi r5, r8, 0x10
/* 8040E628  D8 41 00 40 */	stfd f2, 0x40(r1)
/* 8040E62C  81 21 00 4C */	lwz r9, 0x4c(r1)
/* 8040E630  FC 00 00 1E */	fctiwz f0, f0
/* 8040E634  81 41 00 44 */	lwz r10, 0x44(r1)
/* 8040E638  D8 21 00 58 */	stfd f1, 0x58(r1)
/* 8040E63C  55 26 84 3E */	srwi r6, r9, 0x10
/* 8040E640  55 44 84 3E */	srwi r4, r10, 0x10
/* 8040E644  B0 9F 00 12 */	sth r4, 0x12(r31)
/* 8040E648  80 E1 00 5C */	lwz r7, 0x5c(r1)
/* 8040E64C  B1 5F 00 32 */	sth r10, 0x32(r31)
/* 8040E650  54 E4 84 3E */	srwi r4, r7, 0x10
/* 8040E654  B0 DF 00 14 */	sth r6, 0x14(r31)
/* 8040E658  B1 3F 00 34 */	sth r9, 0x34(r31)
/* 8040E65C  B0 BF 00 18 */	sth r5, 0x18(r31)
/* 8040E660  B1 1F 00 38 */	sth r8, 0x38(r31)
/* 8040E664  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8040E668  B0 9F 00 1A */	sth r4, 0x1a(r31)
/* 8040E66C  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 8040E670  B0 FF 00 3A */	sth r7, 0x3a(r31)
/* 8040E674  54 A4 84 3E */	srwi r4, r5, 0x10
/* 8040E678  B0 9F 00 1C */	sth r4, 0x1c(r31)
/* 8040E67C  B0 BF 00 3C */	sth r5, 0x3c(r31)
/* 8040E680  B0 7F 00 16 */	sth r3, 0x16(r31)
/* 8040E684  B0 7F 00 0E */	sth r3, 0xe(r31)
/* 8040E688  B0 7F 00 06 */	sth r3, 6(r31)
/* 8040E68C  B0 7F 00 36 */	sth r3, 0x36(r31)
/* 8040E690  B0 7F 00 2E */	sth r3, 0x2e(r31)
/* 8040E694  B0 7F 00 26 */	sth r3, 0x26(r31)
/* 8040E698  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 8040E69C  B0 7F 00 3E */	sth r3, 0x3e(r31)
/* 8040E6A0  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 8040E6A4  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 8040E6A8  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 8040E6AC  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 8040E6B0  E3 A1 01 08 */	psq_l f29, 264(r1), 0, 0 /* qr0 */
/* 8040E6B4  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 8040E6B8  E3 81 00 F8 */	psq_l f28, 248(r1), 0, 0 /* qr0 */
/* 8040E6BC  CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 8040E6C0  E3 61 00 E8 */	psq_l f27, 232(r1), 0, 0 /* qr0 */
/* 8040E6C4  CB 61 00 E0 */	lfd f27, 0xe0(r1)
/* 8040E6C8  E3 41 00 D8 */	psq_l f26, 216(r1), 0, 0 /* qr0 */
/* 8040E6CC  CB 41 00 D0 */	lfd f26, 0xd0(r1)
/* 8040E6D0  E3 21 00 C8 */	psq_l f25, 200(r1), 0, 0 /* qr0 */
/* 8040E6D4  CB 21 00 C0 */	lfd f25, 0xc0(r1)
/* 8040E6D8  E3 01 00 B8 */	psq_l f24, 184(r1), 0, 0 /* qr0 */
/* 8040E6DC  CB 01 00 B0 */	lfd f24, 0xb0(r1)
/* 8040E6E0  E2 E1 00 A8 */	psq_l f23, 168(r1), 0, 0 /* qr0 */
/* 8040E6E4  CA E1 00 A0 */	lfd f23, 0xa0(r1)
/* 8040E6E8  E2 C1 00 98 */	psq_l f22, 152(r1), 0, 0 /* qr0 */
/* 8040E6EC  CA C1 00 90 */	lfd f22, 0x90(r1)
/* 8040E6F0  E2 A1 00 88 */	psq_l f21, 136(r1), 0, 0 /* qr0 */
/* 8040E6F4  39 61 00 80 */	addi r11, r1, 0x80
/* 8040E6F8  CA A1 00 80 */	lfd f21, 0x80(r1)
/* 8040E6FC  4B C8 C8 21 */	bl func_8009AF1C
/* 8040E700  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8040E704  7C 08 03 A6 */	mtlr r0
/* 8040E708  38 21 01 30 */	addi r1, r1, 0x130
/* 8040E70C  4E 80 00 20 */	blr 

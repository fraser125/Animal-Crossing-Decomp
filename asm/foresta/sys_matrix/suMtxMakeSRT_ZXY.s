lbl_8040E710:
/* 8040E710  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8040E714  7C 08 02 A6 */	mflr r0
/* 8040E718  90 01 01 34 */	stw r0, 0x134(r1)
/* 8040E71C  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 8040E720  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 8040E724  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 8040E728  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 8040E72C  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 8040E730  F3 A1 01 08 */	psq_st f29, 264(r1), 0, 0 /* qr0 */
/* 8040E734  DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 8040E738  F3 81 00 F8 */	psq_st f28, 248(r1), 0, 0 /* qr0 */
/* 8040E73C  DB 61 00 E0 */	stfd f27, 0xe0(r1)
/* 8040E740  F3 61 00 E8 */	psq_st f27, 232(r1), 0, 0 /* qr0 */
/* 8040E744  DB 41 00 D0 */	stfd f26, 0xd0(r1)
/* 8040E748  F3 41 00 D8 */	psq_st f26, 216(r1), 0, 0 /* qr0 */
/* 8040E74C  DB 21 00 C0 */	stfd f25, 0xc0(r1)
/* 8040E750  F3 21 00 C8 */	psq_st f25, 200(r1), 0, 0 /* qr0 */
/* 8040E754  DB 01 00 B0 */	stfd f24, 0xb0(r1)
/* 8040E758  F3 01 00 B8 */	psq_st f24, 184(r1), 0, 0 /* qr0 */
/* 8040E75C  DA E1 00 A0 */	stfd f23, 0xa0(r1)
/* 8040E760  F2 E1 00 A8 */	psq_st f23, 168(r1), 0, 0 /* qr0 */
/* 8040E764  DA C1 00 90 */	stfd f22, 0x90(r1)
/* 8040E768  F2 C1 00 98 */	psq_st f22, 152(r1), 0, 0 /* qr0 */
/* 8040E76C  DA A1 00 80 */	stfd f21, 0x80(r1)
/* 8040E770  F2 A1 00 88 */	psq_st f21, 136(r1), 0, 0 /* qr0 */
/* 8040E774  39 61 00 80 */	addi r11, r1, 0x80
/* 8040E778  4B C8 C7 59 */	bl func_8009AED0
/* 8040E77C  FE A0 08 90 */	fmr f21, f1
/* 8040E780  7C 9C 23 78 */	mr r28, r4
/* 8040E784  FE C0 10 90 */	fmr f22, f2
/* 8040E788  7C 7F 1B 78 */	mr r31, r3
/* 8040E78C  FE E0 18 90 */	fmr f23, f3
/* 8040E790  7C BD 2B 78 */	mr r29, r5
/* 8040E794  FF 00 20 90 */	fmr f24, f4
/* 8040E798  7C DE 33 78 */	mr r30, r6
/* 8040E79C  FF 20 28 90 */	fmr f25, f5
/* 8040E7A0  7F 83 E3 78 */	mr r3, r28
/* 8040E7A4  FF 40 30 90 */	fmr f26, f6
/* 8040E7A8  4B FA C3 49 */	bl sin_s
/* 8040E7AC  FF 60 08 90 */	fmr f27, f1
/* 8040E7B0  7F A3 EB 78 */	mr r3, r29
/* 8040E7B4  4B FA C3 3D */	bl sin_s
/* 8040E7B8  FF 80 08 90 */	fmr f28, f1
/* 8040E7BC  7F C3 F3 78 */	mr r3, r30
/* 8040E7C0  4B FA C3 31 */	bl sin_s
/* 8040E7C4  FF A0 08 90 */	fmr f29, f1
/* 8040E7C8  7F 83 E3 78 */	mr r3, r28
/* 8040E7CC  4B FA C2 D1 */	bl cos_s
/* 8040E7D0  FF C0 08 90 */	fmr f30, f1
/* 8040E7D4  7F A3 EB 78 */	mr r3, r29
/* 8040E7D8  4B FA C2 C5 */	bl cos_s
/* 8040E7DC  FF E0 08 90 */	fmr f31, f1
/* 8040E7E0  7F C3 F3 78 */	mr r3, r30
/* 8040E7E4  4B FA C2 B9 */	bl cos_s
/* 8040E7E8  ED 5B 07 32 */	fmuls f10, f27, f28
/* 8040E7EC  3C 60 80 64 */	lis r3, lit_492@ha /* 0x80643744@ha */
/* 8040E7F0  EC 7E 07 72 */	fmuls f3, f30, f29
/* 8040E7F4  C0 03 37 44 */	lfs f0, lit_492@l(r3)  /* 0x80643744@l */
/* 8040E7F8  EC FF 00 72 */	fmuls f7, f31, f1
/* 8040E7FC  EC DD 02 B2 */	fmuls f6, f29, f10
/* 8040E800  ED 15 00 F2 */	fmuls f8, f21, f3
/* 8040E804  EC 7E 00 72 */	fmuls f3, f30, f1
/* 8040E808  EC C7 30 2A */	fadds f6, f7, f6
/* 8040E80C  EC BC 00 72 */	fmuls f5, f28, f1
/* 8040E810  EC 5B 07 F2 */	fmuls f2, f27, f31
/* 8040E814  ED 35 01 B2 */	fmuls f9, f21, f6
/* 8040E818  EC 9F 07 72 */	fmuls f4, f31, f29
/* 8040E81C  FC E0 28 50 */	fneg f7, f5
/* 8040E820  EC DD 00 B2 */	fmuls f6, f29, f2
/* 8040E824  FC A0 20 50 */	fneg f5, f4
/* 8040E828  EC 81 02 B2 */	fmuls f4, f1, f10
/* 8040E82C  EC C7 30 2A */	fadds f6, f7, f6
/* 8040E830  ED 20 02 72 */	fmuls f9, f0, f9
/* 8040E834  EC 85 20 2A */	fadds f4, f5, f4
/* 8040E838  EC E0 02 32 */	fmuls f7, f0, f8
/* 8040E83C  FD 20 48 1E */	fctiwz f9, f9
/* 8040E840  EC D5 01 B2 */	fmuls f6, f21, f6
/* 8040E844  EC 96 01 32 */	fmuls f4, f22, f4
/* 8040E848  D9 21 00 08 */	stfd f9, 8(r1)
/* 8040E84C  FC E0 38 1E */	fctiwz f7, f7
/* 8040E850  EC A0 01 B2 */	fmuls f5, f0, f6
/* 8040E854  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8040E858  EC 80 01 32 */	fmuls f4, f0, f4
/* 8040E85C  D8 E1 00 10 */	stfd f7, 0x10(r1)
/* 8040E860  EC 76 00 F2 */	fmuls f3, f22, f3
/* 8040E864  54 80 84 3E */	srwi r0, r4, 0x10
/* 8040E868  FC C0 20 1E */	fctiwz f6, f4
/* 8040E86C  B0 1F 00 00 */	sth r0, 0(r31)
/* 8040E870  FC E0 28 1E */	fctiwz f7, f5
/* 8040E874  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8040E878  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8040E87C  B0 9F 00 20 */	sth r4, 0x20(r31)
/* 8040E880  54 60 84 3E */	srwi r0, r3, 0x10
/* 8040E884  D8 E1 00 18 */	stfd f7, 0x18(r1)
/* 8040E888  FC A0 18 1E */	fctiwz f5, f3
/* 8040E88C  B0 1F 00 02 */	sth r0, 2(r31)
/* 8040E890  EC 9C 07 72 */	fmuls f4, f28, f29
/* 8040E894  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8040E898  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8040E89C  EC 7E 07 32 */	fmuls f3, f30, f28
/* 8040E8A0  B0 7F 00 22 */	sth r3, 0x22(r31)
/* 8040E8A4  54 80 84 3E */	srwi r0, r4, 0x10
/* 8040E8A8  EC 44 10 2A */	fadds f2, f4, f2
/* 8040E8AC  D8 C1 00 20 */	stfd f6, 0x20(r1)
/* 8040E8B0  EC 37 00 F2 */	fmuls f1, f23, f3
/* 8040E8B4  EC 56 00 B2 */	fmuls f2, f22, f2
/* 8040E8B8  B0 1F 00 04 */	sth r0, 4(r31)
/* 8040E8BC  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8040E8C0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040E8C4  B0 9F 00 24 */	sth r4, 0x24(r31)
/* 8040E8C8  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8040E8CC  54 60 84 3E */	srwi r0, r3, 0x10
/* 8040E8D0  D8 A1 00 28 */	stfd f5, 0x28(r1)
/* 8040E8D4  FC 20 08 1E */	fctiwz f1, f1
/* 8040E8D8  B0 1F 00 08 */	sth r0, 8(r31)
/* 8040E8DC  FC 40 10 1E */	fctiwz f2, f2
/* 8040E8E0  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8040E8E4  B0 7F 00 28 */	sth r3, 0x28(r31)
/* 8040E8E8  54 80 84 3E */	srwi r0, r4, 0x10
/* 8040E8EC  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8040E8F0  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 8040E8F4  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8040E8F8  B0 9F 00 2A */	sth r4, 0x2a(r31)
/* 8040E8FC  54 60 84 3E */	srwi r0, r3, 0x10
/* 8040E900  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 8040E904  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 8040E908  B0 7F 00 2C */	sth r3, 0x2c(r31)
/* 8040E90C  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8040E910  FC 60 D8 50 */	fneg f3, f27
/* 8040E914  54 80 84 3E */	srwi r0, r4, 0x10
/* 8040E918  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 8040E91C  EC 5E 07 F2 */	fmuls f2, f30, f31
/* 8040E920  EC 20 06 32 */	fmuls f1, f0, f24
/* 8040E924  38 60 00 00 */	li r3, 0
/* 8040E928  EC 63 05 F2 */	fmuls f3, f3, f23
/* 8040E92C  B0 9F 00 30 */	sth r4, 0x30(r31)
/* 8040E930  EC 57 00 B2 */	fmuls f2, f23, f2
/* 8040E934  38 00 00 01 */	li r0, 1
/* 8040E938  FC 20 08 1E */	fctiwz f1, f1
/* 8040E93C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8040E940  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8040E944  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 8040E948  EC 20 06 72 */	fmuls f1, f0, f25
/* 8040E94C  FC 60 18 1E */	fctiwz f3, f3
/* 8040E950  FC 40 10 1E */	fctiwz f2, f2
/* 8040E954  80 E1 00 54 */	lwz r7, 0x54(r1)
/* 8040E958  FC 20 08 1E */	fctiwz f1, f1
/* 8040E95C  D8 61 00 40 */	stfd f3, 0x40(r1)
/* 8040E960  EC 00 06 B2 */	fmuls f0, f0, f26
/* 8040E964  54 E4 84 3E */	srwi r4, r7, 0x10
/* 8040E968  81 01 00 44 */	lwz r8, 0x44(r1)
/* 8040E96C  D8 41 00 48 */	stfd f2, 0x48(r1)
/* 8040E970  FC 00 00 1E */	fctiwz f0, f0
/* 8040E974  55 05 84 3E */	srwi r5, r8, 0x10
/* 8040E978  B0 BF 00 12 */	sth r5, 0x12(r31)
/* 8040E97C  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 8040E980  B1 1F 00 32 */	sth r8, 0x32(r31)
/* 8040E984  54 C5 84 3E */	srwi r5, r6, 0x10
/* 8040E988  B0 BF 00 14 */	sth r5, 0x14(r31)
/* 8040E98C  B0 DF 00 34 */	sth r6, 0x34(r31)
/* 8040E990  D8 21 00 58 */	stfd f1, 0x58(r1)
/* 8040E994  B0 9F 00 18 */	sth r4, 0x18(r31)
/* 8040E998  80 C1 00 5C */	lwz r6, 0x5c(r1)
/* 8040E99C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8040E9A0  54 C4 84 3E */	srwi r4, r6, 0x10
/* 8040E9A4  B0 FF 00 38 */	sth r7, 0x38(r31)
/* 8040E9A8  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 8040E9AC  B0 9F 00 1A */	sth r4, 0x1a(r31)
/* 8040E9B0  54 A4 84 3E */	srwi r4, r5, 0x10
/* 8040E9B4  B0 DF 00 3A */	sth r6, 0x3a(r31)
/* 8040E9B8  B0 9F 00 1C */	sth r4, 0x1c(r31)
/* 8040E9BC  B0 BF 00 3C */	sth r5, 0x3c(r31)
/* 8040E9C0  B0 7F 00 16 */	sth r3, 0x16(r31)
/* 8040E9C4  B0 7F 00 0E */	sth r3, 0xe(r31)
/* 8040E9C8  B0 7F 00 06 */	sth r3, 6(r31)
/* 8040E9CC  B0 7F 00 36 */	sth r3, 0x36(r31)
/* 8040E9D0  B0 7F 00 2E */	sth r3, 0x2e(r31)
/* 8040E9D4  B0 7F 00 26 */	sth r3, 0x26(r31)
/* 8040E9D8  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 8040E9DC  B0 7F 00 3E */	sth r3, 0x3e(r31)
/* 8040E9E0  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 8040E9E4  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 8040E9E8  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 8040E9EC  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 8040E9F0  E3 A1 01 08 */	psq_l f29, 264(r1), 0, 0 /* qr0 */
/* 8040E9F4  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 8040E9F8  E3 81 00 F8 */	psq_l f28, 248(r1), 0, 0 /* qr0 */
/* 8040E9FC  CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 8040EA00  E3 61 00 E8 */	psq_l f27, 232(r1), 0, 0 /* qr0 */
/* 8040EA04  CB 61 00 E0 */	lfd f27, 0xe0(r1)
/* 8040EA08  E3 41 00 D8 */	psq_l f26, 216(r1), 0, 0 /* qr0 */
/* 8040EA0C  CB 41 00 D0 */	lfd f26, 0xd0(r1)
/* 8040EA10  E3 21 00 C8 */	psq_l f25, 200(r1), 0, 0 /* qr0 */
/* 8040EA14  CB 21 00 C0 */	lfd f25, 0xc0(r1)
/* 8040EA18  E3 01 00 B8 */	psq_l f24, 184(r1), 0, 0 /* qr0 */
/* 8040EA1C  CB 01 00 B0 */	lfd f24, 0xb0(r1)
/* 8040EA20  E2 E1 00 A8 */	psq_l f23, 168(r1), 0, 0 /* qr0 */
/* 8040EA24  CA E1 00 A0 */	lfd f23, 0xa0(r1)
/* 8040EA28  E2 C1 00 98 */	psq_l f22, 152(r1), 0, 0 /* qr0 */
/* 8040EA2C  CA C1 00 90 */	lfd f22, 0x90(r1)
/* 8040EA30  E2 A1 00 88 */	psq_l f21, 136(r1), 0, 0 /* qr0 */
/* 8040EA34  39 61 00 80 */	addi r11, r1, 0x80
/* 8040EA38  CA A1 00 80 */	lfd f21, 0x80(r1)
/* 8040EA3C  4B C8 C4 E1 */	bl func_8009AF1C
/* 8040EA40  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8040EA44  7C 08 03 A6 */	mtlr r0
/* 8040EA48  38 21 01 30 */	addi r1, r1, 0x130
/* 8040EA4C  4E 80 00 20 */	blr 

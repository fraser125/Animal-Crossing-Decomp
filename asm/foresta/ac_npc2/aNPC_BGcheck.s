lbl_8053D8DC:
/* 8053D8DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053D8E0  7C 08 02 A6 */	mflr r0
/* 8053D8E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053D8E8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8053D8EC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8053D8F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8053D8F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8053D8F8  80 03 08 40 */	lwz r0, 0x840(r3)
/* 8053D8FC  7C 7F 1B 78 */	mr r31, r3
/* 8053D900  7C 9E 23 78 */	mr r30, r4
/* 8053D904  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8053D908  40 82 00 DC */	bne lbl_8053D9E4
/* 8053D90C  88 1F 09 40 */	lbz r0, 0x940(r31)
/* 8053D910  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8053D914  41 82 00 38 */	beq lbl_8053D94C
/* 8053D918  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 8053D91C  C0 3F 09 54 */	lfs f1, 0x954(r31)
/* 8053D920  38 A3 93 74 */	addi r5, r3, data_80649374@l /* 0x80649374@l */
/* 8053D924  38 60 00 00 */	li r3, 0
/* 8053D928  C0 45 00 00 */	lfs f2, 0(r5)
/* 8053D92C  38 A0 00 01 */	li r5, 1
/* 8053D930  38 C0 00 00 */	li r6, 0
/* 8053D934  38 E0 00 00 */	li r7, 0
/* 8053D938  4B E4 C4 69 */	bl mCoBG_BgCheckControll
/* 8053D93C  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 8053D940  C0 03 93 74 */	lfs f0, data_80649374@l(r3)  /* 0x80649374@l */
/* 8053D944  D0 1F 09 60 */	stfs f0, 0x960(r31)
/* 8053D948  48 00 00 B0 */	b lbl_8053D9F8
lbl_8053D94C:
/* 8053D94C  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 8053D950  C0 3F 09 54 */	lfs f1, 0x954(r31)
/* 8053D954  38 A3 93 74 */	addi r5, r3, data_80649374@l /* 0x80649374@l */
/* 8053D958  38 61 00 08 */	addi r3, r1, 8
/* 8053D95C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8053D960  38 A0 00 01 */	li r5, 1
/* 8053D964  38 C0 00 01 */	li r6, 1
/* 8053D968  38 E0 00 00 */	li r7, 0
/* 8053D96C  4B E4 C4 35 */	bl mCoBG_BgCheckControll
/* 8053D970  3C 80 80 65 */	lis r4, lit_796@ha /* 0x8064937C@ha */
/* 8053D974  3C 60 80 65 */	lis r3, lit_1462@ha /* 0x806493B0@ha */
/* 8053D978  C3 FF 09 60 */	lfs f31, 0x960(r31)
/* 8053D97C  C0 24 93 7C */	lfs f1, lit_796@l(r4)  /* 0x8064937C@l */
/* 8053D980  C0 03 93 B0 */	lfs f0, lit_1462@l(r3)  /* 0x806493B0@l */
/* 8053D984  EF FF 08 2A */	fadds f31, f31, f1
/* 8053D988  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8053D98C  40 81 00 08 */	ble lbl_8053D994
/* 8053D990  FF E0 00 90 */	fmr f31, f0
lbl_8053D994:
/* 8053D994  D3 FF 09 60 */	stfs f31, 0x960(r31)
/* 8053D998  FC 40 F8 90 */	fmr f2, f31
/* 8053D99C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8053D9A0  4B FF FE F1 */	bl func_8053D890
/* 8053D9A4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8053D9A8  FC 40 F8 90 */	fmr f2, f31
/* 8053D9AC  EC 00 08 2A */	fadds f0, f0, f1
/* 8053D9B0  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8053D9B4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8053D9B8  4B FF FE D9 */	bl func_8053D890
/* 8053D9BC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8053D9C0  FC 40 F8 90 */	fmr f2, f31
/* 8053D9C4  EC 00 08 2A */	fadds f0, f0, f1
/* 8053D9C8  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8053D9CC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8053D9D0  4B FF FE C1 */	bl func_8053D890
/* 8053D9D4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8053D9D8  EC 00 08 2A */	fadds f0, f0, f1
/* 8053D9DC  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8053D9E0  48 00 00 18 */	b lbl_8053D9F8
lbl_8053D9E4:
/* 8053D9E4  38 7E 00 98 */	addi r3, r30, 0x98
/* 8053D9E8  4B E4 BD AD */	bl mCoBG_InitBgCheckResult
/* 8053D9EC  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 8053D9F0  C0 03 93 74 */	lfs f0, data_80649374@l(r3)  /* 0x80649374@l */
/* 8053D9F4  D0 1F 09 60 */	stfs f0, 0x960(r31)
lbl_8053D9F8:
/* 8053D9F8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8053D9FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053DA00  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8053DA04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053DA08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8053DA0C  7C 08 03 A6 */	mtlr r0
/* 8053DA10  38 21 00 30 */	addi r1, r1, 0x30
/* 8053DA14  4E 80 00 20 */	blr 

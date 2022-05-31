lbl_8050E7A8:
/* 8050E7A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050E7AC  7C 08 02 A6 */	mflr r0
/* 8050E7B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050E7B4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8050E7B8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8050E7BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8050E7C0  4B B8 C7 15 */	bl func_8009AED4
/* 8050E7C4  7C 7D 1B 78 */	mr r29, r3
/* 8050E7C8  3C 60 80 6A */	lis r3, data_8069F090@ha /* 0x8069F090@ha */
/* 8050E7CC  7C 9E 23 78 */	mr r30, r4
/* 8050E7D0  3B E3 F0 90 */	addi r31, r3, data_8069F090@l /* 0x8069F090@l */
/* 8050E7D4  38 7D 00 28 */	addi r3, r29, 0x28
/* 8050E7D8  4B E8 25 E5 */	bl mCoBG_GetBalloonGroundY
/* 8050E7DC  FF E0 08 90 */	fmr f31, f1
/* 8050E7E0  4B EA B6 9D */	bl mEnv_GetWindAngleS
/* 8050E7E4  B0 7D 00 36 */	sth r3, 0x36(r29)
/* 8050E7E8  38 BF 00 3C */	addi r5, r31, 0x3c
/* 8050E7EC  38 9F 00 7C */	addi r4, r31, 0x7c
/* 8050E7F0  38 7D 00 28 */	addi r3, r29, 0x28
/* 8050E7F4  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 8050E7F8  54 00 04 26 */	rlwinm r0, r0, 0, 0x10, 0x13
/* 8050E7FC  7C 00 07 34 */	extsh r0, r0
/* 8050E800  7C 00 66 70 */	srawi r0, r0, 0xc
/* 8050E804  90 1D 01 94 */	stw r0, 0x194(r29)
/* 8050E808  80 1D 01 94 */	lwz r0, 0x194(r29)
/* 8050E80C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8050E810  90 1D 01 94 */	stw r0, 0x194(r29)
/* 8050E814  80 1D 01 94 */	lwz r0, 0x194(r29)
/* 8050E818  54 00 10 3A */	slwi r0, r0, 2
/* 8050E81C  7C 05 00 2E */	lwzx r0, r5, r0
/* 8050E820  90 1D 01 94 */	stw r0, 0x194(r29)
/* 8050E824  80 1D 01 94 */	lwz r0, 0x194(r29)
/* 8050E828  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8050E82C  7C 84 02 14 */	add r4, r4, r0
/* 8050E830  4B EA C6 8D */	bl xyz_t_move
/* 8050E834  3C 80 80 65 */	lis r4, lit_448@ha /* 0x80648F08@ha */
/* 8050E838  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E83C  C0 04 8F 08 */	lfs f0, lit_448@l(r4)  /* 0x80648F08@l */
/* 8050E840  38 83 8E FC */	addi r4, r3, data_80648EFC@l /* 0x80648EFC@l */
/* 8050E844  38 A0 00 05 */	li r5, 5
/* 8050E848  C0 24 00 00 */	lfs f1, 0(r4)
/* 8050E84C  EC 00 F8 2A */	fadds f0, f0, f31
/* 8050E850  38 00 00 0A */	li r0, 0xa
/* 8050E854  38 7F 00 DC */	addi r3, r31, 0xdc
/* 8050E858  38 E0 00 00 */	li r7, 0
/* 8050E85C  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 8050E860  80 DE 20 90 */	lwz r6, 0x2090(r30)
/* 8050E864  7C 86 2B 96 */	divwu r4, r6, r5
/* 8050E868  7C 84 29 D6 */	mullw r4, r4, r5
/* 8050E86C  7C 84 30 50 */	subf r4, r4, r6
/* 8050E870  90 9D 01 80 */	stw r4, 0x180(r29)
/* 8050E874  90 1D 01 88 */	stw r0, 0x188(r29)
/* 8050E878  80 1D 01 94 */	lwz r0, 0x194(r29)
/* 8050E87C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8050E880  7C 43 2C 2E */	lfsx f2, r3, r5
/* 8050E884  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 8050E888  41 82 00 20 */	beq lbl_8050E8A8
/* 8050E88C  7C 63 2A 14 */	add r3, r3, r5
/* 8050E890  C0 03 00 08 */	lfs f0, 8(r3)
/* 8050E894  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050E898  41 82 00 10 */	beq lbl_8050E8A8
/* 8050E89C  80 1E 20 90 */	lwz r0, 0x2090(r30)
/* 8050E8A0  54 07 07 FE */	clrlwi r7, r0, 0x1f
/* 8050E8A4  48 00 00 28 */	b lbl_8050E8CC
lbl_8050E8A8:
/* 8050E8A8  38 1F 00 DC */	addi r0, r31, 0xdc
/* 8050E8AC  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E8B0  38 83 8E FC */	addi r4, r3, data_80648EFC@l /* 0x80648EFC@l */
/* 8050E8B4  7C 60 2A 14 */	add r3, r0, r5
/* 8050E8B8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8050E8BC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8050E8C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050E8C4  41 82 00 08 */	beq lbl_8050E8CC
/* 8050E8C8  38 E0 00 01 */	li r7, 1
lbl_8050E8CC:
/* 8050E8CC  2C 07 00 00 */	cmpwi r7, 0
/* 8050E8D0  40 82 00 64 */	bne lbl_8050E934
/* 8050E8D4  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E8D8  C0 03 8E FC */	lfs f0, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050E8DC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8050E8E0  41 82 00 B8 */	beq lbl_8050E998
/* 8050E8E4  FF E0 12 10 */	fabs f31, f2
/* 8050E8E8  4B B4 E4 0D */	bl fqrand
/* 8050E8EC  80 1D 01 94 */	lwz r0, 0x194(r29)
/* 8050E8F0  FC 40 F8 18 */	frsp f2, f31
/* 8050E8F4  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E8F8  38 9F 00 DC */	addi r4, r31, 0xdc
/* 8050E8FC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8050E900  C0 03 8E FC */	lfs f0, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050E904  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8050E908  7C 24 04 2E */	lfsx f1, r4, r0
/* 8050E90C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050E910  40 81 00 14 */	ble lbl_8050E924
/* 8050E914  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 8050E918  EC 00 10 2A */	fadds f0, f0, f2
/* 8050E91C  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 8050E920  48 00 00 78 */	b lbl_8050E998
lbl_8050E924:
/* 8050E924  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 8050E928  EC 00 10 28 */	fsubs f0, f0, f2
/* 8050E92C  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 8050E930  48 00 00 68 */	b lbl_8050E998
lbl_8050E934:
/* 8050E934  3B DF 00 DC */	addi r30, r31, 0xdc
/* 8050E938  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E93C  3B DE 00 08 */	addi r30, r30, 8
/* 8050E940  C0 03 8E FC */	lfs f0, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050E944  7C 3E 2C 2E */	lfsx f1, r30, r5
/* 8050E948  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8050E94C  41 82 00 4C */	beq lbl_8050E998
/* 8050E950  FF E0 0A 10 */	fabs f31, f1
/* 8050E954  4B B4 E3 A1 */	bl fqrand
/* 8050E958  80 1D 01 94 */	lwz r0, 0x194(r29)
/* 8050E95C  FC 40 F8 18 */	frsp f2, f31
/* 8050E960  3C 60 80 65 */	lis r3, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050E964  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8050E968  C0 03 8E FC */	lfs f0, data_80648EFC@l(r3)  /* 0x80648EFC@l */
/* 8050E96C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8050E970  7C 3E 04 2E */	lfsx f1, r30, r0
/* 8050E974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050E978  40 81 00 14 */	ble lbl_8050E98C
/* 8050E97C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 8050E980  EC 00 10 2A */	fadds f0, f0, f2
/* 8050E984  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 8050E988  48 00 00 10 */	b lbl_8050E998
lbl_8050E98C:
/* 8050E98C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 8050E990  EC 00 10 28 */	fsubs f0, f0, f2
/* 8050E994  D0 1D 00 30 */	stfs f0, 0x30(r29)
lbl_8050E998:
/* 8050E998  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8050E99C  39 61 00 20 */	addi r11, r1, 0x20
/* 8050E9A0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8050E9A4  4B B8 C5 7D */	bl func_8009AF20
/* 8050E9A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050E9AC  7C 08 03 A6 */	mtlr r0
/* 8050E9B0  38 21 00 30 */	addi r1, r1, 0x30
/* 8050E9B4  4E 80 00 20 */	blr 

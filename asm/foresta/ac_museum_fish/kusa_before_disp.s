lbl_80430A58:
/* 80430A58  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80430A5C  7C 08 02 A6 */	mflr r0
/* 80430A60  90 01 00 54 */	stw r0, 0x54(r1)
/* 80430A64  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80430A68  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80430A6C  39 61 00 40 */	addi r11, r1, 0x40
/* 80430A70  4B C6 A4 5D */	bl func_8009AECC
/* 80430A74  7C BC 2B 79 */	or. r28, r5, r5
/* 80430A78  7D 1D 43 78 */	mr r29, r8
/* 80430A7C  7D 3E 4B 78 */	mr r30, r9
/* 80430A80  7D 5F 53 78 */	mr r31, r10
/* 80430A84  40 81 00 E4 */	ble lbl_80430B68
/* 80430A88  3C 60 80 CE */	lis r3, cKF_bs_r_obj_museum5_kusa3@ha /* 0x80CE3C58@ha */
/* 80430A8C  80 9D 05 4C */	lwz r4, 0x54c(r29)
/* 80430A90  38 03 3C 58 */	addi r0, r3, cKF_bs_r_obj_museum5_kusa3@l /* 0x80CE3C58@l */
/* 80430A94  7C 04 00 40 */	cmplw r4, r0
/* 80430A98  40 82 00 10 */	bne lbl_80430AA8
/* 80430A9C  3C 60 80 64 */	lis r3, lit_4774@ha /* 0x806443F8@ha */
/* 80430AA0  C3 E3 43 F8 */	lfs f31, lit_4774@l(r3)  /* 0x806443F8@l */
/* 80430AA4  48 00 00 0C */	b lbl_80430AB0
lbl_80430AA8:
/* 80430AA8  3C 60 80 64 */	lis r3, lit_698@ha /* 0x806442B4@ha */
/* 80430AAC  C3 E3 42 B4 */	lfs f31, lit_698@l(r3)  /* 0x806442B4@l */
lbl_80430AB0:
/* 80430AB0  A8 1D 05 38 */	lha r0, 0x538(r29)
/* 80430AB4  57 9B 70 22 */	slwi r27, r28, 0xe
/* 80430AB8  7C 00 DA 14 */	add r0, r0, r27
/* 80430ABC  7C 03 07 34 */	extsh r3, r0
/* 80430AC0  4B F8 A0 31 */	bl sin_s
/* 80430AC4  3C 60 80 64 */	lis r3, lit_10240@ha /* 0x8064456C@ha */
/* 80430AC8  A8 1E 00 02 */	lha r0, 2(r30)
/* 80430ACC  C0 03 45 6C */	lfs f0, lit_10240@l(r3)  /* 0x8064456C@l */
/* 80430AD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80430AD4  FC 00 00 1E */	fctiwz f0, f0
/* 80430AD8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80430ADC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80430AE0  7C 00 1A 14 */	add r0, r0, r3
/* 80430AE4  B0 1E 00 02 */	sth r0, 2(r30)
/* 80430AE8  A8 1D 05 3C */	lha r0, 0x53c(r29)
/* 80430AEC  7C 00 DA 14 */	add r0, r0, r27
/* 80430AF0  7C 03 07 34 */	extsh r3, r0
/* 80430AF4  4B F8 9F FD */	bl sin_s
/* 80430AF8  3C 80 80 64 */	lis r4, lit_10241@ha /* 0x80644570@ha */
/* 80430AFC  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 80430B00  C0 04 45 70 */	lfs f0, lit_10241@l(r4)  /* 0x80644570@l */
/* 80430B04  3C 00 43 30 */	lis r0, 0x4330
/* 80430B08  90 01 00 18 */	stw r0, 0x18(r1)
/* 80430B0C  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80430B10  EC 00 00 72 */	fmuls f0, f0, f1
/* 80430B14  C8 24 42 8C */	lfd f1, lit_570@l(r4)  /* 0x8064428C@l */
/* 80430B18  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80430B1C  A8 1E 00 00 */	lha r0, 0(r30)
/* 80430B20  FC 40 00 1E */	fctiwz f2, f0
/* 80430B24  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80430B28  EC 00 08 28 */	fsubs f0, f0, f1
/* 80430B2C  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 80430B30  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80430B34  EC 5F 00 32 */	fmuls f2, f31, f0
/* 80430B38  7C 00 1A 14 */	add r0, r0, r3
/* 80430B3C  B0 1E 00 00 */	sth r0, 0(r30)
/* 80430B40  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80430B44  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80430B48  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80430B4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80430B50  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80430B54  C0 1D 05 48 */	lfs f0, 0x548(r29)
/* 80430B58  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80430B5C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80430B60  EC 01 00 2A */	fadds f0, f1, f0
/* 80430B64  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80430B68:
/* 80430B68  38 60 00 01 */	li r3, 1
/* 80430B6C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80430B70  39 61 00 40 */	addi r11, r1, 0x40
/* 80430B74  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80430B78  4B C6 A3 A1 */	bl func_8009AF18
/* 80430B7C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80430B80  7C 08 03 A6 */	mtlr r0
/* 80430B84  38 21 00 50 */	addi r1, r1, 0x50
/* 80430B88  4E 80 00 20 */	blr 

lbl_803898A0:
/* 803898A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803898A4  7C 08 02 A6 */	mflr r0
/* 803898A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803898AC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803898B0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803898B4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803898B8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 803898BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803898C0  4B D1 16 15 */	bl func_8009AED4
/* 803898C4  7C 7F 1B 78 */	mr r31, r3
/* 803898C8  7C 9D 23 78 */	mr r29, r4
/* 803898CC  90 C3 00 68 */	stw r6, 0x68(r3)
/* 803898D0  FF C0 08 90 */	fmr f30, f1
/* 803898D4  FF E0 10 90 */	fmr f31, f2
/* 803898D8  7C BE 2B 78 */	mr r30, r5
/* 803898DC  90 E3 00 6C */	stw r7, 0x6c(r3)
/* 803898E0  38 7D 00 98 */	addi r3, r29, 0x98
/* 803898E4  88 04 00 9A */	lbz r0, 0x9a(r4)
/* 803898E8  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 803898EC  98 1F 00 05 */	stb r0, 5(r31)
/* 803898F0  88 04 00 98 */	lbz r0, 0x98(r4)
/* 803898F4  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 803898F8  98 1F 00 03 */	stb r0, 3(r31)
/* 803898FC  4B FF FE 99 */	bl mCoBG_InitBgCheckResult
/* 80389900  38 7D 00 84 */	addi r3, r29, 0x84
/* 80389904  4B FF FF 29 */	bl mCoBG_InitBgCheckClass
/* 80389908  A8 9D 00 00 */	lha r4, 0(r29)
/* 8038990C  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80389910  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80389914  38 1D 00 98 */	addi r0, r29, 0x98
/* 80389918  B0 9F 00 00 */	sth r4, 0(r31)
/* 8038991C  7F A4 EB 78 */	mr r4, r29
/* 80389920  38 63 00 14 */	addi r3, r3, 0x14
/* 80389924  90 1F 00 08 */	stw r0, 8(r31)
/* 80389928  4B FF CB 75 */	bl mCoBG_GetSpeedByWpos
/* 8038992C  D3 DF 00 40 */	stfs f30, 0x40(r31)
/* 80389930  7F E3 FB 78 */	mr r3, r31
/* 80389934  D3 FF 00 44 */	stfs f31, 0x44(r31)
/* 80389938  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8038993C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80389940  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80389944  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80389948  EC 00 F8 2A */	fadds f0, f0, f31
/* 8038994C  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80389950  4B FF FF 0D */	bl mCoBG_ActorFearture2CheckRange
/* 80389954  3C A0 80 64 */	lis r5, data_806419A4@ha /* 0x806419A4@ha */
/* 80389958  B0 7F 00 60 */	sth r3, 0x60(r31)
/* 8038995C  C0 05 19 A4 */	lfs f0, data_806419A4@l(r5)  /* 0x806419A4@l */
/* 80389960  3C 80 80 64 */	lis r4, lit_448@ha /* 0x806419A8@ha */
/* 80389964  38 64 19 A8 */	addi r3, r4, lit_448@l /* 0x806419A8@l */
/* 80389968  38 00 00 02 */	li r0, 2
/* 8038996C  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80389970  38 80 00 B6 */	li r4, 0xb6
/* 80389974  C0 23 00 00 */	lfs f1, 0(r3)
/* 80389978  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8038997C  B0 9F 00 58 */	sth r4, 0x58(r31)
/* 80389980  B0 9F 00 5C */	sth r4, 0x5c(r31)
/* 80389984  B0 1F 00 5A */	sth r0, 0x5a(r31)
/* 80389988  B0 1F 00 5E */	sth r0, 0x5e(r31)
/* 8038998C  9B DF 00 02 */	stb r30, 2(r31)
/* 80389990  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80389994  FC 00 02 10 */	fabs f0, f0
/* 80389998  FC 00 00 18 */	frsp f0, f0
/* 8038999C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803899A0  40 80 00 24 */	bge lbl_803899C4
/* 803899A4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 803899A8  FC 00 02 10 */	fabs f0, f0
/* 803899AC  FC 00 00 18 */	frsp f0, f0
/* 803899B0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803899B4  40 80 00 10 */	bge lbl_803899C4
/* 803899B8  38 00 00 01 */	li r0, 1
/* 803899BC  90 1F 00 64 */	stw r0, 0x64(r31)
/* 803899C0  48 00 00 0C */	b lbl_803899CC
lbl_803899C4:
/* 803899C4  38 00 00 00 */	li r0, 0
/* 803899C8  90 1F 00 64 */	stw r0, 0x64(r31)
lbl_803899CC:
/* 803899CC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803899D0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803899D4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803899D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803899DC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803899E0  4B D1 15 41 */	bl func_8009AF20
/* 803899E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803899E8  7C 08 03 A6 */	mtlr r0
/* 803899EC  38 21 00 40 */	addi r1, r1, 0x40
/* 803899F0  4E 80 00 20 */	blr 
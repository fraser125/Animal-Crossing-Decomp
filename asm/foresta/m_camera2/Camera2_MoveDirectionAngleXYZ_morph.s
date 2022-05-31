lbl_8037DCBC:
/* 8037DCBC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8037DCC0  7C 08 02 A6 */	mflr r0
/* 8037DCC4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8037DCC8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8037DCCC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8037DCD0  39 61 00 30 */	addi r11, r1, 0x30
/* 8037DCD4  4B D1 D1 F5 */	bl func_8009AEC8
/* 8037DCD8  2C 05 00 00 */	cmpwi r5, 0
/* 8037DCDC  7C 9A 23 78 */	mr r26, r4
/* 8037DCE0  3B E3 1B C0 */	addi r31, r3, 0x1bc0
/* 8037DCE4  3B C3 1B C6 */	addi r30, r3, 0x1bc6
/* 8037DCE8  40 82 00 30 */	bne lbl_8037DD18
/* 8037DCEC  A8 7A 00 00 */	lha r3, 0(r26)
/* 8037DCF0  38 00 00 00 */	li r0, 0
/* 8037DCF4  B0 7F 00 00 */	sth r3, 0(r31)
/* 8037DCF8  A8 7A 00 02 */	lha r3, 2(r26)
/* 8037DCFC  B0 7F 00 02 */	sth r3, 2(r31)
/* 8037DD00  A8 7A 00 04 */	lha r3, 4(r26)
/* 8037DD04  B0 7F 00 04 */	sth r3, 4(r31)
/* 8037DD08  B0 1E 00 00 */	sth r0, 0(r30)
/* 8037DD0C  B0 1E 00 02 */	sth r0, 2(r30)
/* 8037DD10  B0 1E 00 04 */	sth r0, 4(r30)
/* 8037DD14  48 00 00 A0 */	b lbl_8037DDB4
lbl_8037DD18:
/* 8037DD18  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 8037DD1C  3C 00 43 30 */	lis r0, 0x4330
/* 8037DD20  3C 80 80 64 */	lis r4, lit_487@ha /* 0x80641364@ha */
/* 8037DD24  90 61 00 0C */	stw r3, 0xc(r1)
/* 8037DD28  38 64 13 64 */	addi r3, r4, lit_487@l /* 0x80641364@l */
/* 8037DD2C  AB BF 00 00 */	lha r29, 0(r31)
/* 8037DD30  90 01 00 08 */	stw r0, 8(r1)
/* 8037DD34  3C 80 80 64 */	lis r4, lit_508@ha /* 0x8064136C@ha */
/* 8037DD38  C8 23 00 00 */	lfd f1, 0(r3)
/* 8037DD3C  7F E3 FB 78 */	mr r3, r31
/* 8037DD40  C8 01 00 08 */	lfd f0, 8(r1)
/* 8037DD44  C0 44 13 6C */	lfs f2, lit_508@l(r4)  /* 0x8064136C@l */
/* 8037DD48  7F A4 EB 78 */	mr r4, r29
/* 8037DD4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8037DD50  A8 BA 00 00 */	lha r5, 0(r26)
/* 8037DD54  AB 9F 00 02 */	lha r28, 2(r31)
/* 8037DD58  AB 7F 00 04 */	lha r27, 4(r31)
/* 8037DD5C  EF E2 00 24 */	fdivs f31, f2, f0
/* 8037DD60  FC 20 F8 90 */	fmr f1, f31
/* 8037DD64  4B FF 2B C1 */	bl cKF_SkeletonInfo_subRotInterpolation
/* 8037DD68  FC 20 F8 90 */	fmr f1, f31
/* 8037DD6C  A8 BA 00 02 */	lha r5, 2(r26)
/* 8037DD70  7F 84 E3 78 */	mr r4, r28
/* 8037DD74  38 7F 00 02 */	addi r3, r31, 2
/* 8037DD78  4B FF 2B AD */	bl cKF_SkeletonInfo_subRotInterpolation
/* 8037DD7C  FC 20 F8 90 */	fmr f1, f31
/* 8037DD80  A8 BA 00 04 */	lha r5, 4(r26)
/* 8037DD84  7F 64 DB 78 */	mr r4, r27
/* 8037DD88  38 7F 00 04 */	addi r3, r31, 4
/* 8037DD8C  4B FF 2B 99 */	bl cKF_SkeletonInfo_subRotInterpolation
/* 8037DD90  A8 1F 00 00 */	lha r0, 0(r31)
/* 8037DD94  7C 1D 00 50 */	subf r0, r29, r0
/* 8037DD98  B0 1E 00 00 */	sth r0, 0(r30)
/* 8037DD9C  A8 1F 00 02 */	lha r0, 2(r31)
/* 8037DDA0  7C 1C 00 50 */	subf r0, r28, r0
/* 8037DDA4  B0 1E 00 02 */	sth r0, 2(r30)
/* 8037DDA8  A8 1F 00 04 */	lha r0, 4(r31)
/* 8037DDAC  7C 1B 00 50 */	subf r0, r27, r0
/* 8037DDB0  B0 1E 00 04 */	sth r0, 4(r30)
lbl_8037DDB4:
/* 8037DDB4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8037DDB8  39 61 00 30 */	addi r11, r1, 0x30
/* 8037DDBC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8037DDC0  4B D1 D1 55 */	bl func_8009AF14
/* 8037DDC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8037DDC8  7C 08 03 A6 */	mtlr r0
/* 8037DDCC  38 21 00 40 */	addi r1, r1, 0x40
/* 8037DDD0  4E 80 00 20 */	blr 

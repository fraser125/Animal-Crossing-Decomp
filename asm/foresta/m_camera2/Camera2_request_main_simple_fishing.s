lbl_80381874:
/* 80381874  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80381878  7C 08 02 A6 */	mflr r0
/* 8038187C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80381880  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80381884  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80381888  39 61 00 30 */	addi r11, r1, 0x30
/* 8038188C  4B D1 96 45 */	bl func_8009AED0
/* 80381890  3C E0 80 64 */	lis r7, lit_508@ha /* 0x8064136C@ha */
/* 80381894  7C 9D 23 78 */	mr r29, r4
/* 80381898  C3 E7 13 6C */	lfs f31, lit_508@l(r7)  /* 0x8064136C@l */
/* 8038189C  7C BE 2B 78 */	mr r30, r5
/* 803818A0  7C 7C 1B 78 */	mr r28, r3
/* 803818A4  7C DF 33 78 */	mr r31, r6
/* 803818A8  38 81 00 0C */	addi r4, r1, 0xc
/* 803818AC  38 A1 00 08 */	addi r5, r1, 8
/* 803818B0  48 00 02 91 */	bl Camera2_main_Simple_AngleDistStd
/* 803818B4  C0 7D 00 04 */	lfs f3, 4(r29)
/* 803818B8  3C 60 80 64 */	lis r3, lit_1566@ha /* 0x80641534@ha */
/* 803818BC  C1 1E 00 04 */	lfs f8, 4(r30)
/* 803818C0  C0 03 15 34 */	lfs f0, lit_1566@l(r3)  /* 0x80641534@l */
/* 803818C4  EC 23 40 28 */	fsubs f1, f3, f8
/* 803818C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803818CC  40 81 00 60 */	ble lbl_8038192C
/* 803818D0  3C 80 80 64 */	lis r4, lit_1568@ha /* 0x8064153C@ha */
/* 803818D4  3C 60 80 64 */	lis r3, lit_1569@ha /* 0x80641540@ha */
/* 803818D8  C0 E4 15 3C */	lfs f7, lit_1568@l(r4)  /* 0x8064153C@l */
/* 803818DC  3C A0 80 64 */	lis r5, lit_1567@ha /* 0x80641538@ha */
/* 803818E0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 803818E4  C0 A3 15 40 */	lfs f5, lit_1569@l(r3)  /* 0x80641540@l */
/* 803818E8  EC 67 00 F2 */	fmuls f3, f7, f3
/* 803818EC  C0 9E 00 00 */	lfs f4, 0(r30)
/* 803818F0  EC C7 00 32 */	fmuls f6, f7, f0
/* 803818F4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 803818F8  EC 45 02 32 */	fmuls f2, f5, f8
/* 803818FC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80381900  EC 85 01 32 */	fmuls f4, f5, f4
/* 80381904  C3 E5 15 38 */	lfs f31, lit_1567@l(r5)  /* 0x80641538@l */
/* 80381908  EC 43 10 2A */	fadds f2, f3, f2
/* 8038190C  EC 27 00 72 */	fmuls f1, f7, f1
/* 80381910  EC 05 00 32 */	fmuls f0, f5, f0
/* 80381914  EC 66 20 2A */	fadds f3, f6, f4
/* 80381918  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8038191C  EC 01 00 2A */	fadds f0, f1, f0
/* 80381920  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80381924  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80381928  48 00 00 54 */	b lbl_8038197C
lbl_8038192C:
/* 8038192C  3C 80 80 64 */	lis r4, lit_1570@ha /* 0x80641544@ha */
/* 80381930  3C 60 80 64 */	lis r3, lit_1571@ha /* 0x80641548@ha */
/* 80381934  C0 E4 15 44 */	lfs f7, lit_1570@l(r4)  /* 0x80641544@l */
/* 80381938  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8038193C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80381940  EC 67 00 F2 */	fmuls f3, f7, f3
/* 80381944  EC C7 00 32 */	fmuls f6, f7, f0
/* 80381948  C0 A3 15 48 */	lfs f5, lit_1571@l(r3)  /* 0x80641548@l */
/* 8038194C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80381950  EC 27 00 72 */	fmuls f1, f7, f1
/* 80381954  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80381958  EC 85 00 B2 */	fmuls f4, f5, f2
/* 8038195C  EC 45 02 32 */	fmuls f2, f5, f8
/* 80381960  EC 05 00 32 */	fmuls f0, f5, f0
/* 80381964  EC 86 20 2A */	fadds f4, f6, f4
/* 80381968  EC 43 10 2A */	fadds f2, f3, f2
/* 8038196C  EC 01 00 2A */	fadds f0, f1, f0
/* 80381970  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80381974  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80381978  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_8038197C:
/* 8038197C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80381980  7F 83 E3 78 */	mr r3, r28
/* 80381984  7F E7 FB 78 */	mr r7, r31
/* 80381988  38 81 00 14 */	addi r4, r1, 0x14
/* 8038198C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80381990  38 A1 00 0C */	addi r5, r1, 0xc
/* 80381994  38 C0 00 28 */	li r6, 0x28
/* 80381998  48 00 00 8D */	bl Camera2_request_main_simple
/* 8038199C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803819A0  39 61 00 30 */	addi r11, r1, 0x30
/* 803819A4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803819A8  4B D1 95 75 */	bl func_8009AF1C
/* 803819AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803819B0  7C 08 03 A6 */	mtlr r0
/* 803819B4  38 21 00 40 */	addi r1, r1, 0x40
/* 803819B8  4E 80 00 20 */	blr 

lbl_80478498:
/* 80478498  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8047849C  7C 08 02 A6 */	mflr r0
/* 804784A0  90 01 00 74 */	stw r0, 0x74(r1)
/* 804784A4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804784A8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804784AC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 804784B0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 804784B4  3C 80 80 64 */	lis r4, lit_3216@ha /* 0x80644A34@ha */
/* 804784B8  2C 03 00 00 */	cmpwi r3, 0
/* 804784BC  38 A4 4A 34 */	addi r5, r4, lit_3216@l /* 0x80644A34@l */
/* 804784C0  80 85 00 00 */	lwz r4, 0(r5)
/* 804784C4  80 05 00 04 */	lwz r0, 4(r5)
/* 804784C8  90 81 00 20 */	stw r4, 0x20(r1)
/* 804784CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804784D0  41 80 01 98 */	blt lbl_80478668
/* 804784D4  2C 03 00 04 */	cmpwi r3, 4
/* 804784D8  40 80 01 90 */	bge lbl_80478668
/* 804784DC  3C 80 80 69 */	lis r4, direct_vector@ha /* 0x8068A030@ha */
/* 804784E0  54 60 18 38 */	slwi r0, r3, 3
/* 804784E4  38 64 A0 30 */	addi r3, r4, direct_vector@l /* 0x8068A030@l */
/* 804784E8  38 A1 00 40 */	addi r5, r1, 0x40
/* 804784EC  7C 83 04 2E */	lfsx f4, r3, r0
/* 804784F0  3C 80 80 64 */	lis r4, lit_3236@ha /* 0x80644A3C@ha */
/* 804784F4  C0 04 4A 3C */	lfs f0, lit_3236@l(r4)  /* 0x80644A3C@l */
/* 804784F8  7C 63 02 14 */	add r3, r3, r0
/* 804784FC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80478500  3C 60 80 64 */	lis r3, lit_621@ha /* 0x806449EC@ha */
/* 80478504  EC 60 01 32 */	fmuls f3, f0, f4
/* 80478508  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8047850C  EC 40 00 72 */	fmuls f2, f0, f1
/* 80478510  38 81 00 28 */	addi r4, r1, 0x28
/* 80478514  FC 00 08 50 */	fneg f0, f1
/* 80478518  C0 23 49 EC */	lfs f1, lit_621@l(r3)  /* 0x806449EC@l */
/* 8047851C  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80478520  38 61 00 30 */	addi r3, r1, 0x30
/* 80478524  38 C1 00 38 */	addi r6, r1, 0x38
/* 80478528  38 E1 00 20 */	addi r7, r1, 0x20
/* 8047852C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80478530  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80478534  4B F1 27 2D */	bl mCoBG_GetCrossCircleAndLine2Dvector
/* 80478538  2C 03 00 00 */	cmpwi r3, 0
/* 8047853C  41 82 01 2C */	beq lbl_80478668
/* 80478540  3C 60 80 64 */	lis r3, lit_3237@ha /* 0x80644A40@ha */
/* 80478544  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80478548  C0 83 4A 40 */	lfs f4, lit_3237@l(r3)  /* 0x80644A40@l */
/* 8047854C  38 61 00 18 */	addi r3, r1, 0x18
/* 80478550  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80478554  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80478558  80 A4 52 F0 */	lwz r5, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 8047855C  EC 64 00 32 */	fmuls f3, f4, f0
/* 80478560  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80478564  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80478568  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8047856C  38 81 00 08 */	addi r4, r1, 8
/* 80478570  C0 C5 00 A8 */	lfs f6, 0xa8(r5)
/* 80478574  EC 24 00 72 */	fmuls f1, f4, f1
/* 80478578  C0 E5 00 AC */	lfs f7, 0xac(r5)
/* 8047857C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80478580  C0 A1 00 20 */	lfs f5, 0x20(r1)
/* 80478584  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 80478588  EC 63 30 28 */	fsubs f3, f3, f6
/* 8047858C  EC A5 30 28 */	fsubs f5, f5, f6
/* 80478590  EC 84 38 28 */	fsubs f4, f4, f7
/* 80478594  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80478598  EC 42 38 28 */	fsubs f2, f2, f7
/* 8047859C  EC 21 30 28 */	fsubs f1, f1, f6
/* 804785A0  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 804785A4  EC 00 38 28 */	fsubs f0, f0, f7
/* 804785A8  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 804785AC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804785B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 804785B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804785B8  4B F1 1C 79 */	bl mCoBG_GetVectorProductin2D
/* 804785BC  FF E0 08 90 */	fmr f31, f1
/* 804785C0  38 61 00 18 */	addi r3, r1, 0x18
/* 804785C4  38 81 00 10 */	addi r4, r1, 0x10
/* 804785C8  4B F1 1C 69 */	bl mCoBG_GetVectorProductin2D
/* 804785CC  EF C1 07 F2 */	fmuls f30, f1, f31
/* 804785D0  38 61 00 10 */	addi r3, r1, 0x10
/* 804785D4  38 81 00 18 */	addi r4, r1, 0x18
/* 804785D8  4B F1 1C 59 */	bl mCoBG_GetVectorProductin2D
/* 804785DC  FF E0 08 90 */	fmr f31, f1
/* 804785E0  38 61 00 10 */	addi r3, r1, 0x10
/* 804785E4  38 81 00 08 */	addi r4, r1, 8
/* 804785E8  4B F1 1C 49 */	bl mCoBG_GetVectorProductin2D
/* 804785EC  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 804785F0  EC 21 07 F2 */	fmuls f1, f1, f31
/* 804785F4  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 804785F8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804785FC  4C 40 13 82 */	cror 2, 0, 2
/* 80478600  40 82 00 3C */	bne lbl_8047863C
/* 80478604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80478608  4C 40 13 82 */	cror 2, 0, 2
/* 8047860C  40 82 00 30 */	bne lbl_8047863C
/* 80478610  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80478614  3C 60 80 64 */	lis r3, lit_3236@ha /* 0x80644A3C@ha */
/* 80478618  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8047861C  C0 03 4A 3C */	lfs f0, lit_3236@l(r3)  /* 0x80644A3C@l */
/* 80478620  80 84 00 00 */	lwz r4, 0(r4)
/* 80478624  C0 24 00 B0 */	lfs f1, 0xb0(r4)
/* 80478628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047862C  4C 41 13 82 */	cror 2, 1, 2
/* 80478630  7C 00 00 26 */	mfcr r0
/* 80478634  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 80478638  48 00 00 34 */	b lbl_8047866C
lbl_8047863C:
/* 8047863C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80478640  3C 60 80 64 */	lis r3, lit_3238@ha /* 0x80644A44@ha */
/* 80478644  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 80478648  C0 03 4A 44 */	lfs f0, lit_3238@l(r3)  /* 0x80644A44@l */
/* 8047864C  80 84 00 00 */	lwz r4, 0(r4)
/* 80478650  C0 24 00 B0 */	lfs f1, 0xb0(r4)
/* 80478654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80478658  4C 40 13 82 */	cror 2, 0, 2
/* 8047865C  40 82 00 0C */	bne lbl_80478668
/* 80478660  38 60 00 00 */	li r3, 0
/* 80478664  48 00 00 08 */	b lbl_8047866C
lbl_80478668:
/* 80478668  38 60 00 02 */	li r3, 2
lbl_8047866C:
/* 8047866C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80478670  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80478674  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80478678  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8047867C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80478680  7C 08 03 A6 */	mtlr r0
/* 80478684  38 21 00 70 */	addi r1, r1, 0x70
/* 80478688  4E 80 00 20 */	blr 

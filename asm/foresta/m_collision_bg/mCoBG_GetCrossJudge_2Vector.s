lbl_8038A83C:
/* 8038A83C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8038A840  7C 08 02 A6 */	mflr r0
/* 8038A844  90 01 00 54 */	stw r0, 0x54(r1)
/* 8038A848  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8038A84C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8038A850  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8038A854  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8038A858  39 61 00 30 */	addi r11, r1, 0x30
/* 8038A85C  4B D1 06 75 */	bl func_8009AED0
/* 8038A860  7C 7C 1B 78 */	mr r28, r3
/* 8038A864  7C DF 33 78 */	mr r31, r6
/* 8038A868  C0 06 00 00 */	lfs f0, 0(r6)
/* 8038A86C  7C 9D 23 78 */	mr r29, r4
/* 8038A870  C0 43 00 00 */	lfs f2, 0(r3)
/* 8038A874  7C BE 2B 78 */	mr r30, r5
/* 8038A878  38 61 00 10 */	addi r3, r1, 0x10
/* 8038A87C  38 81 00 08 */	addi r4, r1, 8
/* 8038A880  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038A884  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8038A888  C0 06 00 04 */	lfs f0, 4(r6)
/* 8038A88C  C0 3C 00 04 */	lfs f1, 4(r28)
/* 8038A890  EC 00 08 28 */	fsubs f0, f0, f1
/* 8038A894  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8038A898  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8038A89C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038A8A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8038A8A4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8038A8A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8038A8AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8038A8B0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8038A8B4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038A8B8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8038A8BC  C0 05 00 04 */	lfs f0, 4(r5)
/* 8038A8C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8038A8C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8038A8C8  4B FF F9 69 */	bl mCoBG_GetVectorProductin2D
/* 8038A8CC  FF E0 08 90 */	fmr f31, f1
/* 8038A8D0  38 61 00 10 */	addi r3, r1, 0x10
/* 8038A8D4  38 81 00 18 */	addi r4, r1, 0x18
/* 8038A8D8  4B FF F9 59 */	bl mCoBG_GetVectorProductin2D
/* 8038A8DC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8038A8E0  EF C1 07 F2 */	fmuls f30, f1, f31
/* 8038A8E4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8038A8E8  38 61 00 10 */	addi r3, r1, 0x10
/* 8038A8EC  38 81 00 08 */	addi r4, r1, 8
/* 8038A8F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038A8F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8038A8F8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8038A8FC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8038A900  EC 00 08 28 */	fsubs f0, f0, f1
/* 8038A904  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8038A908  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8038A90C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038A910  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8038A914  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8038A918  EC 00 08 28 */	fsubs f0, f0, f1
/* 8038A91C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8038A920  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8038A924  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038A928  D0 01 00 08 */	stfs f0, 8(r1)
/* 8038A92C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8038A930  EC 00 08 28 */	fsubs f0, f0, f1
/* 8038A934  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8038A938  4B FF F8 F9 */	bl mCoBG_GetVectorProductin2D
/* 8038A93C  FF E0 08 90 */	fmr f31, f1
/* 8038A940  38 61 00 10 */	addi r3, r1, 0x10
/* 8038A944  38 81 00 18 */	addi r4, r1, 0x18
/* 8038A948  4B FF F8 E9 */	bl mCoBG_GetVectorProductin2D
/* 8038A94C  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038A950  EC 21 07 F2 */	fmuls f1, f1, f31
/* 8038A954  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038A958  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8038A95C  40 80 00 14 */	bge lbl_8038A970
/* 8038A960  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038A964  40 80 00 0C */	bge lbl_8038A970
/* 8038A968  38 60 00 01 */	li r3, 1
/* 8038A96C  48 00 00 08 */	b lbl_8038A974
lbl_8038A970:
/* 8038A970  38 60 00 00 */	li r3, 0
lbl_8038A974:
/* 8038A974  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8038A978  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8038A97C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8038A980  39 61 00 30 */	addi r11, r1, 0x30
/* 8038A984  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8038A988  4B D1 05 95 */	bl func_8009AF1C
/* 8038A98C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8038A990  7C 08 03 A6 */	mtlr r0
/* 8038A994  38 21 00 50 */	addi r1, r1, 0x50
/* 8038A998  4E 80 00 20 */	blr 

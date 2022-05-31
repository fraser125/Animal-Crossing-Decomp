lbl_805C5774:
/* 805C5774  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C5778  7C 08 02 A6 */	mflr r0
/* 805C577C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C5780  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805C5784  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805C5788  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805C578C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805C5790  39 61 00 30 */	addi r11, r1, 0x30
/* 805C5794  4B AD 57 41 */	bl func_8009AED4
/* 805C5798  7C 7E 1B 78 */	mr r30, r3
/* 805C579C  FF C0 08 90 */	fmr f30, f1
/* 805C57A0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C57A4  FF E0 10 90 */	fmr f31, f2
/* 805C57A8  7C 9F 23 78 */	mr r31, r4
/* 805C57AC  80 E5 09 90 */	lwz r7, 0x990(r5)
/* 805C57B0  88 C7 00 02 */	lbz r6, 2(r7)
/* 805C57B4  28 06 00 01 */	cmplwi r6, 1
/* 805C57B8  40 82 00 0C */	bne lbl_805C57C4
/* 805C57BC  4B FF FE 35 */	bl mBD_set_point
/* 805C57C0  48 00 01 B4 */	b lbl_805C5974
lbl_805C57C4:
/* 805C57C4  88 07 00 00 */	lbz r0, 0(r7)
/* 805C57C8  83 A5 09 8C */	lwz r29, 0x98c(r5)
/* 805C57CC  2C 00 00 01 */	cmpwi r0, 1
/* 805C57D0  41 82 00 7C */	beq lbl_805C584C
/* 805C57D4  40 80 00 D0 */	bge lbl_805C58A4
/* 805C57D8  2C 00 00 00 */	cmpwi r0, 0
/* 805C57DC  40 80 00 08 */	bge lbl_805C57E4
/* 805C57E0  48 00 00 C4 */	b lbl_805C58A4
lbl_805C57E4:
/* 805C57E4  28 06 00 02 */	cmplwi r6, 2
/* 805C57E8  38 00 00 00 */	li r0, 0
/* 805C57EC  40 82 00 08 */	bne lbl_805C57F4
/* 805C57F0  38 00 00 50 */	li r0, 0x50
lbl_805C57F4:
/* 805C57F4  A8 7D 00 26 */	lha r3, 0x26(r29)
/* 805C57F8  3C 80 43 30 */	lis r4, 0x4330
/* 805C57FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805C5800  3C A0 80 65 */	lis r5, lit_483@ha /* 0x8064ADEC@ha */
/* 805C5804  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805C5808  3C C0 80 65 */	lis r6, lit_665@ha /* 0x8064AE14@ha */
/* 805C580C  90 61 00 0C */	stw r3, 0xc(r1)
/* 805C5810  3C 60 80 65 */	lis r3, lit_503@ha /* 0x8064ADF4@ha */
/* 805C5814  C0 A3 AD F4 */	lfs f5, lit_503@l(r3)  /* 0x8064ADF4@l */
/* 805C5818  90 81 00 08 */	stw r4, 8(r1)
/* 805C581C  C8 45 AD EC */	lfd f2, lit_483@l(r5)  /* 0x8064ADEC@l */
/* 805C5820  FC C0 28 90 */	fmr f6, f5
/* 805C5824  C8 01 00 08 */	lfd f0, 8(r1)
/* 805C5828  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C582C  EC 20 10 28 */	fsubs f1, f0, f2
/* 805C5830  C0 66 AE 14 */	lfs f3, lit_665@l(r6)  /* 0x8064AE14@l */
/* 805C5834  90 81 00 10 */	stw r4, 0x10(r1)
/* 805C5838  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805C583C  EC 00 10 28 */	fsubs f0, f0, f2
/* 805C5840  EC 01 00 2A */	fadds f0, f1, f0
/* 805C5844  EC 83 00 2A */	fadds f4, f3, f0
/* 805C5848  48 00 00 D8 */	b lbl_805C5920
lbl_805C584C:
/* 805C584C  A8 1D 00 26 */	lha r0, 0x26(r29)
/* 805C5850  3C 80 43 30 */	lis r4, 0x4330
/* 805C5854  3C A0 80 65 */	lis r5, lit_483@ha /* 0x8064ADEC@ha */
/* 805C5858  3C C0 80 65 */	lis r6, lit_665@ha /* 0x8064AE14@ha */
/* 805C585C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805C5860  A8 7D 00 24 */	lha r3, 0x24(r29)
/* 805C5864  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C5868  38 03 00 01 */	addi r0, r3, 1
/* 805C586C  3C 60 80 65 */	lis r3, lit_666@ha /* 0x8064AE18@ha */
/* 805C5870  90 81 00 10 */	stw r4, 0x10(r1)
/* 805C5874  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805C5878  C8 45 AD EC */	lfd f2, lit_483@l(r5)  /* 0x8064ADEC@l */
/* 805C587C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805C5880  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C5884  EC 20 10 28 */	fsubs f1, f0, f2
/* 805C5888  C0 66 AE 14 */	lfs f3, lit_665@l(r6)  /* 0x8064AE14@l */
/* 805C588C  90 81 00 08 */	stw r4, 8(r1)
/* 805C5890  C0 C3 AE 18 */	lfs f6, lit_666@l(r3)  /* 0x8064AE18@l */
/* 805C5894  C8 01 00 08 */	lfd f0, 8(r1)
/* 805C5898  EC 83 08 2A */	fadds f4, f3, f1
/* 805C589C  EC A0 10 28 */	fsubs f5, f0, f2
/* 805C58A0  48 00 00 80 */	b lbl_805C5920
lbl_805C58A4:
/* 805C58A4  88 87 00 07 */	lbz r4, 7(r7)
/* 805C58A8  38 67 01 12 */	addi r3, r7, 0x112
/* 805C58AC  38 A0 00 01 */	li r5, 1
/* 805C58B0  4B DE 9E 21 */	bl mFont_GetStringWidth
/* 805C58B4  3C C0 43 30 */	lis r6, 0x4330
/* 805C58B8  A8 1D 00 26 */	lha r0, 0x26(r29)
/* 805C58BC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805C58C0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 805C58C4  3C 80 80 65 */	lis r4, lit_483@ha /* 0x8064ADEC@ha */
/* 805C58C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805C58CC  90 61 00 14 */	stw r3, 0x14(r1)
/* 805C58D0  3C A0 80 65 */	lis r5, lit_667@ha /* 0x8064AE1C@ha */
/* 805C58D4  C8 64 AD EC */	lfd f3, lit_483@l(r4)  /* 0x8064ADEC@l */
/* 805C58D8  38 E5 AE 1C */	addi r7, r5, lit_667@l /* 0x8064AE1C@l */
/* 805C58DC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805C58E0  3C 60 80 65 */	lis r3, lit_665@ha /* 0x8064AE14@ha */
/* 805C58E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C58E8  38 A3 AE 14 */	addi r5, r3, lit_665@l /* 0x8064AE14@l */
/* 805C58EC  EC 40 18 28 */	fsubs f2, f0, f3
/* 805C58F0  C0 87 00 00 */	lfs f4, 0(r7)
/* 805C58F4  90 C1 00 08 */	stw r6, 8(r1)
/* 805C58F8  3C 80 80 65 */	lis r4, lit_480@ha /* 0x8064ADE0@ha */
/* 805C58FC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C5900  3C 60 80 65 */	lis r3, lit_668@ha /* 0x8064AE20@ha */
/* 805C5904  C8 01 00 08 */	lfd f0, 8(r1)
/* 805C5908  EC 84 10 28 */	fsubs f4, f4, f2
/* 805C590C  C0 A4 AD E0 */	lfs f5, lit_480@l(r4)  /* 0x8064ADE0@l */
/* 805C5910  EC 00 18 28 */	fsubs f0, f0, f3
/* 805C5914  C0 C3 AE 20 */	lfs f6, lit_668@l(r3)  /* 0x8064AE20@l */
/* 805C5918  EC 01 00 2A */	fadds f0, f1, f0
/* 805C591C  EC 84 00 2A */	fadds f4, f4, f0
lbl_805C5920:
/* 805C5920  3C 60 80 65 */	lis r3, lit_505@ha /* 0x8064ADFC@ha */
/* 805C5924  3C A0 80 65 */	lis r5, lit_669@ha /* 0x8064AE24@ha */
/* 805C5928  38 83 AD FC */	addi r4, r3, lit_505@l /* 0x8064ADFC@l */
/* 805C592C  C0 25 AE 24 */	lfs f1, lit_669@l(r5)  /* 0x8064AE24@l */
/* 805C5930  C0 04 00 00 */	lfs f0, 0(r4)
/* 805C5934  3C 80 80 65 */	lis r4, lit_646@ha /* 0x8064AE0C@ha */
/* 805C5938  38 A4 AE 0C */	addi r5, r4, lit_646@l /* 0x8064AE0C@l */
/* 805C593C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805C5940  EC 00 01 72 */	fmuls f0, f0, f5
/* 805C5944  C0 45 00 00 */	lfs f2, 0(r5)
/* 805C5948  80 83 09 8C */	lwz r4, 0x98c(r3)
/* 805C594C  EC 21 F0 2A */	fadds f1, f1, f30
/* 805C5950  7F C3 F3 78 */	mr r3, r30
/* 805C5954  EC 1F 00 28 */	fsubs f0, f31, f0
/* 805C5958  81 84 00 30 */	lwz r12, 0x30(r4)
/* 805C595C  EC 21 20 2A */	fadds f1, f1, f4
/* 805C5960  7F E4 FB 78 */	mr r4, r31
/* 805C5964  EC 00 30 28 */	fsubs f0, f0, f6
/* 805C5968  EC 42 00 28 */	fsubs f2, f2, f0
/* 805C596C  7D 89 03 A6 */	mtctr r12
/* 805C5970  4E 80 04 21 */	bctrl 
lbl_805C5974:
/* 805C5974  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805C5978  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805C597C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805C5980  39 61 00 30 */	addi r11, r1, 0x30
/* 805C5984  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805C5988  4B AD 55 99 */	bl func_8009AF20
/* 805C598C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C5990  7C 08 03 A6 */	mtlr r0
/* 805C5994  38 21 00 50 */	addi r1, r1, 0x50
/* 805C5998  4E 80 00 20 */	blr 

lbl_804B877C:
/* 804B877C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B8780  7C 08 02 A6 */	mflr r0
/* 804B8784  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B8788  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804B878C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804B8790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804B8794  3B E0 00 00 */	li r31, 0
/* 804B8798  4B BA 45 5D */	bl fqrand
/* 804B879C  3C 60 80 64 */	lis r3, lit_1002@ha /* 0x806460C4@ha */
/* 804B87A0  C0 03 60 C4 */	lfs f0, lit_1002@l(r3)  /* 0x806460C4@l */
/* 804B87A4  EF E0 00 72 */	fmuls f31, f0, f1
/* 804B87A8  4B F2 88 01 */	bl mPr_GetMoneyPower
/* 804B87AC  7C 63 07 34 */	extsh r3, r3
/* 804B87B0  3C 00 43 30 */	lis r0, 0x4330
/* 804B87B4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804B87B8  3C 80 80 64 */	lis r4, lit_770@ha /* 0x806460AC@ha */
/* 804B87BC  90 61 00 0C */	stw r3, 0xc(r1)
/* 804B87C0  38 A4 60 AC */	addi r5, r4, lit_770@l /* 0x806460AC@l */
/* 804B87C4  3C 80 80 64 */	lis r4, lit_1004@ha /* 0x806460CC@ha */
/* 804B87C8  C8 45 00 00 */	lfd f2, 0(r5)
/* 804B87CC  90 01 00 08 */	stw r0, 8(r1)
/* 804B87D0  3C 60 80 64 */	lis r3, lit_1003@ha /* 0x806460C8@ha */
/* 804B87D4  C0 24 60 CC */	lfs f1, lit_1004@l(r4)  /* 0x806460CC@l */
/* 804B87D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 804B87DC  EC 40 10 28 */	fsubs f2, f0, f2
/* 804B87E0  C0 03 60 C8 */	lfs f0, lit_1003@l(r3)  /* 0x806460C8@l */
/* 804B87E4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 804B87E8  EC 00 08 2A */	fadds f0, f0, f1
/* 804B87EC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804B87F0  4C 40 13 82 */	cror 2, 0, 2
/* 804B87F4  41 82 00 20 */	beq lbl_804B8814
/* 804B87F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B87FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B8800  3C 63 00 02 */	addis r3, r3, 2
/* 804B8804  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804B8808  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804B880C  2C 00 00 04 */	cmpwi r0, 4
/* 804B8810  40 82 00 08 */	bne lbl_804B8818
lbl_804B8814:
/* 804B8814  3B E0 00 01 */	li r31, 1
lbl_804B8818:
/* 804B8818  7F E3 FB 78 */	mr r3, r31
/* 804B881C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804B8820  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B8824  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804B8828  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804B882C  7C 08 03 A6 */	mtlr r0
/* 804B8830  38 21 00 30 */	addi r1, r1, 0x30
/* 804B8834  4E 80 00 20 */	blr 

lbl_804C768C:
/* 804C768C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C7690  7C 08 02 A6 */	mflr r0
/* 804C7694  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C7698  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804C769C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804C76A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804C76A4  3B E0 00 00 */	li r31, 0
/* 804C76A8  4B B9 56 4D */	bl fqrand
/* 804C76AC  3C 60 80 64 */	lis r3, lit_1002@ha /* 0x80646214@ha */
/* 804C76B0  C0 03 62 14 */	lfs f0, lit_1002@l(r3)  /* 0x80646214@l */
/* 804C76B4  EF E0 00 72 */	fmuls f31, f0, f1
/* 804C76B8  4B F1 98 F1 */	bl mPr_GetMoneyPower
/* 804C76BC  7C 63 07 34 */	extsh r3, r3
/* 804C76C0  3C 00 43 30 */	lis r0, 0x4330
/* 804C76C4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804C76C8  3C 80 80 64 */	lis r4, lit_770@ha /* 0x806461FC@ha */
/* 804C76CC  90 61 00 0C */	stw r3, 0xc(r1)
/* 804C76D0  38 A4 61 FC */	addi r5, r4, lit_770@l /* 0x806461FC@l */
/* 804C76D4  3C 80 80 64 */	lis r4, lit_1004@ha /* 0x8064621C@ha */
/* 804C76D8  C8 45 00 00 */	lfd f2, 0(r5)
/* 804C76DC  90 01 00 08 */	stw r0, 8(r1)
/* 804C76E0  3C 60 80 64 */	lis r3, lit_1003@ha /* 0x80646218@ha */
/* 804C76E4  C0 24 62 1C */	lfs f1, lit_1004@l(r4)  /* 0x8064621C@l */
/* 804C76E8  C8 01 00 08 */	lfd f0, 8(r1)
/* 804C76EC  EC 40 10 28 */	fsubs f2, f0, f2
/* 804C76F0  C0 03 62 18 */	lfs f0, lit_1003@l(r3)  /* 0x80646218@l */
/* 804C76F4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 804C76F8  EC 00 08 2A */	fadds f0, f0, f1
/* 804C76FC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804C7700  4C 40 13 82 */	cror 2, 0, 2
/* 804C7704  41 82 00 20 */	beq lbl_804C7724
/* 804C7708  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C770C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C7710  3C 63 00 02 */	addis r3, r3, 2
/* 804C7714  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804C7718  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804C771C  2C 00 00 04 */	cmpwi r0, 4
/* 804C7720  40 82 00 08 */	bne lbl_804C7728
lbl_804C7724:
/* 804C7724  3B E0 00 01 */	li r31, 1
lbl_804C7728:
/* 804C7728  7F E3 FB 78 */	mr r3, r31
/* 804C772C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804C7730  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C7734  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804C7738  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804C773C  7C 08 03 A6 */	mtlr r0
/* 804C7740  38 21 00 30 */	addi r1, r1, 0x30
/* 804C7744  4E 80 00 20 */	blr 

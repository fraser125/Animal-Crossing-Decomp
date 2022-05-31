lbl_804C0274:
/* 804C0274  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C0278  7C 08 02 A6 */	mflr r0
/* 804C027C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C0280  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804C0284  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804C0288  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804C028C  3B E0 00 00 */	li r31, 0
/* 804C0290  4B B9 CA 65 */	bl fqrand
/* 804C0294  3C 60 80 64 */	lis r3, lit_1002@ha /* 0x80646174@ha */
/* 804C0298  C0 03 61 74 */	lfs f0, lit_1002@l(r3)  /* 0x80646174@l */
/* 804C029C  EF E0 00 72 */	fmuls f31, f0, f1
/* 804C02A0  4B F2 0D 09 */	bl mPr_GetMoneyPower
/* 804C02A4  7C 63 07 34 */	extsh r3, r3
/* 804C02A8  3C 00 43 30 */	lis r0, 0x4330
/* 804C02AC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804C02B0  3C 80 80 64 */	lis r4, lit_770@ha /* 0x8064615C@ha */
/* 804C02B4  90 61 00 0C */	stw r3, 0xc(r1)
/* 804C02B8  38 A4 61 5C */	addi r5, r4, lit_770@l /* 0x8064615C@l */
/* 804C02BC  3C 80 80 64 */	lis r4, lit_1004@ha /* 0x8064617C@ha */
/* 804C02C0  C8 45 00 00 */	lfd f2, 0(r5)
/* 804C02C4  90 01 00 08 */	stw r0, 8(r1)
/* 804C02C8  3C 60 80 64 */	lis r3, lit_1003@ha /* 0x80646178@ha */
/* 804C02CC  C0 24 61 7C */	lfs f1, lit_1004@l(r4)  /* 0x8064617C@l */
/* 804C02D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 804C02D4  EC 40 10 28 */	fsubs f2, f0, f2
/* 804C02D8  C0 03 61 78 */	lfs f0, lit_1003@l(r3)  /* 0x80646178@l */
/* 804C02DC  EC 21 00 B2 */	fmuls f1, f1, f2
/* 804C02E0  EC 00 08 2A */	fadds f0, f0, f1
/* 804C02E4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804C02E8  4C 40 13 82 */	cror 2, 0, 2
/* 804C02EC  41 82 00 20 */	beq lbl_804C030C
/* 804C02F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C02F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C02F8  3C 63 00 02 */	addis r3, r3, 2
/* 804C02FC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804C0300  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804C0304  2C 00 00 04 */	cmpwi r0, 4
/* 804C0308  40 82 00 08 */	bne lbl_804C0310
lbl_804C030C:
/* 804C030C  3B E0 00 01 */	li r31, 1
lbl_804C0310:
/* 804C0310  7F E3 FB 78 */	mr r3, r31
/* 804C0314  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804C0318  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C031C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804C0320  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804C0324  7C 08 03 A6 */	mtlr r0
/* 804C0328  38 21 00 30 */	addi r1, r1, 0x30
/* 804C032C  4E 80 00 20 */	blr 

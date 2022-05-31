lbl_80395DE4:
/* 80395DE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80395DE8  7C 08 02 A6 */	mflr r0
/* 80395DEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80395DF0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80395DF4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80395DF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80395DFC  7C 7F 1B 78 */	mr r31, r3
/* 80395E00  48 00 01 B1 */	bl getJoystick_X
/* 80395E04  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80395E08  3C 00 43 30 */	lis r0, 0x4330
/* 80395E0C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80395E10  3C 80 80 64 */	lis r4, lit_308@ha /* 0x80641C5C@ha */
/* 80395E14  C8 24 1C 5C */	lfd f1, lit_308@l(r4)  /* 0x80641C5C@l */
/* 80395E18  90 01 00 08 */	stw r0, 8(r1)
/* 80395E1C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80395E20  EF E0 08 28 */	fsubs f31, f0, f1
/* 80395E24  48 00 01 D1 */	bl getJoystick_Y
/* 80395E28  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80395E2C  3C 00 43 30 */	lis r0, 0x4330
/* 80395E30  90 61 00 14 */	stw r3, 0x14(r1)
/* 80395E34  3C 80 80 64 */	lis r4, lit_308@ha /* 0x80641C5C@ha */
/* 80395E38  C8 44 1C 5C */	lfd f2, lit_308@l(r4)  /* 0x80641C5C@l */
/* 80395E3C  FC 20 F8 90 */	fmr f1, f31
/* 80395E40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80395E44  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80395E48  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80395E4C  EC 40 10 28 */	fsubs f2, f0, f2
/* 80395E50  4B FF FC B9 */	bl mCon_calc
/* 80395E54  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80395E58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80395E5C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80395E60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80395E64  7C 08 03 A6 */	mtlr r0
/* 80395E68  38 21 00 30 */	addi r1, r1, 0x30
/* 80395E6C  4E 80 00 20 */	blr 

lbl_80393E70:
/* 80393E70  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80393E74  7C 08 02 A6 */	mflr r0
/* 80393E78  90 01 00 84 */	stw r0, 0x84(r1)
/* 80393E7C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80393E80  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80393E84  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80393E88  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80393E8C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80393E90  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80393E94  7C 7E 1B 79 */	or. r30, r3, r3
/* 80393E98  FF C0 08 90 */	fmr f30, f1
/* 80393E9C  7C 9F 23 78 */	mr r31, r4
/* 80393EA0  41 82 00 18 */	beq lbl_80393EB8
/* 80393EA4  3C 60 80 65 */	lis r3, ground_angle0_4775@ha /* 0x80651074@ha */
/* 80393EA8  84 03 10 74 */	lwzu r0, ground_angle0_4775@l(r3)  /* 0x80651074@l */
/* 80393EAC  90 1E 00 00 */	stw r0, 0(r30)
/* 80393EB0  A0 03 00 04 */	lhz r0, 4(r3)
/* 80393EB4  B0 1E 00 04 */	sth r0, 4(r30)
lbl_80393EB8:
/* 80393EB8  80 DF 00 00 */	lwz r6, 0(r31)
/* 80393EBC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80393EC0  80 BF 00 04 */	lwz r5, 4(r31)
/* 80393EC4  38 81 00 10 */	addi r4, r1, 0x10
/* 80393EC8  80 1F 00 08 */	lwz r0, 8(r31)
/* 80393ECC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80393ED0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80393ED4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80393ED8  4B FF 1D 31 */	bl mCoBG_Wpos2UnitInfo
/* 80393EDC  38 61 00 08 */	addi r3, r1, 8
/* 80393EE0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80393EE4  4B FF 4D 49 */	bl mCoBG_GetBGHeight_Normal
/* 80393EE8  FF E0 08 90 */	fmr f31, f1
/* 80393EEC  7F E3 FB 78 */	mr r3, r31
/* 80393EF0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80393EF4  4B FF B1 7D */	bl mCoBG_GetBGHeight_Column
/* 80393EF8  28 1E 00 00 */	cmplwi r30, 0
/* 80393EFC  41 82 00 3C */	beq lbl_80393F38
/* 80393F00  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80393F04  4C 41 13 82 */	cror 2, 1, 2
/* 80393F08  40 82 00 30 */	bne lbl_80393F38
/* 80393F0C  3C 60 80 64 */	lis r3, lit_4802@ha /* 0x80641BD4@ha */
/* 80393F10  C0 03 1B D4 */	lfs f0, lit_4802@l(r3)  /* 0x80641BD4@l */
/* 80393F14  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80393F18  4C 41 13 82 */	cror 2, 1, 2
/* 80393F1C  40 82 00 1C */	bne lbl_80393F38
/* 80393F20  80 01 00 08 */	lwz r0, 8(r1)
/* 80393F24  EC 3F F0 28 */	fsubs f1, f31, f30
/* 80393F28  90 1E 00 00 */	stw r0, 0(r30)
/* 80393F2C  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80393F30  B0 1E 00 04 */	sth r0, 4(r30)
/* 80393F34  48 00 00 5C */	b lbl_80393F90
lbl_80393F38:
/* 80393F38  3C 60 80 64 */	lis r3, lit_4802@ha /* 0x80641BD4@ha */
/* 80393F3C  C0 43 1B D4 */	lfs f2, lit_4802@l(r3)  /* 0x80641BD4@l */
/* 80393F40  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 80393F44  40 81 00 08 */	ble lbl_80393F4C
/* 80393F48  FC 40 F8 90 */	fmr f2, f31
lbl_80393F4C:
/* 80393F4C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80393F50  40 81 00 0C */	ble lbl_80393F5C
/* 80393F54  FC 00 F8 90 */	fmr f0, f31
/* 80393F58  48 00 00 08 */	b lbl_80393F60
lbl_80393F5C:
/* 80393F5C  FC 00 08 90 */	fmr f0, f1
lbl_80393F60:
/* 80393F60  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80393F64  40 81 00 14 */	ble lbl_80393F78
/* 80393F68  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80393F6C  40 81 00 20 */	ble lbl_80393F8C
/* 80393F70  FC 20 F8 90 */	fmr f1, f31
/* 80393F74  48 00 00 18 */	b lbl_80393F8C
lbl_80393F78:
/* 80393F78  3C 60 80 64 */	lis r3, lit_4802@ha /* 0x80641BD4@ha */
/* 80393F7C  C0 23 1B D4 */	lfs f1, lit_4802@l(r3)  /* 0x80641BD4@l */
/* 80393F80  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80393F84  40 81 00 08 */	ble lbl_80393F8C
/* 80393F88  FC 20 F8 90 */	fmr f1, f31
lbl_80393F8C:
/* 80393F8C  EC 21 F0 28 */	fsubs f1, f1, f30
lbl_80393F90:
/* 80393F90  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80393F94  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80393F98  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80393F9C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80393FA0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80393FA4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80393FA8  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80393FAC  7C 08 03 A6 */	mtlr r0
/* 80393FB0  38 21 00 80 */	addi r1, r1, 0x80
/* 80393FB4  4E 80 00 20 */	blr 

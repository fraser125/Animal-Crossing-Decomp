lbl_804E7D74:
/* 804E7D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E7D78  7C 08 02 A6 */	mflr r0
/* 804E7D7C  3C 80 80 65 */	lis r4, lit_8209@ha /* 0x80648438@ha */
/* 804E7D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E7D84  38 A4 84 38 */	addi r5, r4, lit_8209@l /* 0x80648438@l */
/* 804E7D88  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E7D8C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E7D90  C0 03 01 84 */	lfs f0, 0x184(r3)
/* 804E7D94  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804E7D98  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E7D9C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804E7DA0  40 81 00 A8 */	ble lbl_804E7E48
/* 804E7DA4  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E7DA8  C0 24 65 64 */	lfs f1, lit_603@l(r4)  /* 0x80646564@l */
/* 804E7DAC  EC 01 00 24 */	fdivs f0, f1, f0
/* 804E7DB0  EC 81 00 28 */	fsubs f4, f1, f0
/* 804E7DB4  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 804E7DB8  40 81 00 68 */	ble lbl_804E7E20
/* 804E7DBC  FC 20 20 34 */	frsqrte f1, f4
/* 804E7DC0  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804E7DC4  38 A4 69 F4 */	addi r5, r4, lit_1027@l /* 0x806469F4@l */
/* 804E7DC8  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804E7DCC  C8 65 00 00 */	lfd f3, 0(r5)
/* 804E7DD0  FC 01 00 72 */	fmul f0, f1, f1
/* 804E7DD4  C8 44 69 FC */	lfd f2, lit_1028@l(r4)  /* 0x806469FC@l */
/* 804E7DD8  FC 23 00 72 */	fmul f1, f3, f1
/* 804E7DDC  FC 04 00 32 */	fmul f0, f4, f0
/* 804E7DE0  FC 02 00 28 */	fsub f0, f2, f0
/* 804E7DE4  FC 21 00 32 */	fmul f1, f1, f0
/* 804E7DE8  FC 01 00 72 */	fmul f0, f1, f1
/* 804E7DEC  FC 23 00 72 */	fmul f1, f3, f1
/* 804E7DF0  FC 04 00 32 */	fmul f0, f4, f0
/* 804E7DF4  FC 02 00 28 */	fsub f0, f2, f0
/* 804E7DF8  FC 21 00 32 */	fmul f1, f1, f0
/* 804E7DFC  FC 01 00 72 */	fmul f0, f1, f1
/* 804E7E00  FC 23 00 72 */	fmul f1, f3, f1
/* 804E7E04  FC 04 00 32 */	fmul f0, f4, f0
/* 804E7E08  FC 02 00 28 */	fsub f0, f2, f0
/* 804E7E0C  FC 01 00 32 */	fmul f0, f1, f0
/* 804E7E10  FC 04 00 32 */	fmul f0, f4, f0
/* 804E7E14  FC 00 00 18 */	frsp f0, f0
/* 804E7E18  D0 01 00 08 */	stfs f0, 8(r1)
/* 804E7E1C  C0 81 00 08 */	lfs f4, 8(r1)
lbl_804E7E20:
/* 804E7E20  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E7E24  38 63 00 DC */	addi r3, r3, 0xdc
/* 804E7E28  38 A4 65 64 */	addi r5, r4, lit_603@l /* 0x80646564@l */
/* 804E7E2C  38 80 00 00 */	li r4, 0
/* 804E7E30  C0 05 00 00 */	lfs f0, 0(r5)
/* 804E7E34  38 A0 07 1C */	li r5, 0x71c
/* 804E7E38  38 C0 00 00 */	li r6, 0
/* 804E7E3C  EC 20 20 28 */	fsubs f1, f0, f4
/* 804E7E40  4B ED 34 D1 */	bl add_calc_short_angle2
/* 804E7E44  48 00 00 0C */	b lbl_804E7E50
lbl_804E7E48:
/* 804E7E48  38 00 00 00 */	li r0, 0
/* 804E7E4C  B0 03 00 DC */	sth r0, 0xdc(r3)
lbl_804E7E50:
/* 804E7E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E7E54  7C 08 03 A6 */	mtlr r0
/* 804E7E58  38 21 00 10 */	addi r1, r1, 0x10
/* 804E7E5C  4E 80 00 20 */	blr 

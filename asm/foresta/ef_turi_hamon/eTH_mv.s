lbl_80623CF0:
/* 80623CF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80623CF4  7C 08 02 A6 */	mflr r0
/* 80623CF8  3C 80 80 65 */	lis r4, lit_434@ha /* 0x8064CF34@ha */
/* 80623CFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80623D00  C0 44 CF 34 */	lfs f2, lit_434@l(r4)  /* 0x8064CF34@l */
/* 80623D04  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80623D08  7C 7F 1B 78 */	mr r31, r3
/* 80623D0C  3C 60 80 65 */	lis r3, lit_435@ha /* 0x8064CF38@ha */
/* 80623D10  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80623D14  C0 03 CF 38 */	lfs f0, lit_435@l(r3)  /* 0x8064CF38@l */
/* 80623D18  EC 82 08 28 */	fsubs f4, f2, f1
/* 80623D1C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80623D20  40 81 00 68 */	ble lbl_80623D88
/* 80623D24  FC 20 20 34 */	frsqrte f1, f4
/* 80623D28  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064CF3C@ha */
/* 80623D2C  38 83 CF 3C */	addi r4, r3, lit_436@l /* 0x8064CF3C@l */
/* 80623D30  3C 60 80 65 */	lis r3, lit_437@ha /* 0x8064CF44@ha */
/* 80623D34  C8 64 00 00 */	lfd f3, 0(r4)
/* 80623D38  FC 01 00 72 */	fmul f0, f1, f1
/* 80623D3C  C8 43 CF 44 */	lfd f2, lit_437@l(r3)  /* 0x8064CF44@l */
/* 80623D40  FC 23 00 72 */	fmul f1, f3, f1
/* 80623D44  FC 04 00 32 */	fmul f0, f4, f0
/* 80623D48  FC 02 00 28 */	fsub f0, f2, f0
/* 80623D4C  FC 21 00 32 */	fmul f1, f1, f0
/* 80623D50  FC 01 00 72 */	fmul f0, f1, f1
/* 80623D54  FC 23 00 72 */	fmul f1, f3, f1
/* 80623D58  FC 04 00 32 */	fmul f0, f4, f0
/* 80623D5C  FC 02 00 28 */	fsub f0, f2, f0
/* 80623D60  FC 21 00 32 */	fmul f1, f1, f0
/* 80623D64  FC 01 00 72 */	fmul f0, f1, f1
/* 80623D68  FC 23 00 72 */	fmul f1, f3, f1
/* 80623D6C  FC 04 00 32 */	fmul f0, f4, f0
/* 80623D70  FC 02 00 28 */	fsub f0, f2, f0
/* 80623D74  FC 01 00 32 */	fmul f0, f1, f0
/* 80623D78  FC 04 00 32 */	fmul f0, f4, f0
/* 80623D7C  FC 00 00 18 */	frsp f0, f0
/* 80623D80  D0 01 00 08 */	stfs f0, 8(r1)
/* 80623D84  C0 81 00 08 */	lfs f4, 8(r1)
lbl_80623D88:
/* 80623D88  3C 80 80 65 */	lis r4, lit_434@ha /* 0x8064CF34@ha */
/* 80623D8C  3C 60 80 65 */	lis r3, lit_438@ha /* 0x8064CF4C@ha */
/* 80623D90  C0 04 CF 34 */	lfs f0, lit_434@l(r4)  /* 0x8064CF34@l */
/* 80623D94  C0 63 CF 4C */	lfs f3, lit_438@l(r3)  /* 0x8064CF4C@l */
/* 80623D98  38 7F 00 34 */	addi r3, r31, 0x34
/* 80623D9C  EC 40 20 28 */	fsubs f2, f0, f4
/* 80623DA0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80623DA4  4B D9 74 F1 */	bl add_calc2
/* 80623DA8  A8 9F 00 52 */	lha r4, 0x52(r31)
/* 80623DAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80623DB0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80623DB4  3C 00 43 30 */	lis r0, 0x4330
/* 80623DB8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80623DBC  3C A0 80 65 */	lis r5, lit_420@ha /* 0x8064CF2C@ha */
/* 80623DC0  3C 63 00 02 */	addis r3, r3, 2
/* 80623DC4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80623DC8  38 85 CF 2C */	addi r4, r5, lit_420@l /* 0x8064CF2C@l */
/* 80623DCC  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 80623DD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80623DD4  3C A0 80 65 */	lis r5, lit_435@ha /* 0x8064CF38@ha */
/* 80623DD8  C8 24 00 00 */	lfd f1, 0(r4)
/* 80623DDC  38 C5 CF 38 */	addi r6, r5, lit_435@l /* 0x8064CF38@l */
/* 80623DE0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80623DE4  38 80 00 00 */	li r4, 0
/* 80623DE8  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80623DEC  EC 40 08 28 */	fsubs f2, f0, f1
/* 80623DF0  A8 7F 00 00 */	lha r3, 0(r31)
/* 80623DF4  A8 BF 00 4E */	lha r5, 0x4e(r31)
/* 80623DF8  C0 26 00 00 */	lfs f1, 0(r6)
/* 80623DFC  7D 89 03 A6 */	mtctr r12
/* 80623E00  4E 80 04 21 */	bctrl 
/* 80623E04  FC 00 08 1E */	fctiwz f0, f1
/* 80623E08  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80623E0C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80623E10  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80623E14  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80623E18  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80623E1C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80623E20  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80623E24  A8 7F 00 50 */	lha r3, 0x50(r31)
/* 80623E28  4B D9 6C C9 */	bl sin_s
/* 80623E2C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80623E30  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80623E34  EC 22 00 72 */	fmuls f1, f2, f1
/* 80623E38  EC 00 08 2A */	fadds f0, f0, f1
/* 80623E3C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80623E40  A8 7F 00 50 */	lha r3, 0x50(r31)
/* 80623E44  4B D9 6C 59 */	bl cos_s
/* 80623E48  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80623E4C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80623E50  EC 22 00 72 */	fmuls f1, f2, f1
/* 80623E54  EC 00 08 2A */	fadds f0, f0, f1
/* 80623E58  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80623E5C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80623E60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80623E64  7C 08 03 A6 */	mtlr r0
/* 80623E68  38 21 00 30 */	addi r1, r1, 0x30
/* 80623E6C  4E 80 00 20 */	blr 

lbl_80446C6C:
/* 80446C6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80446C70  7C 08 02 A6 */	mflr r0
/* 80446C74  90 01 00 44 */	stw r0, 0x44(r1)
/* 80446C78  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80446C7C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80446C80  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80446C84  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80446C88  3C A0 80 64 */	lis r5, lit_1101@ha /* 0x80644324@ha */
/* 80446C8C  7C 7E 1B 78 */	mr r30, r3
/* 80446C90  38 65 43 24 */	addi r3, r5, lit_1101@l /* 0x80644324@l */
/* 80446C94  3C 00 43 30 */	lis r0, 0x4330
/* 80446C98  C0 23 00 00 */	lfs f1, 0(r3)
/* 80446C9C  3D 20 80 64 */	lis r9, lit_472@ha /* 0x80644260@ha */
/* 80446CA0  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80446CA4  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80446CA8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80446CAC  7C 9F 23 78 */	mr r31, r4
/* 80446CB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80446CB4  C0 25 42 98 */	lfs f1, lit_588@l(r5)  /* 0x80644298@l */
/* 80446CB8  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80446CBC  3C C0 81 16 */	lis r6, debug_mode@ha /* 0x81166138@ha */
/* 80446CC0  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 80446CC4  C0 A9 42 60 */	lfs f5, lit_472@l(r9)  /* 0x80644260@l */
/* 80446CC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80446CCC  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80446CD0  38 E3 42 C4 */	addi r7, r3, lit_793@l /* 0x806442C4@l */
/* 80446CD4  C8 45 00 00 */	lfd f2, 0(r5)
/* 80446CD8  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80446CDC  C0 67 00 00 */	lfs f3, 0(r7)
/* 80446CE0  FC 00 00 1E */	fctiwz f0, f0
/* 80446CE4  39 03 42 5C */	addi r8, r3, lit_471@l /* 0x8064425C@l */
/* 80446CE8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80446CEC  C0 88 00 00 */	lfs f4, 0(r8)
/* 80446CF0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80446CF4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80446CF8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80446CFC  B0 1E 06 32 */	sth r0, 0x632(r30)
/* 80446D00  A8 9E 06 36 */	lha r4, 0x636(r30)
/* 80446D04  38 04 05 55 */	addi r0, r4, 0x555
/* 80446D08  B0 1E 06 36 */	sth r0, 0x636(r30)
/* 80446D0C  80 66 61 38 */	lwz r3, debug_mode@l(r6)  /* 0x81166138@l */
/* 80446D10  A8 03 1B 42 */	lha r0, 0x1b42(r3)
/* 80446D14  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80446D18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80446D1C  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80446D20  EC 21 10 28 */	fsubs f1, f1, f2
/* 80446D24  EC 23 00 72 */	fmuls f1, f3, f1
/* 80446D28  EC 24 08 2A */	fadds f1, f4, f1
/* 80446D2C  EC 85 08 28 */	fsubs f4, f5, f1
/* 80446D30  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80446D34  40 81 00 68 */	ble lbl_80446D9C
/* 80446D38  FC 20 20 34 */	frsqrte f1, f4
/* 80446D3C  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80446D40  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 80446D44  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80446D48  C8 64 00 00 */	lfd f3, 0(r4)
/* 80446D4C  FC 01 00 72 */	fmul f0, f1, f1
/* 80446D50  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 80446D54  FC 23 00 72 */	fmul f1, f3, f1
/* 80446D58  FC 04 00 32 */	fmul f0, f4, f0
/* 80446D5C  FC 02 00 28 */	fsub f0, f2, f0
/* 80446D60  FC 21 00 32 */	fmul f1, f1, f0
/* 80446D64  FC 01 00 72 */	fmul f0, f1, f1
/* 80446D68  FC 23 00 72 */	fmul f1, f3, f1
/* 80446D6C  FC 04 00 32 */	fmul f0, f4, f0
/* 80446D70  FC 02 00 28 */	fsub f0, f2, f0
/* 80446D74  FC 21 00 32 */	fmul f1, f1, f0
/* 80446D78  FC 01 00 72 */	fmul f0, f1, f1
/* 80446D7C  FC 23 00 72 */	fmul f1, f3, f1
/* 80446D80  FC 04 00 32 */	fmul f0, f4, f0
/* 80446D84  FC 02 00 28 */	fsub f0, f2, f0
/* 80446D88  FC 01 00 32 */	fmul f0, f1, f0
/* 80446D8C  FC 04 00 32 */	fmul f0, f4, f0
/* 80446D90  FC 00 00 18 */	frsp f0, f0
/* 80446D94  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80446D98  C0 81 00 14 */	lfs f4, 0x14(r1)
lbl_80446D9C:
/* 80446D9C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80446DA0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80446DA4  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 80446DA8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80446DAC  EC 22 20 28 */	fsubs f1, f2, f4
/* 80446DB0  EF E2 08 28 */	fsubs f31, f2, f1
/* 80446DB4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80446DB8  40 81 00 68 */	ble lbl_80446E20
/* 80446DBC  FC 20 F8 34 */	frsqrte f1, f31
/* 80446DC0  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80446DC4  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 80446DC8  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80446DCC  C8 64 00 00 */	lfd f3, 0(r4)
/* 80446DD0  FC 01 00 72 */	fmul f0, f1, f1
/* 80446DD4  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 80446DD8  FC 23 00 72 */	fmul f1, f3, f1
/* 80446DDC  FC 1F 00 32 */	fmul f0, f31, f0
/* 80446DE0  FC 02 00 28 */	fsub f0, f2, f0
/* 80446DE4  FC 21 00 32 */	fmul f1, f1, f0
/* 80446DE8  FC 01 00 72 */	fmul f0, f1, f1
/* 80446DEC  FC 23 00 72 */	fmul f1, f3, f1
/* 80446DF0  FC 1F 00 32 */	fmul f0, f31, f0
/* 80446DF4  FC 02 00 28 */	fsub f0, f2, f0
/* 80446DF8  FC 21 00 32 */	fmul f1, f1, f0
/* 80446DFC  FC 01 00 72 */	fmul f0, f1, f1
/* 80446E00  FC 23 00 72 */	fmul f1, f3, f1
/* 80446E04  FC 1F 00 32 */	fmul f0, f31, f0
/* 80446E08  FC 02 00 28 */	fsub f0, f2, f0
/* 80446E0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80446E10  FC 1F 00 32 */	fmul f0, f31, f0
/* 80446E14  FC 00 00 18 */	frsp f0, f0
/* 80446E18  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80446E1C  C3 E1 00 10 */	lfs f31, 0x10(r1)
lbl_80446E20:
/* 80446E20  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 80446E24  4B F7 3C CD */	bl sin_s
/* 80446E28  A8 BE 06 32 */	lha r5, 0x632(r30)
/* 80446E2C  3C 00 43 30 */	lis r0, 0x4330
/* 80446E30  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80446E34  90 01 00 20 */	stw r0, 0x20(r1)
/* 80446E38  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80446E3C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80446E40  90 A1 00 24 */	stw r5, 0x24(r1)
/* 80446E44  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80446E48  C8 46 00 00 */	lfd f2, 0(r6)
/* 80446E4C  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80446E50  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80446E54  38 7E 06 0E */	addi r3, r30, 0x60e
/* 80446E58  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 80446E5C  38 A0 05 55 */	li r5, 0x555
/* 80446E60  EC 40 10 28 */	fsubs f2, f0, f2
/* 80446E64  C0 04 00 00 */	lfs f0, 0(r4)
/* 80446E68  38 C0 00 2D */	li r6, 0x2d
/* 80446E6C  EC 42 00 72 */	fmuls f2, f2, f1
/* 80446E70  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80446E74  FC 00 10 1E */	fctiwz f0, f2
/* 80446E78  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80446E7C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80446E80  7C 00 22 14 */	add r0, r0, r4
/* 80446E84  7C 04 07 34 */	extsh r4, r0
/* 80446E88  4B F7 44 89 */	bl add_calc_short_angle2
/* 80446E8C  3C 80 80 64 */	lis r4, lit_1680@ha /* 0x8064435C@ha */
/* 80446E90  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 80446E94  38 C4 43 5C */	addi r6, r4, lit_1680@l /* 0x8064435C@l */
/* 80446E98  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 80446E9C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80446EA0  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80446EA4  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 80446EA8  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 80446EAC  FC 60 30 34 */	frsqrte f3, f6
/* 80446EB0  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80446EB4  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80446EB8  C8 86 00 00 */	lfd f4, 0(r6)
/* 80446EBC  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80446EC0  C0 45 00 00 */	lfs f2, 0(r5)
/* 80446EC4  FC 23 00 F2 */	fmul f1, f3, f3
/* 80446EC8  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80446ECC  FC 65 00 F2 */	fmul f3, f5, f3
/* 80446ED0  FC 26 00 72 */	fmul f1, f6, f1
/* 80446ED4  FC 24 08 28 */	fsub f1, f4, f1
/* 80446ED8  FC 63 00 72 */	fmul f3, f3, f1
/* 80446EDC  FC 23 00 F2 */	fmul f1, f3, f3
/* 80446EE0  FC 65 00 F2 */	fmul f3, f5, f3
/* 80446EE4  FC 26 00 72 */	fmul f1, f6, f1
/* 80446EE8  FC 24 08 28 */	fsub f1, f4, f1
/* 80446EEC  FC 63 00 72 */	fmul f3, f3, f1
/* 80446EF0  FC 23 00 F2 */	fmul f1, f3, f3
/* 80446EF4  FC 65 00 F2 */	fmul f3, f5, f3
/* 80446EF8  FC 26 00 72 */	fmul f1, f6, f1
/* 80446EFC  FC 24 08 28 */	fsub f1, f4, f1
/* 80446F00  FC 23 00 72 */	fmul f1, f3, f1
/* 80446F04  FC 26 00 72 */	fmul f1, f6, f1
/* 80446F08  FC 20 08 18 */	frsp f1, f1
/* 80446F0C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80446F10  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80446F14  EC 22 08 28 */	fsubs f1, f2, f1
/* 80446F18  EC 42 08 28 */	fsubs f2, f2, f1
/* 80446F1C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80446F20  40 81 00 54 */	ble lbl_80446F74
/* 80446F24  FC 20 10 34 */	frsqrte f1, f2
/* 80446F28  FC 01 00 72 */	fmul f0, f1, f1
/* 80446F2C  FC 25 00 72 */	fmul f1, f5, f1
/* 80446F30  FC 02 00 32 */	fmul f0, f2, f0
/* 80446F34  FC 04 00 28 */	fsub f0, f4, f0
/* 80446F38  FC 21 00 32 */	fmul f1, f1, f0
/* 80446F3C  FC 01 00 72 */	fmul f0, f1, f1
/* 80446F40  FC 25 00 72 */	fmul f1, f5, f1
/* 80446F44  FC 02 00 32 */	fmul f0, f2, f0
/* 80446F48  FC 04 00 28 */	fsub f0, f4, f0
/* 80446F4C  FC 21 00 32 */	fmul f1, f1, f0
/* 80446F50  FC 01 00 72 */	fmul f0, f1, f1
/* 80446F54  FC 25 00 72 */	fmul f1, f5, f1
/* 80446F58  FC 02 00 32 */	fmul f0, f2, f0
/* 80446F5C  FC 04 00 28 */	fsub f0, f4, f0
/* 80446F60  FC 01 00 32 */	fmul f0, f1, f0
/* 80446F64  FC 02 00 32 */	fmul f0, f2, f0
/* 80446F68  FC 00 00 18 */	frsp f0, f0
/* 80446F6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80446F70  C0 41 00 08 */	lfs f2, 8(r1)
lbl_80446F74:
/* 80446F74  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80446F78  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 80446F7C  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80446F80  38 7E 06 1C */	addi r3, r30, 0x61c
/* 80446F84  C0 05 00 00 */	lfs f0, 0(r5)
/* 80446F88  38 A0 03 8E */	li r5, 0x38e
/* 80446F8C  38 C0 00 2D */	li r6, 0x2d
/* 80446F90  EC 20 10 28 */	fsubs f1, f0, f2
/* 80446F94  4B F7 43 7D */	bl add_calc_short_angle2
/* 80446F98  A8 7E 06 22 */	lha r3, 0x622(r30)
/* 80446F9C  7C 60 07 35 */	extsh. r0, r3
/* 80446FA0  7C 03 00 D0 */	neg r0, r3
/* 80446FA4  41 80 00 08 */	blt lbl_80446FAC
/* 80446FA8  7C 60 1B 78 */	mr r0, r3
lbl_80446FAC:
/* 80446FAC  2C 00 00 B6 */	cmpwi r0, 0xb6
/* 80446FB0  40 80 00 10 */	bge lbl_80446FC0
/* 80446FB4  7F C3 F3 78 */	mr r3, r30
/* 80446FB8  7F E4 FB 78 */	mr r4, r31
/* 80446FBC  4B FF F4 AD */	bl mfish_sfish_normal_init
lbl_80446FC0:
/* 80446FC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80446FC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80446FC8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80446FCC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80446FD0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80446FD4  7C 08 03 A6 */	mtlr r0
/* 80446FD8  38 21 00 40 */	addi r1, r1, 0x40
/* 80446FDC  4E 80 00 20 */	blr 

lbl_80451C48:
/* 80451C48  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80451C4C  7C 08 02 A6 */	mflr r0
/* 80451C50  90 01 00 84 */	stw r0, 0x84(r1)
/* 80451C54  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80451C58  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80451C5C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80451C60  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80451C64  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80451C68  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80451C6C  39 61 00 50 */	addi r11, r1, 0x50
/* 80451C70  4B C4 92 65 */	bl func_8009AED4
/* 80451C74  7C 7E 1B 78 */	mr r30, r3
/* 80451C78  3C A0 80 68 */	lis r5, unagi_normal_to_reverse_rail_pos@ha /* 0x80685F94@ha */
/* 80451C7C  A8 63 06 1C */	lha r3, 0x61c(r3)
/* 80451C80  7C 9D 23 78 */	mr r29, r4
/* 80451C84  3B E5 5F 94 */	addi r31, r5, unagi_normal_to_reverse_rail_pos@l /* 0x80685F94@l */
/* 80451C88  4B F6 8E 15 */	bl cos_s
/* 80451C8C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80451C90  FF E0 08 90 */	fmr f31, f1
/* 80451C94  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80451C98  C3 BE 05 E8 */	lfs f29, 0x5e8(r30)
/* 80451C9C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80451CA0  40 80 00 08 */	bge lbl_80451CA8
/* 80451CA4  FF E0 00 90 */	fmr f31, f0
lbl_80451CA8:
/* 80451CA8  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80451CAC  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80451CB0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80451CB4  7C 9F 02 14 */	add r4, r31, r0
/* 80451CB8  4B F6 93 1D */	bl search_position_distance
/* 80451CBC  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80451CC0  FF C0 08 90 */	fmr f30, f1
/* 80451CC4  FC 20 E8 90 */	fmr f1, f29
/* 80451CC8  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80451CCC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80451CD0  7C 9F 02 14 */	add r4, r31, r0
/* 80451CD4  4B F6 90 09 */	bl chase_xyz_t
/* 80451CD8  FC 20 0A 10 */	fabs f1, f1
/* 80451CDC  3C 60 80 64 */	lis r3, lit_3475@ha /* 0x806443C8@ha */
/* 80451CE0  C0 03 43 C8 */	lfs f0, lit_3475@l(r3)  /* 0x806443C8@l */
/* 80451CE4  FC 20 08 18 */	frsp f1, f1
/* 80451CE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80451CEC  40 80 00 8C */	bge lbl_80451D78
/* 80451CF0  A8 7E 06 40 */	lha r3, 0x640(r30)
/* 80451CF4  2C 03 00 0B */	cmpwi r3, 0xb
/* 80451CF8  40 80 00 10 */	bge lbl_80451D08
/* 80451CFC  38 03 00 01 */	addi r0, r3, 1
/* 80451D00  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 80451D04  48 00 00 28 */	b lbl_80451D2C
lbl_80451D08:
/* 80451D08  38 00 00 00 */	li r0, 0
/* 80451D0C  7F C3 F3 78 */	mr r3, r30
/* 80451D10  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 80451D14  4B FF F4 19 */	bl mfish_unagi_get_next_rail_type
/* 80451D18  B0 7E 06 46 */	sth r3, 0x646(r30)
/* 80451D1C  7F C3 F3 78 */	mr r3, r30
/* 80451D20  7F A4 EB 78 */	mr r4, r29
/* 80451D24  48 00 02 BD */	bl mfish_unagi_rail_move_reverse_init
/* 80451D28  48 00 02 88 */	b lbl_80451FB0
lbl_80451D2C:
/* 80451D2C  A8 7E 06 42 */	lha r3, 0x642(r30)
/* 80451D30  2C 03 00 0B */	cmpwi r3, 0xb
/* 80451D34  40 80 00 10 */	bge lbl_80451D44
/* 80451D38  38 03 00 01 */	addi r0, r3, 1
/* 80451D3C  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80451D40  48 00 00 0C */	b lbl_80451D4C
lbl_80451D44:
/* 80451D44  38 00 00 00 */	li r0, 0
/* 80451D48  B0 1E 06 42 */	sth r0, 0x642(r30)
lbl_80451D4C:
/* 80451D4C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80451D50  EF BD F0 28 */	fsubs f29, f29, f30
/* 80451D54  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80451D58  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80451D5C  40 81 00 1C */	ble lbl_80451D78
/* 80451D60  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80451D64  FC 20 E8 90 */	fmr f1, f29
/* 80451D68  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80451D6C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80451D70  7C 9F 02 14 */	add r4, r31, r0
/* 80451D74  4B F6 8F 69 */	bl chase_xyz_t
lbl_80451D78:
/* 80451D78  7F C3 F3 78 */	mr r3, r30
/* 80451D7C  4B FF F4 15 */	bl mfish_unagi_aim_wind_angle_calc
/* 80451D80  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80451D84  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80451D88  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80451D8C  7C 9F 02 14 */	add r4, r31, r0
/* 80451D90  4B F6 93 A1 */	bl search_position_angleY
/* 80451D94  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80451D98  38 C4 42 4C */	addi r6, r4, lit_469@l /* 0x8064424C@l */
/* 80451D9C  C8 A6 00 00 */	lfd f5, 0(r6)
/* 80451DA0  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80451DA4  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 80451DA8  C8 86 00 00 */	lfd f4, 0(r6)
/* 80451DAC  FC 40 28 34 */	frsqrte f2, f5
/* 80451DB0  C8 65 00 00 */	lfd f3, 0(r5)
/* 80451DB4  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80451DB8  38 A0 01 C7 */	li r5, 0x1c7
/* 80451DBC  C0 04 42 60 */	lfs f0, lit_472@l(r4)  /* 0x80644260@l */
/* 80451DC0  7C 64 1B 78 */	mr r4, r3
/* 80451DC4  FC 22 00 B2 */	fmul f1, f2, f2
/* 80451DC8  38 7E 06 14 */	addi r3, r30, 0x614
/* 80451DCC  38 C0 00 2D */	li r6, 0x2d
/* 80451DD0  FC 44 00 B2 */	fmul f2, f4, f2
/* 80451DD4  FC 25 00 72 */	fmul f1, f5, f1
/* 80451DD8  FC 23 08 28 */	fsub f1, f3, f1
/* 80451DDC  FC 42 00 72 */	fmul f2, f2, f1
/* 80451DE0  FC 22 00 B2 */	fmul f1, f2, f2
/* 80451DE4  FC 44 00 B2 */	fmul f2, f4, f2
/* 80451DE8  FC 25 00 72 */	fmul f1, f5, f1
/* 80451DEC  FC 23 08 28 */	fsub f1, f3, f1
/* 80451DF0  FC 42 00 72 */	fmul f2, f2, f1
/* 80451DF4  FC 22 00 B2 */	fmul f1, f2, f2
/* 80451DF8  FC 44 00 B2 */	fmul f2, f4, f2
/* 80451DFC  FC 25 00 72 */	fmul f1, f5, f1
/* 80451E00  FC 23 08 28 */	fsub f1, f3, f1
/* 80451E04  FC 22 00 72 */	fmul f1, f2, f1
/* 80451E08  FC 25 00 72 */	fmul f1, f5, f1
/* 80451E0C  FC 20 08 18 */	frsp f1, f1
/* 80451E10  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80451E14  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80451E18  EC 20 08 28 */	fsubs f1, f0, f1
/* 80451E1C  4B F6 94 F5 */	bl add_calc_short_angle2
/* 80451E20  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 80451E24  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80451E28  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 80451E2C  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 80451E30  C8 E5 00 00 */	lfd f7, 0(r5)
/* 80451E34  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80451E38  38 E3 42 54 */	addi r7, r3, lit_470@l /* 0x80644254@l */
/* 80451E3C  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 80451E40  FC 20 38 34 */	frsqrte f1, f7
/* 80451E44  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80451E48  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80451E4C  3C 00 43 30 */	lis r0, 0x4330
/* 80451E50  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80451E54  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80451E58  FC 01 00 72 */	fmul f0, f1, f1
/* 80451E5C  C8 46 00 00 */	lfd f2, 0(r6)
/* 80451E60  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80451E64  C8 87 00 00 */	lfd f4, 0(r7)
/* 80451E68  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80451E6C  FC A6 00 72 */	fmul f5, f6, f1
/* 80451E70  FC 07 00 32 */	fmul f0, f7, f0
/* 80451E74  90 01 00 18 */	stw r0, 0x18(r1)
/* 80451E78  38 7E 06 32 */	addi r3, r30, 0x632
/* 80451E7C  38 A0 00 88 */	li r5, 0x88
/* 80451E80  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80451E84  38 C0 00 00 */	li r6, 0
/* 80451E88  FC 64 00 28 */	fsub f3, f4, f0
/* 80451E8C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80451E90  EC 21 10 28 */	fsubs f1, f1, f2
/* 80451E94  FC 65 00 F2 */	fmul f3, f5, f3
/* 80451E98  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80451E9C  FC 43 00 F2 */	fmul f2, f3, f3
/* 80451EA0  FC 20 08 1E */	fctiwz f1, f1
/* 80451EA4  FC 66 00 F2 */	fmul f3, f6, f3
/* 80451EA8  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 80451EAC  FC 47 00 B2 */	fmul f2, f7, f2
/* 80451EB0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80451EB4  FC 24 10 28 */	fsub f1, f4, f2
/* 80451EB8  FC 43 00 72 */	fmul f2, f3, f1
/* 80451EBC  FC 22 00 B2 */	fmul f1, f2, f2
/* 80451EC0  FC 46 00 B2 */	fmul f2, f6, f2
/* 80451EC4  FC 27 00 72 */	fmul f1, f7, f1
/* 80451EC8  FC 24 08 28 */	fsub f1, f4, f1
/* 80451ECC  FC 22 00 72 */	fmul f1, f2, f1
/* 80451ED0  FC 27 00 72 */	fmul f1, f7, f1
/* 80451ED4  FC 20 08 18 */	frsp f1, f1
/* 80451ED8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80451EDC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80451EE0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80451EE4  4B F6 94 2D */	bl add_calc_short_angle2
/* 80451EE8  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 80451EEC  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80451EF0  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 80451EF4  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 80451EF8  C8 E5 00 00 */	lfd f7, 0(r5)
/* 80451EFC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80451F00  38 E3 42 54 */	addi r7, r3, lit_470@l /* 0x80644254@l */
/* 80451F04  A8 1E 06 16 */	lha r0, 0x616(r30)
/* 80451F08  FC 20 38 34 */	frsqrte f1, f7
/* 80451F0C  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80451F10  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80451F14  3C 00 43 30 */	lis r0, 0x4330
/* 80451F18  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80451F1C  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80451F20  FC 01 00 72 */	fmul f0, f1, f1
/* 80451F24  C8 46 00 00 */	lfd f2, 0(r6)
/* 80451F28  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80451F2C  C8 87 00 00 */	lfd f4, 0(r7)
/* 80451F30  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80451F34  FC A6 00 72 */	fmul f5, f6, f1
/* 80451F38  FC 07 00 32 */	fmul f0, f7, f0
/* 80451F3C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80451F40  38 7E 06 44 */	addi r3, r30, 0x644
/* 80451F44  38 A0 00 12 */	li r5, 0x12
/* 80451F48  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80451F4C  38 C0 00 00 */	li r6, 0
/* 80451F50  FC 64 00 28 */	fsub f3, f4, f0
/* 80451F54  C0 04 00 00 */	lfs f0, 0(r4)
/* 80451F58  EC 21 10 28 */	fsubs f1, f1, f2
/* 80451F5C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80451F60  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80451F64  FC 43 00 F2 */	fmul f2, f3, f3
/* 80451F68  FC 20 08 1E */	fctiwz f1, f1
/* 80451F6C  FC 66 00 F2 */	fmul f3, f6, f3
/* 80451F70  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 80451F74  FC 47 00 B2 */	fmul f2, f7, f2
/* 80451F78  80 81 00 34 */	lwz r4, 0x34(r1)
/* 80451F7C  FC 24 10 28 */	fsub f1, f4, f2
/* 80451F80  FC 43 00 72 */	fmul f2, f3, f1
/* 80451F84  FC 22 00 B2 */	fmul f1, f2, f2
/* 80451F88  FC 46 00 B2 */	fmul f2, f6, f2
/* 80451F8C  FC 27 00 72 */	fmul f1, f7, f1
/* 80451F90  FC 24 08 28 */	fsub f1, f4, f1
/* 80451F94  FC 22 00 72 */	fmul f1, f2, f1
/* 80451F98  FC 27 00 72 */	fmul f1, f7, f1
/* 80451F9C  FC 20 08 18 */	frsp f1, f1
/* 80451FA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80451FA4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80451FA8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80451FAC  4B F6 93 65 */	bl add_calc_short_angle2
lbl_80451FB0:
/* 80451FB0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80451FB4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80451FB8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80451FBC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80451FC0  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80451FC4  39 61 00 50 */	addi r11, r1, 0x50
/* 80451FC8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80451FCC  4B C4 8F 55 */	bl func_8009AF20
/* 80451FD0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80451FD4  7C 08 03 A6 */	mtlr r0
/* 80451FD8  38 21 00 80 */	addi r1, r1, 0x80
/* 80451FDC  4E 80 00 20 */	blr 

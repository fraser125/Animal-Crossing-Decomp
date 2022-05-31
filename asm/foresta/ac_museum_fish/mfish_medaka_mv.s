lbl_80449C90:
/* 80449C90  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80449C94  7C 08 02 A6 */	mflr r0
/* 80449C98  90 01 00 44 */	stw r0, 0x44(r1)
/* 80449C9C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80449CA0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80449CA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80449CA8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80449CAC  7C 7E 1B 78 */	mr r30, r3
/* 80449CB0  7C 9F 23 78 */	mr r31, r4
/* 80449CB4  81 83 00 34 */	lwz r12, 0x34(r3)
/* 80449CB8  7D 89 03 A6 */	mtctr r12
/* 80449CBC  4E 80 04 21 */	bctrl 
/* 80449CC0  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 80449CC4  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80449CC8  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 80449CCC  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 80449CD0  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80449CD4  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80449CD8  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 80449CDC  FC 60 30 34 */	frsqrte f3, f6
/* 80449CE0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80449CE4  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80449CE8  C8 85 00 00 */	lfd f4, 0(r5)
/* 80449CEC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80449CF0  C0 44 00 00 */	lfs f2, 0(r4)
/* 80449CF4  FC 23 00 F2 */	fmul f1, f3, f3
/* 80449CF8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80449CFC  FC 65 00 F2 */	fmul f3, f5, f3
/* 80449D00  FC 26 00 72 */	fmul f1, f6, f1
/* 80449D04  FC 24 08 28 */	fsub f1, f4, f1
/* 80449D08  FC 63 00 72 */	fmul f3, f3, f1
/* 80449D0C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80449D10  FC 65 00 F2 */	fmul f3, f5, f3
/* 80449D14  FC 26 00 72 */	fmul f1, f6, f1
/* 80449D18  FC 24 08 28 */	fsub f1, f4, f1
/* 80449D1C  FC 63 00 72 */	fmul f3, f3, f1
/* 80449D20  FC 23 00 F2 */	fmul f1, f3, f3
/* 80449D24  FC 65 00 F2 */	fmul f3, f5, f3
/* 80449D28  FC 26 00 72 */	fmul f1, f6, f1
/* 80449D2C  FC 24 08 28 */	fsub f1, f4, f1
/* 80449D30  FC 23 00 72 */	fmul f1, f3, f1
/* 80449D34  FC 26 00 72 */	fmul f1, f6, f1
/* 80449D38  FC 20 08 18 */	frsp f1, f1
/* 80449D3C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80449D40  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80449D44  EC 22 08 28 */	fsubs f1, f2, f1
/* 80449D48  EC 42 08 28 */	fsubs f2, f2, f1
/* 80449D4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80449D50  40 81 00 54 */	ble lbl_80449DA4
/* 80449D54  FC 20 10 34 */	frsqrte f1, f2
/* 80449D58  FC 01 00 72 */	fmul f0, f1, f1
/* 80449D5C  FC 25 00 72 */	fmul f1, f5, f1
/* 80449D60  FC 02 00 32 */	fmul f0, f2, f0
/* 80449D64  FC 04 00 28 */	fsub f0, f4, f0
/* 80449D68  FC 21 00 32 */	fmul f1, f1, f0
/* 80449D6C  FC 01 00 72 */	fmul f0, f1, f1
/* 80449D70  FC 25 00 72 */	fmul f1, f5, f1
/* 80449D74  FC 02 00 32 */	fmul f0, f2, f0
/* 80449D78  FC 04 00 28 */	fsub f0, f4, f0
/* 80449D7C  FC 21 00 32 */	fmul f1, f1, f0
/* 80449D80  FC 01 00 72 */	fmul f0, f1, f1
/* 80449D84  FC 25 00 72 */	fmul f1, f5, f1
/* 80449D88  FC 02 00 32 */	fmul f0, f2, f0
/* 80449D8C  FC 04 00 28 */	fsub f0, f4, f0
/* 80449D90  FC 01 00 32 */	fmul f0, f1, f0
/* 80449D94  FC 02 00 32 */	fmul f0, f2, f0
/* 80449D98  FC 00 00 18 */	frsp f0, f0
/* 80449D9C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80449DA0  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_80449DA4:
/* 80449DA4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80449DA8  A8 9E 06 12 */	lha r4, 0x612(r30)
/* 80449DAC  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80449DB0  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80449DB4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80449DB8  38 A0 01 3E */	li r5, 0x13e
/* 80449DBC  38 C0 00 2D */	li r6, 0x2d
/* 80449DC0  EC 20 10 28 */	fsubs f1, f0, f2
/* 80449DC4  4B F7 15 4D */	bl add_calc_short_angle2
/* 80449DC8  3C 80 80 64 */	lis r4, lit_1680@ha /* 0x8064435C@ha */
/* 80449DCC  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 80449DD0  38 C4 43 5C */	addi r6, r4, lit_1680@l /* 0x8064435C@l */
/* 80449DD4  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 80449DD8  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80449DDC  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80449DE0  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 80449DE4  B0 7E 06 1E */	sth r3, 0x61e(r30)
/* 80449DE8  FC 60 30 34 */	frsqrte f3, f6
/* 80449DEC  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80449DF0  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80449DF4  C8 86 00 00 */	lfd f4, 0(r6)
/* 80449DF8  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80449DFC  C0 45 00 00 */	lfs f2, 0(r5)
/* 80449E00  FC 23 00 F2 */	fmul f1, f3, f3
/* 80449E04  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80449E08  FC 65 00 F2 */	fmul f3, f5, f3
/* 80449E0C  FC 26 00 72 */	fmul f1, f6, f1
/* 80449E10  FC 24 08 28 */	fsub f1, f4, f1
/* 80449E14  FC 63 00 72 */	fmul f3, f3, f1
/* 80449E18  FC 23 00 F2 */	fmul f1, f3, f3
/* 80449E1C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80449E20  FC 26 00 72 */	fmul f1, f6, f1
/* 80449E24  FC 24 08 28 */	fsub f1, f4, f1
/* 80449E28  FC 63 00 72 */	fmul f3, f3, f1
/* 80449E2C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80449E30  FC 65 00 F2 */	fmul f3, f5, f3
/* 80449E34  FC 26 00 72 */	fmul f1, f6, f1
/* 80449E38  FC 24 08 28 */	fsub f1, f4, f1
/* 80449E3C  FC 23 00 72 */	fmul f1, f3, f1
/* 80449E40  FC 26 00 72 */	fmul f1, f6, f1
/* 80449E44  FC 20 08 18 */	frsp f1, f1
/* 80449E48  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80449E4C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80449E50  EC 22 08 28 */	fsubs f1, f2, f1
/* 80449E54  EC 42 08 28 */	fsubs f2, f2, f1
/* 80449E58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80449E5C  40 81 00 54 */	ble lbl_80449EB0
/* 80449E60  FC 20 10 34 */	frsqrte f1, f2
/* 80449E64  FC 01 00 72 */	fmul f0, f1, f1
/* 80449E68  FC 25 00 72 */	fmul f1, f5, f1
/* 80449E6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80449E70  FC 04 00 28 */	fsub f0, f4, f0
/* 80449E74  FC 21 00 32 */	fmul f1, f1, f0
/* 80449E78  FC 01 00 72 */	fmul f0, f1, f1
/* 80449E7C  FC 25 00 72 */	fmul f1, f5, f1
/* 80449E80  FC 02 00 32 */	fmul f0, f2, f0
/* 80449E84  FC 04 00 28 */	fsub f0, f4, f0
/* 80449E88  FC 21 00 32 */	fmul f1, f1, f0
/* 80449E8C  FC 01 00 72 */	fmul f0, f1, f1
/* 80449E90  FC 25 00 72 */	fmul f1, f5, f1
/* 80449E94  FC 02 00 32 */	fmul f0, f2, f0
/* 80449E98  FC 04 00 28 */	fsub f0, f4, f0
/* 80449E9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80449EA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80449EA4  FC 00 00 18 */	frsp f0, f0
/* 80449EA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80449EAC  C0 41 00 08 */	lfs f2, 8(r1)
lbl_80449EB0:
/* 80449EB0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80449EB4  A8 9E 06 1E */	lha r4, 0x61e(r30)
/* 80449EB8  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80449EBC  38 7E 06 18 */	addi r3, r30, 0x618
/* 80449EC0  C0 05 00 00 */	lfs f0, 0(r5)
/* 80449EC4  38 A0 00 E3 */	li r5, 0xe3
/* 80449EC8  38 C0 00 2D */	li r6, 0x2d
/* 80449ECC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80449ED0  4B F7 14 41 */	bl add_calc_short_angle2
/* 80449ED4  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80449ED8  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 80449EDC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80449EE0  40 81 00 20 */	ble lbl_80449F00
/* 80449EE4  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 80449EE8  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 80449EEC  C0 63 42 AC */	lfs f3, lit_666@l(r3)  /* 0x806442AC@l */
/* 80449EF0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80449EF4  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 80449EF8  4B F7 13 9D */	bl add_calc2
/* 80449EFC  48 00 00 1C */	b lbl_80449F18
lbl_80449F00:
/* 80449F00  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 80449F04  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 80449F08  C0 63 43 48 */	lfs f3, lit_1558@l(r3)  /* 0x80644348@l */
/* 80449F0C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80449F10  C0 44 42 68 */	lfs f2, lit_527@l(r4)  /* 0x80644268@l */
/* 80449F14  4B F7 13 81 */	bl add_calc2
lbl_80449F18:
/* 80449F18  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80449F1C  7C 60 07 35 */	extsh. r0, r3
/* 80449F20  7C 03 00 D0 */	neg r0, r3
/* 80449F24  41 80 00 08 */	blt lbl_80449F2C
/* 80449F28  7C 60 1B 78 */	mr r0, r3
lbl_80449F2C:
/* 80449F2C  2C 00 23 8E */	cmpwi r0, 0x238e
/* 80449F30  40 81 00 2C */	ble lbl_80449F5C
/* 80449F34  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80449F38  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 80449F3C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80449F40  38 A3 42 D4 */	addi r5, r3, lit_839@l /* 0x806442D4@l */
/* 80449F44  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 80449F48  C0 45 00 00 */	lfs f2, 0(r5)
/* 80449F4C  EC 21 00 2A */	fadds f1, f1, f0
/* 80449F50  C0 64 42 68 */	lfs f3, lit_527@l(r4)  /* 0x80644268@l */
/* 80449F54  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80449F58  4B F7 13 3D */	bl add_calc2
lbl_80449F5C:
/* 80449F5C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80449F60  4B F7 0B 3D */	bl cos_s
/* 80449F64  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80449F68  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80449F6C  EF E0 00 72 */	fmuls f31, f0, f1
/* 80449F70  4B F7 0B 81 */	bl sin_s
/* 80449F74  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80449F78  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80449F7C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80449F80  4B F7 0B 1D */	bl cos_s
/* 80449F84  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80449F88  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80449F8C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80449F90  4B F7 0B 61 */	bl sin_s
/* 80449F94  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80449F98  7F C4 F3 78 */	mr r4, r30
/* 80449F9C  7F E5 FB 78 */	mr r5, r31
/* 80449FA0  38 61 00 18 */	addi r3, r1, 0x18
/* 80449FA4  FC 00 00 50 */	fneg f0, f0
/* 80449FA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80449FAC  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 80449FB0  4B FE D7 F5 */	bl mfish_get_flow_vec
/* 80449FB4  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 80449FB8  7F C3 F3 78 */	mr r3, r30
/* 80449FBC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80449FC0  7F E4 FB 78 */	mr r4, r31
/* 80449FC4  C0 5E 05 A0 */	lfs f2, 0x5a0(r30)
/* 80449FC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80449FCC  EC 02 00 2A */	fadds f0, f2, f0
/* 80449FD0  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 80449FD4  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 80449FD8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80449FDC  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 80449FE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80449FE4  EC 02 00 2A */	fadds f0, f2, f0
/* 80449FE8  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80449FEC  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80449FF0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80449FF4  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 80449FF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80449FFC  EC 02 00 2A */	fadds f0, f2, f0
/* 8044A000  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 8044A004  4B FE A5 F9 */	bl mfish_onefish_mv
/* 8044A008  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8044A00C  3C A0 80 64 */	lis r5, lit_471@ha /* 0x8064425C@ha */
/* 8044A010  C0 23 42 44 */	lfs f1, data_80644244@l(r3)  /* 0x80644244@l */
/* 8044A014  38 C5 42 5C */	addi r6, r5, lit_471@l /* 0x8064425C@l */
/* 8044A018  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044A01C  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8044A020  38 A4 42 D4 */	addi r5, r4, lit_839@l /* 0x806442D4@l */
/* 8044A024  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044A028  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044A02C  C0 86 00 00 */	lfs f4, 0(r6)
/* 8044A030  38 83 42 68 */	addi r4, r3, lit_527@l /* 0x80644268@l */
/* 8044A034  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044A038  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044A03C  38 7E 00 44 */	addi r3, r30, 0x44
/* 8044A040  EC 24 00 2A */	fadds f1, f4, f0
/* 8044A044  4B F7 12 51 */	bl add_calc2
/* 8044A048  80 BE 05 A0 */	lwz r5, 0x5a0(r30)
/* 8044A04C  7F C3 F3 78 */	mr r3, r30
/* 8044A050  80 1E 05 A4 */	lwz r0, 0x5a4(r30)
/* 8044A054  7F E4 FB 78 */	mr r4, r31
/* 8044A058  90 BE 05 B8 */	stw r5, 0x5b8(r30)
/* 8044A05C  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 8044A060  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 8044A064  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 8044A068  4B FE BC 29 */	bl Museum_Fish_BGCheck
/* 8044A06C  3C 60 80 64 */	lis r3, lit_5573@ha /* 0x80644410@ha */
/* 8044A070  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8044A074  C0 03 44 10 */	lfs f0, lit_5573@l(r3)  /* 0x80644410@l */
/* 8044A078  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 8044A07C  EC 00 08 2A */	fadds f0, f0, f1
/* 8044A080  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044A084  40 80 00 20 */	bge lbl_8044A0A4
/* 8044A088  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8044A08C  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 8044A090  2C 00 00 00 */	cmpwi r0, 0
/* 8044A094  40 81 00 40 */	ble lbl_8044A0D4
/* 8044A098  38 00 EA AB */	li r0, -5461
/* 8044A09C  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 8044A0A0  48 00 00 34 */	b lbl_8044A0D4
lbl_8044A0A4:
/* 8044A0A4  3C 60 80 64 */	lis r3, lit_5574@ha /* 0x80644414@ha */
/* 8044A0A8  C0 03 44 14 */	lfs f0, lit_5574@l(r3)  /* 0x80644414@l */
/* 8044A0AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8044A0B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044A0B4  40 81 00 14 */	ble lbl_8044A0C8
/* 8044A0B8  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8044A0BC  38 00 15 55 */	li r0, 0x1555
/* 8044A0C0  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 8044A0C4  48 00 00 10 */	b lbl_8044A0D4
lbl_8044A0C8:
/* 8044A0C8  A8 7E 06 26 */	lha r3, 0x626(r30)
/* 8044A0CC  38 03 FF FF */	addi r0, r3, -1
/* 8044A0D0  B0 1E 06 26 */	sth r0, 0x626(r30)
lbl_8044A0D4:
/* 8044A0D4  A8 BE 06 12 */	lha r5, 0x612(r30)
/* 8044A0D8  A8 9E 00 30 */	lha r4, 0x30(r30)
/* 8044A0DC  7C A0 2B 78 */	mr r0, r5
/* 8044A0E0  7C 04 28 00 */	cmpw r4, r5
/* 8044A0E4  40 80 00 08 */	bge lbl_8044A0EC
/* 8044A0E8  7C 80 23 78 */	mr r0, r4
lbl_8044A0EC:
/* 8044A0EC  7C 64 00 D0 */	neg r3, r4
/* 8044A0F0  7C 00 07 34 */	extsh r0, r0
/* 8044A0F4  7C 63 07 34 */	extsh r3, r3
/* 8044A0F8  7C 03 00 00 */	cmpw r3, r0
/* 8044A0FC  40 81 00 08 */	ble lbl_8044A104
/* 8044A100  48 00 00 14 */	b lbl_8044A114
lbl_8044A104:
/* 8044A104  7C 04 28 00 */	cmpw r4, r5
/* 8044A108  40 80 00 08 */	bge lbl_8044A110
/* 8044A10C  7C 85 23 78 */	mr r5, r4
lbl_8044A110:
/* 8044A110  7C A3 2B 78 */	mr r3, r5
lbl_8044A114:
/* 8044A114  B0 7E 06 12 */	sth r3, 0x612(r30)
/* 8044A118  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8044A11C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8044A120  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8044A124  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8044A128  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8044A12C  7C 08 03 A6 */	mtlr r0
/* 8044A130  38 21 00 40 */	addi r1, r1, 0x40
/* 8044A134  4E 80 00 20 */	blr 

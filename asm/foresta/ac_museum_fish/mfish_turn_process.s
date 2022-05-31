lbl_80432D0C:
/* 80432D0C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80432D10  7C 08 02 A6 */	mflr r0
/* 80432D14  90 01 00 54 */	stw r0, 0x54(r1)
/* 80432D18  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80432D1C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80432D20  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80432D24  7C 7F 1B 78 */	mr r31, r3
/* 80432D28  A8 63 06 22 */	lha r3, 0x622(r3)
/* 80432D2C  7C 60 07 35 */	extsh. r0, r3
/* 80432D30  7C 03 00 D0 */	neg r0, r3
/* 80432D34  41 80 00 08 */	blt lbl_80432D3C
/* 80432D38  7C 60 1B 78 */	mr r0, r3
lbl_80432D3C:
/* 80432D3C  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 80432D40  40 81 00 EC */	ble lbl_80432E2C
/* 80432D44  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 80432D48  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80432D4C  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 80432D50  3C 00 43 30 */	lis r0, 0x4330
/* 80432D54  C9 65 00 00 */	lfd f11, 0(r5)
/* 80432D58  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80432D5C  38 C3 42 54 */	addi r6, r3, lit_470@l /* 0x80644254@l */
/* 80432D60  3C E0 80 64 */	lis r7, lit_471@ha /* 0x8064425C@ha */
/* 80432D64  FC 20 58 34 */	frsqrte f1, f11
/* 80432D68  C9 44 42 4C */	lfd f10, lit_469@l(r4)  /* 0x8064424C@l */
/* 80432D6C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80432D70  C9 26 00 00 */	lfd f9, 0(r6)
/* 80432D74  80 83 61 38 */	lwz r4, debug_mode@l(r3)  /* 0x81166138@l */
/* 80432D78  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80432D7C  FC 01 00 72 */	fmul f0, f1, f1
/* 80432D80  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 80432D84  A8 84 1B B0 */	lha r4, 0x1bb0(r4)
/* 80432D88  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80432D8C  38 C3 42 C4 */	addi r6, r3, lit_793@l /* 0x806442C4@l */
/* 80432D90  FC 2A 00 72 */	fmul f1, f10, f1
/* 80432D94  FC 0B 00 32 */	fmul f0, f11, f0
/* 80432D98  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80432D9C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80432DA0  90 81 00 24 */	stw r4, 0x24(r1)
/* 80432DA4  39 03 42 60 */	addi r8, r3, lit_472@l /* 0x80644260@l */
/* 80432DA8  C8 45 00 00 */	lfd f2, 0(r5)
/* 80432DAC  FC 09 00 28 */	fsub f0, f9, f0
/* 80432DB0  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 80432DB4  38 83 42 AC */	addi r4, r3, lit_666@l /* 0x806442AC@l */
/* 80432DB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80432DBC  C0 66 00 00 */	lfs f3, 0(r6)
/* 80432DC0  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80432DC4  FC 81 00 32 */	fmul f4, f1, f0
/* 80432DC8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80432DCC  C0 A7 42 5C */	lfs f5, lit_471@l(r7)  /* 0x8064425C@l */
/* 80432DD0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80432DD4  C0 C8 00 00 */	lfs f6, 0(r8)
/* 80432DD8  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80432DDC  FC E4 01 32 */	fmul f7, f4, f4
/* 80432DE0  FD 0A 01 32 */	fmul f8, f10, f4
/* 80432DE4  C0 84 00 00 */	lfs f4, 0(r4)
/* 80432DE8  FC EB 01 F2 */	fmul f7, f11, f7
/* 80432DEC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80432DF0  FC 49 38 28 */	fsub f2, f9, f7
/* 80432DF4  EC 05 00 2A */	fadds f0, f5, f0
/* 80432DF8  FC 68 00 B2 */	fmul f3, f8, f2
/* 80432DFC  FC 43 00 F2 */	fmul f2, f3, f3
/* 80432E00  FC EA 00 F2 */	fmul f7, f10, f3
/* 80432E04  FC 4B 00 B2 */	fmul f2, f11, f2
/* 80432E08  EC 65 00 32 */	fmuls f3, f5, f0
/* 80432E0C  FC 09 10 28 */	fsub f0, f9, f2
/* 80432E10  FC 07 00 32 */	fmul f0, f7, f0
/* 80432E14  FC 0B 00 32 */	fmul f0, f11, f0
/* 80432E18  FC 00 00 18 */	frsp f0, f0
/* 80432E1C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80432E20  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80432E24  EC 46 00 28 */	fsubs f2, f6, f0
/* 80432E28  4B F8 83 89 */	bl add_calc
lbl_80432E2C:
/* 80432E2C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80432E30  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80432E34  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80432E38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80432E3C  40 81 00 08 */	ble lbl_80432E44
/* 80432E40  48 00 00 08 */	b lbl_80432E48
lbl_80432E44:
/* 80432E44  FC 20 00 90 */	fmr f1, f0
lbl_80432E48:
/* 80432E48  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 80432E4C  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 80432E50  C0 63 42 D4 */	lfs f3, lit_839@l(r3)  /* 0x806442D4@l */
/* 80432E54  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 80432E58  C0 44 42 5C */	lfs f2, lit_471@l(r4)  /* 0x8064425C@l */
/* 80432E5C  4B F8 84 39 */	bl add_calc2
/* 80432E60  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80432E64  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80432E68  38 C3 42 4C */	addi r6, r3, lit_469@l /* 0x8064424C@l */
/* 80432E6C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80432E70  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 80432E74  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80432E78  C8 A6 00 00 */	lfd f5, 0(r6)
/* 80432E7C  FC 60 30 34 */	frsqrte f3, f6
/* 80432E80  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80432E84  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80432E88  C8 85 00 00 */	lfd f4, 0(r5)
/* 80432E8C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80432E90  FC 23 00 F2 */	fmul f1, f3, f3
/* 80432E94  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80432E98  FC 65 00 F2 */	fmul f3, f5, f3
/* 80432E9C  FC 26 00 72 */	fmul f1, f6, f1
/* 80432EA0  FC 24 08 28 */	fsub f1, f4, f1
/* 80432EA4  FC 63 00 72 */	fmul f3, f3, f1
/* 80432EA8  FC 23 00 F2 */	fmul f1, f3, f3
/* 80432EAC  FC 65 00 F2 */	fmul f3, f5, f3
/* 80432EB0  FC 26 00 72 */	fmul f1, f6, f1
/* 80432EB4  FC 24 08 28 */	fsub f1, f4, f1
/* 80432EB8  FC 63 00 72 */	fmul f3, f3, f1
/* 80432EBC  FC 23 00 F2 */	fmul f1, f3, f3
/* 80432EC0  FC 65 00 F2 */	fmul f3, f5, f3
/* 80432EC4  FC 26 00 72 */	fmul f1, f6, f1
/* 80432EC8  FC 24 08 28 */	fsub f1, f4, f1
/* 80432ECC  FC 23 00 72 */	fmul f1, f3, f1
/* 80432ED0  FC 26 00 72 */	fmul f1, f6, f1
/* 80432ED4  FC 20 08 18 */	frsp f1, f1
/* 80432ED8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80432EDC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80432EE0  EC 22 08 28 */	fsubs f1, f2, f1
/* 80432EE4  EC 42 08 28 */	fsubs f2, f2, f1
/* 80432EE8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80432EEC  40 81 00 54 */	ble lbl_80432F40
/* 80432EF0  FC 20 10 34 */	frsqrte f1, f2
/* 80432EF4  FC 01 00 72 */	fmul f0, f1, f1
/* 80432EF8  FC 25 00 72 */	fmul f1, f5, f1
/* 80432EFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80432F00  FC 04 00 28 */	fsub f0, f4, f0
/* 80432F04  FC 21 00 32 */	fmul f1, f1, f0
/* 80432F08  FC 01 00 72 */	fmul f0, f1, f1
/* 80432F0C  FC 25 00 72 */	fmul f1, f5, f1
/* 80432F10  FC 02 00 32 */	fmul f0, f2, f0
/* 80432F14  FC 04 00 28 */	fsub f0, f4, f0
/* 80432F18  FC 21 00 32 */	fmul f1, f1, f0
/* 80432F1C  FC 01 00 72 */	fmul f0, f1, f1
/* 80432F20  FC 25 00 72 */	fmul f1, f5, f1
/* 80432F24  FC 02 00 32 */	fmul f0, f2, f0
/* 80432F28  FC 04 00 28 */	fsub f0, f4, f0
/* 80432F2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80432F30  FC 02 00 32 */	fmul f0, f2, f0
/* 80432F34  FC 00 00 18 */	frsp f0, f0
/* 80432F38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80432F3C  C0 41 00 14 */	lfs f2, 0x14(r1)
lbl_80432F40:
/* 80432F40  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80432F44  38 7F 06 32 */	addi r3, r31, 0x632
/* 80432F48  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80432F4C  38 80 00 00 */	li r4, 0
/* 80432F50  C0 05 00 00 */	lfs f0, 0(r5)
/* 80432F54  38 A0 01 C7 */	li r5, 0x1c7
/* 80432F58  38 C0 00 2D */	li r6, 0x2d
/* 80432F5C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80432F60  4B F8 83 B1 */	bl add_calc_short_angle2
/* 80432F64  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 80432F68  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80432F6C  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 80432F70  C8 64 42 4C */	lfd f3, lit_469@l(r4)  /* 0x8064424C@l */
/* 80432F74  C8 85 00 00 */	lfd f4, 0(r5)
/* 80432F78  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80432F7C  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 80432F80  FC 20 20 34 */	frsqrte f1, f4
/* 80432F84  A8 7F 06 36 */	lha r3, 0x636(r31)
/* 80432F88  FC 01 00 72 */	fmul f0, f1, f1
/* 80432F8C  FC 23 00 72 */	fmul f1, f3, f1
/* 80432F90  FC 04 00 32 */	fmul f0, f4, f0
/* 80432F94  FC 02 00 28 */	fsub f0, f2, f0
/* 80432F98  FC 21 00 32 */	fmul f1, f1, f0
/* 80432F9C  FC 01 00 72 */	fmul f0, f1, f1
/* 80432FA0  FC 23 00 72 */	fmul f1, f3, f1
/* 80432FA4  FC 04 00 32 */	fmul f0, f4, f0
/* 80432FA8  FC 02 00 28 */	fsub f0, f2, f0
/* 80432FAC  FC 21 00 32 */	fmul f1, f1, f0
/* 80432FB0  FC 01 00 72 */	fmul f0, f1, f1
/* 80432FB4  FC 23 00 72 */	fmul f1, f3, f1
/* 80432FB8  FC 04 00 32 */	fmul f0, f4, f0
/* 80432FBC  FC 02 00 28 */	fsub f0, f2, f0
/* 80432FC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80432FC4  FC 04 00 32 */	fmul f0, f4, f0
/* 80432FC8  FC 00 00 18 */	frsp f0, f0
/* 80432FCC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80432FD0  C3 E1 00 10 */	lfs f31, 0x10(r1)
/* 80432FD4  4B F8 7B 1D */	bl sin_s
/* 80432FD8  A8 1F 06 32 */	lha r0, 0x632(r31)
/* 80432FDC  3C A0 43 30 */	lis r5, 0x4330
/* 80432FE0  3C C0 80 64 */	lis r6, lit_570@ha /* 0x8064428C@ha */
/* 80432FE4  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80432FE8  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 80432FEC  C8 46 42 8C */	lfd f2, lit_570@l(r6)  /* 0x8064428C@l */
/* 80432FF0  90 81 00 24 */	stw r4, 0x24(r1)
/* 80432FF4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80432FF8  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80432FFC  A8 1F 06 1A */	lha r0, 0x61a(r31)
/* 80433000  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80433004  38 7F 06 0E */	addi r3, r31, 0x60e
/* 80433008  7C 00 0E 70 */	srawi r0, r0, 1
/* 8043300C  38 C0 00 2D */	li r6, 0x2d
/* 80433010  EC 40 10 28 */	fsubs f2, f0, f2
/* 80433014  7C 05 07 34 */	extsh r5, r0
/* 80433018  C0 04 00 00 */	lfs f0, 0(r4)
/* 8043301C  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 80433020  EC 42 00 72 */	fmuls f2, f2, f1
/* 80433024  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80433028  FC 00 10 1E */	fctiwz f0, f2
/* 8043302C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80433030  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80433034  7C 00 22 14 */	add r0, r0, r4
/* 80433038  7C 04 07 34 */	extsh r4, r0
/* 8043303C  4B F8 82 D5 */	bl add_calc_short_angle2
/* 80433040  3C 80 80 64 */	lis r4, lit_921@ha /* 0x806442E4@ha */
/* 80433044  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 80433048  38 C4 42 E4 */	addi r6, r4, lit_921@l /* 0x806442E4@l */
/* 8043304C  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 80433050  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80433054  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80433058  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043305C  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 80433060  FC 60 30 34 */	frsqrte f3, f6
/* 80433064  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80433068  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043306C  C8 86 00 00 */	lfd f4, 0(r6)
/* 80433070  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80433074  C0 45 00 00 */	lfs f2, 0(r5)
/* 80433078  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043307C  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80433080  FC 65 00 F2 */	fmul f3, f5, f3
/* 80433084  FC 26 00 72 */	fmul f1, f6, f1
/* 80433088  FC 24 08 28 */	fsub f1, f4, f1
/* 8043308C  FC 63 00 72 */	fmul f3, f3, f1
/* 80433090  FC 23 00 F2 */	fmul f1, f3, f3
/* 80433094  FC 65 00 F2 */	fmul f3, f5, f3
/* 80433098  FC 26 00 72 */	fmul f1, f6, f1
/* 8043309C  FC 24 08 28 */	fsub f1, f4, f1
/* 804330A0  FC 63 00 72 */	fmul f3, f3, f1
/* 804330A4  FC 23 00 F2 */	fmul f1, f3, f3
/* 804330A8  FC 65 00 F2 */	fmul f3, f5, f3
/* 804330AC  FC 26 00 72 */	fmul f1, f6, f1
/* 804330B0  FC 24 08 28 */	fsub f1, f4, f1
/* 804330B4  FC 23 00 72 */	fmul f1, f3, f1
/* 804330B8  FC 26 00 72 */	fmul f1, f6, f1
/* 804330BC  FC 20 08 18 */	frsp f1, f1
/* 804330C0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804330C4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804330C8  EC 22 08 28 */	fsubs f1, f2, f1
/* 804330CC  EC 42 08 28 */	fsubs f2, f2, f1
/* 804330D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804330D4  40 81 00 54 */	ble lbl_80433128
/* 804330D8  FC 20 10 34 */	frsqrte f1, f2
/* 804330DC  FC 01 00 72 */	fmul f0, f1, f1
/* 804330E0  FC 25 00 72 */	fmul f1, f5, f1
/* 804330E4  FC 02 00 32 */	fmul f0, f2, f0
/* 804330E8  FC 04 00 28 */	fsub f0, f4, f0
/* 804330EC  FC 21 00 32 */	fmul f1, f1, f0
/* 804330F0  FC 01 00 72 */	fmul f0, f1, f1
/* 804330F4  FC 25 00 72 */	fmul f1, f5, f1
/* 804330F8  FC 02 00 32 */	fmul f0, f2, f0
/* 804330FC  FC 04 00 28 */	fsub f0, f4, f0
/* 80433100  FC 21 00 32 */	fmul f1, f1, f0
/* 80433104  FC 01 00 72 */	fmul f0, f1, f1
/* 80433108  FC 25 00 72 */	fmul f1, f5, f1
/* 8043310C  FC 02 00 32 */	fmul f0, f2, f0
/* 80433110  FC 04 00 28 */	fsub f0, f4, f0
/* 80433114  FC 01 00 32 */	fmul f0, f1, f0
/* 80433118  FC 02 00 32 */	fmul f0, f2, f0
/* 8043311C  FC 00 00 18 */	frsp f0, f0
/* 80433120  D0 01 00 08 */	stfs f0, 8(r1)
/* 80433124  C0 41 00 08 */	lfs f2, 8(r1)
lbl_80433128:
/* 80433128  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043312C  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 80433130  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80433134  38 7F 06 1C */	addi r3, r31, 0x61c
/* 80433138  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043313C  38 A0 02 AA */	li r5, 0x2aa
/* 80433140  38 C0 00 2D */	li r6, 0x2d
/* 80433144  EC 20 10 28 */	fsubs f1, f0, f2
/* 80433148  4B F8 81 C9 */	bl add_calc_short_angle2
/* 8043314C  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80433150  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80433154  7C 63 00 50 */	subf r3, r3, r0
/* 80433158  7C 60 07 34 */	extsh r0, r3
/* 8043315C  7C 63 07 35 */	extsh. r3, r3
/* 80433160  7C 60 00 D0 */	neg r3, r0
/* 80433164  41 80 00 08 */	blt lbl_8043316C
/* 80433168  7C 03 03 78 */	mr r3, r0
lbl_8043316C:
/* 8043316C  2C 03 01 6C */	cmpwi r3, 0x16c
/* 80433170  40 80 00 60 */	bge lbl_804331D0
/* 80433174  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80433178  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8043317C  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 80433180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80433184  40 80 00 4C */	bge lbl_804331D0
/* 80433188  A8 1F 06 3E */	lha r0, 0x63e(r31)
/* 8043318C  2C 00 00 00 */	cmpwi r0, 0
/* 80433190  40 81 00 38 */	ble lbl_804331C8
/* 80433194  7F E3 FB 78 */	mr r3, r31
/* 80433198  4B FF EA 55 */	bl mfish_WallCheck
/* 8043319C  2C 03 00 00 */	cmpwi r3, 0
/* 804331A0  41 82 00 10 */	beq lbl_804331B0
/* 804331A4  7F E3 FB 78 */	mr r3, r31
/* 804331A8  4B FF F9 49 */	bl mfish_turn_process_init
/* 804331AC  48 00 00 0C */	b lbl_804331B8
lbl_804331B0:
/* 804331B0  7F E3 FB 78 */	mr r3, r31
/* 804331B4  4B FF F0 DD */	bl mfish_normal_process_init
lbl_804331B8:
/* 804331B8  A8 7F 06 3E */	lha r3, 0x63e(r31)
/* 804331BC  38 03 FF FF */	addi r0, r3, -1
/* 804331C0  B0 1F 06 3E */	sth r0, 0x63e(r31)
/* 804331C4  48 00 00 0C */	b lbl_804331D0
lbl_804331C8:
/* 804331C8  7F E3 FB 78 */	mr r3, r31
/* 804331CC  4B FF EC 69 */	bl mfish_dummy_process_init
lbl_804331D0:
/* 804331D0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804331D4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804331D8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804331DC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804331E0  7C 08 03 A6 */	mtlr r0
/* 804331E4  38 21 00 50 */	addi r1, r1, 0x50
/* 804331E8  4E 80 00 20 */	blr 

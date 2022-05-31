lbl_80442BB4:
/* 80442BB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80442BB8  7C 08 02 A6 */	mflr r0
/* 80442BBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80442BC0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80442BC4  7C 9F 23 78 */	mr r31, r4
/* 80442BC8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80442BCC  7C 7E 1B 78 */	mr r30, r3
/* 80442BD0  4B FF 1A 2D */	bl mfish_onefish_mv
/* 80442BD4  3C 60 80 64 */	lis r3, lit_698@ha /* 0x806442B4@ha */
/* 80442BD8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80442BDC  C0 23 42 B4 */	lfs f1, lit_698@l(r3)  /* 0x806442B4@l */
/* 80442BE0  C0 5E 05 F8 */	lfs f2, 0x5f8(r30)
/* 80442BE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80442BE8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80442BEC  40 81 00 18 */	ble lbl_80442C04
/* 80442BF0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80442BF4  38 00 00 00 */	li r0, 0
/* 80442BF8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80442BFC  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 80442C00  B0 1E 06 26 */	sth r0, 0x626(r30)
lbl_80442C04:
/* 80442C04  A8 9E 06 26 */	lha r4, 0x626(r30)
/* 80442C08  38 64 FF FF */	addi r3, r4, -1
/* 80442C0C  7C 80 07 35 */	extsh. r0, r4
/* 80442C10  B0 7E 06 26 */	sth r3, 0x626(r30)
/* 80442C14  41 81 00 90 */	bgt lbl_80442CA4
/* 80442C18  4B C1 A0 DD */	bl fqrand
/* 80442C1C  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 80442C20  3C 00 43 30 */	lis r0, 0x4330
/* 80442C24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80442C28  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80442C2C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80442C30  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 80442C34  90 61 00 14 */	stw r3, 0x14(r1)
/* 80442C38  7F C3 F3 78 */	mr r3, r30
/* 80442C3C  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 80442C40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80442C44  EC 00 10 28 */	fsubs f0, f0, f2
/* 80442C48  EC 00 00 72 */	fmuls f0, f0, f1
/* 80442C4C  FC 00 00 1E */	fctiwz f0, f0
/* 80442C50  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80442C54  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80442C58  7C 00 22 14 */	add r0, r0, r4
/* 80442C5C  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 80442C60  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 80442C64  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 80442C68  4B FE EF 85 */	bl mfish_WallCheck
/* 80442C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80442C70  41 82 00 1C */	beq lbl_80442C8C
/* 80442C74  7F C3 F3 78 */	mr r3, r30
/* 80442C78  38 80 00 01 */	li r4, 1
/* 80442C7C  4B FF E2 69 */	bl func_80440EE4
/* 80442C80  7F C3 F3 78 */	mr r3, r30
/* 80442C84  4B FF F6 DD */	bl mfish_bass_turn_process_init
/* 80442C88  48 00 00 FC */	b lbl_80442D84
lbl_80442C8C:
/* 80442C8C  7F C3 F3 78 */	mr r3, r30
/* 80442C90  38 80 00 00 */	li r4, 0
/* 80442C94  4B FF E2 51 */	bl func_80440EE4
/* 80442C98  7F C3 F3 78 */	mr r3, r30
/* 80442C9C  4B FF EA 29 */	bl mfish_bass_normal_process_init
/* 80442CA0  48 00 00 E4 */	b lbl_80442D84
lbl_80442CA4:
/* 80442CA4  3C 60 80 44 */	lis r3, mfish_bass_normal_process@ha /* 0x80441AA4@ha */
/* 80442CA8  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 80442CAC  38 03 1A A4 */	addi r0, r3, mfish_bass_normal_process@l /* 0x80441AA4@l */
/* 80442CB0  7C 04 00 40 */	cmplw r4, r0
/* 80442CB4  40 82 00 D0 */	bne lbl_80442D84
/* 80442CB8  A8 9E 06 2E */	lha r4, 0x62e(r30)
/* 80442CBC  54 80 06 FD */	rlwinm. r0, r4, 0, 0x1b, 0x1e
/* 80442CC0  41 82 00 2C */	beq lbl_80442CEC
/* 80442CC4  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80442CC8  A8 1E 06 2C */	lha r0, 0x62c(r30)
/* 80442CCC  7C 63 00 50 */	subf r3, r3, r0
/* 80442CD0  7C 60 07 34 */	extsh r0, r3
/* 80442CD4  7C 63 07 35 */	extsh. r3, r3
/* 80442CD8  7C 60 00 D0 */	neg r3, r0
/* 80442CDC  41 80 00 08 */	blt lbl_80442CE4
/* 80442CE0  7C 03 03 78 */	mr r3, r0
lbl_80442CE4:
/* 80442CE4  2C 03 15 55 */	cmpwi r3, 0x1555
/* 80442CE8  41 80 00 3C */	blt lbl_80442D24
lbl_80442CEC:
/* 80442CEC  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 80442CF0  41 82 00 94 */	beq lbl_80442D84
/* 80442CF4  A8 7E 06 2A */	lha r3, 0x62a(r30)
/* 80442CF8  A8 9E 06 0E */	lha r4, 0x60e(r30)
/* 80442CFC  3C 63 00 01 */	addis r3, r3, 1
/* 80442D00  38 03 80 00 */	addi r0, r3, -32768
/* 80442D04  7C 64 00 50 */	subf r3, r4, r0
/* 80442D08  7C 60 07 35 */	extsh. r0, r3
/* 80442D0C  7C 60 07 34 */	extsh r0, r3
/* 80442D10  7C 60 00 D0 */	neg r3, r0
/* 80442D14  41 80 00 08 */	blt lbl_80442D1C
/* 80442D18  7C 03 03 78 */	mr r3, r0
lbl_80442D1C:
/* 80442D1C  2C 03 15 55 */	cmpwi r3, 0x1555
/* 80442D20  40 80 00 64 */	bge lbl_80442D84
lbl_80442D24:
/* 80442D24  4B C1 9F D1 */	bl fqrand
/* 80442D28  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 80442D2C  3C 00 43 30 */	lis r0, 0x4330
/* 80442D30  90 01 00 18 */	stw r0, 0x18(r1)
/* 80442D34  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80442D38  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80442D3C  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 80442D40  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80442D44  7F C3 F3 78 */	mr r3, r30
/* 80442D48  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 80442D4C  38 80 00 01 */	li r4, 1
/* 80442D50  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80442D54  EC 00 10 28 */	fsubs f0, f0, f2
/* 80442D58  EC 00 00 72 */	fmuls f0, f0, f1
/* 80442D5C  FC 00 00 1E */	fctiwz f0, f0
/* 80442D60  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80442D64  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80442D68  7C 00 2A 14 */	add r0, r0, r5
/* 80442D6C  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 80442D70  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 80442D74  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 80442D78  4B FF E1 6D */	bl func_80440EE4
/* 80442D7C  7F C3 F3 78 */	mr r3, r30
/* 80442D80  4B FF F5 E1 */	bl mfish_bass_turn_process_init
lbl_80442D84:
/* 80442D84  A8 BE 06 38 */	lha r5, 0x638(r30)
/* 80442D88  7F C3 F3 78 */	mr r3, r30
/* 80442D8C  7F E4 FB 78 */	mr r4, r31
/* 80442D90  38 05 07 1C */	addi r0, r5, 0x71c
/* 80442D94  B0 1E 06 38 */	sth r0, 0x638(r30)
/* 80442D98  81 9E 00 34 */	lwz r12, 0x34(r30)
/* 80442D9C  7D 89 03 A6 */	mtctr r12
/* 80442DA0  4E 80 04 21 */	bctrl 
/* 80442DA4  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 80442DA8  7C 80 07 35 */	extsh. r0, r4
/* 80442DAC  7C 64 00 D0 */	neg r3, r4
/* 80442DB0  41 80 00 08 */	blt lbl_80442DB8
/* 80442DB4  7C 83 23 78 */	mr r3, r4
lbl_80442DB8:
/* 80442DB8  A8 9E 06 1C */	lha r4, 0x61c(r30)
/* 80442DBC  7C 80 07 35 */	extsh. r0, r4
/* 80442DC0  7C 04 00 D0 */	neg r0, r4
/* 80442DC4  41 80 00 08 */	blt lbl_80442DCC
/* 80442DC8  7C 80 23 78 */	mr r0, r4
lbl_80442DCC:
/* 80442DCC  7C 00 18 00 */	cmpw r0, r3
/* 80442DD0  40 81 00 D8 */	ble lbl_80442EA8
/* 80442DD4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80442DD8  3C 00 43 30 */	lis r0, 0x4330
/* 80442DDC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80442DE0  3C A0 80 64 */	lis r5, lit_527@ha /* 0x80644268@ha */
/* 80442DE4  80 E4 00 00 */	lwz r7, 0(r4)
/* 80442DE8  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80442DEC  3C C0 80 64 */	lis r6, lit_472@ha /* 0x80644260@ha */
/* 80442DF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80442DF4  A8 87 1B 3A */	lha r4, 0x1b3a(r7)
/* 80442DF8  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 80442DFC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80442E00  C0 45 42 68 */	lfs f2, lit_527@l(r5)  /* 0x80644268@l */
/* 80442E04  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80442E08  C0 66 42 60 */	lfs f3, lit_472@l(r6)  /* 0x80644260@l */
/* 80442E0C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80442E10  C0 9E 05 E8 */	lfs f4, 0x5e8(r30)
/* 80442E14  EC 00 08 28 */	fsubs f0, f0, f1
/* 80442E18  EC 02 00 32 */	fmuls f0, f2, f0
/* 80442E1C  EC 23 00 2A */	fadds f1, f3, f0
/* 80442E20  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 80442E24  40 80 00 08 */	bge lbl_80442E2C
/* 80442E28  48 00 00 08 */	b lbl_80442E30
lbl_80442E2C:
/* 80442E2C  FC 20 20 90 */	fmr f1, f4
lbl_80442E30:
/* 80442E30  A8 67 1B 38 */	lha r3, 0x1b38(r7)
/* 80442E34  3C A0 43 30 */	lis r5, 0x4330
/* 80442E38  A8 07 1B 36 */	lha r0, 0x1b36(r7)
/* 80442E3C  3C C0 80 64 */	lis r6, lit_793@ha /* 0x806442C4@ha */
/* 80442E40  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80442E44  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80442E48  90 61 00 14 */	stw r3, 0x14(r1)
/* 80442E4C  38 64 42 8C */	addi r3, r4, lit_570@l /* 0x8064428C@l */
/* 80442E50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80442E54  C8 83 00 00 */	lfd f4, 0(r3)
/* 80442E58  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80442E5C  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 80442E60  38 E4 42 D4 */	addi r7, r4, lit_839@l /* 0x806442D4@l */
/* 80442E64  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80442E68  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80442E6C  38 83 42 5C */	addi r4, r3, lit_471@l /* 0x8064425C@l */
/* 80442E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80442E74  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80442E78  EC 40 20 28 */	fsubs f2, f0, f4
/* 80442E7C  C0 A6 42 C4 */	lfs f5, lit_793@l(r6)  /* 0x806442C4@l */
/* 80442E80  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80442E84  C0 C7 00 00 */	lfs f6, 0(r7)
/* 80442E88  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80442E8C  EC 45 00 B2 */	fmuls f2, f5, f2
/* 80442E90  C0 64 00 00 */	lfs f3, 0(r4)
/* 80442E94  EC 00 20 28 */	fsubs f0, f0, f4
/* 80442E98  EC 46 10 2A */	fadds f2, f6, f2
/* 80442E9C  EC 05 00 32 */	fmuls f0, f5, f0
/* 80442EA0  EC 63 00 2A */	fadds f3, f3, f0
/* 80442EA4  4B F7 83 F1 */	bl add_calc2
lbl_80442EA8:
/* 80442EA8  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 80442EAC  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80442EB0  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 80442EB4  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 80442EB8  C8 E5 00 00 */	lfd f7, 0(r5)
/* 80442EBC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80442EC0  38 C3 42 54 */	addi r6, r3, lit_470@l /* 0x80644254@l */
/* 80442EC4  FC 20 38 34 */	frsqrte f1, f7
/* 80442EC8  3C 60 80 64 */	lis r3, lit_840@ha /* 0x806442D8@ha */
/* 80442ECC  C8 86 00 00 */	lfd f4, 0(r6)
/* 80442ED0  38 83 42 D8 */	addi r4, r3, lit_840@l /* 0x806442D8@l */
/* 80442ED4  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 80442ED8  38 C0 00 09 */	li r6, 9
/* 80442EDC  FC 01 00 72 */	fmul f0, f1, f1
/* 80442EE0  38 A3 42 98 */	addi r5, r3, lit_588@l /* 0x80644298@l */
/* 80442EE4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80442EE8  C0 45 00 00 */	lfs f2, 0(r5)
/* 80442EEC  FC A6 00 72 */	fmul f5, f6, f1
/* 80442EF0  C0 24 00 00 */	lfs f1, 0(r4)
/* 80442EF4  FC 67 00 32 */	fmul f3, f7, f0
/* 80442EF8  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80442EFC  38 E3 42 60 */	addi r7, r3, lit_472@l /* 0x80644260@l */
/* 80442F00  A8 9E 06 12 */	lha r4, 0x612(r30)
/* 80442F04  EC 01 00 2A */	fadds f0, f1, f0
/* 80442F08  C0 27 00 00 */	lfs f1, 0(r7)
/* 80442F0C  FC 64 18 28 */	fsub f3, f4, f3
/* 80442F10  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80442F14  EC 02 00 32 */	fmuls f0, f2, f0
/* 80442F18  FC 65 00 F2 */	fmul f3, f5, f3
/* 80442F1C  FC 00 00 1E */	fctiwz f0, f0
/* 80442F20  FC 43 00 F2 */	fmul f2, f3, f3
/* 80442F24  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80442F28  FC 66 00 F2 */	fmul f3, f6, f3
/* 80442F2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80442F30  FC 07 00 B2 */	fmul f0, f7, f2
/* 80442F34  7C 00 07 34 */	extsh r0, r0
/* 80442F38  7C 00 0E 70 */	srawi r0, r0, 1
/* 80442F3C  7C 05 07 34 */	extsh r5, r0
/* 80442F40  FC 04 00 28 */	fsub f0, f4, f0
/* 80442F44  FC 43 00 32 */	fmul f2, f3, f0
/* 80442F48  FC 02 00 B2 */	fmul f0, f2, f2
/* 80442F4C  FC 46 00 B2 */	fmul f2, f6, f2
/* 80442F50  FC 07 00 32 */	fmul f0, f7, f0
/* 80442F54  FC 04 00 28 */	fsub f0, f4, f0
/* 80442F58  FC 02 00 32 */	fmul f0, f2, f0
/* 80442F5C  FC 07 00 32 */	fmul f0, f7, f0
/* 80442F60  FC 00 00 18 */	frsp f0, f0
/* 80442F64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80442F68  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80442F6C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80442F70  4B F7 83 A1 */	bl add_calc_short_angle2
/* 80442F74  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 80442F78  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80442F7C  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 80442F80  C8 E4 42 4C */	lfd f7, lit_469@l(r4)  /* 0x8064424C@l */
/* 80442F84  C9 05 00 00 */	lfd f8, 0(r5)
/* 80442F88  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80442F8C  38 E3 42 54 */	addi r7, r3, lit_470@l /* 0x80644254@l */
/* 80442F90  3C 80 80 64 */	lis r4, data_80644244@ha /* 0x80644244@ha */
/* 80442F94  FC 20 40 34 */	frsqrte f1, f8
/* 80442F98  C0 44 42 44 */	lfs f2, data_80644244@l(r4)  /* 0x80644244@l */
/* 80442F9C  C8 A7 00 00 */	lfd f5, 0(r7)
/* 80442FA0  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80442FA4  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80442FA8  3C C0 80 64 */	lis r6, lit_472@ha /* 0x80644260@ha */
/* 80442FAC  FC 01 00 72 */	fmul f0, f1, f1
/* 80442FB0  38 80 00 00 */	li r4, 0
/* 80442FB4  FC C7 00 72 */	fmul f6, f7, f1
/* 80442FB8  C0 23 42 5C */	lfs f1, lit_471@l(r3)  /* 0x8064425C@l */
/* 80442FBC  38 7E 06 12 */	addi r3, r30, 0x612
/* 80442FC0  FC 68 00 32 */	fmul f3, f8, f0
/* 80442FC4  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80442FC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80442FCC  C0 26 42 60 */	lfs f1, lit_472@l(r6)  /* 0x80644260@l */
/* 80442FD0  FC 85 18 28 */	fsub f4, f5, f3
/* 80442FD4  C0 65 42 98 */	lfs f3, lit_588@l(r5)  /* 0x80644298@l */
/* 80442FD8  38 C0 00 09 */	li r6, 9
/* 80442FDC  EC 02 00 2A */	fadds f0, f2, f0
/* 80442FE0  FC 86 01 32 */	fmul f4, f6, f4
/* 80442FE4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80442FE8  FC 44 01 32 */	fmul f2, f4, f4
/* 80442FEC  FC 00 00 1E */	fctiwz f0, f0
/* 80442FF0  FC 67 01 32 */	fmul f3, f7, f4
/* 80442FF4  FC 48 00 B2 */	fmul f2, f8, f2
/* 80442FF8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80442FFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80443000  FC 45 10 28 */	fsub f2, f5, f2
/* 80443004  7C 00 07 34 */	extsh r0, r0
/* 80443008  7C 00 0E 70 */	srawi r0, r0, 1
/* 8044300C  7C 05 07 34 */	extsh r5, r0
/* 80443010  FC 43 00 B2 */	fmul f2, f3, f2
/* 80443014  FC 02 00 B2 */	fmul f0, f2, f2
/* 80443018  FC 47 00 B2 */	fmul f2, f7, f2
/* 8044301C  FC 08 00 32 */	fmul f0, f8, f0
/* 80443020  FC 05 00 28 */	fsub f0, f5, f0
/* 80443024  FC 02 00 32 */	fmul f0, f2, f0
/* 80443028  FC 08 00 32 */	fmul f0, f8, f0
/* 8044302C  FC 00 00 18 */	frsp f0, f0
/* 80443030  D0 01 00 08 */	stfs f0, 8(r1)
/* 80443034  C0 01 00 08 */	lfs f0, 8(r1)
/* 80443038  EC 21 00 28 */	fsubs f1, f1, f0
/* 8044303C  4B F7 82 D5 */	bl add_calc_short_angle2
/* 80443040  7F C3 F3 78 */	mr r3, r30
/* 80443044  7F E4 FB 78 */	mr r4, r31
/* 80443048  4B FF DE E9 */	bl mfish_bass_base_FishMove
/* 8044304C  7F C3 F3 78 */	mr r3, r30
/* 80443050  7F E4 FB 78 */	mr r4, r31
/* 80443054  4B FF 2C 3D */	bl Museum_Fish_BGCheck
/* 80443058  A8 7E 06 40 */	lha r3, 0x640(r30)
/* 8044305C  2C 03 00 00 */	cmpwi r3, 0
/* 80443060  40 81 00 7C */	ble lbl_804430DC
/* 80443064  C0 BE 05 B0 */	lfs f5, 0x5b0(r30)
/* 80443068  38 03 FF FF */	addi r0, r3, -1
/* 8044306C  3C 60 80 64 */	lis r3, lit_838@ha /* 0x806442D0@ha */
/* 80443070  3C 80 80 64 */	lis r4, lit_1067@ha /* 0x80644304@ha */
/* 80443074  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 80443078  38 A4 43 04 */	addi r5, r4, lit_1067@l /* 0x80644304@l */
/* 8044307C  C0 C3 42 D0 */	lfs f6, lit_838@l(r3)  /* 0x806442D0@l */
/* 80443080  3C 60 80 64 */	lis r3, lit_3752@ha /* 0x806443E0@ha */
/* 80443084  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 80443088  38 83 43 E0 */	addi r4, r3, lit_3752@l /* 0x806443E0@l */
/* 8044308C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80443090  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80443094  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 80443098  EC A6 01 72 */	fmuls f5, f6, f5
/* 8044309C  EC 61 00 28 */	fsubs f3, f1, f0
/* 804430A0  C0 9E 05 B4 */	lfs f4, 0x5b4(r30)
/* 804430A4  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 804430A8  38 7E 00 44 */	addi r3, r30, 0x44
/* 804430AC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804430B0  EC 64 00 F2 */	fmuls f3, f4, f3
/* 804430B4  EC 01 00 2A */	fadds f0, f1, f0
/* 804430B8  C0 85 00 00 */	lfs f4, 0(r5)
/* 804430BC  C0 24 00 00 */	lfs f1, 0(r4)
/* 804430C0  EC 84 28 2A */	fadds f4, f4, f5
/* 804430C4  EC 03 00 24 */	fdivs f0, f3, f0
/* 804430C8  EC 01 00 2A */	fadds f0, f1, f0
/* 804430CC  FC 60 10 90 */	fmr f3, f2
/* 804430D0  EC 24 00 32 */	fmuls f1, f4, f0
/* 804430D4  4B F7 81 C1 */	bl add_calc2
/* 804430D8  48 00 00 58 */	b lbl_80443130
lbl_804430DC:
/* 804430DC  3C 80 80 64 */	lis r4, data_80644244@ha /* 0x80644244@ha */
/* 804430E0  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80644294@ha */
/* 804430E4  C0 64 42 44 */	lfs f3, data_80644244@l(r4)  /* 0x80644244@l */
/* 804430E8  3C A0 80 64 */	lis r5, lit_471@ha /* 0x8064425C@ha */
/* 804430EC  C0 5E 05 E8 */	lfs f2, 0x5e8(r30)
/* 804430F0  3C 80 80 64 */	lis r4, lit_1146@ha /* 0x8064432C@ha */
/* 804430F4  C0 23 42 94 */	lfs f1, lit_587@l(r3)  /* 0x80644294@l */
/* 804430F8  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 804430FC  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80443100  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80443104  C0 65 42 5C */	lfs f3, lit_471@l(r5)  /* 0x8064425C@l */
/* 80443108  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044310C  C0 24 43 2C */	lfs f1, lit_1146@l(r4)  /* 0x8064432C@l */
/* 80443110  EC 83 10 2A */	fadds f4, f3, f2
/* 80443114  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 80443118  C0 63 42 68 */	lfs f3, lit_527@l(r3)  /* 0x80644268@l */
/* 8044311C  38 7E 00 44 */	addi r3, r30, 0x44
/* 80443120  EC 01 00 2A */	fadds f0, f1, f0
/* 80443124  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 80443128  EC 24 00 32 */	fmuls f1, f4, f0
/* 8044312C  4B F7 81 69 */	bl add_calc2
lbl_80443130:
/* 80443130  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80443134  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80443138  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8044313C  7C 08 03 A6 */	mtlr r0
/* 80443140  38 21 00 30 */	addi r1, r1, 0x30
/* 80443144  4E 80 00 20 */	blr 

lbl_804479DC:
/* 804479DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804479E0  7C 08 02 A6 */	mflr r0
/* 804479E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 804479E8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804479EC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804479F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804479F4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804479F8  3C A0 80 64 */	lis r5, lit_4774@ha /* 0x806443F8@ha */
/* 804479FC  7C 7E 1B 78 */	mr r30, r3
/* 80447A00  38 65 43 F8 */	addi r3, r5, lit_4774@l /* 0x806443F8@l */
/* 80447A04  3C 00 43 30 */	lis r0, 0x4330
/* 80447A08  C0 23 00 00 */	lfs f1, 0(r3)
/* 80447A0C  3D 20 80 64 */	lis r9, lit_472@ha /* 0x80644260@ha */
/* 80447A10  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80447A14  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80447A18  90 01 00 28 */	stw r0, 0x28(r1)
/* 80447A1C  7C 9F 23 78 */	mr r31, r4
/* 80447A20  EC 01 00 32 */	fmuls f0, f1, f0
/* 80447A24  C0 25 42 98 */	lfs f1, lit_588@l(r5)  /* 0x80644298@l */
/* 80447A28  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80447A2C  3C C0 81 16 */	lis r6, debug_mode@ha /* 0x81166138@ha */
/* 80447A30  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 80447A34  C0 A9 42 60 */	lfs f5, lit_472@l(r9)  /* 0x80644260@l */
/* 80447A38  EC 01 00 32 */	fmuls f0, f1, f0
/* 80447A3C  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80447A40  38 E3 42 C4 */	addi r7, r3, lit_793@l /* 0x806442C4@l */
/* 80447A44  C8 45 00 00 */	lfd f2, 0(r5)
/* 80447A48  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80447A4C  C0 67 00 00 */	lfs f3, 0(r7)
/* 80447A50  FC 00 00 1E */	fctiwz f0, f0
/* 80447A54  39 03 42 5C */	addi r8, r3, lit_471@l /* 0x8064425C@l */
/* 80447A58  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80447A5C  C0 88 00 00 */	lfs f4, 0(r8)
/* 80447A60  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80447A64  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80447A68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80447A6C  B0 1E 06 32 */	sth r0, 0x632(r30)
/* 80447A70  A8 9E 06 36 */	lha r4, 0x636(r30)
/* 80447A74  38 04 05 55 */	addi r0, r4, 0x555
/* 80447A78  B0 1E 06 36 */	sth r0, 0x636(r30)
/* 80447A7C  80 66 61 38 */	lwz r3, debug_mode@l(r6)  /* 0x81166138@l */
/* 80447A80  A8 03 1B 42 */	lha r0, 0x1b42(r3)
/* 80447A84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80447A88  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80447A8C  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80447A90  EC 21 10 28 */	fsubs f1, f1, f2
/* 80447A94  EC 23 00 72 */	fmuls f1, f3, f1
/* 80447A98  EC 24 08 2A */	fadds f1, f4, f1
/* 80447A9C  EC 85 08 28 */	fsubs f4, f5, f1
/* 80447AA0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80447AA4  40 81 00 68 */	ble lbl_80447B0C
/* 80447AA8  FC 20 20 34 */	frsqrte f1, f4
/* 80447AAC  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80447AB0  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 80447AB4  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80447AB8  C8 64 00 00 */	lfd f3, 0(r4)
/* 80447ABC  FC 01 00 72 */	fmul f0, f1, f1
/* 80447AC0  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 80447AC4  FC 23 00 72 */	fmul f1, f3, f1
/* 80447AC8  FC 04 00 32 */	fmul f0, f4, f0
/* 80447ACC  FC 02 00 28 */	fsub f0, f2, f0
/* 80447AD0  FC 21 00 32 */	fmul f1, f1, f0
/* 80447AD4  FC 01 00 72 */	fmul f0, f1, f1
/* 80447AD8  FC 23 00 72 */	fmul f1, f3, f1
/* 80447ADC  FC 04 00 32 */	fmul f0, f4, f0
/* 80447AE0  FC 02 00 28 */	fsub f0, f2, f0
/* 80447AE4  FC 21 00 32 */	fmul f1, f1, f0
/* 80447AE8  FC 01 00 72 */	fmul f0, f1, f1
/* 80447AEC  FC 23 00 72 */	fmul f1, f3, f1
/* 80447AF0  FC 04 00 32 */	fmul f0, f4, f0
/* 80447AF4  FC 02 00 28 */	fsub f0, f2, f0
/* 80447AF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80447AFC  FC 04 00 32 */	fmul f0, f4, f0
/* 80447B00  FC 00 00 18 */	frsp f0, f0
/* 80447B04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80447B08  C0 81 00 18 */	lfs f4, 0x18(r1)
lbl_80447B0C:
/* 80447B0C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80447B10  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80447B14  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 80447B18  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80447B1C  EC 22 20 28 */	fsubs f1, f2, f4
/* 80447B20  EF E2 08 28 */	fsubs f31, f2, f1
/* 80447B24  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80447B28  40 81 00 68 */	ble lbl_80447B90
/* 80447B2C  FC 20 F8 34 */	frsqrte f1, f31
/* 80447B30  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80447B34  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 80447B38  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80447B3C  C8 64 00 00 */	lfd f3, 0(r4)
/* 80447B40  FC 01 00 72 */	fmul f0, f1, f1
/* 80447B44  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 80447B48  FC 23 00 72 */	fmul f1, f3, f1
/* 80447B4C  FC 1F 00 32 */	fmul f0, f31, f0
/* 80447B50  FC 02 00 28 */	fsub f0, f2, f0
/* 80447B54  FC 21 00 32 */	fmul f1, f1, f0
/* 80447B58  FC 01 00 72 */	fmul f0, f1, f1
/* 80447B5C  FC 23 00 72 */	fmul f1, f3, f1
/* 80447B60  FC 1F 00 32 */	fmul f0, f31, f0
/* 80447B64  FC 02 00 28 */	fsub f0, f2, f0
/* 80447B68  FC 21 00 32 */	fmul f1, f1, f0
/* 80447B6C  FC 01 00 72 */	fmul f0, f1, f1
/* 80447B70  FC 23 00 72 */	fmul f1, f3, f1
/* 80447B74  FC 1F 00 32 */	fmul f0, f31, f0
/* 80447B78  FC 02 00 28 */	fsub f0, f2, f0
/* 80447B7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80447B80  FC 1F 00 32 */	fmul f0, f31, f0
/* 80447B84  FC 00 00 18 */	frsp f0, f0
/* 80447B88  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80447B8C  C3 E1 00 14 */	lfs f31, 0x14(r1)
lbl_80447B90:
/* 80447B90  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 80447B94  4B F7 2F 5D */	bl sin_s
/* 80447B98  A8 BE 06 32 */	lha r5, 0x632(r30)
/* 80447B9C  3C 00 43 30 */	lis r0, 0x4330
/* 80447BA0  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80447BA4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80447BA8  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80447BAC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80447BB0  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80447BB4  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80447BB8  C8 46 00 00 */	lfd f2, 0(r6)
/* 80447BBC  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80447BC0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80447BC4  38 7E 06 0E */	addi r3, r30, 0x60e
/* 80447BC8  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 80447BCC  38 A0 05 55 */	li r5, 0x555
/* 80447BD0  EC 40 10 28 */	fsubs f2, f0, f2
/* 80447BD4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80447BD8  38 C0 00 2D */	li r6, 0x2d
/* 80447BDC  EC 42 00 72 */	fmuls f2, f2, f1
/* 80447BE0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80447BE4  FC 00 10 1E */	fctiwz f0, f2
/* 80447BE8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80447BEC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80447BF0  7C 00 22 14 */	add r0, r0, r4
/* 80447BF4  7C 04 07 34 */	extsh r4, r0
/* 80447BF8  4B F7 37 19 */	bl add_calc_short_angle2
/* 80447BFC  3C 80 80 64 */	lis r4, lit_1680@ha /* 0x8064435C@ha */
/* 80447C00  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 80447C04  38 C4 43 5C */	addi r6, r4, lit_1680@l /* 0x8064435C@l */
/* 80447C08  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 80447C0C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80447C10  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80447C14  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 80447C18  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 80447C1C  FC 60 30 34 */	frsqrte f3, f6
/* 80447C20  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80447C24  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80447C28  C8 86 00 00 */	lfd f4, 0(r6)
/* 80447C2C  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80447C30  C0 45 00 00 */	lfs f2, 0(r5)
/* 80447C34  FC 23 00 F2 */	fmul f1, f3, f3
/* 80447C38  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80447C3C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80447C40  FC 26 00 72 */	fmul f1, f6, f1
/* 80447C44  FC 24 08 28 */	fsub f1, f4, f1
/* 80447C48  FC 63 00 72 */	fmul f3, f3, f1
/* 80447C4C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80447C50  FC 65 00 F2 */	fmul f3, f5, f3
/* 80447C54  FC 26 00 72 */	fmul f1, f6, f1
/* 80447C58  FC 24 08 28 */	fsub f1, f4, f1
/* 80447C5C  FC 63 00 72 */	fmul f3, f3, f1
/* 80447C60  FC 23 00 F2 */	fmul f1, f3, f3
/* 80447C64  FC 65 00 F2 */	fmul f3, f5, f3
/* 80447C68  FC 26 00 72 */	fmul f1, f6, f1
/* 80447C6C  FC 24 08 28 */	fsub f1, f4, f1
/* 80447C70  FC 23 00 72 */	fmul f1, f3, f1
/* 80447C74  FC 26 00 72 */	fmul f1, f6, f1
/* 80447C78  FC 20 08 18 */	frsp f1, f1
/* 80447C7C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80447C80  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80447C84  EC 22 08 28 */	fsubs f1, f2, f1
/* 80447C88  EC 42 08 28 */	fsubs f2, f2, f1
/* 80447C8C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80447C90  40 81 00 54 */	ble lbl_80447CE4
/* 80447C94  FC 20 10 34 */	frsqrte f1, f2
/* 80447C98  FC 01 00 72 */	fmul f0, f1, f1
/* 80447C9C  FC 25 00 72 */	fmul f1, f5, f1
/* 80447CA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80447CA4  FC 04 00 28 */	fsub f0, f4, f0
/* 80447CA8  FC 21 00 32 */	fmul f1, f1, f0
/* 80447CAC  FC 01 00 72 */	fmul f0, f1, f1
/* 80447CB0  FC 25 00 72 */	fmul f1, f5, f1
/* 80447CB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80447CB8  FC 04 00 28 */	fsub f0, f4, f0
/* 80447CBC  FC 21 00 32 */	fmul f1, f1, f0
/* 80447CC0  FC 01 00 72 */	fmul f0, f1, f1
/* 80447CC4  FC 25 00 72 */	fmul f1, f5, f1
/* 80447CC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80447CCC  FC 04 00 28 */	fsub f0, f4, f0
/* 80447CD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80447CD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80447CD8  FC 00 00 18 */	frsp f0, f0
/* 80447CDC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80447CE0  C0 41 00 0C */	lfs f2, 0xc(r1)
lbl_80447CE4:
/* 80447CE4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80447CE8  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 80447CEC  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80447CF0  38 7E 06 1C */	addi r3, r30, 0x61c
/* 80447CF4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80447CF8  38 A0 03 8E */	li r5, 0x38e
/* 80447CFC  38 C0 00 2D */	li r6, 0x2d
/* 80447D00  EC 20 10 28 */	fsubs f1, f0, f2
/* 80447D04  4B F7 36 0D */	bl add_calc_short_angle2
/* 80447D08  A8 7E 06 2E */	lha r3, 0x62e(r30)
/* 80447D0C  54 60 06 FD */	rlwinm. r0, r3, 0, 0x1b, 0x1e
/* 80447D10  41 82 00 14 */	beq lbl_80447D24
/* 80447D14  7F C3 F3 78 */	mr r3, r30
/* 80447D18  7F E4 FB 78 */	mr r4, r31
/* 80447D1C  48 00 03 65 */	bl mfish_gupi_turn_init
/* 80447D20  48 00 03 40 */	b lbl_80448060
lbl_80447D24:
/* 80447D24  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80447D28  41 82 00 A0 */	beq lbl_80447DC8
/* 80447D2C  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80447D30  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80447D34  38 C3 42 4C */	addi r6, r3, lit_469@l /* 0x8064424C@l */
/* 80447D38  7F C3 F3 78 */	mr r3, r30
/* 80447D3C  C8 86 00 00 */	lfd f4, 0(r6)
/* 80447D40  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 80447D44  C8 66 00 00 */	lfd f3, 0(r6)
/* 80447D48  7F E4 FB 78 */	mr r4, r31
/* 80447D4C  FC 20 20 34 */	frsqrte f1, f4
/* 80447D50  C8 45 00 00 */	lfd f2, 0(r5)
/* 80447D54  FC 01 00 72 */	fmul f0, f1, f1
/* 80447D58  FC 23 00 72 */	fmul f1, f3, f1
/* 80447D5C  FC 04 00 32 */	fmul f0, f4, f0
/* 80447D60  FC 02 00 28 */	fsub f0, f2, f0
/* 80447D64  FC 21 00 32 */	fmul f1, f1, f0
/* 80447D68  FC 01 00 72 */	fmul f0, f1, f1
/* 80447D6C  FC 23 00 72 */	fmul f1, f3, f1
/* 80447D70  FC 04 00 32 */	fmul f0, f4, f0
/* 80447D74  FC 02 00 28 */	fsub f0, f2, f0
/* 80447D78  FC 21 00 32 */	fmul f1, f1, f0
/* 80447D7C  FC 01 00 72 */	fmul f0, f1, f1
/* 80447D80  FC 23 00 72 */	fmul f1, f3, f1
/* 80447D84  FC 04 00 32 */	fmul f0, f4, f0
/* 80447D88  FC 02 00 28 */	fsub f0, f2, f0
/* 80447D8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80447D90  FC 04 00 32 */	fmul f0, f4, f0
/* 80447D94  FC 00 00 18 */	frsp f0, f0
/* 80447D98  D0 01 00 08 */	stfs f0, 8(r1)
/* 80447D9C  C3 E1 00 08 */	lfs f31, 8(r1)
/* 80447DA0  4B FF 03 05 */	bl mfish_get_escape_angle
/* 80447DA4  3C A0 80 64 */	lis r5, lit_472@ha /* 0x80644260@ha */
/* 80447DA8  7C 64 1B 78 */	mr r4, r3
/* 80447DAC  C0 05 42 60 */	lfs f0, lit_472@l(r5)  /* 0x80644260@l */
/* 80447DB0  38 7E 06 14 */	addi r3, r30, 0x614
/* 80447DB4  38 A0 0A AA */	li r5, 0xaaa
/* 80447DB8  38 C0 00 5B */	li r6, 0x5b
/* 80447DBC  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80447DC0  4B F7 35 51 */	bl add_calc_short_angle2
/* 80447DC4  48 00 02 9C */	b lbl_80448060
lbl_80447DC8:
/* 80447DC8  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 80447DCC  2C 00 00 00 */	cmpwi r0, 0
/* 80447DD0  40 80 01 AC */	bge lbl_80447F7C
/* 80447DD4  4B C1 4F 21 */	bl fqrand
/* 80447DD8  FF E0 08 90 */	fmr f31, f1
/* 80447DDC  4B C1 4F 19 */	bl fqrand
/* 80447DE0  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 80447DE4  3C 00 43 30 */	lis r0, 0x4330
/* 80447DE8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80447DEC  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80447DF0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80447DF4  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 80447DF8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80447DFC  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 80447E00  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80447E04  EC 00 10 28 */	fsubs f0, f0, f2
/* 80447E08  EC 00 00 72 */	fmuls f0, f0, f1
/* 80447E0C  FC 00 00 1E */	fctiwz f0, f0
/* 80447E10  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80447E14  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80447E18  7C 00 1A 14 */	add r0, r0, r3
/* 80447E1C  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 80447E20  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 80447E24  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 80447E28  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80447E2C  4B FE 97 BD */	bl func_804315E8
/* 80447E30  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80447E34  EC 00 08 2A */	fadds f0, f0, f1
/* 80447E38  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 80447E3C  4B C1 4E B9 */	bl fqrand
/* 80447E40  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80447E44  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 80447E48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80447E4C  40 80 00 44 */	bge lbl_80447E90
/* 80447E50  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 80447E54  3C 80 80 64 */	lis r4, lit_4775@ha /* 0x806443FC@ha */
/* 80447E58  C0 03 43 14 */	lfs f0, lit_1071@l(r3)  /* 0x80644314@l */
/* 80447E5C  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80447E60  C0 24 43 FC */	lfs f1, lit_4775@l(r4)  /* 0x806443FC@l */
/* 80447E64  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80447E68  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 80447E6C  A8 7E 06 14 */	lha r3, 0x614(r30)
/* 80447E70  EC 01 00 32 */	fmuls f0, f1, f0
/* 80447E74  EC 02 00 32 */	fmuls f0, f2, f0
/* 80447E78  FC 00 00 1E */	fctiwz f0, f0
/* 80447E7C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80447E80  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80447E84  7C 03 02 14 */	add r0, r3, r0
/* 80447E88  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 80447E8C  48 00 00 40 */	b lbl_80447ECC
lbl_80447E90:
/* 80447E90  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 80447E94  3C 80 80 64 */	lis r4, lit_4775@ha /* 0x806443FC@ha */
/* 80447E98  C0 03 43 14 */	lfs f0, lit_1071@l(r3)  /* 0x80644314@l */
/* 80447E9C  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80447EA0  C0 24 43 FC */	lfs f1, lit_4775@l(r4)  /* 0x806443FC@l */
/* 80447EA4  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80447EA8  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 80447EAC  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 80447EB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80447EB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80447EB8  FC 00 00 1E */	fctiwz f0, f0
/* 80447EBC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80447EC0  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80447EC4  7C 03 00 50 */	subf r0, r3, r0
/* 80447EC8  B0 1E 06 14 */	sth r0, 0x614(r30)
lbl_80447ECC:
/* 80447ECC  A8 7E 06 12 */	lha r3, 0x612(r30)
/* 80447ED0  7C 60 07 35 */	extsh. r0, r3
/* 80447ED4  7C 03 00 D0 */	neg r0, r3
/* 80447ED8  41 80 00 08 */	blt lbl_80447EE0
/* 80447EDC  7C 60 1B 78 */	mr r0, r3
lbl_80447EE0:
/* 80447EE0  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 80447EE4  40 81 01 7C */	ble lbl_80448060
/* 80447EE8  4B C1 4E 45 */	bl fqrand2
/* 80447EEC  A8 7E 00 30 */	lha r3, 0x30(r30)
/* 80447EF0  3C 00 43 30 */	lis r0, 0x4330
/* 80447EF4  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 80447EF8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80447EFC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 80447F00  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 80447F04  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80447F08  3C C0 80 64 */	lis r6, data_80644244@ha /* 0x80644244@ha */
/* 80447F0C  C0 03 43 14 */	lfs f0, lit_1071@l(r3)  /* 0x80644314@l */
/* 80447F10  C8 65 42 8C */	lfd f3, lit_570@l(r5)  /* 0x8064428C@l */
/* 80447F14  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 80447F18  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80447F1C  EC 42 18 28 */	fsubs f2, f2, f3
/* 80447F20  C0 66 42 44 */	lfs f3, data_80644244@l(r6)  /* 0x80644244@l */
/* 80447F24  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80447F28  EC 02 00 32 */	fmuls f0, f2, f0
/* 80447F2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80447F30  FC 00 00 1E */	fctiwz f0, f0
/* 80447F34  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80447F38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80447F3C  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 80447F40  A8 7E 06 12 */	lha r3, 0x612(r30)
/* 80447F44  7C 60 07 35 */	extsh. r0, r3
/* 80447F48  40 81 00 1C */	ble lbl_80447F64
/* 80447F4C  2C 03 03 8E */	cmpwi r3, 0x38e
/* 80447F50  38 00 03 8E */	li r0, 0x38e
/* 80447F54  40 81 00 08 */	ble lbl_80447F5C
/* 80447F58  7C 60 1B 78 */	mr r0, r3
lbl_80447F5C:
/* 80447F5C  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 80447F60  48 00 01 00 */	b lbl_80448060
lbl_80447F64:
/* 80447F64  2C 03 FC 72 */	cmpwi r3, -910
/* 80447F68  38 00 FC 72 */	li r0, -910
/* 80447F6C  40 80 00 08 */	bge lbl_80447F74
/* 80447F70  7C 60 1B 78 */	mr r0, r3
lbl_80447F74:
/* 80447F74  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 80447F78  48 00 00 E8 */	b lbl_80448060
lbl_80447F7C:
/* 80447F7C  3C 60 80 64 */	lis r3, lit_568@ha /* 0x80644284@ha */
/* 80447F80  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80447F84  C0 23 42 84 */	lfs f1, lit_568@l(r3)  /* 0x80644284@l */
/* 80447F88  C0 5E 05 F8 */	lfs f2, 0x5f8(r30)
/* 80447F8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80447F90  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80447F94  40 81 00 CC */	ble lbl_80448060
/* 80447F98  4B C1 4D 5D */	bl fqrand
/* 80447F9C  A8 BE 06 30 */	lha r5, 0x630(r30)
/* 80447FA0  3C 60 80 68 */	lis r3, suisou_pos@ha /* 0x80684E7C@ha */
/* 80447FA4  38 03 4E 7C */	addi r0, r3, suisou_pos@l /* 0x80684E7C@l */
/* 80447FA8  38 9E 05 A0 */	addi r4, r30, 0x5a0
/* 80447FAC  1C 65 00 0C */	mulli r3, r5, 0xc
/* 80447FB0  7C 60 1A 14 */	add r3, r0, r3
/* 80447FB4  4B F7 31 7D */	bl search_position_angleY
/* 80447FB8  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80447FBC  7C 7F 1B 78 */	mr r31, r3
/* 80447FC0  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80447FC4  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 80447FC8  4B C1 4D 65 */	bl fqrand2
/* 80447FCC  3C 80 80 64 */	lis r4, lit_4775@ha /* 0x806443FC@ha */
/* 80447FD0  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 80447FD4  C0 44 43 FC */	lfs f2, lit_4775@l(r4)  /* 0x806443FC@l */
/* 80447FD8  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 80447FDC  EC 22 00 72 */	fmuls f1, f2, f1
/* 80447FE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80447FE4  FC 00 00 1E */	fctiwz f0, f0
/* 80447FE8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80447FEC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80447FF0  7C 1F 02 14 */	add r0, r31, r0
/* 80447FF4  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 80447FF8  4B C1 4C FD */	bl fqrand
/* 80447FFC  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 80448000  3C 00 43 30 */	lis r0, 0x4330
/* 80448004  90 01 00 20 */	stw r0, 0x20(r1)
/* 80448008  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044800C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80448010  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 80448014  90 61 00 24 */	stw r3, 0x24(r1)
/* 80448018  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8044801C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80448020  EC 00 10 28 */	fsubs f0, f0, f2
/* 80448024  EC 00 00 72 */	fmuls f0, f0, f1
/* 80448028  FC 00 00 1E */	fctiwz f0, f0
/* 8044802C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80448030  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80448034  7C 00 1A 14 */	add r0, r0, r3
/* 80448038  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8044803C  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 80448040  7C 00 0E 70 */	srawi r0, r0, 1
/* 80448044  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 80448048  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044804C  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 80448050  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80448054  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80448058  EC 01 00 2A */	fadds f0, f1, f0
/* 8044805C  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
lbl_80448060:
/* 80448060  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80448064  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80448068  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8044806C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80448070  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80448074  7C 08 03 A6 */	mtlr r0
/* 80448078  38 21 00 50 */	addi r1, r1, 0x50
/* 8044807C  4E 80 00 20 */	blr 

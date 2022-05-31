lbl_80453D50:
/* 80453D50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80453D54  7C 08 02 A6 */	mflr r0
/* 80453D58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80453D5C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80453D60  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80453D64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80453D68  7C 7F 1B 78 */	mr r31, r3
/* 80453D6C  4B C0 8F 89 */	bl fqrand
/* 80453D70  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80453D74  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80453D78  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80453D7C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80453D80  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80453D84  EC 63 10 2A */	fadds f3, f3, f2
/* 80453D88  EC 22 08 2A */	fadds f1, f2, f1
/* 80453D8C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80453D90  40 81 00 08 */	ble lbl_80453D98
/* 80453D94  48 00 00 08 */	b lbl_80453D9C
lbl_80453D98:
/* 80453D98  FC 60 00 90 */	fmr f3, f0
lbl_80453D9C:
/* 80453D9C  EF E1 18 24 */	fdivs f31, f1, f3
/* 80453DA0  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 80453DA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80453DA8  40 81 00 08 */	ble lbl_80453DB0
/* 80453DAC  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
lbl_80453DB0:
/* 80453DB0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80453DB4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80453DB8  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 80453DBC  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 80453DC0  4B C0 8F 35 */	bl fqrand
/* 80453DC4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80453DC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80453DCC  40 81 00 D4 */	ble lbl_80453EA0
/* 80453DD0  A8 7F 00 30 */	lha r3, 0x30(r31)
/* 80453DD4  3C 00 43 30 */	lis r0, 0x4330
/* 80453DD8  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80453DDC  3C A0 80 64 */	lis r5, data_80644244@ha /* 0x80644244@ha */
/* 80453DE0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80453DE4  90 01 00 08 */	stw r0, 8(r1)
/* 80453DE8  C8 24 42 8C */	lfd f1, lit_570@l(r4)  /* 0x8064428C@l */
/* 80453DEC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80453DF0  C0 45 42 44 */	lfs f2, data_80644244@l(r5)  /* 0x80644244@l */
/* 80453DF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80453DF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80453DFC  EC 22 00 32 */	fmuls f1, f2, f0
/* 80453E00  4B FD D9 59 */	bl Rnd_EX_fx
/* 80453E04  FC 00 08 1E */	fctiwz f0, f1
/* 80453E08  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 80453E0C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80453E10  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80453E14  7C 00 1A 14 */	add r0, r0, r3
/* 80453E18  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80453E1C  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80453E20  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 80453E24  7C 83 00 50 */	subf r4, r3, r0
/* 80453E28  7C 80 07 34 */	extsh r0, r4
/* 80453E2C  7C 83 07 35 */	extsh. r3, r4
/* 80453E30  7C 60 00 D0 */	neg r3, r0
/* 80453E34  41 80 00 08 */	blt lbl_80453E3C
/* 80453E38  7C 03 03 78 */	mr r3, r0
lbl_80453E3C:
/* 80453E3C  2C 03 0E 38 */	cmpwi r3, 0xe38
/* 80453E40  40 80 00 28 */	bge lbl_80453E68
/* 80453E44  7C 80 07 35 */	extsh. r0, r4
/* 80453E48  40 81 00 14 */	ble lbl_80453E5C
/* 80453E4C  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80453E50  38 03 0E 38 */	addi r0, r3, 0xe38
/* 80453E54  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80453E58  48 00 00 10 */	b lbl_80453E68
lbl_80453E5C:
/* 80453E5C  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80453E60  38 03 F1 C8 */	addi r0, r3, -3640
/* 80453E64  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_80453E68:
/* 80453E68  3C 60 80 64 */	lis r3, lit_699@ha /* 0x806442B8@ha */
/* 80453E6C  3C 80 80 64 */	lis r4, lit_568@ha /* 0x80644284@ha */
/* 80453E70  C0 03 42 B8 */	lfs f0, lit_699@l(r3)  /* 0x806442B8@l */
/* 80453E74  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80453E78  C0 24 42 84 */	lfs f1, lit_568@l(r4)  /* 0x80644284@l */
/* 80453E7C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80453E80  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 80453E84  EC 01 00 2A */	fadds f0, f1, f0
/* 80453E88  EC 02 00 32 */	fmuls f0, f2, f0
/* 80453E8C  FC 00 00 1E */	fctiwz f0, f0
/* 80453E90  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80453E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80453E98  B0 1F 06 32 */	sth r0, 0x632(r31)
/* 80453E9C  48 00 00 60 */	b lbl_80453EFC
lbl_80453EA0:
/* 80453EA0  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80453EA4  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80453EA8  7C 00 18 50 */	subf r0, r0, r3
/* 80453EAC  7C 00 07 35 */	extsh. r0, r0
/* 80453EB0  40 81 00 10 */	ble lbl_80453EC0
/* 80453EB4  38 03 0A AA */	addi r0, r3, 0xaaa
/* 80453EB8  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80453EBC  48 00 00 0C */	b lbl_80453EC8
lbl_80453EC0:
/* 80453EC0  38 03 F5 56 */	addi r0, r3, -2730
/* 80453EC4  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_80453EC8:
/* 80453EC8  3C 60 80 64 */	lis r3, lit_6315@ha /* 0x8064441C@ha */
/* 80453ECC  3C 80 80 64 */	lis r4, lit_699@ha /* 0x806442B8@ha */
/* 80453ED0  C0 03 44 1C */	lfs f0, lit_6315@l(r3)  /* 0x8064441C@l */
/* 80453ED4  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80453ED8  C0 24 42 B8 */	lfs f1, lit_699@l(r4)  /* 0x806442B8@l */
/* 80453EDC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80453EE0  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 80453EE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80453EE8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80453EEC  FC 00 00 1E */	fctiwz f0, f0
/* 80453EF0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80453EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80453EF8  B0 1F 06 32 */	sth r0, 0x632(r31)
lbl_80453EFC:
/* 80453EFC  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80453F00  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80453F04  7C 03 00 50 */	subf r0, r3, r0
/* 80453F08  7C 00 07 35 */	extsh. r0, r0
/* 80453F0C  40 81 00 10 */	ble lbl_80453F1C
/* 80453F10  38 00 00 00 */	li r0, 0
/* 80453F14  B0 1F 06 36 */	sth r0, 0x636(r31)
/* 80453F18  48 00 00 0C */	b lbl_80453F24
lbl_80453F1C:
/* 80453F1C  38 00 80 00 */	li r0, -32768
/* 80453F20  B0 1F 06 36 */	sth r0, 0x636(r31)
lbl_80453F24:
/* 80453F24  A8 9F 06 2E */	lha r4, 0x62e(r31)
/* 80453F28  3C 60 80 45 */	lis r3, mfish_namazu_normal_process@ha /* 0x80453F58@ha */
/* 80453F2C  38 03 3F 58 */	addi r0, r3, mfish_namazu_normal_process@l /* 0x80453F58@l */
/* 80453F30  54 83 06 AE */	rlwinm r3, r4, 0, 0x1a, 0x17
/* 80453F34  B0 7F 06 2E */	sth r3, 0x62e(r31)
/* 80453F38  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80453F3C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80453F40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80453F44  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80453F48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80453F4C  7C 08 03 A6 */	mtlr r0
/* 80453F50  38 21 00 30 */	addi r1, r1, 0x30
/* 80453F54  4E 80 00 20 */	blr 

lbl_80438D60:
/* 80438D60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80438D64  7C 08 02 A6 */	mflr r0
/* 80438D68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80438D6C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80438D70  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80438D74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80438D78  7C 7F 1B 78 */	mr r31, r3
/* 80438D7C  4B C2 3F 79 */	bl fqrand
/* 80438D80  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80438D84  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80438D88  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80438D8C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80438D90  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80438D94  EC 63 10 2A */	fadds f3, f3, f2
/* 80438D98  EC 22 08 2A */	fadds f1, f2, f1
/* 80438D9C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80438DA0  40 81 00 08 */	ble lbl_80438DA8
/* 80438DA4  48 00 00 08 */	b lbl_80438DAC
lbl_80438DA8:
/* 80438DA8  FC 60 00 90 */	fmr f3, f0
lbl_80438DAC:
/* 80438DAC  EF E1 18 24 */	fdivs f31, f1, f3
/* 80438DB0  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 80438DB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80438DB8  40 81 00 08 */	ble lbl_80438DC0
/* 80438DBC  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
lbl_80438DC0:
/* 80438DC0  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 80438DC4  C0 23 42 B0 */	lfs f1, lit_697@l(r3)  /* 0x806442B0@l */
/* 80438DC8  4B FF 89 91 */	bl Rnd_EX_fx
/* 80438DCC  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80438DD0  3C 60 80 64 */	lis r3, lit_1475@ha /* 0x8064433C@ha */
/* 80438DD4  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80644298@ha */
/* 80438DD8  C0 63 43 3C */	lfs f3, lit_1475@l(r3)  /* 0x8064433C@l */
/* 80438DDC  C0 84 42 98 */	lfs f4, lit_588@l(r4)  /* 0x80644298@l */
/* 80438DE0  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 80438DE4  C0 5F 05 F4 */	lfs f2, 0x5f4(r31)
/* 80438DE8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80438DEC  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 80438DF0  EC 22 08 2A */	fadds f1, f2, f1
/* 80438DF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80438DF8  EC 03 00 32 */	fmuls f0, f3, f0
/* 80438DFC  EC 04 00 32 */	fmuls f0, f4, f0
/* 80438E00  FC 00 00 1E */	fctiwz f0, f0
/* 80438E04  D8 01 00 08 */	stfd f0, 8(r1)
/* 80438E08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80438E0C  B0 1F 06 12 */	sth r0, 0x612(r31)
/* 80438E10  A8 7F 06 12 */	lha r3, 0x612(r31)
/* 80438E14  2C 03 D5 56 */	cmpwi r3, -10922
/* 80438E18  40 80 00 0C */	bge lbl_80438E24
/* 80438E1C  38 00 D5 56 */	li r0, -10922
/* 80438E20  48 00 00 14 */	b lbl_80438E34
lbl_80438E24:
/* 80438E24  2C 03 2A AA */	cmpwi r3, 0x2aaa
/* 80438E28  38 00 2A AA */	li r0, 0x2aaa
/* 80438E2C  41 81 00 08 */	bgt lbl_80438E34
/* 80438E30  7C 60 1B 78 */	mr r0, r3
lbl_80438E34:
/* 80438E34  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80438E38  B0 1F 06 12 */	sth r0, 0x612(r31)
/* 80438E3C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80438E40  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 80438E44  4B C2 3E B1 */	bl fqrand
/* 80438E48  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80438E4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80438E50  40 81 00 D4 */	ble lbl_80438F24
/* 80438E54  A8 7F 00 30 */	lha r3, 0x30(r31)
/* 80438E58  3C 00 43 30 */	lis r0, 0x4330
/* 80438E5C  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80438E60  3C A0 80 64 */	lis r5, data_80644244@ha /* 0x80644244@ha */
/* 80438E64  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80438E68  90 01 00 08 */	stw r0, 8(r1)
/* 80438E6C  C8 24 42 8C */	lfd f1, lit_570@l(r4)  /* 0x8064428C@l */
/* 80438E70  90 61 00 0C */	stw r3, 0xc(r1)
/* 80438E74  C0 45 42 44 */	lfs f2, data_80644244@l(r5)  /* 0x80644244@l */
/* 80438E78  C8 01 00 08 */	lfd f0, 8(r1)
/* 80438E7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80438E80  EC 22 00 32 */	fmuls f1, f2, f0
/* 80438E84  4B FF 88 D5 */	bl Rnd_EX_fx
/* 80438E88  FC 00 08 1E */	fctiwz f0, f1
/* 80438E8C  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 80438E90  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80438E94  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80438E98  7C 00 1A 14 */	add r0, r0, r3
/* 80438E9C  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80438EA0  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80438EA4  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 80438EA8  7C 83 00 50 */	subf r4, r3, r0
/* 80438EAC  7C 80 07 34 */	extsh r0, r4
/* 80438EB0  7C 83 07 35 */	extsh. r3, r4
/* 80438EB4  7C 60 00 D0 */	neg r3, r0
/* 80438EB8  41 80 00 08 */	blt lbl_80438EC0
/* 80438EBC  7C 03 03 78 */	mr r3, r0
lbl_80438EC0:
/* 80438EC0  2C 03 0E 38 */	cmpwi r3, 0xe38
/* 80438EC4  40 80 00 28 */	bge lbl_80438EEC
/* 80438EC8  7C 80 07 35 */	extsh. r0, r4
/* 80438ECC  40 81 00 14 */	ble lbl_80438EE0
/* 80438ED0  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80438ED4  38 03 0E 38 */	addi r0, r3, 0xe38
/* 80438ED8  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80438EDC  48 00 00 10 */	b lbl_80438EEC
lbl_80438EE0:
/* 80438EE0  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80438EE4  38 03 F1 C8 */	addi r0, r3, -3640
/* 80438EE8  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_80438EEC:
/* 80438EEC  3C 60 80 64 */	lis r3, lit_568@ha /* 0x80644284@ha */
/* 80438EF0  3C 80 80 64 */	lis r4, lit_698@ha /* 0x806442B4@ha */
/* 80438EF4  C0 03 42 84 */	lfs f0, lit_568@l(r3)  /* 0x80644284@l */
/* 80438EF8  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80438EFC  C0 24 42 B4 */	lfs f1, lit_698@l(r4)  /* 0x806442B4@l */
/* 80438F00  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80438F04  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 80438F08  EC 01 00 2A */	fadds f0, f1, f0
/* 80438F0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80438F10  FC 00 00 1E */	fctiwz f0, f0
/* 80438F14  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80438F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80438F1C  B0 1F 06 32 */	sth r0, 0x632(r31)
/* 80438F20  48 00 00 60 */	b lbl_80438F80
lbl_80438F24:
/* 80438F24  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80438F28  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80438F2C  7C 00 18 50 */	subf r0, r0, r3
/* 80438F30  7C 00 07 35 */	extsh. r0, r0
/* 80438F34  40 81 00 10 */	ble lbl_80438F44
/* 80438F38  38 03 0E 38 */	addi r0, r3, 0xe38
/* 80438F3C  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80438F40  48 00 00 0C */	b lbl_80438F4C
lbl_80438F44:
/* 80438F44  38 03 F1 C8 */	addi r0, r3, -3640
/* 80438F48  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_80438F4C:
/* 80438F4C  3C 60 80 64 */	lis r3, lit_699@ha /* 0x806442B8@ha */
/* 80438F50  3C 80 80 64 */	lis r4, lit_568@ha /* 0x80644284@ha */
/* 80438F54  C0 03 42 B8 */	lfs f0, lit_699@l(r3)  /* 0x806442B8@l */
/* 80438F58  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80438F5C  C0 24 42 84 */	lfs f1, lit_568@l(r4)  /* 0x80644284@l */
/* 80438F60  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80438F64  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 80438F68  EC 01 00 2A */	fadds f0, f1, f0
/* 80438F6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80438F70  FC 00 00 1E */	fctiwz f0, f0
/* 80438F74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80438F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80438F7C  B0 1F 06 32 */	sth r0, 0x632(r31)
lbl_80438F80:
/* 80438F80  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80438F84  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80438F88  7C 03 00 50 */	subf r0, r3, r0
/* 80438F8C  7C 00 07 35 */	extsh. r0, r0
/* 80438F90  40 81 00 10 */	ble lbl_80438FA0
/* 80438F94  38 00 00 00 */	li r0, 0
/* 80438F98  B0 1F 06 36 */	sth r0, 0x636(r31)
/* 80438F9C  48 00 00 0C */	b lbl_80438FA8
lbl_80438FA0:
/* 80438FA0  38 00 80 00 */	li r0, -32768
/* 80438FA4  B0 1F 06 36 */	sth r0, 0x636(r31)
lbl_80438FA8:
/* 80438FA8  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 80438FAC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80438FB0  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 80438FB4  54 00 06 AE */	rlwinm r0, r0, 0, 0x1a, 0x17
/* 80438FB8  C0 04 00 00 */	lfs f0, 0(r4)
/* 80438FBC  B0 1F 06 2E */	sth r0, 0x62e(r31)
/* 80438FC0  3C 60 80 44 */	lis r3, mfish_afish_normal_process@ha /* 0x80438FEC@ha */
/* 80438FC4  38 03 8F EC */	addi r0, r3, mfish_afish_normal_process@l /* 0x80438FEC@l */
/* 80438FC8  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80438FCC  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80438FD0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80438FD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80438FD8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80438FDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80438FE0  7C 08 03 A6 */	mtlr r0
/* 80438FE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80438FE8  4E 80 00 20 */	blr 

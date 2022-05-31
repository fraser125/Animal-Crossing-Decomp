lbl_80454DC4:
/* 80454DC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80454DC8  7C 08 02 A6 */	mflr r0
/* 80454DCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80454DD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80454DD4  7C 7F 1B 78 */	mr r31, r3
/* 80454DD8  4B C0 7F 1D */	bl fqrand
/* 80454DDC  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80454DE0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80454DE4  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80454DE8  EC 23 00 72 */	fmuls f1, f3, f1
/* 80454DEC  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80454DF0  EC 63 10 2A */	fadds f3, f3, f2
/* 80454DF4  EC 22 08 2A */	fadds f1, f2, f1
/* 80454DF8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80454DFC  40 81 00 08 */	ble lbl_80454E04
/* 80454E00  48 00 00 08 */	b lbl_80454E08
lbl_80454E04:
/* 80454E04  FC 60 00 90 */	fmr f3, f0
lbl_80454E08:
/* 80454E08  EC 41 18 24 */	fdivs f2, f1, f3
/* 80454E0C  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 80454E10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80454E14  40 81 00 08 */	ble lbl_80454E1C
/* 80454E18  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
lbl_80454E1C:
/* 80454E1C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80454E20  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80454E24  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 80454E28  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 80454E2C  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80454E30  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80454E34  7C 00 18 50 */	subf r0, r0, r3
/* 80454E38  7C 00 07 35 */	extsh. r0, r0
/* 80454E3C  40 81 00 10 */	ble lbl_80454E4C
/* 80454E40  38 03 0A AA */	addi r0, r3, 0xaaa
/* 80454E44  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80454E48  48 00 00 0C */	b lbl_80454E54
lbl_80454E4C:
/* 80454E4C  38 03 F5 56 */	addi r0, r3, -2730
/* 80454E50  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_80454E54:
/* 80454E54  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 80454E58  3C 80 80 64 */	lis r4, lit_568@ha /* 0x80644284@ha */
/* 80454E5C  C0 03 42 74 */	lfs f0, lit_530@l(r3)  /* 0x80644274@l */
/* 80454E60  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80454E64  C0 24 42 84 */	lfs f1, lit_568@l(r4)  /* 0x80644284@l */
/* 80454E68  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80454E6C  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 80454E70  EC 01 00 2A */	fadds f0, f1, f0
/* 80454E74  EC 02 00 32 */	fmuls f0, f2, f0
/* 80454E78  FC 00 00 1E */	fctiwz f0, f0
/* 80454E7C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80454E80  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80454E84  B0 1F 06 32 */	sth r0, 0x632(r31)
/* 80454E88  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80454E8C  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80454E90  7C 03 00 50 */	subf r0, r3, r0
/* 80454E94  7C 00 07 35 */	extsh. r0, r0
/* 80454E98  40 81 00 10 */	ble lbl_80454EA8
/* 80454E9C  38 00 00 00 */	li r0, 0
/* 80454EA0  B0 1F 06 36 */	sth r0, 0x636(r31)
/* 80454EA4  48 00 00 0C */	b lbl_80454EB0
lbl_80454EA8:
/* 80454EA8  38 00 80 00 */	li r0, -32768
/* 80454EAC  B0 1F 06 36 */	sth r0, 0x636(r31)
lbl_80454EB0:
/* 80454EB0  A8 9F 06 2E */	lha r4, 0x62e(r31)
/* 80454EB4  3C 60 80 45 */	lis r3, mfish_namazu_ground_sweep_process@ha /* 0x80454EDC@ha */
/* 80454EB8  38 03 4E DC */	addi r0, r3, mfish_namazu_ground_sweep_process@l /* 0x80454EDC@l */
/* 80454EBC  54 83 06 AE */	rlwinm r3, r4, 0, 0x1a, 0x17
/* 80454EC0  B0 7F 06 2E */	sth r3, 0x62e(r31)
/* 80454EC4  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80454EC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80454ECC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80454ED0  7C 08 03 A6 */	mtlr r0
/* 80454ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 80454ED8  4E 80 00 20 */	blr 

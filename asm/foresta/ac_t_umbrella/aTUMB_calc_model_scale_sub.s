lbl_804A9ED4:
/* 804A9ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9ED8  3C C0 80 69 */	lis r6, data_table@ha /* 0x8068F084@ha */
/* 804A9EDC  38 E0 00 00 */	li r7, 0
/* 804A9EE0  80 04 01 D0 */	lwz r0, 0x1d0(r4)
/* 804A9EE4  C0 04 01 D4 */	lfs f0, 0x1d4(r4)
/* 804A9EE8  38 86 F0 84 */	addi r4, r6, data_table@l /* 0x8068F084@l */
/* 804A9EEC  54 06 10 3A */	slwi r6, r0, 2
/* 804A9EF0  1C 05 00 0C */	mulli r0, r5, 0xc
/* 804A9EF4  7C 84 30 2E */	lwzx r4, r4, r6
/* 804A9EF8  FC 00 00 1E */	fctiwz f0, f0
/* 804A9EFC  7C C4 02 14 */	add r6, r4, r0
/* 804A9F00  80 A6 00 00 */	lwz r5, 0(r6)
/* 804A9F04  80 86 00 04 */	lwz r4, 4(r6)
/* 804A9F08  34 05 FF FF */	addic. r0, r5, -1
/* 804A9F0C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804A9F10  39 04 00 04 */	addi r8, r4, 4
/* 804A9F14  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804A9F18  7C 09 03 A6 */	mtctr r0
/* 804A9F1C  40 81 00 40 */	ble lbl_804A9F5C
lbl_804A9F20:
/* 804A9F20  C0 08 00 00 */	lfs f0, 0(r8)
/* 804A9F24  FC 00 00 1E */	fctiwz f0, f0
/* 804A9F28  D8 01 00 08 */	stfd f0, 8(r1)
/* 804A9F2C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804A9F30  7C 05 00 00 */	cmpw r5, r0
/* 804A9F34  41 81 00 1C */	bgt lbl_804A9F50
/* 804A9F38  C0 08 FF FC */	lfs f0, -4(r8)
/* 804A9F3C  FC 00 00 1E */	fctiwz f0, f0
/* 804A9F40  D8 01 00 08 */	stfd f0, 8(r1)
/* 804A9F44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804A9F48  7C A0 28 50 */	subf r5, r0, r5
/* 804A9F4C  48 00 00 10 */	b lbl_804A9F5C
lbl_804A9F50:
/* 804A9F50  39 08 00 04 */	addi r8, r8, 4
/* 804A9F54  38 E7 00 01 */	addi r7, r7, 1
/* 804A9F58  42 00 FF C8 */	bdnz lbl_804A9F20
lbl_804A9F5C:
/* 804A9F5C  6C A4 80 00 */	xoris r4, r5, 0x8000
/* 804A9F60  3C 00 43 30 */	lis r0, 0x4330
/* 804A9F64  90 01 00 08 */	stw r0, 8(r1)
/* 804A9F68  3C A0 80 64 */	lis r5, data_80645E2C@ha /* 0x80645E2C@ha */
/* 804A9F6C  C8 65 5E 2C */	lfd f3, data_80645E2C@l(r5)  /* 0x80645E2C@l */
/* 804A9F70  54 E0 18 38 */	slwi r0, r7, 3
/* 804A9F74  90 81 00 0C */	stw r4, 0xc(r1)
/* 804A9F78  C0 28 00 00 */	lfs f1, 0(r8)
/* 804A9F7C  C0 08 FF FC */	lfs f0, -4(r8)
/* 804A9F80  C8 41 00 08 */	lfd f2, 8(r1)
/* 804A9F84  EC 21 00 28 */	fsubs f1, f1, f0
/* 804A9F88  80 A6 00 08 */	lwz r5, 8(r6)
/* 804A9F8C  EC 42 18 28 */	fsubs f2, f2, f3
/* 804A9F90  7C 85 02 14 */	add r4, r5, r0
/* 804A9F94  7C 65 04 2E */	lfsx f3, r5, r0
/* 804A9F98  C0 04 00 08 */	lfs f0, 8(r4)
/* 804A9F9C  EC 42 08 24 */	fdivs f2, f2, f1
/* 804A9FA0  C0 84 00 04 */	lfs f4, 4(r4)
/* 804A9FA4  C0 A4 00 0C */	lfs f5, 0xc(r4)
/* 804A9FA8  EC 20 18 28 */	fsubs f1, f0, f3
/* 804A9FAC  EC 05 20 28 */	fsubs f0, f5, f4
/* 804A9FB0  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A9FB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A9FB8  EC 23 08 2A */	fadds f1, f3, f1
/* 804A9FBC  EC 04 00 2A */	fadds f0, f4, f0
/* 804A9FC0  D0 23 00 00 */	stfs f1, 0(r3)
/* 804A9FC4  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A9FC8  C0 03 00 04 */	lfs f0, 4(r3)
/* 804A9FCC  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A9FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9FD4  4E 80 00 20 */	blr 

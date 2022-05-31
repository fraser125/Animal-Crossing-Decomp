lbl_8043F610:
/* 8043F610  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043F614  7C 08 02 A6 */	mflr r0
/* 8043F618  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043F61C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043F620  7C 9F 23 78 */	mr r31, r4
/* 8043F624  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8043F628  7C 7E 1B 78 */	mr r30, r3
/* 8043F62C  4B FF 4E DD */	bl mfish_onefish_ct
/* 8043F630  4B C1 D6 C5 */	bl fqrand
/* 8043F634  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8043F638  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8043F63C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043F640  EC 00 08 2A */	fadds f0, f0, f1
/* 8043F644  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 8043F648  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043F64C  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 8043F650  4B C1 D6 A5 */	bl fqrand
/* 8043F654  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043F658  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043F65C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043F660  40 81 00 10 */	ble lbl_8043F670
/* 8043F664  38 00 40 00 */	li r0, 0x4000
/* 8043F668  B0 1E 06 0E */	sth r0, 0x60e(r30)
/* 8043F66C  48 00 00 0C */	b lbl_8043F678
lbl_8043F670:
/* 8043F670  38 00 C0 00 */	li r0, -16384
/* 8043F674  B0 1E 06 0E */	sth r0, 0x60e(r30)
lbl_8043F678:
/* 8043F678  A8 1E 06 0E */	lha r0, 0x60e(r30)
/* 8043F67C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043F680  38 A3 42 48 */	addi r5, r3, lit_468@l /* 0x80644248@l */
/* 8043F684  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 8043F688  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8043F68C  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 8043F690  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043F694  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 8043F698  80 64 00 00 */	lwz r3, 0(r4)
/* 8043F69C  80 04 00 04 */	lwz r0, 4(r4)
/* 8043F6A0  90 7E 05 AC */	stw r3, 0x5ac(r30)
/* 8043F6A4  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 8043F6A8  80 04 00 08 */	lwz r0, 8(r4)
/* 8043F6AC  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8043F6B0  4B C1 D6 1D */	bl func_8005CCCC
/* 8043F6B4  B0 7E 06 38 */	sth r3, 0x638(r30)
/* 8043F6B8  38 00 00 00 */	li r0, 0
/* 8043F6BC  B0 1E 06 22 */	sth r0, 0x622(r30)
/* 8043F6C0  B0 1E 06 34 */	sth r0, 0x634(r30)
/* 8043F6C4  4B C1 D6 31 */	bl fqrand
/* 8043F6C8  A8 9E 00 2E */	lha r4, 0x2e(r30)
/* 8043F6CC  3C 00 43 30 */	lis r0, 0x4330
/* 8043F6D0  90 01 00 08 */	stw r0, 8(r1)
/* 8043F6D4  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043F6D8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8043F6DC  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 8043F6E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8043F6E4  38 A0 00 01 */	li r5, 1
/* 8043F6E8  A8 DE 00 2C */	lha r6, 0x2c(r30)
/* 8043F6EC  38 00 00 00 */	li r0, 0
/* 8043F6F0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8043F6F4  7F C3 F3 78 */	mr r3, r30
/* 8043F6F8  7F E4 FB 78 */	mr r4, r31
/* 8043F6FC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043F700  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043F704  FC 00 00 1E */	fctiwz f0, f0
/* 8043F708  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043F70C  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 8043F710  7C C6 3A 14 */	add r6, r6, r7
/* 8043F714  B0 DE 06 26 */	sth r6, 0x626(r30)
/* 8043F718  B0 BE 06 24 */	sth r5, 0x624(r30)
/* 8043F71C  90 1E 05 94 */	stw r0, 0x594(r30)
/* 8043F720  90 1E 05 98 */	stw r0, 0x598(r30)
/* 8043F724  48 00 00 29 */	bl mfish_kaseki_normal_init
/* 8043F728  7F C3 F3 78 */	mr r3, r30
/* 8043F72C  7F E4 FB 78 */	mr r4, r31
/* 8043F730  4B FF 65 61 */	bl Museum_Fish_BGCheck
/* 8043F734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043F738  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043F73C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8043F740  7C 08 03 A6 */	mtlr r0
/* 8043F744  38 21 00 20 */	addi r1, r1, 0x20
/* 8043F748  4E 80 00 20 */	blr 

lbl_80403794:
/* 80403794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80403798  3C A0 80 64 */	lis r5, mVW_data@ha /* 0x80643538@ha */
/* 8040379C  38 A5 35 38 */	addi r5, r5, mVW_data@l /* 0x80643538@l */
/* 804037A0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804037A4  80 83 00 38 */	lwz r4, 0x38(r3)
/* 804037A8  1C C0 00 0C */	mulli r6, r0, 0xc
/* 804037AC  38 04 00 01 */	addi r0, r4, 1
/* 804037B0  7C 83 32 14 */	add r4, r3, r6
/* 804037B4  80 C4 00 00 */	lwz r6, 0(r4)
/* 804037B8  90 03 00 38 */	stw r0, 0x38(r3)
/* 804037BC  54 C0 18 38 */	slwi r0, r6, 3
/* 804037C0  7D 05 02 14 */	add r8, r5, r0
/* 804037C4  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 804037C8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 804037CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804037D0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 804037D4  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804037D8  2C 00 00 00 */	cmpwi r0, 0
/* 804037DC  40 82 00 40 */	bne lbl_8040381C
/* 804037E0  80 C3 00 38 */	lwz r6, 0x38(r3)
/* 804037E4  3C 00 43 30 */	lis r0, 0x4330
/* 804037E8  90 01 00 08 */	stw r0, 8(r1)
/* 804037EC  3C A0 80 64 */	lis r5, lit_398@ha /* 0x806435BC@ha */
/* 804037F0  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 804037F4  C8 45 35 BC */	lfd f2, lit_398@l(r5)  /* 0x806435BC@l */
/* 804037F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804037FC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80403800  C8 21 00 08 */	lfd f1, 8(r1)
/* 80403804  C0 63 00 34 */	lfs f3, 0x34(r3)
/* 80403808  EC 21 10 28 */	fsubs f1, f1, f2
/* 8040380C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80403810  EC 03 00 32 */	fmuls f0, f3, f0
/* 80403814  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80403818  48 00 00 4C */	b lbl_80403864
lbl_8040381C:
/* 8040381C  2C 00 00 02 */	cmpwi r0, 2
/* 80403820  40 82 00 44 */	bne lbl_80403864
/* 80403824  80 E3 00 38 */	lwz r7, 0x38(r3)
/* 80403828  3C 00 43 30 */	lis r0, 0x4330
/* 8040382C  80 C4 00 04 */	lwz r6, 4(r4)
/* 80403830  3C A0 80 64 */	lis r5, lit_398@ha /* 0x806435BC@ha */
/* 80403834  90 01 00 08 */	stw r0, 8(r1)
/* 80403838  7C 07 30 50 */	subf r0, r7, r6
/* 8040383C  C8 25 35 BC */	lfd f1, lit_398@l(r5)  /* 0x806435BC@l */
/* 80403840  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80403844  C0 44 00 08 */	lfs f2, 8(r4)
/* 80403848  90 01 00 0C */	stw r0, 0xc(r1)
/* 8040384C  C0 63 00 34 */	lfs f3, 0x34(r3)
/* 80403850  C8 01 00 08 */	lfd f0, 8(r1)
/* 80403854  EC 00 08 28 */	fsubs f0, f0, f1
/* 80403858  EC 02 00 32 */	fmuls f0, f2, f0
/* 8040385C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80403860  D0 03 00 34 */	stfs f0, 0x34(r3)
lbl_80403864:
/* 80403864  80 A8 00 00 */	lwz r5, 0(r8)
/* 80403868  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8040386C  7C 05 00 AE */	lbzx r0, r5, r0
/* 80403870  28 00 00 01 */	cmplwi r0, 1
/* 80403874  40 82 00 50 */	bne lbl_804038C4
/* 80403878  C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 8040387C  3C A0 80 64 */	lis r5, lit_396@ha /* 0x806435B8@ha */
/* 80403880  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80403884  C0 25 35 B8 */	lfs f1, lit_396@l(r5)  /* 0x806435B8@l */
/* 80403888  EC 02 00 2A */	fadds f0, f2, f0
/* 8040388C  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80403890  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80403894  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80403898  4C 41 13 82 */	cror 2, 1, 2
/* 8040389C  40 82 00 1C */	bne lbl_804038B8
/* 804038A0  38 00 00 01 */	li r0, 1
/* 804038A4  90 03 00 40 */	stw r0, 0x40(r3)
/* 804038A8  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 804038AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804038B0  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 804038B4  48 00 00 14 */	b lbl_804038C8
lbl_804038B8:
/* 804038B8  38 00 00 00 */	li r0, 0
/* 804038BC  90 03 00 40 */	stw r0, 0x40(r3)
/* 804038C0  48 00 00 08 */	b lbl_804038C8
lbl_804038C4:
/* 804038C4  90 03 00 40 */	stw r0, 0x40(r3)
lbl_804038C8:
/* 804038C8  80 A3 00 30 */	lwz r5, 0x30(r3)
/* 804038CC  80 08 00 04 */	lwz r0, 4(r8)
/* 804038D0  38 A5 00 01 */	addi r5, r5, 1
/* 804038D4  7C 05 00 00 */	cmpw r5, r0
/* 804038D8  90 A3 00 30 */	stw r5, 0x30(r3)
/* 804038DC  41 80 00 0C */	blt lbl_804038E8
/* 804038E0  38 00 00 00 */	li r0, 0
/* 804038E4  90 03 00 30 */	stw r0, 0x30(r3)
lbl_804038E8:
/* 804038E8  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 804038EC  80 04 00 04 */	lwz r0, 4(r4)
/* 804038F0  7C 05 00 00 */	cmpw r5, r0
/* 804038F4  41 80 00 1C */	blt lbl_80403910
/* 804038F8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 804038FC  38 00 00 00 */	li r0, 0
/* 80403900  38 84 00 01 */	addi r4, r4, 1
/* 80403904  90 83 00 2C */	stw r4, 0x2c(r3)
/* 80403908  90 03 00 38 */	stw r0, 0x38(r3)
/* 8040390C  90 03 00 30 */	stw r0, 0x30(r3)
lbl_80403910:
/* 80403910  38 21 00 10 */	addi r1, r1, 0x10
/* 80403914  4E 80 00 20 */	blr 

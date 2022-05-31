lbl_80456E64:
/* 80456E64  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80456E68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80456E6C  39 44 61 38 */	addi r10, r4, debug_mode@l /* 0x81166138@l */
/* 80456E70  3D 00 43 30 */	lis r8, 0x4330
/* 80456E74  80 AA 00 00 */	lwz r5, 0(r10)
/* 80456E78  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80456E7C  39 24 42 8C */	addi r9, r4, lit_570@l /* 0x8064428C@l */
/* 80456E80  3C C0 80 64 */	lis r6, lit_8418@ha /* 0x806444C4@ha */
/* 80456E84  A8 05 1B 50 */	lha r0, 0x1b50(r5)
/* 80456E88  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 80456E8C  39 64 42 C4 */	addi r11, r4, lit_793@l /* 0x806442C4@l */
/* 80456E90  39 86 44 C4 */	addi r12, r6, lit_8418@l /* 0x806444C4@l */
/* 80456E94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80456E98  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 80456E9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80456EA0  38 E5 42 48 */	addi r7, r5, lit_468@l /* 0x80644248@l */
/* 80456EA4  3C 80 80 64 */	lis r4, lit_1068@ha /* 0x80644308@ha */
/* 80456EA8  C8 69 00 00 */	lfd f3, 0(r9)
/* 80456EAC  91 01 00 08 */	stw r8, 8(r1)
/* 80456EB0  38 C4 43 08 */	addi r6, r4, lit_1068@l /* 0x80644308@l */
/* 80456EB4  3C 80 80 45 */	lis r4, mfish_zarigani_jump_process@ha /* 0x80456F20@ha */
/* 80456EB8  C0 8B 00 00 */	lfs f4, 0(r11)
/* 80456EBC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80456EC0  38 04 6F 20 */	addi r0, r4, mfish_zarigani_jump_process@l /* 0x80456F20@l */
/* 80456EC4  C0 AC 00 00 */	lfs f5, 0(r12)
/* 80456EC8  38 A0 00 00 */	li r5, 0
/* 80456ECC  EC 20 18 28 */	fsubs f1, f0, f3
/* 80456ED0  C0 07 00 00 */	lfs f0, 0(r7)
/* 80456ED4  91 01 00 10 */	stw r8, 0x10(r1)
/* 80456ED8  EC 44 00 72 */	fmuls f2, f4, f1
/* 80456EDC  C0 26 00 00 */	lfs f1, 0(r6)
/* 80456EE0  EC 45 10 2A */	fadds f2, f5, f2
/* 80456EE4  D0 43 05 F0 */	stfs f2, 0x5f0(r3)
/* 80456EE8  D0 03 05 E8 */	stfs f0, 0x5e8(r3)
/* 80456EEC  80 8A 00 00 */	lwz r4, 0(r10)
/* 80456EF0  A8 84 1B 4E */	lha r4, 0x1b4e(r4)
/* 80456EF4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80456EF8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80456EFC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80456F00  EC 00 18 28 */	fsubs f0, f0, f3
/* 80456F04  EC 04 00 32 */	fmuls f0, f4, f0
/* 80456F08  EC 01 00 2A */	fadds f0, f1, f0
/* 80456F0C  D0 03 05 D4 */	stfs f0, 0x5d4(r3)
/* 80456F10  B0 A3 06 44 */	sth r5, 0x644(r3)
/* 80456F14  90 03 00 34 */	stw r0, 0x34(r3)
/* 80456F18  38 21 00 20 */	addi r1, r1, 0x20
/* 80456F1C  4E 80 00 20 */	blr 

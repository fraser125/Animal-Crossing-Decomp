lbl_80465E5C:
/* 80465E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80465E60  7C 08 02 A6 */	mflr r0
/* 80465E64  3C 80 80 64 */	lis r4, lit_871@ha /* 0x806446AC@ha */
/* 80465E68  3C A0 80 64 */	lis r5, lit_509@ha /* 0x806445FC@ha */
/* 80465E6C  38 C4 46 AC */	addi r6, r4, lit_871@l /* 0x806446AC@l */
/* 80465E70  C8 A5 45 FC */	lfd f5, lit_509@l(r5)  /* 0x806445FC@l */
/* 80465E74  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80465E78  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 80465E7C  38 C4 46 04 */	addi r6, r4, lit_510@l /* 0x80644604@l */
/* 80465E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80465E84  FC 60 30 34 */	frsqrte f3, f6
/* 80465E88  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 80465E8C  38 A4 46 0C */	addi r5, r4, lit_511@l /* 0x8064460C@l */
/* 80465E90  C8 86 00 00 */	lfd f4, 0(r6)
/* 80465E94  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 80465E98  C0 45 00 00 */	lfs f2, 0(r5)
/* 80465E9C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80465EA0  C0 04 45 BC */	lfs f0, lit_459@l(r4)  /* 0x806445BC@l */
/* 80465EA4  FC 65 00 F2 */	fmul f3, f5, f3
/* 80465EA8  FC 26 00 72 */	fmul f1, f6, f1
/* 80465EAC  FC 24 08 28 */	fsub f1, f4, f1
/* 80465EB0  FC 63 00 72 */	fmul f3, f3, f1
/* 80465EB4  FC 23 00 F2 */	fmul f1, f3, f3
/* 80465EB8  FC 65 00 F2 */	fmul f3, f5, f3
/* 80465EBC  FC 26 00 72 */	fmul f1, f6, f1
/* 80465EC0  FC 24 08 28 */	fsub f1, f4, f1
/* 80465EC4  FC 63 00 72 */	fmul f3, f3, f1
/* 80465EC8  FC 23 00 F2 */	fmul f1, f3, f3
/* 80465ECC  FC 65 00 F2 */	fmul f3, f5, f3
/* 80465ED0  FC 26 00 72 */	fmul f1, f6, f1
/* 80465ED4  FC 24 08 28 */	fsub f1, f4, f1
/* 80465ED8  FC 23 00 72 */	fmul f1, f3, f1
/* 80465EDC  FC 26 00 72 */	fmul f1, f6, f1
/* 80465EE0  FC 20 08 18 */	frsp f1, f1
/* 80465EE4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80465EE8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80465EEC  EC 22 08 28 */	fsubs f1, f2, f1
/* 80465EF0  EC 42 08 28 */	fsubs f2, f2, f1
/* 80465EF4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80465EF8  40 81 00 54 */	ble lbl_80465F4C
/* 80465EFC  FC 20 10 34 */	frsqrte f1, f2
/* 80465F00  FC 01 00 72 */	fmul f0, f1, f1
/* 80465F04  FC 25 00 72 */	fmul f1, f5, f1
/* 80465F08  FC 02 00 32 */	fmul f0, f2, f0
/* 80465F0C  FC 04 00 28 */	fsub f0, f4, f0
/* 80465F10  FC 21 00 32 */	fmul f1, f1, f0
/* 80465F14  FC 01 00 72 */	fmul f0, f1, f1
/* 80465F18  FC 25 00 72 */	fmul f1, f5, f1
/* 80465F1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80465F20  FC 04 00 28 */	fsub f0, f4, f0
/* 80465F24  FC 21 00 32 */	fmul f1, f1, f0
/* 80465F28  FC 01 00 72 */	fmul f0, f1, f1
/* 80465F2C  FC 25 00 72 */	fmul f1, f5, f1
/* 80465F30  FC 02 00 32 */	fmul f0, f2, f0
/* 80465F34  FC 04 00 28 */	fsub f0, f4, f0
/* 80465F38  FC 01 00 32 */	fmul f0, f1, f0
/* 80465F3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80465F40  FC 00 00 18 */	frsp f0, f0
/* 80465F44  D0 01 00 08 */	stfs f0, 8(r1)
/* 80465F48  C0 41 00 08 */	lfs f2, 8(r1)
lbl_80465F4C:
/* 80465F4C  3C A0 80 64 */	lis r5, lit_511@ha /* 0x8064460C@ha */
/* 80465F50  A8 83 00 7A */	lha r4, 0x7a(r3)
/* 80465F54  C0 05 46 0C */	lfs f0, lit_511@l(r5)  /* 0x8064460C@l */
/* 80465F58  38 63 00 78 */	addi r3, r3, 0x78
/* 80465F5C  38 A0 00 88 */	li r5, 0x88
/* 80465F60  38 C0 00 2D */	li r6, 0x2d
/* 80465F64  EC 20 10 28 */	fsubs f1, f0, f2
/* 80465F68  4B F5 53 A9 */	bl add_calc_short_angle2
/* 80465F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80465F70  7C 08 03 A6 */	mtlr r0
/* 80465F74  38 21 00 10 */	addi r1, r1, 0x10
/* 80465F78  4E 80 00 20 */	blr 

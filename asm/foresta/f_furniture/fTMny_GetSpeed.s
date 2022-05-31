lbl_8063CF3C:
/* 8063CF3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063CF40  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063CF44  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063CF48  C0 43 00 08 */	lfs f2, 8(r3)
/* 8063CF4C  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8063CF50  EC 62 08 28 */	fsubs f3, f2, f1
/* 8063CF54  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8063CF58  4C 41 13 82 */	cror 2, 1, 2
/* 8063CF5C  40 82 00 08 */	bne lbl_8063CF64
/* 8063CF60  48 00 00 08 */	b lbl_8063CF68
lbl_8063CF64:
/* 8063CF64  FC 60 18 50 */	fneg f3, f3
lbl_8063CF68:
/* 8063CF68  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 8063CF6C  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063CF70  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8063CF74  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063CF78  EC 22 08 28 */	fsubs f1, f2, f1
/* 8063CF7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063CF80  4C 41 13 82 */	cror 2, 1, 2
/* 8063CF84  40 82 00 08 */	bne lbl_8063CF8C
/* 8063CF88  48 00 00 08 */	b lbl_8063CF90
lbl_8063CF8C:
/* 8063CF8C  FC 20 08 50 */	fneg f1, f1
lbl_8063CF90:
/* 8063CF90  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8063CF94  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063CF98  EC 21 00 72 */	fmuls f1, f1, f1
/* 8063CF9C  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063CFA0  EC 82 08 2A */	fadds f4, f2, f1
/* 8063CFA4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8063CFA8  40 81 00 6C */	ble lbl_8063D014
/* 8063CFAC  FC 20 20 34 */	frsqrte f1, f4
/* 8063CFB0  3C 60 80 65 */	lis r3, lit_2135@ha /* 0x8064D334@ha */
/* 8063CFB4  38 83 D3 34 */	addi r4, r3, lit_2135@l /* 0x8064D334@l */
/* 8063CFB8  3C 60 80 65 */	lis r3, lit_2136@ha /* 0x8064D33C@ha */
/* 8063CFBC  C8 64 00 00 */	lfd f3, 0(r4)
/* 8063CFC0  FC 01 00 72 */	fmul f0, f1, f1
/* 8063CFC4  C8 43 D3 3C */	lfd f2, lit_2136@l(r3)  /* 0x8064D33C@l */
/* 8063CFC8  FC 23 00 72 */	fmul f1, f3, f1
/* 8063CFCC  FC 04 00 32 */	fmul f0, f4, f0
/* 8063CFD0  FC 02 00 28 */	fsub f0, f2, f0
/* 8063CFD4  FC 21 00 32 */	fmul f1, f1, f0
/* 8063CFD8  FC 01 00 72 */	fmul f0, f1, f1
/* 8063CFDC  FC 23 00 72 */	fmul f1, f3, f1
/* 8063CFE0  FC 04 00 32 */	fmul f0, f4, f0
/* 8063CFE4  FC 02 00 28 */	fsub f0, f2, f0
/* 8063CFE8  FC 21 00 32 */	fmul f1, f1, f0
/* 8063CFEC  FC 01 00 72 */	fmul f0, f1, f1
/* 8063CFF0  FC 23 00 72 */	fmul f1, f3, f1
/* 8063CFF4  FC 04 00 32 */	fmul f0, f4, f0
/* 8063CFF8  FC 02 00 28 */	fsub f0, f2, f0
/* 8063CFFC  FC 01 00 32 */	fmul f0, f1, f0
/* 8063D000  FC 04 00 32 */	fmul f0, f4, f0
/* 8063D004  FC 00 00 18 */	frsp f0, f0
/* 8063D008  D0 01 00 08 */	stfs f0, 8(r1)
/* 8063D00C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8063D010  48 00 00 08 */	b lbl_8063D018
lbl_8063D014:
/* 8063D014  FC 20 20 90 */	fmr f1, f4
lbl_8063D018:
/* 8063D018  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D01C  4E 80 00 20 */	blr 

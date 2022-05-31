lbl_8062363C:
/* 8062363C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80623640  7C 08 02 A6 */	mflr r0
/* 80623644  90 01 00 34 */	stw r0, 0x34(r1)
/* 80623648  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8062364C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80623650  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80623654  7C 7F 1B 78 */	mr r31, r3
/* 80623658  A8 03 00 00 */	lha r0, 0(r3)
/* 8062365C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80623660  41 81 01 C4 */	bgt lbl_80623824
/* 80623664  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80623668  38 9F 00 28 */	addi r4, r31, 0x28
/* 8062366C  7C 65 1B 78 */	mr r5, r3
/* 80623670  4B D9 78 D5 */	bl xyz_t_add
/* 80623674  38 7F 00 10 */	addi r3, r31, 0x10
/* 80623678  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8062367C  7C 65 1B 78 */	mr r5, r3
/* 80623680  4B D9 78 C5 */	bl xyz_t_add
/* 80623684  A8 1F 00 00 */	lha r0, 0(r31)
/* 80623688  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8062368C  41 81 01 98 */	bgt lbl_80623824
/* 80623690  3C 80 80 65 */	lis r4, lit_480@ha /* 0x8064CEBC@ha */
/* 80623694  3C 60 80 65 */	lis r3, lit_483@ha /* 0x8064CED4@ha */
/* 80623698  38 A4 CE BC */	addi r5, r4, lit_480@l /* 0x8064CEBC@l */
/* 8062369C  C8 03 CE D4 */	lfd f0, lit_483@l(r3)  /* 0x8064CED4@l */
/* 806236A0  C8 85 00 00 */	lfd f4, 0(r5)
/* 806236A4  3C 80 80 65 */	lis r4, lit_481@ha /* 0x8064CEC4@ha */
/* 806236A8  3C 60 80 65 */	lis r3, lit_482@ha /* 0x8064CECC@ha */
/* 806236AC  FD 60 00 34 */	frsqrte f11, f0
/* 806236B0  FD 00 20 34 */	frsqrte f8, f4
/* 806236B4  C8 64 CE C4 */	lfd f3, lit_481@l(r4)  /* 0x8064CEC4@l */
/* 806236B8  C8 43 CE CC */	lfd f2, lit_482@l(r3)  /* 0x8064CECC@l */
/* 806236BC  FD 80 20 34 */	frsqrte f12, f4
/* 806236C0  FC CB 02 F2 */	fmul f6, f11, f11
/* 806236C4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 806236C8  FC E8 02 32 */	fmul f7, f8, f8
/* 806236CC  FD 23 02 32 */	fmul f9, f3, f8
/* 806236D0  FC E4 01 F2 */	fmul f7, f4, f7
/* 806236D4  FC A0 20 34 */	frsqrte f5, f4
/* 806236D8  FD 02 38 28 */	fsub f8, f2, f7
/* 806236DC  FC E0 01 B2 */	fmul f7, f0, f6
/* 806236E0  FD A9 02 32 */	fmul f13, f9, f8
/* 806236E4  FC CC 03 32 */	fmul f6, f12, f12
/* 806236E8  FD 0D 03 72 */	fmul f8, f13, f13
/* 806236EC  FD 23 02 F2 */	fmul f9, f3, f11
/* 806236F0  FD 44 02 32 */	fmul f10, f4, f8
/* 806236F4  FC C4 01 B2 */	fmul f6, f4, f6
/* 806236F8  FC E2 38 28 */	fsub f7, f2, f7
/* 806236FC  FD 03 03 32 */	fmul f8, f3, f12
/* 80623700  FD 89 01 F2 */	fmul f12, f9, f7
/* 80623704  FC E2 30 28 */	fsub f7, f2, f6
/* 80623708  FD 22 50 28 */	fsub f9, f2, f10
/* 8062370C  FD 63 03 72 */	fmul f11, f3, f13
/* 80623710  FF E8 01 F2 */	fmul f31, f8, f7
/* 80623714  FD 0C 03 32 */	fmul f8, f12, f12
/* 80623718  FC FF 07 F2 */	fmul f7, f31, f31
/* 8062371C  FD 00 02 32 */	fmul f8, f0, f8
/* 80623720  FD 6B 02 72 */	fmul f11, f11, f9
/* 80623724  FD 22 40 28 */	fsub f9, f2, f8
/* 80623728  FD 43 03 32 */	fmul f10, f3, f12
/* 8062372C  FC E4 01 F2 */	fmul f7, f4, f7
/* 80623730  FD 8A 02 72 */	fmul f12, f10, f9
/* 80623734  FD 4B 02 F2 */	fmul f10, f11, f11
/* 80623738  FC C5 01 72 */	fmul f6, f5, f5
/* 8062373C  FD 2C 03 32 */	fmul f9, f12, f12
/* 80623740  FD 03 07 F2 */	fmul f8, f3, f31
/* 80623744  FC E2 38 28 */	fsub f7, f2, f7
/* 80623748  FD 44 02 B2 */	fmul f10, f4, f10
/* 8062374C  FD A8 01 F2 */	fmul f13, f8, f7
/* 80623750  FD 63 02 F2 */	fmul f11, f3, f11
/* 80623754  FD 02 50 28 */	fsub f8, f2, f10
/* 80623758  FC ED 03 72 */	fmul f7, f13, f13
/* 8062375C  FD 4B 02 32 */	fmul f10, f11, f8
/* 80623760  FD 04 01 F2 */	fmul f8, f4, f7
/* 80623764  FC C4 01 B2 */	fmul f6, f4, f6
/* 80623768  FC E3 01 72 */	fmul f7, f3, f5
/* 8062376C  FC A2 30 28 */	fsub f5, f2, f6
/* 80623770  FD 44 02 B2 */	fmul f10, f4, f10
/* 80623774  FD 67 01 72 */	fmul f11, f7, f5
/* 80623778  FC C0 50 18 */	frsp f6, f10
/* 8062377C  FD 20 02 72 */	fmul f9, f0, f9
/* 80623780  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 80623784  FC AB 02 F2 */	fmul f5, f11, f11
/* 80623788  FC E2 48 28 */	fsub f7, f2, f9
/* 8062378C  C1 21 00 14 */	lfs f9, 0x14(r1)
/* 80623790  FD 43 03 32 */	fmul f10, f3, f12
/* 80623794  EC 21 02 72 */	fmuls f1, f1, f9
/* 80623798  FC C3 03 72 */	fmul f6, f3, f13
/* 8062379C  FC EA 01 F2 */	fmul f7, f10, f7
/* 806237A0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 806237A4  FC A4 01 72 */	fmul f5, f4, f5
/* 806237A8  FC E0 01 F2 */	fmul f7, f0, f7
/* 806237AC  FC 02 40 28 */	fsub f0, f2, f8
/* 806237B0  FC 23 02 F2 */	fmul f1, f3, f11
/* 806237B4  FD 06 00 32 */	fmul f8, f6, f0
/* 806237B8  C0 DF 00 20 */	lfs f6, 0x20(r31)
/* 806237BC  FC 02 28 28 */	fsub f0, f2, f5
/* 806237C0  FC E0 38 18 */	frsp f7, f7
/* 806237C4  FC A4 02 32 */	fmul f5, f4, f8
/* 806237C8  FD 01 00 32 */	fmul f8, f1, f0
/* 806237CC  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 806237D0  C0 E1 00 10 */	lfs f7, 0x10(r1)
/* 806237D4  FC A0 28 18 */	frsp f5, f5
/* 806237D8  FC 08 02 32 */	fmul f0, f8, f8
/* 806237DC  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 806237E0  EC 26 01 F2 */	fmuls f1, f6, f7
/* 806237E4  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 806237E8  FC 04 00 32 */	fmul f0, f4, f0
/* 806237EC  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 806237F0  FC 23 02 32 */	fmul f1, f3, f8
/* 806237F4  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 806237F8  FC 02 00 28 */	fsub f0, f2, f0
/* 806237FC  EC 63 01 72 */	fmuls f3, f3, f5
/* 80623800  FC 01 00 32 */	fmul f0, f1, f0
/* 80623804  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 80623808  FC 24 00 32 */	fmul f1, f4, f0
/* 8062380C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80623810  FC 20 08 18 */	frsp f1, f1
/* 80623814  D0 21 00 08 */	stfs f1, 8(r1)
/* 80623818  C0 21 00 08 */	lfs f1, 8(r1)
/* 8062381C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80623820  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_80623824:
/* 80623824  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80623828  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8062382C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80623830  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80623834  7C 08 03 A6 */	mtlr r0
/* 80623838  38 21 00 30 */	addi r1, r1, 0x30
/* 8062383C  4E 80 00 20 */	blr 

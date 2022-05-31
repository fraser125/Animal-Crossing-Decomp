lbl_80621DEC:
/* 80621DEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80621DF0  7C 08 02 A6 */	mflr r0
/* 80621DF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80621DF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80621DFC  7C 7F 1B 78 */	mr r31, r3
/* 80621E00  A8 03 00 00 */	lha r0, 0(r3)
/* 80621E04  2C 00 00 4A */	cmpwi r0, 0x4a
/* 80621E08  40 80 01 54 */	bge lbl_80621F5C
/* 80621E0C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80621E10  38 9F 00 28 */	addi r4, r31, 0x28
/* 80621E14  7C 65 1B 78 */	mr r5, r3
/* 80621E18  4B D9 91 2D */	bl xyz_t_add
/* 80621E1C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80621E20  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80621E24  7C 65 1B 78 */	mr r5, r3
/* 80621E28  4B D9 91 1D */	bl xyz_t_add
/* 80621E2C  3C 60 80 65 */	lis r3, lit_418@ha /* 0x8064CDEC@ha */
/* 80621E30  3C 80 80 65 */	lis r4, lit_419@ha /* 0x8064CDF4@ha */
/* 80621E34  38 A3 CD EC */	addi r5, r3, lit_418@l /* 0x8064CDEC@l */
/* 80621E38  C8 24 CD F4 */	lfd f1, lit_419@l(r4)  /* 0x8064CDF4@l */
/* 80621E3C  C8 45 00 00 */	lfd f2, 0(r5)
/* 80621E40  3C 60 80 65 */	lis r3, lit_420@ha /* 0x8064CDFC@ha */
/* 80621E44  C8 03 CD FC */	lfd f0, lit_420@l(r3)  /* 0x8064CDFC@l */
/* 80621E48  FC C0 10 34 */	frsqrte f6, f2
/* 80621E4C  C0 FF 00 1C */	lfs f7, 0x1c(r31)
/* 80621E50  FD 00 10 34 */	frsqrte f8, f2
/* 80621E54  FD 20 10 34 */	frsqrte f9, f2
/* 80621E58  FC 86 01 B2 */	fmul f4, f6, f6
/* 80621E5C  FC 68 02 32 */	fmul f3, f8, f8
/* 80621E60  FC A2 01 32 */	fmul f5, f2, f4
/* 80621E64  FC 82 00 F2 */	fmul f4, f2, f3
/* 80621E68  FC C1 01 B2 */	fmul f6, f1, f6
/* 80621E6C  FC A0 28 28 */	fsub f5, f0, f5
/* 80621E70  FC 69 02 72 */	fmul f3, f9, f9
/* 80621E74  FD 46 01 72 */	fmul f10, f6, f5
/* 80621E78  FC A1 02 32 */	fmul f5, f1, f8
/* 80621E7C  FC CA 02 B2 */	fmul f6, f10, f10
/* 80621E80  FC 80 20 28 */	fsub f4, f0, f4
/* 80621E84  FC 62 00 F2 */	fmul f3, f2, f3
/* 80621E88  FD 65 01 32 */	fmul f11, f5, f4
/* 80621E8C  FC C2 01 B2 */	fmul f6, f2, f6
/* 80621E90  FC AB 02 F2 */	fmul f5, f11, f11
/* 80621E94  FC 81 02 72 */	fmul f4, f1, f9
/* 80621E98  FC 60 18 28 */	fsub f3, f0, f3
/* 80621E9C  FD 01 02 B2 */	fmul f8, f1, f10
/* 80621EA0  FD 84 00 F2 */	fmul f12, f4, f3
/* 80621EA4  FC 80 30 28 */	fsub f4, f0, f6
/* 80621EA8  FC A2 01 72 */	fmul f5, f2, f5
/* 80621EAC  FD 28 01 32 */	fmul f9, f8, f4
/* 80621EB0  FC 6C 03 32 */	fmul f3, f12, f12
/* 80621EB4  FD 09 02 72 */	fmul f8, f9, f9
/* 80621EB8  FC 62 00 F2 */	fmul f3, f2, f3
/* 80621EBC  FC C1 02 F2 */	fmul f6, f1, f11
/* 80621EC0  FC 80 28 28 */	fsub f4, f0, f5
/* 80621EC4  FD 02 02 32 */	fmul f8, f2, f8
/* 80621EC8  FD 46 01 32 */	fmul f10, f6, f4
/* 80621ECC  FC 81 03 32 */	fmul f4, f1, f12
/* 80621ED0  FC 60 18 28 */	fsub f3, f0, f3
/* 80621ED4  FC C1 02 72 */	fmul f6, f1, f9
/* 80621ED8  FD 24 00 F2 */	fmul f9, f4, f3
/* 80621EDC  FC AA 02 B2 */	fmul f5, f10, f10
/* 80621EE0  FC 60 40 28 */	fsub f3, f0, f8
/* 80621EE4  FC 82 01 72 */	fmul f4, f2, f5
/* 80621EE8  FC A6 00 F2 */	fmul f5, f6, f3
/* 80621EEC  FC 69 02 72 */	fmul f3, f9, f9
/* 80621EF0  FC A2 01 72 */	fmul f5, f2, f5
/* 80621EF4  FC 80 20 28 */	fsub f4, f0, f4
/* 80621EF8  FC 62 00 F2 */	fmul f3, f2, f3
/* 80621EFC  FC C0 28 18 */	frsp f6, f5
/* 80621F00  FC A1 02 B2 */	fmul f5, f1, f10
/* 80621F04  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 80621F08  FC 21 02 72 */	fmul f1, f1, f9
/* 80621F0C  FC 00 18 28 */	fsub f0, f0, f3
/* 80621F10  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 80621F14  FC A5 01 32 */	fmul f5, f5, f4
/* 80621F18  FC 01 00 32 */	fmul f0, f1, f0
/* 80621F1C  FC 62 01 72 */	fmul f3, f2, f5
/* 80621F20  EC 87 01 B2 */	fmuls f4, f7, f6
/* 80621F24  FC 02 00 32 */	fmul f0, f2, f0
/* 80621F28  FC 60 18 18 */	frsp f3, f3
/* 80621F2C  D0 9F 00 1C */	stfs f4, 0x1c(r31)
/* 80621F30  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80621F34  FC 00 00 18 */	frsp f0, f0
/* 80621F38  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80621F3C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80621F40  D0 01 00 08 */	stfs f0, 8(r1)
/* 80621F44  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80621F48  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80621F4C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80621F50  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80621F54  EC 00 00 72 */	fmuls f0, f0, f1
/* 80621F58  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_80621F5C:
/* 80621F5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80621F60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80621F64  7C 08 03 A6 */	mtlr r0
/* 80621F68  38 21 00 20 */	addi r1, r1, 0x20
/* 80621F6C  4E 80 00 20 */	blr 

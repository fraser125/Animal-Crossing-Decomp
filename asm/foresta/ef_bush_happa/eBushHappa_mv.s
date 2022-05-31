lbl_80606D7C:
/* 80606D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80606D80  7C 08 02 A6 */	mflr r0
/* 80606D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80606D88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80606D8C  7C 7F 1B 78 */	mr r31, r3
/* 80606D90  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80606D94  7C 65 1B 78 */	mr r5, r3
/* 80606D98  38 9F 00 28 */	addi r4, r31, 0x28
/* 80606D9C  4B DB 41 A9 */	bl xyz_t_add
/* 80606DA0  38 7F 00 10 */	addi r3, r31, 0x10
/* 80606DA4  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80606DA8  7C 65 1B 78 */	mr r5, r3
/* 80606DAC  4B DB 41 99 */	bl xyz_t_add
/* 80606DB0  A8 1F 00 50 */	lha r0, 0x50(r31)
/* 80606DB4  2C 00 00 01 */	cmpwi r0, 1
/* 80606DB8  40 82 01 2C */	bne lbl_80606EE4
/* 80606DBC  A8 7F 00 52 */	lha r3, 0x52(r31)
/* 80606DC0  4B DB 3D 31 */	bl sin_s
/* 80606DC4  3C 60 80 65 */	lis r3, lit_468@ha /* 0x8064BCCC@ha */
/* 80606DC8  3C 80 80 65 */	lis r4, lit_469@ha /* 0x8064BCD4@ha */
/* 80606DCC  38 A3 BC CC */	addi r5, r3, lit_468@l /* 0x8064BCCC@l */
/* 80606DD0  C8 C4 BC D4 */	lfd f6, lit_469@l(r4)  /* 0x8064BCD4@l */
/* 80606DD4  C8 E5 00 00 */	lfd f7, 0(r5)
/* 80606DD8  3C A0 80 65 */	lis r5, lit_432@ha /* 0x8064BCB0@ha */
/* 80606DDC  C0 05 BC B0 */	lfs f0, lit_432@l(r5)  /* 0x8064BCB0@l */
/* 80606DE0  3C 60 80 65 */	lis r3, lit_470@ha /* 0x8064BCDC@ha */
/* 80606DE4  FC 80 38 34 */	frsqrte f4, f7
/* 80606DE8  3C 80 80 65 */	lis r4, lit_427@ha /* 0x8064BC9C@ha */
/* 80606DEC  ED 40 00 72 */	fmuls f10, f0, f1
/* 80606DF0  C8 A3 BC DC */	lfd f5, lit_470@l(r3)  /* 0x8064BCDC@l */
/* 80606DF4  FD 00 38 34 */	frsqrte f8, f7
/* 80606DF8  C0 64 BC 9C */	lfs f3, lit_427@l(r4)  /* 0x8064BC9C@l */
/* 80606DFC  FC 44 01 32 */	fmul f2, f4, f4
/* 80606E00  D1 5F 00 40 */	stfs f10, 0x40(r31)
/* 80606E04  FC 08 02 32 */	fmul f0, f8, f8
/* 80606E08  D0 7F 00 44 */	stfs f3, 0x44(r31)
/* 80606E0C  FC 27 00 B2 */	fmul f1, f7, f2
/* 80606E10  FC 46 01 32 */	fmul f2, f6, f4
/* 80606E14  FC 25 08 28 */	fsub f1, f5, f1
/* 80606E18  FC 07 00 32 */	fmul f0, f7, f0
/* 80606E1C  FD 22 00 72 */	fmul f9, f2, f1
/* 80606E20  FC 26 02 32 */	fmul f1, f6, f8
/* 80606E24  FC 49 02 72 */	fmul f2, f9, f9
/* 80606E28  FC 05 00 28 */	fsub f0, f5, f0
/* 80606E2C  FC 80 50 50 */	fneg f4, f10
/* 80606E30  FC 67 00 B2 */	fmul f3, f7, f2
/* 80606E34  D0 9F 00 48 */	stfs f4, 0x48(r31)
/* 80606E38  FC 21 00 32 */	fmul f1, f1, f0
/* 80606E3C  FC 86 02 72 */	fmul f4, f6, f9
/* 80606E40  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80606E44  FC 01 00 72 */	fmul f0, f1, f1
/* 80606E48  FC 65 18 28 */	fsub f3, f5, f3
/* 80606E4C  FC 26 00 72 */	fmul f1, f6, f1
/* 80606E50  FC 84 00 F2 */	fmul f4, f4, f3
/* 80606E54  FC 07 00 32 */	fmul f0, f7, f0
/* 80606E58  FC 64 01 32 */	fmul f3, f4, f4
/* 80606E5C  FC 05 00 28 */	fsub f0, f5, f0
/* 80606E60  FC 86 01 32 */	fmul f4, f6, f4
/* 80606E64  FD 01 00 32 */	fmul f8, f1, f0
/* 80606E68  FC 27 00 F2 */	fmul f1, f7, f3
/* 80606E6C  FC 08 02 32 */	fmul f0, f8, f8
/* 80606E70  FC 65 08 28 */	fsub f3, f5, f1
/* 80606E74  FC 26 02 32 */	fmul f1, f6, f8
/* 80606E78  FC 64 00 F2 */	fmul f3, f4, f3
/* 80606E7C  FC 07 00 32 */	fmul f0, f7, f0
/* 80606E80  FC 67 00 F2 */	fmul f3, f7, f3
/* 80606E84  FC 05 00 28 */	fsub f0, f5, f0
/* 80606E88  FC 60 18 18 */	frsp f3, f3
/* 80606E8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80606E90  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80606E94  FC 07 00 32 */	fmul f0, f7, f0
/* 80606E98  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80606E9C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80606EA0  FC 00 00 18 */	frsp f0, f0
/* 80606EA4  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80606EA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80606EAC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80606EB0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80606EB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80606EB8  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80606EBC  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 80606EC0  38 03 06 62 */	addi r0, r3, 0x662
/* 80606EC4  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80606EC8  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 80606ECC  38 03 06 62 */	addi r0, r3, 0x662
/* 80606ED0  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 80606ED4  A8 7F 00 52 */	lha r3, 0x52(r31)
/* 80606ED8  38 03 0A 00 */	addi r0, r3, 0xa00
/* 80606EDC  B0 1F 00 52 */	sth r0, 0x52(r31)
/* 80606EE0  48 00 00 48 */	b lbl_80606F28
lbl_80606EE4:
/* 80606EE4  A8 9F 00 4C */	lha r4, 0x4c(r31)
/* 80606EE8  3C 60 80 65 */	lis r3, lit_427@ha /* 0x8064BC9C@ha */
/* 80606EEC  C0 03 BC 9C */	lfs f0, lit_427@l(r3)  /* 0x8064BC9C@l */
/* 80606EF0  38 04 02 80 */	addi r0, r4, 0x280
/* 80606EF4  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80606EF8  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 80606EFC  38 03 02 80 */	addi r0, r3, 0x280
/* 80606F00  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 80606F04  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80606F08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80606F0C  4C 40 13 82 */	cror 2, 0, 2
/* 80606F10  40 82 00 18 */	bne lbl_80606F28
/* 80606F14  3C 60 80 65 */	lis r3, lit_471@ha /* 0x8064BCE4@ha */
/* 80606F18  38 00 00 01 */	li r0, 1
/* 80606F1C  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 80606F20  C0 03 BC E4 */	lfs f0, lit_471@l(r3)  /* 0x8064BCE4@l */
/* 80606F24  D0 1F 00 2C */	stfs f0, 0x2c(r31)
lbl_80606F28:
/* 80606F28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80606F2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80606F30  7C 08 03 A6 */	mtlr r0
/* 80606F34  38 21 00 20 */	addi r1, r1, 0x20
/* 80606F38  4E 80 00 20 */	blr 

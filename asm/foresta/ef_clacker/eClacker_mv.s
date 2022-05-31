lbl_80607DB0:
/* 80607DB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80607DB4  7C 08 02 A6 */	mflr r0
/* 80607DB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80607DBC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80607DC0  7C 9F 23 78 */	mr r31, r4
/* 80607DC4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80607DC8  7C 7E 1B 78 */	mr r30, r3
/* 80607DCC  A8 63 00 00 */	lha r3, 0(r3)
/* 80607DD0  54 60 07 7F */	clrlwi. r0, r3, 0x1d
/* 80607DD4  40 82 00 D0 */	bne lbl_80607EA4
/* 80607DD8  2C 03 00 44 */	cmpwi r3, 0x44
/* 80607DDC  40 80 00 C8 */	bge lbl_80607EA4
/* 80607DE0  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80607DE4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80607DE8  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80607DEC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80607DF0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80607DF4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80607DF8  4B A5 4F 35 */	bl fqrand2
/* 80607DFC  3C 60 80 65 */	lis r3, lit_450@ha /* 0x8064BD3C@ha */
/* 80607E00  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80607E04  C0 43 BD 3C */	lfs f2, lit_450@l(r3)  /* 0x8064BD3C@l */
/* 80607E08  EC 22 00 72 */	fmuls f1, f2, f1
/* 80607E0C  EC 00 08 2A */	fadds f0, f0, f1
/* 80607E10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80607E14  4B A5 4F 19 */	bl fqrand2
/* 80607E18  3C 60 80 65 */	lis r3, lit_451@ha /* 0x8064BD40@ha */
/* 80607E1C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80607E20  C0 43 BD 40 */	lfs f2, lit_451@l(r3)  /* 0x8064BD40@l */
/* 80607E24  EC 22 00 72 */	fmuls f1, f2, f1
/* 80607E28  EC 00 08 2A */	fadds f0, f0, f1
/* 80607E2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80607E30  4B A5 4E FD */	bl fqrand2
/* 80607E34  3C 80 80 65 */	lis r4, lit_450@ha /* 0x8064BD3C@ha */
/* 80607E38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80607E3C  38 A4 BD 3C */	addi r5, r4, lit_450@l /* 0x8064BD3C@l */
/* 80607E40  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80607E44  C0 05 00 00 */	lfs f0, 0(r5)
/* 80607E48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80607E4C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80607E50  3C 63 00 02 */	addis r3, r3, 2
/* 80607E54  EC 20 00 72 */	fmuls f1, f0, f1
/* 80607E58  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80607E5C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80607E60  7F E7 FB 78 */	mr r7, r31
/* 80607E64  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 80607E68  38 81 00 0C */	addi r4, r1, 0xc
/* 80607E6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80607E70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80607E74  38 60 00 56 */	li r3, 0x56
/* 80607E78  38 C0 00 00 */	li r6, 0
/* 80607E7C  39 20 00 00 */	li r9, 0
/* 80607E80  39 40 00 00 */	li r10, 0
/* 80607E84  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80607E88  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80607E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80607E90  81 85 00 00 */	lwz r12, 0(r5)
/* 80607E94  88 BE 00 0E */	lbz r5, 0xe(r30)
/* 80607E98  A1 1E 00 0C */	lhz r8, 0xc(r30)
/* 80607E9C  7D 89 03 A6 */	mtctr r12
/* 80607EA0  4E 80 04 21 */	bctrl 
lbl_80607EA4:
/* 80607EA4  A8 1E 00 00 */	lha r0, 0(r30)
/* 80607EA8  2C 00 00 4C */	cmpwi r0, 0x4c
/* 80607EAC  40 82 00 10 */	bne lbl_80607EBC
/* 80607EB0  7F C3 F3 78 */	mr r3, r30
/* 80607EB4  7F E4 FB 78 */	mr r4, r31
/* 80607EB8  4B FF FB FD */	bl func_80607AB4
lbl_80607EBC:
/* 80607EBC  A8 1E 00 00 */	lha r0, 0(r30)
/* 80607EC0  2C 00 00 4C */	cmpwi r0, 0x4c
/* 80607EC4  40 80 00 98 */	bge lbl_80607F5C
/* 80607EC8  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80607ECC  38 9E 00 28 */	addi r4, r30, 0x28
/* 80607ED0  7C 65 1B 78 */	mr r5, r3
/* 80607ED4  4B DB 30 71 */	bl xyz_t_add
/* 80607ED8  38 7E 00 10 */	addi r3, r30, 0x10
/* 80607EDC  38 9E 00 1C */	addi r4, r30, 0x1c
/* 80607EE0  7C 65 1B 78 */	mr r5, r3
/* 80607EE4  4B DB 30 61 */	bl xyz_t_add
/* 80607EE8  3C 60 80 65 */	lis r3, lit_452@ha /* 0x8064BD44@ha */
/* 80607EEC  3C 80 80 65 */	lis r4, lit_453@ha /* 0x8064BD4C@ha */
/* 80607EF0  38 A3 BD 44 */	addi r5, r3, lit_452@l /* 0x8064BD44@l */
/* 80607EF4  C8 64 BD 4C */	lfd f3, lit_453@l(r4)  /* 0x8064BD4C@l */
/* 80607EF8  C8 85 00 00 */	lfd f4, 0(r5)
/* 80607EFC  3C 60 80 65 */	lis r3, lit_454@ha /* 0x8064BD54@ha */
/* 80607F00  C8 43 BD 54 */	lfd f2, lit_454@l(r3)  /* 0x8064BD54@l */
/* 80607F04  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80607F08  FC 20 20 34 */	frsqrte f1, f4
/* 80607F0C  FC 01 00 72 */	fmul f0, f1, f1
/* 80607F10  FC 23 00 72 */	fmul f1, f3, f1
/* 80607F14  FC 04 00 32 */	fmul f0, f4, f0
/* 80607F18  FC 02 00 28 */	fsub f0, f2, f0
/* 80607F1C  FC 21 00 32 */	fmul f1, f1, f0
/* 80607F20  FC 01 00 72 */	fmul f0, f1, f1
/* 80607F24  FC 23 00 72 */	fmul f1, f3, f1
/* 80607F28  FC 04 00 32 */	fmul f0, f4, f0
/* 80607F2C  FC 02 00 28 */	fsub f0, f2, f0
/* 80607F30  FC 21 00 32 */	fmul f1, f1, f0
/* 80607F34  FC 01 00 72 */	fmul f0, f1, f1
/* 80607F38  FC 23 00 72 */	fmul f1, f3, f1
/* 80607F3C  FC 04 00 32 */	fmul f0, f4, f0
/* 80607F40  FC 02 00 28 */	fsub f0, f2, f0
/* 80607F44  FC 01 00 32 */	fmul f0, f1, f0
/* 80607F48  FC 04 00 32 */	fmul f0, f4, f0
/* 80607F4C  FC 00 00 18 */	frsp f0, f0
/* 80607F50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80607F54  C0 21 00 08 */	lfs f1, 8(r1)
/* 80607F58  4B DB 30 55 */	bl xyz_t_mult_v
lbl_80607F5C:
/* 80607F5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80607F60  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80607F64  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80607F68  7C 08 03 A6 */	mtlr r0
/* 80607F6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80607F70  4E 80 00 20 */	blr 

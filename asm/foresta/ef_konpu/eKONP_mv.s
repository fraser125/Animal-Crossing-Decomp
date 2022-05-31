lbl_80614E74:
/* 80614E74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80614E78  7C 08 02 A6 */	mflr r0
/* 80614E7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80614E80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80614E84  7C 7F 1B 78 */	mr r31, r3
/* 80614E88  38 9F 00 28 */	addi r4, r31, 0x28
/* 80614E8C  A8 C3 00 50 */	lha r6, 0x50(r3)
/* 80614E90  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80614E94  7C 65 1B 78 */	mr r5, r3
/* 80614E98  38 06 07 FF */	addi r0, r6, 0x7ff
/* 80614E9C  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 80614EA0  4B DA 60 A5 */	bl xyz_t_add
/* 80614EA4  38 7F 00 10 */	addi r3, r31, 0x10
/* 80614EA8  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80614EAC  7C 65 1B 78 */	mr r5, r3
/* 80614EB0  4B DA 60 95 */	bl xyz_t_add
/* 80614EB4  A8 1F 00 06 */	lha r0, 6(r31)
/* 80614EB8  2C 00 00 00 */	cmpwi r0, 0
/* 80614EBC  41 82 00 78 */	beq lbl_80614F34
/* 80614EC0  3C 60 80 65 */	lis r3, lit_433@ha /* 0x8064C64C@ha */
/* 80614EC4  3C 80 80 65 */	lis r4, lit_434@ha /* 0x8064C654@ha */
/* 80614EC8  38 A3 C6 4C */	addi r5, r3, lit_433@l /* 0x8064C64C@l */
/* 80614ECC  C8 64 C6 54 */	lfd f3, lit_434@l(r4)  /* 0x8064C654@l */
/* 80614ED0  C8 85 00 00 */	lfd f4, 0(r5)
/* 80614ED4  3C 60 80 65 */	lis r3, lit_435@ha /* 0x8064C65C@ha */
/* 80614ED8  C8 43 C6 5C */	lfd f2, lit_435@l(r3)  /* 0x8064C65C@l */
/* 80614EDC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80614EE0  FC 20 20 34 */	frsqrte f1, f4
/* 80614EE4  FC 01 00 72 */	fmul f0, f1, f1
/* 80614EE8  FC 23 00 72 */	fmul f1, f3, f1
/* 80614EEC  FC 04 00 32 */	fmul f0, f4, f0
/* 80614EF0  FC 02 00 28 */	fsub f0, f2, f0
/* 80614EF4  FC 21 00 32 */	fmul f1, f1, f0
/* 80614EF8  FC 01 00 72 */	fmul f0, f1, f1
/* 80614EFC  FC 23 00 72 */	fmul f1, f3, f1
/* 80614F00  FC 04 00 32 */	fmul f0, f4, f0
/* 80614F04  FC 02 00 28 */	fsub f0, f2, f0
/* 80614F08  FC 21 00 32 */	fmul f1, f1, f0
/* 80614F0C  FC 01 00 72 */	fmul f0, f1, f1
/* 80614F10  FC 23 00 72 */	fmul f1, f3, f1
/* 80614F14  FC 04 00 32 */	fmul f0, f4, f0
/* 80614F18  FC 02 00 28 */	fsub f0, f2, f0
/* 80614F1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80614F20  FC 04 00 32 */	fmul f0, f4, f0
/* 80614F24  FC 00 00 18 */	frsp f0, f0
/* 80614F28  D0 01 00 08 */	stfs f0, 8(r1)
/* 80614F2C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80614F30  4B DA 60 7D */	bl xyz_t_mult_v
lbl_80614F34:
/* 80614F34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80614F38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80614F3C  7C 08 03 A6 */	mtlr r0
/* 80614F40  38 21 00 20 */	addi r1, r1, 0x20
/* 80614F44  4E 80 00 20 */	blr 

lbl_80465F7C:
/* 80465F7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80465F80  7C 08 02 A6 */	mflr r0
/* 80465F84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80465F88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80465F8C  7C 7F 1B 78 */	mr r31, r3
/* 80465F90  4B BF 6D 65 */	bl fqrand
/* 80465F94  3C 60 80 64 */	lis r3, lit_464@ha /* 0x806445D0@ha */
/* 80465F98  3C 80 80 64 */	lis r4, lit_506@ha /* 0x806445E8@ha */
/* 80465F9C  38 A3 45 D0 */	addi r5, r3, lit_464@l /* 0x806445D0@l */
/* 80465FA0  C0 05 00 00 */	lfs f0, 0(r5)
/* 80465FA4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80465FA8  C0 43 45 BC */	lfs f2, lit_459@l(r3)  /* 0x806445BC@l */
/* 80465FAC  38 A0 00 00 */	li r5, 0
/* 80465FB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80465FB4  C0 24 45 E8 */	lfs f1, lit_506@l(r4)  /* 0x806445E8@l */
/* 80465FB8  FC 00 00 1E */	fctiwz f0, f0
/* 80465FBC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80465FC0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80465FC4  38 03 00 28 */	addi r0, r3, 0x28
/* 80465FC8  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80465FCC  80 7F 00 08 */	lwz r3, 8(r31)
/* 80465FD0  80 83 02 AC */	lwz r4, 0x2ac(r3)
/* 80465FD4  4B F0 B7 E5 */	bl cKF_SkeletonInfo_R_init_standard_repeat_speedsetandmorph
/* 80465FD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80465FDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80465FE0  7C 08 03 A6 */	mtlr r0
/* 80465FE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80465FE8  4E 80 00 20 */	blr 

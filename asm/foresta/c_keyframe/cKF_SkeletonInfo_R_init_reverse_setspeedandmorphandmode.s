lbl_80371900:
/* 80371900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371904  7C 08 02 A6 */	mflr r0
/* 80371908  7C A7 2B 78 */	mr r7, r5
/* 8037190C  3C A0 80 64 */	lis r5, lit_540@ha /* 0x80641194@ha */
/* 80371910  90 01 00 24 */	stw r0, 0x24(r1)
/* 80371914  3C 00 43 30 */	lis r0, 0x4330
/* 80371918  39 45 11 94 */	addi r10, r5, lit_540@l /* 0x80641194@l */
/* 8037191C  FC 80 08 90 */	fmr f4, f1
/* 80371920  A9 04 00 12 */	lha r8, 0x12(r4)
/* 80371924  3C A0 80 64 */	lis r5, data_80641174@ha /* 0x80641174@ha */
/* 80371928  90 01 00 08 */	stw r0, 8(r1)
/* 8037192C  FC A0 10 90 */	fmr f5, f2
/* 80371930  6D 09 80 00 */	xoris r9, r8, 0x8000
/* 80371934  91 21 00 0C */	stw r9, 0xc(r1)
/* 80371938  39 05 11 74 */	addi r8, r5, data_80641174@l /* 0x80641174@l */
/* 8037193C  7C 85 23 78 */	mr r5, r4
/* 80371940  C8 6A 00 00 */	lfd f3, 0(r10)
/* 80371944  C8 01 00 08 */	lfd f0, 8(r1)
/* 80371948  91 21 00 14 */	stw r9, 0x14(r1)
/* 8037194C  EC 20 18 28 */	fsubs f1, f0, f3
/* 80371950  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80371954  90 01 00 10 */	stw r0, 0x10(r1)
/* 80371958  C0 48 00 00 */	lfs f2, 0(r8)
/* 8037195C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80371960  EC 60 18 28 */	fsubs f3, f0, f3
/* 80371964  4B FF F3 71 */	bl cKF_SkeletonInfo_R_init
/* 80371968  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037196C  7C 08 03 A6 */	mtlr r0
/* 80371970  38 21 00 20 */	addi r1, r1, 0x20
/* 80371974  4E 80 00 20 */	blr 
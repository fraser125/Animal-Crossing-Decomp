lbl_80371824:
/* 80371824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371828  7C 08 02 A6 */	mflr r0
/* 8037182C  7C A7 2B 78 */	mr r7, r5
/* 80371830  FC A0 18 90 */	fmr f5, f3
/* 80371834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371838  7C 86 23 78 */	mr r6, r4
/* 8037183C  3C 00 43 30 */	lis r0, 0x4330
/* 80371840  3C A0 80 64 */	lis r5, lit_540@ha /* 0x80641194@ha */
/* 80371844  A8 84 00 12 */	lha r4, 0x12(r4)
/* 80371848  90 01 00 08 */	stw r0, 8(r1)
/* 8037184C  FC 60 08 90 */	fmr f3, f1
/* 80371850  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80371854  FC 80 10 90 */	fmr f4, f2
/* 80371858  90 81 00 0C */	stw r4, 0xc(r1)
/* 8037185C  38 85 11 94 */	addi r4, r5, lit_540@l /* 0x80641194@l */
/* 80371860  C8 C4 00 00 */	lfd f6, 0(r4)
/* 80371864  C8 01 00 08 */	lfd f0, 8(r1)
/* 80371868  3C A0 80 64 */	lis r5, data_80641174@ha /* 0x80641174@ha */
/* 8037186C  C0 25 11 74 */	lfs f1, data_80641174@l(r5)  /* 0x80641174@l */
/* 80371870  7C C5 33 78 */	mr r5, r6
/* 80371874  EC 40 30 28 */	fsubs f2, f0, f6
/* 80371878  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8037187C  38 C0 00 01 */	li r6, 1
/* 80371880  4B FF F4 55 */	bl cKF_SkeletonInfo_R_init
/* 80371884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371888  7C 08 03 A6 */	mtlr r0
/* 8037188C  38 21 00 10 */	addi r1, r1, 0x10
/* 80371890  4E 80 00 20 */	blr 

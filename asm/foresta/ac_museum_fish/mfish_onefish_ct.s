lbl_80434508:
/* 80434508  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043450C  7C 08 02 A6 */	mflr r0
/* 80434510  90 01 00 24 */	stw r0, 0x24(r1)
/* 80434514  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80434518  7C 7F 1B 78 */	mr r31, r3
/* 8043451C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80434520  3B DF 00 38 */	addi r30, r31, 0x38
/* 80434524  38 DE 04 F0 */	addi r6, r30, 0x4f0
/* 80434528  80 83 05 84 */	lwz r4, 0x584(r3)
/* 8043452C  7F C3 F3 78 */	mr r3, r30
/* 80434530  80 BF 05 88 */	lwz r5, 0x588(r31)
/* 80434534  38 FE 05 14 */	addi r7, r30, 0x514
/* 80434538  4B F3 C5 5D */	bl cKF_SkeletonInfo_R_ct
/* 8043453C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80434540  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80434544  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80434548  C0 43 42 48 */	lfs f2, lit_468@l(r3)  /* 0x80644248@l */
/* 8043454C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80434550  7F C3 F3 78 */	mr r3, r30
/* 80434554  80 9E 05 50 */	lwz r4, 0x550(r30)
/* 80434558  38 A0 00 00 */	li r5, 0
/* 8043455C  4B F3 D2 5D */	bl cKF_SkeletonInfo_R_init_standard_repeat_speedsetandmorph
/* 80434560  4B C2 87 95 */	bl fqrand
/* 80434564  A8 9F 00 2E */	lha r4, 0x2e(r31)
/* 80434568  3C 00 43 30 */	lis r0, 0x4330
/* 8043456C  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 80434570  90 01 00 08 */	stw r0, 8(r1)
/* 80434574  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80434578  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 8043457C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80434580  38 E5 42 8C */	addi r7, r5, lit_570@l /* 0x8064428C@l */
/* 80434584  C8 47 00 00 */	lfd f2, 0(r7)
/* 80434588  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 8043458C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80434590  38 A0 00 00 */	li r5, 0
/* 80434594  A8 DF 00 2C */	lha r6, 0x2c(r31)
/* 80434598  38 00 C0 00 */	li r0, -16384
/* 8043459C  EC 00 10 28 */	fsubs f0, f0, f2
/* 804345A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804345A4  FC 00 00 1E */	fctiwz f0, f0
/* 804345A8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804345AC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804345B0  7C 66 1A 14 */	add r3, r6, r3
/* 804345B4  B0 7F 06 26 */	sth r3, 0x626(r31)
/* 804345B8  A8 7F 06 26 */	lha r3, 0x626(r31)
/* 804345BC  B0 7F 06 28 */	sth r3, 0x628(r31)
/* 804345C0  B0 BF 06 0C */	sth r5, 0x60c(r31)
/* 804345C4  B0 1F 06 0E */	sth r0, 0x60e(r31)
/* 804345C8  B0 BF 06 10 */	sth r5, 0x610(r31)
/* 804345CC  80 64 00 00 */	lwz r3, 0(r4)
/* 804345D0  80 04 00 04 */	lwz r0, 4(r4)
/* 804345D4  90 7F 05 DC */	stw r3, 0x5dc(r31)
/* 804345D8  90 1F 05 E0 */	stw r0, 0x5e0(r31)
/* 804345DC  80 04 00 08 */	lwz r0, 8(r4)
/* 804345E0  90 1F 05 E4 */	stw r0, 0x5e4(r31)
/* 804345E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804345E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804345EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804345F0  7C 08 03 A6 */	mtlr r0
/* 804345F4  38 21 00 20 */	addi r1, r1, 0x20
/* 804345F8  4E 80 00 20 */	blr 

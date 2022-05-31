lbl_805BB924:
/* 805BB924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BB928  7C 08 02 A6 */	mflr r0
/* 805BB92C  3C A0 80 6C */	lis r5, ani@ha /* 0x806C6984@ha */
/* 805BB930  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BB934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BB938  7C 7F 1B 78 */	mr r31, r3
/* 805BB93C  3C 60 80 65 */	lis r3, lit_448@ha /* 0x8064AB38@ha */
/* 805BB940  93 C1 00 08 */	stw r30, 8(r1)
/* 805BB944  7C 9E 23 78 */	mr r30, r4
/* 805BB948  C0 23 AB 38 */	lfs f1, lit_448@l(r3)  /* 0x8064AB38@l */
/* 805BB94C  3C 60 80 65 */	lis r3, lit_449@ha /* 0x8064AB3C@ha */
/* 805BB950  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 805BB954  38 C3 AB 3C */	addi r6, r3, lit_449@l /* 0x8064AB3C@l */
/* 805BB958  80 FF 02 B8 */	lwz r7, 0x2b8(r31)
/* 805BB95C  38 65 69 84 */	addi r3, r5, ani@l /* 0x806C6984@l */
/* 805BB960  20 00 00 03 */	subfic r0, r0, 3
/* 805BB964  C0 46 00 00 */	lfs f2, 0(r6)
/* 805BB968  7C 00 00 34 */	cntlzw r0, r0
/* 805BB96C  54 E7 18 38 */	slwi r7, r7, 3
/* 805BB970  7C 63 3A 14 */	add r3, r3, r7
/* 805BB974  FC 60 08 90 */	fmr f3, f1
/* 805BB978  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805BB97C  FC 80 08 90 */	fmr f4, f1
/* 805BB980  7C A3 00 2E */	lwzx r5, r3, r0
/* 805BB984  FC A0 08 90 */	fmr f5, f1
/* 805BB988  80 9F 01 90 */	lwz r4, 0x190(r31)
/* 805BB98C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BB990  38 C0 00 00 */	li r6, 0
/* 805BB994  38 E0 00 00 */	li r7, 0
/* 805BB998  4B DB 53 3D */	bl cKF_SkeletonInfo_R_init
/* 805BB99C  3C 60 80 6C */	lis r3, process@ha /* 0x806C699C@ha */
/* 805BB9A0  57 C0 10 3A */	slwi r0, r30, 2
/* 805BB9A4  38 63 69 9C */	addi r3, r3, process@l /* 0x806C699C@l */
/* 805BB9A8  7C 03 00 2E */	lwzx r0, r3, r0
/* 805BB9AC  90 1F 02 A0 */	stw r0, 0x2a0(r31)
/* 805BB9B0  93 DF 02 B4 */	stw r30, 0x2b4(r31)
/* 805BB9B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BB9B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BB9BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BB9C0  7C 08 03 A6 */	mtlr r0
/* 805BB9C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805BB9C8  4E 80 00 20 */	blr 

lbl_805AE108:
/* 805AE108  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AE10C  7C 08 02 A6 */	mflr r0
/* 805AE110  3C A0 80 65 */	lis r5, lit_530@ha /* 0x8064A6DC@ha */
/* 805AE114  3D 00 80 6C */	lis r8, ani@ha /* 0x806C4ED8@ha */
/* 805AE118  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AE11C  38 E5 A6 DC */	addi r7, r5, lit_530@l /* 0x8064A6DC@l */
/* 805AE120  C0 87 00 00 */	lfs f4, 0(r7)
/* 805AE124  38 A8 4E D8 */	addi r5, r8, ani@l /* 0x806C4ED8@l */
/* 805AE128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AE12C  7C 9F 23 78 */	mr r31, r4
/* 805AE130  38 E0 00 00 */	li r7, 0
/* 805AE134  93 C1 00 08 */	stw r30, 8(r1)
/* 805AE138  7C 7E 1B 78 */	mr r30, r3
/* 805AE13C  3C 60 80 65 */	lis r3, lit_628@ha /* 0x8064A6F4@ha */
/* 805AE140  80 1E 02 D8 */	lwz r0, 0x2d8(r30)
/* 805AE144  C0 23 A6 F4 */	lfs f1, lit_628@l(r3)  /* 0x8064A6F4@l */
/* 805AE148  3C 60 80 65 */	lis r3, data_8064A6D4@ha /* 0x8064A6D4@ha */
/* 805AE14C  20 00 00 03 */	subfic r0, r0, 3
/* 805AE150  80 9E 01 90 */	lwz r4, 0x190(r30)
/* 805AE154  7C 00 00 34 */	cntlzw r0, r0
/* 805AE158  38 C3 A6 D4 */	addi r6, r3, data_8064A6D4@l /* 0x8064A6D4@l */
/* 805AE15C  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805AE160  FC 40 08 90 */	fmr f2, f1
/* 805AE164  C0 A6 00 00 */	lfs f5, 0(r6)
/* 805AE168  FC 60 08 90 */	fmr f3, f1
/* 805AE16C  7C A5 00 2E */	lwzx r5, r5, r0
/* 805AE170  38 7E 01 78 */	addi r3, r30, 0x178
/* 805AE174  38 C0 00 01 */	li r6, 1
/* 805AE178  4B DC 2B 5D */	bl cKF_SkeletonInfo_R_init
/* 805AE17C  3C 60 80 6C */	lis r3, process@ha /* 0x806C4EE0@ha */
/* 805AE180  57 E0 10 3A */	slwi r0, r31, 2
/* 805AE184  38 63 4E E0 */	addi r3, r3, process@l /* 0x806C4EE0@l */
/* 805AE188  7C 03 00 2E */	lwzx r0, r3, r0
/* 805AE18C  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 805AE190  93 FE 02 B4 */	stw r31, 0x2b4(r30)
/* 805AE194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AE198  83 C1 00 08 */	lwz r30, 8(r1)
/* 805AE19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AE1A0  7C 08 03 A6 */	mtlr r0
/* 805AE1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805AE1A8  4E 80 00 20 */	blr 

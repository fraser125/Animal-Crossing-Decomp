lbl_805BF600:
/* 805BF600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BF604  7C 08 02 A6 */	mflr r0
/* 805BF608  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BF60C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BF610  7C 9F 23 79 */	or. r31, r4, r4
/* 805BF614  93 C1 00 08 */	stw r30, 8(r1)
/* 805BF618  7C 7E 1B 78 */	mr r30, r3
/* 805BF61C  40 82 00 64 */	bne lbl_805BF680
/* 805BF620  80 1E 02 D8 */	lwz r0, 0x2d8(r30)
/* 805BF624  3C 60 80 65 */	lis r3, lit_513@ha /* 0x8064ABD4@ha */
/* 805BF628  C0 83 AB D4 */	lfs f4, lit_513@l(r3)  /* 0x8064ABD4@l */
/* 805BF62C  3C A0 80 65 */	lis r5, lit_637@ha /* 0x8064ABF4@ha */
/* 805BF630  20 00 00 03 */	subfic r0, r0, 3
/* 805BF634  3C 80 80 65 */	lis r4, lit_684@ha /* 0x8064AC30@ha */
/* 805BF638  7C 00 00 34 */	cntlzw r0, r0
/* 805BF63C  3C 60 80 65 */	lis r3, lit_685@ha /* 0x8064AC34@ha */
/* 805BF640  38 C4 AC 30 */	addi r6, r4, lit_684@l /* 0x8064AC30@l */
/* 805BF644  39 05 AB F4 */	addi r8, r5, lit_637@l /* 0x8064ABF4@l */
/* 805BF648  38 E3 AC 34 */	addi r7, r3, lit_685@l /* 0x8064AC34@l */
/* 805BF64C  3D 20 80 6C */	lis r9, ani@ha /* 0x806C71AC@ha */
/* 805BF650  C0 46 00 00 */	lfs f2, 0(r6)
/* 805BF654  FC A0 20 90 */	fmr f5, f4
/* 805BF658  C0 67 00 00 */	lfs f3, 0(r7)
/* 805BF65C  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805BF660  38 69 71 AC */	addi r3, r9, ani@l /* 0x806C71AC@l */
/* 805BF664  80 9E 01 90 */	lwz r4, 0x190(r30)
/* 805BF668  7C A3 00 2E */	lwzx r5, r3, r0
/* 805BF66C  C0 28 00 00 */	lfs f1, 0(r8)
/* 805BF670  38 7E 01 78 */	addi r3, r30, 0x178
/* 805BF674  38 C0 00 01 */	li r6, 1
/* 805BF678  38 E0 00 00 */	li r7, 0
/* 805BF67C  4B DB 16 59 */	bl cKF_SkeletonInfo_R_init
lbl_805BF680:
/* 805BF680  3C 60 80 6C */	lis r3, process@ha /* 0x806C71B4@ha */
/* 805BF684  57 E0 10 3A */	slwi r0, r31, 2
/* 805BF688  38 63 71 B4 */	addi r3, r3, process@l /* 0x806C71B4@l */
/* 805BF68C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805BF690  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 805BF694  93 FE 02 B4 */	stw r31, 0x2b4(r30)
/* 805BF698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BF69C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BF6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BF6A4  7C 08 03 A6 */	mtlr r0
/* 805BF6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BF6AC  4E 80 00 20 */	blr 

lbl_805AABB8:
/* 805AABB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AABBC  7C 08 02 A6 */	mflr r0
/* 805AABC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AABC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AABC8  7C 7F 1B 78 */	mr r31, r3
/* 805AABCC  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AABD0  4B DC 5F 21 */	bl cKF_SkeletonInfo_R_dt
/* 805AABD4  3C 60 80 65 */	lis r3, data_8064A61C@ha /* 0x8064A61C@ha */
/* 805AABD8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805AABDC  C0 03 A6 1C */	lfs f0, data_8064A61C@l(r3)  /* 0x8064A61C@l */
/* 805AABE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805AABE4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805AABE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AABEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AABF0  7C 08 03 A6 */	mtlr r0
/* 805AABF4  38 21 00 10 */	addi r1, r1, 0x10
/* 805AABF8  4E 80 00 20 */	blr 

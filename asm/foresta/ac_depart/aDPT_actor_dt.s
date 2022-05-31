lbl_805AC994:
/* 805AC994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AC998  7C 08 02 A6 */	mflr r0
/* 805AC99C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AC9A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AC9A4  7C 7F 1B 78 */	mr r31, r3
/* 805AC9A8  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AC9AC  4B DC 41 45 */	bl cKF_SkeletonInfo_R_dt
/* 805AC9B0  3C 60 80 65 */	lis r3, data_8064A694@ha /* 0x8064A694@ha */
/* 805AC9B4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805AC9B8  C0 03 A6 94 */	lfs f0, data_8064A694@l(r3)  /* 0x8064A694@l */
/* 805AC9BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805AC9C0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805AC9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AC9C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AC9CC  7C 08 03 A6 */	mtlr r0
/* 805AC9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805AC9D4  4E 80 00 20 */	blr 

lbl_805B96F4:
/* 805B96F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B96F8  7C 08 02 A6 */	mflr r0
/* 805B96FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B9704  7C 7F 1B 78 */	mr r31, r3
/* 805B9708  38 7F 01 78 */	addi r3, r31, 0x178
/* 805B970C  4B DB 73 E5 */	bl cKF_SkeletonInfo_R_dt
/* 805B9710  3C 80 80 65 */	lis r4, data_8064AA9C@ha /* 0x8064AA9C@ha */
/* 805B9714  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064AAA0@ha */
/* 805B9718  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805B971C  C0 24 AA 9C */	lfs f1, data_8064AA9C@l(r4)  /* 0x8064AA9C@l */
/* 805B9720  C0 03 AA A0 */	lfs f0, lit_466@l(r3)  /* 0x8064AAA0@l */
/* 805B9724  EC 22 08 28 */	fsubs f1, f2, f1
/* 805B9728  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 805B972C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805B9730  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B9734  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805B9738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B973C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B9740  7C 08 03 A6 */	mtlr r0
/* 805B9744  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9748  4E 80 00 20 */	blr 

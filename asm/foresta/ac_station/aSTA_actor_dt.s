lbl_805BB8D8:
/* 805BB8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BB8DC  7C 08 02 A6 */	mflr r0
/* 805BB8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BB8E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BB8E8  7C 7F 1B 78 */	mr r31, r3
/* 805BB8EC  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BB8F0  4B DB 52 01 */	bl cKF_SkeletonInfo_R_dt
/* 805BB8F4  3C 60 80 65 */	lis r3, data_8064AB2C@ha /* 0x8064AB2C@ha */
/* 805BB8F8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805BB8FC  C0 03 AB 2C */	lfs f0, data_8064AB2C@l(r3)  /* 0x8064AB2C@l */
/* 805BB900  EC 01 00 28 */	fsubs f0, f1, f0
/* 805BB904  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805BB908  48 00 03 91 */	bl aSTC_clip_dt
/* 805BB90C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BB910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BB914  7C 08 03 A6 */	mtlr r0
/* 805BB918  38 21 00 10 */	addi r1, r1, 0x10
/* 805BB91C  4E 80 00 20 */	blr 

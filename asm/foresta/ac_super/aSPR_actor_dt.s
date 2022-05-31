lbl_805BD0F4:
/* 805BD0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BD0F8  7C 08 02 A6 */	mflr r0
/* 805BD0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BD100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BD104  7C 7F 1B 78 */	mr r31, r3
/* 805BD108  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BD10C  4B DB 39 E5 */	bl cKF_SkeletonInfo_R_dt
/* 805BD110  3C 60 80 65 */	lis r3, data_8064AB4C@ha /* 0x8064AB4C@ha */
/* 805BD114  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805BD118  C0 03 AB 4C */	lfs f0, data_8064AB4C@l(r3)  /* 0x8064AB4C@l */
/* 805BD11C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805BD120  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805BD124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BD128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BD12C  7C 08 03 A6 */	mtlr r0
/* 805BD130  38 21 00 10 */	addi r1, r1, 0x10
/* 805BD134  4E 80 00 20 */	blr 

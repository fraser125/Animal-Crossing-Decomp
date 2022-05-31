lbl_80630E80:
/* 80630E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80630E84  7C 08 02 A6 */	mflr r0
/* 80630E88  7C 67 1B 78 */	mr r7, r3
/* 80630E8C  3C 80 80 EF */	lis r4, cKF_bs_r_int_kob_locker1@ha /* 0x80EE95F0@ha */
/* 80630E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80630E94  3C 60 80 EF */	lis r3, cKF_ba_r_int_kob_locker1@ha /* 0x80EE95B8@ha */
/* 80630E98  38 84 95 F0 */	addi r4, r4, cKF_bs_r_int_kob_locker1@l /* 0x80EE95F0@l */
/* 80630E9C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80630EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80630EA4  3B E7 01 34 */	addi r31, r7, 0x134
/* 80630EA8  38 A3 95 B8 */	addi r5, r3, cKF_ba_r_int_kob_locker1@l /* 0x80EE95B8@l */
/* 80630EAC  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80630EB0  7F E3 FB 78 */	mr r3, r31
/* 80630EB4  4B D3 FB E1 */	bl cKF_SkeletonInfo_R_ct
/* 80630EB8  3C 80 80 EF */	lis r4, cKF_ba_r_int_kob_locker1@ha /* 0x80EE95B8@ha */
/* 80630EBC  7F E3 FB 78 */	mr r3, r31
/* 80630EC0  38 84 95 B8 */	addi r4, r4, cKF_ba_r_int_kob_locker1@l /* 0x80EE95B8@l */
/* 80630EC4  38 A0 00 00 */	li r5, 0
/* 80630EC8  4B D3 FC 2D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80630ECC  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80630ED0  7F E3 FB 78 */	mr r3, r31
/* 80630ED4  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80630ED8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80630EDC  4B D4 01 39 */	bl cKF_SkeletonInfo_R_play
/* 80630EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80630EE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80630EE8  7C 08 03 A6 */	mtlr r0
/* 80630EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80630EF0  4E 80 00 20 */	blr 

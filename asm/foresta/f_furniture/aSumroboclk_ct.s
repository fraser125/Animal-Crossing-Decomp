lbl_8063A7C4:
/* 8063A7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A7C8  7C 08 02 A6 */	mflr r0
/* 8063A7CC  7C 67 1B 78 */	mr r7, r3
/* 8063A7D0  3C 80 81 0A */	lis r4, cKF_bs_r_int_sum_roboclk@ha /* 0x810A3EA4@ha */
/* 8063A7D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A7D8  3C 60 81 0A */	lis r3, cKF_ba_r_int_sum_roboclk@ha /* 0x810A3E54@ha */
/* 8063A7DC  38 84 3E A4 */	addi r4, r4, cKF_bs_r_int_sum_roboclk@l /* 0x810A3EA4@l */
/* 8063A7E0  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063A7E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063A7E8  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063A7EC  38 A3 3E 54 */	addi r5, r3, cKF_ba_r_int_sum_roboclk@l /* 0x810A3E54@l */
/* 8063A7F0  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063A7F4  7F E3 FB 78 */	mr r3, r31
/* 8063A7F8  4B D3 62 9D */	bl cKF_SkeletonInfo_R_ct
/* 8063A7FC  3C 80 81 0A */	lis r4, cKF_ba_r_int_sum_roboclk@ha /* 0x810A3E54@ha */
/* 8063A800  7F E3 FB 78 */	mr r3, r31
/* 8063A804  38 84 3E 54 */	addi r4, r4, cKF_ba_r_int_sum_roboclk@l /* 0x810A3E54@l */
/* 8063A808  38 A0 00 00 */	li r5, 0
/* 8063A80C  4B D3 63 D9 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063A810  7F E3 FB 78 */	mr r3, r31
/* 8063A814  4B D3 68 01 */	bl cKF_SkeletonInfo_R_play
/* 8063A818  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063A81C  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063A820  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063A824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063A82C  7C 08 03 A6 */	mtlr r0
/* 8063A830  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A834  4E 80 00 20 */	blr 

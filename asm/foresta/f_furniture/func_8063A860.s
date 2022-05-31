lbl_8063A860:
/* 8063A860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A864  7C 08 02 A6 */	mflr r0
/* 8063A868  7C 67 1B 78 */	mr r7, r3
/* 8063A86C  3C 80 81 0A */	lis r4, cKF_bs_r_int_sum_roboconpo@ha /* 0x810A4DD8@ha */
/* 8063A870  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A874  3C 60 81 0A */	lis r3, cKF_ba_r_int_sum_roboconpo@ha /* 0x810A4DB8@ha */
/* 8063A878  38 84 4D D8 */	addi r4, r4, cKF_bs_r_int_sum_roboconpo@l /* 0x810A4DD8@l */
/* 8063A87C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063A880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063A884  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063A888  38 A3 4D B8 */	addi r5, r3, cKF_ba_r_int_sum_roboconpo@l /* 0x810A4DB8@l */
/* 8063A88C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063A890  7F E3 FB 78 */	mr r3, r31
/* 8063A894  4B D3 62 01 */	bl cKF_SkeletonInfo_R_ct
/* 8063A898  3C 80 81 0A */	lis r4, cKF_ba_r_int_sum_roboconpo@ha /* 0x810A4DB8@ha */
/* 8063A89C  7F E3 FB 78 */	mr r3, r31
/* 8063A8A0  38 84 4D B8 */	addi r4, r4, cKF_ba_r_int_sum_roboconpo@l /* 0x810A4DB8@l */
/* 8063A8A4  38 A0 00 00 */	li r5, 0
/* 8063A8A8  4B D3 63 3D */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063A8AC  7F E3 FB 78 */	mr r3, r31
/* 8063A8B0  4B D3 67 65 */	bl cKF_SkeletonInfo_R_play
/* 8063A8B4  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063A8B8  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063A8BC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063A8C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A8C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063A8C8  7C 08 03 A6 */	mtlr r0
/* 8063A8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A8D0  4E 80 00 20 */	blr 

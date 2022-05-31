lbl_80639FE8:
/* 80639FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639FEC  7C 08 02 A6 */	mflr r0
/* 80639FF0  7C 67 1B 78 */	mr r7, r3
/* 80639FF4  3C 80 81 09 */	lis r4, cKF_bs_r_int_sum_pet01@ha /* 0x81088D1C@ha */
/* 80639FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639FFC  3C 60 81 09 */	lis r3, cKF_ba_r_int_sum_pet01@ha /* 0x81088CE4@ha */
/* 8063A000  38 84 8D 1C */	addi r4, r4, cKF_bs_r_int_sum_pet01@l /* 0x81088D1C@l */
/* 8063A004  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063A008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063A00C  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063A010  38 A3 8C E4 */	addi r5, r3, cKF_ba_r_int_sum_pet01@l /* 0x81088CE4@l */
/* 8063A014  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063A018  7F E3 FB 78 */	mr r3, r31
/* 8063A01C  4B D3 6A 79 */	bl cKF_SkeletonInfo_R_ct
/* 8063A020  3C 80 81 09 */	lis r4, cKF_ba_r_int_sum_pet01@ha /* 0x81088CE4@ha */
/* 8063A024  7F E3 FB 78 */	mr r3, r31
/* 8063A028  38 84 8C E4 */	addi r4, r4, cKF_ba_r_int_sum_pet01@l /* 0x81088CE4@l */
/* 8063A02C  38 A0 00 00 */	li r5, 0
/* 8063A030  4B D3 6A C5 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063A034  7F E3 FB 78 */	mr r3, r31
/* 8063A038  4B D3 6F DD */	bl cKF_SkeletonInfo_R_play
/* 8063A03C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063A040  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063A044  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063A048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A04C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063A050  7C 08 03 A6 */	mtlr r0
/* 8063A054  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A058  4E 80 00 20 */	blr 

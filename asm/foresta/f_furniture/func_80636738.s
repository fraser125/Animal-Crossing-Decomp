lbl_80636738:
/* 80636738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063673C  7C 08 02 A6 */	mflr r0
/* 80636740  7C 67 1B 78 */	mr r7, r3
/* 80636744  3C 80 81 01 */	lis r4, cKF_bs_r_int_sum_clchest01@ha /* 0x8100BDBC@ha */
/* 80636748  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063674C  3C 60 81 01 */	lis r3, cKF_ba_r_int_sum_clchest01@ha /* 0x8100BD78@ha */
/* 80636750  38 84 BD BC */	addi r4, r4, cKF_bs_r_int_sum_clchest01@l /* 0x8100BDBC@l */
/* 80636754  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80636758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063675C  3B E7 01 34 */	addi r31, r7, 0x134
/* 80636760  38 A3 BD 78 */	addi r5, r3, cKF_ba_r_int_sum_clchest01@l /* 0x8100BD78@l */
/* 80636764  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80636768  7F E3 FB 78 */	mr r3, r31
/* 8063676C  4B D3 A3 29 */	bl cKF_SkeletonInfo_R_ct
/* 80636770  3C 80 81 01 */	lis r4, cKF_ba_r_int_sum_clchest01@ha /* 0x8100BD78@ha */
/* 80636774  7F E3 FB 78 */	mr r3, r31
/* 80636778  38 84 BD 78 */	addi r4, r4, cKF_ba_r_int_sum_clchest01@l /* 0x8100BD78@l */
/* 8063677C  38 A0 00 00 */	li r5, 0
/* 80636780  4B D3 A3 75 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80636784  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80636788  7F E3 FB 78 */	mr r3, r31
/* 8063678C  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80636790  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80636794  4B D3 A8 81 */	bl cKF_SkeletonInfo_R_play
/* 80636798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063679C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806367A0  7C 08 03 A6 */	mtlr r0
/* 806367A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806367A8  4E 80 00 20 */	blr 

lbl_806381B4:
/* 806381B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806381B8  7C 08 02 A6 */	mflr r0
/* 806381BC  7C 67 1B 78 */	mr r7, r3
/* 806381C0  3C 80 81 05 */	lis r4, cKF_bs_r_int_sum_hal_clk01@ha /* 0x8104D1AC@ha */
/* 806381C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806381C8  3C 60 81 05 */	lis r3, cKF_ba_r_int_sum_hal_clk01@ha /* 0x8104D15C@ha */
/* 806381CC  38 84 D1 AC */	addi r4, r4, cKF_bs_r_int_sum_hal_clk01@l /* 0x8104D1AC@l */
/* 806381D0  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806381D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806381D8  3B E7 01 34 */	addi r31, r7, 0x134
/* 806381DC  38 A3 D1 5C */	addi r5, r3, cKF_ba_r_int_sum_hal_clk01@l /* 0x8104D15C@l */
/* 806381E0  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806381E4  7F E3 FB 78 */	mr r3, r31
/* 806381E8  4B D3 88 AD */	bl cKF_SkeletonInfo_R_ct
/* 806381EC  3C 80 81 05 */	lis r4, cKF_ba_r_int_sum_hal_clk01@ha /* 0x8104D15C@ha */
/* 806381F0  7F E3 FB 78 */	mr r3, r31
/* 806381F4  38 84 D1 5C */	addi r4, r4, cKF_ba_r_int_sum_hal_clk01@l /* 0x8104D15C@l */
/* 806381F8  38 A0 00 00 */	li r5, 0
/* 806381FC  4B D3 89 E9 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80638200  7F E3 FB 78 */	mr r3, r31
/* 80638204  4B D3 8E 11 */	bl cKF_SkeletonInfo_R_play
/* 80638208  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063820C  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80638210  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80638214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063821C  7C 08 03 A6 */	mtlr r0
/* 80638220  38 21 00 10 */	addi r1, r1, 0x10
/* 80638224  4E 80 00 20 */	blr 

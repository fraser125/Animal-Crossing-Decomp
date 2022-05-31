lbl_806401C0:
/* 806401C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806401C4  7C 08 02 A6 */	mflr r0
/* 806401C8  7C 67 1B 78 */	mr r7, r3
/* 806401CC  3C 80 80 EA */	lis r4, cKF_bs_r_int_ike_tent_fire01@ha /* 0x80E988DC@ha */
/* 806401D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806401D4  3C 60 80 EA */	lis r3, cKF_ba_r_int_ike_tent_fire01@ha /* 0x80E988A4@ha */
/* 806401D8  38 84 88 DC */	addi r4, r4, cKF_bs_r_int_ike_tent_fire01@l /* 0x80E988DC@l */
/* 806401DC  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806401E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806401E4  3B E7 01 34 */	addi r31, r7, 0x134
/* 806401E8  38 A3 88 A4 */	addi r5, r3, cKF_ba_r_int_ike_tent_fire01@l /* 0x80E988A4@l */
/* 806401EC  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806401F0  7F E3 FB 78 */	mr r3, r31
/* 806401F4  4B D3 08 A1 */	bl cKF_SkeletonInfo_R_ct
/* 806401F8  3C 80 80 EA */	lis r4, cKF_ba_r_int_ike_tent_fire01@ha /* 0x80E988A4@ha */
/* 806401FC  7F E3 FB 78 */	mr r3, r31
/* 80640200  38 84 88 A4 */	addi r4, r4, cKF_ba_r_int_ike_tent_fire01@l /* 0x80E988A4@l */
/* 80640204  38 A0 00 00 */	li r5, 0
/* 80640208  4B D3 09 DD */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8064020C  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 80640210  7F E3 FB 78 */	mr r3, r31
/* 80640214  C0 04 D2 8C */	lfs f0, lit_626@l(r4)  /* 0x8064D28C@l */
/* 80640218  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8064021C  4B D3 0D F9 */	bl cKF_SkeletonInfo_R_play
/* 80640220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80640224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80640228  7C 08 03 A6 */	mtlr r0
/* 8064022C  38 21 00 10 */	addi r1, r1, 0x10
/* 80640230  4E 80 00 20 */	blr 

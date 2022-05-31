lbl_80634998:
/* 80634998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063499C  7C 08 02 A6 */	mflr r0
/* 806349A0  7C 67 1B 78 */	mr r7, r3
/* 806349A4  3C 80 80 F7 */	lis r4, cKF_bs_r_int_nog_tri_chest01@ha /* 0x80F6E094@ha */
/* 806349A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806349AC  3C 60 80 F7 */	lis r3, cKF_ba_r_int_nog_tri_chest01@ha /* 0x80F6E05C@ha */
/* 806349B0  38 84 E0 94 */	addi r4, r4, cKF_bs_r_int_nog_tri_chest01@l /* 0x80F6E094@l */
/* 806349B4  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806349B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806349BC  3B E7 01 34 */	addi r31, r7, 0x134
/* 806349C0  38 A3 E0 5C */	addi r5, r3, cKF_ba_r_int_nog_tri_chest01@l /* 0x80F6E05C@l */
/* 806349C4  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806349C8  7F E3 FB 78 */	mr r3, r31
/* 806349CC  4B D3 C0 C9 */	bl cKF_SkeletonInfo_R_ct
/* 806349D0  3C 80 80 F7 */	lis r4, cKF_ba_r_int_nog_tri_chest01@ha /* 0x80F6E05C@ha */
/* 806349D4  7F E3 FB 78 */	mr r3, r31
/* 806349D8  38 84 E0 5C */	addi r4, r4, cKF_ba_r_int_nog_tri_chest01@l /* 0x80F6E05C@l */
/* 806349DC  38 A0 00 00 */	li r5, 0
/* 806349E0  4B D3 C1 15 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 806349E4  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 806349E8  7F E3 FB 78 */	mr r3, r31
/* 806349EC  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 806349F0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806349F4  4B D3 C6 21 */	bl cKF_SkeletonInfo_R_play
/* 806349F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806349FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80634A00  7C 08 03 A6 */	mtlr r0
/* 80634A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80634A08  4E 80 00 20 */	blr 

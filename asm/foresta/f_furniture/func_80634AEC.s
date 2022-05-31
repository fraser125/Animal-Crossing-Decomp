lbl_80634AEC:
/* 80634AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80634AF0  7C 08 02 A6 */	mflr r0
/* 80634AF4  7C 67 1B 78 */	mr r7, r3
/* 80634AF8  3C 80 80 F7 */	lis r4, cKF_bs_r_int_nog_tri_chest02@ha /* 0x80F6EFE0@ha */
/* 80634AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80634B00  3C 60 80 F7 */	lis r3, cKF_ba_r_int_nog_tri_chest02@ha /* 0x80F6EF90@ha */
/* 80634B04  38 84 EF E0 */	addi r4, r4, cKF_bs_r_int_nog_tri_chest02@l /* 0x80F6EFE0@l */
/* 80634B08  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80634B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80634B10  3B E7 01 34 */	addi r31, r7, 0x134
/* 80634B14  38 A3 EF 90 */	addi r5, r3, cKF_ba_r_int_nog_tri_chest02@l /* 0x80F6EF90@l */
/* 80634B18  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80634B1C  7F E3 FB 78 */	mr r3, r31
/* 80634B20  4B D3 BF 75 */	bl cKF_SkeletonInfo_R_ct
/* 80634B24  3C 80 80 F7 */	lis r4, cKF_ba_r_int_nog_tri_chest02@ha /* 0x80F6EF90@ha */
/* 80634B28  7F E3 FB 78 */	mr r3, r31
/* 80634B2C  38 84 EF 90 */	addi r4, r4, cKF_ba_r_int_nog_tri_chest02@l /* 0x80F6EF90@l */
/* 80634B30  38 A0 00 00 */	li r5, 0
/* 80634B34  4B D3 BF C1 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80634B38  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80634B3C  7F E3 FB 78 */	mr r3, r31
/* 80634B40  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80634B44  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80634B48  4B D3 C4 CD */	bl cKF_SkeletonInfo_R_play
/* 80634B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80634B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80634B54  7C 08 03 A6 */	mtlr r0
/* 80634B58  38 21 00 10 */	addi r1, r1, 0x10
/* 80634B5C  4E 80 00 20 */	blr 

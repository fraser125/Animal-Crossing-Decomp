lbl_806409E8:
/* 806409E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806409EC  7C 08 02 A6 */	mflr r0
/* 806409F0  7C 67 1B 78 */	mr r7, r3
/* 806409F4  3C 80 80 F5 */	lis r4, cKF_bs_r_int_nog_gong@ha /* 0x80F481C8@ha */
/* 806409F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806409FC  3C 60 80 F5 */	lis r3, cKF_ba_r_int_nog_gong@ha /* 0x80F48160@ha */
/* 80640A00  38 84 81 C8 */	addi r4, r4, cKF_bs_r_int_nog_gong@l /* 0x80F481C8@l */
/* 80640A04  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80640A08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80640A0C  3B E7 01 34 */	addi r31, r7, 0x134
/* 80640A10  38 A3 81 60 */	addi r5, r3, cKF_ba_r_int_nog_gong@l /* 0x80F48160@l */
/* 80640A14  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80640A18  7F E3 FB 78 */	mr r3, r31
/* 80640A1C  4B D3 00 79 */	bl cKF_SkeletonInfo_R_ct
/* 80640A20  3C 80 80 F5 */	lis r4, cKF_ba_r_int_nog_gong@ha /* 0x80F48160@ha */
/* 80640A24  7F E3 FB 78 */	mr r3, r31
/* 80640A28  38 84 81 60 */	addi r4, r4, cKF_ba_r_int_nog_gong@l /* 0x80F48160@l */
/* 80640A2C  38 A0 00 00 */	li r5, 0
/* 80640A30  4B D3 00 C5 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80640A34  7F E3 FB 78 */	mr r3, r31
/* 80640A38  4B D3 05 DD */	bl cKF_SkeletonInfo_R_play
/* 80640A3C  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80640A40  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80640A44  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80640A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80640A4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80640A50  7C 08 03 A6 */	mtlr r0
/* 80640A54  38 21 00 10 */	addi r1, r1, 0x10
/* 80640A58  4E 80 00 20 */	blr 

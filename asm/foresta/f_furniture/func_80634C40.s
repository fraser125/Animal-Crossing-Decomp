lbl_80634C40:
/* 80634C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80634C44  7C 08 02 A6 */	mflr r0
/* 80634C48  7C 67 1B 78 */	mr r7, r3
/* 80634C4C  3C 80 80 F7 */	lis r4, cKF_bs_r_int_nog_tri_chest03@ha /* 0x80F6FD30@ha */
/* 80634C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80634C54  3C 60 80 F7 */	lis r3, cKF_ba_r_int_nog_tri_chest03@ha /* 0x80F6FCF8@ha */
/* 80634C58  38 84 FD 30 */	addi r4, r4, cKF_bs_r_int_nog_tri_chest03@l /* 0x80F6FD30@l */
/* 80634C5C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80634C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80634C64  3B E7 01 34 */	addi r31, r7, 0x134
/* 80634C68  38 A3 FC F8 */	addi r5, r3, cKF_ba_r_int_nog_tri_chest03@l /* 0x80F6FCF8@l */
/* 80634C6C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80634C70  7F E3 FB 78 */	mr r3, r31
/* 80634C74  4B D3 BE 21 */	bl cKF_SkeletonInfo_R_ct
/* 80634C78  3C 80 80 F7 */	lis r4, cKF_ba_r_int_nog_tri_chest03@ha /* 0x80F6FCF8@ha */
/* 80634C7C  7F E3 FB 78 */	mr r3, r31
/* 80634C80  38 84 FC F8 */	addi r4, r4, cKF_ba_r_int_nog_tri_chest03@l /* 0x80F6FCF8@l */
/* 80634C84  38 A0 00 00 */	li r5, 0
/* 80634C88  4B D3 BE 6D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80634C8C  7F E3 FB 78 */	mr r3, r31
/* 80634C90  4B D3 C3 85 */	bl cKF_SkeletonInfo_R_play
/* 80634C94  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80634C98  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 80634C9C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80634CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80634CA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80634CA8  7C 08 03 A6 */	mtlr r0
/* 80634CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80634CB0  4E 80 00 20 */	blr 

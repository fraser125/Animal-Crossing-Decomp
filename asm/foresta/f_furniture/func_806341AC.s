lbl_806341AC:
/* 806341AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806341B0  7C 08 02 A6 */	mflr r0
/* 806341B4  7C 67 1B 78 */	mr r7, r3
/* 806341B8  3C 80 80 F6 */	lis r4, cKF_bs_r_int_nog_pawnW@ha /* 0x80F5C454@ha */
/* 806341BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806341C0  3C 60 80 F6 */	lis r3, cKF_ba_r_int_nog_pawnW@ha /* 0x80F5C41C@ha */
/* 806341C4  38 84 C4 54 */	addi r4, r4, cKF_bs_r_int_nog_pawnW@l /* 0x80F5C454@l */
/* 806341C8  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806341CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806341D0  3B E7 01 34 */	addi r31, r7, 0x134
/* 806341D4  38 A3 C4 1C */	addi r5, r3, cKF_ba_r_int_nog_pawnW@l /* 0x80F5C41C@l */
/* 806341D8  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806341DC  7F E3 FB 78 */	mr r3, r31
/* 806341E0  4B D3 C8 B5 */	bl cKF_SkeletonInfo_R_ct
/* 806341E4  3C 80 80 F6 */	lis r4, cKF_ba_r_int_nog_pawnW@ha /* 0x80F5C41C@ha */
/* 806341E8  7F E3 FB 78 */	mr r3, r31
/* 806341EC  38 84 C4 1C */	addi r4, r4, cKF_ba_r_int_nog_pawnW@l /* 0x80F5C41C@l */
/* 806341F0  38 A0 00 00 */	li r5, 0
/* 806341F4  4B D3 C9 F1 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 806341F8  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 806341FC  7F E3 FB 78 */	mr r3, r31
/* 80634200  C0 04 D2 8C */	lfs f0, lit_626@l(r4)  /* 0x8064D28C@l */
/* 80634204  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80634208  4B D3 CE 0D */	bl cKF_SkeletonInfo_R_play
/* 8063420C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80634210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80634214  7C 08 03 A6 */	mtlr r0
/* 80634218  38 21 00 10 */	addi r1, r1, 0x10
/* 8063421C  4E 80 00 20 */	blr 

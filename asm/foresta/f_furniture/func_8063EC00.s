lbl_8063EC00:
/* 8063EC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063EC04  7C 08 02 A6 */	mflr r0
/* 8063EC08  7C 67 1B 78 */	mr r7, r3
/* 8063EC0C  3C 80 80 FD */	lis r4, cKF_bs_r_int_sugi_torch@ha /* 0x80FD1918@ha */
/* 8063EC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063EC14  3C 60 80 FD */	lis r3, cKF_ba_r_int_sugi_torch@ha /* 0x80FD18D4@ha */
/* 8063EC18  38 84 19 18 */	addi r4, r4, cKF_bs_r_int_sugi_torch@l /* 0x80FD1918@l */
/* 8063EC1C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063EC20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063EC24  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063EC28  38 A3 18 D4 */	addi r5, r3, cKF_ba_r_int_sugi_torch@l /* 0x80FD18D4@l */
/* 8063EC2C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063EC30  7F E3 FB 78 */	mr r3, r31
/* 8063EC34  4B D3 1E 61 */	bl cKF_SkeletonInfo_R_ct
/* 8063EC38  3C 80 80 FD */	lis r4, cKF_ba_r_int_sugi_torch@ha /* 0x80FD18D4@ha */
/* 8063EC3C  7F E3 FB 78 */	mr r3, r31
/* 8063EC40  38 84 18 D4 */	addi r4, r4, cKF_ba_r_int_sugi_torch@l /* 0x80FD18D4@l */
/* 8063EC44  38 A0 00 00 */	li r5, 0
/* 8063EC48  4B D3 1F 9D */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063EC4C  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 8063EC50  7F E3 FB 78 */	mr r3, r31
/* 8063EC54  C0 04 D2 8C */	lfs f0, lit_626@l(r4)  /* 0x8064D28C@l */
/* 8063EC58  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063EC5C  4B D3 23 B9 */	bl cKF_SkeletonInfo_R_play
/* 8063EC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063EC64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063EC68  7C 08 03 A6 */	mtlr r0
/* 8063EC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063EC70  4E 80 00 20 */	blr 

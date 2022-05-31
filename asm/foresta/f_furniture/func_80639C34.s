lbl_80639C34:
/* 80639C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639C38  7C 08 02 A6 */	mflr r0
/* 80639C3C  7C 67 1B 78 */	mr r7, r3
/* 80639C40  3C 80 81 08 */	lis r4, cKF_bs_r_int_sum_okiagari01@ha /* 0x81083648@ha */
/* 80639C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639C48  3C 60 81 08 */	lis r3, cKF_ba_r_int_sum_okiagari01@ha /* 0x8108361C@ha */
/* 80639C4C  38 84 36 48 */	addi r4, r4, cKF_bs_r_int_sum_okiagari01@l /* 0x81083648@l */
/* 80639C50  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80639C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80639C58  3B E7 01 34 */	addi r31, r7, 0x134
/* 80639C5C  38 A3 36 1C */	addi r5, r3, cKF_ba_r_int_sum_okiagari01@l /* 0x8108361C@l */
/* 80639C60  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80639C64  7F E3 FB 78 */	mr r3, r31
/* 80639C68  4B D3 6E 2D */	bl cKF_SkeletonInfo_R_ct
/* 80639C6C  3C 80 81 08 */	lis r4, cKF_ba_r_int_sum_okiagari01@ha /* 0x8108361C@ha */
/* 80639C70  7F E3 FB 78 */	mr r3, r31
/* 80639C74  38 84 36 1C */	addi r4, r4, cKF_ba_r_int_sum_okiagari01@l /* 0x8108361C@l */
/* 80639C78  38 A0 00 00 */	li r5, 0
/* 80639C7C  4B D3 6E 79 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80639C80  7F E3 FB 78 */	mr r3, r31
/* 80639C84  4B D3 73 91 */	bl cKF_SkeletonInfo_R_play
/* 80639C88  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80639C8C  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80639C90  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80639C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80639C9C  7C 08 03 A6 */	mtlr r0
/* 80639CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80639CA4  4E 80 00 20 */	blr 

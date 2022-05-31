lbl_80635E40:
/* 80635E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80635E44  7C 08 02 A6 */	mflr r0
/* 80635E48  7C 67 1B 78 */	mr r7, r3
/* 80635E4C  3C 80 80 FF */	lis r4, cKF_bs_r_int_sum_blue_cab01@ha /* 0x80FF7AFC@ha */
/* 80635E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80635E54  3C 60 80 FF */	lis r3, cKF_ba_r_int_sum_blue_cab01@ha /* 0x80FF7A94@ha */
/* 80635E58  38 84 7A FC */	addi r4, r4, cKF_bs_r_int_sum_blue_cab01@l /* 0x80FF7AFC@l */
/* 80635E5C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80635E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80635E64  3B E7 01 34 */	addi r31, r7, 0x134
/* 80635E68  38 A3 7A 94 */	addi r5, r3, cKF_ba_r_int_sum_blue_cab01@l /* 0x80FF7A94@l */
/* 80635E6C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80635E70  7F E3 FB 78 */	mr r3, r31
/* 80635E74  4B D3 AC 21 */	bl cKF_SkeletonInfo_R_ct
/* 80635E78  3C 80 80 FF */	lis r4, cKF_ba_r_int_sum_blue_cab01@ha /* 0x80FF7A94@ha */
/* 80635E7C  7F E3 FB 78 */	mr r3, r31
/* 80635E80  38 84 7A 94 */	addi r4, r4, cKF_ba_r_int_sum_blue_cab01@l /* 0x80FF7A94@l */
/* 80635E84  38 A0 00 00 */	li r5, 0
/* 80635E88  4B D3 AC 6D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80635E8C  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80635E90  7F E3 FB 78 */	mr r3, r31
/* 80635E94  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80635E98  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80635E9C  4B D3 B1 79 */	bl cKF_SkeletonInfo_R_play
/* 80635EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80635EA8  7C 08 03 A6 */	mtlr r0
/* 80635EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80635EB0  4E 80 00 20 */	blr 

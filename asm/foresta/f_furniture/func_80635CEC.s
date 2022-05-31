lbl_80635CEC:
/* 80635CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80635CF0  7C 08 02 A6 */	mflr r0
/* 80635CF4  7C 67 1B 78 */	mr r7, r3
/* 80635CF8  3C 80 80 FF */	lis r4, cKF_bs_r_int_sum_blue_bureau01@ha /* 0x80FF6C00@ha */
/* 80635CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80635D00  3C 60 80 FF */	lis r3, cKF_ba_r_int_sum_blue_bureau01@ha /* 0x80FF6BC8@ha */
/* 80635D04  38 84 6C 00 */	addi r4, r4, cKF_bs_r_int_sum_blue_bureau01@l /* 0x80FF6C00@l */
/* 80635D08  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80635D0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80635D10  3B E7 01 34 */	addi r31, r7, 0x134
/* 80635D14  38 A3 6B C8 */	addi r5, r3, cKF_ba_r_int_sum_blue_bureau01@l /* 0x80FF6BC8@l */
/* 80635D18  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80635D1C  7F E3 FB 78 */	mr r3, r31
/* 80635D20  4B D3 AD 75 */	bl cKF_SkeletonInfo_R_ct
/* 80635D24  3C 80 80 FF */	lis r4, cKF_ba_r_int_sum_blue_bureau01@ha /* 0x80FF6BC8@ha */
/* 80635D28  7F E3 FB 78 */	mr r3, r31
/* 80635D2C  38 84 6B C8 */	addi r4, r4, cKF_ba_r_int_sum_blue_bureau01@l /* 0x80FF6BC8@l */
/* 80635D30  38 A0 00 00 */	li r5, 0
/* 80635D34  4B D3 AD C1 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80635D38  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80635D3C  7F E3 FB 78 */	mr r3, r31
/* 80635D40  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80635D44  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80635D48  4B D3 B2 CD */	bl cKF_SkeletonInfo_R_play
/* 80635D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80635D54  7C 08 03 A6 */	mtlr r0
/* 80635D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80635D5C  4E 80 00 20 */	blr 

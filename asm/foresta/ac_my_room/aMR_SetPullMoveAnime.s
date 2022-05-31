lbl_80478E74:
/* 80478E74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80478E78  7C 08 02 A6 */	mflr r0
/* 80478E7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80478E80  39 61 00 20 */	addi r11, r1, 0x20
/* 80478E84  4B C2 20 51 */	bl func_8009AED4
/* 80478E88  7C BD 2B 78 */	mr r29, r5
/* 80478E8C  3B C3 00 08 */	addi r30, r3, 8
/* 80478E90  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80478E94  3B FD 01 D8 */	addi r31, r29, 0x1d8
/* 80478E98  4B FF F4 35 */	bl aMR_GetPlayerDirect
/* 80478E9C  3C 80 80 69 */	lis r4, move_angle_table_3395@ha /* 0x8068A058@ha */
/* 80478EA0  54 60 08 3C */	slwi r0, r3, 1
/* 80478EA4  38 84 A0 58 */	addi r4, r4, move_angle_table_3395@l /* 0x8068A058@l */
/* 80478EA8  3C 60 80 91 */	lis r3, cKF_ba_r_furniture_stop@ha /* 0x80911B40@ha */
/* 80478EAC  7C 04 02 AE */	lhax r0, r4, r0
/* 80478EB0  38 83 1B 40 */	addi r4, r3, cKF_ba_r_furniture_stop@l /* 0x80911B40@l */
/* 80478EB4  7F E3 FB 78 */	mr r3, r31
/* 80478EB8  38 A0 00 00 */	li r5, 0
/* 80478EBC  B0 1D 02 D8 */	sth r0, 0x2d8(r29)
/* 80478EC0  4B EF 7C 35 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80478EC4  7F E3 FB 78 */	mr r3, r31
/* 80478EC8  4B EF 81 4D */	bl cKF_SkeletonInfo_R_play
/* 80478ECC  3C 80 80 64 */	lis r4, lit_886@ha /* 0x806449F8@ha */
/* 80478ED0  7F E3 FB 78 */	mr r3, r31
/* 80478ED4  38 A4 49 F8 */	addi r5, r4, lit_886@l /* 0x806449F8@l */
/* 80478ED8  38 80 00 00 */	li r4, 0
/* 80478EDC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80478EE0  38 A0 00 00 */	li r5, 0
/* 80478EE4  38 C0 00 00 */	li r6, 0
/* 80478EE8  FC 40 08 90 */	fmr f2, f1
/* 80478EEC  FC 60 08 90 */	fmr f3, f1
/* 80478EF0  4B EF 96 01 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 80478EF4  3C 80 80 64 */	lis r4, lit_886@ha /* 0x806449F8@ha */
/* 80478EF8  7F C3 F3 78 */	mr r3, r30
/* 80478EFC  38 A4 49 F8 */	addi r5, r4, lit_886@l /* 0x806449F8@l */
/* 80478F00  7F C4 F3 78 */	mr r4, r30
/* 80478F04  C0 25 00 00 */	lfs f1, 0(r5)
/* 80478F08  7F E7 FB 78 */	mr r7, r31
/* 80478F0C  38 A0 00 00 */	li r5, 0
/* 80478F10  38 C0 00 00 */	li r6, 0
/* 80478F14  39 00 00 01 */	li r8, 1
/* 80478F18  4B EF 96 01 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 80478F1C  3C 60 80 64 */	lis r3, lit_3397@ha /* 0x80644A5C@ha */
/* 80478F20  3C 80 80 91 */	lis r4, cKF_ba_r_furniture_pull@ha /* 0x80911A68@ha */
/* 80478F24  38 A3 4A 5C */	addi r5, r3, lit_3397@l /* 0x80644A5C@l */
/* 80478F28  C0 25 00 00 */	lfs f1, 0(r5)
/* 80478F2C  7F E3 FB 78 */	mr r3, r31
/* 80478F30  38 84 1A 68 */	addi r4, r4, cKF_ba_r_furniture_pull@l /* 0x80911A68@l */
/* 80478F34  38 A0 00 00 */	li r5, 0
/* 80478F38  4B EF 7C 39 */	bl cKF_SkeletonInfo_R_init_standard_stop_morph
/* 80478F3C  7F E3 FB 78 */	mr r3, r31
/* 80478F40  4B EF 80 D5 */	bl cKF_SkeletonInfo_R_play
/* 80478F44  39 61 00 20 */	addi r11, r1, 0x20
/* 80478F48  4B C2 1F D9 */	bl func_8009AF20
/* 80478F4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80478F50  7C 08 03 A6 */	mtlr r0
/* 80478F54  38 21 00 20 */	addi r1, r1, 0x20
/* 80478F58  4E 80 00 20 */	blr 

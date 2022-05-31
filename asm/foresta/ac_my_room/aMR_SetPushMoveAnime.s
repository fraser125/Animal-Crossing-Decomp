lbl_80478F5C:
/* 80478F5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80478F60  7C 08 02 A6 */	mflr r0
/* 80478F64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80478F68  39 61 00 20 */	addi r11, r1, 0x20
/* 80478F6C  4B C2 1F 69 */	bl func_8009AED4
/* 80478F70  7C BD 2B 78 */	mr r29, r5
/* 80478F74  3B C3 00 08 */	addi r30, r3, 8
/* 80478F78  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80478F7C  3B FD 01 D8 */	addi r31, r29, 0x1d8
/* 80478F80  4B FF F3 4D */	bl aMR_GetPlayerDirect
/* 80478F84  3C 80 80 69 */	lis r4, move_angle_table_3401@ha /* 0x8068A060@ha */
/* 80478F88  54 60 08 3C */	slwi r0, r3, 1
/* 80478F8C  38 84 A0 60 */	addi r4, r4, move_angle_table_3401@l /* 0x8068A060@l */
/* 80478F90  3C 60 80 91 */	lis r3, cKF_ba_r_furniture_stop@ha /* 0x80911B40@ha */
/* 80478F94  7C 04 02 AE */	lhax r0, r4, r0
/* 80478F98  38 83 1B 40 */	addi r4, r3, cKF_ba_r_furniture_stop@l /* 0x80911B40@l */
/* 80478F9C  7F E3 FB 78 */	mr r3, r31
/* 80478FA0  38 A0 00 00 */	li r5, 0
/* 80478FA4  B0 1D 02 D8 */	sth r0, 0x2d8(r29)
/* 80478FA8  4B EF 7B 4D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80478FAC  7F E3 FB 78 */	mr r3, r31
/* 80478FB0  4B EF 80 65 */	bl cKF_SkeletonInfo_R_play
/* 80478FB4  3C 80 80 64 */	lis r4, lit_886@ha /* 0x806449F8@ha */
/* 80478FB8  7F E3 FB 78 */	mr r3, r31
/* 80478FBC  38 A4 49 F8 */	addi r5, r4, lit_886@l /* 0x806449F8@l */
/* 80478FC0  38 80 00 00 */	li r4, 0
/* 80478FC4  C0 25 00 00 */	lfs f1, 0(r5)
/* 80478FC8  38 A0 00 00 */	li r5, 0
/* 80478FCC  38 C0 00 00 */	li r6, 0
/* 80478FD0  FC 40 08 90 */	fmr f2, f1
/* 80478FD4  FC 60 08 90 */	fmr f3, f1
/* 80478FD8  4B EF 95 19 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 80478FDC  3C 80 80 64 */	lis r4, lit_886@ha /* 0x806449F8@ha */
/* 80478FE0  7F C3 F3 78 */	mr r3, r30
/* 80478FE4  38 A4 49 F8 */	addi r5, r4, lit_886@l /* 0x806449F8@l */
/* 80478FE8  7F C4 F3 78 */	mr r4, r30
/* 80478FEC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80478FF0  7F E7 FB 78 */	mr r7, r31
/* 80478FF4  38 A0 00 00 */	li r5, 0
/* 80478FF8  38 C0 00 00 */	li r6, 0
/* 80478FFC  39 00 00 01 */	li r8, 1
/* 80479000  4B EF 95 19 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 80479004  3C 80 80 91 */	lis r4, cKF_ba_r_furniture_push@ha /* 0x80911B18@ha */
/* 80479008  7F E3 FB 78 */	mr r3, r31
/* 8047900C  38 84 1B 18 */	addi r4, r4, cKF_ba_r_furniture_push@l /* 0x80911B18@l */
/* 80479010  38 A0 00 00 */	li r5, 0
/* 80479014  4B EF 7A E1 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80479018  7F E3 FB 78 */	mr r3, r31
/* 8047901C  4B EF 7F F9 */	bl cKF_SkeletonInfo_R_play
/* 80479020  39 61 00 20 */	addi r11, r1, 0x20
/* 80479024  4B C2 1E FD */	bl func_8009AF20
/* 80479028  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047902C  7C 08 03 A6 */	mtlr r0
/* 80479030  38 21 00 20 */	addi r1, r1, 0x20
/* 80479034  4E 80 00 20 */	blr 

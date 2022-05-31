lbl_80506078:
/* 80506078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050607C  7C 08 02 A6 */	mflr r0
/* 80506080  90 01 00 24 */	stw r0, 0x24(r1)
/* 80506084  39 61 00 20 */	addi r11, r1, 0x20
/* 80506088  4B B9 4E 49 */	bl func_8009AED0
/* 8050608C  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 80506090  7C 7E 1B 78 */	mr r30, r3
/* 80506094  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 80506098  7C 9F 23 78 */	mr r31, r4
/* 8050609C  3B BE 01 74 */	addi r29, r30, 0x174
/* 805060A0  3B 9E 0D 60 */	addi r28, r30, 0xd60
/* 805060A4  38 A1 00 0C */	addi r5, r1, 0xc
/* 805060A8  38 C1 00 08 */	addi r6, r1, 8
/* 805060AC  38 80 00 86 */	li r4, 0x86
/* 805060B0  4B FD 3E B1 */	bl Player_actor_SetupItem_Base1
/* 805060B4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 805060B8  A8 1C 00 0C */	lha r0, 0xc(r28)
/* 805060BC  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 805060C0  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 805060C4  C0 24 00 00 */	lfs f1, 0(r4)
/* 805060C8  38 83 66 74 */	addi r4, r3, lit_801@l /* 0x80646674@l */
/* 805060CC  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 805060D0  7F A3 EB 78 */	mr r3, r29
/* 805060D4  FC 60 08 90 */	fmr f3, f1
/* 805060D8  C0 44 00 00 */	lfs f2, 0(r4)
/* 805060DC  38 80 00 00 */	li r4, 0
/* 805060E0  38 A0 00 00 */	li r5, 0
/* 805060E4  38 C0 40 00 */	li r6, 0x4000
/* 805060E8  4B E6 C4 09 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 805060EC  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 805060F0  A8 BE 00 DE */	lha r5, 0xde(r30)
/* 805060F4  C0 23 7E 60 */	lfs f1, lit_6257@l(r3)  /* 0x80647E60@l */
/* 805060F8  7F 84 E3 78 */	mr r4, r28
/* 805060FC  A8 DC 00 0C */	lha r6, 0xc(r28)
/* 80506100  7F A7 EB 78 */	mr r7, r29
/* 80506104  38 7E 00 28 */	addi r3, r30, 0x28
/* 80506108  39 00 00 07 */	li r8, 7
/* 8050610C  4B E6 C4 0D */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 80506110  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80506114  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80506118  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 8050611C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80506120  C0 25 00 00 */	lfs f1, 0(r5)
/* 80506124  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80506128  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 8050612C  7F C3 F3 78 */	mr r3, r30
/* 80506130  FC 40 08 90 */	fmr f2, f1
/* 80506134  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80506138  81 01 00 08 */	lwz r8, 8(r1)
/* 8050613C  7F E4 FB 78 */	mr r4, r31
/* 80506140  38 A0 00 86 */	li r5, 0x86
/* 80506144  38 E0 00 00 */	li r7, 0
/* 80506148  4B FD 06 C9 */	bl Player_actor_InitAnimation_Base2
/* 8050614C  7F C3 F3 78 */	mr r3, r30
/* 80506150  7F E4 FB 78 */	mr r4, r31
/* 80506154  4B FC F7 A5 */	bl Player_actor_setup_main_Base
/* 80506158  7F C3 F3 78 */	mr r3, r30
/* 8050615C  7F E4 FB 78 */	mr r4, r31
/* 80506160  4B FD A7 39 */	bl Player_actor_setup_main_Demo_geton_boat_other_func2
/* 80506164  39 61 00 20 */	addi r11, r1, 0x20
/* 80506168  4B B9 4D B5 */	bl func_8009AF1C
/* 8050616C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80506170  7C 08 03 A6 */	mtlr r0
/* 80506174  38 21 00 20 */	addi r1, r1, 0x20
/* 80506178  4E 80 00 20 */	blr 

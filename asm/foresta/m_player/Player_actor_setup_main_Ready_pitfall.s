lbl_80501A50:
/* 80501A50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80501A54  7C 08 02 A6 */	mflr r0
/* 80501A58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80501A5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80501A60  4B B9 94 75 */	bl func_8009AED4
/* 80501A64  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 80501A68  38 00 00 00 */	li r0, 0
/* 80501A6C  7C 7F 1B 78 */	mr r31, r3
/* 80501A70  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 80501A74  7C 9D 23 78 */	mr r29, r4
/* 80501A78  90 03 11 F0 */	stw r0, 0x11f0(r3)
/* 80501A7C  3B DF 01 74 */	addi r30, r31, 0x174
/* 80501A80  38 A1 00 0C */	addi r5, r1, 0xc
/* 80501A84  38 C1 00 08 */	addi r6, r1, 8
/* 80501A88  38 80 00 71 */	li r4, 0x71
/* 80501A8C  4B FD 84 D5 */	bl Player_actor_SetupItem_Base1
/* 80501A90  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80501A94  3C 80 80 64 */	lis r4, lit_801@ha /* 0x80646674@ha */
/* 80501A98  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 80501A9C  C0 44 66 74 */	lfs f2, lit_801@l(r4)  /* 0x80646674@l */
/* 80501AA0  C0 25 00 00 */	lfs f1, 0(r5)
/* 80501AA4  7F C3 F3 78 */	mr r3, r30
/* 80501AA8  38 80 00 00 */	li r4, 0
/* 80501AAC  38 A0 00 00 */	li r5, 0
/* 80501AB0  FC 60 08 90 */	fmr f3, f1
/* 80501AB4  38 C0 40 00 */	li r6, 0x4000
/* 80501AB8  4B E7 0A 39 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 80501ABC  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 80501AC0  A8 BF 00 DE */	lha r5, 0xde(r31)
/* 80501AC4  C0 23 7E 60 */	lfs f1, lit_6257@l(r3)  /* 0x80647E60@l */
/* 80501AC8  7F C7 F3 78 */	mr r7, r30
/* 80501ACC  7C A6 2B 78 */	mr r6, r5
/* 80501AD0  38 7F 00 28 */	addi r3, r31, 0x28
/* 80501AD4  38 9F 0D 60 */	addi r4, r31, 0xd60
/* 80501AD8  39 00 00 03 */	li r8, 3
/* 80501ADC  4B E7 0A 3D */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 80501AE0  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80501AE4  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80501AE8  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80501AEC  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80501AF0  C0 25 00 00 */	lfs f1, 0(r5)
/* 80501AF4  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80501AF8  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80501AFC  7F E3 FB 78 */	mr r3, r31
/* 80501B00  FC 40 08 90 */	fmr f2, f1
/* 80501B04  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80501B08  81 01 00 08 */	lwz r8, 8(r1)
/* 80501B0C  7F A4 EB 78 */	mr r4, r29
/* 80501B10  38 A0 00 71 */	li r5, 0x71
/* 80501B14  38 E0 00 00 */	li r7, 0
/* 80501B18  4B FD 4C F9 */	bl Player_actor_InitAnimation_Base2
/* 80501B1C  7F E3 FB 78 */	mr r3, r31
/* 80501B20  7F A4 EB 78 */	mr r4, r29
/* 80501B24  4B FD 3D D5 */	bl Player_actor_setup_main_Base
/* 80501B28  39 61 00 20 */	addi r11, r1, 0x20
/* 80501B2C  4B B9 93 F5 */	bl func_8009AF20
/* 80501B30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80501B34  7C 08 03 A6 */	mtlr r0
/* 80501B38  38 21 00 20 */	addi r1, r1, 0x20
/* 80501B3C  4E 80 00 20 */	blr 

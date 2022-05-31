lbl_804EF66C:
/* 804EF66C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EF670  7C 08 02 A6 */	mflr r0
/* 804EF674  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EF678  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF67C  4B BA B8 55 */	bl func_8009AED0
/* 804EF680  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804EF684  7C 7C 1B 78 */	mr r28, r3
/* 804EF688  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804EF68C  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 804EF690  7C 9D 23 78 */	mr r29, r4
/* 804EF694  3B FC 01 74 */	addi r31, r28, 0x174
/* 804EF698  FC 60 08 90 */	fmr f3, f1
/* 804EF69C  C0 43 66 74 */	lfs f2, lit_801@l(r3)  /* 0x80646674@l */
/* 804EF6A0  83 DC 0D 60 */	lwz r30, 0xd60(r28)
/* 804EF6A4  7F E3 FB 78 */	mr r3, r31
/* 804EF6A8  38 80 00 00 */	li r4, 0
/* 804EF6AC  38 A0 00 00 */	li r5, 0
/* 804EF6B0  38 C0 40 00 */	li r6, 0x4000
/* 804EF6B4  4B E8 2E 3D */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804EF6B8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804EF6BC  38 7C 00 28 */	addi r3, r28, 0x28
/* 804EF6C0  C0 24 65 68 */	lfs f1, lit_604@l(r4)  /* 0x80646568@l */
/* 804EF6C4  7C 64 1B 78 */	mr r4, r3
/* 804EF6C8  A8 BC 00 DE */	lha r5, 0xde(r28)
/* 804EF6CC  7F E7 FB 78 */	mr r7, r31
/* 804EF6D0  38 C0 00 00 */	li r6, 0
/* 804EF6D4  39 00 00 01 */	li r8, 1
/* 804EF6D8  4B E8 2E 41 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804EF6DC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EF6E0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EF6E4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EF6E8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EF6EC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EF6F0  3C 60 80 65 */	lis r3, lit_9485@ha /* 0x806484C8@ha */
/* 804EF6F4  C0 83 84 C8 */	lfs f4, lit_9485@l(r3)  /* 0x806484C8@l */
/* 804EF6F8  7F 83 E3 78 */	mr r3, r28
/* 804EF6FC  FC 40 08 90 */	fmr f2, f1
/* 804EF700  7F A4 EB 78 */	mr r4, r29
/* 804EF704  38 A0 00 25 */	li r5, 0x25
/* 804EF708  38 C0 00 25 */	li r6, 0x25
/* 804EF70C  38 E0 00 00 */	li r7, 0
/* 804EF710  39 00 00 00 */	li r8, 0
/* 804EF714  4B FE 70 FD */	bl Player_actor_InitAnimation_Base2
/* 804EF718  7F 83 E3 78 */	mr r3, r28
/* 804EF71C  7F A4 EB 78 */	mr r4, r29
/* 804EF720  4B FE 61 D9 */	bl Player_actor_setup_main_Base
/* 804EF724  7F 83 E3 78 */	mr r3, r28
/* 804EF728  7F C4 F3 78 */	mr r4, r30
/* 804EF72C  4B FE FE 91 */	bl Player_actor_sound_STANDUP
/* 804EF730  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF734  4B BA B7 E9 */	bl func_8009AF1C
/* 804EF738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EF73C  7C 08 03 A6 */	mtlr r0
/* 804EF740  38 21 00 20 */	addi r1, r1, 0x20
/* 804EF744  4E 80 00 20 */	blr 

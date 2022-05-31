lbl_804EF084:
/* 804EF084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EF088  7C 08 02 A6 */	mflr r0
/* 804EF08C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EF090  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF094  4B BA BE 41 */	bl func_8009AED4
/* 804EF098  7C 7D 1B 78 */	mr r29, r3
/* 804EF09C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EF0A0  80 1D 0D 70 */	lwz r0, 0xd70(r29)
/* 804EF0A4  7C 9E 23 78 */	mr r30, r4
/* 804EF0A8  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 804EF0AC  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 804EF0B0  90 1D 0D 18 */	stw r0, 0xd18(r29)
/* 804EF0B4  3B FD 01 74 */	addi r31, r29, 0x174
/* 804EF0B8  C0 43 66 74 */	lfs f2, lit_801@l(r3)  /* 0x80646674@l */
/* 804EF0BC  FC 60 08 90 */	fmr f3, f1
/* 804EF0C0  A8 1D 0D 60 */	lha r0, 0xd60(r29)
/* 804EF0C4  7F E3 FB 78 */	mr r3, r31
/* 804EF0C8  38 80 00 00 */	li r4, 0
/* 804EF0CC  38 A0 00 00 */	li r5, 0
/* 804EF0D0  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 804EF0D4  38 C0 40 00 */	li r6, 0x4000
/* 804EF0D8  4B E8 34 19 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804EF0DC  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 804EF0E0  A8 BD 00 DE */	lha r5, 0xde(r29)
/* 804EF0E4  C0 23 7E 60 */	lfs f1, lit_6257@l(r3)  /* 0x80647E60@l */
/* 804EF0E8  7F E7 FB 78 */	mr r7, r31
/* 804EF0EC  A8 DD 0D 60 */	lha r6, 0xd60(r29)
/* 804EF0F0  38 7D 00 28 */	addi r3, r29, 0x28
/* 804EF0F4  38 9D 0D 64 */	addi r4, r29, 0xd64
/* 804EF0F8  39 00 00 05 */	li r8, 5
/* 804EF0FC  4B E8 34 1D */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804EF100  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EF104  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EF108  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EF10C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EF110  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EF114  3C 60 80 65 */	lis r3, lit_9485@ha /* 0x806484C8@ha */
/* 804EF118  C0 83 84 C8 */	lfs f4, lit_9485@l(r3)  /* 0x806484C8@l */
/* 804EF11C  7F A3 EB 78 */	mr r3, r29
/* 804EF120  FC 40 08 90 */	fmr f2, f1
/* 804EF124  7F C4 F3 78 */	mr r4, r30
/* 804EF128  38 A0 00 23 */	li r5, 0x23
/* 804EF12C  38 C0 00 23 */	li r6, 0x23
/* 804EF130  38 E0 00 00 */	li r7, 0
/* 804EF134  39 00 00 00 */	li r8, 0
/* 804EF138  4B FE 76 D9 */	bl Player_actor_InitAnimation_Base2
/* 804EF13C  7F A3 EB 78 */	mr r3, r29
/* 804EF140  7F C4 F3 78 */	mr r4, r30
/* 804EF144  4B FE 67 B5 */	bl Player_actor_setup_main_Base
/* 804EF148  7F A3 EB 78 */	mr r3, r29
/* 804EF14C  4B FF 04 C9 */	bl Player_actor_sound_JUMP
/* 804EF150  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF154  4B BA BD CD */	bl func_8009AF20
/* 804EF158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EF15C  7C 08 03 A6 */	mtlr r0
/* 804EF160  38 21 00 20 */	addi r1, r1, 0x20
/* 804EF164  4E 80 00 20 */	blr 

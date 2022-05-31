lbl_804E96D4:
/* 804E96D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E96D8  7C 08 02 A6 */	mflr r0
/* 804E96DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E96E0  39 61 00 20 */	addi r11, r1, 0x20
/* 804E96E4  4B BB 17 ED */	bl func_8009AED0
/* 804E96E8  7C 7E 1B 78 */	mr r30, r3
/* 804E96EC  7C 9F 23 78 */	mr r31, r4
/* 804E96F0  80 03 0D 70 */	lwz r0, 0xd70(r3)
/* 804E96F4  3B 9E 01 74 */	addi r28, r30, 0x174
/* 804E96F8  3B A0 00 3B */	li r29, 0x3b
/* 804E96FC  2C 00 00 00 */	cmpwi r0, 0
/* 804E9700  40 82 00 08 */	bne lbl_804E9708
/* 804E9704  3B A0 00 0D */	li r29, 0xd
lbl_804E9708:
/* 804E9708  80 1E 0D 74 */	lwz r0, 0xd74(r30)
/* 804E970C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E9710  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 804E9714  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 804E9718  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 804E971C  38 A3 66 74 */	addi r5, r3, lit_801@l /* 0x80646674@l */
/* 804E9720  C0 24 00 00 */	lfs f1, 0(r4)
/* 804E9724  7F 83 E3 78 */	mr r3, r28
/* 804E9728  A8 1E 0D 60 */	lha r0, 0xd60(r30)
/* 804E972C  38 80 00 00 */	li r4, 0
/* 804E9730  FC 60 08 90 */	fmr f3, f1
/* 804E9734  C0 45 00 00 */	lfs f2, 0(r5)
/* 804E9738  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 804E973C  38 A0 00 00 */	li r5, 0
/* 804E9740  38 C0 40 00 */	li r6, 0x4000
/* 804E9744  4B E8 8D AD */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804E9748  3C 60 80 64 */	lis r3, lit_3573@ha /* 0x80647A44@ha */
/* 804E974C  A8 BE 00 DE */	lha r5, 0xde(r30)
/* 804E9750  C0 23 7A 44 */	lfs f1, lit_3573@l(r3)  /* 0x80647A44@l */
/* 804E9754  7F 87 E3 78 */	mr r7, r28
/* 804E9758  A8 DE 0D 60 */	lha r6, 0xd60(r30)
/* 804E975C  38 7E 00 28 */	addi r3, r30, 0x28
/* 804E9760  38 9E 0D 64 */	addi r4, r30, 0xd64
/* 804E9764  39 00 00 05 */	li r8, 5
/* 804E9768  4B E8 8D B1 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804E976C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E9770  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E9774  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E9778  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E977C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E9780  3C 60 80 65 */	lis r3, lit_8580@ha /* 0x806484A0@ha */
/* 804E9784  C0 83 84 A0 */	lfs f4, lit_8580@l(r3)  /* 0x806484A0@l */
/* 804E9788  7F C3 F3 78 */	mr r3, r30
/* 804E978C  FC 40 08 90 */	fmr f2, f1
/* 804E9790  7F E4 FB 78 */	mr r4, r31
/* 804E9794  7F A5 EB 78 */	mr r5, r29
/* 804E9798  7F A6 EB 78 */	mr r6, r29
/* 804E979C  38 E0 00 00 */	li r7, 0
/* 804E97A0  39 00 00 00 */	li r8, 0
/* 804E97A4  4B FE D0 6D */	bl Player_actor_InitAnimation_Base2
/* 804E97A8  7F C3 F3 78 */	mr r3, r30
/* 804E97AC  7F E4 FB 78 */	mr r4, r31
/* 804E97B0  4B FE C1 49 */	bl Player_actor_setup_main_Base
/* 804E97B4  38 60 00 0C */	li r3, 0xc
/* 804E97B8  4B E9 30 69 */	bl mBGMPsComp_scene_mode
/* 804E97BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E97C0  4B BB 17 5D */	bl func_8009AF1C
/* 804E97C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E97C8  7C 08 03 A6 */	mtlr r0
/* 804E97CC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E97D0  4E 80 00 20 */	blr 

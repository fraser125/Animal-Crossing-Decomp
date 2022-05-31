lbl_804EB700:
/* 804EB700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EB704  7C 08 02 A6 */	mflr r0
/* 804EB708  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EB70C  39 61 00 20 */	addi r11, r1, 0x20
/* 804EB710  4B BA F7 C1 */	bl func_8009AED0
/* 804EB714  3C C0 80 64 */	lis r6, lit_604@ha /* 0x80646568@ha */
/* 804EB718  3C A0 80 64 */	lis r5, lit_801@ha /* 0x80646674@ha */
/* 804EB71C  7C 7C 1B 78 */	mr r28, r3
/* 804EB720  3C 60 80 65 */	lis r3, lit_6387@ha /* 0x80648074@ha */
/* 804EB724  38 E6 65 68 */	addi r7, r6, lit_604@l /* 0x80646568@l */
/* 804EB728  38 C5 66 74 */	addi r6, r5, lit_801@l /* 0x80646674@l */
/* 804EB72C  38 A3 80 74 */	addi r5, r3, lit_6387@l /* 0x80648074@l */
/* 804EB730  3B FC 01 74 */	addi r31, r28, 0x174
/* 804EB734  7C 9D 23 78 */	mr r29, r4
/* 804EB738  83 DC 0D 60 */	lwz r30, 0xd60(r28)
/* 804EB73C  C0 27 00 00 */	lfs f1, 0(r7)
/* 804EB740  7F E3 FB 78 */	mr r3, r31
/* 804EB744  C0 46 00 00 */	lfs f2, 0(r6)
/* 804EB748  38 80 00 00 */	li r4, 0
/* 804EB74C  C0 65 00 00 */	lfs f3, 0(r5)
/* 804EB750  38 A0 00 00 */	li r5, 0
/* 804EB754  38 C0 40 00 */	li r6, 0x4000
/* 804EB758  4B E8 6D 99 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804EB75C  3C 80 80 64 */	lis r4, lit_6257@ha /* 0x80647E60@ha */
/* 804EB760  38 7C 00 28 */	addi r3, r28, 0x28
/* 804EB764  C0 24 7E 60 */	lfs f1, lit_6257@l(r4)  /* 0x80647E60@l */
/* 804EB768  7C 64 1B 78 */	mr r4, r3
/* 804EB76C  A8 BC 00 DE */	lha r5, 0xde(r28)
/* 804EB770  7F E7 FB 78 */	mr r7, r31
/* 804EB774  38 C0 00 00 */	li r6, 0
/* 804EB778  39 00 00 01 */	li r8, 1
/* 804EB77C  4B E8 6D 9D */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804EB780  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EB784  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EB788  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EB78C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EB790  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EB794  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EB798  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804EB79C  7F 83 E3 78 */	mr r3, r28
/* 804EB7A0  FC 40 08 90 */	fmr f2, f1
/* 804EB7A4  7F A4 EB 78 */	mr r4, r29
/* 804EB7A8  7F C5 F3 78 */	mr r5, r30
/* 804EB7AC  7F C6 F3 78 */	mr r6, r30
/* 804EB7B0  38 E0 00 00 */	li r7, 0
/* 804EB7B4  4B FE AF 45 */	bl Player_actor_InitAnimation_Base1
/* 804EB7B8  7F 83 E3 78 */	mr r3, r28
/* 804EB7BC  7F A4 EB 78 */	mr r4, r29
/* 804EB7C0  4B FE A1 39 */	bl Player_actor_setup_main_Base
/* 804EB7C4  39 61 00 20 */	addi r11, r1, 0x20
/* 804EB7C8  4B BA F7 55 */	bl func_8009AF1C
/* 804EB7CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EB7D0  7C 08 03 A6 */	mtlr r0
/* 804EB7D4  38 21 00 20 */	addi r1, r1, 0x20
/* 804EB7D8  4E 80 00 20 */	blr 

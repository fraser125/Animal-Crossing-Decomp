lbl_804EA650:
/* 804EA650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EA654  7C 08 02 A6 */	mflr r0
/* 804EA658  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EA65C  39 61 00 20 */	addi r11, r1, 0x20
/* 804EA660  4B BB 08 75 */	bl func_8009AED4
/* 804EA664  80 03 0D 60 */	lwz r0, 0xd60(r3)
/* 804EA668  7C 7F 1B 78 */	mr r31, r3
/* 804EA66C  3C A0 80 64 */	lis r5, lit_801@ha /* 0x80646674@ha */
/* 804EA670  3C 60 80 65 */	lis r3, lit_6387@ha /* 0x80648074@ha */
/* 804EA674  90 1F 0D 18 */	stw r0, 0xd18(r31)
/* 804EA678  39 05 66 74 */	addi r8, r5, lit_801@l /* 0x80646674@l */
/* 804EA67C  3C C0 80 64 */	lis r6, lit_604@ha /* 0x80646568@ha */
/* 804EA680  38 E3 80 74 */	addi r7, r3, lit_6387@l /* 0x80648074@l */
/* 804EA684  A8 1F 0D 64 */	lha r0, 0xd64(r31)
/* 804EA688  3B DF 01 74 */	addi r30, r31, 0x174
/* 804EA68C  C0 1F 0D 68 */	lfs f0, 0xd68(r31)
/* 804EA690  7C 9D 23 78 */	mr r29, r4
/* 804EA694  C0 9F 0D 70 */	lfs f4, 0xd70(r31)
/* 804EA698  7F C3 F3 78 */	mr r3, r30
/* 804EA69C  C0 26 65 68 */	lfs f1, lit_604@l(r6)  /* 0x80646568@l */
/* 804EA6A0  38 80 00 00 */	li r4, 0
/* 804EA6A4  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804EA6A8  38 A0 00 00 */	li r5, 0
/* 804EA6AC  C0 48 00 00 */	lfs f2, 0(r8)
/* 804EA6B0  38 C0 40 00 */	li r6, 0x4000
/* 804EA6B4  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 804EA6B8  C0 67 00 00 */	lfs f3, 0(r7)
/* 804EA6BC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804EA6C0  D0 9F 00 30 */	stfs f4, 0x30(r31)
/* 804EA6C4  4B E8 7E 2D */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804EA6C8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804EA6CC  38 7F 00 28 */	addi r3, r31, 0x28
/* 804EA6D0  C0 24 65 68 */	lfs f1, lit_604@l(r4)  /* 0x80646568@l */
/* 804EA6D4  7C 64 1B 78 */	mr r4, r3
/* 804EA6D8  A8 BF 00 DE */	lha r5, 0xde(r31)
/* 804EA6DC  7F C7 F3 78 */	mr r7, r30
/* 804EA6E0  38 C0 00 00 */	li r6, 0
/* 804EA6E4  39 00 00 01 */	li r8, 1
/* 804EA6E8  4B E8 7E 31 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804EA6EC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EA6F0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EA6F4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EA6F8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EA6FC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EA700  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EA704  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804EA708  7F E3 FB 78 */	mr r3, r31
/* 804EA70C  FC 40 08 90 */	fmr f2, f1
/* 804EA710  7F A4 EB 78 */	mr r4, r29
/* 804EA714  38 A0 00 04 */	li r5, 4
/* 804EA718  38 C0 00 04 */	li r6, 4
/* 804EA71C  38 E0 00 00 */	li r7, 0
/* 804EA720  39 00 00 00 */	li r8, 0
/* 804EA724  4B FE C0 ED */	bl Player_actor_InitAnimation_Base2
/* 804EA728  7F E3 FB 78 */	mr r3, r31
/* 804EA72C  7F A4 EB 78 */	mr r4, r29
/* 804EA730  4B FE B1 C9 */	bl Player_actor_setup_main_Base
/* 804EA734  39 61 00 20 */	addi r11, r1, 0x20
/* 804EA738  4B BB 07 E9 */	bl func_8009AF20
/* 804EA73C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EA740  7C 08 03 A6 */	mtlr r0
/* 804EA744  38 21 00 20 */	addi r1, r1, 0x20
/* 804EA748  4E 80 00 20 */	blr 

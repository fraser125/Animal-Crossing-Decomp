lbl_804EAA80:
/* 804EAA80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EAA84  7C 08 02 A6 */	mflr r0
/* 804EAA88  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EAA8C  39 61 00 20 */	addi r11, r1, 0x20
/* 804EAA90  4B BB 04 45 */	bl func_8009AED4
/* 804EAA94  7C 7E 1B 78 */	mr r30, r3
/* 804EAA98  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EAA9C  80 1E 0D 60 */	lwz r0, 0xd60(r30)
/* 804EAAA0  3C A0 80 64 */	lis r5, lit_801@ha /* 0x80646674@ha */
/* 804EAAA4  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 804EAAA8  38 C5 66 74 */	addi r6, r5, lit_801@l /* 0x80646674@l */
/* 804EAAAC  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 804EAAB0  3C 60 80 65 */	lis r3, lit_6387@ha /* 0x80648074@ha */
/* 804EAAB4  38 A3 80 74 */	addi r5, r3, lit_6387@l /* 0x80648074@l */
/* 804EAAB8  3B BE 01 74 */	addi r29, r30, 0x174
/* 804EAABC  80 FE 0D 74 */	lwz r7, 0xd74(r30)
/* 804EAAC0  7C 9F 23 78 */	mr r31, r4
/* 804EAAC4  80 1E 0D 78 */	lwz r0, 0xd78(r30)
/* 804EAAC8  7F A3 EB 78 */	mr r3, r29
/* 804EAACC  C0 46 00 00 */	lfs f2, 0(r6)
/* 804EAAD0  38 80 00 00 */	li r4, 0
/* 804EAAD4  90 FE 0D 1C */	stw r7, 0xd1c(r30)
/* 804EAAD8  38 C0 40 00 */	li r6, 0x4000
/* 804EAADC  C0 65 00 00 */	lfs f3, 0(r5)
/* 804EAAE0  38 A0 00 00 */	li r5, 0
/* 804EAAE4  90 1E 0D 20 */	stw r0, 0xd20(r30)
/* 804EAAE8  80 1E 0D 7C */	lwz r0, 0xd7c(r30)
/* 804EAAEC  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 804EAAF0  80 FE 0D 80 */	lwz r7, 0xd80(r30)
/* 804EAAF4  80 1E 0D 84 */	lwz r0, 0xd84(r30)
/* 804EAAF8  90 FE 0D 28 */	stw r7, 0xd28(r30)
/* 804EAAFC  90 1E 0D 2C */	stw r0, 0xd2c(r30)
/* 804EAB00  80 1E 0D 88 */	lwz r0, 0xd88(r30)
/* 804EAB04  90 1E 0D 30 */	stw r0, 0xd30(r30)
/* 804EAB08  D0 3E 0D 34 */	stfs f1, 0xd34(r30)
/* 804EAB0C  A8 1E 0D 64 */	lha r0, 0xd64(r30)
/* 804EAB10  C0 1E 0D 68 */	lfs f0, 0xd68(r30)
/* 804EAB14  C0 9E 0D 70 */	lfs f4, 0xd70(r30)
/* 804EAB18  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 804EAB1C  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 804EAB20  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 804EAB24  D0 9E 00 30 */	stfs f4, 0x30(r30)
/* 804EAB28  4B E8 79 C9 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804EAB2C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804EAB30  38 7E 00 28 */	addi r3, r30, 0x28
/* 804EAB34  C0 24 65 68 */	lfs f1, lit_604@l(r4)  /* 0x80646568@l */
/* 804EAB38  7C 64 1B 78 */	mr r4, r3
/* 804EAB3C  A8 BE 00 DE */	lha r5, 0xde(r30)
/* 804EAB40  7F A7 EB 78 */	mr r7, r29
/* 804EAB44  38 C0 00 00 */	li r6, 0
/* 804EAB48  39 00 00 01 */	li r8, 1
/* 804EAB4C  4B E8 79 CD */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804EAB50  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EAB54  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EAB58  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EAB5C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EAB60  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EAB64  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EAB68  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804EAB6C  7F C3 F3 78 */	mr r3, r30
/* 804EAB70  FC 40 08 90 */	fmr f2, f1
/* 804EAB74  7F E4 FB 78 */	mr r4, r31
/* 804EAB78  38 A0 00 05 */	li r5, 5
/* 804EAB7C  38 C0 00 05 */	li r6, 5
/* 804EAB80  38 E0 00 00 */	li r7, 0
/* 804EAB84  39 00 00 00 */	li r8, 0
/* 804EAB88  4B FE BC 89 */	bl Player_actor_InitAnimation_Base2
/* 804EAB8C  7F C3 F3 78 */	mr r3, r30
/* 804EAB90  7F E4 FB 78 */	mr r4, r31
/* 804EAB94  4B FE AD 65 */	bl Player_actor_setup_main_Base
/* 804EAB98  39 61 00 20 */	addi r11, r1, 0x20
/* 804EAB9C  4B BB 03 85 */	bl func_8009AF20
/* 804EABA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EABA4  7C 08 03 A6 */	mtlr r0
/* 804EABA8  38 21 00 20 */	addi r1, r1, 0x20
/* 804EABAC  4E 80 00 20 */	blr 

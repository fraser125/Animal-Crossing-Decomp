lbl_804EBE60:
/* 804EBE60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EBE64  7C 08 02 A6 */	mflr r0
/* 804EBE68  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EBE6C  39 61 00 20 */	addi r11, r1, 0x20
/* 804EBE70  4B BA F0 61 */	bl func_8009AED0
/* 804EBE74  7C 7E 1B 78 */	mr r30, r3
/* 804EBE78  7C 9F 23 78 */	mr r31, r4
/* 804EBE7C  80 63 0D 60 */	lwz r3, 0xd60(r3)
/* 804EBE80  3B BE 01 74 */	addi r29, r30, 0x174
/* 804EBE84  A8 9E 0D 64 */	lha r4, 0xd64(r30)
/* 804EBE88  4B FF FF 2D */	bl Player_actor_Get_BasicPlayerAnimeIndex_Lie_bed
/* 804EBE8C  80 1E 0D 74 */	lwz r0, 0xd74(r30)
/* 804EBE90  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804EBE94  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804EBE98  3C 80 80 64 */	lis r4, lit_801@ha /* 0x80646674@ha */
/* 804EBE9C  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 804EBEA0  7C 7C 1B 78 */	mr r28, r3
/* 804EBEA4  C0 44 66 74 */	lfs f2, lit_801@l(r4)  /* 0x80646674@l */
/* 804EBEA8  FC 60 08 90 */	fmr f3, f1
/* 804EBEAC  A8 1E 0D 64 */	lha r0, 0xd64(r30)
/* 804EBEB0  7F A3 EB 78 */	mr r3, r29
/* 804EBEB4  38 80 00 00 */	li r4, 0
/* 804EBEB8  38 A0 00 00 */	li r5, 0
/* 804EBEBC  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 804EBEC0  38 C0 40 00 */	li r6, 0x4000
/* 804EBEC4  4B E8 66 2D */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804EBEC8  3C 60 80 65 */	lis r3, lit_8209@ha /* 0x80648438@ha */
/* 804EBECC  A8 BE 00 DE */	lha r5, 0xde(r30)
/* 804EBED0  C0 23 84 38 */	lfs f1, lit_8209@l(r3)  /* 0x80648438@l */
/* 804EBED4  7F A7 EB 78 */	mr r7, r29
/* 804EBED8  A8 DE 0D 64 */	lha r6, 0xd64(r30)
/* 804EBEDC  38 7E 00 28 */	addi r3, r30, 0x28
/* 804EBEE0  38 9E 0D 68 */	addi r4, r30, 0xd68
/* 804EBEE4  39 00 00 03 */	li r8, 3
/* 804EBEE8  4B E8 66 31 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804EBEEC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EBEF0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EBEF4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EBEF8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EBEFC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EBF00  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EBF04  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804EBF08  7F C3 F3 78 */	mr r3, r30
/* 804EBF0C  FC 40 08 90 */	fmr f2, f1
/* 804EBF10  7F E4 FB 78 */	mr r4, r31
/* 804EBF14  7F 85 E3 78 */	mr r5, r28
/* 804EBF18  7F 86 E3 78 */	mr r6, r28
/* 804EBF1C  38 E0 00 00 */	li r7, 0
/* 804EBF20  39 00 00 00 */	li r8, 0
/* 804EBF24  4B FE A8 ED */	bl Player_actor_InitAnimation_Base2
/* 804EBF28  7F C3 F3 78 */	mr r3, r30
/* 804EBF2C  7F E4 FB 78 */	mr r4, r31
/* 804EBF30  4B FE 99 C9 */	bl Player_actor_setup_main_Base
/* 804EBF34  7F C3 F3 78 */	mr r3, r30
/* 804EBF38  4B FF 36 DD */	bl Player_actor_sound_JUMP
/* 804EBF3C  39 61 00 20 */	addi r11, r1, 0x20
/* 804EBF40  4B BA EF DD */	bl func_8009AF1C
/* 804EBF44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EBF48  7C 08 03 A6 */	mtlr r0
/* 804EBF4C  38 21 00 20 */	addi r1, r1, 0x20
/* 804EBF50  4E 80 00 20 */	blr 

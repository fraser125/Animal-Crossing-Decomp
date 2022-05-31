lbl_804ECEB4:
/* 804ECEB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804ECEB8  7C 08 02 A6 */	mflr r0
/* 804ECEBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ECEC0  39 61 00 20 */	addi r11, r1, 0x20
/* 804ECEC4  4B BA E0 0D */	bl func_8009AED0
/* 804ECEC8  7C 7C 1B 78 */	mr r28, r3
/* 804ECECC  7C 9D 23 78 */	mr r29, r4
/* 804ECED0  80 63 0D 60 */	lwz r3, 0xd60(r3)
/* 804ECED4  3B FC 01 74 */	addi r31, r28, 0x174
/* 804ECED8  A8 9C 00 DE */	lha r4, 0xde(r28)
/* 804ECEDC  4B FF FF 2D */	bl Player_actor_Get_BasicPlayerAnimeIndex_Standup_bed
/* 804ECEE0  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804ECEE4  7C 7E 1B 78 */	mr r30, r3
/* 804ECEE8  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 804ECEEC  7F E3 FB 78 */	mr r3, r31
/* 804ECEF0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804ECEF4  3C 80 80 64 */	lis r4, lit_801@ha /* 0x80646674@ha */
/* 804ECEF8  C0 44 66 74 */	lfs f2, lit_801@l(r4)  /* 0x80646674@l */
/* 804ECEFC  38 80 00 00 */	li r4, 0
/* 804ECF00  FC 60 08 90 */	fmr f3, f1
/* 804ECF04  38 A0 00 00 */	li r5, 0
/* 804ECF08  38 C0 40 00 */	li r6, 0x4000
/* 804ECF0C  4B E8 55 E5 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804ECF10  3C 60 80 65 */	lis r3, lit_7572@ha /* 0x80648360@ha */
/* 804ECF14  A8 BC 00 DE */	lha r5, 0xde(r28)
/* 804ECF18  38 83 83 60 */	addi r4, r3, lit_7572@l /* 0x80648360@l */
/* 804ECF1C  7F E7 FB 78 */	mr r7, r31
/* 804ECF20  38 7C 00 28 */	addi r3, r28, 0x28
/* 804ECF24  C0 24 00 00 */	lfs f1, 0(r4)
/* 804ECF28  7C 64 1B 78 */	mr r4, r3
/* 804ECF2C  7C A6 2B 78 */	mr r6, r5
/* 804ECF30  39 00 00 03 */	li r8, 3
/* 804ECF34  4B E8 55 E5 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804ECF38  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804ECF3C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804ECF40  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804ECF44  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804ECF48  C0 25 00 00 */	lfs f1, 0(r5)
/* 804ECF4C  3C 60 80 65 */	lis r3, lit_9485@ha /* 0x806484C8@ha */
/* 804ECF50  C0 83 84 C8 */	lfs f4, lit_9485@l(r3)  /* 0x806484C8@l */
/* 804ECF54  7F 83 E3 78 */	mr r3, r28
/* 804ECF58  FC 40 08 90 */	fmr f2, f1
/* 804ECF5C  7F A4 EB 78 */	mr r4, r29
/* 804ECF60  7F C5 F3 78 */	mr r5, r30
/* 804ECF64  7F C6 F3 78 */	mr r6, r30
/* 804ECF68  38 E0 00 00 */	li r7, 0
/* 804ECF6C  39 00 00 00 */	li r8, 0
/* 804ECF70  4B FE 98 A1 */	bl Player_actor_InitAnimation_Base2
/* 804ECF74  7F 83 E3 78 */	mr r3, r28
/* 804ECF78  7F A4 EB 78 */	mr r4, r29
/* 804ECF7C  4B FE 89 7D */	bl Player_actor_setup_main_Base
/* 804ECF80  7F 83 E3 78 */	mr r3, r28
/* 804ECF84  4B FF 27 45 */	bl Player_actor_sound_BED_OUT
/* 804ECF88  39 61 00 20 */	addi r11, r1, 0x20
/* 804ECF8C  4B BA DF 91 */	bl func_8009AF1C
/* 804ECF90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804ECF94  7C 08 03 A6 */	mtlr r0
/* 804ECF98  38 21 00 20 */	addi r1, r1, 0x20
/* 804ECF9C  4E 80 00 20 */	blr 

lbl_804EC9D4:
/* 804EC9D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EC9D8  7C 08 02 A6 */	mflr r0
/* 804EC9DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EC9E0  39 61 00 20 */	addi r11, r1, 0x20
/* 804EC9E4  4B BA E4 ED */	bl func_8009AED0
/* 804EC9E8  7C 7C 1B 78 */	mr r28, r3
/* 804EC9EC  7C 9D 23 78 */	mr r29, r4
/* 804EC9F0  80 63 0D 60 */	lwz r3, 0xd60(r3)
/* 804EC9F4  3B FC 01 74 */	addi r31, r28, 0x174
/* 804EC9F8  A8 9C 00 DE */	lha r4, 0xde(r28)
/* 804EC9FC  4B FF FF 2D */	bl Player_actor_Get_BasicPlayerAnimeIndex_Roll_bed
/* 804ECA00  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804ECA04  7C 7E 1B 78 */	mr r30, r3
/* 804ECA08  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 804ECA0C  7F E3 FB 78 */	mr r3, r31
/* 804ECA10  C0 25 00 00 */	lfs f1, 0(r5)
/* 804ECA14  3C 80 80 64 */	lis r4, lit_801@ha /* 0x80646674@ha */
/* 804ECA18  C0 44 66 74 */	lfs f2, lit_801@l(r4)  /* 0x80646674@l */
/* 804ECA1C  38 80 00 00 */	li r4, 0
/* 804ECA20  FC 60 08 90 */	fmr f3, f1
/* 804ECA24  38 A0 00 00 */	li r5, 0
/* 804ECA28  38 C0 40 00 */	li r6, 0x4000
/* 804ECA2C  4B E8 5A C5 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804ECA30  3C 80 80 64 */	lis r4, lit_6257@ha /* 0x80647E60@ha */
/* 804ECA34  38 7C 00 28 */	addi r3, r28, 0x28
/* 804ECA38  C0 24 7E 60 */	lfs f1, lit_6257@l(r4)  /* 0x80647E60@l */
/* 804ECA3C  7C 64 1B 78 */	mr r4, r3
/* 804ECA40  A8 BC 00 DE */	lha r5, 0xde(r28)
/* 804ECA44  7F E7 FB 78 */	mr r7, r31
/* 804ECA48  38 C0 00 00 */	li r6, 0
/* 804ECA4C  39 00 00 01 */	li r8, 1
/* 804ECA50  4B E8 5A C9 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804ECA54  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804ECA58  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804ECA5C  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804ECA60  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804ECA64  C0 25 00 00 */	lfs f1, 0(r5)
/* 804ECA68  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804ECA6C  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804ECA70  7F 83 E3 78 */	mr r3, r28
/* 804ECA74  FC 40 08 90 */	fmr f2, f1
/* 804ECA78  7F A4 EB 78 */	mr r4, r29
/* 804ECA7C  7F C5 F3 78 */	mr r5, r30
/* 804ECA80  7F C6 F3 78 */	mr r6, r30
/* 804ECA84  38 E0 00 00 */	li r7, 0
/* 804ECA88  39 00 00 00 */	li r8, 0
/* 804ECA8C  4B FE 9D 85 */	bl Player_actor_InitAnimation_Base2
/* 804ECA90  7F 83 E3 78 */	mr r3, r28
/* 804ECA94  7F A4 EB 78 */	mr r4, r29
/* 804ECA98  4B FE 8E 61 */	bl Player_actor_setup_main_Base
/* 804ECA9C  7F 83 E3 78 */	mr r3, r28
/* 804ECAA0  4B FF 2C 05 */	bl Player_actor_sound_BED_NEGAERI
/* 804ECAA4  39 61 00 20 */	addi r11, r1, 0x20
/* 804ECAA8  4B BA E4 75 */	bl func_8009AF1C
/* 804ECAAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804ECAB0  7C 08 03 A6 */	mtlr r0
/* 804ECAB4  38 21 00 20 */	addi r1, r1, 0x20
/* 804ECAB8  4E 80 00 20 */	blr 

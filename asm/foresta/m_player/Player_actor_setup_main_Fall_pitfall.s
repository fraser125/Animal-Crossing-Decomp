lbl_80501E10:
/* 80501E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80501E14  7C 08 02 A6 */	mflr r0
/* 80501E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80501E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80501E20  4B B9 90 B1 */	bl func_8009AED0
/* 80501E24  7C 7D 1B 78 */	mr r29, r3
/* 80501E28  7C 9E 23 78 */	mr r30, r4
/* 80501E2C  80 83 0D 08 */	lwz r4, 0xd08(r3)
/* 80501E30  3B 9D 01 74 */	addi r28, r29, 0x174
/* 80501E34  4B FD EB 71 */	bl Player_actor_Get_ItemKind
/* 80501E38  7C 63 07 74 */	extsb r3, r3
/* 80501E3C  4B FF FF A9 */	bl Player_actor_Get_PlayerAnimeIndex_fromItemKind_Fall_pitfall
/* 80501E40  7C 60 1B 78 */	mr r0, r3
/* 80501E44  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 80501E48  7C 1F 03 78 */	mr r31, r0
/* 80501E4C  C0 24 83 54 */	lfs f1, lit_7381@l(r4)  /* 0x80648354@l */
/* 80501E50  7F A3 EB 78 */	mr r3, r29
/* 80501E54  38 A1 00 0C */	addi r5, r1, 0xc
/* 80501E58  7F E4 FB 78 */	mr r4, r31
/* 80501E5C  38 C1 00 08 */	addi r6, r1, 8
/* 80501E60  4B FD 81 01 */	bl Player_actor_SetupItem_Base1
/* 80501E64  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80501E68  3C 80 80 64 */	lis r4, lit_801@ha /* 0x80646674@ha */
/* 80501E6C  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 80501E70  C0 44 66 74 */	lfs f2, lit_801@l(r4)  /* 0x80646674@l */
/* 80501E74  C0 25 00 00 */	lfs f1, 0(r5)
/* 80501E78  7F 83 E3 78 */	mr r3, r28
/* 80501E7C  38 80 00 00 */	li r4, 0
/* 80501E80  38 A0 00 00 */	li r5, 0
/* 80501E84  FC 60 08 90 */	fmr f3, f1
/* 80501E88  38 C0 40 00 */	li r6, 0x4000
/* 80501E8C  4B E7 06 65 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 80501E90  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 80501E94  A8 BD 00 DE */	lha r5, 0xde(r29)
/* 80501E98  38 83 7E 60 */	addi r4, r3, lit_6257@l /* 0x80647E60@l */
/* 80501E9C  7F 87 E3 78 */	mr r7, r28
/* 80501EA0  38 7D 00 28 */	addi r3, r29, 0x28
/* 80501EA4  C0 24 00 00 */	lfs f1, 0(r4)
/* 80501EA8  7C 64 1B 78 */	mr r4, r3
/* 80501EAC  7C A6 2B 78 */	mr r6, r5
/* 80501EB0  39 00 00 03 */	li r8, 3
/* 80501EB4  4B E7 06 65 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 80501EB8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80501EBC  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80501EC0  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80501EC4  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80501EC8  C0 25 00 00 */	lfs f1, 0(r5)
/* 80501ECC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80501ED0  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80501ED4  7F A3 EB 78 */	mr r3, r29
/* 80501ED8  FC 40 08 90 */	fmr f2, f1
/* 80501EDC  7F C4 F3 78 */	mr r4, r30
/* 80501EE0  7F E5 FB 78 */	mr r5, r31
/* 80501EE4  7F E6 FB 78 */	mr r6, r31
/* 80501EE8  38 E0 00 00 */	li r7, 0
/* 80501EEC  39 00 00 00 */	li r8, 0
/* 80501EF0  4B FD 49 21 */	bl Player_actor_InitAnimation_Base2
/* 80501EF4  7F A3 EB 78 */	mr r3, r29
/* 80501EF8  7F C4 F3 78 */	mr r4, r30
/* 80501EFC  4B FD 39 FD */	bl Player_actor_setup_main_Base
/* 80501F00  38 60 20 00 */	li r3, 0x2000
/* 80501F04  4B EB 21 15 */	bl mISL_SetNowPlayerAction
/* 80501F08  39 61 00 20 */	addi r11, r1, 0x20
/* 80501F0C  4B B9 90 11 */	bl func_8009AF1C
/* 80501F10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80501F14  7C 08 03 A6 */	mtlr r0
/* 80501F18  38 21 00 20 */	addi r1, r1, 0x20
/* 80501F1C  4E 80 00 20 */	blr 

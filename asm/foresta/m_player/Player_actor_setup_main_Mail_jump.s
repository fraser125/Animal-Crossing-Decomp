lbl_8050143C:
/* 8050143C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80501440  7C 08 02 A6 */	mflr r0
/* 80501444  90 01 00 24 */	stw r0, 0x24(r1)
/* 80501448  39 61 00 20 */	addi r11, r1, 0x20
/* 8050144C  4B B9 9A 85 */	bl func_8009AED0
/* 80501450  3C A0 80 65 */	lis r5, lit_15135@ha /* 0x8064857C@ha */
/* 80501454  7C 7E 1B 78 */	mr r30, r3
/* 80501458  C0 25 85 7C */	lfs f1, lit_15135@l(r5)  /* 0x8064857C@l */
/* 8050145C  7C 9F 23 78 */	mr r31, r4
/* 80501460  3B BE 01 74 */	addi r29, r30, 0x174
/* 80501464  3B 9E 0D 60 */	addi r28, r30, 0xd60
/* 80501468  38 A1 00 0C */	addi r5, r1, 0xc
/* 8050146C  38 C1 00 08 */	addi r6, r1, 8
/* 80501470  38 80 00 54 */	li r4, 0x54
/* 80501474  4B FD 8A ED */	bl Player_actor_SetupItem_Base1
/* 80501478  80 01 00 08 */	lwz r0, 8(r1)
/* 8050147C  2C 00 00 00 */	cmpwi r0, 0
/* 80501480  41 82 00 0C */	beq lbl_8050148C
/* 80501484  38 00 00 03 */	li r0, 3
/* 80501488  90 01 00 08 */	stw r0, 8(r1)
lbl_8050148C:
/* 8050148C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80501490  3C 80 80 64 */	lis r4, lit_801@ha /* 0x80646674@ha */
/* 80501494  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 80501498  C0 44 66 74 */	lfs f2, lit_801@l(r4)  /* 0x80646674@l */
/* 8050149C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805014A0  7F A3 EB 78 */	mr r3, r29
/* 805014A4  38 80 00 00 */	li r4, 0
/* 805014A8  38 A0 00 00 */	li r5, 0
/* 805014AC  FC 60 08 90 */	fmr f3, f1
/* 805014B0  38 C0 40 00 */	li r6, 0x4000
/* 805014B4  4B E7 10 3D */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 805014B8  3C 60 80 64 */	lis r3, lit_4467@ha /* 0x80647B18@ha */
/* 805014BC  A8 BE 00 DE */	lha r5, 0xde(r30)
/* 805014C0  C0 23 7B 18 */	lfs f1, lit_4467@l(r3)  /* 0x80647B18@l */
/* 805014C4  7F 84 E3 78 */	mr r4, r28
/* 805014C8  A8 DC 00 0C */	lha r6, 0xc(r28)
/* 805014CC  7F A7 EB 78 */	mr r7, r29
/* 805014D0  38 7E 00 28 */	addi r3, r30, 0x28
/* 805014D4  39 00 00 05 */	li r8, 5
/* 805014D8  4B E7 10 41 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 805014DC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 805014E0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 805014E4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 805014E8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 805014EC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805014F0  3C 60 80 65 */	lis r3, lit_15135@ha /* 0x8064857C@ha */
/* 805014F4  C0 83 85 7C */	lfs f4, lit_15135@l(r3)  /* 0x8064857C@l */
/* 805014F8  7F C3 F3 78 */	mr r3, r30
/* 805014FC  FC 40 08 90 */	fmr f2, f1
/* 80501500  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80501504  81 01 00 08 */	lwz r8, 8(r1)
/* 80501508  7F E4 FB 78 */	mr r4, r31
/* 8050150C  38 A0 00 54 */	li r5, 0x54
/* 80501510  38 E0 00 00 */	li r7, 0
/* 80501514  4B FD 52 FD */	bl Player_actor_InitAnimation_Base2
/* 80501518  7F C3 F3 78 */	mr r3, r30
/* 8050151C  7F E4 FB 78 */	mr r4, r31
/* 80501520  4B FD 43 D9 */	bl Player_actor_setup_main_Base
/* 80501524  39 61 00 20 */	addi r11, r1, 0x20
/* 80501528  4B B9 99 F5 */	bl func_8009AF1C
/* 8050152C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80501530  7C 08 03 A6 */	mtlr r0
/* 80501534  38 21 00 20 */	addi r1, r1, 0x20
/* 80501538  4E 80 00 20 */	blr 

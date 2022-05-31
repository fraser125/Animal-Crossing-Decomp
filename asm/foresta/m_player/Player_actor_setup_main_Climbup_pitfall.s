lbl_805025BC:
/* 805025BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805025C0  7C 08 02 A6 */	mflr r0
/* 805025C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805025C8  39 61 00 50 */	addi r11, r1, 0x50
/* 805025CC  4B B9 89 01 */	bl func_8009AECC
/* 805025D0  7C 7C 1B 78 */	mr r28, r3
/* 805025D4  7C 9D 23 78 */	mr r29, r4
/* 805025D8  80 83 0D 08 */	lwz r4, 0xd08(r3)
/* 805025DC  3B FC 01 74 */	addi r31, r28, 0x174
/* 805025E0  4B FD E3 C5 */	bl Player_actor_Get_ItemKind
/* 805025E4  7C 63 07 74 */	extsb r3, r3
/* 805025E8  4B FF FF A9 */	bl Player_actor_Get_PlayerAnimeIndex_fromItemKind_Climbup_pitfall
/* 805025EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805025F0  7C 7E 1B 78 */	mr r30, r3
/* 805025F4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805025F8  3F 64 00 02 */	addis r27, r4, 2
/* 805025FC  80 7B 60 80 */	lwz r3, 0x6080(r27)
/* 80502600  28 03 00 00 */	cmplwi r3, 0
/* 80502604  41 82 00 88 */	beq lbl_8050268C
/* 80502608  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8050260C  28 00 00 00 */	cmplwi r0, 0
/* 80502610  41 82 00 7C */	beq lbl_8050268C
/* 80502614  80 DC 00 28 */	lwz r6, 0x28(r28)
/* 80502618  38 61 00 0C */	addi r3, r1, 0xc
/* 8050261C  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 80502620  38 81 00 08 */	addi r4, r1, 8
/* 80502624  38 A1 00 24 */	addi r5, r1, 0x24
/* 80502628  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8050262C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80502630  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80502634  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80502638  4B EA 2D 31 */	bl mFI_Wpos2UtNum
/* 8050263C  2C 03 00 00 */	cmpwi r3, 0
/* 80502640  41 82 00 4C */	beq lbl_8050268C
/* 80502644  80 9C 00 28 */	lwz r4, 0x28(r28)
/* 80502648  38 61 00 18 */	addi r3, r1, 0x18
/* 8050264C  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 80502650  90 81 00 18 */	stw r4, 0x18(r1)
/* 80502654  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80502658  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 8050265C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80502660  4B EA 4D D1 */	bl mFI_GetUnitFG
/* 80502664  28 03 00 00 */	cmplwi r3, 0
/* 80502668  41 82 00 24 */	beq lbl_8050268C
/* 8050266C  80 9B 60 80 */	lwz r4, 0x6080(r27)
/* 80502670  38 C0 00 00 */	li r6, 0
/* 80502674  A0 63 00 00 */	lhz r3, 0(r3)
/* 80502678  81 84 00 20 */	lwz r12, 0x20(r4)
/* 8050267C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80502680  80 A1 00 08 */	lwz r5, 8(r1)
/* 80502684  7D 89 03 A6 */	mtctr r12
/* 80502688  4E 80 04 21 */	bctrl 
lbl_8050268C:
/* 8050268C  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 80502690  7F 83 E3 78 */	mr r3, r28
/* 80502694  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 80502698  7F C4 F3 78 */	mr r4, r30
/* 8050269C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805026A0  38 A1 00 14 */	addi r5, r1, 0x14
/* 805026A4  38 C1 00 10 */	addi r6, r1, 0x10
/* 805026A8  4B FD 78 B9 */	bl Player_actor_SetupItem_Base1
/* 805026AC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 805026B0  3C 80 80 64 */	lis r4, lit_801@ha /* 0x80646674@ha */
/* 805026B4  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 805026B8  C0 44 66 74 */	lfs f2, lit_801@l(r4)  /* 0x80646674@l */
/* 805026BC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805026C0  7F E3 FB 78 */	mr r3, r31
/* 805026C4  38 80 00 00 */	li r4, 0
/* 805026C8  38 A0 00 00 */	li r5, 0
/* 805026CC  FC 60 08 90 */	fmr f3, f1
/* 805026D0  38 C0 40 00 */	li r6, 0x4000
/* 805026D4  4B E6 FE 1D */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 805026D8  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 805026DC  A8 BC 00 DE */	lha r5, 0xde(r28)
/* 805026E0  38 83 7E 60 */	addi r4, r3, lit_6257@l /* 0x80647E60@l */
/* 805026E4  7F E7 FB 78 */	mr r7, r31
/* 805026E8  38 7C 00 28 */	addi r3, r28, 0x28
/* 805026EC  C0 24 00 00 */	lfs f1, 0(r4)
/* 805026F0  7C 64 1B 78 */	mr r4, r3
/* 805026F4  7C A6 2B 78 */	mr r6, r5
/* 805026F8  39 00 00 03 */	li r8, 3
/* 805026FC  4B E6 FE 1D */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 80502700  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80502704  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 80502708  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 8050270C  C0 84 83 54 */	lfs f4, lit_7381@l(r4)  /* 0x80648354@l */
/* 80502710  C0 25 00 00 */	lfs f1, 0(r5)
/* 80502714  7F 83 E3 78 */	mr r3, r28
/* 80502718  7F A4 EB 78 */	mr r4, r29
/* 8050271C  7F C5 F3 78 */	mr r5, r30
/* 80502720  FC 40 08 90 */	fmr f2, f1
/* 80502724  7F C6 F3 78 */	mr r6, r30
/* 80502728  FC 60 08 90 */	fmr f3, f1
/* 8050272C  38 E0 00 00 */	li r7, 0
/* 80502730  39 00 00 00 */	li r8, 0
/* 80502734  4B FD 40 DD */	bl Player_actor_InitAnimation_Base2
/* 80502738  7F 83 E3 78 */	mr r3, r28
/* 8050273C  7F A4 EB 78 */	mr r4, r29
/* 80502740  4B FD 31 B9 */	bl Player_actor_setup_main_Base
/* 80502744  39 61 00 50 */	addi r11, r1, 0x50
/* 80502748  4B B9 87 D1 */	bl func_8009AF18
/* 8050274C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80502750  7C 08 03 A6 */	mtlr r0
/* 80502754  38 21 00 50 */	addi r1, r1, 0x50
/* 80502758  4E 80 00 20 */	blr 

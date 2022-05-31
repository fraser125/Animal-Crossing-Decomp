lbl_804EB374:
/* 804EB374  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EB378  7C 08 02 A6 */	mflr r0
/* 804EB37C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EB380  39 61 00 20 */	addi r11, r1, 0x20
/* 804EB384  4B BA FB 4D */	bl func_8009AED0
/* 804EB388  7C 7F 1B 78 */	mr r31, r3
/* 804EB38C  3C C0 80 64 */	lis r6, lit_604@ha /* 0x80646568@ha */
/* 804EB390  83 A3 0D 70 */	lwz r29, 0xd70(r3)
/* 804EB394  3C A0 80 64 */	lis r5, lit_801@ha /* 0x80646674@ha */
/* 804EB398  A8 03 0D 60 */	lha r0, 0xd60(r3)
/* 804EB39C  3C 60 80 65 */	lis r3, lit_6387@ha /* 0x80648074@ha */
/* 804EB3A0  C0 1F 0D 64 */	lfs f0, 0xd64(r31)
/* 804EB3A4  38 E3 80 74 */	addi r7, r3, lit_6387@l /* 0x80648074@l */
/* 804EB3A8  C0 9F 0D 6C */	lfs f4, 0xd6c(r31)
/* 804EB3AC  3B DF 01 74 */	addi r30, r31, 0x174
/* 804EB3B0  C0 26 65 68 */	lfs f1, lit_604@l(r6)  /* 0x80646568@l */
/* 804EB3B4  7C 9C 23 78 */	mr r28, r4
/* 804EB3B8  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804EB3BC  7F C3 F3 78 */	mr r3, r30
/* 804EB3C0  C0 45 66 74 */	lfs f2, lit_801@l(r5)  /* 0x80646674@l */
/* 804EB3C4  38 80 00 00 */	li r4, 0
/* 804EB3C8  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 804EB3CC  38 A0 00 00 */	li r5, 0
/* 804EB3D0  C0 67 00 00 */	lfs f3, 0(r7)
/* 804EB3D4  38 C0 40 00 */	li r6, 0x4000
/* 804EB3D8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804EB3DC  D0 9F 00 30 */	stfs f4, 0x30(r31)
/* 804EB3E0  4B E8 71 11 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804EB3E4  3C 80 80 64 */	lis r4, lit_6257@ha /* 0x80647E60@ha */
/* 804EB3E8  38 7F 00 28 */	addi r3, r31, 0x28
/* 804EB3EC  C0 24 7E 60 */	lfs f1, lit_6257@l(r4)  /* 0x80647E60@l */
/* 804EB3F0  7C 64 1B 78 */	mr r4, r3
/* 804EB3F4  A8 BF 00 DE */	lha r5, 0xde(r31)
/* 804EB3F8  7F C7 F3 78 */	mr r7, r30
/* 804EB3FC  38 C0 00 00 */	li r6, 0
/* 804EB400  39 00 00 01 */	li r8, 1
/* 804EB404  4B E8 71 15 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804EB408  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EB40C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EB410  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EB414  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EB418  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EB41C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EB420  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804EB424  7F E3 FB 78 */	mr r3, r31
/* 804EB428  FC 40 08 90 */	fmr f2, f1
/* 804EB42C  7F 84 E3 78 */	mr r4, r28
/* 804EB430  7F A5 EB 78 */	mr r5, r29
/* 804EB434  7F A6 EB 78 */	mr r6, r29
/* 804EB438  38 E0 00 00 */	li r7, 0
/* 804EB43C  39 00 00 00 */	li r8, 0
/* 804EB440  4B FE B3 D1 */	bl Player_actor_InitAnimation_Base2
/* 804EB444  7F E3 FB 78 */	mr r3, r31
/* 804EB448  7F 84 E3 78 */	mr r4, r28
/* 804EB44C  4B FE A4 AD */	bl Player_actor_setup_main_Base
/* 804EB450  39 61 00 20 */	addi r11, r1, 0x20
/* 804EB454  4B BA FA C9 */	bl func_8009AF1C
/* 804EB458  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EB45C  7C 08 03 A6 */	mtlr r0
/* 804EB460  38 21 00 20 */	addi r1, r1, 0x20
/* 804EB464  4E 80 00 20 */	blr 

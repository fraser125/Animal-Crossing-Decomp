lbl_804FDAA8:
/* 804FDAA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FDAAC  7C 08 02 A6 */	mflr r0
/* 804FDAB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FDAB4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FDAB8  4B B9 D4 1D */	bl func_8009AED4
/* 804FDABC  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804FDAC0  7C 7D 1B 78 */	mr r29, r3
/* 804FDAC4  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804FDAC8  7C 9E 23 78 */	mr r30, r4
/* 804FDACC  A8 03 0D 60 */	lha r0, 0xd60(r3)
/* 804FDAD0  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 804FDAD4  38 A3 66 74 */	addi r5, r3, lit_801@l /* 0x80646674@l */
/* 804FDAD8  FC 60 08 90 */	fmr f3, f1
/* 804FDADC  3B FD 01 74 */	addi r31, r29, 0x174
/* 804FDAE0  C0 45 00 00 */	lfs f2, 0(r5)
/* 804FDAE4  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 804FDAE8  7F E3 FB 78 */	mr r3, r31
/* 804FDAEC  38 80 00 00 */	li r4, 0
/* 804FDAF0  38 A0 00 00 */	li r5, 0
/* 804FDAF4  38 C0 40 00 */	li r6, 0x4000
/* 804FDAF8  4B E7 49 F9 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804FDAFC  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 804FDB00  A8 BD 00 DE */	lha r5, 0xde(r29)
/* 804FDB04  C0 23 7E 60 */	lfs f1, lit_6257@l(r3)  /* 0x80647E60@l */
/* 804FDB08  7F E7 FB 78 */	mr r7, r31
/* 804FDB0C  A8 DD 0D 60 */	lha r6, 0xd60(r29)
/* 804FDB10  38 7D 00 28 */	addi r3, r29, 0x28
/* 804FDB14  38 9D 0D 64 */	addi r4, r29, 0xd64
/* 804FDB18  39 00 00 07 */	li r8, 7
/* 804FDB1C  4B E7 49 FD */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804FDB20  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FDB24  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FDB28  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FDB2C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FDB30  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FDB34  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FDB38  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FDB3C  7F A3 EB 78 */	mr r3, r29
/* 804FDB40  FC 40 08 90 */	fmr f2, f1
/* 804FDB44  7F C4 F3 78 */	mr r4, r30
/* 804FDB48  38 A0 00 2A */	li r5, 0x2a
/* 804FDB4C  38 C0 00 2A */	li r6, 0x2a
/* 804FDB50  38 E0 00 00 */	li r7, 0
/* 804FDB54  39 00 00 00 */	li r8, 0
/* 804FDB58  4B FD 8C B9 */	bl Player_actor_InitAnimation_Base2
/* 804FDB5C  7F A3 EB 78 */	mr r3, r29
/* 804FDB60  7F C4 F3 78 */	mr r4, r30
/* 804FDB64  4B FD 7D 95 */	bl Player_actor_setup_main_Base
/* 804FDB68  39 61 00 20 */	addi r11, r1, 0x20
/* 804FDB6C  4B B9 D3 B5 */	bl func_8009AF20
/* 804FDB70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FDB74  7C 08 03 A6 */	mtlr r0
/* 804FDB78  38 21 00 20 */	addi r1, r1, 0x20
/* 804FDB7C  4E 80 00 20 */	blr 

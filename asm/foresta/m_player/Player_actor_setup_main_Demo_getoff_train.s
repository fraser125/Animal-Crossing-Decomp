lbl_804FDF54:
/* 804FDF54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FDF58  7C 08 02 A6 */	mflr r0
/* 804FDF5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FDF60  39 61 00 20 */	addi r11, r1, 0x20
/* 804FDF64  4B B9 CF 71 */	bl func_8009AED4
/* 804FDF68  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804FDF6C  7C 7D 1B 78 */	mr r29, r3
/* 804FDF70  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804FDF74  7C 9E 23 78 */	mr r30, r4
/* 804FDF78  A8 03 0D 60 */	lha r0, 0xd60(r3)
/* 804FDF7C  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 804FDF80  38 A3 66 74 */	addi r5, r3, lit_801@l /* 0x80646674@l */
/* 804FDF84  FC 60 08 90 */	fmr f3, f1
/* 804FDF88  3B FD 01 74 */	addi r31, r29, 0x174
/* 804FDF8C  C0 45 00 00 */	lfs f2, 0(r5)
/* 804FDF90  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 804FDF94  7F E3 FB 78 */	mr r3, r31
/* 804FDF98  38 80 00 00 */	li r4, 0
/* 804FDF9C  38 A0 00 00 */	li r5, 0
/* 804FDFA0  38 C0 40 00 */	li r6, 0x4000
/* 804FDFA4  4B E7 45 4D */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804FDFA8  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 804FDFAC  A8 BD 00 DE */	lha r5, 0xde(r29)
/* 804FDFB0  C0 23 7E 60 */	lfs f1, lit_6257@l(r3)  /* 0x80647E60@l */
/* 804FDFB4  7F E7 FB 78 */	mr r7, r31
/* 804FDFB8  A8 DD 0D 60 */	lha r6, 0xd60(r29)
/* 804FDFBC  38 7D 00 28 */	addi r3, r29, 0x28
/* 804FDFC0  38 9D 0D 64 */	addi r4, r29, 0xd64
/* 804FDFC4  39 00 00 07 */	li r8, 7
/* 804FDFC8  4B E7 45 51 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804FDFCC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FDFD0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FDFD4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FDFD8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FDFDC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FDFE0  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FDFE4  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FDFE8  7F A3 EB 78 */	mr r3, r29
/* 804FDFEC  FC 40 08 90 */	fmr f2, f1
/* 804FDFF0  7F C4 F3 78 */	mr r4, r30
/* 804FDFF4  38 A0 00 32 */	li r5, 0x32
/* 804FDFF8  38 C0 00 32 */	li r6, 0x32
/* 804FDFFC  38 E0 00 00 */	li r7, 0
/* 804FE000  39 00 00 00 */	li r8, 0
/* 804FE004  4B FD 88 0D */	bl Player_actor_InitAnimation_Base2
/* 804FE008  7F A3 EB 78 */	mr r3, r29
/* 804FE00C  7F C4 F3 78 */	mr r4, r30
/* 804FE010  4B FD 78 E9 */	bl Player_actor_setup_main_Base
/* 804FE014  39 61 00 20 */	addi r11, r1, 0x20
/* 804FE018  4B B9 CF 09 */	bl func_8009AF20
/* 804FE01C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FE020  7C 08 03 A6 */	mtlr r0
/* 804FE024  38 21 00 20 */	addi r1, r1, 0x20
/* 804FE028  4E 80 00 20 */	blr 

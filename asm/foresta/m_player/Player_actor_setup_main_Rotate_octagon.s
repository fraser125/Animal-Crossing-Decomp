lbl_804FFF5C:
/* 804FFF5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FFF60  7C 08 02 A6 */	mflr r0
/* 804FFF64  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FFF68  39 61 00 20 */	addi r11, r1, 0x20
/* 804FFF6C  4B B9 AF 69 */	bl func_8009AED4
/* 804FFF70  7C 7D 1B 78 */	mr r29, r3
/* 804FFF74  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FFF78  80 1D 0D 60 */	lwz r0, 0xd60(r29)
/* 804FFF7C  7C 9E 23 78 */	mr r30, r4
/* 804FFF80  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 804FFF84  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 804FFF88  90 1D 0D 18 */	stw r0, 0xd18(r29)
/* 804FFF8C  3B FD 01 74 */	addi r31, r29, 0x174
/* 804FFF90  C0 43 66 74 */	lfs f2, lit_801@l(r3)  /* 0x80646674@l */
/* 804FFF94  FC 60 08 90 */	fmr f3, f1
/* 804FFF98  80 1D 0D 64 */	lwz r0, 0xd64(r29)
/* 804FFF9C  7F E3 FB 78 */	mr r3, r31
/* 804FFFA0  38 80 00 00 */	li r4, 0
/* 804FFFA4  38 A0 00 00 */	li r5, 0
/* 804FFFA8  90 1D 0D 1C */	stw r0, 0xd1c(r29)
/* 804FFFAC  38 C0 40 00 */	li r6, 0x4000
/* 804FFFB0  80 1D 0D 68 */	lwz r0, 0xd68(r29)
/* 804FFFB4  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 804FFFB8  4B E7 25 39 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 804FFFBC  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 804FFFC0  A8 BD 00 DE */	lha r5, 0xde(r29)
/* 804FFFC4  C0 23 7E 60 */	lfs f1, lit_6257@l(r3)  /* 0x80647E60@l */
/* 804FFFC8  7F E7 FB 78 */	mr r7, r31
/* 804FFFCC  A8 DD 0D 78 */	lha r6, 0xd78(r29)
/* 804FFFD0  38 7D 00 28 */	addi r3, r29, 0x28
/* 804FFFD4  38 9D 0D 6C */	addi r4, r29, 0xd6c
/* 804FFFD8  39 00 00 05 */	li r8, 5
/* 804FFFDC  4B E7 25 3D */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 804FFFE0  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FFFE4  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FFFE8  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FFFEC  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FFFF0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FFFF4  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FFFF8  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FFFFC  7F A3 EB 78 */	mr r3, r29
/* 80500000  FC 40 08 90 */	fmr f2, f1
/* 80500004  7F C4 F3 78 */	mr r4, r30
/* 80500008  38 A0 00 67 */	li r5, 0x67
/* 8050000C  38 C0 00 67 */	li r6, 0x67
/* 80500010  38 E0 00 00 */	li r7, 0
/* 80500014  39 00 00 00 */	li r8, 0
/* 80500018  4B FD 67 F9 */	bl Player_actor_InitAnimation_Base2
/* 8050001C  7F A3 EB 78 */	mr r3, r29
/* 80500020  7F C4 F3 78 */	mr r4, r30
/* 80500024  4B FD 58 D5 */	bl Player_actor_setup_main_Base
/* 80500028  39 61 00 20 */	addi r11, r1, 0x20
/* 8050002C  4B B9 AE F5 */	bl func_8009AF20
/* 80500030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80500034  7C 08 03 A6 */	mtlr r0
/* 80500038  38 21 00 20 */	addi r1, r1, 0x20
/* 8050003C  4E 80 00 20 */	blr 

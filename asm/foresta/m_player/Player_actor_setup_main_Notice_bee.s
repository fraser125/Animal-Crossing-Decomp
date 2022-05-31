lbl_80502E9C:
/* 80502E9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80502EA0  7C 08 02 A6 */	mflr r0
/* 80502EA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80502EA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80502EAC  4B B9 80 29 */	bl func_8009AED4
/* 80502EB0  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 80502EB4  7C 7E 1B 78 */	mr r30, r3
/* 80502EB8  38 C5 65 68 */	addi r6, r5, lit_604@l /* 0x80646568@l */
/* 80502EBC  7C 9F 23 78 */	mr r31, r4
/* 80502EC0  C0 06 00 00 */	lfs f0, 0(r6)
/* 80502EC4  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 80502EC8  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 80502ECC  38 00 00 00 */	li r0, 0
/* 80502ED0  D0 03 0D 18 */	stfs f0, 0xd18(r3)
/* 80502ED4  3B BE 01 74 */	addi r29, r30, 0x174
/* 80502ED8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80502EDC  38 C1 00 08 */	addi r6, r1, 8
/* 80502EE0  90 03 0D 1C */	stw r0, 0xd1c(r3)
/* 80502EE4  38 80 00 79 */	li r4, 0x79
/* 80502EE8  4B FD 70 79 */	bl Player_actor_SetupItem_Base1
/* 80502EEC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80502EF0  3C 80 80 64 */	lis r4, lit_801@ha /* 0x80646674@ha */
/* 80502EF4  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 80502EF8  C0 44 66 74 */	lfs f2, lit_801@l(r4)  /* 0x80646674@l */
/* 80502EFC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80502F00  7F A3 EB 78 */	mr r3, r29
/* 80502F04  38 80 00 00 */	li r4, 0
/* 80502F08  38 A0 00 00 */	li r5, 0
/* 80502F0C  FC 60 08 90 */	fmr f3, f1
/* 80502F10  38 C0 40 00 */	li r6, 0x4000
/* 80502F14  4B E6 F5 DD */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 80502F18  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 80502F1C  A8 BE 00 DE */	lha r5, 0xde(r30)
/* 80502F20  38 83 7E 60 */	addi r4, r3, lit_6257@l /* 0x80647E60@l */
/* 80502F24  7F A7 EB 78 */	mr r7, r29
/* 80502F28  38 7E 00 28 */	addi r3, r30, 0x28
/* 80502F2C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80502F30  7C 64 1B 78 */	mr r4, r3
/* 80502F34  7C A6 2B 78 */	mr r6, r5
/* 80502F38  39 00 00 04 */	li r8, 4
/* 80502F3C  4B E6 F5 DD */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 80502F40  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80502F44  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80502F48  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80502F4C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80502F50  C0 25 00 00 */	lfs f1, 0(r5)
/* 80502F54  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80502F58  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80502F5C  7F C3 F3 78 */	mr r3, r30
/* 80502F60  FC 40 08 90 */	fmr f2, f1
/* 80502F64  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80502F68  81 01 00 08 */	lwz r8, 8(r1)
/* 80502F6C  7F E4 FB 78 */	mr r4, r31
/* 80502F70  38 A0 00 79 */	li r5, 0x79
/* 80502F74  38 E0 00 00 */	li r7, 0
/* 80502F78  4B FD 38 99 */	bl Player_actor_InitAnimation_Base2
/* 80502F7C  7F C3 F3 78 */	mr r3, r30
/* 80502F80  7F E4 FB 78 */	mr r4, r31
/* 80502F84  4B FD 29 75 */	bl Player_actor_setup_main_Base
/* 80502F88  39 61 00 20 */	addi r11, r1, 0x20
/* 80502F8C  4B B9 7F 95 */	bl func_8009AF20
/* 80502F90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80502F94  7C 08 03 A6 */	mtlr r0
/* 80502F98  38 21 00 20 */	addi r1, r1, 0x20
/* 80502F9C  4E 80 00 20 */	blr 

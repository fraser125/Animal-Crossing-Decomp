lbl_80503E94:
/* 80503E94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80503E98  7C 08 02 A6 */	mflr r0
/* 80503E9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80503EA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80503EA4  4B B9 70 31 */	bl func_8009AED4
/* 80503EA8  7C 7E 1B 78 */	mr r30, r3
/* 80503EAC  38 00 00 09 */	li r0, 9
/* 80503EB0  7C 9F 23 78 */	mr r31, r4
/* 80503EB4  3B BE 01 74 */	addi r29, r30, 0x174
/* 80503EB8  38 BE 0D 14 */	addi r5, r30, 0xd14
/* 80503EBC  38 9E 0D 5C */	addi r4, r30, 0xd5c
/* 80503EC0  7C 09 03 A6 */	mtctr r0
lbl_80503EC4:
/* 80503EC4  80 64 00 04 */	lwz r3, 4(r4)
/* 80503EC8  84 04 00 08 */	lwzu r0, 8(r4)
/* 80503ECC  90 65 00 04 */	stw r3, 4(r5)
/* 80503ED0  94 05 00 08 */	stwu r0, 8(r5)
/* 80503ED4  42 00 FF F0 */	bdnz lbl_80503EC4
/* 80503ED8  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 80503EDC  7F C3 F3 78 */	mr r3, r30
/* 80503EE0  C0 24 83 54 */	lfs f1, lit_7381@l(r4)  /* 0x80648354@l */
/* 80503EE4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80503EE8  38 C1 00 08 */	addi r6, r1, 8
/* 80503EEC  38 80 00 75 */	li r4, 0x75
/* 80503EF0  4B FD 60 71 */	bl Player_actor_SetupItem_Base1
/* 80503EF4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80503EF8  3C 80 80 64 */	lis r4, lit_801@ha /* 0x80646674@ha */
/* 80503EFC  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 80503F00  C0 44 66 74 */	lfs f2, lit_801@l(r4)  /* 0x80646674@l */
/* 80503F04  C0 25 00 00 */	lfs f1, 0(r5)
/* 80503F08  7F A3 EB 78 */	mr r3, r29
/* 80503F0C  38 80 00 00 */	li r4, 0
/* 80503F10  38 A0 00 00 */	li r5, 0
/* 80503F14  FC 60 08 90 */	fmr f3, f1
/* 80503F18  38 C0 40 00 */	li r6, 0x4000
/* 80503F1C  4B E6 E5 D5 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 80503F20  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 80503F24  A8 BE 00 DE */	lha r5, 0xde(r30)
/* 80503F28  C0 23 7E 60 */	lfs f1, lit_6257@l(r3)  /* 0x80647E60@l */
/* 80503F2C  7F A7 EB 78 */	mr r7, r29
/* 80503F30  A8 DE 0D A0 */	lha r6, 0xda0(r30)
/* 80503F34  38 7E 00 28 */	addi r3, r30, 0x28
/* 80503F38  38 9E 0D 94 */	addi r4, r30, 0xd94
/* 80503F3C  39 00 00 05 */	li r8, 5
/* 80503F40  4B E6 E5 D9 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 80503F44  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80503F48  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80503F4C  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80503F50  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80503F54  C0 25 00 00 */	lfs f1, 0(r5)
/* 80503F58  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80503F5C  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80503F60  7F C3 F3 78 */	mr r3, r30
/* 80503F64  FC 40 08 90 */	fmr f2, f1
/* 80503F68  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80503F6C  81 01 00 08 */	lwz r8, 8(r1)
/* 80503F70  7F E4 FB 78 */	mr r4, r31
/* 80503F74  38 A0 00 75 */	li r5, 0x75
/* 80503F78  38 E0 00 00 */	li r7, 0
/* 80503F7C  4B FD 28 95 */	bl Player_actor_InitAnimation_Base2
/* 80503F80  7F C3 F3 78 */	mr r3, r30
/* 80503F84  7F E4 FB 78 */	mr r4, r31
/* 80503F88  4B FD 19 71 */	bl Player_actor_setup_main_Base
/* 80503F8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80503F90  4B B9 6F 91 */	bl func_8009AF20
/* 80503F94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80503F98  7C 08 03 A6 */	mtlr r0
/* 80503F9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80503FA0  4E 80 00 20 */	blr 

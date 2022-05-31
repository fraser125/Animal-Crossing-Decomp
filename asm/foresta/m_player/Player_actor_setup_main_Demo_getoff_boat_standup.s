lbl_80507B74:
/* 80507B74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80507B78  7C 08 02 A6 */	mflr r0
/* 80507B7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80507B80  39 61 00 30 */	addi r11, r1, 0x30
/* 80507B84  4B B9 33 51 */	bl func_8009AED4
/* 80507B88  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 80507B8C  3C A0 80 65 */	lis r5, lit_16728@ha /* 0x806485C4@ha */
/* 80507B90  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80507B94  7C 7D 1B 78 */	mr r29, r3
/* 80507B98  C0 25 85 C4 */	lfs f1, lit_16728@l(r5)  /* 0x806485C4@l */
/* 80507B9C  7C 9E 23 78 */	mr r30, r4
/* 80507BA0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80507BA4  3B FD 01 74 */	addi r31, r29, 0x174
/* 80507BA8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80507BAC  38 C1 00 08 */	addi r6, r1, 8
/* 80507BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507BB4  38 80 00 89 */	li r4, 0x89
/* 80507BB8  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80507BBC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80507BC0  4B FD 23 A1 */	bl Player_actor_SetupItem_Base1
/* 80507BC4  80 BD 0D 60 */	lwz r5, 0xd60(r29)
/* 80507BC8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80507BCC  80 1D 0D 64 */	lwz r0, 0xd64(r29)
/* 80507BD0  3C 80 80 65 */	lis r4, lit_9496@ha /* 0x806484CC@ha */
/* 80507BD4  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 80507BD8  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 80507BDC  90 BD 0D 18 */	stw r5, 0xd18(r29)
/* 80507BE0  38 A0 00 00 */	li r5, 0
/* 80507BE4  C0 04 84 CC */	lfs f0, lit_9496@l(r4)  /* 0x806484CC@l */
/* 80507BE8  FC 60 08 90 */	fmr f3, f1
/* 80507BEC  90 1D 0D 1C */	stw r0, 0xd1c(r29)
/* 80507BF0  38 80 00 00 */	li r4, 0
/* 80507BF4  C0 43 66 74 */	lfs f2, lit_801@l(r3)  /* 0x80646674@l */
/* 80507BF8  7F E3 FB 78 */	mr r3, r31
/* 80507BFC  80 1D 0D 68 */	lwz r0, 0xd68(r29)
/* 80507C00  38 C0 40 00 */	li r6, 0x4000
/* 80507C04  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 80507C08  A8 1D 0D 6C */	lha r0, 0xd6c(r29)
/* 80507C0C  B0 1D 0D 24 */	sth r0, 0xd24(r29)
/* 80507C10  A8 1D 12 48 */	lha r0, 0x1248(r29)
/* 80507C14  B0 1D 0D 26 */	sth r0, 0xd26(r29)
/* 80507C18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80507C1C  4B E6 A8 D5 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 80507C20  3C 60 80 64 */	lis r3, lit_1077@ha /* 0x80646A1C@ha */
/* 80507C24  A8 BD 00 DE */	lha r5, 0xde(r29)
/* 80507C28  C0 23 6A 1C */	lfs f1, lit_1077@l(r3)  /* 0x80646A1C@l */
/* 80507C2C  7F E7 FB 78 */	mr r7, r31
/* 80507C30  A8 DD 00 36 */	lha r6, 0x36(r29)
/* 80507C34  38 7D 00 28 */	addi r3, r29, 0x28
/* 80507C38  38 81 00 10 */	addi r4, r1, 0x10
/* 80507C3C  39 00 00 07 */	li r8, 7
/* 80507C40  4B E6 A8 D9 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 80507C44  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80507C48  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80507C4C  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80507C50  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80507C54  C0 25 00 00 */	lfs f1, 0(r5)
/* 80507C58  3C 60 80 65 */	lis r3, lit_16728@ha /* 0x806485C4@ha */
/* 80507C5C  C0 83 85 C4 */	lfs f4, lit_16728@l(r3)  /* 0x806485C4@l */
/* 80507C60  7F A3 EB 78 */	mr r3, r29
/* 80507C64  FC 40 08 90 */	fmr f2, f1
/* 80507C68  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80507C6C  81 01 00 08 */	lwz r8, 8(r1)
/* 80507C70  7F C4 F3 78 */	mr r4, r30
/* 80507C74  38 A0 00 89 */	li r5, 0x89
/* 80507C78  38 E0 00 00 */	li r7, 0
/* 80507C7C  4B FC EB 95 */	bl Player_actor_InitAnimation_Base2
/* 80507C80  7F A3 EB 78 */	mr r3, r29
/* 80507C84  7F C4 F3 78 */	mr r4, r30
/* 80507C88  4B FC DC 71 */	bl Player_actor_setup_main_Base
/* 80507C8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80507C90  4B B9 32 91 */	bl func_8009AF20
/* 80507C94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80507C98  7C 08 03 A6 */	mtlr r0
/* 80507C9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80507CA0  4E 80 00 20 */	blr 

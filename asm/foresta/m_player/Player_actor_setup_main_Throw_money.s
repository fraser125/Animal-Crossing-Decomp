lbl_805002D4:
/* 805002D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805002D8  7C 08 02 A6 */	mflr r0
/* 805002DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805002E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805002E4  4B B9 AB ED */	bl func_8009AED0
/* 805002E8  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 805002EC  7C 7C 1B 78 */	mr r28, r3
/* 805002F0  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 805002F4  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 805002F8  7C 9F 23 78 */	mr r31, r4
/* 805002FC  3B DC 01 74 */	addi r30, r28, 0x174
/* 80500300  FC 60 08 90 */	fmr f3, f1
/* 80500304  C0 43 66 74 */	lfs f2, lit_801@l(r3)  /* 0x80646674@l */
/* 80500308  7F C3 F3 78 */	mr r3, r30
/* 8050030C  3B BC 0D 60 */	addi r29, r28, 0xd60
/* 80500310  38 80 00 00 */	li r4, 0
/* 80500314  38 A0 00 00 */	li r5, 0
/* 80500318  38 C0 40 00 */	li r6, 0x4000
/* 8050031C  4B E7 21 D5 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 80500320  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 80500324  A8 BC 00 DE */	lha r5, 0xde(r28)
/* 80500328  C0 23 7E 60 */	lfs f1, lit_6257@l(r3)  /* 0x80647E60@l */
/* 8050032C  7F A4 EB 78 */	mr r4, r29
/* 80500330  A8 DD 00 0C */	lha r6, 0xc(r29)
/* 80500334  7F C7 F3 78 */	mr r7, r30
/* 80500338  38 7C 00 28 */	addi r3, r28, 0x28
/* 8050033C  39 00 00 05 */	li r8, 5
/* 80500340  4B E7 21 D9 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 80500344  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80500348  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 8050034C  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80500350  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80500354  C0 25 00 00 */	lfs f1, 0(r5)
/* 80500358  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 8050035C  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80500360  7F 83 E3 78 */	mr r3, r28
/* 80500364  FC 40 08 90 */	fmr f2, f1
/* 80500368  7F E4 FB 78 */	mr r4, r31
/* 8050036C  38 A0 00 69 */	li r5, 0x69
/* 80500370  38 C0 00 69 */	li r6, 0x69
/* 80500374  38 E0 00 00 */	li r7, 0
/* 80500378  39 00 00 00 */	li r8, 0
/* 8050037C  4B FD 64 95 */	bl Player_actor_InitAnimation_Base2
/* 80500380  7F 83 E3 78 */	mr r3, r28
/* 80500384  7F E4 FB 78 */	mr r4, r31
/* 80500388  4B FD 55 71 */	bl Player_actor_setup_main_Base
/* 8050038C  7F E3 FB 78 */	mr r3, r31
/* 80500390  38 80 00 01 */	li r4, 1
/* 80500394  4B E7 EE 19 */	bl Camera2_Check_main_index
/* 80500398  2C 03 00 00 */	cmpwi r3, 0
/* 8050039C  41 82 00 20 */	beq lbl_805003BC
/* 805003A0  C0 3F 1B D8 */	lfs f1, 0x1bd8(r31)
/* 805003A4  7F E3 FB 78 */	mr r3, r31
/* 805003A8  38 9F 1B 94 */	addi r4, r31, 0x1b94
/* 805003AC  38 BF 1B C0 */	addi r5, r31, 0x1bc0
/* 805003B0  38 C0 00 00 */	li r6, 0
/* 805003B4  38 E0 00 09 */	li r7, 9
/* 805003B8  4B E8 16 6D */	bl Camera2_request_main_simple
lbl_805003BC:
/* 805003BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805003C0  4B B9 AB 5D */	bl func_8009AF1C
/* 805003C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805003C8  7C 08 03 A6 */	mtlr r0
/* 805003CC  38 21 00 20 */	addi r1, r1, 0x20
/* 805003D0  4E 80 00 20 */	blr 

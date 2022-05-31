lbl_80500788:
/* 80500788  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050078C  7C 08 02 A6 */	mflr r0
/* 80500790  90 01 00 24 */	stw r0, 0x24(r1)
/* 80500794  39 61 00 20 */	addi r11, r1, 0x20
/* 80500798  4B B9 A7 39 */	bl func_8009AED0
/* 8050079C  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 805007A0  7C 7C 1B 78 */	mr r28, r3
/* 805007A4  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 805007A8  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 805007AC  7C 9F 23 78 */	mr r31, r4
/* 805007B0  3B DC 01 74 */	addi r30, r28, 0x174
/* 805007B4  FC 60 08 90 */	fmr f3, f1
/* 805007B8  C0 43 66 74 */	lfs f2, lit_801@l(r3)  /* 0x80646674@l */
/* 805007BC  7F C3 F3 78 */	mr r3, r30
/* 805007C0  3B BC 0D 60 */	addi r29, r28, 0xd60
/* 805007C4  38 80 00 00 */	li r4, 0
/* 805007C8  38 A0 00 00 */	li r5, 0
/* 805007CC  38 C0 40 00 */	li r6, 0x4000
/* 805007D0  4B E7 1D 21 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 805007D4  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 805007D8  A8 BC 00 DE */	lha r5, 0xde(r28)
/* 805007DC  C0 23 7E 60 */	lfs f1, lit_6257@l(r3)  /* 0x80647E60@l */
/* 805007E0  7F A4 EB 78 */	mr r4, r29
/* 805007E4  A8 DD 00 0C */	lha r6, 0xc(r29)
/* 805007E8  7F C7 F3 78 */	mr r7, r30
/* 805007EC  38 7C 00 28 */	addi r3, r28, 0x28
/* 805007F0  39 00 00 05 */	li r8, 5
/* 805007F4  4B E7 1D 25 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 805007F8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 805007FC  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80500800  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80500804  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80500808  C0 25 00 00 */	lfs f1, 0(r5)
/* 8050080C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80500810  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80500814  7F 83 E3 78 */	mr r3, r28
/* 80500818  FC 40 08 90 */	fmr f2, f1
/* 8050081C  7F E4 FB 78 */	mr r4, r31
/* 80500820  38 A0 00 9C */	li r5, 0x9c
/* 80500824  38 C0 00 9C */	li r6, 0x9c
/* 80500828  38 E0 00 00 */	li r7, 0
/* 8050082C  39 00 00 00 */	li r8, 0
/* 80500830  4B FD 5F E1 */	bl Player_actor_InitAnimation_Base2
/* 80500834  7F 83 E3 78 */	mr r3, r28
/* 80500838  7F E4 FB 78 */	mr r4, r31
/* 8050083C  4B FD 50 BD */	bl Player_actor_setup_main_Base
/* 80500840  7F E3 FB 78 */	mr r3, r31
/* 80500844  38 80 00 01 */	li r4, 1
/* 80500848  4B E7 E9 65 */	bl Camera2_Check_main_index
/* 8050084C  2C 03 00 00 */	cmpwi r3, 0
/* 80500850  41 82 00 20 */	beq lbl_80500870
/* 80500854  C0 3F 1B D8 */	lfs f1, 0x1bd8(r31)
/* 80500858  7F E3 FB 78 */	mr r3, r31
/* 8050085C  38 9F 1B 94 */	addi r4, r31, 0x1b94
/* 80500860  38 BF 1B C0 */	addi r5, r31, 0x1bc0
/* 80500864  38 C0 00 00 */	li r6, 0
/* 80500868  38 E0 00 09 */	li r7, 9
/* 8050086C  4B E8 11 B9 */	bl Camera2_request_main_simple
lbl_80500870:
/* 80500870  39 61 00 20 */	addi r11, r1, 0x20
/* 80500874  4B B9 A6 A9 */	bl func_8009AF1C
/* 80500878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050087C  7C 08 03 A6 */	mtlr r0
/* 80500880  38 21 00 20 */	addi r1, r1, 0x20
/* 80500884  4E 80 00 20 */	blr 

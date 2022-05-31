lbl_805068C4:
/* 805068C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805068C8  7C 08 02 A6 */	mflr r0
/* 805068CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805068D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805068D4  4B B9 46 01 */	bl func_8009AED4
/* 805068D8  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 805068DC  7C 7D 1B 78 */	mr r29, r3
/* 805068E0  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 805068E4  7C 9E 23 78 */	mr r30, r4
/* 805068E8  A8 03 0D 60 */	lha r0, 0xd60(r3)
/* 805068EC  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 805068F0  38 A3 66 74 */	addi r5, r3, lit_801@l /* 0x80646674@l */
/* 805068F4  FC 60 08 90 */	fmr f3, f1
/* 805068F8  3B FD 01 74 */	addi r31, r29, 0x174
/* 805068FC  C0 45 00 00 */	lfs f2, 0(r5)
/* 80506900  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 80506904  7F E3 FB 78 */	mr r3, r31
/* 80506908  38 80 00 00 */	li r4, 0
/* 8050690C  38 A0 00 00 */	li r5, 0
/* 80506910  38 C0 40 00 */	li r6, 0x4000
/* 80506914  4B E6 BB DD */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 80506918  3C 60 80 64 */	lis r3, lit_3573@ha /* 0x80647A44@ha */
/* 8050691C  A8 BD 00 DE */	lha r5, 0xde(r29)
/* 80506920  C0 23 7A 44 */	lfs f1, lit_3573@l(r3)  /* 0x80647A44@l */
/* 80506924  7F E7 FB 78 */	mr r7, r31
/* 80506928  A8 DD 0D 60 */	lha r6, 0xd60(r29)
/* 8050692C  38 7D 00 28 */	addi r3, r29, 0x28
/* 80506930  38 9D 0D 64 */	addi r4, r29, 0xd64
/* 80506934  39 00 00 05 */	li r8, 5
/* 80506938  4B E6 BB E1 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 8050693C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80506940  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80506944  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80506948  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 8050694C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80506950  3C 60 80 64 */	lis r3, lit_3573@ha /* 0x80647A44@ha */
/* 80506954  C0 83 7A 44 */	lfs f4, lit_3573@l(r3)  /* 0x80647A44@l */
/* 80506958  7F A3 EB 78 */	mr r3, r29
/* 8050695C  FC 40 08 90 */	fmr f2, f1
/* 80506960  7F C4 F3 78 */	mr r4, r30
/* 80506964  38 A0 00 8F */	li r5, 0x8f
/* 80506968  38 C0 00 8F */	li r6, 0x8f
/* 8050696C  38 E0 00 00 */	li r7, 0
/* 80506970  39 00 00 00 */	li r8, 0
/* 80506974  4B FC FE 9D */	bl Player_actor_InitAnimation_Base2
/* 80506978  7F A3 EB 78 */	mr r3, r29
/* 8050697C  7F C4 F3 78 */	mr r4, r30
/* 80506980  4B FC EF 79 */	bl Player_actor_setup_main_Base
/* 80506984  39 61 00 20 */	addi r11, r1, 0x20
/* 80506988  4B B9 45 99 */	bl func_8009AF20
/* 8050698C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80506990  7C 08 03 A6 */	mtlr r0
/* 80506994  38 21 00 20 */	addi r1, r1, 0x20
/* 80506998  4E 80 00 20 */	blr 

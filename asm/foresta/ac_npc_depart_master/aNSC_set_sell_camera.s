lbl_8054D56C:
/* 8054D56C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054D570  7C 08 02 A6 */	mflr r0
/* 8054D574  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054D578  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8054D57C  7C 7F 1B 78 */	mr r31, r3
/* 8054D580  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8054D584  7C 9E 23 78 */	mr r30, r4
/* 8054D588  7F C3 F3 78 */	mr r3, r30
/* 8054D58C  4B E8 C0 B5 */	bl get_player_actor_withoutCheck
/* 8054D590  88 9F 09 B6 */	lbz r4, 0x9b6(r31)
/* 8054D594  88 BF 09 B7 */	lbz r5, 0x9b7(r31)
/* 8054D598  7C 7F 1B 78 */	mr r31, r3
/* 8054D59C  38 61 00 14 */	addi r3, r1, 0x14
/* 8054D5A0  4B E5 7E DD */	bl mFI_UtNum2CenterWpos
/* 8054D5A4  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8054D5A8  3C 60 80 65 */	lis r3, lit_617@ha /* 0x806494EC@ha */
/* 8054D5AC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8054D5B0  38 83 94 EC */	addi r4, r3, lit_617@l /* 0x806494EC@l */
/* 8054D5B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8054D5B8  38 61 00 08 */	addi r3, r1, 8
/* 8054D5BC  90 C1 00 08 */	stw r6, 8(r1)
/* 8054D5C0  C0 24 00 00 */	lfs f1, 0(r4)
/* 8054D5C4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8054D5C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8054D5CC  4B E4 23 CD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8054D5D0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8054D5D4  7F C3 F3 78 */	mr r3, r30
/* 8054D5D8  7F E4 FB 78 */	mr r4, r31
/* 8054D5DC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8054D5E0  38 C0 00 05 */	li r6, 5
/* 8054D5E4  4B E3 21 55 */	bl Camera2_request_main_talk_pos
/* 8054D5E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054D5EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8054D5F0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8054D5F4  7C 08 03 A6 */	mtlr r0
/* 8054D5F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8054D5FC  4E 80 00 20 */	blr 

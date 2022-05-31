lbl_8055A558:
/* 8055A558  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055A55C  7C 08 02 A6 */	mflr r0
/* 8055A560  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055A564  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8055A568  7C 7F 1B 78 */	mr r31, r3
/* 8055A56C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8055A570  7C 9E 23 78 */	mr r30, r4
/* 8055A574  7F C3 F3 78 */	mr r3, r30
/* 8055A578  4B E7 F0 C9 */	bl get_player_actor_withoutCheck
/* 8055A57C  88 9F 09 B6 */	lbz r4, 0x9b6(r31)
/* 8055A580  88 BF 09 B7 */	lbz r5, 0x9b7(r31)
/* 8055A584  7C 7F 1B 78 */	mr r31, r3
/* 8055A588  38 61 00 14 */	addi r3, r1, 0x14
/* 8055A58C  4B E4 AE F1 */	bl mFI_UtNum2CenterWpos
/* 8055A590  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8055A594  3C 60 80 65 */	lis r3, lit_633@ha /* 0x806496B8@ha */
/* 8055A598  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8055A59C  38 83 96 B8 */	addi r4, r3, lit_633@l /* 0x806496B8@l */
/* 8055A5A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8055A5A4  38 61 00 08 */	addi r3, r1, 8
/* 8055A5A8  90 C1 00 08 */	stw r6, 8(r1)
/* 8055A5AC  C0 24 00 00 */	lfs f1, 0(r4)
/* 8055A5B0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8055A5B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8055A5B8  4B E3 53 E1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8055A5BC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8055A5C0  7F C3 F3 78 */	mr r3, r30
/* 8055A5C4  7F E4 FB 78 */	mr r4, r31
/* 8055A5C8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8055A5CC  38 C0 00 05 */	li r6, 5
/* 8055A5D0  4B E2 51 69 */	bl Camera2_request_main_talk_pos
/* 8055A5D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055A5D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8055A5DC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8055A5E0  7C 08 03 A6 */	mtlr r0
/* 8055A5E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8055A5E8  4E 80 00 20 */	blr 

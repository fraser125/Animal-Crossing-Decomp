lbl_804A5630:
/* 804A5630  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A5634  7C 08 02 A6 */	mflr r0
/* 804A5638  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A563C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804A5640  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804A5644  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 804A5648  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 804A564C  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 804A5650  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 804A5654  39 61 00 20 */	addi r11, r1, 0x20
/* 804A5658  4B BF 58 7D */	bl func_8009AED4
/* 804A565C  7C 9E 23 78 */	mr r30, r4
/* 804A5660  7C 7D 1B 78 */	mr r29, r3
/* 804A5664  7F C3 F3 78 */	mr r3, r30
/* 804A5668  4B F3 3F D9 */	bl get_player_actor_withoutCheck
/* 804A566C  3C 80 80 64 */	lis r4, lit_644@ha /* 0x80645CC4@ha */
/* 804A5670  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 804A5674  C0 24 5C C4 */	lfs f1, lit_644@l(r4)  /* 0x80645CC4@l */
/* 804A5678  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804A567C  C0 1D 01 D0 */	lfs f0, 0x1d0(r29)
/* 804A5680  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804A5684  3C A0 80 64 */	lis r5, lit_469@ha /* 0x80645C90@ha */
/* 804A5688  C0 7D 00 2C */	lfs f3, 0x2c(r29)
/* 804A568C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A5690  C0 25 5C 90 */	lfs f1, lit_469@l(r5)  /* 0x80645C90@l */
/* 804A5694  80 84 00 00 */	lwz r4, 0(r4)
/* 804A5698  EC 43 10 28 */	fsubs f2, f3, f2
/* 804A569C  C3 FD 00 BC */	lfs f31, 0xbc(r29)
/* 804A56A0  38 63 00 28 */	addi r3, r3, 0x28
/* 804A56A4  EC 01 00 2A */	fadds f0, f1, f0
/* 804A56A8  C3 A4 00 B0 */	lfs f29, 0xb0(r4)
/* 804A56AC  38 9D 00 28 */	addi r4, r29, 0x28
/* 804A56B0  EF C2 00 28 */	fsubs f30, f2, f0
/* 804A56B4  4B F1 5A 7D */	bl search_position_angleY
/* 804A56B8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804A56BC  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804A56C0  80 84 00 00 */	lwz r4, 0(r4)
/* 804A56C4  A8 84 00 B4 */	lha r4, 0xb4(r4)
/* 804A56C8  38 04 40 00 */	addi r0, r4, 0x4000
/* 804A56CC  7C 00 07 34 */	extsh r0, r0
/* 804A56D0  7C 03 00 50 */	subf r0, r3, r0
/* 804A56D4  7F A3 EB 78 */	mr r3, r29
/* 804A56D8  7C 1F 07 34 */	extsh r31, r0
/* 804A56DC  4B F3 84 35 */	bl mPlib_Check_Label_main_push_snowball
/* 804A56E0  2C 03 00 00 */	cmpwi r3, 0
/* 804A56E4  41 82 00 18 */	beq lbl_804A56FC
/* 804A56E8  7F A3 EB 78 */	mr r3, r29
/* 804A56EC  7F C4 F3 78 */	mr r4, r30
/* 804A56F0  48 00 01 F9 */	bl aSMAN_process_player_push_init
/* 804A56F4  38 60 00 01 */	li r3, 1
/* 804A56F8  48 00 01 0C */	b lbl_804A5804
lbl_804A56FC:
/* 804A56FC  A8 1D 01 F8 */	lha r0, 0x1f8(r29)
/* 804A5700  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804A5704  41 82 00 14 */	beq lbl_804A5718
/* 804A5708  7F A3 EB 78 */	mr r3, r29
/* 804A570C  48 00 11 99 */	bl aSMAN_process_hole_init
/* 804A5710  38 60 00 00 */	li r3, 0
/* 804A5714  48 00 00 F0 */	b lbl_804A5804
lbl_804A5718:
/* 804A5718  88 1D 00 98 */	lbz r0, 0x98(r29)
/* 804A571C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804A5720  40 82 00 14 */	bne lbl_804A5734
/* 804A5724  7F A3 EB 78 */	mr r3, r29
/* 804A5728  48 00 0C 7D */	bl aSMAN_process_air_init
/* 804A572C  38 60 00 00 */	li r3, 0
/* 804A5730  48 00 00 D4 */	b lbl_804A5804
lbl_804A5734:
/* 804A5734  3C 60 80 64 */	lis r3, lit_639@ha /* 0x80645CB0@ha */
/* 804A5738  C0 5D 01 D0 */	lfs f2, 0x1d0(r29)
/* 804A573C  C0 03 5C B0 */	lfs f0, lit_639@l(r3)  /* 0x80645CB0@l */
/* 804A5740  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804A5744  40 81 00 BC */	ble lbl_804A5800
/* 804A5748  3C 60 80 64 */	lis r3, lit_644@ha /* 0x80645CC4@ha */
/* 804A574C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x80645C90@ha */
/* 804A5750  C0 03 5C C4 */	lfs f0, lit_644@l(r3)  /* 0x80645CC4@l */
/* 804A5754  3C A0 80 64 */	lis r5, lit_1098@ha /* 0x80645D5C@ha */
/* 804A5758  C0 24 5C 90 */	lfs f1, lit_469@l(r4)  /* 0x80645C90@l */
/* 804A575C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804A5760  C0 45 5D 5C */	lfs f2, lit_1098@l(r5)  /* 0x80645D5C@l */
/* 804A5764  EC 01 00 2A */	fadds f0, f1, f0
/* 804A5768  EC 02 00 2A */	fadds f0, f2, f0
/* 804A576C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804A5770  40 80 00 90 */	bge lbl_804A5800
/* 804A5774  A8 7D 01 FA */	lha r3, 0x1fa(r29)
/* 804A5778  2C 03 00 10 */	cmpwi r3, 0x10
/* 804A577C  41 80 00 0C */	blt lbl_804A5788
/* 804A5780  38 60 00 10 */	li r3, 0x10
/* 804A5784  48 00 00 0C */	b lbl_804A5790
lbl_804A5788:
/* 804A5788  38 03 00 01 */	addi r0, r3, 1
/* 804A578C  B0 1D 01 FA */	sth r0, 0x1fa(r29)
lbl_804A5790:
/* 804A5790  2C 03 00 10 */	cmpwi r3, 0x10
/* 804A5794  40 82 00 6C */	bne lbl_804A5800
/* 804A5798  3C 60 80 64 */	lis r3, lit_1132@ha /* 0x80645D68@ha */
/* 804A579C  C0 03 5D 68 */	lfs f0, lit_1132@l(r3)  /* 0x80645D68@l */
/* 804A57A0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804A57A4  40 81 00 5C */	ble lbl_804A5800
/* 804A57A8  3C 60 80 64 */	lis r3, lit_1133@ha /* 0x80645D6C@ha */
/* 804A57AC  C0 03 5D 6C */	lfs f0, lit_1133@l(r3)  /* 0x80645D6C@l */
/* 804A57B0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804A57B4  40 80 00 4C */	bge lbl_804A5800
/* 804A57B8  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A57BC  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A57C0  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 804A57C4  40 81 00 3C */	ble lbl_804A5800
/* 804A57C8  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80645CD0@ha */
/* 804A57CC  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 804A57D0  C0 03 5C D0 */	lfs f0, lit_678@l(r3)  /* 0x80645CD0@l */
/* 804A57D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A57D8  40 80 00 28 */	bge lbl_804A5800
/* 804A57DC  7F E0 07 35 */	extsh. r0, r31
/* 804A57E0  7C 1F 00 D0 */	neg r0, r31
/* 804A57E4  41 80 00 08 */	blt lbl_804A57EC
/* 804A57E8  7F E0 FB 78 */	mr r0, r31
lbl_804A57EC:
/* 804A57EC  2C 00 27 1C */	cmpwi r0, 0x271c
/* 804A57F0  40 80 00 10 */	bge lbl_804A5800
/* 804A57F4  7F C3 F3 78 */	mr r3, r30
/* 804A57F8  7F A4 EB 78 */	mr r4, r29
/* 804A57FC  4B F3 54 C9 */	bl mPlib_request_main_push_snowball_type1
lbl_804A5800:
/* 804A5800  38 60 00 00 */	li r3, 0
lbl_804A5804:
/* 804A5804  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804A5808  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804A580C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 804A5810  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 804A5814  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 804A5818  39 61 00 20 */	addi r11, r1, 0x20
/* 804A581C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 804A5820  4B BF 57 01 */	bl func_8009AF20
/* 804A5824  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A5828  7C 08 03 A6 */	mtlr r0
/* 804A582C  38 21 00 50 */	addi r1, r1, 0x50
/* 804A5830  4E 80 00 20 */	blr 

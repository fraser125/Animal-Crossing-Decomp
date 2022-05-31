lbl_805B05F8:
/* 805B05F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B05FC  7C 08 02 A6 */	mflr r0
/* 805B0600  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805B0604  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B0608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B060C  93 C1 00 08 */	stw r30, 8(r1)
/* 805B0610  7C 7E 1B 78 */	mr r30, r3
/* 805B0614  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 805B0618  7F E3 FB 78 */	mr r3, r31
/* 805B061C  4B E2 90 25 */	bl get_player_actor_withoutCheck
/* 805B0620  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805B0624  7F E3 FB 78 */	mr r3, r31
/* 805B0628  7D 89 03 A6 */	mtctr r12
/* 805B062C  4E 80 04 21 */	bctrl 
/* 805B0630  7C 1E 18 40 */	cmplw r30, r3
/* 805B0634  40 82 00 30 */	bne lbl_805B0664
/* 805B0638  38 60 02 49 */	li r3, 0x249
/* 805B063C  4B DC B4 D1 */	bl mBGMPsComp_make_ps_wipe
/* 805B0640  3C 60 80 65 */	lis r3, lit_710@ha /* 0x8064A7A4@ha */
/* 805B0644  38 00 00 03 */	li r0, 3
/* 805B0648  C0 23 A7 A4 */	lfs f1, lit_710@l(r3)  /* 0x8064A7A4@l */
/* 805B064C  7F C3 F3 78 */	mr r3, r30
/* 805B0650  90 1E 02 B0 */	stw r0, 0x2b0(r30)
/* 805B0654  4B FF F7 D9 */	bl aHUS_setup_animation
/* 805B0658  7F C3 F3 78 */	mr r3, r30
/* 805B065C  38 80 00 02 */	li r4, 2
/* 805B0660  48 00 00 E5 */	bl aHUS_setup_action
lbl_805B0664:
/* 805B0664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B0668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B066C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B0670  7C 08 03 A6 */	mtlr r0
/* 805B0674  38 21 00 10 */	addi r1, r1, 0x10
/* 805B0678  4E 80 00 20 */	blr 

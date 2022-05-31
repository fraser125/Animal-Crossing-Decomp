lbl_805B58E8:
/* 805B58E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B58EC  7C 08 02 A6 */	mflr r0
/* 805B58F0  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805B58F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B58F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B58FC  93 C1 00 08 */	stw r30, 8(r1)
/* 805B5900  7C 7E 1B 78 */	mr r30, r3
/* 805B5904  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 805B5908  7F E3 FB 78 */	mr r3, r31
/* 805B590C  4B E2 3D 35 */	bl get_player_actor_withoutCheck
/* 805B5910  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805B5914  7F E3 FB 78 */	mr r3, r31
/* 805B5918  7D 89 03 A6 */	mtctr r12
/* 805B591C  4E 80 04 21 */	bctrl 
/* 805B5920  7C 1E 18 40 */	cmplw r30, r3
/* 805B5924  40 82 00 28 */	bne lbl_805B594C
/* 805B5928  38 60 02 49 */	li r3, 0x249
/* 805B592C  4B DC 61 E1 */	bl mBGMPsComp_make_ps_wipe
/* 805B5930  3C 80 80 65 */	lis r4, lit_685@ha /* 0x8064A98C@ha */
/* 805B5934  7F C3 F3 78 */	mr r3, r30
/* 805B5938  C0 24 A9 8C */	lfs f1, lit_685@l(r4)  /* 0x8064A98C@l */
/* 805B593C  4B FF F6 DD */	bl aMHS_setup_animation
/* 805B5940  7F C3 F3 78 */	mr r3, r30
/* 805B5944  38 80 00 02 */	li r4, 2
/* 805B5948  48 00 01 3D */	bl aMHS_setup_action
lbl_805B594C:
/* 805B594C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B5950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B5954  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B5958  7C 08 03 A6 */	mtlr r0
/* 805B595C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B5960  4E 80 00 20 */	blr 

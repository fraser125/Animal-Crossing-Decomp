lbl_805B8188:
/* 805B8188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B818C  7C 08 02 A6 */	mflr r0
/* 805B8190  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805B8194  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B8198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B819C  93 C1 00 08 */	stw r30, 8(r1)
/* 805B81A0  7C 7E 1B 78 */	mr r30, r3
/* 805B81A4  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 805B81A8  7F E3 FB 78 */	mr r3, r31
/* 805B81AC  4B E2 14 95 */	bl get_player_actor_withoutCheck
/* 805B81B0  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805B81B4  7F E3 FB 78 */	mr r3, r31
/* 805B81B8  7D 89 03 A6 */	mtctr r12
/* 805B81BC  4E 80 04 21 */	bctrl 
/* 805B81C0  7C 1E 18 40 */	cmplw r30, r3
/* 805B81C4  40 82 00 30 */	bne lbl_805B81F4
/* 805B81C8  3C 60 80 65 */	lis r3, lit_577@ha /* 0x8064AA4C@ha */
/* 805B81CC  38 00 00 03 */	li r0, 3
/* 805B81D0  C0 23 AA 4C */	lfs f1, lit_577@l(r3)  /* 0x8064AA4C@l */
/* 805B81D4  7F C3 F3 78 */	mr r3, r30
/* 805B81D8  90 1E 02 B0 */	stw r0, 0x2b0(r30)
/* 805B81DC  4B FF FD B1 */	bl aPOFF_setup_animation
/* 805B81E0  7F C3 F3 78 */	mr r3, r30
/* 805B81E4  38 80 00 02 */	li r4, 2
/* 805B81E8  48 00 00 C1 */	bl aPOFF_setup_action
/* 805B81EC  38 60 02 49 */	li r3, 0x249
/* 805B81F0  4B DC 39 1D */	bl mBGMPsComp_make_ps_wipe
lbl_805B81F4:
/* 805B81F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B81F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B81FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B8200  7C 08 03 A6 */	mtlr r0
/* 805B8204  38 21 00 10 */	addi r1, r1, 0x10
/* 805B8208  4E 80 00 20 */	blr 

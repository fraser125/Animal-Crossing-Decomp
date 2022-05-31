lbl_8059548C:
/* 8059548C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80595490  7C 08 02 A6 */	mflr r0
/* 80595494  90 01 00 34 */	stw r0, 0x34(r1)
/* 80595498  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8059549C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805954A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805954A4  4B B0 5A 31 */	bl func_8009AED4
/* 805954A8  88 03 02 1E */	lbz r0, 0x21e(r3)
/* 805954AC  7C 7D 1B 78 */	mr r29, r3
/* 805954B0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 805954B4  40 82 00 6C */	bne lbl_80595520
/* 805954B8  4B FF FF 35 */	bl aINS_get_catch_range
/* 805954BC  FF E0 08 90 */	fmr f31, f1
/* 805954C0  3C 60 80 65 */	lis r3, lit_740@ha /* 0x80649D6C@ha */
/* 805954C4  C0 03 9D 6C */	lfs f0, lit_740@l(r3)  /* 0x80649D6C@l */
/* 805954C8  FC 20 FA 10 */	fabs f1, f31
/* 805954CC  FC 20 08 18 */	frsp f1, f1
/* 805954D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805954D4  41 80 00 4C */	blt lbl_80595520
/* 805954D8  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805954DC  83 C3 52 F0 */	lwz r30, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 805954E0  7F C3 F3 78 */	mr r3, r30
/* 805954E4  4B E4 41 5D */	bl get_player_actor_withoutCheck
/* 805954E8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805954EC  7C 7F 1B 78 */	mr r31, r3
/* 805954F0  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805954F4  80 63 00 00 */	lwz r3, 0(r3)
/* 805954F8  4B E4 41 49 */	bl get_player_actor_withoutCheck
/* 805954FC  81 83 13 04 */	lwz r12, 0x1304(r3)
/* 80595500  FC 20 F8 90 */	fmr f1, f31
/* 80595504  7F E3 FB 78 */	mr r3, r31
/* 80595508  7F C4 F3 78 */	mr r4, r30
/* 8059550C  7F A5 EB 78 */	mr r5, r29
/* 80595510  38 FD 00 28 */	addi r7, r29, 0x28
/* 80595514  38 C0 00 00 */	li r6, 0
/* 80595518  7D 89 03 A6 */	mtctr r12
/* 8059551C  4E 80 04 21 */	bctrl 
lbl_80595520:
/* 80595520  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80595524  39 61 00 20 */	addi r11, r1, 0x20
/* 80595528  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8059552C  4B B0 59 F5 */	bl func_8009AF20
/* 80595530  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80595534  7C 08 03 A6 */	mtlr r0
/* 80595538  38 21 00 30 */	addi r1, r1, 0x30
/* 8059553C  4E 80 00 20 */	blr 

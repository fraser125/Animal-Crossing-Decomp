lbl_805A80C8:
/* 805A80C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A80CC  7C 08 02 A6 */	mflr r0
/* 805A80D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A80D4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805A80D8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805A80DC  39 61 00 30 */	addi r11, r1, 0x30
/* 805A80E0  4B AF 2D F5 */	bl func_8009AED4
/* 805A80E4  7C 9E 23 78 */	mr r30, r4
/* 805A80E8  7C 7D 1B 78 */	mr r29, r3
/* 805A80EC  7F C3 F3 78 */	mr r3, r30
/* 805A80F0  4B E3 15 81 */	bl mPlib_get_player_actor_main_index
/* 805A80F4  2C 03 00 74 */	cmpwi r3, 0x74
/* 805A80F8  40 82 00 18 */	bne lbl_805A8110
/* 805A80FC  7F A3 EB 78 */	mr r3, r29
/* 805A8100  7F C4 F3 78 */	mr r4, r30
/* 805A8104  38 A0 00 0D */	li r5, 0xd
/* 805A8108  48 00 02 45 */	bl aBT_setupAction
/* 805A810C  48 00 00 78 */	b lbl_805A8184
lbl_805A8110:
/* 805A8110  7F C3 F3 78 */	mr r3, r30
/* 805A8114  4B E3 15 2D */	bl get_player_actor_withoutCheck
/* 805A8118  A8 9D 00 DE */	lha r4, 0xde(r29)
/* 805A811C  7C 7F 1B 78 */	mr r31, r3
/* 805A8120  38 04 C0 00 */	addi r0, r4, -16384
/* 805A8124  7C 1E 07 34 */	extsh r30, r0
/* 805A8128  7F C3 F3 78 */	mr r3, r30
/* 805A812C  4B E1 29 71 */	bl cos_s
/* 805A8130  FF E0 08 90 */	fmr f31, f1
/* 805A8134  7F C3 F3 78 */	mr r3, r30
/* 805A8138  4B E1 29 B9 */	bl sin_s
/* 805A813C  3C 80 80 65 */	lis r4, lit_760@ha /* 0x8064A524@ha */
/* 805A8140  3C 60 80 65 */	lis r3, lit_761@ha /* 0x8064A528@ha */
/* 805A8144  C0 44 A5 24 */	lfs f2, lit_760@l(r4)  /* 0x8064A524@l */
/* 805A8148  C0 03 A5 28 */	lfs f0, lit_761@l(r3)  /* 0x8064A528@l */
/* 805A814C  38 61 00 08 */	addi r3, r1, 8
/* 805A8150  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A8154  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805A8158  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805A815C  EC 02 07 F2 */	fmuls f0, f2, f31
/* 805A8160  EC 23 08 2A */	fadds f1, f3, f1
/* 805A8164  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A8168  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805A816C  EC 01 00 2A */	fadds f0, f1, f0
/* 805A8170  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805A8174  A8 9D 00 DE */	lha r4, 0xde(r29)
/* 805A8178  38 04 C0 00 */	addi r0, r4, -16384
/* 805A817C  7C 04 07 34 */	extsh r4, r0
/* 805A8180  4B E3 2A 1D */	bl mPlib_request_main_demo_getoff_boat_standup_type1
lbl_805A8184:
/* 805A8184  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805A8188  39 61 00 30 */	addi r11, r1, 0x30
/* 805A818C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805A8190  4B AF 2D 91 */	bl func_8009AF20
/* 805A8194  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A8198  7C 08 03 A6 */	mtlr r0
/* 805A819C  38 21 00 40 */	addi r1, r1, 0x40
/* 805A81A0  4E 80 00 20 */	blr 

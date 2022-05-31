lbl_805D05E0:
/* 805D05E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D05E4  7C 08 02 A6 */	mflr r0
/* 805D05E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D05EC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805D05F0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805D05F4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 805D05F8  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 805D05FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D0600  93 C1 00 08 */	stw r30, 8(r1)
/* 805D0604  3C 80 80 65 */	lis r4, lit_862@ha /* 0x8064B0EC@ha */
/* 805D0608  7C 7F 1B 78 */	mr r31, r3
/* 805D060C  FF C0 08 90 */	fmr f30, f1
/* 805D0610  C0 24 B0 EC */	lfs f1, lit_862@l(r4)  /* 0x8064B0EC@l */
/* 805D0614  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805D0618  FF E0 10 90 */	fmr f31, f2
/* 805D061C  38 83 B0 B0 */	addi r4, r3, lit_615@l /* 0x8064B0B0@l */
/* 805D0620  FC 40 08 90 */	fmr f2, f1
/* 805D0624  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805D0628  38 60 00 00 */	li r3, 0
/* 805D062C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D0630  4B E3 BD BD */	bl Matrix_scale
/* 805D0634  3C 60 80 65 */	lis r3, lit_863@ha /* 0x8064B0F0@ha */
/* 805D0638  FC 20 F0 90 */	fmr f1, f30
/* 805D063C  C0 63 B0 F0 */	lfs f3, lit_863@l(r3)  /* 0x8064B0F0@l */
/* 805D0640  FC 40 F8 90 */	fmr f2, f31
/* 805D0644  38 60 00 01 */	li r3, 1
/* 805D0648  4B E3 BC B9 */	bl Matrix_translate
/* 805D064C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D0650  7F E3 FB 78 */	mr r3, r31
/* 805D0654  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D0658  90 1E 00 00 */	stw r0, 0(r30)
/* 805D065C  4B E3 CD 79 */	bl _Matrix_to_Mtx_new
/* 805D0660  90 7E 00 04 */	stw r3, 4(r30)
/* 805D0664  3C E0 DE 00 */	lis r7, 0xde00
/* 805D0668  3C 60 80 A5 */	lis r3, dia_init_mode@ha /* 0x80A54AC0@ha */
/* 805D066C  3C C0 80 A5 */	lis r6, kei_win_b2_model@ha /* 0x80A549A0@ha */
/* 805D0670  90 FE 00 08 */	stw r7, 8(r30)
/* 805D0674  38 03 4A C0 */	addi r0, r3, dia_init_mode@l /* 0x80A54AC0@l */
/* 805D0678  3C A0 80 A5 */	lis r5, kei_win_amojiT_model@ha /* 0x80A54A20@ha */
/* 805D067C  3C 80 80 A5 */	lis r4, dia_win_bb_model@ha /* 0x80A549E0@ha */
/* 805D0680  90 1E 00 0C */	stw r0, 0xc(r30)
/* 805D0684  3C 60 80 A5 */	lis r3, dia_win_mojiT_model@ha /* 0x80A54A60@ha */
/* 805D0688  38 C6 49 A0 */	addi r6, r6, kei_win_b2_model@l /* 0x80A549A0@l */
/* 805D068C  38 A5 4A 20 */	addi r5, r5, kei_win_amojiT_model@l /* 0x80A54A20@l */
/* 805D0690  90 FE 00 10 */	stw r7, 0x10(r30)
/* 805D0694  38 84 49 E0 */	addi r4, r4, dia_win_bb_model@l /* 0x80A549E0@l */
/* 805D0698  38 03 4A 60 */	addi r0, r3, dia_win_mojiT_model@l /* 0x80A54A60@l */
/* 805D069C  90 DE 00 14 */	stw r6, 0x14(r30)
/* 805D06A0  90 FE 00 18 */	stw r7, 0x18(r30)
/* 805D06A4  90 BE 00 1C */	stw r5, 0x1c(r30)
/* 805D06A8  90 FE 00 20 */	stw r7, 0x20(r30)
/* 805D06AC  90 9E 00 24 */	stw r4, 0x24(r30)
/* 805D06B0  3B DE 00 28 */	addi r30, r30, 0x28
/* 805D06B4  7F C3 F3 78 */	mr r3, r30
/* 805D06B8  90 FE 00 00 */	stw r7, 0(r30)
/* 805D06BC  3B DE 00 08 */	addi r30, r30, 8
/* 805D06C0  90 03 00 04 */	stw r0, 4(r3)
/* 805D06C4  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805D06C8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805D06CC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805D06D0  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 805D06D4  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 805D06D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D06DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D06E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D06E4  7C 08 03 A6 */	mtlr r0
/* 805D06E8  38 21 00 30 */	addi r1, r1, 0x30
/* 805D06EC  4E 80 00 20 */	blr 

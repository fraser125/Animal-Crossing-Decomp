lbl_8055A1B8:
/* 8055A1B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8055A1BC  7C 08 02 A6 */	mflr r0
/* 8055A1C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8055A1C4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8055A1C8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8055A1CC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8055A1D0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8055A1D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8055A1D8  4B B4 0C FD */	bl func_8009AED4
/* 8055A1DC  88 03 09 A5 */	lbz r0, 0x9a5(r3)
/* 8055A1E0  7C 7D 1B 78 */	mr r29, r3
/* 8055A1E4  3C A0 80 6B */	lis r5, posX_table@ha /* 0x806A9688@ha */
/* 8055A1E8  3C 60 80 6B */	lis r3, posZ_table@ha /* 0x806A9698@ha */
/* 8055A1EC  38 C5 96 88 */	addi r6, r5, posX_table@l /* 0x806A9688@l */
/* 8055A1F0  54 00 10 3A */	slwi r0, r0, 2
/* 8055A1F4  38 A3 96 98 */	addi r5, r3, posZ_table@l /* 0x806A9698@l */
/* 8055A1F8  7F E6 00 2E */	lwzx r31, r6, r0
/* 8055A1FC  7F C5 00 2E */	lwzx r30, r5, r0
/* 8055A200  7C 83 23 78 */	mr r3, r4
/* 8055A204  4B E7 F4 3D */	bl get_player_actor_withoutCheck
/* 8055A208  28 03 00 00 */	cmplwi r3, 0
/* 8055A20C  41 82 00 7C */	beq lbl_8055A288
/* 8055A210  88 1D 09 A3 */	lbz r0, 0x9a3(r29)
/* 8055A214  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 8055A218  54 00 10 3A */	slwi r0, r0, 2
/* 8055A21C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 8055A220  7C 7F 04 2E */	lfsx f3, r31, r0
/* 8055A224  7C 3E 04 2E */	lfsx f1, r30, r0
/* 8055A228  EF E3 10 28 */	fsubs f31, f3, f2
/* 8055A22C  EF C1 00 28 */	fsubs f30, f1, f0
/* 8055A230  FC 40 F8 90 */	fmr f2, f31
/* 8055A234  FC 20 F0 90 */	fmr f1, f30
/* 8055A238  4B EB 1D C9 */	bl atans_table
/* 8055A23C  7C 60 1B 78 */	mr r0, r3
/* 8055A240  38 7D 00 DE */	addi r3, r29, 0xde
/* 8055A244  7C 04 07 34 */	extsh r4, r0
/* 8055A248  38 A0 08 00 */	li r5, 0x800
/* 8055A24C  4B E6 08 F9 */	bl chase_angle
/* 8055A250  EC 5F 07 F2 */	fmuls f2, f31, f31
/* 8055A254  3C 60 80 65 */	lis r3, lit_564@ha /* 0x806496B0@ha */
/* 8055A258  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 8055A25C  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 8055A260  C0 03 96 B0 */	lfs f0, lit_564@l(r3)  /* 0x806496B0@l */
/* 8055A264  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 8055A268  EC 22 08 2A */	fadds f1, f2, f1
/* 8055A26C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8055A270  40 80 00 18 */	bge lbl_8055A288
/* 8055A274  88 9D 09 A4 */	lbz r4, 0x9a4(r29)
/* 8055A278  7F A3 EB 78 */	mr r3, r29
/* 8055A27C  88 BD 09 A2 */	lbz r5, 0x9a2(r29)
/* 8055A280  4B FF FE 71 */	bl aNMD_get_next_zone
/* 8055A284  98 7D 09 A3 */	stb r3, 0x9a3(r29)
lbl_8055A288:
/* 8055A288  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8055A28C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8055A290  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8055A294  39 61 00 20 */	addi r11, r1, 0x20
/* 8055A298  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8055A29C  4B B4 0C 85 */	bl func_8009AF20
/* 8055A2A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8055A2A4  7C 08 03 A6 */	mtlr r0
/* 8055A2A8  38 21 00 40 */	addi r1, r1, 0x40
/* 8055A2AC  4E 80 00 20 */	blr 

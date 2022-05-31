lbl_804AF3D0:
/* 804AF3D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804AF3D4  7C 08 02 A6 */	mflr r0
/* 804AF3D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804AF3DC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804AF3E0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804AF3E4  39 61 00 20 */	addi r11, r1, 0x20
/* 804AF3E8  4B BE BA ED */	bl func_8009AED4
/* 804AF3EC  7C 7D 1B 78 */	mr r29, r3
/* 804AF3F0  7C 9E 23 78 */	mr r30, r4
/* 804AF3F4  80 03 02 34 */	lwz r0, 0x234(r3)
/* 804AF3F8  2C 00 00 00 */	cmpwi r0, 0
/* 804AF3FC  41 82 00 DC */	beq lbl_804AF4D8
/* 804AF400  3C 80 80 4B */	lis r4, aUKI_actor_draw@ha /* 0x804AF5CC@ha */
/* 804AF404  7F C3 F3 78 */	mr r3, r30
/* 804AF408  38 04 F5 CC */	addi r0, r4, aUKI_actor_draw@l /* 0x804AF5CC@l */
/* 804AF40C  90 1D 01 68 */	stw r0, 0x168(r29)
/* 804AF410  4B F2 A2 31 */	bl get_player_actor_withoutCheck
/* 804AF414  7C 7F 1B 78 */	mr r31, r3
/* 804AF418  A8 63 00 DE */	lha r3, 0xde(r3)
/* 804AF41C  4B F0 B6 D5 */	bl sin_s
/* 804AF420  FF E0 08 90 */	fmr f31, f1
/* 804AF424  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 804AF428  4B F0 B6 75 */	bl cos_s
/* 804AF42C  3C 60 80 64 */	lis r3, lit_722@ha /* 0x80645FAC@ha */
/* 804AF430  3C 80 80 64 */	lis r4, lit_954@ha /* 0x80645FB4@ha */
/* 804AF434  38 A3 5F AC */	addi r5, r3, lit_722@l /* 0x80645FAC@l */
/* 804AF438  C0 84 5F B4 */	lfs f4, lit_954@l(r4)  /* 0x80645FB4@l */
/* 804AF43C  C0 A5 00 00 */	lfs f5, 0(r5)
/* 804AF440  3C 60 80 64 */	lis r3, lit_955@ha /* 0x80645FB8@ha */
/* 804AF444  38 83 5F B8 */	addi r4, r3, lit_955@l /* 0x80645FB8@l */
/* 804AF448  EC 04 00 72 */	fmuls f0, f4, f1
/* 804AF44C  EC 65 07 F2 */	fmuls f3, f5, f31
/* 804AF450  C0 44 00 00 */	lfs f2, 0(r4)
/* 804AF454  3C 60 80 69 */	lis r3, Uki_move_proc@ha /* 0x8068FB18@ha */
/* 804AF458  C0 DD 02 18 */	lfs f6, 0x218(r29)
/* 804AF45C  38 A3 FB 18 */	addi r5, r3, Uki_move_proc@l /* 0x8068FB18@l */
/* 804AF460  EC 63 00 2A */	fadds f3, f3, f0
/* 804AF464  EC 25 00 72 */	fmuls f1, f5, f1
/* 804AF468  7F A3 EB 78 */	mr r3, r29
/* 804AF46C  EC 04 07 F2 */	fmuls f0, f4, f31
/* 804AF470  7F C4 F3 78 */	mr r4, r30
/* 804AF474  EC 66 18 2A */	fadds f3, f6, f3
/* 804AF478  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AF47C  D0 7D 02 18 */	stfs f3, 0x218(r29)
/* 804AF480  C0 3D 02 1C */	lfs f1, 0x21c(r29)
/* 804AF484  EC 21 10 2A */	fadds f1, f1, f2
/* 804AF488  D0 3D 02 1C */	stfs f1, 0x21c(r29)
/* 804AF48C  C0 3D 02 20 */	lfs f1, 0x220(r29)
/* 804AF490  EC 01 00 2A */	fadds f0, f1, f0
/* 804AF494  D0 1D 02 20 */	stfs f0, 0x220(r29)
/* 804AF498  A8 1D 01 D8 */	lha r0, 0x1d8(r29)
/* 804AF49C  54 00 10 3A */	slwi r0, r0, 2
/* 804AF4A0  7D 85 00 2E */	lwzx r12, r5, r0
/* 804AF4A4  7D 89 03 A6 */	mtctr r12
/* 804AF4A8  4E 80 04 21 */	bctrl 
/* 804AF4AC  7F A3 EB 78 */	mr r3, r29
/* 804AF4B0  4B FF E3 A1 */	bl aUKI_BGcheck
/* 804AF4B4  7F A3 EB 78 */	mr r3, r29
/* 804AF4B8  7F C4 F3 78 */	mr r4, r30
/* 804AF4BC  4B FF ED 01 */	bl aUKI_set_spd_relations_in_water
/* 804AF4C0  7F A3 EB 78 */	mr r3, r29
/* 804AF4C4  4B FF F1 11 */	bl aUKI_color
/* 804AF4C8  7F A3 EB 78 */	mr r3, r29
/* 804AF4CC  7F C4 F3 78 */	mr r4, r30
/* 804AF4D0  4B FF E2 31 */	bl func_804AD700
/* 804AF4D4  48 00 00 0C */	b lbl_804AF4E0
lbl_804AF4D8:
/* 804AF4D8  38 00 00 00 */	li r0, 0
/* 804AF4DC  90 1D 01 68 */	stw r0, 0x168(r29)
lbl_804AF4E0:
/* 804AF4E0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804AF4E4  39 61 00 20 */	addi r11, r1, 0x20
/* 804AF4E8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804AF4EC  4B BE BA 35 */	bl func_8009AF20
/* 804AF4F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804AF4F4  7C 08 03 A6 */	mtlr r0
/* 804AF4F8  38 21 00 30 */	addi r1, r1, 0x30
/* 804AF4FC  4E 80 00 20 */	blr 

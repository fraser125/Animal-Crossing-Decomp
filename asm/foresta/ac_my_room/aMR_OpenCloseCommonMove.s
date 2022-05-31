lbl_8047E2C8:
/* 8047E2C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8047E2CC  7C 08 02 A6 */	mflr r0
/* 8047E2D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047E2D4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8047E2D8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8047E2DC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8047E2E0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8047E2E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E2E8  4B C1 CB E5 */	bl func_8009AECC
/* 8047E2EC  7C 7E 1B 78 */	mr r30, r3
/* 8047E2F0  FF C0 08 90 */	fmr f30, f1
/* 8047E2F4  FF E0 10 90 */	fmr f31, f2
/* 8047E2F8  A0 63 00 00 */	lhz r3, 0(r3)
/* 8047E2FC  7C 9B 23 78 */	mr r27, r4
/* 8047E300  7C BC 2B 78 */	mr r28, r5
/* 8047E304  3B FE 01 34 */	addi r31, r30, 0x134
/* 8047E308  4B FF 1E 99 */	bl func_804701A0
/* 8047E30C  A8 1E 08 40 */	lha r0, 0x840(r30)
/* 8047E310  7C 7D 1B 78 */	mr r29, r3
/* 8047E314  28 00 00 07 */	cmplwi r0, 7
/* 8047E318  41 81 01 E0 */	bgt lbl_8047E4F8
/* 8047E31C  3C 60 80 69 */	lis r3, lit_6044@ha /* 0x8068A238@ha */
/* 8047E320  54 00 10 3A */	slwi r0, r0, 2
/* 8047E324  38 63 A2 38 */	addi r3, r3, lit_6044@l /* 0x8068A238@l */
/* 8047E328  7C 03 00 2E */	lwzx r0, r3, r0
/* 8047E32C  7C 09 03 A6 */	mtctr r0
/* 8047E330  4E 80 04 20 */	bctr 
lbl_8047E334:
/* 8047E334  D3 DF 00 00 */	stfs f30, 0(r31)
/* 8047E338  3C 60 80 64 */	lis r3, lit_967@ha /* 0x80644A04@ha */
/* 8047E33C  C0 03 4A 04 */	lfs f0, lit_967@l(r3)  /* 0x80644A04@l */
/* 8047E340  D3 FF 00 04 */	stfs f31, 4(r31)
/* 8047E344  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8047E348  4B F5 DC 21 */	bl mPlib_check_player_warp_forEvent
/* 8047E34C  2C 03 00 00 */	cmpwi r3, 0
/* 8047E350  40 82 01 A8 */	bne lbl_8047E4F8
/* 8047E354  7F 83 E3 78 */	mr r3, r28
/* 8047E358  4B F5 B3 19 */	bl mPlib_get_player_actor_main_index
/* 8047E35C  2C 03 00 17 */	cmpwi r3, 0x17
/* 8047E360  40 82 01 98 */	bne lbl_8047E4F8
/* 8047E364  38 00 00 02 */	li r0, 2
/* 8047E368  B0 1E 08 40 */	sth r0, 0x840(r30)
/* 8047E36C  48 00 01 8C */	b lbl_8047E4F8
lbl_8047E370:
/* 8047E370  7F E3 FB 78 */	mr r3, r31
/* 8047E374  4B EF 2C A1 */	bl cKF_SkeletonInfo_R_play
/* 8047E378  38 00 00 03 */	li r0, 3
/* 8047E37C  B0 1E 08 40 */	sth r0, 0x840(r30)
/* 8047E380  A0 7D 00 2E */	lhz r3, 0x2e(r29)
/* 8047E384  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8047E388  41 82 00 14 */	beq lbl_8047E39C
/* 8047E38C  38 9E 00 08 */	addi r4, r30, 8
/* 8047E390  38 60 04 2E */	li r3, 0x42e
/* 8047E394  48 1A FC 15 */	bl sAdo_OngenTrgStart
/* 8047E398  48 00 01 60 */	b lbl_8047E4F8
lbl_8047E39C:
/* 8047E39C  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 8047E3A0  41 82 00 14 */	beq lbl_8047E3B4
/* 8047E3A4  38 9E 00 08 */	addi r4, r30, 8
/* 8047E3A8  38 60 04 2C */	li r3, 0x42c
/* 8047E3AC  48 1A FB FD */	bl sAdo_OngenTrgStart
/* 8047E3B0  48 00 01 48 */	b lbl_8047E4F8
lbl_8047E3B4:
/* 8047E3B4  38 9E 00 08 */	addi r4, r30, 8
/* 8047E3B8  38 60 04 2C */	li r3, 0x42c
/* 8047E3BC  48 1A FB ED */	bl sAdo_OngenTrgStart
/* 8047E3C0  48 00 01 38 */	b lbl_8047E4F8
lbl_8047E3C4:
/* 8047E3C4  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047E3C8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8047E3CC  C0 23 49 F8 */	lfs f1, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047E3D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8047E3D4  40 82 00 1C */	bne lbl_8047E3F0
/* 8047E3D8  7F E3 FB 78 */	mr r3, r31
/* 8047E3DC  4B EF 2C 39 */	bl cKF_SkeletonInfo_R_play
/* 8047E3E0  2C 03 00 01 */	cmpwi r3, 1
/* 8047E3E4  40 82 00 0C */	bne lbl_8047E3F0
/* 8047E3E8  38 00 00 04 */	li r0, 4
/* 8047E3EC  B0 1E 08 40 */	sth r0, 0x840(r30)
lbl_8047E3F0:
/* 8047E3F0  7F E3 FB 78 */	mr r3, r31
/* 8047E3F4  4B EF 2C 21 */	bl cKF_SkeletonInfo_R_play
/* 8047E3F8  2C 03 00 01 */	cmpwi r3, 1
/* 8047E3FC  40 82 00 FC */	bne lbl_8047E4F8
/* 8047E400  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047E404  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047E408  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8047E40C  48 00 00 EC */	b lbl_8047E4F8
lbl_8047E410:
/* 8047E410  D3 FF 00 00 */	stfs f31, 0(r31)
/* 8047E414  3C 60 80 64 */	lis r3, lit_967@ha /* 0x80644A04@ha */
/* 8047E418  C0 03 4A 04 */	lfs f0, lit_967@l(r3)  /* 0x80644A04@l */
/* 8047E41C  D3 DF 00 04 */	stfs f30, 4(r31)
/* 8047E420  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8047E424  4B F5 DB 45 */	bl mPlib_check_player_warp_forEvent
/* 8047E428  2C 03 00 00 */	cmpwi r3, 0
/* 8047E42C  40 82 00 CC */	bne lbl_8047E4F8
/* 8047E430  7F 83 E3 78 */	mr r3, r28
/* 8047E434  4B F5 B2 3D */	bl mPlib_get_player_actor_main_index
/* 8047E438  2C 03 00 19 */	cmpwi r3, 0x19
/* 8047E43C  40 82 00 BC */	bne lbl_8047E4F8
/* 8047E440  7F E3 FB 78 */	mr r3, r31
/* 8047E444  4B EF 2B D1 */	bl cKF_SkeletonInfo_R_play
/* 8047E448  38 00 00 07 */	li r0, 7
/* 8047E44C  B0 1E 08 40 */	sth r0, 0x840(r30)
/* 8047E450  A0 1D 00 2E */	lhz r0, 0x2e(r29)
/* 8047E454  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8047E458  41 82 00 A0 */	beq lbl_8047E4F8
/* 8047E45C  38 9E 00 08 */	addi r4, r30, 8
/* 8047E460  38 60 04 2F */	li r3, 0x42f
/* 8047E464  48 1A FB 45 */	bl sAdo_OngenTrgStart
/* 8047E468  48 00 00 90 */	b lbl_8047E4F8
lbl_8047E46C:
/* 8047E46C  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047E470  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8047E474  C0 23 49 F8 */	lfs f1, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047E478  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8047E47C  40 82 00 60 */	bne lbl_8047E4DC
/* 8047E480  7F E3 FB 78 */	mr r3, r31
/* 8047E484  4B EF 2B 91 */	bl cKF_SkeletonInfo_R_play
/* 8047E488  2C 03 00 01 */	cmpwi r3, 1
/* 8047E48C  40 82 00 50 */	bne lbl_8047E4DC
/* 8047E490  38 00 00 00 */	li r0, 0
/* 8047E494  B0 1B 01 74 */	sth r0, 0x174(r27)
/* 8047E498  B0 1E 08 40 */	sth r0, 0x840(r30)
/* 8047E49C  A0 7D 00 2E */	lhz r3, 0x2e(r29)
/* 8047E4A0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8047E4A4  41 82 00 14 */	beq lbl_8047E4B8
/* 8047E4A8  38 9E 00 08 */	addi r4, r30, 8
/* 8047E4AC  38 60 00 3A */	li r3, 0x3a
/* 8047E4B0  48 1A FA F9 */	bl sAdo_OngenTrgStart
/* 8047E4B4  48 00 00 28 */	b lbl_8047E4DC
lbl_8047E4B8:
/* 8047E4B8  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 8047E4BC  41 82 00 14 */	beq lbl_8047E4D0
/* 8047E4C0  38 9E 00 08 */	addi r4, r30, 8
/* 8047E4C4  38 60 04 2D */	li r3, 0x42d
/* 8047E4C8  48 1A FA E1 */	bl sAdo_OngenTrgStart
/* 8047E4CC  48 00 00 10 */	b lbl_8047E4DC
lbl_8047E4D0:
/* 8047E4D0  38 9E 00 08 */	addi r4, r30, 8
/* 8047E4D4  38 60 04 2D */	li r3, 0x42d
/* 8047E4D8  48 1A FA D1 */	bl sAdo_OngenTrgStart
lbl_8047E4DC:
/* 8047E4DC  7F E3 FB 78 */	mr r3, r31
/* 8047E4E0  4B EF 2B 35 */	bl cKF_SkeletonInfo_R_play
/* 8047E4E4  2C 03 00 01 */	cmpwi r3, 1
/* 8047E4E8  40 82 00 10 */	bne lbl_8047E4F8
/* 8047E4EC  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047E4F0  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047E4F4  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8047E4F8:
/* 8047E4F8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8047E4FC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8047E500  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8047E504  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E508  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8047E50C  4B C1 CA 0D */	bl func_8009AF18
/* 8047E510  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047E514  7C 08 03 A6 */	mtlr r0
/* 8047E518  38 21 00 40 */	addi r1, r1, 0x40
/* 8047E51C  4E 80 00 20 */	blr 

lbl_8047E520:
/* 8047E520  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8047E524  7C 08 02 A6 */	mflr r0
/* 8047E528  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047E52C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8047E530  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8047E534  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8047E538  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8047E53C  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E540  4B C1 C9 95 */	bl func_8009AED4
/* 8047E544  7C 7E 1B 78 */	mr r30, r3
/* 8047E548  FF C0 08 90 */	fmr f30, f1
/* 8047E54C  A8 03 01 30 */	lha r0, 0x130(r3)
/* 8047E550  FF E0 10 90 */	fmr f31, f2
/* 8047E554  7C 9D 23 78 */	mr r29, r4
/* 8047E558  2C 00 00 01 */	cmpwi r0, 1
/* 8047E55C  40 82 00 24 */	bne lbl_8047E580
/* 8047E560  A0 9E 08 44 */	lhz r4, 0x844(r30)
/* 8047E564  7F A3 EB 78 */	mr r3, r29
/* 8047E568  7F C5 F3 78 */	mr r5, r30
/* 8047E56C  38 C0 00 00 */	li r6, 0
/* 8047E570  38 84 D6 80 */	addi r4, r4, -10624
/* 8047E574  4B FF 38 11 */	bl aMR_ReserveBgm
/* 8047E578  38 00 00 00 */	li r0, 0
/* 8047E57C  B0 1E 01 30 */	sth r0, 0x130(r30)
lbl_8047E580:
/* 8047E580  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047E584  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047E588  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 8047E58C  40 82 00 48 */	bne lbl_8047E5D4
/* 8047E590  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8047E594  40 82 00 40 */	bne lbl_8047E5D4
/* 8047E598  A8 1E 08 40 */	lha r0, 0x840(r30)
/* 8047E59C  2C 00 00 05 */	cmpwi r0, 5
/* 8047E5A0  41 82 00 28 */	beq lbl_8047E5C8
/* 8047E5A4  40 80 01 54 */	bge lbl_8047E6F8
/* 8047E5A8  2C 00 00 01 */	cmpwi r0, 1
/* 8047E5AC  41 82 00 10 */	beq lbl_8047E5BC
/* 8047E5B0  40 80 01 48 */	bge lbl_8047E6F8
/* 8047E5B4  48 00 01 44 */	b lbl_8047E6F8
/* 8047E5B8  48 00 01 40 */	b lbl_8047E6F8
lbl_8047E5BC:
/* 8047E5BC  38 00 00 04 */	li r0, 4
/* 8047E5C0  B0 1E 08 40 */	sth r0, 0x840(r30)
/* 8047E5C4  48 00 01 34 */	b lbl_8047E6F8
lbl_8047E5C8:
/* 8047E5C8  38 00 00 00 */	li r0, 0
/* 8047E5CC  B0 1E 08 40 */	sth r0, 0x840(r30)
/* 8047E5D0  48 00 01 28 */	b lbl_8047E6F8
lbl_8047E5D4:
/* 8047E5D4  A8 1E 08 40 */	lha r0, 0x840(r30)
/* 8047E5D8  3B FE 01 34 */	addi r31, r30, 0x134
/* 8047E5DC  28 00 00 07 */	cmplwi r0, 7
/* 8047E5E0  41 81 01 18 */	bgt lbl_8047E6F8
/* 8047E5E4  3C 60 80 69 */	lis r3, lit_6091@ha /* 0x8068A258@ha */
/* 8047E5E8  54 00 10 3A */	slwi r0, r0, 2
/* 8047E5EC  38 63 A2 58 */	addi r3, r3, lit_6091@l /* 0x8068A258@l */
/* 8047E5F0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8047E5F4  7C 09 03 A6 */	mtctr r0
/* 8047E5F8  4E 80 04 20 */	bctr 
lbl_8047E5FC:
/* 8047E5FC  4B F5 D9 6D */	bl mPlib_check_player_warp_forEvent
/* 8047E600  2C 03 00 00 */	cmpwi r3, 0
/* 8047E604  40 82 00 F4 */	bne lbl_8047E6F8
/* 8047E608  D3 DF 00 00 */	stfs f30, 0(r31)
/* 8047E60C  3C 60 80 64 */	lis r3, lit_967@ha /* 0x80644A04@ha */
/* 8047E610  C0 03 4A 04 */	lfs f0, lit_967@l(r3)  /* 0x80644A04@l */
/* 8047E614  38 00 00 02 */	li r0, 2
/* 8047E618  D3 FF 00 04 */	stfs f31, 4(r31)
/* 8047E61C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8047E620  B0 1E 08 40 */	sth r0, 0x840(r30)
/* 8047E624  48 00 00 D4 */	b lbl_8047E6F8
lbl_8047E628:
/* 8047E628  7F E3 FB 78 */	mr r3, r31
/* 8047E62C  4B EF 29 E9 */	bl cKF_SkeletonInfo_R_play
/* 8047E630  38 00 00 03 */	li r0, 3
/* 8047E634  B0 1E 08 40 */	sth r0, 0x840(r30)
/* 8047E638  48 00 00 C0 */	b lbl_8047E6F8
lbl_8047E63C:
/* 8047E63C  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047E640  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8047E644  C0 23 49 F8 */	lfs f1, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047E648  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8047E64C  40 82 00 1C */	bne lbl_8047E668
/* 8047E650  7F E3 FB 78 */	mr r3, r31
/* 8047E654  4B EF 29 C1 */	bl cKF_SkeletonInfo_R_play
/* 8047E658  2C 03 00 01 */	cmpwi r3, 1
/* 8047E65C  40 82 00 0C */	bne lbl_8047E668
/* 8047E660  38 00 00 04 */	li r0, 4
/* 8047E664  B0 1E 08 40 */	sth r0, 0x840(r30)
lbl_8047E668:
/* 8047E668  7F E3 FB 78 */	mr r3, r31
/* 8047E66C  4B EF 29 A9 */	bl cKF_SkeletonInfo_R_play
/* 8047E670  2C 03 00 01 */	cmpwi r3, 1
/* 8047E674  40 82 00 84 */	bne lbl_8047E6F8
/* 8047E678  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047E67C  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047E680  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8047E684  48 00 00 74 */	b lbl_8047E6F8
lbl_8047E688:
/* 8047E688  4B F5 D8 E1 */	bl mPlib_check_player_warp_forEvent
/* 8047E68C  2C 03 00 00 */	cmpwi r3, 0
/* 8047E690  40 82 00 68 */	bne lbl_8047E6F8
/* 8047E694  D3 FF 00 00 */	stfs f31, 0(r31)
/* 8047E698  3C 60 80 64 */	lis r3, lit_967@ha /* 0x80644A04@ha */
/* 8047E69C  C0 03 4A 04 */	lfs f0, lit_967@l(r3)  /* 0x80644A04@l */
/* 8047E6A0  D3 DF 00 04 */	stfs f30, 4(r31)
/* 8047E6A4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8047E6A8  48 00 00 50 */	b lbl_8047E6F8
lbl_8047E6AC:
/* 8047E6AC  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047E6B0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8047E6B4  C0 23 49 F8 */	lfs f1, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047E6B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8047E6BC  40 82 00 20 */	bne lbl_8047E6DC
/* 8047E6C0  7F E3 FB 78 */	mr r3, r31
/* 8047E6C4  4B EF 29 51 */	bl cKF_SkeletonInfo_R_play
/* 8047E6C8  2C 03 00 01 */	cmpwi r3, 1
/* 8047E6CC  40 82 00 10 */	bne lbl_8047E6DC
/* 8047E6D0  38 00 00 00 */	li r0, 0
/* 8047E6D4  B0 1D 01 74 */	sth r0, 0x174(r29)
/* 8047E6D8  B0 1E 08 40 */	sth r0, 0x840(r30)
lbl_8047E6DC:
/* 8047E6DC  7F E3 FB 78 */	mr r3, r31
/* 8047E6E0  4B EF 29 35 */	bl cKF_SkeletonInfo_R_play
/* 8047E6E4  2C 03 00 01 */	cmpwi r3, 1
/* 8047E6E8  40 82 00 10 */	bne lbl_8047E6F8
/* 8047E6EC  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047E6F0  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047E6F4  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8047E6F8:
/* 8047E6F8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8047E6FC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8047E700  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8047E704  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E708  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8047E70C  4B C1 C8 15 */	bl func_8009AF20
/* 8047E710  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047E714  7C 08 03 A6 */	mtlr r0
/* 8047E718  38 21 00 40 */	addi r1, r1, 0x40
/* 8047E71C  4E 80 00 20 */	blr 

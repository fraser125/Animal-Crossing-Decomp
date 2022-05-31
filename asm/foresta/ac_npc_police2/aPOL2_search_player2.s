lbl_8056B6B0:
/* 8056B6B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8056B6B4  7C 08 02 A6 */	mflr r0
/* 8056B6B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8056B6BC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8056B6C0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8056B6C4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8056B6C8  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8056B6CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056B6D0  7C 7F 1B 78 */	mr r31, r3
/* 8056B6D4  7C 83 23 78 */	mr r3, r4
/* 8056B6D8  4B E6 DF 69 */	bl get_player_actor_withoutCheck
/* 8056B6DC  28 03 00 00 */	cmplwi r3, 0
/* 8056B6E0  41 82 00 A8 */	beq lbl_8056B788
/* 8056B6E4  88 FF 09 9E */	lbz r7, 0x99e(r31)
/* 8056B6E8  3C 80 80 6C */	lis r4, posX@ha /* 0x806BE8C4@ha */
/* 8056B6EC  3C 60 80 6C */	lis r3, posZ@ha /* 0x806BE8D4@ha */
/* 8056B6F0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8056B6F4  54 E0 F0 02 */	slwi r0, r7, 0x1e
/* 8056B6F8  54 E6 0F FE */	srwi r6, r7, 0x1f
/* 8056B6FC  7C A6 00 50 */	subf r5, r6, r0
/* 8056B700  7C E0 16 70 */	srawi r0, r7, 2
/* 8056B704  54 A5 10 3E */	rotlwi r5, r5, 2
/* 8056B708  38 84 E8 C4 */	addi r4, r4, posX@l /* 0x806BE8C4@l */
/* 8056B70C  7C A5 32 14 */	add r5, r5, r6
/* 8056B710  7C 00 01 94 */	addze r0, r0
/* 8056B714  54 A5 10 3A */	slwi r5, r5, 2
/* 8056B718  38 63 E8 D4 */	addi r3, r3, posZ@l /* 0x806BE8D4@l */
/* 8056B71C  54 00 10 3A */	slwi r0, r0, 2
/* 8056B720  7C 64 2C 2E */	lfsx f3, r4, r5
/* 8056B724  7C 23 04 2E */	lfsx f1, r3, r0
/* 8056B728  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8056B72C  EF E3 10 28 */	fsubs f31, f3, f2
/* 8056B730  EF C1 00 28 */	fsubs f30, f1, f0
/* 8056B734  FC 40 F8 90 */	fmr f2, f31
/* 8056B738  FC 20 F0 90 */	fmr f1, f30
/* 8056B73C  4B EA 08 C5 */	bl atans_table
/* 8056B740  7C 60 1B 78 */	mr r0, r3
/* 8056B744  38 7F 00 DE */	addi r3, r31, 0xde
/* 8056B748  7C 04 07 34 */	extsh r4, r0
/* 8056B74C  38 A0 08 00 */	li r5, 0x800
/* 8056B750  4B E4 F3 F5 */	bl chase_angle
/* 8056B754  EC 5F 07 F2 */	fmuls f2, f31, f31
/* 8056B758  3C 60 80 65 */	lis r3, lit_633@ha /* 0x80649870@ha */
/* 8056B75C  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 8056B760  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8056B764  C0 03 98 70 */	lfs f0, lit_633@l(r3)  /* 0x80649870@l */
/* 8056B768  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8056B76C  EC 22 08 2A */	fadds f1, f2, f1
/* 8056B770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056B774  40 80 00 14 */	bge lbl_8056B788
/* 8056B778  88 7F 09 9F */	lbz r3, 0x99f(r31)
/* 8056B77C  88 9F 09 9D */	lbz r4, 0x99d(r31)
/* 8056B780  4B FF FD 69 */	bl aPOL2_get_next_zone
/* 8056B784  98 7F 09 9E */	stb r3, 0x99e(r31)
lbl_8056B788:
/* 8056B788  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8056B78C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8056B790  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8056B794  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8056B798  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8056B79C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056B7A0  7C 08 03 A6 */	mtlr r0
/* 8056B7A4  38 21 00 30 */	addi r1, r1, 0x30
/* 8056B7A8  4E 80 00 20 */	blr 

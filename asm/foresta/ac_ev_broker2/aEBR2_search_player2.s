lbl_8051AE80:
/* 8051AE80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051AE84  7C 08 02 A6 */	mflr r0
/* 8051AE88  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051AE8C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8051AE90  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8051AE94  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8051AE98  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8051AE9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051AEA0  7C 7F 1B 78 */	mr r31, r3
/* 8051AEA4  7C 83 23 78 */	mr r3, r4
/* 8051AEA8  4B EB E7 99 */	bl get_player_actor_withoutCheck
/* 8051AEAC  28 03 00 00 */	cmplwi r3, 0
/* 8051AEB0  41 82 00 84 */	beq lbl_8051AF34
/* 8051AEB4  88 1F 09 9F */	lbz r0, 0x99f(r31)
/* 8051AEB8  3C 60 80 6A */	lis r3, posZ@ha /* 0x806A0128@ha */
/* 8051AEBC  3C 80 80 6A */	lis r4, posX@ha /* 0x806A0124@ha */
/* 8051AEC0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8051AEC4  54 00 10 3A */	slwi r0, r0, 2
/* 8051AEC8  38 63 01 28 */	addi r3, r3, posZ@l /* 0x806A0128@l */
/* 8051AECC  C0 64 01 24 */	lfs f3, posX@l(r4)  /* 0x806A0124@l */
/* 8051AED0  7C 23 04 2E */	lfsx f1, r3, r0
/* 8051AED4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8051AED8  EF E3 10 28 */	fsubs f31, f3, f2
/* 8051AEDC  EF C1 00 28 */	fsubs f30, f1, f0
/* 8051AEE0  FC 40 F8 90 */	fmr f2, f31
/* 8051AEE4  FC 20 F0 90 */	fmr f1, f30
/* 8051AEE8  4B EF 11 19 */	bl atans_table
/* 8051AEEC  7C 60 1B 78 */	mr r0, r3
/* 8051AEF0  38 7F 00 DE */	addi r3, r31, 0xde
/* 8051AEF4  7C 04 07 34 */	extsh r4, r0
/* 8051AEF8  38 A0 08 00 */	li r5, 0x800
/* 8051AEFC  4B E9 FC 49 */	bl chase_angle
/* 8051AF00  EC 5F 07 F2 */	fmuls f2, f31, f31
/* 8051AF04  3C 60 80 65 */	lis r3, lit_615@ha /* 0x806490B4@ha */
/* 8051AF08  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 8051AF0C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8051AF10  C0 03 90 B4 */	lfs f0, lit_615@l(r3)  /* 0x806490B4@l */
/* 8051AF14  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8051AF18  EC 22 08 2A */	fadds f1, f2, f1
/* 8051AF1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051AF20  40 80 00 14 */	bge lbl_8051AF34
/* 8051AF24  88 7F 09 A0 */	lbz r3, 0x9a0(r31)
/* 8051AF28  88 9F 09 9E */	lbz r4, 0x99e(r31)
/* 8051AF2C  4B FF FD E1 */	bl aEBR2_get_next_zone
/* 8051AF30  98 7F 09 9F */	stb r3, 0x99f(r31)
lbl_8051AF34:
/* 8051AF34  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8051AF38  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8051AF3C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8051AF40  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8051AF44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051AF48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051AF4C  7C 08 03 A6 */	mtlr r0
/* 8051AF50  38 21 00 30 */	addi r1, r1, 0x30
/* 8051AF54  4E 80 00 20 */	blr 

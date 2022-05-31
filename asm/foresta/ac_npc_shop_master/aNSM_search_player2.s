lbl_80576E58:
/* 80576E58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80576E5C  7C 08 02 A6 */	mflr r0
/* 80576E60  90 01 00 34 */	stw r0, 0x34(r1)
/* 80576E64  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80576E68  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80576E6C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80576E70  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80576E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80576E78  7C 7F 1B 78 */	mr r31, r3
/* 80576E7C  7C 83 23 78 */	mr r3, r4
/* 80576E80  4B E6 27 C1 */	bl get_player_actor_withoutCheck
/* 80576E84  28 03 00 00 */	cmplwi r3, 0
/* 80576E88  41 82 00 88 */	beq lbl_80576F10
/* 80576E8C  88 1F 09 A3 */	lbz r0, 0x9a3(r31)
/* 80576E90  3C 80 80 6C */	lis r4, posX@ha /* 0x806BFAC8@ha */
/* 80576E94  3C 60 80 6C */	lis r3, posZ@ha /* 0x806BFAD8@ha */
/* 80576E98  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80576E9C  54 00 10 3A */	slwi r0, r0, 2
/* 80576EA0  38 84 FA C8 */	addi r4, r4, posX@l /* 0x806BFAC8@l */
/* 80576EA4  38 63 FA D8 */	addi r3, r3, posZ@l /* 0x806BFAD8@l */
/* 80576EA8  7C 64 04 2E */	lfsx f3, r4, r0
/* 80576EAC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80576EB0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80576EB4  EF E3 10 28 */	fsubs f31, f3, f2
/* 80576EB8  EF C1 00 28 */	fsubs f30, f1, f0
/* 80576EBC  FC 40 F8 90 */	fmr f2, f31
/* 80576EC0  FC 20 F0 90 */	fmr f1, f30
/* 80576EC4  4B E9 51 3D */	bl atans_table
/* 80576EC8  7C 60 1B 78 */	mr r0, r3
/* 80576ECC  38 7F 00 DE */	addi r3, r31, 0xde
/* 80576ED0  7C 04 07 34 */	extsh r4, r0
/* 80576ED4  38 A0 08 00 */	li r5, 0x800
/* 80576ED8  4B E4 3C 6D */	bl chase_angle
/* 80576EDC  EC 5F 07 F2 */	fmuls f2, f31, f31
/* 80576EE0  3C 60 80 65 */	lis r3, lit_524@ha /* 0x806499AC@ha */
/* 80576EE4  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 80576EE8  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80576EEC  C0 03 99 AC */	lfs f0, lit_524@l(r3)  /* 0x806499AC@l */
/* 80576EF0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80576EF4  EC 22 08 2A */	fadds f1, f2, f1
/* 80576EF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80576EFC  40 80 00 14 */	bge lbl_80576F10
/* 80576F00  88 7F 09 A4 */	lbz r3, 0x9a4(r31)
/* 80576F04  88 9F 09 A2 */	lbz r4, 0x9a2(r31)
/* 80576F08  4B FF FE A5 */	bl aNSM_get_next_zone
/* 80576F0C  98 7F 09 A3 */	stb r3, 0x9a3(r31)
lbl_80576F10:
/* 80576F10  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80576F14  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80576F18  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80576F1C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80576F20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80576F24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80576F28  7C 08 03 A6 */	mtlr r0
/* 80576F2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80576F30  4E 80 00 20 */	blr 

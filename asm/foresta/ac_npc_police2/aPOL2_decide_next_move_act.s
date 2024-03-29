lbl_8056B524:
/* 8056B524  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056B528  7C 08 02 A6 */	mflr r0
/* 8056B52C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056B530  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8056B534  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8056B538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056B53C  88 03 09 40 */	lbz r0, 0x940(r3)
/* 8056B540  7C 7F 1B 78 */	mr r31, r3
/* 8056B544  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8056B548  41 82 00 0C */	beq lbl_8056B554
/* 8056B54C  38 60 00 01 */	li r3, 1
/* 8056B550  48 00 00 C4 */	b lbl_8056B614
lbl_8056B554:
/* 8056B554  7C 83 23 78 */	mr r3, r4
/* 8056B558  4B E6 E0 E9 */	bl get_player_actor_withoutCheck
/* 8056B55C  28 03 00 00 */	cmplwi r3, 0
/* 8056B560  40 82 00 0C */	bne lbl_8056B56C
/* 8056B564  80 7F 09 94 */	lwz r3, 0x994(r31)
/* 8056B568  48 00 00 AC */	b lbl_8056B614
lbl_8056B56C:
/* 8056B56C  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 8056B570  3C 80 80 65 */	lis r4, lit_609@ha /* 0x80649868@ha */
/* 8056B574  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8056B578  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 8056B57C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8056B580  EC 63 00 28 */	fsubs f3, f3, f0
/* 8056B584  C0 04 98 68 */	lfs f0, lit_609@l(r4)  /* 0x80649868@l */
/* 8056B588  EC 22 08 28 */	fsubs f1, f2, f1
/* 8056B58C  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8056B590  EC 21 00 72 */	fmuls f1, f1, f1
/* 8056B594  EF E2 08 2A */	fadds f31, f2, f1
/* 8056B598  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8056B59C  40 80 00 0C */	bge lbl_8056B5A8
/* 8056B5A0  38 60 00 01 */	li r3, 1
/* 8056B5A4  48 00 00 70 */	b lbl_8056B614
lbl_8056B5A8:
/* 8056B5A8  88 7F 09 9F */	lbz r3, 0x99f(r31)
/* 8056B5AC  88 9F 09 9D */	lbz r4, 0x99d(r31)
/* 8056B5B0  7C 03 20 40 */	cmplw r3, r4
/* 8056B5B4  41 82 00 40 */	beq lbl_8056B5F4
/* 8056B5B8  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8056B5BC  2C 00 00 03 */	cmpwi r0, 3
/* 8056B5C0  41 82 00 14 */	beq lbl_8056B5D4
/* 8056B5C4  2C 00 00 05 */	cmpwi r0, 5
/* 8056B5C8  41 82 00 0C */	beq lbl_8056B5D4
/* 8056B5CC  4B FF FF 1D */	bl aPOL2_get_next_zone
/* 8056B5D0  98 7F 09 9E */	stb r3, 0x99e(r31)
lbl_8056B5D4:
/* 8056B5D4  3C 60 80 65 */	lis r3, lit_610@ha /* 0x8064986C@ha */
/* 8056B5D8  C0 03 98 6C */	lfs f0, lit_610@l(r3)  /* 0x8064986C@l */
/* 8056B5DC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8056B5E0  40 80 00 0C */	bge lbl_8056B5EC
/* 8056B5E4  38 60 00 03 */	li r3, 3
/* 8056B5E8  48 00 00 2C */	b lbl_8056B614
lbl_8056B5EC:
/* 8056B5EC  38 60 00 05 */	li r3, 5
/* 8056B5F0  48 00 00 24 */	b lbl_8056B614
lbl_8056B5F4:
/* 8056B5F4  3C 60 80 65 */	lis r3, lit_610@ha /* 0x8064986C@ha */
/* 8056B5F8  98 9F 09 9E */	stb r4, 0x99e(r31)
/* 8056B5FC  C0 03 98 6C */	lfs f0, lit_610@l(r3)  /* 0x8064986C@l */
/* 8056B600  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8056B604  40 80 00 0C */	bge lbl_8056B610
/* 8056B608  38 60 00 02 */	li r3, 2
/* 8056B60C  48 00 00 08 */	b lbl_8056B614
lbl_8056B610:
/* 8056B610  38 60 00 04 */	li r3, 4
lbl_8056B614:
/* 8056B614  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8056B618  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056B61C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8056B620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056B624  7C 08 03 A6 */	mtlr r0
/* 8056B628  38 21 00 20 */	addi r1, r1, 0x20
/* 8056B62C  4E 80 00 20 */	blr 

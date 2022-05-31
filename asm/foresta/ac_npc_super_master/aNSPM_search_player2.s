lbl_8058095C:
/* 8058095C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80580960  7C 08 02 A6 */	mflr r0
/* 80580964  90 01 00 34 */	stw r0, 0x34(r1)
/* 80580968  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8058096C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80580970  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80580974  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80580978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058097C  7C 7F 1B 78 */	mr r31, r3
/* 80580980  7C 83 23 78 */	mr r3, r4
/* 80580984  4B E5 8C BD */	bl get_player_actor_withoutCheck
/* 80580988  28 03 00 00 */	cmplwi r3, 0
/* 8058098C  41 82 00 88 */	beq lbl_80580A14
/* 80580990  88 1F 09 A3 */	lbz r0, 0x9a3(r31)
/* 80580994  3C 80 80 6C */	lis r4, posX@ha /* 0x806C0F54@ha */
/* 80580998  3C 60 80 6C */	lis r3, posZ@ha /* 0x806C0FC0@ha */
/* 8058099C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805809A0  54 00 10 3A */	slwi r0, r0, 2
/* 805809A4  38 84 0F 54 */	addi r4, r4, posX@l /* 0x806C0F54@l */
/* 805809A8  38 63 0F C0 */	addi r3, r3, posZ@l /* 0x806C0FC0@l */
/* 805809AC  7C 64 04 2E */	lfsx f3, r4, r0
/* 805809B0  7C 23 04 2E */	lfsx f1, r3, r0
/* 805809B4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805809B8  EF E3 10 28 */	fsubs f31, f3, f2
/* 805809BC  EF C1 00 28 */	fsubs f30, f1, f0
/* 805809C0  FC 40 F8 90 */	fmr f2, f31
/* 805809C4  FC 20 F0 90 */	fmr f1, f30
/* 805809C8  4B E8 B6 39 */	bl atans_table
/* 805809CC  7C 60 1B 78 */	mr r0, r3
/* 805809D0  38 7F 00 DE */	addi r3, r31, 0xde
/* 805809D4  7C 04 07 34 */	extsh r4, r0
/* 805809D8  38 A0 08 00 */	li r5, 0x800
/* 805809DC  4B E3 A1 69 */	bl chase_angle
/* 805809E0  EC 5F 07 F2 */	fmuls f2, f31, f31
/* 805809E4  3C 60 80 65 */	lis r3, lit_530@ha /* 0x80649A74@ha */
/* 805809E8  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 805809EC  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805809F0  C0 03 9A 74 */	lfs f0, lit_530@l(r3)  /* 0x80649A74@l */
/* 805809F4  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805809F8  EC 22 08 2A */	fadds f1, f2, f1
/* 805809FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80580A00  40 80 00 14 */	bge lbl_80580A14
/* 80580A04  88 7F 09 A4 */	lbz r3, 0x9a4(r31)
/* 80580A08  88 9F 09 A2 */	lbz r4, 0x9a2(r31)
/* 80580A0C  4B FF FE A1 */	bl aNSPM_get_next_zone
/* 80580A10  98 7F 09 A3 */	stb r3, 0x9a3(r31)
lbl_80580A14:
/* 80580A14  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80580A18  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80580A1C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80580A20  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80580A24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80580A28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80580A2C  7C 08 03 A6 */	mtlr r0
/* 80580A30  38 21 00 30 */	addi r1, r1, 0x30
/* 80580A34  4E 80 00 20 */	blr 

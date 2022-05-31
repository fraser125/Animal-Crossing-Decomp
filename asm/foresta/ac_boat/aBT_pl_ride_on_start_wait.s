lbl_805A7CF0:
/* 805A7CF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A7CF4  7C 08 02 A6 */	mflr r0
/* 805A7CF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A7CFC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805A7D00  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805A7D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7D08  93 C1 00 08 */	stw r30, 8(r1)
/* 805A7D0C  7C 9F 23 78 */	mr r31, r4
/* 805A7D10  7C 7E 1B 78 */	mr r30, r3
/* 805A7D14  7F E3 FB 78 */	mr r3, r31
/* 805A7D18  4B E3 19 59 */	bl mPlib_get_player_actor_main_index
/* 805A7D1C  2C 03 00 70 */	cmpwi r3, 0x70
/* 805A7D20  40 82 00 18 */	bne lbl_805A7D38
/* 805A7D24  7F C3 F3 78 */	mr r3, r30
/* 805A7D28  7F E4 FB 78 */	mr r4, r31
/* 805A7D2C  38 A0 00 05 */	li r5, 5
/* 805A7D30  48 00 06 1D */	bl aBT_setupAction
/* 805A7D34  48 00 00 54 */	b lbl_805A7D88
lbl_805A7D38:
/* 805A7D38  A8 7E 00 DE */	lha r3, 0xde(r30)
/* 805A7D3C  38 03 40 00 */	addi r0, r3, 0x4000
/* 805A7D40  7C 1F 07 34 */	extsh r31, r0
/* 805A7D44  7F E3 FB 78 */	mr r3, r31
/* 805A7D48  4B E1 2D 55 */	bl cos_s
/* 805A7D4C  FF E0 08 90 */	fmr f31, f1
/* 805A7D50  7F E3 FB 78 */	mr r3, r31
/* 805A7D54  4B E1 2D 9D */	bl sin_s
/* 805A7D58  3C 80 80 65 */	lis r4, lit_678@ha /* 0x8064A518@ha */
/* 805A7D5C  A8 7E 00 DE */	lha r3, 0xde(r30)
/* 805A7D60  C0 04 A5 18 */	lfs f0, lit_678@l(r4)  /* 0x8064A518@l */
/* 805A7D64  38 03 C0 00 */	addi r0, r3, -16384
/* 805A7D68  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 805A7D6C  EC 60 07 F2 */	fmuls f3, f0, f31
/* 805A7D70  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805A7D74  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A7D78  7C 03 07 34 */	extsh r3, r0
/* 805A7D7C  EC 24 18 2A */	fadds f1, f4, f3
/* 805A7D80  EC 42 00 2A */	fadds f2, f2, f0
/* 805A7D84  4B E3 2D 79 */	bl mPlib_request_main_demo_geton_boat_type1
lbl_805A7D88:
/* 805A7D88  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805A7D8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A7D90  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805A7D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7D98  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A7D9C  7C 08 03 A6 */	mtlr r0
/* 805A7DA0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A7DA4  4E 80 00 20 */	blr 

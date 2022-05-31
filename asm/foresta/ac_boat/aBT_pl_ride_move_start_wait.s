lbl_805A7BDC:
/* 805A7BDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A7BE0  7C 08 02 A6 */	mflr r0
/* 805A7BE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A7BE8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805A7BEC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805A7BF0  39 61 00 20 */	addi r11, r1, 0x20
/* 805A7BF4  4B AF 32 E1 */	bl func_8009AED4
/* 805A7BF8  7C 9E 23 78 */	mr r30, r4
/* 805A7BFC  7C 7D 1B 78 */	mr r29, r3
/* 805A7C00  7F DF F3 78 */	mr r31, r30
/* 805A7C04  7F E3 FB 78 */	mr r3, r31
/* 805A7C08  4B E3 1A 69 */	bl mPlib_get_player_actor_main_index
/* 805A7C0C  2C 03 00 4B */	cmpwi r3, 0x4b
/* 805A7C10  40 82 00 18 */	bne lbl_805A7C28
/* 805A7C14  7F A3 EB 78 */	mr r3, r29
/* 805A7C18  7F C4 F3 78 */	mr r4, r30
/* 805A7C1C  38 A0 00 03 */	li r5, 3
/* 805A7C20  48 00 07 2D */	bl aBT_setupAction
/* 805A7C24  48 00 00 5C */	b lbl_805A7C80
lbl_805A7C28:
/* 805A7C28  A8 7D 00 DE */	lha r3, 0xde(r29)
/* 805A7C2C  38 03 40 00 */	addi r0, r3, 0x4000
/* 805A7C30  7C 1E 07 34 */	extsh r30, r0
/* 805A7C34  7F C3 F3 78 */	mr r3, r30
/* 805A7C38  4B E1 2E 65 */	bl cos_s
/* 805A7C3C  FF E0 08 90 */	fmr f31, f1
/* 805A7C40  7F C3 F3 78 */	mr r3, r30
/* 805A7C44  4B E1 2E AD */	bl sin_s
/* 805A7C48  3C 80 80 65 */	lis r4, lit_678@ha /* 0x8064A518@ha */
/* 805A7C4C  C0 BD 00 28 */	lfs f5, 0x28(r29)
/* 805A7C50  C0 04 A5 18 */	lfs f0, lit_678@l(r4)  /* 0x8064A518@l */
/* 805A7C54  3C 60 80 65 */	lis r3, data_8064A4C4@ha /* 0x8064A4C4@ha */
/* 805A7C58  38 83 A4 C4 */	addi r4, r3, data_8064A4C4@l /* 0x8064A4C4@l */
/* 805A7C5C  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 805A7C60  EC 80 07 F2 */	fmuls f4, f0, f31
/* 805A7C64  C0 64 00 00 */	lfs f3, 0(r4)
/* 805A7C68  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A7C6C  7F E3 FB 78 */	mr r3, r31
/* 805A7C70  38 80 00 00 */	li r4, 0
/* 805A7C74  EC 25 20 2A */	fadds f1, f5, f4
/* 805A7C78  EC 42 00 2A */	fadds f2, f2, f0
/* 805A7C7C  4B E3 31 61 */	bl mPlib_request_main_demo_walk_type1
lbl_805A7C80:
/* 805A7C80  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805A7C84  39 61 00 20 */	addi r11, r1, 0x20
/* 805A7C88  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805A7C8C  4B AF 32 95 */	bl func_8009AF20
/* 805A7C90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A7C94  7C 08 03 A6 */	mtlr r0
/* 805A7C98  38 21 00 30 */	addi r1, r1, 0x30
/* 805A7C9C  4E 80 00 20 */	blr 

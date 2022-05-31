lbl_805BD490:
/* 805BD490  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BD494  7C 08 02 A6 */	mflr r0
/* 805BD498  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BD49C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805BD4A0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805BD4A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BD4A8  93 C1 00 08 */	stw r30, 8(r1)
/* 805BD4AC  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064AB60@ha */
/* 805BD4B0  7C 7E 1B 78 */	mr r30, r3
/* 805BD4B4  C3 E4 AB 60 */	lfs f31, lit_488@l(r4)  /* 0x8064AB60@l */
/* 805BD4B8  3B E0 00 00 */	li r31, 0
/* 805BD4BC  4B E2 D2 55 */	bl mSP_ShopOpen
/* 805BD4C0  2C 03 00 02 */	cmpwi r3, 2
/* 805BD4C4  41 82 00 10 */	beq lbl_805BD4D4
/* 805BD4C8  4B E2 D2 49 */	bl mSP_ShopOpen
/* 805BD4CC  2C 03 00 06 */	cmpwi r3, 6
/* 805BD4D0  40 82 00 08 */	bne lbl_805BD4D8
lbl_805BD4D4:
/* 805BD4D4  3B E0 00 01 */	li r31, 1
lbl_805BD4D8:
/* 805BD4D8  2C 1F 00 01 */	cmpwi r31, 1
/* 805BD4DC  40 82 00 10 */	bne lbl_805BD4EC
/* 805BD4E0  3C 60 80 65 */	lis r3, lit_550@ha /* 0x8064AB74@ha */
/* 805BD4E4  C3 E3 AB 74 */	lfs f31, lit_550@l(r3)  /* 0x8064AB74@l */
/* 805BD4E8  48 00 00 18 */	b lbl_805BD500
lbl_805BD4EC:
/* 805BD4EC  80 1E 02 B4 */	lwz r0, 0x2b4(r30)
/* 805BD4F0  2C 00 00 04 */	cmpwi r0, 4
/* 805BD4F4  40 82 00 0C */	bne lbl_805BD500
/* 805BD4F8  3C 60 80 65 */	lis r3, lit_550@ha /* 0x8064AB74@ha */
/* 805BD4FC  C3 E3 AB 74 */	lfs f31, lit_550@l(r3)  /* 0x8064AB74@l */
lbl_805BD500:
/* 805BD500  FC 20 F8 90 */	fmr f1, f31
/* 805BD504  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805BD508  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BD50C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805BD510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BD514  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BD518  7C 08 03 A6 */	mtlr r0
/* 805BD51C  38 21 00 20 */	addi r1, r1, 0x20
/* 805BD520  4E 80 00 20 */	blr 

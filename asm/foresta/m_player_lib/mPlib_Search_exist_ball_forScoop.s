lbl_803DC510:
/* 803DC510  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803DC514  7C 08 02 A6 */	mflr r0
/* 803DC518  90 01 00 44 */	stw r0, 0x44(r1)
/* 803DC51C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803DC520  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803DC524  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803DC528  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 803DC52C  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 803DC530  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 803DC534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DC538  83 E3 1D D8 */	lwz r31, 0x1dd8(r3)
/* 803DC53C  C3 E4 00 00 */	lfs f31, 0(r4)
/* 803DC540  C3 C4 00 04 */	lfs f30, 4(r4)
/* 803DC544  C3 A4 00 08 */	lfs f29, 8(r4)
/* 803DC548  48 00 00 78 */	b lbl_803DC5C0
lbl_803DC54C:
/* 803DC54C  A8 1F 00 00 */	lha r0, 0(r31)
/* 803DC550  2C 00 00 09 */	cmpwi r0, 9
/* 803DC554  40 82 00 68 */	bne lbl_803DC5BC
/* 803DC558  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 803DC55C  3C 60 80 64 */	lis r3, lit_1088@ha /* 0x80642FE0@ha */
/* 803DC560  EC 20 F0 28 */	fsubs f1, f0, f30
/* 803DC564  C0 03 2F E0 */	lfs f0, lit_1088@l(r3)  /* 0x80642FE0@l */
/* 803DC568  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803DC56C  4C 41 13 82 */	cror 2, 1, 2
/* 803DC570  40 82 00 08 */	bne lbl_803DC578
/* 803DC574  48 00 00 08 */	b lbl_803DC57C
lbl_803DC578:
/* 803DC578  FC 20 08 50 */	fneg f1, f1
lbl_803DC57C:
/* 803DC57C  3C 60 80 64 */	lis r3, lit_1502@ha /* 0x80642FFC@ha */
/* 803DC580  C0 03 2F FC */	lfs f0, lit_1502@l(r3)  /* 0x80642FFC@l */
/* 803DC584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803DC588  4C 40 13 82 */	cror 2, 0, 2
/* 803DC58C  40 82 00 30 */	bne lbl_803DC5BC
/* 803DC590  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 803DC594  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 803DC598  EC 21 F8 28 */	fsubs f1, f1, f31
/* 803DC59C  EC 40 E8 28 */	fsubs f2, f0, f29
/* 803DC5A0  48 02 C6 F9 */	bl Math3DVecLengthSquare2D
/* 803DC5A4  3C 60 80 64 */	lis r3, lit_1522@ha /* 0x80643004@ha */
/* 803DC5A8  C0 03 30 04 */	lfs f0, lit_1522@l(r3)  /* 0x80643004@l */
/* 803DC5AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803DC5B0  40 80 00 0C */	bge lbl_803DC5BC
/* 803DC5B4  7F E3 FB 78 */	mr r3, r31
/* 803DC5B8  48 00 00 14 */	b lbl_803DC5CC
lbl_803DC5BC:
/* 803DC5BC  83 FF 01 58 */	lwz r31, 0x158(r31)
lbl_803DC5C0:
/* 803DC5C0  28 1F 00 00 */	cmplwi r31, 0
/* 803DC5C4  40 82 FF 88 */	bne lbl_803DC54C
/* 803DC5C8  38 60 00 00 */	li r3, 0
lbl_803DC5CC:
/* 803DC5CC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803DC5D0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803DC5D4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803DC5D8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803DC5DC  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 803DC5E0  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 803DC5E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803DC5E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DC5EC  7C 08 03 A6 */	mtlr r0
/* 803DC5F0  38 21 00 40 */	addi r1, r1, 0x40
/* 803DC5F4  4E 80 00 20 */	blr 

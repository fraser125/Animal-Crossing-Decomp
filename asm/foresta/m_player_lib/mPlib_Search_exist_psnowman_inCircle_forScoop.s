lbl_803DC32C:
/* 803DC32C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803DC330  7C 08 02 A6 */	mflr r0
/* 803DC334  90 01 00 44 */	stw r0, 0x44(r1)
/* 803DC338  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803DC33C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803DC340  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803DC344  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 803DC348  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 803DC34C  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 803DC350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DC354  FF A0 08 90 */	fmr f29, f1
/* 803DC358  83 E3 1D D8 */	lwz r31, 0x1dd8(r3)
/* 803DC35C  C3 E4 00 00 */	lfs f31, 0(r4)
/* 803DC360  C3 C4 00 08 */	lfs f30, 8(r4)
/* 803DC364  48 00 00 38 */	b lbl_803DC39C
lbl_803DC368:
/* 803DC368  A8 1F 00 00 */	lha r0, 0(r31)
/* 803DC36C  2C 00 00 58 */	cmpwi r0, 0x58
/* 803DC370  40 82 00 28 */	bne lbl_803DC398
/* 803DC374  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 803DC378  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 803DC37C  EC 21 F8 28 */	fsubs f1, f1, f31
/* 803DC380  EC 40 F0 28 */	fsubs f2, f0, f30
/* 803DC384  48 02 C9 15 */	bl Math3DVecLengthSquare2D
/* 803DC388  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 803DC38C  40 80 00 0C */	bge lbl_803DC398
/* 803DC390  7F E3 FB 78 */	mr r3, r31
/* 803DC394  48 00 00 14 */	b lbl_803DC3A8
lbl_803DC398:
/* 803DC398  83 FF 01 58 */	lwz r31, 0x158(r31)
lbl_803DC39C:
/* 803DC39C  28 1F 00 00 */	cmplwi r31, 0
/* 803DC3A0  40 82 FF C8 */	bne lbl_803DC368
/* 803DC3A4  38 60 00 00 */	li r3, 0
lbl_803DC3A8:
/* 803DC3A8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803DC3AC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803DC3B0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803DC3B4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803DC3B8  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 803DC3BC  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 803DC3C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803DC3C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DC3C8  7C 08 03 A6 */	mtlr r0
/* 803DC3CC  38 21 00 40 */	addi r1, r1, 0x40
/* 803DC3D0  4E 80 00 20 */	blr 

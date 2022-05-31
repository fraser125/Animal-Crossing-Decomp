lbl_8040BEE8:
/* 8040BEE8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8040BEEC  7C 08 02 A6 */	mflr r0
/* 8040BEF0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8040BEF4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8040BEF8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8040BEFC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8040BF00  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8040BF04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8040BF08  7C 7F 1B 78 */	mr r31, r3
/* 8040BF0C  FF C0 08 90 */	fmr f30, f1
/* 8040BF10  4B FF C9 DD */	bl cosf_table
/* 8040BF14  FF E0 08 90 */	fmr f31, f1
/* 8040BF18  FC 20 F0 90 */	fmr f1, f30
/* 8040BF1C  4B FF C9 61 */	bl sinf_table
/* 8040BF20  80 1F 00 00 */	lwz r0, 0(r31)
/* 8040BF24  80 7F 00 04 */	lwz r3, 4(r31)
/* 8040BF28  90 01 00 08 */	stw r0, 8(r1)
/* 8040BF2C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8040BF30  C0 01 00 08 */	lfs f0, 8(r1)
/* 8040BF34  90 61 00 0C */	stw r3, 0xc(r1)
/* 8040BF38  EC 60 07 F2 */	fmuls f3, f0, f31
/* 8040BF3C  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 8040BF40  EC 40 00 72 */	fmuls f2, f0, f1
/* 8040BF44  90 01 00 10 */	stw r0, 0x10(r1)
/* 8040BF48  EC 24 00 72 */	fmuls f1, f4, f1
/* 8040BF4C  EC 04 07 F2 */	fmuls f0, f4, f31
/* 8040BF50  EC 23 08 28 */	fsubs f1, f3, f1
/* 8040BF54  EC 02 00 2A */	fadds f0, f2, f0
/* 8040BF58  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8040BF5C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8040BF60  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8040BF64  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8040BF68  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8040BF6C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8040BF70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8040BF74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8040BF78  7C 08 03 A6 */	mtlr r0
/* 8040BF7C  38 21 00 40 */	addi r1, r1, 0x40
/* 8040BF80  4E 80 00 20 */	blr 

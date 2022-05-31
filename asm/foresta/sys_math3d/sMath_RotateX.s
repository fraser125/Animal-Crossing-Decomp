lbl_8040BE4C:
/* 8040BE4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8040BE50  7C 08 02 A6 */	mflr r0
/* 8040BE54  90 01 00 44 */	stw r0, 0x44(r1)
/* 8040BE58  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8040BE5C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8040BE60  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8040BE64  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8040BE68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8040BE6C  7C 7F 1B 78 */	mr r31, r3
/* 8040BE70  FF C0 08 90 */	fmr f30, f1
/* 8040BE74  4B FF CA 79 */	bl cosf_table
/* 8040BE78  FF E0 08 90 */	fmr f31, f1
/* 8040BE7C  FC 20 F0 90 */	fmr f1, f30
/* 8040BE80  4B FF C9 FD */	bl sinf_table
/* 8040BE84  80 7F 00 04 */	lwz r3, 4(r31)
/* 8040BE88  80 1F 00 08 */	lwz r0, 8(r31)
/* 8040BE8C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8040BE90  80 7F 00 00 */	lwz r3, 0(r31)
/* 8040BE94  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8040BE98  90 01 00 10 */	stw r0, 0x10(r1)
/* 8040BE9C  EC 62 07 F2 */	fmuls f3, f2, f31
/* 8040BEA0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8040BEA4  EC 42 00 72 */	fmuls f2, f2, f1
/* 8040BEA8  90 61 00 08 */	stw r3, 8(r1)
/* 8040BEAC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040BEB0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8040BEB4  EC 23 08 28 */	fsubs f1, f3, f1
/* 8040BEB8  EC 02 00 2A */	fadds f0, f2, f0
/* 8040BEBC  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8040BEC0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8040BEC4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8040BEC8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8040BECC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8040BED0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8040BED4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8040BED8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8040BEDC  7C 08 03 A6 */	mtlr r0
/* 8040BEE0  38 21 00 40 */	addi r1, r1, 0x40
/* 8040BEE4  4E 80 00 20 */	blr 

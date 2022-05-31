lbl_8040BDAC:
/* 8040BDAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8040BDB0  7C 08 02 A6 */	mflr r0
/* 8040BDB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8040BDB8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8040BDBC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8040BDC0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8040BDC4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8040BDC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8040BDCC  7C 7F 1B 78 */	mr r31, r3
/* 8040BDD0  FF C0 08 90 */	fmr f30, f1
/* 8040BDD4  4B FF CB 19 */	bl cosf_table
/* 8040BDD8  FF E0 08 90 */	fmr f31, f1
/* 8040BDDC  FC 20 F0 90 */	fmr f1, f30
/* 8040BDE0  4B FF CA 9D */	bl sinf_table
/* 8040BDE4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8040BDE8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8040BDEC  90 61 00 08 */	stw r3, 8(r1)
/* 8040BDF0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8040BDF4  C0 41 00 08 */	lfs f2, 8(r1)
/* 8040BDF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8040BDFC  FC 00 10 50 */	fneg f0, f2
/* 8040BE00  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 8040BE04  EC 62 07 F2 */	fmuls f3, f2, f31
/* 8040BE08  90 61 00 0C */	stw r3, 0xc(r1)
/* 8040BE0C  EC 44 00 72 */	fmuls f2, f4, f1
/* 8040BE10  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040BE14  EC 04 07 F2 */	fmuls f0, f4, f31
/* 8040BE18  EC 43 10 2A */	fadds f2, f3, f2
/* 8040BE1C  EC 01 00 2A */	fadds f0, f1, f0
/* 8040BE20  D0 5F 00 00 */	stfs f2, 0(r31)
/* 8040BE24  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8040BE28  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8040BE2C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8040BE30  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8040BE34  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8040BE38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8040BE3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8040BE40  7C 08 03 A6 */	mtlr r0
/* 8040BE44  38 21 00 40 */	addi r1, r1, 0x40
/* 8040BE48  4E 80 00 20 */	blr 

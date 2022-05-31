lbl_805A538C:
/* 805A538C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A5390  7C 08 02 A6 */	mflr r0
/* 805A5394  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A5398  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805A539C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805A53A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A53A4  FF E0 08 90 */	fmr f31, f1
/* 805A53A8  3B E0 00 00 */	li r31, 0
/* 805A53AC  4B AB 79 49 */	bl fqrand
/* 805A53B0  3C 60 80 65 */	lis r3, lit_532@ha /* 0x8064A454@ha */
/* 805A53B4  EC 3F 00 72 */	fmuls f1, f31, f1
/* 805A53B8  C0 03 A4 54 */	lfs f0, lit_532@l(r3)  /* 0x8064A454@l */
/* 805A53BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A53C0  40 80 00 08 */	bge lbl_805A53C8
/* 805A53C4  3B E0 00 01 */	li r31, 1
lbl_805A53C8:
/* 805A53C8  7F E3 FB 78 */	mr r3, r31
/* 805A53CC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805A53D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A53D4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805A53D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A53DC  7C 08 03 A6 */	mtlr r0
/* 805A53E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A53E4  4E 80 00 20 */	blr 

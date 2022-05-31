lbl_805A34E0:
/* 805A34E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A34E4  7C 08 02 A6 */	mflr r0
/* 805A34E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A34EC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805A34F0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805A34F4  FF E0 08 90 */	fmr f31, f1
/* 805A34F8  4B E1 75 F9 */	bl sin_s
/* 805A34FC  EC 3F 00 72 */	fmuls f1, f31, f1
/* 805A3500  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805A3504  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A3508  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805A350C  7C 08 03 A6 */	mtlr r0
/* 805A3510  38 21 00 20 */	addi r1, r1, 0x20
/* 805A3514  4E 80 00 20 */	blr 

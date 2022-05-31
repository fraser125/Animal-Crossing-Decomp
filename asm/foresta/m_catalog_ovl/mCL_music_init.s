lbl_805C9A84:
/* 805C9A84  38 E0 00 00 */	li r7, 0
/* 805C9A88  3C A0 80 65 */	lis r5, lit_569@ha /* 0x8064AEE8@ha */
/* 805C9A8C  90 E3 50 80 */	stw r7, 0x5080(r3)
/* 805C9A90  38 C5 AE E8 */	addi r6, r5, lit_569@l /* 0x8064AEE8@l */
/* 805C9A94  38 00 00 04 */	li r0, 4
/* 805C9A98  3C A0 80 65 */	lis r5, lit_554@ha /* 0x8064AEE0@ha */
/* 805C9A9C  B0 03 50 88 */	sth r0, 0x5088(r3)
/* 805C9AA0  38 04 D6 00 */	addi r0, r4, -10752
/* 805C9AA4  38 80 00 3C */	li r4, 0x3c
/* 805C9AA8  C0 26 00 00 */	lfs f1, 0(r6)
/* 805C9AAC  90 E3 50 8C */	stw r7, 0x508c(r3)
/* 805C9AB0  C0 05 AE E0 */	lfs f0, lit_554@l(r5)  /* 0x8064AEE0@l */
/* 805C9AB4  B0 83 50 8A */	sth r4, 0x508a(r3)
/* 805C9AB8  D0 23 50 90 */	stfs f1, 0x5090(r3)
/* 805C9ABC  D0 03 50 94 */	stfs f0, 0x5094(r3)
/* 805C9AC0  B0 03 00 00 */	sth r0, 0(r3)
/* 805C9AC4  4E 80 00 20 */	blr 

lbl_803FA764:
/* 803FA764  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FA768  7C 08 02 A6 */	mflr r0
/* 803FA76C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FA770  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803FA774  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 803FA778  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803FA77C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803FA780  3C 80 80 64 */	lis r4, lit_1733@ha /* 0x80643454@ha */
/* 803FA784  38 00 3C 1C */	li r0, 0x3c1c
/* 803FA788  B0 03 00 00 */	sth r0, 0(r3)
/* 803FA78C  3B C3 00 02 */	addi r30, r3, 2
/* 803FA790  C3 E4 34 54 */	lfs f31, lit_1733@l(r4)  /* 0x80643454@l */
/* 803FA794  3B E0 00 00 */	li r31, 0
lbl_803FA798:
/* 803FA798  4B C6 25 5D */	bl fqrand
/* 803FA79C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803FA7A0  3B FF 00 01 */	addi r31, r31, 1
/* 803FA7A4  2C 1F 00 03 */	cmpwi r31, 3
/* 803FA7A8  FC 00 00 1E */	fctiwz f0, f0
/* 803FA7AC  D8 01 00 08 */	stfd f0, 8(r1)
/* 803FA7B0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803FA7B4  B0 1E 00 00 */	sth r0, 0(r30)
/* 803FA7B8  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803FA7BC  38 03 00 01 */	addi r0, r3, 1
/* 803FA7C0  B0 1E 00 00 */	sth r0, 0(r30)
/* 803FA7C4  3B DE 00 02 */	addi r30, r30, 2
/* 803FA7C8  41 80 FF D0 */	blt lbl_803FA798
/* 803FA7CC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 803FA7D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FA7D4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803FA7D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803FA7DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803FA7E0  7C 08 03 A6 */	mtlr r0
/* 803FA7E4  38 21 00 30 */	addi r1, r1, 0x30
/* 803FA7E8  4E 80 00 20 */	blr 

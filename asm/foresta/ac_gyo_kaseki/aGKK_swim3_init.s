lbl_805A6880:
/* 805A6880  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A6884  7C 08 02 A6 */	mflr r0
/* 805A6888  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A688C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A6890  7C 7F 1B 78 */	mr r31, r3
/* 805A6894  4B AB 64 99 */	bl fqrand2
/* 805A6898  3C 60 80 65 */	lis r3, lit_898@ha /* 0x8064A4B4@ha */
/* 805A689C  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A68A0  C0 03 A4 B4 */	lfs f0, lit_898@l(r3)  /* 0x8064A4B4@l */
/* 805A68A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A68A8  FC 00 00 1E */	fctiwz f0, f0
/* 805A68AC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A68B0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805A68B4  7C 00 1A 14 */	add r0, r0, r3
/* 805A68B8  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805A68BC  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A68C0  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 805A68C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A68C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A68CC  7C 08 03 A6 */	mtlr r0
/* 805A68D0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A68D4  4E 80 00 20 */	blr 

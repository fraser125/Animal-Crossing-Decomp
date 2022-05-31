lbl_8053A8C4:
/* 8053A8C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053A8C8  7C 08 02 A6 */	mflr r0
/* 8053A8CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053A8D0  38 00 00 00 */	li r0, 0
/* 8053A8D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8053A8D8  7C 7F 1B 78 */	mr r31, r3
/* 8053A8DC  90 03 09 C8 */	stw r0, 0x9c8(r3)
/* 8053A8E0  4B B2 24 15 */	bl fqrand
/* 8053A8E4  3C 60 80 65 */	lis r3, lit_950@ha /* 0x80649294@ha */
/* 8053A8E8  C0 03 92 94 */	lfs f0, lit_950@l(r3)  /* 0x80649294@l */
/* 8053A8EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8053A8F0  FC 00 00 1E */	fctiwz f0, f0
/* 8053A8F4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8053A8F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8053A8FC  1C 60 00 3C */	mulli r3, r0, 0x3c
/* 8053A900  38 03 00 3C */	addi r0, r3, 0x3c
/* 8053A904  90 1F 09 CC */	stw r0, 0x9cc(r31)
/* 8053A908  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053A90C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053A910  7C 08 03 A6 */	mtlr r0
/* 8053A914  38 21 00 20 */	addi r1, r1, 0x20
/* 8053A918  4E 80 00 20 */	blr 

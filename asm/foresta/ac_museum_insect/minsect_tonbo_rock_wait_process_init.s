lbl_80460800:
/* 80460800  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80460804  7C 08 02 A6 */	mflr r0
/* 80460808  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 8046080C  3C A0 80 46 */	lis r5, minsect_tonbo_rock_wait_process@ha /* 0x80460864@ha */
/* 80460810  90 01 00 24 */	stw r0, 0x24(r1)
/* 80460814  38 05 08 64 */	addi r0, r5, minsect_tonbo_rock_wait_process@l /* 0x80460864@l */
/* 80460818  C0 04 45 BC */	lfs f0, lit_459@l(r4)  /* 0x806445BC@l */
/* 8046081C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80460820  7C 7F 1B 78 */	mr r31, r3
/* 80460824  90 03 00 04 */	stw r0, 4(r3)
/* 80460828  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8046082C  4B BF C4 C9 */	bl fqrand
/* 80460830  3C 60 80 64 */	lis r3, lit_676@ha /* 0x8064464C@ha */
/* 80460834  C0 03 46 4C */	lfs f0, lit_676@l(r3)  /* 0x8064464C@l */
/* 80460838  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046083C  FC 00 00 1E */	fctiwz f0, f0
/* 80460840  D8 01 00 08 */	stfd f0, 8(r1)
/* 80460844  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80460848  38 03 00 3C */	addi r0, r3, 0x3c
/* 8046084C  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80460850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80460854  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80460858  7C 08 03 A6 */	mtlr r0
/* 8046085C  38 21 00 20 */	addi r1, r1, 0x20
/* 80460860  4E 80 00 20 */	blr 

lbl_8045112C:
/* 8045112C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80451130  7C 08 02 A6 */	mflr r0
/* 80451134  90 01 00 24 */	stw r0, 0x24(r1)
/* 80451138  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045113C  AB E3 06 46 */	lha r31, 0x646(r3)
/* 80451140  4B C0 BB B5 */	bl fqrand
/* 80451144  3C 60 80 64 */	lis r3, lit_840@ha /* 0x806442D8@ha */
/* 80451148  C0 03 42 D8 */	lfs f0, lit_840@l(r3)  /* 0x806442D8@l */
/* 8045114C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80451150  FC 00 00 1E */	fctiwz f0, f0
/* 80451154  D8 01 00 08 */	stfd f0, 8(r1)
/* 80451158  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8045115C  7C 60 07 34 */	extsh r0, r3
/* 80451160  7C 00 F8 00 */	cmpw r0, r31
/* 80451164  40 82 00 18 */	bne lbl_8045117C
/* 80451168  2C 00 00 02 */	cmpwi r0, 2
/* 8045116C  40 80 00 0C */	bge lbl_80451178
/* 80451170  38 63 00 01 */	addi r3, r3, 1
/* 80451174  48 00 00 08 */	b lbl_8045117C
lbl_80451178:
/* 80451178  38 60 00 00 */	li r3, 0
lbl_8045117C:
/* 8045117C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80451180  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80451184  7C 08 03 A6 */	mtlr r0
/* 80451188  38 21 00 20 */	addi r1, r1, 0x20
/* 8045118C  4E 80 00 20 */	blr 
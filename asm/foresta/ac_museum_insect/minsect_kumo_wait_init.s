lbl_80469CAC:
/* 80469CAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80469CB0  7C 08 02 A6 */	mflr r0
/* 80469CB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80469CB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80469CBC  7C 7F 1B 78 */	mr r31, r3
/* 80469CC0  4B BF 30 35 */	bl fqrand
/* 80469CC4  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 80469CC8  C0 03 46 64 */	lfs f0, lit_762@l(r3)  /* 0x80644664@l */
/* 80469CCC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80469CD0  FC 00 00 1E */	fctiwz f0, f0
/* 80469CD4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80469CD8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80469CDC  38 03 00 28 */	addi r0, r3, 0x28
/* 80469CE0  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80469CE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80469CE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80469CEC  7C 08 03 A6 */	mtlr r0
/* 80469CF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80469CF4  4E 80 00 20 */	blr 

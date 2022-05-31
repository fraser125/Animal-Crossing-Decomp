lbl_8044B008:
/* 8044B008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8044B00C  7C 08 02 A6 */	mflr r0
/* 8044B010  90 01 00 24 */	stw r0, 0x24(r1)
/* 8044B014  38 E1 00 08 */	addi r7, r1, 8
/* 8044B018  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8044B01C  7C 7F 1B 78 */	mr r31, r3
/* 8044B020  38 BF 06 14 */	addi r5, r31, 0x614
/* 8044B024  38 DF 06 12 */	addi r6, r31, 0x612
/* 8044B028  4B FE C1 95 */	bl mfish_get_player_angle
/* 8044B02C  38 00 00 78 */	li r0, 0x78
/* 8044B030  B0 1F 06 26 */	sth r0, 0x626(r31)
/* 8044B034  A8 1F 06 26 */	lha r0, 0x626(r31)
/* 8044B038  B0 1F 06 28 */	sth r0, 0x628(r31)
/* 8044B03C  4B C1 1C B9 */	bl fqrand
/* 8044B040  3C 60 80 64 */	lis r3, lit_5655@ha /* 0x80644418@ha */
/* 8044B044  C0 03 44 18 */	lfs f0, lit_5655@l(r3)  /* 0x80644418@l */
/* 8044B048  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044B04C  FC 00 00 1E */	fctiwz f0, f0
/* 8044B050  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8044B054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044B058  B0 1F 06 40 */	sth r0, 0x640(r31)
/* 8044B05C  4B C1 1C 99 */	bl fqrand
/* 8044B060  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8044B064  3C 60 80 45 */	lis r3, mfish_kingyo_peck@ha /* 0x8044B094@ha */
/* 8044B068  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8044B06C  38 03 B0 94 */	addi r0, r3, mfish_kingyo_peck@l /* 0x8044B094@l */
/* 8044B070  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044B074  EC 00 08 2A */	fadds f0, f0, f1
/* 8044B078  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 8044B07C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8044B080  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8044B084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044B088  7C 08 03 A6 */	mtlr r0
/* 8044B08C  38 21 00 20 */	addi r1, r1, 0x20
/* 8044B090  4E 80 00 20 */	blr 

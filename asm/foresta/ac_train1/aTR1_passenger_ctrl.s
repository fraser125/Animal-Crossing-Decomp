lbl_805C0838:
/* 805C0838  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C083C  7C 08 02 A6 */	mflr r0
/* 805C0840  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C0844  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805C0848  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 805C084C  2C 00 00 01 */	cmpwi r0, 1
/* 805C0850  40 82 00 8C */	bne lbl_805C08DC
/* 805C0854  3C 80 80 65 */	lis r4, lit_519@ha /* 0x8064ACB8@ha */
/* 805C0858  3C A0 80 65 */	lis r5, lit_520@ha /* 0x8064ACBC@ha */
/* 805C085C  38 C4 AC B8 */	addi r6, r4, lit_519@l /* 0x8064ACB8@l */
/* 805C0860  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805C0864  C0 46 00 00 */	lfs f2, 0(r6)
/* 805C0868  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 805C086C  38 E4 F0 5C */	addi r7, r4, ZeroSVec@l /* 0x8065F05C@l */
/* 805C0870  C0 25 AC BC */	lfs f1, lit_520@l(r5)  /* 0x8064ACBC@l */
/* 805C0874  EC 02 00 2A */	fadds f0, f2, f0
/* 805C0878  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805C087C  A8 C7 00 00 */	lha r6, 0(r7)
/* 805C0880  A8 A7 00 02 */	lha r5, 2(r7)
/* 805C0884  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C0888  A8 07 00 04 */	lha r0, 4(r7)
/* 805C088C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805C0890  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 805C0894  EC 01 00 2A */	fadds f0, f1, f0
/* 805C0898  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C089C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805C08A0  7F E3 FB 78 */	mr r3, r31
/* 805C08A4  EC 01 00 2A */	fadds f0, f1, f0
/* 805C08A8  B0 C1 00 08 */	sth r6, 8(r1)
/* 805C08AC  B0 A1 00 0A */	sth r5, 0xa(r1)
/* 805C08B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C08B4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805C08B8  4B E1 8D 89 */	bl get_player_actor_withoutCheck
/* 805C08BC  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 805C08C0  7F E3 FB 78 */	mr r3, r31
/* 805C08C4  38 81 00 10 */	addi r4, r1, 0x10
/* 805C08C8  38 A1 00 08 */	addi r5, r1, 8
/* 805C08CC  38 C0 00 2E */	li r6, 0x2e
/* 805C08D0  7D 89 03 A6 */	mtctr r12
/* 805C08D4  4E 80 04 21 */	bctrl 
/* 805C08D8  48 00 00 84 */	b lbl_805C095C
lbl_805C08DC:
/* 805C08DC  80 03 02 BC */	lwz r0, 0x2bc(r3)
/* 805C08E0  2C 00 00 01 */	cmpwi r0, 1
/* 805C08E4  40 82 00 78 */	bne lbl_805C095C
/* 805C08E8  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064ACB0@ha */
/* 805C08EC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805C08F0  38 C4 AC B0 */	addi r6, r4, lit_488@l /* 0x8064ACB0@l */
/* 805C08F4  3C A0 80 65 */	lis r5, lit_521@ha /* 0x8064ACC0@ha */
/* 805C08F8  C0 26 00 00 */	lfs f1, 0(r6)
/* 805C08FC  38 C5 AC C0 */	addi r6, r5, lit_521@l /* 0x8064ACC0@l */
/* 805C0900  3C 80 80 65 */	lis r4, lit_520@ha /* 0x8064ACBC@ha */
/* 805C0904  C0 46 00 00 */	lfs f2, 0(r6)
/* 805C0908  EC 01 00 2A */	fadds f0, f1, f0
/* 805C090C  38 A4 AC BC */	addi r5, r4, lit_520@l /* 0x8064ACBC@l */
/* 805C0910  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805C0914  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C0918  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 805C091C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C0920  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805C0924  EC 02 00 2A */	fadds f0, f2, f0
/* 805C0928  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C092C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805C0930  7F E3 FB 78 */	mr r3, r31
/* 805C0934  EC 01 00 2A */	fadds f0, f1, f0
/* 805C0938  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C093C  4B E1 8D 05 */	bl get_player_actor_withoutCheck
/* 805C0940  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 805C0944  7F E3 FB 78 */	mr r3, r31
/* 805C0948  38 81 00 10 */	addi r4, r1, 0x10
/* 805C094C  38 A0 00 00 */	li r5, 0
/* 805C0950  38 C0 00 0E */	li r6, 0xe
/* 805C0954  7D 89 03 A6 */	mtctr r12
/* 805C0958  4E 80 04 21 */	bctrl 
lbl_805C095C:
/* 805C095C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C0960  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805C0964  7C 08 03 A6 */	mtlr r0
/* 805C0968  38 21 00 30 */	addi r1, r1, 0x30
/* 805C096C  4E 80 00 20 */	blr 

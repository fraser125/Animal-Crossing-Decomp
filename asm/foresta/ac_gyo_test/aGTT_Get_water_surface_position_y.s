lbl_805A3828:
/* 805A3828  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A382C  7C 08 02 A6 */	mflr r0
/* 805A3830  3C 80 80 6C */	lis r4, lit_492@ha /* 0x806C3EE8@ha */
/* 805A3834  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A3838  38 84 3E E8 */	addi r4, r4, lit_492@l /* 0x806C3EE8@l */
/* 805A383C  80 A3 00 00 */	lwz r5, 0(r3)
/* 805A3840  80 C3 00 04 */	lwz r6, 4(r3)
/* 805A3844  80 03 00 08 */	lwz r0, 8(r3)
/* 805A3848  38 61 00 08 */	addi r3, r1, 8
/* 805A384C  90 A1 00 08 */	stw r5, 8(r1)
/* 805A3850  38 A0 02 BB */	li r5, 0x2bb
/* 805A3854  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805A3858  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A385C  4B DF 07 5D */	bl mCoBG_GetWaterHeight_File
/* 805A3860  3C 60 80 65 */	lis r3, lit_594@ha /* 0x8064A3E0@ha */
/* 805A3864  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A3868  C0 03 A3 E0 */	lfs f0, lit_594@l(r3)  /* 0x8064A3E0@l */
/* 805A386C  EC 21 00 28 */	fsubs f1, f1, f0
/* 805A3870  7C 08 03 A6 */	mtlr r0
/* 805A3874  38 21 00 20 */	addi r1, r1, 0x20
/* 805A3878  4E 80 00 20 */	blr 

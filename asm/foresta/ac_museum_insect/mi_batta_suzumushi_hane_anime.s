lbl_80461474:
/* 80461474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80461478  7C 08 02 A6 */	mflr r0
/* 8046147C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80461480  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80461484  7C 7F 1B 78 */	mr r31, r3
/* 80461488  A9 43 00 82 */	lha r10, 0x82(r3)
/* 8046148C  2C 0A 00 07 */	cmpwi r10, 7
/* 80461490  40 80 00 AC */	bge lbl_8046153C
/* 80461494  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80461498  3C C0 43 30 */	lis r6, 0x4330
/* 8046149C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 804614A0  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 804614A4  80 84 00 00 */	lwz r4, 0(r4)
/* 804614A8  38 E3 46 3C */	addi r7, r3, lit_589@l /* 0x8064463C@l */
/* 804614AC  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80644654@ha */
/* 804614B0  3C A0 80 64 */	lis r5, lit_511@ha /* 0x8064460C@ha */
/* 804614B4  A8 04 16 96 */	lha r0, 0x1696(r4)
/* 804614B8  39 03 46 54 */	addi r8, r3, lit_678@l /* 0x80644654@l */
/* 804614BC  39 25 46 0C */	addi r9, r5, lit_511@l /* 0x8064460C@l */
/* 804614C0  3C A0 80 68 */	lis r5, scaleX_table_1689@ha /* 0x80686AF4@ha */
/* 804614C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804614C8  3C 60 80 64 */	lis r3, lit_809@ha /* 0x80644698@ha */
/* 804614CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804614D0  38 83 46 98 */	addi r4, r3, lit_809@l /* 0x80644698@l */
/* 804614D4  C8 27 00 00 */	lfd f1, 0(r7)
/* 804614D8  55 40 10 3A */	slwi r0, r10, 2
/* 804614DC  90 C1 00 08 */	stw r6, 8(r1)
/* 804614E0  38 A5 6A F4 */	addi r5, r5, scaleX_table_1689@l /* 0x80686AF4@l */
/* 804614E4  C0 68 00 00 */	lfs f3, 0(r8)
/* 804614E8  38 7F 00 58 */	addi r3, r31, 0x58
/* 804614EC  C8 01 00 08 */	lfd f0, 8(r1)
/* 804614F0  C0 89 00 00 */	lfs f4, 0(r9)
/* 804614F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 804614F8  7C 05 04 2E */	lfsx f0, r5, r0
/* 804614FC  C0 44 00 00 */	lfs f2, 0(r4)
/* 80461500  EC 23 00 72 */	fmuls f1, f3, f1
/* 80461504  EC 24 08 2A */	fadds f1, f4, f1
/* 80461508  EC 21 00 32 */	fmuls f1, f1, f0
/* 8046150C  4B F5 97 5D */	bl chase_f
/* 80461510  2C 03 00 01 */	cmpwi r3, 1
/* 80461514  40 82 00 30 */	bne lbl_80461544
/* 80461518  A8 7F 00 82 */	lha r3, 0x82(r31)
/* 8046151C  38 03 FF FF */	addi r0, r3, -1
/* 80461520  B0 1F 00 82 */	sth r0, 0x82(r31)
/* 80461524  A8 1F 00 82 */	lha r0, 0x82(r31)
/* 80461528  2C 00 00 00 */	cmpwi r0, 0
/* 8046152C  40 80 00 18 */	bge lbl_80461544
/* 80461530  38 00 00 00 */	li r0, 0
/* 80461534  B0 1F 00 82 */	sth r0, 0x82(r31)
/* 80461538  48 00 00 0C */	b lbl_80461544
lbl_8046153C:
/* 8046153C  38 0A FF FF */	addi r0, r10, -1
/* 80461540  B0 1F 00 82 */	sth r0, 0x82(r31)
lbl_80461544:
/* 80461544  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80461548  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046154C  7C 08 03 A6 */	mtlr r0
/* 80461550  38 21 00 20 */	addi r1, r1, 0x20
/* 80461554  4E 80 00 20 */	blr 

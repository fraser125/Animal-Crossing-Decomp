lbl_80462488:
/* 80462488  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046248C  7C 08 02 A6 */	mflr r0
/* 80462490  90 01 00 24 */	stw r0, 0x24(r1)
/* 80462494  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80462498  7C 7F 1B 78 */	mr r31, r3
/* 8046249C  A9 43 00 7E */	lha r10, 0x7e(r3)
/* 804624A0  2C 0A 00 07 */	cmpwi r10, 7
/* 804624A4  40 80 00 D4 */	bge lbl_80462578
/* 804624A8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804624AC  3C C0 43 30 */	lis r6, 0x4330
/* 804624B0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 804624B4  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 804624B8  80 84 00 00 */	lwz r4, 0(r4)
/* 804624BC  38 E3 46 3C */	addi r7, r3, lit_589@l /* 0x8064463C@l */
/* 804624C0  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80644654@ha */
/* 804624C4  3C A0 80 64 */	lis r5, lit_511@ha /* 0x8064460C@ha */
/* 804624C8  A8 04 16 96 */	lha r0, 0x1696(r4)
/* 804624CC  39 03 46 54 */	addi r8, r3, lit_678@l /* 0x80644654@l */
/* 804624D0  39 25 46 0C */	addi r9, r5, lit_511@l /* 0x8064460C@l */
/* 804624D4  3C A0 80 68 */	lis r5, scaleX_table_1956@ha /* 0x80686B60@ha */
/* 804624D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804624DC  3C 60 80 64 */	lis r3, lit_1966@ha /* 0x806447B0@ha */
/* 804624E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804624E4  38 83 47 B0 */	addi r4, r3, lit_1966@l /* 0x806447B0@l */
/* 804624E8  C8 27 00 00 */	lfd f1, 0(r7)
/* 804624EC  55 40 10 3A */	slwi r0, r10, 2
/* 804624F0  90 C1 00 08 */	stw r6, 8(r1)
/* 804624F4  38 A5 6B 60 */	addi r5, r5, scaleX_table_1956@l /* 0x80686B60@l */
/* 804624F8  C0 68 00 00 */	lfs f3, 0(r8)
/* 804624FC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80462500  C8 01 00 08 */	lfd f0, 8(r1)
/* 80462504  C0 89 00 00 */	lfs f4, 0(r9)
/* 80462508  EC 20 08 28 */	fsubs f1, f0, f1
/* 8046250C  7C 05 04 2E */	lfsx f0, r5, r0
/* 80462510  C0 44 00 00 */	lfs f2, 0(r4)
/* 80462514  EC 23 00 72 */	fmuls f1, f3, f1
/* 80462518  EC 24 08 2A */	fadds f1, f4, f1
/* 8046251C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80462520  4B F5 87 49 */	bl chase_f
/* 80462524  2C 03 00 01 */	cmpwi r3, 1
/* 80462528  40 82 00 58 */	bne lbl_80462580
/* 8046252C  A8 7F 00 7E */	lha r3, 0x7e(r31)
/* 80462530  38 03 FF FF */	addi r0, r3, -1
/* 80462534  B0 1F 00 7E */	sth r0, 0x7e(r31)
/* 80462538  A8 1F 00 7E */	lha r0, 0x7e(r31)
/* 8046253C  2C 00 00 00 */	cmpwi r0, 0
/* 80462540  40 80 00 40 */	bge lbl_80462580
/* 80462544  4B BF A7 B1 */	bl fqrand
/* 80462548  3C 80 80 64 */	lis r4, lit_507@ha /* 0x806445EC@ha */
/* 8046254C  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 80462550  C0 44 45 EC */	lfs f2, lit_507@l(r4)  /* 0x806445EC@l */
/* 80462554  C0 03 46 48 */	lfs f0, lit_675@l(r3)  /* 0x80644648@l */
/* 80462558  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046255C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80462560  FC 00 00 1E */	fctiwz f0, f0
/* 80462564  D8 01 00 08 */	stfd f0, 8(r1)
/* 80462568  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046256C  38 03 00 43 */	addi r0, r3, 0x43
/* 80462570  B0 1F 00 7E */	sth r0, 0x7e(r31)
/* 80462574  48 00 00 0C */	b lbl_80462580
lbl_80462578:
/* 80462578  38 0A FF FF */	addi r0, r10, -1
/* 8046257C  B0 1F 00 7E */	sth r0, 0x7e(r31)
lbl_80462580:
/* 80462580  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80462584  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80462588  7C 08 03 A6 */	mtlr r0
/* 8046258C  38 21 00 20 */	addi r1, r1, 0x20
/* 80462590  4E 80 00 20 */	blr 

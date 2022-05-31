lbl_803B1520:
/* 803B1520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B1524  7C 08 02 A6 */	mflr r0
/* 803B1528  3C A0 80 64 */	lis r5, lit_384@ha /* 0x80642170@ha */
/* 803B152C  7C 64 1B 78 */	mr r4, r3
/* 803B1530  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B1534  39 20 FF FF */	li r9, -1
/* 803B1538  C0 25 21 70 */	lfs f1, lit_384@l(r5)  /* 0x80642170@l */
/* 803B153C  38 00 00 00 */	li r0, 0
/* 803B1540  91 21 00 08 */	stw r9, 8(r1)
/* 803B1544  38 63 1D A8 */	addi r3, r3, 0x1da8
/* 803B1548  FC 40 08 90 */	fmr f2, f1
/* 803B154C  38 A0 00 B2 */	li r5, 0xb2
/* 803B1550  90 01 00 0C */	stw r0, 0xc(r1)
/* 803B1554  FC 60 08 90 */	fmr f3, f1
/* 803B1558  38 C0 00 00 */	li r6, 0
/* 803B155C  38 E0 00 00 */	li r7, 0
/* 803B1560  90 01 00 10 */	stw r0, 0x10(r1)
/* 803B1564  39 00 00 00 */	li r8, 0
/* 803B1568  39 40 FF FF */	li r10, -1
/* 803B156C  91 21 00 14 */	stw r9, 0x14(r1)
/* 803B1570  91 21 00 18 */	stw r9, 0x18(r1)
/* 803B1574  39 20 FF FF */	li r9, -1
/* 803B1578  4B FC 41 D1 */	bl Actor_info_make_actor
/* 803B157C  28 03 00 00 */	cmplwi r3, 0
/* 803B1580  41 82 00 4C */	beq lbl_803B15CC
/* 803B1584  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B1588  3C A0 80 64 */	lis r5, lit_385@ha /* 0x80642174@ha */
/* 803B158C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B1590  38 00 00 02 */	li r0, 2
/* 803B1594  3C C4 00 03 */	addis r6, r4, 3
/* 803B1598  3C 60 80 64 */	lis r3, lit_386@ha /* 0x80642178@ha */
/* 803B159C  B0 06 88 94 */	sth r0, -0x776c(r6)
/* 803B15A0  38 83 21 78 */	addi r4, r3, lit_386@l /* 0x80642178@l */
/* 803B15A4  C0 24 00 00 */	lfs f1, 0(r4)
/* 803B15A8  3C 60 81 16 */	lis r3, fuusen_DEBUG_mode_flag@ha /* 0x81167DA8@ha */
/* 803B15AC  C0 06 88 98 */	lfs f0, -0x7768(r6)
/* 803B15B0  38 00 00 01 */	li r0, 1
/* 803B15B4  C0 45 21 74 */	lfs f2, lit_385@l(r5)  /* 0x80642174@l */
/* 803B15B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 803B15BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 803B15C0  D0 06 88 98 */	stfs f0, -0x7768(r6)
/* 803B15C4  90 03 7D A8 */	stw r0, fuusen_DEBUG_mode_flag@l(r3)  /* 0x81167DA8@l */
/* 803B15C8  48 00 00 18 */	b lbl_803B15E0
lbl_803B15CC:
/* 803B15CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B15D0  38 00 00 04 */	li r0, 4
/* 803B15D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B15D8  3C 63 00 03 */	addis r3, r3, 3
/* 803B15DC  B0 03 88 94 */	sth r0, -0x776c(r3)
lbl_803B15E0:
/* 803B15E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B15E4  7C 08 03 A6 */	mtlr r0
/* 803B15E8  38 21 00 20 */	addi r1, r1, 0x20
/* 803B15EC  4E 80 00 20 */	blr 

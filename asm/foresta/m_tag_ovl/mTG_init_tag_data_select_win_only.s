lbl_805F172C:
/* 805F172C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F1730  7C 08 02 A6 */	mflr r0
/* 805F1734  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F1738  38 A1 00 0C */	addi r5, r1, 0xc
/* 805F173C  38 C1 00 08 */	addi r6, r1, 8
/* 805F1740  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805F1744  7C 7F 1B 78 */	mr r31, r3
/* 805F1748  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805F174C  4B FF E6 49 */	bl mTG_get_col_width_and_line_select
/* 805F1750  3C 60 80 65 */	lis r3, lit_874@ha /* 0x8064B868@ha */
/* 805F1754  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805F1758  C0 43 B8 68 */	lfs f2, lit_874@l(r3)  /* 0x8064B868@l */
/* 805F175C  7F E3 FB 78 */	mr r3, r31
/* 805F1760  C0 01 00 08 */	lfs f0, 8(r1)
/* 805F1764  38 80 00 02 */	li r4, 2
/* 805F1768  EC 22 00 72 */	fmuls f1, f2, f1
/* 805F176C  EC 42 00 32 */	fmuls f2, f2, f0
/* 805F1770  4B FF E2 8D */	bl mTG_set_tag_win_scale_p
/* 805F1774  7F E3 FB 78 */	mr r3, r31
/* 805F1778  38 81 00 10 */	addi r4, r1, 0x10
/* 805F177C  4B FF E4 A9 */	bl mTG_check_edge_right_select
/* 805F1780  7C 7E 1B 78 */	mr r30, r3
/* 805F1784  7F E3 FB 78 */	mr r3, r31
/* 805F1788  4B FF E5 05 */	bl mTG_check_edge_foot_select
/* 805F178C  2C 1E 00 00 */	cmpwi r30, 0
/* 805F1790  41 82 00 38 */	beq lbl_805F17C8
/* 805F1794  3C 80 80 65 */	lis r4, lit_630@ha /* 0x8064B838@ha */
/* 805F1798  38 00 00 01 */	li r0, 1
/* 805F179C  2C 03 00 00 */	cmpwi r3, 0
/* 805F17A0  98 1F 00 01 */	stb r0, 1(r31)
/* 805F17A4  C0 84 B8 38 */	lfs f4, lit_630@l(r4)  /* 0x8064B838@l */
/* 805F17A8  41 82 00 14 */	beq lbl_805F17BC
/* 805F17AC  3C 60 80 65 */	lis r3, lit_877@ha /* 0x8064B874@ha */
/* 805F17B0  38 00 00 00 */	li r0, 0
/* 805F17B4  C0 A3 B8 74 */	lfs f5, lit_877@l(r3)  /* 0x8064B874@l */
/* 805F17B8  48 00 00 40 */	b lbl_805F17F8
lbl_805F17BC:
/* 805F17BC  FC A0 20 90 */	fmr f5, f4
/* 805F17C0  38 00 00 02 */	li r0, 2
/* 805F17C4  48 00 00 34 */	b lbl_805F17F8
lbl_805F17C8:
/* 805F17C8  3C 80 80 65 */	lis r4, lit_877@ha /* 0x8064B874@ha */
/* 805F17CC  38 00 00 02 */	li r0, 2
/* 805F17D0  2C 03 00 00 */	cmpwi r3, 0
/* 805F17D4  98 1F 00 01 */	stb r0, 1(r31)
/* 805F17D8  C0 84 B8 74 */	lfs f4, lit_877@l(r4)  /* 0x8064B874@l */
/* 805F17DC  41 82 00 10 */	beq lbl_805F17EC
/* 805F17E0  FC A0 20 90 */	fmr f5, f4
/* 805F17E4  38 00 00 01 */	li r0, 1
/* 805F17E8  48 00 00 10 */	b lbl_805F17F8
lbl_805F17EC:
/* 805F17EC  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805F17F0  38 00 00 03 */	li r0, 3
/* 805F17F4  C0 A3 B8 38 */	lfs f5, lit_630@l(r3)  /* 0x8064B838@l */
lbl_805F17F8:
/* 805F17F8  3C 80 80 6D */	lis r4, other_arrow_offset_dis@ha /* 0x806D09C0@ha */
/* 805F17FC  54 06 18 38 */	slwi r6, r0, 3
/* 805F1800  38 04 09 C0 */	addi r0, r4, other_arrow_offset_dis@l /* 0x806D09C0@l */
/* 805F1804  3C 60 80 65 */	lis r3, lit_1014@ha /* 0x8064B88C@ha */
/* 805F1808  7C E0 32 14 */	add r7, r0, r6
/* 805F180C  3C A0 80 6D */	lis r5, other_arrow_min_offset@ha /* 0x806D09A0@ha */
/* 805F1810  C0 23 B8 8C */	lfs f1, lit_1014@l(r3)  /* 0x8064B88C@l */
/* 805F1814  38 05 09 A0 */	addi r0, r5, other_arrow_min_offset@l /* 0x806D09A0@l */
/* 805F1818  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805F181C  3C 60 80 65 */	lis r3, lit_647@ha /* 0x8064B83C@ha */
/* 805F1820  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805F1824  7C A0 32 14 */	add r5, r0, r6
/* 805F1828  C0 67 00 00 */	lfs f3, 0(r7)
/* 805F182C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1830  38 83 B8 3C */	addi r4, r3, lit_647@l /* 0x8064B83C@l */
/* 805F1834  3C 60 80 65 */	lis r3, lit_1015@ha /* 0x8064B890@ha */
/* 805F1838  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805F183C  C0 65 00 00 */	lfs f3, 0(r5)
/* 805F1840  EC 20 01 32 */	fmuls f1, f0, f4
/* 805F1844  C0 03 B8 90 */	lfs f0, lit_1015@l(r3)  /* 0x8064B890@l */
/* 805F1848  EC 63 10 2A */	fadds f3, f3, f2
/* 805F184C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805F1850  EC 23 08 2A */	fadds f1, f3, f1
/* 805F1854  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 805F1858  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 805F185C  C0 67 00 04 */	lfs f3, 4(r7)
/* 805F1860  EC 22 00 72 */	fmuls f1, f2, f1
/* 805F1864  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805F1868  C0 85 00 04 */	lfs f4, 4(r5)
/* 805F186C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805F1870  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F1874  EC 24 10 2A */	fadds f1, f4, f2
/* 805F1878  EC 00 01 72 */	fmuls f0, f0, f5
/* 805F187C  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1880  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805F1884  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805F1888  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F188C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805F1890  7C 08 03 A6 */	mtlr r0
/* 805F1894  38 21 00 20 */	addi r1, r1, 0x20
/* 805F1898  4E 80 00 20 */	blr 

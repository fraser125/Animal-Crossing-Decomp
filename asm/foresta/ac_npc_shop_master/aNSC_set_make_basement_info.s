lbl_8057742C:
/* 8057742C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80577430  7C 08 02 A6 */	mflr r0
/* 80577434  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80577438  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057743C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80577440  3C 63 00 02 */	addis r3, r3, 2
/* 80577444  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80577448  4B E3 C1 71 */	bl mHS_get_arrange_idx
/* 8057744C  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 80577450  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80577454  38 80 00 01 */	li r4, 1
/* 80577458  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8057745C  7C 60 2A 14 */	add r3, r0, r5
/* 80577460  3C 63 00 01 */	addis r3, r3, 1
/* 80577464  88 03 9D 13 */	lbz r0, -0x62ed(r3)
/* 80577468  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8057746C  98 03 9D 13 */	stb r0, -0x62ed(r3)
/* 80577470  38 63 9C E8 */	addi r3, r3, -25368
/* 80577474  4B FF FF 91 */	bl aNSC_set_rehouse_order_date
/* 80577478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057747C  7C 08 03 A6 */	mtlr r0
/* 80577480  38 21 00 10 */	addi r1, r1, 0x10
/* 80577484  4E 80 00 20 */	blr 

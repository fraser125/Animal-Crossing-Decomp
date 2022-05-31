lbl_80470E68:
/* 80470E68  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80470E6C  3C 80 81 1D */	lis r4, l_bank_index_table@ha /* 0x811CDFF4@ha */
/* 80470E70  38 A3 DF E8 */	addi r5, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80470E74  38 60 00 00 */	li r3, 0
/* 80470E78  80 E5 00 08 */	lwz r7, 8(r5)
/* 80470E7C  38 C4 DF F4 */	addi r6, r4, l_bank_index_table@l /* 0x811CDFF4@l */
/* 80470E80  38 00 04 F2 */	li r0, 0x4f2
/* 80470E84  48 00 00 3C */	b lbl_80470EC0
lbl_80470E88:
/* 80470E88  7C C4 33 78 */	mr r4, r6
/* 80470E8C  39 20 00 00 */	li r9, 0
/* 80470E90  39 00 00 00 */	li r8, 0
/* 80470E94  7C 09 03 A6 */	mtctr r0
lbl_80470E98:
/* 80470E98  88 A4 00 00 */	lbz r5, 0(r4)
/* 80470E9C  7C 05 18 00 */	cmpw r5, r3
/* 80470EA0  40 82 00 08 */	bne lbl_80470EA8
/* 80470EA4  39 29 00 01 */	addi r9, r9, 1
lbl_80470EA8:
/* 80470EA8  39 08 00 01 */	addi r8, r8, 1
/* 80470EAC  38 84 00 01 */	addi r4, r4, 1
/* 80470EB0  42 00 FF E8 */	bdnz lbl_80470E98
/* 80470EB4  2C 09 00 00 */	cmpwi r9, 0
/* 80470EB8  4D 82 00 20 */	beqlr 
/* 80470EBC  38 63 00 01 */	addi r3, r3, 1
lbl_80470EC0:
/* 80470EC0  7C 03 38 00 */	cmpw r3, r7
/* 80470EC4  41 80 FF C4 */	blt lbl_80470E88
/* 80470EC8  38 60 FF FF */	li r3, -1
/* 80470ECC  4E 80 00 20 */	blr 

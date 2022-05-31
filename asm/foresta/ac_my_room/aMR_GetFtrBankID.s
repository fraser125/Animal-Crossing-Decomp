lbl_80470D88:
/* 80470D88  3C 80 81 1D */	lis r4, l_bank_index_table@ha /* 0x811CDFF4@ha */
/* 80470D8C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80470D90  38 84 DF F4 */	addi r4, r4, l_bank_index_table@l /* 0x811CDFF4@l */
/* 80470D94  38 60 FF FF */	li r3, -1
/* 80470D98  7C 04 00 AE */	lbzx r0, r4, r0
/* 80470D9C  28 00 00 FF */	cmplwi r0, 0xff
/* 80470DA0  4D 82 00 20 */	beqlr 
/* 80470DA4  7C 03 03 78 */	mr r3, r0
/* 80470DA8  4E 80 00 20 */	blr 

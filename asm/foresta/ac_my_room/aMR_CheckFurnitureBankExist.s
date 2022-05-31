lbl_80470D68:
/* 80470D68  3C 80 81 1D */	lis r4, l_bank_index_table@ha /* 0x811CDFF4@ha */
/* 80470D6C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80470D70  38 64 DF F4 */	addi r3, r4, l_bank_index_table@l /* 0x811CDFF4@l */
/* 80470D74  7C 03 00 AE */	lbzx r0, r3, r0
/* 80470D78  20 60 00 FF */	subfic r3, r0, 0xff
/* 80470D7C  30 03 FF FF */	addic r0, r3, -1
/* 80470D80  7C 60 19 10 */	subfe r3, r0, r3
/* 80470D84  4E 80 00 20 */	blr 

lbl_80470DAC:
/* 80470DAC  2C 03 FF FF */	cmpwi r3, -1
/* 80470DB0  40 82 00 0C */	bne lbl_80470DBC
/* 80470DB4  38 60 00 00 */	li r3, 0
/* 80470DB8  4E 80 00 20 */	blr 
lbl_80470DBC:
/* 80470DBC  3C 80 81 1D */	lis r4, l_bank_address_table@ha /* 0x811CE4E8@ha */
/* 80470DC0  54 60 10 3A */	slwi r0, r3, 2
/* 80470DC4  38 64 E4 E8 */	addi r3, r4, l_bank_address_table@l /* 0x811CE4E8@l */
/* 80470DC8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80470DCC  4E 80 00 20 */	blr 

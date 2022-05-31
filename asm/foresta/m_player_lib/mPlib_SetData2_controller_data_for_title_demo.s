lbl_803DDE8C:
/* 803DDE8C  3C 80 81 17 */	lis r4, controller_data_for_title_demo@ha /* 0x8116EE38@ha */
/* 803DDE90  38 84 EE 38 */	addi r4, r4, controller_data_for_title_demo@l /* 0x8116EE38@l */
/* 803DDE94  B0 64 00 3C */	sth r3, 0x3c(r4)
/* 803DDE98  4E 80 00 20 */	blr 

lbl_8037A568:
/* 8037A568  3C 80 80 65 */	lis r4, bgm_table@ha /* 0x8064F6FC@ha */
/* 8037A56C  38 84 F6 FC */	addi r4, r4, bgm_table@l /* 0x8064F6FC@l */
/* 8037A570  7C 64 18 AE */	lbzx r3, r4, r3
/* 8037A574  4E 80 00 20 */	blr 

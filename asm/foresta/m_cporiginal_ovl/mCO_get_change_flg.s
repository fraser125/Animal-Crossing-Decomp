lbl_805CD210:
/* 805CD210  3C 60 81 21 */	lis r3, co_ovl_data@ha /* 0x81210F18@ha */
/* 805CD214  38 63 0F 18 */	addi r3, r3, co_ovl_data@l /* 0x81210F18@l */
/* 805CD218  88 63 00 0F */	lbz r3, 0xf(r3)
/* 805CD21C  4E 80 00 20 */	blr 

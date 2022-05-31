lbl_8053BD78:
/* 8053BD78  3C C0 80 6A */	lis r6, seq_cnt_table@ha /* 0x806A35D4@ha */
/* 8053BD7C  54 A7 10 3A */	slwi r7, r5, 2
/* 8053BD80  38 A6 35 D4 */	addi r5, r6, seq_cnt_table@l /* 0x806A35D4@l */
/* 8053BD84  54 80 10 3A */	slwi r0, r4, 2
/* 8053BD88  7C 85 38 2E */	lwzx r4, r5, r7
/* 8053BD8C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8053BD90  7C 64 18 AE */	lbzx r3, r4, r3
/* 8053BD94  4E 80 00 20 */	blr 

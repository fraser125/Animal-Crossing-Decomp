lbl_8052D180:
/* 8052D180  3C C0 80 6A */	lis r6, seq_cnt_table@ha /* 0x806A1E78@ha */
/* 8052D184  54 A7 10 3A */	slwi r7, r5, 2
/* 8052D188  38 A6 1E 78 */	addi r5, r6, seq_cnt_table@l /* 0x806A1E78@l */
/* 8052D18C  54 80 10 3A */	slwi r0, r4, 2
/* 8052D190  7C 85 38 2E */	lwzx r4, r5, r7
/* 8052D194  7C 84 00 2E */	lwzx r4, r4, r0
/* 8052D198  7C 64 18 AE */	lbzx r3, r4, r3
/* 8052D19C  4E 80 00 20 */	blr 

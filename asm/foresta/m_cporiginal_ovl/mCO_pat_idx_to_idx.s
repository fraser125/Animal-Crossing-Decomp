lbl_805CD230:
/* 805CD230  38 83 FF F8 */	addi r4, r3, -8
/* 805CD234  38 60 00 0C */	li r3, 0xc
/* 805CD238  7C 04 1B D6 */	divw r0, r4, r3
/* 805CD23C  7C 00 19 D6 */	mullw r0, r0, r3
/* 805CD240  7C 60 20 50 */	subf r3, r0, r4
/* 805CD244  4E 80 00 20 */	blr 

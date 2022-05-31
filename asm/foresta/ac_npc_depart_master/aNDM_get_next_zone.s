lbl_8054D0F4:
/* 8054D0F4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8054D0F8  3C 80 80 6A */	lis r4, next_zone@ha /* 0x806A5488@ha */
/* 8054D0FC  1C A0 00 09 */	mulli r5, r0, 9
/* 8054D100  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8054D104  38 64 54 88 */	addi r3, r4, next_zone@l /* 0x806A5488@l */
/* 8054D108  7C 63 2A 14 */	add r3, r3, r5
/* 8054D10C  7C 63 00 AE */	lbzx r3, r3, r0
/* 8054D110  4E 80 00 20 */	blr 

lbl_80576DAC:
/* 80576DAC  3C A0 80 6C */	lis r5, next_zone@ha /* 0x806BFAB8@ha */
/* 80576DB0  54 86 15 BA */	rlwinm r6, r4, 2, 0x16, 0x1d
/* 80576DB4  38 85 FA B8 */	addi r4, r5, next_zone@l /* 0x806BFAB8@l */
/* 80576DB8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80576DBC  7C 64 32 14 */	add r3, r4, r6
/* 80576DC0  7C 63 00 AE */	lbzx r3, r3, r0
/* 80576DC4  4E 80 00 20 */	blr 

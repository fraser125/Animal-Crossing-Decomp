lbl_8037D428:
/* 8037D428  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8037D42C  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8037D430  7C 03 00 50 */	subf r0, r3, r0
/* 8037D434  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8037D438  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8037D43C  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 8037D440  7C 64 18 50 */	subf r3, r4, r3
/* 8037D444  7C 63 02 14 */	add r3, r3, r0
/* 8037D448  4E 80 00 20 */	blr 

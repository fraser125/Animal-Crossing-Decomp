lbl_80545810:
/* 80545810  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80545814  3C 80 80 6A */	lis r4, next_zone@ha /* 0x806A4220@ha */
/* 80545818  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8054581C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80545820  38 64 42 20 */	addi r3, r4, next_zone@l /* 0x806A4220@l */
/* 80545824  7C 63 2A 14 */	add r3, r3, r5
/* 80545828  7C 63 00 AE */	lbzx r3, r3, r0
/* 8054582C  4E 80 00 20 */	blr 

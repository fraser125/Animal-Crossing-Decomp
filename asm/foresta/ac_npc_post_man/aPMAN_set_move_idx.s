lbl_8056E130:
/* 8056E130  88 A3 09 9B */	lbz r5, 0x99b(r3)
/* 8056E134  3C 80 80 6C */	lis r4, move_idx@ha /* 0x806BEC58@ha */
/* 8056E138  88 03 09 9D */	lbz r0, 0x99d(r3)
/* 8056E13C  38 64 EC 58 */	addi r3, r4, move_idx@l /* 0x806BEC58@l */
/* 8056E140  7C A4 07 74 */	extsb r4, r5
/* 8056E144  1C 84 00 07 */	mulli r4, r4, 7
/* 8056E148  7C 00 07 74 */	extsb r0, r0
/* 8056E14C  7C 63 22 14 */	add r3, r3, r4
/* 8056E150  7C 63 00 AE */	lbzx r3, r3, r0
/* 8056E154  4E 80 00 20 */	blr 

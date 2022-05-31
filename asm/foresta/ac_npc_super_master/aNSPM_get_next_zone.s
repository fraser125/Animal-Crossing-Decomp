lbl_805808AC:
/* 805808AC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 805808B0  3C 80 80 6C */	lis r4, next_zone@ha /* 0x806C0C78@ha */
/* 805808B4  1C A0 00 1B */	mulli r5, r0, 0x1b
/* 805808B8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805808BC  38 64 0C 78 */	addi r3, r4, next_zone@l /* 0x806C0C78@l */
/* 805808C0  7C 63 2A 14 */	add r3, r3, r5
/* 805808C4  7C 63 00 AE */	lbzx r3, r3, r0
/* 805808C8  4E 80 00 20 */	blr 

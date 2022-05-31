lbl_803E4A80:
/* 803E4A80  2C 03 00 06 */	cmpwi r3, 6
/* 803E4A84  40 80 00 14 */	bge lbl_803E4A98
/* 803E4A88  3C 80 80 66 */	lis r4, gate_count_table@ha /* 0x8065C148@ha */
/* 803E4A8C  38 84 C1 48 */	addi r4, r4, gate_count_table@l /* 0x8065C148@l */
/* 803E4A90  7C 64 18 AE */	lbzx r3, r4, r3
/* 803E4A94  4E 80 00 20 */	blr 
lbl_803E4A98:
/* 803E4A98  38 60 00 00 */	li r3, 0
/* 803E4A9C  4E 80 00 20 */	blr 

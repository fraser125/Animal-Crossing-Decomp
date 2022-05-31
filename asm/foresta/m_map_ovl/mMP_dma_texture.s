lbl_805E5FD4:
/* 805E5FD4  3C A0 80 6D */	lis r5, data_806CD8C0@ha /* 0x806CD8C0@ha */
/* 805E5FD8  54 80 10 3A */	slwi r0, r4, 2
/* 805E5FDC  38 85 D8 C0 */	addi r4, r5, data_806CD8C0@l /* 0x806CD8C0@l */
/* 805E5FE0  7C 04 00 2E */	lwzx r0, r4, r0
/* 805E5FE4  90 03 00 00 */	stw r0, 0(r3)
/* 805E5FE8  4E 80 00 20 */	blr 

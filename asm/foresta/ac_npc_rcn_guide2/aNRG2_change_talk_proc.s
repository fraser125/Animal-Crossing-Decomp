lbl_805712B4:
/* 805712B4  3C A0 80 6C */	lis r5, proc@ha /* 0x806BF0E0@ha */
/* 805712B8  54 80 10 3A */	slwi r0, r4, 2
/* 805712BC  38 85 F0 E0 */	addi r4, r5, proc@l /* 0x806BF0E0@l */
/* 805712C0  7C 04 00 2E */	lwzx r0, r4, r0
/* 805712C4  90 03 09 AC */	stw r0, 0x9ac(r3)
/* 805712C8  4E 80 00 20 */	blr 

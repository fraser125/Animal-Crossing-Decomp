lbl_80424818:
/* 80424818  3C A0 80 68 */	lis r5, process@ha /* 0x80682AE0@ha */
/* 8042481C  54 80 10 3A */	slwi r0, r4, 2
/* 80424820  38 85 2A E0 */	addi r4, r5, process@l /* 0x80682AE0@l */
/* 80424824  7C 04 00 2E */	lwzx r0, r4, r0
/* 80424828  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 8042482C  4E 80 00 20 */	blr 

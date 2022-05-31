lbl_805583C4:
/* 805583C4  3C A0 80 6A */	lis r5, talk_proc@ha /* 0x806A6A18@ha */
/* 805583C8  54 80 10 3A */	slwi r0, r4, 2
/* 805583CC  38 85 6A 18 */	addi r4, r5, talk_proc@l /* 0x806A6A18@l */
/* 805583D0  7C 04 00 2E */	lwzx r0, r4, r0
/* 805583D4  90 03 09 A4 */	stw r0, 0x9a4(r3)
/* 805583D8  4E 80 00 20 */	blr 

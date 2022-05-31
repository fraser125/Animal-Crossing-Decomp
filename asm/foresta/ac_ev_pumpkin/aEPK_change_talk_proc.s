lbl_805231E0:
/* 805231E0  3C A0 80 6A */	lis r5, talk_proc@ha /* 0x806A0AA0@ha */
/* 805231E4  54 80 10 3A */	slwi r0, r4, 2
/* 805231E8  38 85 0A A0 */	addi r4, r5, talk_proc@l /* 0x806A0AA0@l */
/* 805231EC  7C 04 00 2E */	lwzx r0, r4, r0
/* 805231F0  90 03 09 98 */	stw r0, 0x998(r3)
/* 805231F4  4E 80 00 20 */	blr 

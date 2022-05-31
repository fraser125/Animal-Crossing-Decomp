lbl_8051D598:
/* 8051D598  3C A0 80 6A */	lis r5, talk_proc@ha /* 0x806A0430@ha */
/* 8051D59C  54 80 10 3A */	slwi r0, r4, 2
/* 8051D5A0  38 85 04 30 */	addi r4, r5, talk_proc@l /* 0x806A0430@l */
/* 8051D5A4  7C 04 00 2E */	lwzx r0, r4, r0
/* 8051D5A8  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8051D5AC  4E 80 00 20 */	blr 

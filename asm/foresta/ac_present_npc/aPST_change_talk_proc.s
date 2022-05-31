lbl_80587D14:
/* 80587D14  3C A0 80 6C */	lis r5, talk_proc@ha /* 0x806C1CE0@ha */
/* 80587D18  54 80 10 3A */	slwi r0, r4, 2
/* 80587D1C  38 85 1C E0 */	addi r4, r5, talk_proc@l /* 0x806C1CE0@l */
/* 80587D20  7C 04 00 2E */	lwzx r0, r4, r0
/* 80587D24  90 03 09 A4 */	stw r0, 0x9a4(r3)
/* 80587D28  4E 80 00 20 */	blr 

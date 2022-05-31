lbl_805BE588:
/* 805BE588  3C A0 80 6C */	lis r5, process@ha /* 0x806C70FC@ha */
/* 805BE58C  54 80 10 3A */	slwi r0, r4, 2
/* 805BE590  38 A5 70 FC */	addi r5, r5, process@l /* 0x806C70FC@l */
/* 805BE594  7C 05 00 2E */	lwzx r0, r5, r0
/* 805BE598  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805BE59C  90 83 02 B4 */	stw r4, 0x2b4(r3)
/* 805BE5A0  4E 80 00 20 */	blr 

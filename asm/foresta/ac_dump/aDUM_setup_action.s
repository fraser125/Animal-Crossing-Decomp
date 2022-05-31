lbl_805AE938:
/* 805AE938  3C A0 80 6C */	lis r5, process@ha /* 0x806C5010@ha */
/* 805AE93C  54 80 10 3A */	slwi r0, r4, 2
/* 805AE940  38 A5 50 10 */	addi r5, r5, process@l /* 0x806C5010@l */
/* 805AE944  7C 05 00 2E */	lwzx r0, r5, r0
/* 805AE948  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805AE94C  90 83 02 B4 */	stw r4, 0x2b4(r3)
/* 805AE950  4E 80 00 20 */	blr 

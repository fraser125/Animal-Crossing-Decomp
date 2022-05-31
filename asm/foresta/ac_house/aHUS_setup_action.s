lbl_805B0744:
/* 805B0744  3C A0 80 6C */	lis r5, process@ha /* 0x806C5474@ha */
/* 805B0748  54 80 10 3A */	slwi r0, r4, 2
/* 805B074C  38 85 54 74 */	addi r4, r5, process@l /* 0x806C5474@l */
/* 805B0750  7C 04 00 2E */	lwzx r0, r4, r0
/* 805B0754  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805B0758  4E 80 00 20 */	blr 

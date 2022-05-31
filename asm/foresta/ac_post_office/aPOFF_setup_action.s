lbl_805B82A8:
/* 805B82A8  3C A0 80 6C */	lis r5, process@ha /* 0x806C6440@ha */
/* 805B82AC  54 80 10 3A */	slwi r0, r4, 2
/* 805B82B0  38 85 64 40 */	addi r4, r5, process@l /* 0x806C6440@l */
/* 805B82B4  7C 04 00 2E */	lwzx r0, r4, r0
/* 805B82B8  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805B82BC  4E 80 00 20 */	blr 

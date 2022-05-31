lbl_805B19D0:
/* 805B19D0  3C A0 80 6C */	lis r5, process@ha /* 0x806C5698@ha */
/* 805B19D4  54 80 10 3A */	slwi r0, r4, 2
/* 805B19D8  38 A5 56 98 */	addi r5, r5, process@l /* 0x806C5698@l */
/* 805B19DC  7C 05 00 2E */	lwzx r0, r5, r0
/* 805B19E0  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805B19E4  90 83 02 B8 */	stw r4, 0x2b8(r3)
/* 805B19E8  4E 80 00 20 */	blr 

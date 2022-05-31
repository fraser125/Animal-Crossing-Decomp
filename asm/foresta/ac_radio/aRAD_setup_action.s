lbl_805B8910:
/* 805B8910  3C A0 80 6C */	lis r5, process@ha /* 0x806C6498@ha */
/* 805B8914  54 80 10 3A */	slwi r0, r4, 2
/* 805B8918  38 A5 64 98 */	addi r5, r5, process@l /* 0x806C6498@l */
/* 805B891C  7C 05 00 2E */	lwzx r0, r5, r0
/* 805B8920  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805B8924  90 83 02 B4 */	stw r4, 0x2b4(r3)
/* 805B8928  4E 80 00 20 */	blr 

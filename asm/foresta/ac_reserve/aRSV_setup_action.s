lbl_805B8D98:
/* 805B8D98  3C A0 80 6C */	lis r5, process@ha /* 0x806C64F0@ha */
/* 805B8D9C  54 80 10 3A */	slwi r0, r4, 2
/* 805B8DA0  38 A5 64 F0 */	addi r5, r5, process@l /* 0x806C64F0@l */
/* 805B8DA4  7C 05 00 2E */	lwzx r0, r5, r0
/* 805B8DA8  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805B8DAC  90 83 02 B4 */	stw r4, 0x2b4(r3)
/* 805B8DB0  4E 80 00 20 */	blr 

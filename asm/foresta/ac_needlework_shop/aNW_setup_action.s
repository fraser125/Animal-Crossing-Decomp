lbl_805B6E64:
/* 805B6E64  3C A0 80 6C */	lis r5, process@ha /* 0x806C61B8@ha */
/* 805B6E68  54 80 10 3A */	slwi r0, r4, 2
/* 805B6E6C  38 85 61 B8 */	addi r4, r5, process@l /* 0x806C61B8@l */
/* 805B6E70  7C 04 00 2E */	lwzx r0, r4, r0
/* 805B6E74  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805B6E78  4E 80 00 20 */	blr 

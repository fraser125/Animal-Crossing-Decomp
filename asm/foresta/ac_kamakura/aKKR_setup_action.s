lbl_805B229C:
/* 805B229C  3C A0 80 6C */	lis r5, process@ha /* 0x806C5780@ha */
/* 805B22A0  54 80 10 3A */	slwi r0, r4, 2
/* 805B22A4  38 A5 57 80 */	addi r5, r5, process@l /* 0x806C5780@l */
/* 805B22A8  7C 05 00 2E */	lwzx r0, r5, r0
/* 805B22AC  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805B22B0  90 83 02 B4 */	stw r4, 0x2b4(r3)
/* 805B22B4  4E 80 00 20 */	blr 

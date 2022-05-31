lbl_804AA688:
/* 804AA688  3C A0 80 69 */	lis r5, process@ha /* 0x8068F294@ha */
/* 804AA68C  54 80 10 3A */	slwi r0, r4, 2
/* 804AA690  38 A5 F2 94 */	addi r5, r5, process@l /* 0x8068F294@l */
/* 804AA694  7C 05 00 2E */	lwzx r0, r5, r0
/* 804AA698  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804AA69C  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804AA6A0  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804AA6A4  4E 80 00 20 */	blr 

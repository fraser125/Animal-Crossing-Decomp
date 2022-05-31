lbl_80515ACC:
/* 80515ACC  3C A0 80 6A */	lis r5, process@ha /* 0x8069FCAC@ha */
/* 80515AD0  54 80 10 3A */	slwi r0, r4, 2
/* 80515AD4  38 A5 FC AC */	addi r5, r5, process@l /* 0x8069FCAC@l */
/* 80515AD8  7C 05 00 2E */	lwzx r0, r5, r0
/* 80515ADC  90 03 01 78 */	stw r0, 0x178(r3)
/* 80515AE0  90 83 01 74 */	stw r4, 0x174(r3)
/* 80515AE4  4E 80 00 20 */	blr 

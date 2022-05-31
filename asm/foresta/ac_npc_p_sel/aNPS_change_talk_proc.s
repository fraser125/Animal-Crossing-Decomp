lbl_80566D00:
/* 80566D00  3C A0 80 6C */	lis r5, process@ha /* 0x806BE364@ha */
/* 80566D04  90 83 09 94 */	stw r4, 0x994(r3)
/* 80566D08  54 80 10 3A */	slwi r0, r4, 2
/* 80566D0C  38 85 E3 64 */	addi r4, r5, process@l /* 0x806BE364@l */
/* 80566D10  7C 04 00 2E */	lwzx r0, r4, r0
/* 80566D14  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80566D18  4E 80 00 20 */	blr 

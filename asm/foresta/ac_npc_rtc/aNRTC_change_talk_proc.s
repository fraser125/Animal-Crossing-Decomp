lbl_80573D48:
/* 80573D48  3C A0 80 6C */	lis r5, process@ha /* 0x806BF634@ha */
/* 80573D4C  90 83 09 94 */	stw r4, 0x994(r3)
/* 80573D50  54 80 10 3A */	slwi r0, r4, 2
/* 80573D54  38 85 F6 34 */	addi r4, r5, process@l /* 0x806BF634@l */
/* 80573D58  7C 04 00 2E */	lwzx r0, r4, r0
/* 80573D5C  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80573D60  4E 80 00 20 */	blr 

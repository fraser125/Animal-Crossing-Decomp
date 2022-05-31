lbl_8056AF50:
/* 8056AF50  3C 80 80 6C */	lis r4, process@ha /* 0x806BE850@ha */
/* 8056AF54  54 A0 10 3A */	slwi r0, r5, 2
/* 8056AF58  38 84 E8 50 */	addi r4, r4, process@l /* 0x806BE850@l */
/* 8056AF5C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8056AF60  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8056AF64  4E 80 00 20 */	blr 

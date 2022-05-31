lbl_80572E20:
/* 80572E20  3C A0 80 6C */	lis r5, process@ha /* 0x806BF524@ha */
/* 80572E24  90 83 09 94 */	stw r4, 0x994(r3)
/* 80572E28  54 80 10 3A */	slwi r0, r4, 2
/* 80572E2C  38 85 F5 24 */	addi r4, r5, process@l /* 0x806BF524@l */
/* 80572E30  7C 04 00 2E */	lwzx r0, r4, r0
/* 80572E34  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80572E38  4E 80 00 20 */	blr 

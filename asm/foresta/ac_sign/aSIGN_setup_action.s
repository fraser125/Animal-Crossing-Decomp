lbl_804A22D0:
/* 804A22D0  3C A0 80 69 */	lis r5, process@ha /* 0x8068E7BC@ha */
/* 804A22D4  54 80 10 3A */	slwi r0, r4, 2
/* 804A22D8  38 85 E7 BC */	addi r4, r5, process@l /* 0x8068E7BC@l */
/* 804A22DC  7C 04 00 2E */	lwzx r0, r4, r0
/* 804A22E0  90 03 01 74 */	stw r0, 0x174(r3)
/* 804A22E4  4E 80 00 20 */	blr 

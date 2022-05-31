lbl_804A7EA4:
/* 804A7EA4  3C A0 80 69 */	lis r5, process@ha /* 0x8068EA6C@ha */
/* 804A7EA8  54 80 10 3A */	slwi r0, r4, 2
/* 804A7EAC  38 A5 EA 6C */	addi r5, r5, process@l /* 0x8068EA6C@l */
/* 804A7EB0  7C 05 00 2E */	lwzx r0, r5, r0
/* 804A7EB4  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A7EB8  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A7EBC  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A7EC0  4E 80 00 20 */	blr 

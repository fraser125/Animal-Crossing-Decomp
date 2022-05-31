lbl_804A7FF8:
/* 804A7FF8  3C A0 80 69 */	lis r5, process@ha /* 0x8068EAAC@ha */
/* 804A7FFC  54 80 10 3A */	slwi r0, r4, 2
/* 804A8000  38 A5 EA AC */	addi r5, r5, process@l /* 0x8068EAAC@l */
/* 804A8004  7C 05 00 2E */	lwzx r0, r5, r0
/* 804A8008  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A800C  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A8010  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A8014  4E 80 00 20 */	blr 

lbl_804A89F8:
/* 804A89F8  3C A0 80 69 */	lis r5, process@ha /* 0x8068EBD4@ha */
/* 804A89FC  54 80 10 3A */	slwi r0, r4, 2
/* 804A8A00  38 A5 EB D4 */	addi r5, r5, process@l /* 0x8068EBD4@l */
/* 804A8A04  7C 05 00 2E */	lwzx r0, r5, r0
/* 804A8A08  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A8A0C  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A8A10  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A8A14  4E 80 00 20 */	blr 

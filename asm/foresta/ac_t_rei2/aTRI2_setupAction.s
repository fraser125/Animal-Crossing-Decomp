lbl_804A9908:
/* 804A9908  3C A0 80 69 */	lis r5, process@ha /* 0x8068EE5C@ha */
/* 804A990C  54 80 10 3A */	slwi r0, r4, 2
/* 804A9910  38 A5 EE 5C */	addi r5, r5, process@l /* 0x8068EE5C@l */
/* 804A9914  7C 05 00 2E */	lwzx r0, r5, r0
/* 804A9918  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A991C  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A9920  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A9924  4E 80 00 20 */	blr 

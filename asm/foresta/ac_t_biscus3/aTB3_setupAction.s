lbl_804A7D50:
/* 804A7D50  3C A0 80 69 */	lis r5, process@ha /* 0x8068EA2C@ha */
/* 804A7D54  54 80 10 3A */	slwi r0, r4, 2
/* 804A7D58  38 A5 EA 2C */	addi r5, r5, process@l /* 0x8068EA2C@l */
/* 804A7D5C  7C 05 00 2E */	lwzx r0, r5, r0
/* 804A7D60  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A7D64  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A7D68  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A7D6C  4E 80 00 20 */	blr 

lbl_804A97B4:
/* 804A97B4  3C A0 80 69 */	lis r5, process@ha /* 0x8068EE1C@ha */
/* 804A97B8  54 80 10 3A */	slwi r0, r4, 2
/* 804A97BC  38 A5 EE 1C */	addi r5, r5, process@l /* 0x8068EE1C@l */
/* 804A97C0  7C 05 00 2E */	lwzx r0, r5, r0
/* 804A97C4  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A97C8  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A97CC  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A97D0  4E 80 00 20 */	blr 

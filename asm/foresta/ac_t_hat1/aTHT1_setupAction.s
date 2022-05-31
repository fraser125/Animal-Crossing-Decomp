lbl_804A8B4C:
/* 804A8B4C  3C A0 80 69 */	lis r5, process@ha /* 0x8068EC14@ha */
/* 804A8B50  54 80 10 3A */	slwi r0, r4, 2
/* 804A8B54  38 A5 EC 14 */	addi r5, r5, process@l /* 0x8068EC14@l */
/* 804A8B58  7C 05 00 2E */	lwzx r0, r5, r0
/* 804A8B5C  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A8B60  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A8B64  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A8B68  4E 80 00 20 */	blr 

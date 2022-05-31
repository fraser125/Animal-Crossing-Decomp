lbl_804A7BFC:
/* 804A7BFC  3C A0 80 69 */	lis r5, process@ha /* 0x8068E9EC@ha */
/* 804A7C00  54 80 10 3A */	slwi r0, r4, 2
/* 804A7C04  38 A5 E9 EC */	addi r5, r5, process@l /* 0x8068E9EC@l */
/* 804A7C08  7C 05 00 2E */	lwzx r0, r5, r0
/* 804A7C0C  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A7C10  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A7C14  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A7C18  4E 80 00 20 */	blr 

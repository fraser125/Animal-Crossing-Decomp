lbl_804A9CD4:
/* 804A9CD4  3C C0 80 69 */	lis r6, process@ha /* 0x8068EF0C@ha */
/* 804A9CD8  3C A0 80 69 */	lis r5, start_scale@ha /* 0x8068EF24@ha */
/* 804A9CDC  54 87 10 3A */	slwi r7, r4, 2
/* 804A9CE0  38 C6 EF 0C */	addi r6, r6, process@l /* 0x8068EF0C@l */
/* 804A9CE4  38 A5 EF 24 */	addi r5, r5, start_scale@l /* 0x8068EF24@l */
/* 804A9CE8  7C 06 38 2E */	lwzx r0, r6, r7
/* 804A9CEC  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A9CF0  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A9CF4  7C 05 3C 2E */	lfsx f0, r5, r7
/* 804A9CF8  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 804A9CFC  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 804A9D00  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 804A9D04  4E 80 00 20 */	blr 

lbl_804A8200:
/* 804A8200  3C C0 80 69 */	lis r6, process@ha /* 0x8068EAF4@ha */
/* 804A8204  3C A0 80 69 */	lis r5, start_scale@ha /* 0x8068EB0C@ha */
/* 804A8208  54 87 10 3A */	slwi r7, r4, 2
/* 804A820C  38 C6 EA F4 */	addi r6, r6, process@l /* 0x8068EAF4@l */
/* 804A8210  38 A5 EB 0C */	addi r5, r5, start_scale@l /* 0x8068EB0C@l */
/* 804A8214  7C 06 38 2E */	lwzx r0, r6, r7
/* 804A8218  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A821C  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A8220  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A8224  7C 05 3C 2E */	lfsx f0, r5, r7
/* 804A8228  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 804A822C  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 804A8230  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 804A8234  4E 80 00 20 */	blr 

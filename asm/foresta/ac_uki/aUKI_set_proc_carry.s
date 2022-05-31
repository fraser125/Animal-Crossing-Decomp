lbl_804AEFE4:
/* 804AEFE4  3C A0 80 64 */	lis r5, data_80645F24@ha /* 0x80645F24@ha */
/* 804AEFE8  38 80 00 04 */	li r4, 4
/* 804AEFEC  C0 05 5F 24 */	lfs f0, data_80645F24@l(r5)  /* 0x80645F24@l */
/* 804AEFF0  38 00 00 01 */	li r0, 1
/* 804AEFF4  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 804AEFF8  B0 83 02 62 */	sth r4, 0x262(r3)
/* 804AEFFC  90 03 02 38 */	stw r0, 0x238(r3)
/* 804AF000  4E 80 00 20 */	blr 

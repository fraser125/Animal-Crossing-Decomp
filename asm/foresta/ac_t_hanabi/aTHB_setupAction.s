lbl_804A8848:
/* 804A8848  3C C0 80 69 */	lis r6, process@ha /* 0x8068EB7C@ha */
/* 804A884C  3C A0 80 69 */	lis r5, start_scale@ha /* 0x8068EB94@ha */
/* 804A8850  54 87 10 3A */	slwi r7, r4, 2
/* 804A8854  38 C6 EB 7C */	addi r6, r6, process@l /* 0x8068EB7C@l */
/* 804A8858  38 A5 EB 94 */	addi r5, r5, start_scale@l /* 0x8068EB94@l */
/* 804A885C  7C 06 38 2E */	lwzx r0, r6, r7
/* 804A8860  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A8864  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A8868  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A886C  7C 05 3C 2E */	lfsx f0, r5, r7
/* 804A8870  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 804A8874  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 804A8878  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 804A887C  4E 80 00 20 */	blr 

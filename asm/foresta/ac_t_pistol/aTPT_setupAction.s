lbl_804A9604:
/* 804A9604  3C C0 80 69 */	lis r6, process@ha /* 0x8068EDC4@ha */
/* 804A9608  3C A0 80 69 */	lis r5, start_scale@ha /* 0x8068EDDC@ha */
/* 804A960C  54 87 10 3A */	slwi r7, r4, 2
/* 804A9610  38 C6 ED C4 */	addi r6, r6, process@l /* 0x8068EDC4@l */
/* 804A9614  38 A5 ED DC */	addi r5, r5, start_scale@l /* 0x8068EDDC@l */
/* 804A9618  7C 06 38 2E */	lwzx r0, r6, r7
/* 804A961C  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A9620  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A9624  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A9628  7C 05 3C 2E */	lfsx f0, r5, r7
/* 804A962C  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 804A9630  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 804A9634  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 804A9638  4E 80 00 20 */	blr 

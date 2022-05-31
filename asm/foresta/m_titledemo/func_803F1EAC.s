lbl_803F1EAC:
/* 803F1EAC  3C A0 80 66 */	lis r5, pact_data_head_pt@ha /* 0x8065E1DC@ha */
/* 803F1EB0  54 66 10 3A */	slwi r6, r3, 2
/* 803F1EB4  38 65 E1 DC */	addi r3, r5, pact_data_head_pt@l /* 0x8065E1DC@l */
/* 803F1EB8  54 80 08 3C */	slwi r0, r4, 1
/* 803F1EBC  7C 63 30 2E */	lwzx r3, r3, r6
/* 803F1EC0  7C 63 02 2E */	lhzx r3, r3, r0
/* 803F1EC4  4E 80 00 20 */	blr 

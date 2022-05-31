lbl_803D7520:
/* 803D7520  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D7524  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D7528  3C A4 00 02 */	addis r5, r4, 2
/* 803D752C  80 05 67 98 */	lwz r0, 0x6798(r5)
/* 803D7530  28 00 00 00 */	cmplwi r0, 0
/* 803D7534  4C 82 00 20 */	bnelr 
/* 803D7538  90 65 67 98 */	stw r3, 0x6798(r5)
/* 803D753C  3C 80 80 66 */	lis r4, mNPS_schedule@ha /* 0x8065B6D8@ha */
/* 803D7540  38 84 B6 D8 */	addi r4, r4, mNPS_schedule@l /* 0x8065B6D8@l */
/* 803D7544  38 00 00 00 */	li r0, 0
/* 803D7548  88 63 00 0D */	lbz r3, 0xd(r3)
/* 803D754C  54 63 10 3A */	slwi r3, r3, 2
/* 803D7550  90 05 67 A4 */	stw r0, 0x67a4(r5)
/* 803D7554  7C 04 18 2E */	lwzx r0, r4, r3
/* 803D7558  90 05 67 9C */	stw r0, 0x679c(r5)
/* 803D755C  4E 80 00 20 */	blr 

lbl_803D9F40:
/* 803D9F40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D9F44  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D9F48  3C 63 00 03 */	addis r3, r3, 3
/* 803D9F4C  88 63 88 3C */	lbz r3, -0x77c4(r3)
/* 803D9F50  7C 63 07 74 */	extsb r3, r3
/* 803D9F54  4E 80 00 20 */	blr 

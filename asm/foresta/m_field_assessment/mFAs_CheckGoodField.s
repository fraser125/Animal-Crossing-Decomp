lbl_803A148C:
/* 803A148C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A1490  38 60 00 00 */	li r3, 0
/* 803A1494  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803A1498  3C 84 00 02 */	addis r4, r4, 2
/* 803A149C  80 04 41 80 */	lwz r0, 0x4180(r4)
/* 803A14A0  2C 00 00 0F */	cmpwi r0, 0xf
/* 803A14A4  4D 80 00 20 */	bltlr 
/* 803A14A8  38 60 00 01 */	li r3, 1
/* 803A14AC  4E 80 00 20 */	blr 

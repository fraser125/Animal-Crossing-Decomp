lbl_803CEBB4:
/* 803CEBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CEBB8  7C 08 02 A6 */	mflr r0
/* 803CEBBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CEBC0  38 80 00 3C */	li r4, 0x3c
/* 803CEBC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CEBC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CEBCC  3C 63 00 02 */	addis r3, r3, 2
/* 803CEBD0  38 63 68 38 */	addi r3, r3, 0x6838
/* 803CEBD4  4B C8 E4 95 */	bl bzero
/* 803CEBD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CEBDC  7C 08 03 A6 */	mtlr r0
/* 803CEBE0  38 21 00 10 */	addi r1, r1, 0x10
/* 803CEBE4  4E 80 00 20 */	blr 

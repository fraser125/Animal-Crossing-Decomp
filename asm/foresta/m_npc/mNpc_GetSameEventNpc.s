lbl_803CEBE8:
/* 803CEBE8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CEBEC  38 00 00 05 */	li r0, 5
/* 803CEBF0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803CEBF4  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803CEBF8  3C 65 00 02 */	addis r3, r5, 2
/* 803CEBFC  7C 09 03 A6 */	mtctr r0
/* 803CEC00  38 63 68 38 */	addi r3, r3, 0x6838
lbl_803CEC04:
/* 803CEC04  A0 03 00 00 */	lhz r0, 0(r3)
/* 803CEC08  7C 00 20 40 */	cmplw r0, r4
/* 803CEC0C  4D 82 00 20 */	beqlr 
/* 803CEC10  38 63 00 0C */	addi r3, r3, 0xc
/* 803CEC14  42 00 FF F0 */	bdnz lbl_803CEC04
/* 803CEC18  38 60 00 00 */	li r3, 0
/* 803CEC1C  4E 80 00 20 */	blr 

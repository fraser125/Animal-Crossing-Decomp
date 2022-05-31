lbl_805B2FF8:
/* 805B2FF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B2FFC  38 00 00 00 */	li r0, 0
/* 805B3000  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B3004  3C 63 00 02 */	addis r3, r3, 2
/* 805B3008  90 03 60 E4 */	stw r0, 0x60e4(r3)
/* 805B300C  4E 80 00 20 */	blr 

lbl_805BA5E8:
/* 805BA5E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BA5EC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BA5F0  3C 63 00 02 */	addis r3, r3, 2
/* 805BA5F4  80 03 60 D4 */	lwz r0, 0x60d4(r3)
/* 805BA5F8  28 00 00 00 */	cmplwi r0, 0
/* 805BA5FC  4D 82 00 20 */	beqlr 
/* 805BA600  38 00 00 00 */	li r0, 0
/* 805BA604  90 03 60 D4 */	stw r0, 0x60d4(r3)
/* 805BA608  4E 80 00 20 */	blr 

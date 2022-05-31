lbl_805BA584:
/* 805BA584  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BA588  38 00 00 01 */	li r0, 1
/* 805BA58C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BA590  3C 63 00 02 */	addis r3, r3, 2
/* 805BA594  80 63 60 D4 */	lwz r3, 0x60d4(r3)
/* 805BA598  90 03 00 04 */	stw r0, 4(r3)
/* 805BA59C  4E 80 00 20 */	blr 

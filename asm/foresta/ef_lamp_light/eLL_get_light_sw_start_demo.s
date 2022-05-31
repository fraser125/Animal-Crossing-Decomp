lbl_804CEC84:
/* 804CEC84  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CEC88  38 60 00 01 */	li r3, 1
/* 804CEC8C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804CEC90  3C 84 00 02 */	addis r4, r4, 2
/* 804CEC94  88 04 65 22 */	lbz r0, 0x6522(r4)
/* 804CEC98  28 00 00 01 */	cmplwi r0, 1
/* 804CEC9C  4C 82 00 20 */	bnelr 
/* 804CECA0  38 60 00 00 */	li r3, 0
/* 804CECA4  4E 80 00 20 */	blr 

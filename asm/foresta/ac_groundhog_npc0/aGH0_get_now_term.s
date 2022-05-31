lbl_80590CAC:
/* 80590CAC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80590CB0  38 60 00 05 */	li r3, 5
/* 80590CB4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80590CB8  3C 84 00 02 */	addis r4, r4, 2
/* 80590CBC  80 84 61 00 */	lwz r4, 0x6100(r4)
/* 80590CC0  28 04 00 00 */	cmplwi r4, 0
/* 80590CC4  4D 82 00 20 */	beqlr 
/* 80590CC8  80 64 00 00 */	lwz r3, 0(r4)
/* 80590CCC  4E 80 00 20 */	blr 

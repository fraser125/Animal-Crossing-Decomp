lbl_8039BFD8:
/* 8039BFD8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039BFDC  38 60 00 00 */	li r3, 0
/* 8039BFE0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039BFE4  3C 84 00 02 */	addis r4, r4, 2
/* 8039BFE8  88 04 05 54 */	lbz r0, 0x554(r4)
/* 8039BFEC  28 00 00 4E */	cmplwi r0, 0x4e
/* 8039BFF0  4C 82 00 20 */	bnelr 
/* 8039BFF4  A0 64 05 60 */	lhz r3, 0x560(r4)
/* 8039BFF8  4E 80 00 20 */	blr 

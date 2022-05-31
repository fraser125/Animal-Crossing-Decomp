lbl_806018CC:
/* 806018CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 806018D0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 806018D4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 806018D8  3C 63 00 02 */	addis r3, r3, 2
/* 806018DC  80 63 60 84 */	lwz r3, 0x6084(r3)
/* 806018E0  80 63 00 00 */	lwz r3, 0(r3)
/* 806018E4  B0 03 01 DC */	sth r0, 0x1dc(r3)
/* 806018E8  4E 80 00 20 */	blr 

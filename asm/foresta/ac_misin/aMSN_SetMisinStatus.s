lbl_8042DFD0:
/* 8042DFD0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8042DFD4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8042DFD8  3C 84 00 02 */	addis r4, r4, 2
/* 8042DFDC  80 84 60 34 */	lwz r4, 0x6034(r4)
/* 8042DFE0  28 04 00 00 */	cmplwi r4, 0
/* 8042DFE4  4D 82 00 20 */	beqlr 
/* 8042DFE8  80 84 00 00 */	lwz r4, 0(r4)
/* 8042DFEC  B0 64 01 A8 */	sth r3, 0x1a8(r4)
/* 8042DFF0  4E 80 00 20 */	blr 

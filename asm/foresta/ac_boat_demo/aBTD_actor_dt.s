lbl_80414E9C:
/* 80414E9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80414EA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80414EA4  3C 63 00 02 */	addis r3, r3, 2
/* 80414EA8  80 03 60 B0 */	lwz r0, 0x60b0(r3)
/* 80414EAC  28 00 00 00 */	cmplwi r0, 0
/* 80414EB0  4D 82 00 20 */	beqlr 
/* 80414EB4  38 00 00 00 */	li r0, 0
/* 80414EB8  90 03 60 B0 */	stw r0, 0x60b0(r3)
/* 80414EBC  4E 80 00 20 */	blr 

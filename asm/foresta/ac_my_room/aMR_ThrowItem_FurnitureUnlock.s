lbl_80473F9C:
/* 80473F9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80473FA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80473FA4  3C 63 00 02 */	addis r3, r3, 2
/* 80473FA8  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 80473FAC  28 03 00 00 */	cmplwi r3, 0
/* 80473FB0  4D 82 00 20 */	beqlr 
/* 80473FB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80473FB8  28 03 00 00 */	cmplwi r3, 0
/* 80473FBC  4D 82 00 20 */	beqlr 
/* 80473FC0  38 00 00 00 */	li r0, 0
/* 80473FC4  90 03 05 A8 */	stw r0, 0x5a8(r3)
/* 80473FC8  4E 80 00 20 */	blr 

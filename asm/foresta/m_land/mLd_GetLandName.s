lbl_803B3A9C:
/* 803B3A9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B3AA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B3AA4  3C 63 00 01 */	addis r3, r3, 1
/* 803B3AA8  38 63 91 20 */	addi r3, r3, -28384
/* 803B3AAC  4E 80 00 20 */	blr 

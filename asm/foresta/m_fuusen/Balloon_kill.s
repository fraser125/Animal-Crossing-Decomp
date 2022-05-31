lbl_803B17F0:
/* 803B17F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B17F4  38 00 00 00 */	li r0, 0
/* 803B17F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B17FC  3C 63 00 03 */	addis r3, r3, 3
/* 803B1800  B0 03 88 94 */	sth r0, -0x776c(r3)
/* 803B1804  4E 80 00 20 */	blr 

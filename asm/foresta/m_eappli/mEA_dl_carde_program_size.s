lbl_8039A864:
/* 8039A864  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039A868  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039A86C  3C 63 00 03 */	addis r3, r3, 3
/* 8039A870  80 63 DB E8 */	lwz r3, -0x2418(r3)
/* 8039A874  4E 80 00 20 */	blr 

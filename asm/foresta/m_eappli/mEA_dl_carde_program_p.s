lbl_8039A850:
/* 8039A850  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039A854  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039A858  3C 63 00 03 */	addis r3, r3, 3
/* 8039A85C  80 63 DB E4 */	lwz r3, -0x241c(r3)
/* 8039A860  4E 80 00 20 */	blr 

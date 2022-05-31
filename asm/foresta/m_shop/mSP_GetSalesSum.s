lbl_803E9950:
/* 803E9950  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E9954  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E9958  3C 63 00 02 */	addis r3, r3, 2
/* 803E995C  80 63 04 68 */	lwz r3, 0x468(r3)
/* 803E9960  4E 80 00 20 */	blr 

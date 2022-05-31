lbl_803E4FD8:
/* 803E4FD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E4FDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E4FE0  3C 63 00 01 */	addis r3, r3, 1
/* 803E4FE4  88 03 73 A9 */	lbz r0, 0x73a9(r3)
/* 803E4FE8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E4FEC  20 00 00 02 */	subfic r0, r0, 2
/* 803E4FF0  7C 00 00 34 */	cntlzw r0, r0
/* 803E4FF4  54 03 D9 7E */	srwi r3, r0, 5
/* 803E4FF8  4E 80 00 20 */	blr 

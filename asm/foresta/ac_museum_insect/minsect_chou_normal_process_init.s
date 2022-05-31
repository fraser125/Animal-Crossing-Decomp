lbl_8045CAF4:
/* 8045CAF4  3C 80 80 46 */	lis r4, minsect_chou_normal_process@ha /* 0x8045CB04@ha */
/* 8045CAF8  38 04 CB 04 */	addi r0, r4, minsect_chou_normal_process@l /* 0x8045CB04@l */
/* 8045CAFC  90 03 00 04 */	stw r0, 4(r3)
/* 8045CB00  4E 80 00 20 */	blr 

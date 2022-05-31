lbl_804AC1CC:
/* 804AC1CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804AC1D0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804AC1D4  3C 63 00 02 */	addis r3, r3, 2
/* 804AC1D8  80 03 60 A0 */	lwz r0, 0x60a0(r3)
/* 804AC1DC  28 00 00 00 */	cmplwi r0, 0
/* 804AC1E0  4D 82 00 20 */	beqlr 
/* 804AC1E4  38 00 00 00 */	li r0, 0
/* 804AC1E8  90 03 60 A0 */	stw r0, 0x60a0(r3)
/* 804AC1EC  4E 80 00 20 */	blr 

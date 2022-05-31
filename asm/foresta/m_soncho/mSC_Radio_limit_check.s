lbl_803EC904:
/* 803EC904  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EC908  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EC90C  3C 63 00 02 */	addis r3, r3, 2
/* 803EC910  88 03 61 25 */	lbz r0, 0x6125(r3)
/* 803EC914  28 00 00 08 */	cmplwi r0, 8
/* 803EC918  41 80 00 18 */	blt lbl_803EC930
/* 803EC91C  88 03 61 23 */	lbz r0, 0x6123(r3)
/* 803EC920  28 00 00 13 */	cmplwi r0, 0x13
/* 803EC924  41 80 00 0C */	blt lbl_803EC930
/* 803EC928  38 60 00 00 */	li r3, 0
/* 803EC92C  4E 80 00 20 */	blr 
lbl_803EC930:
/* 803EC930  38 60 00 01 */	li r3, 1
/* 803EC934  4E 80 00 20 */	blr 

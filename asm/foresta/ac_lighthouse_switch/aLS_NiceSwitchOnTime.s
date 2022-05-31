lbl_8042BF78:
/* 8042BF78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042BF7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042BF80  3C 63 00 02 */	addis r3, r3, 2
/* 8042BF84  88 03 61 22 */	lbz r0, 0x6122(r3)
/* 8042BF88  28 00 00 12 */	cmplwi r0, 0x12
/* 8042BF8C  40 80 00 0C */	bge lbl_8042BF98
/* 8042BF90  28 00 00 05 */	cmplwi r0, 5
/* 8042BF94  40 80 00 0C */	bge lbl_8042BFA0
lbl_8042BF98:
/* 8042BF98  38 60 00 01 */	li r3, 1
/* 8042BF9C  4E 80 00 20 */	blr 
lbl_8042BFA0:
/* 8042BFA0  38 60 00 00 */	li r3, 0
/* 8042BFA4  4E 80 00 20 */	blr 

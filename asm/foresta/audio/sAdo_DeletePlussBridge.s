lbl_8062E84C:
/* 8062E84C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062E850  38 00 00 00 */	li r0, 0
/* 8062E854  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062E858  3C 63 00 03 */	addis r3, r3, 3
/* 8062E85C  90 03 DB D4 */	stw r0, -0x242c(r3)
/* 8062E860  4E 80 00 20 */	blr 

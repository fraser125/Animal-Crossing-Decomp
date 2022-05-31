lbl_8062E838:
/* 8062E838  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062E83C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8062E840  3C 84 00 03 */	addis r4, r4, 3
/* 8062E844  90 64 DB D4 */	stw r3, -0x242c(r4)
/* 8062E848  4E 80 00 20 */	blr 

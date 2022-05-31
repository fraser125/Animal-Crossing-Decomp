lbl_80551EEC:
/* 80551EEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80551EF0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80551EF4  3C 63 00 03 */	addis r3, r3, 3
/* 80551EF8  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 80551EFC  60 00 00 08 */	ori r0, r0, 8
/* 80551F00  98 03 88 7F */	stb r0, -0x7781(r3)
/* 80551F04  4E 80 00 20 */	blr 

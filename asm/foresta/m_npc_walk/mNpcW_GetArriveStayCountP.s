lbl_803D85CC:
/* 803D85CC  2C 03 00 00 */	cmpwi r3, 0
/* 803D85D0  41 80 00 20 */	blt lbl_803D85F0
/* 803D85D4  2C 03 00 0F */	cmpwi r3, 0xf
/* 803D85D8  40 80 00 18 */	bge lbl_803D85F0
/* 803D85DC  3C 80 81 17 */	lis r4, l_arrive_stay_count@ha /* 0x8116ED90@ha */
/* 803D85E0  54 63 10 3A */	slwi r3, r3, 2
/* 803D85E4  38 04 ED 90 */	addi r0, r4, l_arrive_stay_count@l /* 0x8116ED90@l */
/* 803D85E8  7C 60 1A 14 */	add r3, r0, r3
/* 803D85EC  4E 80 00 20 */	blr 
lbl_803D85F0:
/* 803D85F0  38 60 00 00 */	li r3, 0
/* 803D85F4  4E 80 00 20 */	blr 

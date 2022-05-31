lbl_803D5C68:
/* 803D5C68  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D5C6C  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803D5C70  2C 00 00 0E */	cmpwi r0, 0xe
/* 803D5C74  38 60 00 00 */	li r3, 0
/* 803D5C78  4C 82 00 20 */	bnelr 
/* 803D5C7C  54 80 05 3E */	clrlwi r0, r4, 0x14
/* 803D5C80  2C 00 00 EC */	cmpwi r0, 0xec
/* 803D5C84  4C 80 00 20 */	bgelr 
/* 803D5C88  3C 80 80 97 */	lis r4, data_80977350@ha /* 0x80977350@ha */
/* 803D5C8C  38 84 73 50 */	addi r4, r4, data_80977350@l /* 0x80977350@l */
/* 803D5C90  7C 04 00 AE */	lbzx r0, r4, r0
/* 803D5C94  7C 00 07 74 */	extsb r0, r0
/* 803D5C98  2C 00 00 02 */	cmpwi r0, 2
/* 803D5C9C  4C 82 00 20 */	bnelr 
/* 803D5CA0  38 60 00 01 */	li r3, 1
/* 803D5CA4  4E 80 00 20 */	blr 

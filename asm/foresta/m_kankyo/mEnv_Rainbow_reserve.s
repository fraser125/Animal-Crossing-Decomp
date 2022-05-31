lbl_803BA7CC:
/* 803BA7CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BA7D0  38 A0 00 01 */	li r5, 1
/* 803BA7D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BA7D8  3C 83 00 02 */	addis r4, r3, 2
/* 803BA7DC  88 64 61 25 */	lbz r3, 0x6125(r4)
/* 803BA7E0  88 04 61 23 */	lbz r0, 0x6123(r4)
/* 803BA7E4  98 A4 41 87 */	stb r5, 0x4187(r4)
/* 803BA7E8  98 64 41 85 */	stb r3, 0x4185(r4)
/* 803BA7EC  98 04 41 86 */	stb r0, 0x4186(r4)
/* 803BA7F0  4E 80 00 20 */	blr 

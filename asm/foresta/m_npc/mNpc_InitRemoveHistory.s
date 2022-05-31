lbl_803D20DC:
/* 803D20DC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D20E0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 803D20E4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D20E8  38 00 00 FF */	li r0, 0xff
/* 803D20EC  3C 84 00 02 */	addis r4, r4, 2
/* 803D20F0  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 803D20F4  B0 64 13 A4 */	sth r3, 0x13a4(r4)
/* 803D20F8  98 04 13 A6 */	stb r0, 0x13a6(r4)
/* 803D20FC  98 04 13 A7 */	stb r0, 0x13a7(r4)
/* 803D2100  4E 80 00 20 */	blr 

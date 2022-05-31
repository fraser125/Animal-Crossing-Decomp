lbl_803D9F2C:
/* 803D9F2C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D9F30  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D9F34  3C 84 00 03 */	addis r4, r4, 3
/* 803D9F38  98 64 88 3C */	stb r3, -0x77c4(r4)
/* 803D9F3C  4E 80 00 20 */	blr 

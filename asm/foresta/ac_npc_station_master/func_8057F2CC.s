lbl_8057F2CC:
/* 8057F2CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057F2D0  38 00 00 00 */	li r0, 0
/* 8057F2D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057F2D8  3C 63 00 03 */	addis r3, r3, 3
/* 8057F2DC  98 03 88 40 */	stb r0, -0x77c0(r3)
/* 8057F2E0  98 03 88 41 */	stb r0, -0x77bf(r3)
/* 8057F2E4  4E 80 00 20 */	blr 

lbl_803DA068:
/* 803DA068  2C 03 00 00 */	cmpwi r3, 0
/* 803DA06C  41 80 00 20 */	blt lbl_803DA08C
/* 803DA070  2C 03 00 9D */	cmpwi r3, 0x9d
/* 803DA074  40 80 00 18 */	bge lbl_803DA08C
/* 803DA078  3C 80 80 64 */	lis r4, mouth_tex_index_table@ha /* 0x80642D64@ha */
/* 803DA07C  54 60 10 3A */	slwi r0, r3, 2
/* 803DA080  38 64 2D 64 */	addi r3, r4, mouth_tex_index_table@l /* 0x80642D64@l */
/* 803DA084  7C 63 00 2E */	lwzx r3, r3, r0
/* 803DA088  4E 80 00 20 */	blr 
lbl_803DA08C:
/* 803DA08C  38 60 00 00 */	li r3, 0
/* 803DA090  4E 80 00 20 */	blr 

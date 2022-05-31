lbl_803DA03C:
/* 803DA03C  2C 03 00 00 */	cmpwi r3, 0
/* 803DA040  41 80 00 20 */	blt lbl_803DA060
/* 803DA044  2C 03 00 9D */	cmpwi r3, 0x9d
/* 803DA048  40 80 00 18 */	bge lbl_803DA060
/* 803DA04C  3C 80 80 64 */	lis r4, eye_tex_index_table@ha /* 0x80642AF0@ha */
/* 803DA050  54 60 10 3A */	slwi r0, r3, 2
/* 803DA054  38 64 2A F0 */	addi r3, r4, eye_tex_index_table@l /* 0x80642AF0@l */
/* 803DA058  7C 63 00 2E */	lwzx r3, r3, r0
/* 803DA05C  4E 80 00 20 */	blr 
lbl_803DA060:
/* 803DA060  38 60 00 00 */	li r3, 0
/* 803DA064  4E 80 00 20 */	blr 

lbl_8037EDB8:
/* 8037EDB8  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8037EDBC  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8037EDC0  80 63 00 00 */	lwz r3, 0(r3)
/* 8037EDC4  38 63 1B 88 */	addi r3, r3, 0x1b88
/* 8037EDC8  4E 80 00 20 */	blr 

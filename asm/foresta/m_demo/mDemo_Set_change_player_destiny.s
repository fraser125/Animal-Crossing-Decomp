lbl_803985CC:
/* 803985CC  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 803985D0  38 84 1C BC */	addi r4, r4, data_80641CBC@l /* 0x80641CBC@l */
/* 803985D4  80 84 00 00 */	lwz r4, 0(r4)
/* 803985D8  98 64 00 D8 */	stb r3, 0xd8(r4)
/* 803985DC  4E 80 00 20 */	blr 

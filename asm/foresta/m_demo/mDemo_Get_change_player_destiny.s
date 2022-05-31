lbl_803985E0:
/* 803985E0  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 803985E4  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 803985E8  80 63 00 00 */	lwz r3, 0(r3)
/* 803985EC  88 63 00 D8 */	lbz r3, 0xd8(r3)
/* 803985F0  7C 63 07 74 */	extsb r3, r3
/* 803985F4  4E 80 00 20 */	blr 

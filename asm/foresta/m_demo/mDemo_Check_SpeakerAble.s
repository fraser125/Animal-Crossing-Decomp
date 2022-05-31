lbl_8039A3FC:
/* 8039A3FC  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A400  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A404  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A408  80 63 00 08 */	lwz r3, 8(r3)
/* 8039A40C  4E 80 00 20 */	blr 

lbl_8039A3E4:
/* 8039A3E4  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A3E8  38 00 00 00 */	li r0, 0
/* 8039A3EC  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A3F0  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A3F4  90 03 00 0C */	stw r0, 0xc(r3)
/* 8039A3F8  4E 80 00 20 */	blr 

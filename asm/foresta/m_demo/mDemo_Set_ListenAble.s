lbl_8039A3B4:
/* 8039A3B4  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A3B8  38 00 00 01 */	li r0, 1
/* 8039A3BC  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A3C0  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A3C4  90 03 00 0C */	stw r0, 0xc(r3)
/* 8039A3C8  4E 80 00 20 */	blr 

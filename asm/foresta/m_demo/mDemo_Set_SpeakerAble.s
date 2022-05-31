lbl_8039A39C:
/* 8039A39C  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A3A0  38 00 00 01 */	li r0, 1
/* 8039A3A4  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A3A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A3AC  90 03 00 08 */	stw r0, 8(r3)
/* 8039A3B0  4E 80 00 20 */	blr 

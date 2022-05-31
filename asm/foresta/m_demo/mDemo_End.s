lbl_8039A2A0:
/* 8039A2A0  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A2A4  38 84 1C BC */	addi r4, r4, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A2A8  80 84 00 00 */	lwz r4, 0(r4)
/* 8039A2AC  80 04 00 E0 */	lwz r0, 0xe0(r4)
/* 8039A2B0  7C 03 00 40 */	cmplw r3, r0
/* 8039A2B4  40 82 00 14 */	bne lbl_8039A2C8
/* 8039A2B8  38 00 00 09 */	li r0, 9
/* 8039A2BC  38 60 00 01 */	li r3, 1
/* 8039A2C0  90 04 00 DC */	stw r0, 0xdc(r4)
/* 8039A2C4  4E 80 00 20 */	blr 
lbl_8039A2C8:
/* 8039A2C8  38 60 00 00 */	li r3, 0
/* 8039A2CC  4E 80 00 20 */	blr 

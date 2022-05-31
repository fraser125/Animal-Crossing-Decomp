lbl_8039A444:
/* 8039A444  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A448  38 84 1C BC */	addi r4, r4, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A44C  80 84 00 00 */	lwz r4, 0(r4)
/* 8039A450  90 64 02 FC */	stw r3, 0x2fc(r4)
/* 8039A454  4E 80 00 20 */	blr 

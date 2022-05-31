lbl_803DFE94:
/* 803DFE94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DFE98  7C 08 02 A6 */	mflr r0
/* 803DFE9C  38 80 00 08 */	li r4, 8
/* 803DFEA0  38 A0 00 20 */	li r5, 0x20
/* 803DFEA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DFEA8  4B FD AB A1 */	bl mem_clear
/* 803DFEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DFEB0  7C 08 03 A6 */	mtlr r0
/* 803DFEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DFEB8  4E 80 00 20 */	blr 

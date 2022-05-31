lbl_803CCA9C:
/* 803CCA9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CCAA0  7C 08 02 A6 */	mflr r0
/* 803CCAA4  38 A0 00 00 */	li r5, 0
/* 803CCAA8  38 C0 00 00 */	li r6, 0
/* 803CCAAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CCAB0  38 E0 00 00 */	li r7, 0
/* 803CCAB4  4B FF FD 5D */	bl mNpc_GetOtherAnimalPersonalIDOtherBlock
/* 803CCAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CCABC  7C 08 03 A6 */	mtlr r0
/* 803CCAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 803CCAC4  4E 80 00 20 */	blr 

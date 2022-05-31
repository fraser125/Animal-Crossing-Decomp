lbl_803CB330:
/* 803CB330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CB334  7C 08 02 A6 */	mflr r0
/* 803CB338  38 A0 00 20 */	li r5, 0x20
/* 803CB33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CB340  4B FE F7 09 */	bl mem_clear
/* 803CB344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CB348  7C 08 03 A6 */	mtlr r0
/* 803CB34C  38 21 00 10 */	addi r1, r1, 0x10
/* 803CB350  4E 80 00 20 */	blr 

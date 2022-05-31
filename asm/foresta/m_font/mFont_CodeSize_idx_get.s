lbl_803AF808:
/* 803AF808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AF80C  7C 08 02 A6 */	mflr r0
/* 803AF810  7C 63 22 14 */	add r3, r3, r4
/* 803AF814  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AF818  4B FF FF 99 */	bl mFont_CodeSize_get
/* 803AF81C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AF820  7C 08 03 A6 */	mtlr r0
/* 803AF824  38 21 00 10 */	addi r1, r1, 0x10
/* 803AF828  4E 80 00 20 */	blr 

lbl_803C6140:
/* 803C6140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C6144  7C 08 02 A6 */	mflr r0
/* 803C6148  38 80 00 4E */	li r4, 0x4e
/* 803C614C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C6150  4B C9 6F 19 */	bl bzero
/* 803C6154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C6158  7C 08 03 A6 */	mtlr r0
/* 803C615C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C6160  4E 80 00 20 */	blr 
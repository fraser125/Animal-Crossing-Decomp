lbl_803F7B18:
/* 803F7B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F7B1C  7C 08 02 A6 */	mflr r0
/* 803F7B20  38 80 00 2C */	li r4, 0x2c
/* 803F7B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F7B28  4B C6 55 41 */	bl bzero
/* 803F7B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F7B30  7C 08 03 A6 */	mtlr r0
/* 803F7B34  38 21 00 10 */	addi r1, r1, 0x10
/* 803F7B38  4E 80 00 20 */	blr 

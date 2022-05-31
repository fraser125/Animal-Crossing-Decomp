lbl_8051A2EC:
/* 8051A2EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A2F0  7C 08 02 A6 */	mflr r0
/* 8051A2F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A2F8  38 00 00 00 */	li r0, 0
/* 8051A2FC  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 8051A300  80 83 09 98 */	lwz r4, 0x998(r3)
/* 8051A304  4B FF FF 79 */	bl aEBRK_setupAction
/* 8051A308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A30C  7C 08 03 A6 */	mtlr r0
/* 8051A310  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A314  4E 80 00 20 */	blr 

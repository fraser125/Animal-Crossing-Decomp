lbl_803FA6B8:
/* 803FA6B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA6BC  7C 08 02 A6 */	mflr r0
/* 803FA6C0  38 80 00 08 */	li r4, 8
/* 803FA6C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA6C8  4B C6 29 A1 */	bl bzero
/* 803FA6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA6D0  7C 08 03 A6 */	mtlr r0
/* 803FA6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA6D8  4E 80 00 20 */	blr 
